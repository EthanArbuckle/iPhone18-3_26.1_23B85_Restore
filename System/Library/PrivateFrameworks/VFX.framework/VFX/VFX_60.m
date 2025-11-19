unint64_t sub_1AF5D3114()
{
  result = qword_1EB63C0A8;
  if (!qword_1EB63C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C0A8);
  }

  return result;
}

unint64_t sub_1AF5D316C()
{
  result = qword_1EB63C0B0;
  if (!qword_1EB63C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C0B0);
  }

  return result;
}

unint64_t sub_1AF5D31C4()
{
  result = qword_1EB63C0B8;
  if (!qword_1EB63C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C0B8);
  }

  return result;
}

unint64_t sub_1AF5D321C()
{
  result = qword_1EB63C0C0;
  if (!qword_1EB63C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C0C0);
  }

  return result;
}

unint64_t sub_1AF5D3274()
{
  result = qword_1EB63C0C8;
  if (!qword_1EB63C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C0C8);
  }

  return result;
}

unint64_t sub_1AF5D32C8()
{
  result = qword_1EB63C0D8;
  if (!qword_1EB63C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C0D8);
  }

  return result;
}

unint64_t sub_1AF5D331C()
{
  result = qword_1EB63C0F0;
  if (!qword_1EB63C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C0F0);
  }

  return result;
}

void sub_1AF5D3370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF5D33D8()
{
  result = qword_1EB63C100;
  if (!qword_1EB63C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C100);
  }

  return result;
}

unint64_t sub_1AF5D3460()
{
  result = qword_1EB63C108;
  if (!qword_1EB63C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C108);
  }

  return result;
}

unint64_t sub_1AF5D34B8()
{
  result = qword_1EB63C110;
  if (!qword_1EB63C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C110);
  }

  return result;
}

unint64_t sub_1AF5D3510()
{
  result = qword_1EB63C118;
  if (!qword_1EB63C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C118);
  }

  return result;
}

unint64_t sub_1AF5D3568()
{
  result = qword_1EB63C120;
  if (!qword_1EB63C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C120);
  }

  return result;
}

unint64_t sub_1AF5D35C0()
{
  result = qword_1EB63C128;
  if (!qword_1EB63C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C128);
  }

  return result;
}

unint64_t sub_1AF5D3618()
{
  result = qword_1EB63C130;
  if (!qword_1EB63C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C130);
  }

  return result;
}

unint64_t sub_1AF5D3670()
{
  result = qword_1EB63C138;
  if (!qword_1EB63C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C138);
  }

  return result;
}

void *sub_1AF5D3780@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1AF5D386C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5D3944()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF5D3A08()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5D3ADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF5DAE40();
  *a1 = result;
  return result;
}

void sub_1AF5D3B0C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x736E6F6974706FLL;
  v4 = 0xE900000000000065;
  v5 = 0x7A696C616D726F6ELL;
  if (*v1 != 2)
  {
    v5 = 0x6572726566657270;
    v4 = 0xEF726564616F4C64;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001AFF236F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1AF5D3BA0()
{
  v1 = 0x736E6F6974706FLL;
  v2 = 0x7A696C616D726F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x6572726566657270;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1AF5D3C30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF5DAE40();
  *a1 = result;
  return result;
}

uint64_t sub_1AF5D3C58(uint64_t a1)
{
  v2 = sub_1AF5DDF3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D3C94(uint64_t a1)
{
  v2 = sub_1AF5DDF3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D3CD0(void *a1, uint64_t a2, char a3)
{
  sub_1AF5DE3A8(0, &qword_1EB63C180, sub_1AF5DDF3C, &type metadata for MeshImportOptions.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DDF3C();
  sub_1AFDFF3F8();
  v14 = a3 & 1;
  v13 = 3;
  sub_1AF5DE038();
  sub_1AFDFE918();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF5D3E58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5DAE8C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 9) = HIBYTE(v5) & 1;
  }

  return result;
}

uint64_t sub_1AF5D3ED0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x696669746E656469;
  }

  else
  {
    v3 = 0x7465737361;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v5 = 0x696669746E656469;
  }

  else
  {
    v5 = 0x7465737361;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007265;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1AF5D3F78()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5D3FFC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF5D406C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF5D40F8(uint64_t *a1@<X8>)
{
  v2 = 0x7465737361;
  if (*v1)
  {
    v2 = 0x696669746E656469;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007265;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF5D4138()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_1AF5D4180(uint64_t a1)
{
  v2 = sub_1AF5DE354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D41BC(uint64_t a1)
{
  v2 = sub_1AF5DE354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D41F8(void *a1)
{
  v3 = v1;
  sub_1AF5DE3A8(0, &qword_1EB63C1D8, sub_1AF5DE354, &type metadata for SceneFileAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DE354();
  sub_1AFDFF3F8();
  v11 = v3[1];
  v13[0] = *v3;
  v13[1] = v11;
  v13[2] = v3[2];
  v14 = 0;
  sub_1AF5DE27C();
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v13[0]) = 1;
    sub_1AFDFE8B8();
  }

  return (*(v7 + 8))(v10, v6);
}

id sub_1AF5D43A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = *(v1 + 32);
  *(a1 + 32) = v5;
  v7 = v5;

  return v7;
}

double sub_1AF5D442C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF5DB180(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1AF5D4488@<X0>(void *a1@<X8>)
{
  v2 = sub_1AFDFC318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC308();
  v7 = sub_1AFDFC2B8();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = v7;
  a1[7] = v9;
  return result;
}

uint64_t sub_1AF5D4574(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6874615065646F6ELL;
  }

  else
  {
    v3 = 0x7465737361;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6874615065646F6ELL;
  }

  else
  {
    v5 = 0x7465737361;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1AF5D4618()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5D4698()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF5D4704()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5D478C@<X0>(char *a1@<X8>)
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

void sub_1AF5D47E8(uint64_t *a1@<X8>)
{
  v2 = 0x7465737361;
  if (*v1)
  {
    v2 = 0x6874615065646F6ELL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF5D4824()
{
  if (*v0)
  {
    return 0x6874615065646F6ELL;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_1AF5D4868@<X0>(char *a1@<X8>)
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

uint64_t sub_1AF5D48C8(uint64_t a1)
{
  v2 = sub_1AF5DE0E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D4904(uint64_t a1)
{
  v2 = sub_1AF5DE0E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D4940(void *a1)
{
  v3 = v1;
  sub_1AF5DE3A8(0, &qword_1EB63C1B0, sub_1AF5DE0E0, &type metadata for MeshFileAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DE0E0();
  sub_1AFDFF3F8();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v13[2] = *(v3 + 32);
  v14 = 0;
  sub_1AF5DE27C();
  sub_1AFDFE918();
  if (!v2 && *(v3 + 48))
  {
    *&v13[0] = *(v3 + 48);
    v14 = 1;
    sub_1AF5DE4E0(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    sub_1AF5DE2D0(&qword_1EB63C1C0);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AF5D4B64@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF5DB64C(a1, v6);
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

void sub_1AF5D4BCC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = 0;
}

uint64_t sub_1AF5D4BE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[2] = a5;
  v14[1] = a4;
  sub_1AF5DE3A8(0, &qword_1EB63C1A0, sub_1AF5DE08C, &type metadata for MeshReferenceAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v14 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DE08C();
  sub_1AFDFF3F8();
  v16 = 0;
  v12 = v14[3];
  sub_1AFDFE8B8();
  if (!v12)
  {
    v15 = 1;
    sub_1AFDFE8B8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF5D4D80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6564496873656DLL;
  }

  else
  {
    v3 = 0x656449656E656373;
  }

  if (v2)
  {
    v4 = 0xEF7265696669746ELL;
  }

  else
  {
    v4 = 0xEE00726569666974;
  }

  if (*a2)
  {
    v5 = 0x6E6564496873656DLL;
  }

  else
  {
    v5 = 0x656449656E656373;
  }

  if (*a2)
  {
    v6 = 0xEE00726569666974;
  }

  else
  {
    v6 = 0xEF7265696669746ELL;
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

uint64_t sub_1AF5D4E40()
{
  if (*v0)
  {
    return 0x6E6564496873656DLL;
  }

  else
  {
    return 0x656449656E656373;
  }
}

uint64_t sub_1AF5D4E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656449656E656373 && a2 == 0xEF7265696669746ELL;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6564496873656DLL && a2 == 0xEE00726569666974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AF5D4F80(uint64_t a1)
{
  v2 = sub_1AF5DE08C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D4FBC(uint64_t a1)
{
  v2 = sub_1AF5DE08C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D4FF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF5DBA4C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_1AF5D5048(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
}

void sub_1AF5D50BC(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[7];
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  v8 = v1[12];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v4 + 40));
  v10 = v1[17];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  os_unfair_lock_unlock(*(v4 + 40));
  v12 = v1[22];
  swift_getObjectType();
  v13 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v12);

  sub_1AF6B1B20(a1, v13, v12);
  os_unfair_lock_unlock(*(v4 + 40));
  v14 = v1[27];
  swift_getObjectType();
  v15 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v14);

  sub_1AF6B1B20(a1, v15, v14);
  v16 = *(v4 + 40);

  os_unfair_lock_unlock(v16);
}

uint64_t sub_1AF5D53A4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v77 = a8;
  v79 = a7;
  v81 = a5;
  v82 = a3;
  v10 = sub_1AFDFC128();
  v11 = *(v10 - 8);
  v83 = v10;
  v84 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[2];
  v16 = a2[3];
  v76 = a2;
  v17 = a2[4];
  v18 = a2[5];
  v80 = v18;
  if (v17)
  {
    ObjectType = swift_getObjectType();
    v20 = v14;
    (*(v18 + 1))(v15, v16, ObjectType, v18);
  }

  else
  {
    v20 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v87 = 0;
    v88 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v15, v16);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v21 = v87;
    v22 = v88;
    v23 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v87 = 0;
    sub_1AF0D4F18(v23, &v87, v21, v22);

    sub_1AFDFC018();
  }

  v24 = *(a1 + 8);
  v25 = *(a1 + 32);

  v26 = sub_1AF64B03C(&type metadata for MeshImportOptions);
  v28 = v27;

  if (v28)
  {
    v78 = 0;
  }

  else
  {
    v78 = *(v26 + 16 * v25);
  }

  sub_1AFDFBFD8();
  v29 = sub_1AFDFCF98();
  v31 = v30;

  v32 = v29 == 1752393069 && v31 == 0xE400000000000000;
  if (v32 || (sub_1AFDFEE28() & 1) != 0)
  {

    v33 = v80;
    if (*(v24 + 32) == 1)
    {
      LOBYTE(v87) = 0;
      sub_1AF80F414(0);
    }

    v34 = sub_1AF8C7D14(v15, v16, v17, v33, v81);
    (*(v84 + 8))(v20, v83);
    v35 = v82;

    *v35 = v34;
    return result;
  }

  v37 = v29 == 1718905959 && v31 == 0xE400000000000000;
  if (v37 || (sub_1AFDFEE28() & 1) != 0)
  {
    (*(v84 + 8))(v20, v83);
  }

  v38 = v29 == 2053403509 && v31 == 0xE400000000000000;
  if (v38 || (sub_1AFDFEE28() & 1) != 0 || v29 == 6583157 && v31 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0 || v29 == 6972015 && v31 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0 || v29 == 7107699 && v31 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0 || v29 == 6513249 && v31 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0 || v29 == 7957616 && v31 == 0xE300000000000000)
  {

LABEL_46:
    type metadata accessor for MDLImporter();
    swift_initStackObject();
    v39 = v79;

    v40 = sub_1AF6DF550(v78, v39);
    v41 = v85;
    sub_1AF6E4330();
    v42 = v41;
    if (v41)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v87 = 0;
      v88 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF2C690);
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v44 = v87;
      v43 = v88;
      v45 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v75 = v45;
        swift_once();
        v45 = v75;
      }

      v87 = 0;
      sub_1AF0D4F18(v45, &v87, v44, v43);

      v42 = 0;
    }

    v46 = v40[7];
    v47 = *(v46 + 16);
    if (v47 && (v48 = sub_1AF3CA3E4(*(v46 + 8 * v47 + 24)), v49))
    {
      v50 = v48;
      v51 = v49;
      v52 = v82;

      *v52 = v50;
      v53 = *(v51 + 16);
      if (v53)
      {
        v79 = v50;
        v80 = v20;
        v85 = v42;
        v81 = **(v77 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v54 = MEMORY[0x1E69E7CC0];
        v87 = MEMORY[0x1E69E7CC0];
        sub_1AFC07194(0, v53, 0);
        v55 = v87;
        v78 = v51;
        v56 = v51 + 36;
        do
        {
          v57 = v40;
          v58 = v40[3];
          v59 = *(v56 - 4);
          v60 = sub_1AF42B4D0(v54);
          type metadata accessor for RemapContext();
          v61 = swift_allocObject();
          *(v61 + 16) = 0;
          *(v61 + 24) = sub_1AF42B4D0(v54);

          v62 = sub_1AF42B590(v54);
          *(v61 + 24) = v60;
          *(v61 + 32) = v62;

          *(v61 + 16) = 0;
          sub_1AF65B02C(v59, v61);
          v86 = 1;
          sub_1AF630BA4(v61, v58, 0x100000000uLL, 0, v81);
          v63 = 0xFFFFFFFFLL;
          if (*(*(v61 + 24) + 16))
          {
            sub_1AF449D3C(v59);
            v64 = *(v61 + 24);
            if (*(v64 + 16))
            {
              v65 = sub_1AF449D3C(v59);
              if (v66)
              {
                v63 = *(*(v64 + 56) + 8 * v65);
              }
            }
          }

          v87 = v55;
          v68 = *(v55 + 16);
          v67 = *(v55 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_1AFC07194(v67 > 1, v68 + 1, 1);
            v55 = v87;
          }

          v56 += 8;
          *(v55 + 16) = v68 + 1;
          *(v55 + 8 * v68 + 32) = v63;
          --v53;
          v40 = v57;
        }

        while (v53);

        (*(v84 + 8))(v80, v83);
      }

      else
      {

        (*(v84 + 8))(v20, v83);
        v55 = MEMORY[0x1E69E7CC0];
      }

      v69 = v82;

      v69[1] = v55;
    }

    else
    {
      (*(v84 + 8))(v20, v83);
    }

    return result;
  }

  v70 = sub_1AFDFEE28();

  if (v70)
  {
    goto LABEL_46;
  }

  type metadata accessor for VFXCoreImporter();
  v71 = sub_1AF6E571C(v20, v76[6], v77);
  v73 = v72;
  result = (*(v84 + 8))(v20, v83);
  if (v73)
  {
    v74 = v82;

    *v74 = v71;
    v74[1] = v73;
  }

  return result;
}

uint64_t sub_1AF5D5E24(uint64_t result, uint64_t a2, void (*a3)(void *, void *, uint64_t, uint64_t))
{
  v23 = v3[10];
  v24 = result;
  if (v23 >= 1)
  {
    v5 = v3;
    v29 = v4;
    v6 = v3[5];
    v7 = v3[7];
    v8 = v3[8];
    v9 = v3[9];
    ecs_stack_allocator_push_snapshot(v9[4]);
    v10 = v9[4];
    if (v7)
    {
      v21 = v8;
      v41 = *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v11 = (v6 + 24);
      v22 = v5;
      while (1)
      {
        v13 = *(v11 - 6);
        v12 = *(v11 - 5);
        v14 = *(v11 - 4);
        v27 = *v11;
        v28 = *(v11 - 1);
        v16 = v11[1];
        v15 = v11[2];
        if (v41)
        {
          v17 = *(v15 + 376);

          os_unfair_lock_lock(v17);
          os_unfair_lock_lock(*(v15 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v10);

        sub_1AF630914(v18, v9, v30);

        v40 = 1;
        v35[0] = v21;
        v35[1] = v15;
        v35[2] = v9;
        v35[3] = v14;
        v35[4] = (v12 - v13 + v14);
        v35[5] = v23;
        v35[6] = v13;
        v35[7] = v12;
        v35[8] = 0;
        v35[9] = 0;
        v36 = 1;
        v37 = v28;
        v38 = v27;
        v39 = v16;
        a3(v35, v9, v24, a2);
        if (v29)
        {
          break;
        }

        v19 = *(v22 + 1);
        v31[0] = *v22;
        v31[1] = v19;
        v32 = v22[4];
        sub_1AF630994(v9, v31, v30);
        v29 = 0;
        sub_1AF62D29C(v15);
        ecs_stack_allocator_pop_snapshot(v10);
        if (v41)
        {
          os_unfair_lock_unlock(*(v15 + 344));
          os_unfair_lock_unlock(*(v15 + 376));
        }

        v11 += 6;
        if (!--v7)
        {
          v10 = v9[4];
          return ecs_stack_allocator_pop_snapshot(v10);
        }
      }

      v20 = *(v22 + 1);
      v33[0] = *v22;
      v33[1] = v20;
      v34 = v22[4];
      sub_1AF630994(v9, v33, v30);
      sub_1AF62D29C(v15);
      ecs_stack_allocator_pop_snapshot(v10);
      if (v41)
      {
        os_unfair_lock_unlock(*(v15 + 344));
        os_unfair_lock_unlock(*(v15 + 376));
      }

      return ecs_stack_allocator_pop_snapshot(v9[4]);
    }

    else
    {
      return ecs_stack_allocator_pop_snapshot(v10);
    }
  }

  return result;
}

void sub_1AF5D6070(uint64_t a1)
{
  v2 = 0;
  v3 = *(v1 + 176);
  v4 = *(v1 + 192);
  v376 = *(v1 + 208);
  v375[0] = v3;
  v375[1] = v4;
  sub_1AF6B06C0(a1, v375, 0x200000000, v320);
  if (*&v320[0])
  {
    if (v323 >= 1 && v322)
    {
      v5 = v321;
      v6 = v321 + 48 * v322;
      v254 = v6;
      do
      {
        v7 = *(v5 + 40);
        v8 = *(v7 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v8);
        os_unfair_lock_lock(*(v7 + 344));
        v9 = *(v7 + 24);

        *&v359 = 0;
        v358 = 0u;
        v357 = 0u;
        memset(v336, 0, 40);
        v10 = sub_1AF65A4B4(v9, &type metadata for VertexLayoutCollection, &off_1F252BDA8, 0, 0, &v357, v336);

        sub_1AF5DD41C(v336);
        sub_1AF5DD41C(&v357);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v10);
        }

        else
        {
          v12 = *(v7 + 232);
          v11 = *(v7 + 240);
          v279 = *(v7 + 120);
          v306 = *(v7 + 28);
          v300 = *(v7 + 32);
          v13 = *(v7 + 16);
          v14 = *(v7 + 40);
          v15 = *(v14 + 200);
          v289 = *(*(v13 + 88) + 8 * v10 + 32);

          if ((v15 & 1) != 0 || *(v289 + 200) == 1)
          {
            *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v14 = *(v7 + 40);
          }

          v16 = v279;
          v17 = *(v7 + 256);
          sub_1AF5B4FCC(v14, v12, v11, 0, v7);
          v272 = *(v7 + 256);
          v18 = v272 - v17;
          if (v272 == v17)
          {
            v19 = 0;
          }

          else
          {
            v19 = v17;
          }

          *&v336[0] = v19;
          v20 = *(*(v7 + 40) + 24);
          v21 = *(v20 + 16);
          if (v21)
          {
            v259 = v5;
            v22 = v20 + 32;

            v23 = 0;
            v24 = v272 - v17;
            do
            {
              v25 = v22 + 40 * v23;
              if ((*(v25 + 32) & 1) == 0)
              {
                v26 = *(v289 + 24);
                v27 = *(v26 + 16);
                if (v27)
                {
                  v28 = (v26 + 32);
                  while (*v28 != *v25)
                  {
                    v28 += 5;
                    if (!--v27)
                    {
                      goto LABEL_16;
                    }
                  }
                }

                else
                {
LABEL_16:
                  sub_1AF640BC8();
                  v24 = v272 - v17;
                }
              }

              ++v23;
            }

            while (v23 != v21);
            v18 = v24;

            v5 = v259;
            v16 = v279;
          }

          if (*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v7 + 72) * v18);
          }

          if (*(v7 + 184))
          {
            v29 = 0;
          }

          else
          {
            v29 = *(v7 + 168);
          }

          *&v332[0] = 0;

          MEMORY[0x1EEE9AC00](v30, v31);
          v32 = v306;
          v33 = v300;
          *&v358 = v29;
          DWORD2(v358) = -1;
          *&v359 = v17;
          *(&v359 + 1) = v272;
          *&v360 = v17;
          *(&v360 + 1) = v272;
          *&v357 = v17;
          *(&v357 + 1) = v272;
          if (v18 < 1)
          {

            v6 = v254;
          }

          else
          {
            v6 = v254;
            do
            {
              LOBYTE(v328[0]) = v33;
              sub_1AF6248A8(v10, v32 | (v33 << 32), v16, v13, &v357, sub_1AF5C5E08);
              v33 = v300;
              v32 = v306;
            }

            while ((*(&v357 + 1) - v357) > 0);
          }

          v34 = *(v7 + 192);
          if (v34)
          {
            v35 = *(v7 + 208);
            sub_1AF75D364(v17, v272, v34);
            sub_1AF75D364(v17, v272, v35);
          }
        }

        v5 += 48;
        os_unfair_lock_unlock(*(v7 + 344));
        os_unfair_lock_unlock(*(v7 + 376));
      }

      while (v5 != v6);
    }

    sub_1AF5DD530(v320, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
    v2 = 0;
  }

  v36 = *(v256 + 152);
  v373[0] = *(v256 + 136);
  v373[1] = v36;
  v374 = *(v256 + 168);
  sub_1AF6B06C0(a1, v373, 0x200000000, v324);
  if (*&v324[0])
  {
    if (v327 >= 1 && v326)
    {
      v37 = v325;
      v38 = v325 + 48 * v326;
      v255 = v38;
      do
      {
        v39 = *(v37 + 40);
        v40 = *(v39 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v40);
        os_unfair_lock_lock(*(v39 + 344));
        v41 = *(v39 + 24);

        *&v359 = 0;
        v358 = 0u;
        v357 = 0u;
        memset(v336, 0, 40);
        v42 = sub_1AF65A4B4(v41, &type metadata for VertexLayoutCollection, &off_1F252BDA8, 0, 0, &v357, v336);

        sub_1AF5DD41C(v336);
        sub_1AF5DD41C(&v357);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v42);
        }

        else
        {
          v44 = *(v39 + 232);
          v43 = *(v39 + 240);
          v280 = *(v39 + 120);
          v307 = *(v39 + 28);
          v301 = *(v39 + 32);
          v45 = *(v39 + 16);
          v46 = *(v39 + 40);
          v47 = *(v46 + 200);
          v290 = *(*(v45 + 88) + 8 * v42 + 32);

          if ((v47 & 1) != 0 || *(v290 + 200) == 1)
          {
            *(v45 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v46 = *(v39 + 40);
          }

          v48 = v280;
          v49 = *(v39 + 256);
          sub_1AF5B4FCC(v46, v44, v43, 0, v39);
          v273 = *(v39 + 256);
          v50 = v273 - v49;
          if (v273 == v49)
          {
            v51 = 0;
          }

          else
          {
            v51 = v49;
          }

          *&v336[0] = v51;
          v52 = *(*(v39 + 40) + 24);
          v53 = *(v52 + 16);
          if (v53)
          {
            v260 = v37;
            v54 = v52 + 32;

            v55 = 0;
            v56 = v273 - v49;
            do
            {
              v57 = v54 + 40 * v55;
              if ((*(v57 + 32) & 1) == 0)
              {
                v58 = *(v290 + 24);
                v59 = *(v58 + 16);
                if (v59)
                {
                  v60 = (v58 + 32);
                  while (*v60 != *v57)
                  {
                    v60 += 5;
                    if (!--v59)
                    {
                      goto LABEL_54;
                    }
                  }
                }

                else
                {
LABEL_54:
                  sub_1AF640BC8();
                  v56 = v273 - v49;
                }
              }

              ++v55;
            }

            while (v55 != v53);
            v50 = v56;

            v37 = v260;
            v48 = v280;
          }

          if (*(v45 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v45 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v39 + 72) * v50);
          }

          if (*(v39 + 184))
          {
            v61 = 0;
          }

          else
          {
            v61 = *(v39 + 168);
          }

          *&v332[0] = 0;

          MEMORY[0x1EEE9AC00](v62, v63);
          v64 = v307;
          v65 = v301;
          *&v358 = v61;
          DWORD2(v358) = -1;
          *&v359 = v49;
          *(&v359 + 1) = v273;
          *&v360 = v49;
          *(&v360 + 1) = v273;
          *&v357 = v49;
          *(&v357 + 1) = v273;
          if (v50 < 1)
          {

            v38 = v255;
          }

          else
          {
            v38 = v255;
            do
            {
              LOBYTE(v328[0]) = v65;
              sub_1AF6248A8(v42, v64 | (v65 << 32), v48, v45, &v357, sub_1AF5C44B0);
              v65 = v301;
              v64 = v307;
            }

            while ((*(&v357 + 1) - v357) > 0);
          }

          v66 = *(v39 + 192);
          if (v66)
          {
            v67 = *(v39 + 208);
            sub_1AF75D364(v49, v273, v66);
            sub_1AF75D364(v49, v273, v67);
          }
        }

        v37 += 48;
        os_unfair_lock_unlock(*(v39 + 344));
        os_unfair_lock_unlock(*(v39 + 376));
      }

      while (v37 != v38);
    }

    sub_1AF5DD530(v324, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
    v2 = 0;
  }

  v68 = *(v256 + 72);
  v371[0] = *(v256 + 56);
  v371[1] = v68;
  v372 = *(v256 + 88);
  sub_1AF6B06C0(a1, v371, 0x200000000, v328);
  if (*&v328[0])
  {
    if (v331 >= 1)
    {
      v281 = *(&v329 + 1);
      if (*(&v329 + 1))
      {
        v276 = *(&v328[2] + 1);
        v69 = *(&v330 + 1);
        v70 = *(*(&v330 + 1) + 32);
        v302 = *(v330 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v345 = *&v328[0];
        v346 = *(v328 + 8);
        v347 = *(&v328[1] + 8);
        v284 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v359 = v328[2];
        v360 = v329;
        v361 = v330;
        v362 = v331;
        v357 = v328[0];
        v358 = v328[1];
        sub_1AF5D15C0(v328, v336);
        sub_1AF5DD298(&v357, v336);
        v71 = 0;
        v274 = v70;
        do
        {
          v291 = v71;
          v295 = v2;
          v72 = (v276 + 48 * v71);
          v74 = *v72;
          v73 = v72[1];
          v75 = *(v72 + 3);
          v308 = *(v72 + 2);
          v76 = *(v72 + 4);
          v77 = *(v72 + 5);
          if (v302)
          {
            v78 = *(v77 + 376);

            os_unfair_lock_lock(v78);
            os_unfair_lock_lock(*(v77 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v70);
          v79 = *(v69 + 64);
          v369[0] = *(v69 + 48);
          v369[1] = v79;
          v370 = *(v69 + 80);
          v80 = *(*(*(*(v77 + 40) + 16) + 32) + 16) + 1;
          *(v69 + 48) = ecs_stack_allocator_allocate(*(v69 + 32), 48 * v80, 8);
          *(v69 + 56) = v80;
          *(v69 + 72) = 0;
          *(v69 + 80) = 0;
          *(v69 + 64) = 0;
          v81 = v308;
          v82 = sub_1AF64B110(&type metadata for ParticleMeshRenderer, &off_1F2550788, v308, v75, v76, v69);
          if (v308)
          {
            v83 = v284;
            if (v76)
            {
              for (i = 0; i != v76; ++i)
              {
                v86 = (v82 + 40 * i);
                v88 = *v86;
                v87 = v86[1];
                v89 = v88 == -1 && v87 == 0;
                if (!v89 && (v88 & 0x80000000) == 0 && v83[1] > v88)
                {
                  v90 = (*v83 + 12 * v88);
                  if (v87 == -1 || v90[2] == v87)
                  {
                    v92 = *(v90 + 2);
                    v93 = *(*(a1 + 144) + 8 * *v90 + 32);
                    v94 = *(v93 + 48);
                    v95 = (v94 + 32);
                    v96 = *(v94 + 16) + 1;
                    while (--v96)
                    {
                      v97 = v95 + 5;
                      v98 = *v95;
                      v95 += 5;
                      if (v98 == &type metadata for MeshModel)
                      {
                        v99 = *(&(*(v97 - 2))[v92].Kind + *(v93 + 128));
                        if (v99)
                        {
                          if (*(v99 + 24))
                          {
                            v263 = v81[i];
                            v267 = *(v99 + 24);
                            v261 = *(v99 + 16);
                            v100 = *(v77 + 64);
                            v101 = *(v77 + 96);
                            v332[2] = *(v77 + 80);
                            v333 = v101;
                            LOBYTE(v334) = *(v77 + 112);
                            v102 = *(v77 + 64);
                            v332[0] = *(v77 + 48);
                            v332[1] = v100;
                            v103 = *(v77 + 96);
                            v315 = v332[2];
                            v316 = v103;
                            LOBYTE(v317) = *(v77 + 112);
                            v313 = *(v77 + 48);
                            v314 = v102;
                            v257 = sub_1AF64FB24(&type metadata for VertexLayoutCollection);
                            v105 = v104;
                            v336[2] = v315;
                            v337 = v316;
                            LOBYTE(v338) = v317;
                            v336[0] = v313;
                            v336[1] = v314;

                            sub_1AF5DD36C(v332, v311);
                            sub_1AF5DD3C8(v336);
                            if (v105)
                            {
                            }

                            else
                            {
                              v106 = *(v77 + 128);

                              sub_1AF5DE4E0(0, &qword_1EB630A38, &type metadata for VertexLayout, MEMORY[0x1E69E6F90]);
                              v107 = swift_allocObject();
                              *(v107 + 16) = xmmword_1AFE431C0;
                              *(v107 + 32) = v261;
                              *(v107 + 40) = v267;
                              *(v106 + v257 + 8 * v263) = v107;
                            }

                            v83 = v284;
                          }

                          v81 = v308;
                        }

                        break;
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            v85 = v284;
            if (v74 != v73)
            {
              do
              {
                v108 = (v82 + 40 * v74);
                v110 = *v108;
                v109 = v108[1];
                v111 = v110 == -1 && v109 == 0;
                if (!v111 && (v110 & 0x80000000) == 0 && v85[1] > v110)
                {
                  v112 = (*v85 + 12 * v110);
                  if (v109 == -1 || v112[2] == v109)
                  {
                    v114 = *(v112 + 2);
                    v115 = *(*(a1 + 144) + 8 * *v112 + 32);
                    v116 = *(v115 + 48);
                    v117 = (v116 + 32);
                    v118 = *(v116 + 16) + 1;
                    while (--v118)
                    {
                      v119 = v117 + 5;
                      v120 = *v117;
                      v117 += 5;
                      if (v120 == &type metadata for MeshModel)
                      {
                        v121 = *(&(*(v119 - 2))[v114].Kind + *(v115 + 128));
                        if (v121 && *(v121 + 24))
                        {
                          v268 = *(v121 + 16);
                          v270 = *(v121 + 24);
                          v122 = *(v77 + 64);
                          v123 = *(v77 + 96);
                          v332[2] = *(v77 + 80);
                          v333 = v123;
                          LOBYTE(v334) = *(v77 + 112);
                          v124 = *(v77 + 64);
                          v332[0] = *(v77 + 48);
                          v332[1] = v122;
                          v125 = *(v77 + 96);
                          v315 = v332[2];
                          v316 = v125;
                          LOBYTE(v317) = *(v77 + 112);
                          v313 = *(v77 + 48);
                          v314 = v124;
                          v264 = sub_1AF64FB24(&type metadata for VertexLayoutCollection);
                          v127 = v126;
                          v336[2] = v315;
                          v337 = v316;
                          LOBYTE(v338) = v317;
                          v336[0] = v313;
                          v336[1] = v314;

                          sub_1AF5DD36C(v332, v311);
                          sub_1AF5DD3C8(v336);
                          if (v127)
                          {
                          }

                          else
                          {
                            v128 = *(v77 + 128);

                            sub_1AF5DE4E0(0, &qword_1EB630A38, &type metadata for VertexLayout, MEMORY[0x1E69E6F90]);
                            v129 = swift_allocObject();
                            *(v129 + 16) = xmmword_1AFE431C0;
                            *(v129 + 32) = v268;
                            *(v129 + 40) = v270;
                            *(v128 + v264 + 8 * v74) = v129;
                          }

                          v85 = v284;
                        }

                        break;
                      }
                    }
                  }
                }

                ++v74;
              }

              while (v74 != v73);
            }
          }

          v2 = v295;
          sub_1AF630994(v69, &v345, v369);
          sub_1AF62D29C(v77);
          v70 = v274;
          ecs_stack_allocator_pop_snapshot(v274);
          if (v302)
          {
            os_unfair_lock_unlock(*(v77 + 344));
            os_unfair_lock_unlock(*(v77 + 376));
          }

          v71 = v291 + 1;
        }

        while (v291 + 1 != v281);
        v130 = MEMORY[0x1E69E6720];
        sub_1AF5DD530(v328, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
        sub_1AF5DD530(v328, &qword_1ED725EA0, &type metadata for QueryResult, v130, sub_1AF5DE4E0);
      }
    }
  }

  v269 = sub_1AF43BB9C(MEMORY[0x1E69E7CC0]);
  v319 = v269;
  v131 = *(v256 + 112);
  v311[0] = *(v256 + 96);
  v311[1] = v131;
  v312 = *(v256 + 128);
  sub_1AF6B06C0(a1, v311, 0x200000000, v332);
  v258 = *&v332[0];
  if (*&v332[0])
  {
    v132 = *(&v332[2] + 1);
    v133 = *(&v333 + 1);
    v285 = *(&v334 + 1);
    v343 = *(v332 + 8);
    v344 = *(&v332[1] + 8);
    if (v335 > 0 && *(&v333 + 1))
    {
      v282 = *(*(&v334 + 1) + 32);
      v277 = *(v334 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v262 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v359 = v332[2];
      v360 = v333;
      v361 = v334;
      v362 = v335;
      v357 = v332[0];
      v358 = v332[1];
      sub_1AF5DD298(&v357, v336);
      v134 = 0;
      v250 = v132;
      v251 = v133;
      while (1)
      {
        v275 = v134;
        v135 = (v132 + 48 * v134);
        v136 = *v135;
        v265 = v135[1];
        v137 = *(v135 + 2);
        v138 = *(v135 + 3);
        v139 = *(v135 + 5);
        v292 = *(v135 + 4);
        if (v277)
        {
          v140 = *(v139 + 376);

          os_unfair_lock_lock(v140);
          os_unfair_lock_lock(*(v139 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v282);
        v141 = *(v285 + 64);
        v367[0] = *(v285 + 48);
        v367[1] = v141;
        v368 = *(v285 + 80);
        v142 = *(*(*(*(v139 + 40) + 16) + 32) + 16) + 1;
        *(v285 + 48) = ecs_stack_allocator_allocate(*(v285 + 32), 48 * v142, 8);
        *(v285 + 56) = v142;
        *(v285 + 72) = 0;
        *(v285 + 80) = 0;
        *(v285 + 64) = 0;
        v271 = v139;
        v143 = sub_1AF64B110(&type metadata for ModelRenderer, &off_1F2562450, v137, v138, v292, v285);
        if (!v137)
        {
          break;
        }

        v144 = v262;
        if (v292)
        {
          v145 = v292;
          v137 = 0;
          while (1)
          {
            v148 = (v143 + 16 * v137);
            v149 = v148[1];
            v150 = *v148;
            v151 = v150 == -1 && v149 == 0;
            if (v151 || (v150 & 0x80000000) != 0 || v144[1] <= v150)
            {
              goto LABEL_149;
            }

            v152 = (*v144 + 12 * v150);
            if (v149 != -1 && v152[2] != v149)
            {
              goto LABEL_149;
            }

            v154 = *(v152 + 2);
            v155 = *(*(a1 + 144) + 8 * *v152 + 32);
            v156 = *(v155 + 48);
            v157 = (v156 + 32);
            v158 = *(v156 + 16) + 1;
            do
            {
              if (!--v158)
              {
                goto LABEL_149;
              }

              v159 = v157 + 5;
              v160 = *v157;
              v157 += 5;
            }

            while (v160 != &type metadata for MeshModel);
            v161 = (&(*(v159 - 2))[v154].Kind + *(v155 + 128));
            v162 = *v161;
            if (!*v161)
            {
              goto LABEL_149;
            }

            v309 = *(v162 + 24);
            if (!v309)
            {
              goto LABEL_149;
            }

            v163 = v161[1];
            v303 = *(v162 + 16);
            v266 = v163;
            if (*(v163 + 16))
            {
              break;
            }

            swift_retain_n();

            v172 = 0;
LABEL_177:
            v174 = v148[2];
            v175 = v148[3];
            if (__PAIR64__(v175, v174) == 0xFFFFFFFF)
            {

              sub_1AF0FB8EC(v172);
            }

            else
            {
              v297 = v172;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v336[0] = v269;
              v168 = v174 | (v175 << 32);
              v177 = sub_1AF449D3C(v168);
              v179 = v178;
              if (v269[3] >= (v269[2] + ((v178 & 1) == 0)))
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v192 = v177;
                  sub_1AF848180();
                  v177 = v192;
                }
              }

              else
              {
                sub_1AF8331BC(v269[2] + ((v178 & 1) == 0), isUniquelyReferenced_nonNull_native);
                v177 = sub_1AF449D3C(v168);
                if ((v179 & 1) != (v180 & 1))
                {
                  goto LABEL_270;
                }
              }

              v132 = v250;
              v190 = *&v336[0];
              if ((v179 & 1) == 0)
              {
                sub_1AF85B950(v177, v168, MEMORY[0x1E69E7CD0], *&v336[0]);
              }

              v269 = v190;

              sub_1AF70D658(v336, v303, v309);

              sub_1AF0FB8EC(v297);
              v133 = v251;
            }

            v144 = v262;
            v145 = v292;
LABEL_149:
            if (++v137 == v145)
            {
              goto LABEL_250;
            }
          }

          v247 = *(v163 + 16);
          v164 = *(v163 + 32);
          swift_bridgeObjectRetain_n();
          swift_retain_n();

          sub_1AF0FB8EC(0);
          v165 = swift_isUniquelyReferenced_nonNull_native();
          *&v313 = v269;
          v166 = sub_1AF449D3C(v164);
          v168 = v167;
          v169 = v269[2] + ((v167 & 1) == 0);
          v296 = v2;
          v252 = v143;
          if (v269[3] >= v169)
          {
            v170 = v164;
            if ((v165 & 1) == 0)
            {
              v191 = v166;
              sub_1AF848180();
              v166 = v191;
            }
          }

          else
          {
            sub_1AF8331BC(v169, v165);
            v170 = v164;
            v166 = sub_1AF449D3C(v164);
            if ((v168 & 1) != (v171 & 1))
            {
              goto LABEL_270;
            }
          }

          v2 = v313;
          if ((v168 & 1) == 0)
          {
            sub_1AF85B950(v166, v170, MEMORY[0x1E69E7CD0], v313);
          }

          sub_1AF70D658(v336, v303, v309);

          v173 = v247 - 1;
          if (v247 == 1)
          {
LABEL_176:
            v269 = v2;

            v172 = sub_1AF5D818C;
            v2 = v296;
            v132 = v250;
            v133 = v251;
            v143 = v252;
            goto LABEL_177;
          }

          v181 = v266 + 44;
          while (1)
          {
            v168 = *(v181 - 4);
            sub_1AF0FB8EC(sub_1AF5D818C);
            v182 = v2;
            v183 = swift_isUniquelyReferenced_nonNull_native();
            *&v313 = v182;
            v185 = sub_1AF449D3C(v168);
            v186 = v184;
            v187 = v182[2] + ((v184 & 1) == 0);
            if (v182[3] >= v187)
            {
              if ((v183 & 1) == 0)
              {
                sub_1AF848180();
                v2 = v313;
                if (v186)
                {
                  goto LABEL_183;
                }

LABEL_190:
                sub_1AF85B950(v185, v168, MEMORY[0x1E69E7CD0], v2);
                goto LABEL_183;
              }

              v2 = v182;
              if ((v184 & 1) == 0)
              {
                goto LABEL_190;
              }
            }

            else
            {
              sub_1AF8331BC(v187, v183);
              v2 = v313;
              v188 = sub_1AF449D3C(v168);
              if ((v186 & 1) != (v189 & 1))
              {
                goto LABEL_270;
              }

              v185 = v188;
              if ((v186 & 1) == 0)
              {
                goto LABEL_190;
              }
            }

LABEL_183:
            v181 += 8;

            sub_1AF70D658(v336, v303, v309);

            if (!--v173)
            {
              goto LABEL_176;
            }
          }
        }

LABEL_251:
        v348 = v258;
        v349 = v343;
        v350 = v344;
        sub_1AF630994(v285, &v348, v367);
        sub_1AF62D29C(v271);
        ecs_stack_allocator_pop_snapshot(v282);
        if (v277)
        {
          os_unfair_lock_unlock(*(v271 + 344));
          os_unfair_lock_unlock(*(v271 + 376));
        }

        v134 = v275 + 1;
        if (v275 + 1 == v133)
        {
          v232 = MEMORY[0x1E69E6720];
          sub_1AF5DD530(v332, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
          sub_1AF5DD530(v332, &qword_1ED725EA0, &type metadata for QueryResult, v232, sub_1AF5DE4E0);
          goto LABEL_255;
        }
      }

      v146 = v262;
      v147 = v265;
      if (v136 == v265)
      {
        goto LABEL_251;
      }

      while (1)
      {
        v193 = (v143 + 16 * v136);
        v194 = v193[1];
        v195 = *v193;
        v196 = v195 == -1 && v194 == 0;
        if (v196 || (v195 & 0x80000000) != 0 || v146[1] <= v195)
        {
          goto LABEL_200;
        }

        v197 = (*v146 + 12 * v195);
        if (v194 != -1 && v197[2] != v194)
        {
          goto LABEL_200;
        }

        v199 = *(v197 + 2);
        v200 = *(*(a1 + 144) + 8 * *v197 + 32);
        v201 = *(v200 + 48);
        v202 = (v201 + 32);
        v203 = *(v201 + 16) + 1;
        do
        {
          if (!--v203)
          {
            goto LABEL_200;
          }

          v204 = v202 + 5;
          v205 = *v202;
          v202 += 5;
        }

        while (v205 != &type metadata for MeshModel);
        v206 = (&(*(v204 - 2))[v199].Kind + *(v200 + 128));
        v207 = *v206;
        if (!*v206)
        {
          goto LABEL_200;
        }

        v309 = *(v207 + 24);
        if (!v309)
        {
          goto LABEL_200;
        }

        v248 = v143 + 16 * v136;
        v298 = v2;
        v208 = v206[1];
        v304 = *(v207 + 16);
        v209 = *(v208 + 16);
        v293 = v208;
        if (!v209)
        {
          swift_retain_n();

          v215 = 0;
          goto LABEL_227;
        }

        v2 = *(v208 + 32);
        swift_bridgeObjectRetain_n();
        swift_retain_n();

        sub_1AF0FB8EC(0);
        v210 = swift_isUniquelyReferenced_nonNull_native();
        *&v313 = v269;
        v211 = sub_1AF449D3C(v2);
        v168 = v212;
        v213 = v269[2] + ((v212 & 1) == 0);
        v253 = v143;
        if (v269[3] < v213)
        {
          break;
        }

        if (v210)
        {
          goto LABEL_223;
        }

        v231 = v211;
        sub_1AF848180();
        v211 = v231;
        v216 = v313;
        if ((v168 & 1) == 0)
        {
          goto LABEL_224;
        }

LABEL_225:

        sub_1AF70D658(v336, v304, v309);

        v217 = v209 - 1;
        if (v209 != 1)
        {
          v224 = v293 + 44;
          do
          {
            v137 = *(v224 - 4);
            sub_1AF0FB8EC(sub_1AF5D818C);
            v225 = swift_isUniquelyReferenced_nonNull_native();
            *&v313 = v216;
            v226 = sub_1AF449D3C(v137);
            v168 = v227;
            if (v216[3] >= (v216[2] + ((v227 & 1) == 0)))
            {
              if ((v225 & 1) == 0)
              {
                v229 = v226;
                sub_1AF848180();
                v226 = v229;
                v2 = v313;
                if (v168)
                {
                  goto LABEL_233;
                }

LABEL_240:
                sub_1AF85B950(v226, v137, MEMORY[0x1E69E7CD0], v2);
                goto LABEL_233;
              }

              v2 = v216;
            }

            else
            {
              sub_1AF8331BC(v216[2] + ((v227 & 1) == 0), v225);
              v2 = v313;
              v226 = sub_1AF449D3C(v137);
              if ((v168 & 1) != (v228 & 1))
              {
                goto LABEL_270;
              }
            }

            if ((v168 & 1) == 0)
            {
              goto LABEL_240;
            }

LABEL_233:
            v224 += 8;
            v216 = v2;

            sub_1AF70D658(v336, v304, v309);

            --v217;
          }

          while (v217);
        }

        v269 = v216;

        v215 = sub_1AF5D818C;
        v133 = v251;
        v143 = v253;
LABEL_227:
        v218 = *(v248 + 8);
        v137 = *(v248 + 12);
        v2 = v298;
        if (__PAIR64__(v137, v218) == 0xFFFFFFFF)
        {

          sub_1AF0FB8EC(v215);
          v132 = v250;
          goto LABEL_199;
        }

        v249 = v215;
        v219 = swift_isUniquelyReferenced_nonNull_native();
        *&v336[0] = v269;
        v220 = v218 | (v137 << 32);
        v221 = sub_1AF449D3C(v220);
        v168 = v222;
        if (v269[3] >= (v269[2] + ((v222 & 1) == 0)))
        {
          if ((v219 & 1) == 0)
          {
            v137 = v221;
            sub_1AF848180();
            v221 = v137;
            v230 = *&v336[0];
            if (v168)
            {
              goto LABEL_198;
            }

LABEL_245:
            sub_1AF85B950(v221, v220, MEMORY[0x1E69E7CD0], v230);
            goto LABEL_198;
          }
        }

        else
        {
          sub_1AF8331BC(v269[2] + ((v222 & 1) == 0), v219);
          v221 = sub_1AF449D3C(v220);
          if ((v168 & 1) != (v223 & 1))
          {
LABEL_270:
            sub_1AFDFF1A8();
            __break(1u);

            v351 = v285;
            v352 = v341;
            v353 = v342;
            sub_1AF630994(v309, &v351, v340);
            sub_1AF62D29C(v137);
            ecs_stack_allocator_pop_snapshot(v168);
            os_unfair_lock_unlock(*(v137 + 344));
            os_unfair_lock_unlock(*(v137 + 376));
            __break(1u);
            return;
          }
        }

        v230 = *&v336[0];
        if ((v168 & 1) == 0)
        {
          goto LABEL_245;
        }

LABEL_198:
        v269 = v230;

        sub_1AF70D658(v336, v304, v309);

        sub_1AF0FB8EC(v249);
        v132 = v250;
        v133 = v251;
LABEL_199:
        v146 = v262;
        v147 = v265;
LABEL_200:
        if (++v136 == v147)
        {
LABEL_250:
          v319 = v269;
          goto LABEL_251;
        }
      }

      sub_1AF8331BC(v213, v210);
      v211 = sub_1AF449D3C(v2);
      if ((v168 & 1) != (v214 & 1))
      {
        goto LABEL_270;
      }

LABEL_223:
      v216 = v313;
      if (v168)
      {
        goto LABEL_225;
      }

LABEL_224:
      sub_1AF85B950(v211, v2, MEMORY[0x1E69E7CD0], v216);
      goto LABEL_225;
    }

    sub_1AF5DD530(v332, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
  }

LABEL_255:
  v233 = *(v256 + 232);
  v365[0] = *(v256 + 216);
  v365[1] = v233;
  v366 = *(v256 + 248);
  sub_1AF6B06C0(a1, v365, 0x200000000, v336);
  v286 = *&v336[0];
  if (*&v336[0])
  {
    v234 = *(&v336[2] + 1);
    v235 = *(&v337 + 1);
    v310 = *(&v338 + 1);
    v341 = *(v336 + 8);
    v342 = *(&v336[1] + 8);
    v278 = v339;
    v283 = v338;
    if (v339 <= 0)
    {
      sub_1AF5DD530(v328, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
      v245 = v336;
    }

    else
    {
      if (*(&v337 + 1))
      {
        v236 = *(*(&v338 + 1) + 32);
        v305 = *(v338 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v315 = v336[2];
        v316 = v337;
        v317 = v338;
        v318 = v339;
        v313 = v336[0];
        v314 = v336[1];
        sub_1AF5DD298(&v313, &v357);
        v237 = (v234 + 24);
        do
        {
          v239 = *(v237 - 6);
          v238 = *(v237 - 5);
          v240 = *(v237 - 4);
          v241 = *(v237 - 1);
          v294 = *v237;
          v299 = v2;
          v242 = v237[2];
          v288 = v237[1];
          if (v305)
          {
            v243 = *(v242 + 376);

            os_unfair_lock_lock(v243);
            os_unfair_lock_lock(*(v242 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v236);

          sub_1AF630914(v244, v310, v340);

          LOBYTE(v351) = 1;
          *&v357 = v283;
          *(&v357 + 1) = v242;
          *&v358 = v310;
          *(&v358 + 1) = v240;
          *&v359 = (v238 - v239 + v240);
          *(&v359 + 1) = v278;
          *&v360 = v239;
          *(&v360 + 1) = v238;
          v361 = 0uLL;
          LOBYTE(v362) = 1;
          *(&v362 + 1) = v241;
          v363 = v294;
          v364 = v288;
          v2 = v299;
          sub_1AFD101E0(&v357, &v319);
          v354 = v286;
          v355 = v341;
          v356 = v342;
          sub_1AF630994(v310, &v354, v340);
          sub_1AF62D29C(v242);
          ecs_stack_allocator_pop_snapshot(v236);
          if (v305)
          {
            os_unfair_lock_unlock(*(v242 + 344));
            os_unfair_lock_unlock(*(v242 + 376));
          }

          v237 += 6;
          --v235;
        }

        while (v235);
      }

      else
      {
        v359 = v336[2];
        v360 = v337;
        v361 = v338;
        v362 = v339;
        v357 = v336[0];
        v358 = v336[1];
        sub_1AF5DD298(&v357, &v313);
      }

      v246 = MEMORY[0x1E69E6720];
      sub_1AF5DD530(v328, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
      v245 = v336;
      sub_1AF5DD530(v336, &qword_1ED725EA0, &type metadata for QueryResult, v246, sub_1AF5DE4E0);
    }
  }

  else
  {
    v245 = v328;
  }

  sub_1AF5DD530(v245, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
}

uint64_t sub_1AF5D819C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF5D8220()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v42 = qword_1ED73B840;
  v43 = 0;
  v44 = 2;
  v45 = 0;
  v46 = 2;
  v47 = 0;
  sub_1AF702E9C(1, &v19);
  v1 = v20;
  v2 = v21;
  v3 = v23;
  v4 = v22 | 5;
  *(v0 + 16) = v19;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  sub_1AF702EB0(1, &v24);
  v5 = v25;
  v6 = v26;
  v7 = v28;
  v8 = v27 | 4;
  *(v0 + 56) = v24;
  *(v0 + 64) = v5;
  *(v0 + 68) = v6;
  *(v0 + 72) = v8;
  *(v0 + 80) = 2;
  *(v0 + 88) = v7;
  sub_1AF702EC4(1, &v29);
  v9 = v30;
  v10 = v31;
  v11 = v33;
  v12 = v32 | 4;
  *(v0 + 96) = v29;
  *(v0 + 104) = v9;
  *(v0 + 108) = v10;
  *(v0 + 112) = v12;
  *(v0 + 120) = 2;
  *(v0 + 128) = v11;
  sub_1AF702EB0(1, v34);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for VertexLayoutCollection;
  *(inited + 40) = &off_1F252BD28;
  sub_1AF5D1EBC(inited, v35);
  sub_1AF5DD530(v34, &unk_1ED723CF8, &type metadata for ParticleMeshRenderer, &off_1F2550788, sub_1AF5DD590);
  swift_setDeallocating();
  v14 = v35[1];
  *(v0 + 136) = v35[0];
  *(v0 + 152) = v14;
  *(v0 + 168) = v36;
  sub_1AF702ED8(1, v37);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = &type metadata for VertexLayoutCollection;
  *(v15 + 40) = &off_1F252BD28;
  sub_1AF5D1EBC(v15, v38);
  sub_1AF5DD530(v37, &unk_1ED723BE8, &type metadata for Material, &off_1F253F848, sub_1AF5DD590);
  swift_setDeallocating();
  v16 = v38[1];
  *(v0 + 176) = v38[0];
  *(v0 + 192) = v16;
  *(v0 + 208) = v39;
  sub_1AFCC3318(1, 2, v40);
  v17 = v40[1];
  *(v0 + 216) = v40[0];
  *(v0 + 232) = v17;
  *(v0 + 248) = v41;
  return v0;
}

uint64_t sub_1AF5D8504(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v10 = result;
    v11 = *(v6 + 32);
    v32[0] = *(v6 + 16);
    v32[1] = v11;
    v33 = *(v6 + 48);

    sub_1AF6B06C0(v10, v32, 0x200000000, &v18);
    if (v18)
    {
      v28 = v21;
      v29 = v22;
      v30 = v23;
      v31 = v24;
      v26 = v19;
      v27 = v20;
      v25 = v18;
      MEMORY[0x1EEE9AC00](v12, v13);
      v14[2] = v10;
      v14[3] = a2;
      v15 = a3;
      v16 = a2;
      v17 = v10;
      sub_1AF5D5E24(a6, v14, sub_1AF5D91AC);
      sub_1AF5DD530(&v18, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
    }

    sub_1AF5D6070(v10);
  }

  return result;
}

uint64_t sub_1AF5D86A0()
{
  v0 = swift_allocObject();
  sub_1AF5D8220();
  return v0;
}

uint64_t initializeBufferWithCopyOfBuffer for MeshImportOptions(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MeshImportOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshImportOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderArchive.Library(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ShaderArchive.Library(uint64_t result, int a2, int a3)
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

uint64_t destroy for MeshFileAsset(uint64_t a1)
{
}

uint64_t initializeWithCopy for MeshFileAsset(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v7 = *(a2 + 32);
  *(a1 + 32) = v7;
  *(a1 + 48) = *(a2 + 48);

  v5 = v7;

  return a1;
}

void *assignWithCopy for MeshFileAsset(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[4];
  a1[4] = v4;
  v7 = v4;

  a1[5] = v5;
  a1[6] = a2[6];

  return a1;
}

uint64_t assignWithTake for MeshFileAsset(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for MeshFileAsset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for MeshFileAsset(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for SceneFileAsset(uint64_t a1)
{
}

uint64_t initializeWithCopy for SceneFileAsset(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v8 = *(a2 + 32);
  *(a1 + 32) = v8;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  v6 = v8;

  return a1;
}

void *assignWithCopy for SceneFileAsset(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[4];
  a1[4] = v4;
  v7 = v4;

  a1[5] = v5;
  a1[6] = a2[6];
  a1[7] = a2[7];

  return a1;
}

uint64_t assignWithTake for SceneFileAsset(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 40);
  v6 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for SceneFileAsset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for SceneFileAsset(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1AF5D8D78()
{
  result = qword_1EB63C140;
  if (!qword_1EB63C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C140);
  }

  return result;
}

unint64_t sub_1AF5D8DD0()
{
  result = qword_1EB63C148;
  if (!qword_1EB63C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C148);
  }

  return result;
}

unint64_t sub_1AF5D8E28()
{
  result = qword_1EB63C150;
  if (!qword_1EB63C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C150);
  }

  return result;
}

unint64_t sub_1AF5D8E80()
{
  result = qword_1EB63C158;
  if (!qword_1EB63C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C158);
  }

  return result;
}

uint64_t sub_1AF5D8EEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v4 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED73B840;
  v16 = 0;
  v17 = 2;
  v18 = 0;
  v19 = 2;
  v20 = 0;
  a3(&v10, 1);
  v5 = v11;
  v6 = v12;
  v7 = v14;
  v8 = v13 | 4;
  *(v4 + 16) = v10;
  *(v4 + 24) = v5;
  *(v4 + 28) = v6;
  *(v4 + 32) = v8;
  *(v4 + 40) = 2;
  *(v4 + 48) = v7;
  return v4;
}

void sub_1AF5D8FEC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  v6 = *(v4 + 40);

  os_unfair_lock_unlock(v6);
}

unint64_t sub_1AF5D90A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_1AFDFD068();
    v13[0] = sub_1AFDFD1C8();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_1AF5D91AC(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];

  v9 = sub_1AF64B110(&type metadata for MeshFileAsset, &off_1F252BCD0, v5, v4, v6, v8);
  v10 = v54;
  sub_1AF649C6C(*(v7 + 40), &type metadata for MeshModel, &v58);
  v63 = v7;
  if (v58 == 1)
  {
    a2[9] = &type metadata for MeshModel;
    a2[10] = &off_1F2562500;
    v11 = sub_1AF64B110(&type metadata for MeshModel, &off_1F2562500, v5, v4, v6, v8);
    v12 = v11;
    if (v5)
    {
      if (v6)
      {
        v13 = v8;
        v14 = a1[3];
        v15 = *a1;
        do
        {
          v16 = *v5++;
          v59[0] = v15;
          v59[1] = v63;
          v59[2] = v13;
          v59[3] = v14;
          v59[4] = v16;
          a3(v59, v9, v12);
          if (v54)
          {
            break;
          }

          v12 += 16;
          v9 += 56;
          ++v14;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v30 = v8;
      v31 = a1[3];
      v32 = a1[6];
      v33 = a1[7];
      v34 = v9 + 56 * v32;
      v35 = v11 + 16 * v32;
      do
      {
        if (v33 == v32)
        {
          break;
        }

        v36 = v32 + 1;
        v60[0] = *a1;
        v60[1] = v63;
        v60[2] = v30;
        v60[3] = v31;
        v60[4] = v32;
        a3(v60, v34, v35);
        ++v31;
        v34 += 56;
        v35 += 16;
        v32 = v36;
      }

      while (!v54);
    }
  }

  v17 = v6;
  if (!v5)
  {
    v17 = a1[7] - a1[6];
  }

  v55 = 16 * v17;
  v18 = ecs_stack_allocator_allocate(a2[4], 16 * v17, 8);
  v19 = v4;
  if (v17)
  {
    v20 = MEMORY[0x1E69E7CC0];
    if (v17 > 0x17)
    {
      v21 = 0;
      v47 = 2 * (v17 - 1);
      if (&v18[v47] >= v18 && &v18[v47 + 1] >= v18 + 1 && !((v17 - 1) >> 60))
      {
        v21 = v17 & 0x1FFFFFFFFFFFFFFCLL;
        v48 = v18 + 4;
        *&v49 = 0;
        *(&v49 + 1) = MEMORY[0x1E69E7CC0];
        v50 = v17 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          *(v48 - 2) = v49;
          *(v48 - 1) = v49;
          *v48 = v49;
          v48[1] = v49;
          v48 += 4;
          v50 -= 4;
        }

        while (v50);
        if (v17 == v21)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = v17 - v21;
    v23 = &v18[2 * v21 + 1];
    do
    {
      *(v23 - 1) = 0;
      *v23 = v20;
      v23 += 2;
      --v22;
    }

    while (v22);
  }

LABEL_15:
  v52 = v17;
  v53 = v18;
  v24 = v8;
  if (v5)
  {
    v25 = 0;
    v26 = v18;
    while (v6 != v25)
    {
      v27 = v5[v25];
      v28 = v25 + 1;
      v29 = v25 + a1[3];
      v61[0] = *a1;
      v61[1] = v63;
      v61[2] = v24;
      v61[3] = v29;
      v61[4] = v27;
      a3(v61, v9, v26);
      v19 = v4;
      v9 += 56;
      v26 += 2;
      v25 = v28;
      if (v10)
      {
        goto LABEL_27;
      }
    }

    v45 = v53;
    v46 = a2;
    sub_1AF5B6D6C(v5, v19, v6, v53, v52, a2);
  }

  else
  {
    v37 = 0;
    v38 = a1[6];
    v39 = v9 + 56 * v38;
    v40 = v38 - a1[7];
    v41 = v18;
    while (v40 + v37)
    {
      v42 = v38 + v37;
      v43 = v37 + 1;
      v44 = v37 + a1[3];
      v62[0] = *a1;
      v62[1] = v63;
      v62[2] = v8;
      v62[3] = v44;
      v62[4] = v42;
      a3(v62, v39, v41);
      v41 += 2;
      v39 += 56;
      v37 = v43;
      if (v10)
      {
LABEL_27:
        ecs_stack_allocator_deallocate(a2[4], v53, v55);
      }
    }

    v45 = v53;
    v46 = a2;
    sub_1AF5B7298(*(v63 + 232), *(v63 + 240));
  }

  ecs_stack_allocator_deallocate(v46[4], v45, v55);
}

uint64_t sub_1AF5D95B0(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];

  v9 = sub_1AF64B110(&type metadata for PrimitiveGenerator, &off_1F252F1F0, v5, v4, v6, v8);
  v10 = v55;
  sub_1AF649C6C(*(v7 + 40), &type metadata for MeshModel, &v59);
  v64 = v7;
  if (v59 == 1)
  {
    a2[9] = &type metadata for MeshModel;
    a2[10] = &off_1F2562500;
    v11 = sub_1AF64B110(&type metadata for MeshModel, &off_1F2562500, v5, v4, v6, v8);
    v12 = v11;
    if (v5)
    {
      if (v6)
      {
        v13 = v8;
        v14 = a1[3];
        v15 = *a1;
        do
        {
          v16 = *v5++;
          v60[0] = v15;
          v60[1] = v64;
          v60[2] = v13;
          v60[3] = v14;
          v60[4] = v16;
          a3(v60, v9, v12);
          if (v55)
          {
            break;
          }

          v12 += 16;
          v9 += 176;
          ++v14;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v30 = v8;
      v31 = a1[3];
      v32 = a1[6];
      v33 = a1[7];
      v34 = v9 + 176 * v32;
      v35 = v11 + 16 * v32;
      do
      {
        if (v33 == v32)
        {
          break;
        }

        v36 = v32 + 1;
        v61[0] = *a1;
        v61[1] = v64;
        v61[2] = v30;
        v61[3] = v31;
        v61[4] = v32;
        a3(v61, v34, v35);
        ++v31;
        v34 += 176;
        v35 += 16;
        v32 = v36;
      }

      while (!v55);
    }
  }

  v17 = v6;
  if (!v5)
  {
    v17 = a1[7] - a1[6];
  }

  v56 = 16 * v17;
  v18 = ecs_stack_allocator_allocate(a2[4], 16 * v17, 8);
  v19 = v4;
  if (v17)
  {
    v20 = MEMORY[0x1E69E7CC0];
    if (v17 > 0x17)
    {
      v21 = 0;
      v47 = 2 * (v17 - 1);
      if (&v18[v47] >= v18 && &v18[v47 + 1] >= v18 + 1 && (v17 - 1) >> 60 == 0)
      {
        v21 = v17 & 0x1FFFFFFFFFFFFFFCLL;
        v49 = v18 + 4;
        *&v50 = 0;
        *(&v50 + 1) = MEMORY[0x1E69E7CC0];
        v51 = v17 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          *(v49 - 2) = v50;
          *(v49 - 1) = v50;
          *v49 = v50;
          v49[1] = v50;
          v49 += 4;
          v51 -= 4;
        }

        while (v51);
        if (v17 == v21)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = v17 - v21;
    v23 = &v18[2 * v21 + 1];
    do
    {
      *(v23 - 1) = 0;
      *v23 = v20;
      v23 += 2;
      --v22;
    }

    while (v22);
  }

LABEL_15:
  v53 = v17;
  v54 = v18;
  v24 = v8;
  if (v5)
  {
    v25 = 0;
    v26 = v18;
    while (v6 != v25)
    {
      v27 = v5[v25];
      v28 = v25 + 1;
      v29 = v25 + a1[3];
      v62[0] = *a1;
      v62[1] = v64;
      v62[2] = v24;
      v62[3] = v29;
      v62[4] = v27;
      a3(v62, v9, v26);
      v19 = v4;
      v9 += 176;
      v26 += 2;
      v25 = v28;
      if (v10)
      {
        goto LABEL_27;
      }
    }

    v45 = v54;
    v46 = a2;
    sub_1AF5B6D6C(v5, v19, v6, v54, v53, a2);
  }

  else
  {
    v37 = 0;
    v38 = a1[6];
    v39 = v9 + 176 * v38;
    v40 = v38 - a1[7];
    v41 = v18;
    while (v40 + v37)
    {
      v42 = v38 + v37;
      v43 = v37 + 1;
      v44 = v37 + a1[3];
      v63[0] = *a1;
      v63[1] = v64;
      v63[2] = v8;
      v63[3] = v44;
      v63[4] = v42;
      a3(v63, v39, v41);
      v41 += 2;
      v39 += 176;
      v37 = v43;
      if (v10)
      {
LABEL_27:
        ecs_stack_allocator_deallocate(a2[4], v54, v56);
      }
    }

    v45 = v54;
    v46 = a2;
    sub_1AF5B7298(*(v64 + 232), *(v64 + 240));
  }

  ecs_stack_allocator_deallocate(v46[4], v45, v56);
}

uint64_t sub_1AF5D99B0(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t a4)
{
  v60[7] = a4;
  v6 = a1[11];
  v5 = a1[12];
  v7 = a1[13];
  v8 = a1[1];
  v9 = a1[2];

  v10 = sub_1AF64B110(&type metadata for VideoCapture, &off_1F256EB00, v6, v5, v7, v9);
  sub_1AF649C6C(v8[5], &type metadata for VideoCaptureRuntime, v53);
  if (v53[0] == 1)
  {
    a2[9] = &type metadata for VideoCaptureRuntime;
    a2[10] = &off_1F256EBB8;
    v11 = sub_1AF64B110(&type metadata for VideoCaptureRuntime, &off_1F256EBB8, v6, v5, v7, v9);
    v12 = v11;
    if (v6)
    {
      if (v7)
      {
        v13 = a1[3];
        v14 = *a1;
        do
        {
          v15 = *v6++;
          v57[0] = v14;
          v57[1] = v8;
          v57[2] = v9;
          v57[3] = v13;
          v57[4] = v15;
          a3(v57, v10, v12);
          if (v50)
          {
            break;
          }

          v12 += 48;
          v10 += 40;
          ++v13;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v29 = a1[3];
      v30 = a1[6];
      v31 = a1[7];
      v32 = v10 + 40 * v30;
      v33 = v11 + 48 * v30;
      do
      {
        if (v31 == v30)
        {
          break;
        }

        v34 = v30 + 1;
        v58[0] = *a1;
        v58[1] = v8;
        v58[2] = v9;
        v58[3] = v29;
        v58[4] = v30;
        a3(v58, v32, v33);
        ++v29;
        v32 += 40;
        v33 += 48;
        v30 = v34;
      }

      while (!v50);
    }
  }

  v47 = v5;
  v16 = v7;
  if (!v6)
  {
    v16 = a1[7] - a1[6];
  }

  sub_1AFCFF604(&v54);
  v48 = 48 * v16;
  v17 = ecs_stack_allocator_allocate(a2[4], 48 * v16, 8);
  v49 = v17;
  if (!v16)
  {
    sub_1AF5DDEE8(&v54);
    v24 = 0;
    if (v6)
    {
      goto LABEL_15;
    }

LABEL_24:
    v35 = a1[6];
    v36 = v10 + 40 * v35;
    v37 = v35 - a1[7];
    v38 = v49;
    while (v37 + v24)
    {
      v39 = v35 + v24;
      v40 = v24 + 1;
      v41 = v24 + a1[3];
      v60[0] = *a1;
      v60[1] = v8;
      v60[2] = v9;
      v60[3] = v41;
      v60[4] = v39;
      a3(v60, v36, v38);
      v38 += 3;
      v36 += 40;
      v24 = v40;
      if (v50)
      {
LABEL_27:
        v42 = a2[4];
        v43 = v49;
        goto LABEL_32;
      }
    }

    v44 = v49;
    v45 = a2;
    sub_1AF5BA748(v8[29], v8[30]);
    goto LABEL_31;
  }

  v18 = v54;
  v19 = v56;
  v17[1] = v55;
  v17[2] = v19;
  *v17 = v18;
  v20 = v16 - 1;
  if (v20)
  {
    v21 = v17 + 3;
    do
    {
      sub_1AF5DDE8C(&v54, v53);
      v22 = v54;
      v23 = v56;
      v21[1] = v55;
      v21[2] = v23;
      *v21 = v22;
      v21 += 3;
      --v20;
    }

    while (v20);
  }

  v24 = 0;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_15:
  v25 = v49;
  while (v7 != v24)
  {
    v26 = v6[v24];
    v27 = v24 + 1;
    v28 = v24 + a1[3];
    v59[0] = *a1;
    v59[1] = v8;
    v59[2] = v9;
    v59[3] = v28;
    v59[4] = v26;
    a3(v59, v10, v25);
    v10 += 40;
    v25 += 3;
    v24 = v27;
    if (v50)
    {
      goto LABEL_27;
    }
  }

  v44 = v49;
  v45 = a2;
  sub_1AF5BA2B4(v6, v47, v7);
LABEL_31:
  v42 = v45[4];
  v43 = v44;
LABEL_32:
  ecs_stack_allocator_deallocate(v42, v43, v48);
}

uint64_t sub_1AF5D9D68(uint64_t *a1, void *a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t a4)
{
  v71[7] = a4;
  v66 = a3;
  v6 = type metadata accessor for SceneKitRenderer(0);
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[11];
  v10 = a1[12];
  v12 = a1[13];
  v13 = a1[1];
  v14 = a1[2];

  v62 = v10;
  v65 = v14;
  v15 = sub_1AF64B110(&type metadata for SceneKitAssetInstance, &off_1F2546F58, v11, v10, v12, v14);
  v16 = v64;
  sub_1AF649C6C(*(v13 + 40), v6, &v67);
  if (v67 == 1)
  {
    a2[9] = v6;
    a2[10] = &off_1F2547010;
    v17 = sub_1AF705CF4(v13, a1);
    if (v11)
    {
      if (v12)
      {
        v18 = a1[3];
        v19 = *a1;
        v20 = v63[9];
        do
        {
          v21 = *v11++;
          v68[0] = v19;
          v68[1] = v13;
          v68[2] = v65;
          v68[3] = v18;
          v68[4] = v21;
          v66(v68, v15, v17);
          if (v16)
          {
            break;
          }

          v17 += v20;
          v15 += 12;
          ++v18;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      v39 = a1[3];
      v40 = a1[6];
      v41 = a1[7];
      v42 = v15 + 12 * v40;
      v43 = v63;
      do
      {
        if (v41 == v40)
        {
          break;
        }

        v44 = v40 + 1;
        v69[0] = *a1;
        v69[1] = v13;
        v69[2] = v65;
        v69[3] = v39;
        v69[4] = v40;
        v66(v69, v42, v17 + v43[9] * v40);
        ++v39;
        v42 += 12;
        v40 = v44;
      }

      while (!v16);
    }
  }

  else
  {
    v60 = v16;
    v22 = v12;
    if (!v11)
    {
      v22 = a1[7] - a1[6];
    }

    *v9 = 0;
    *(v9 + 1) = 0;
    v23 = *(v6 + 24);
    v24 = v22;
    v25 = sub_1AFDFC128();
    (*(*(v25 - 8) + 56))(&v9[v23], 1, 1, v25);
    v59 = a2;
    v26 = a2[4];
    v27 = v63[9];
    v28 = *(v63 + 80) + 1;
    v58 = v27 * v24;
    v63 = ecs_stack_allocator_allocate(v26, v27 * v24, v28);
    v61 = v24;
    if (v24)
    {
      v29 = v63;
      v30 = v61;
      do
      {
        sub_1AF5DDE28(v9, v29);
        v29 = (v29 + v27);
        --v30;
      }

      while (v30);
    }

    sub_1AF5DD2F4(v9, type metadata accessor for SceneKitRenderer);
    if (v11)
    {
      v31 = 0;
      v32 = v63;
      v33 = v60;
      while (v12 != v31)
      {
        v34 = v11[v31];
        v35 = v31 + 1;
        v36 = v31 + a1[3];
        v70[0] = *a1;
        v70[1] = v13;
        v70[2] = v65;
        v70[3] = v36;
        v70[4] = v34;
        v66(v70, v15, v32);
        v15 += 12;
        v32 = (v32 + v27);
        v31 = v35;
        if (v33)
        {
          v37 = v59[4];
          v38 = v63;
          goto LABEL_29;
        }
      }

      v54 = v63;
      v55 = v59;
      sub_1AF5BABD0(v11, v62, v12, v63, v61, v59);
    }

    else
    {
      v64 = v13;
      v45 = 0;
      v46 = a1[6];
      v47 = v15 + 12 * v46;
      v48 = v46 - a1[7];
      v49 = v63;
      v50 = v60;
      while (v48 + v45)
      {
        v51 = v46 + v45;
        v52 = v45 + 1;
        v53 = v45 + a1[3];
        v71[0] = *a1;
        v71[1] = v64;
        v71[2] = v65;
        v71[3] = v53;
        v71[4] = v51;
        v66(v71, v47, v49);
        v49 = (v49 + v27);
        v47 += 12;
        v45 = v52;
        if (v50)
        {
          ecs_stack_allocator_deallocate(v59[4], v63, v58);
        }
      }

      v54 = v63;
      v55 = v59;
      sub_1AF5BB0FC(*(v64 + 232), *(v64 + 240), v63, v61, v59);
    }

    v37 = *(v55 + 32);
    v38 = v54;
LABEL_29:
    ecs_stack_allocator_deallocate(v37, v38, v58);
  }
}

uint64_t sub_1AF5DA2A0(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v56 = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];

  v9 = sub_1AF64B110(&type metadata for PointCacheGenerator, &off_1F2567FB0, v5, v4, v6, v8);
  sub_1AF649C6C(*(v7 + 40), &type metadata for PointCacheRuntime, &v51);
  v46 = v48;
  v50 = v7;
  if (v51 == 1)
  {
    a2[9] = &type metadata for PointCacheRuntime;
    a2[10] = &off_1F2568CD0;
    v10 = v8;
    v11 = sub_1AF64B110(&type metadata for PointCacheRuntime, &off_1F2568CD0, v5, v4, v6, v8);
    v12 = v11;
    if (v5)
    {
      if (v6)
      {
        v13 = a1[3];
        v14 = *a1;
        do
        {
          v15 = *v5++;
          v52[0] = v14;
          v52[1] = v7;
          v52[2] = v10;
          v52[3] = v13;
          v52[4] = v15;
          v56(v52, v9, v12);
          if (v48)
          {
            break;
          }

          v12 += 32;
          v9 += 32;
          ++v13;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v22 = a1[3];
      v23 = a1[6];
      v24 = a1[7];
      v25 = v9 + 32 * v23;
      v26 = v11 + 32 * v23;
      do
      {
        if (v24 == v23)
        {
          break;
        }

        v27 = v23 + 1;
        v53[0] = *a1;
        v53[1] = v7;
        v53[2] = v10;
        v53[3] = v22;
        v53[4] = v23;
        v56(v53, v25, v26);
        ++v22;
        v25 += 32;
        v26 += 32;
        v23 = v27;
      }

      while (!v48);
    }
  }

  else
  {
    v42 = v4;
    v49 = v8;
    v16 = v6;
    if (!v5)
    {
      v16 = a1[7] - a1[6];
    }

    v17 = sub_1AF42C7DC(MEMORY[0x1E69E7CC0]);
    v18 = a2;
    v44 = 32 * v16;
    v19 = ecs_stack_allocator_allocate(a2[4], 32 * v16, 8);
    v45 = v19;
    v43 = v16;
    if (v16)
    {
      *v19 = v17;
      v19[1] = 0x636143746E696F50;
      v19[2] = 0xEA00000000006568;
      v19[3] = 0;
      v20 = v16 - 1;
      if (v20)
      {
        v21 = v19 + 7;
        do
        {
          *(v21 - 3) = v17;
          *(v21 - 2) = 0x636143746E696F50;
          *(v21 - 1) = 0xEA00000000006568;
          *v21 = 0;

          v21 += 4;
          --v20;
        }

        while (v20);
      }
    }

    else
    {
    }

    v28 = 0;
    if (v5)
    {
      v29 = v45;
      while (v6 != v28)
      {
        v30 = v5[v28];
        v31 = v28 + 1;
        v32 = v28 + a1[3];
        v54[0] = *a1;
        v54[1] = v50;
        v54[2] = v49;
        v54[3] = v32;
        v54[4] = v30;
        v56(v54, v9, v29);
        v9 += 32;
        v29 += 32;
        v28 = v31;
        if (v46)
        {
          v18 = a2;
          goto LABEL_28;
        }
      }

      v40 = v45;
      v18 = a2;
      sub_1AF5BEFD0(v5, v42, v6, v45, v43, a2);
    }

    else
    {
      v33 = a1[6];
      v34 = v9 + 32 * v33;
      v35 = v33 - a1[7];
      v36 = v45;
      while (v35 + v28)
      {
        v37 = v33 + v28;
        v38 = v28 + 1;
        v39 = v28 + a1[3];
        v55[0] = *a1;
        v55[1] = v50;
        v55[2] = v8;
        v55[3] = v39;
        v55[4] = v37;
        v56(v55, v34, v36);
        v36 += 32;
        v34 += 32;
        v28 = v38;
        if (v46)
        {
LABEL_28:
          ecs_stack_allocator_deallocate(v18[4], v45, v44);
        }
      }

      v40 = v45;
      sub_1AF5BF4BC(*(v50 + 232), *(v50 + 240), v45, v43, a2);
    }

    ecs_stack_allocator_deallocate(v18[4], v40, v44);
  }
}

uint64_t sub_1AF5DA684(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v56 = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];

  v9 = sub_1AF64B110(&type metadata for PointCacheFileAsset, &off_1F2568060, v5, v4, v6, v8);
  sub_1AF649C6C(*(v7 + 40), &type metadata for PointCacheRuntime, &v51);
  v46 = v48;
  v50 = v7;
  if (v51 == 1)
  {
    a2[9] = &type metadata for PointCacheRuntime;
    a2[10] = &off_1F2568CD0;
    v10 = v8;
    v11 = sub_1AF64B110(&type metadata for PointCacheRuntime, &off_1F2568CD0, v5, v4, v6, v8);
    v12 = v11;
    if (v5)
    {
      if (v6)
      {
        v13 = a1[3];
        v14 = *a1;
        do
        {
          v15 = *v5++;
          v52[0] = v14;
          v52[1] = v7;
          v52[2] = v10;
          v52[3] = v13;
          v52[4] = v15;
          v56(v52, v9, v12);
          if (v48)
          {
            break;
          }

          v12 += 32;
          v9 += 48;
          ++v13;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v22 = a1[3];
      v23 = a1[6];
      v24 = a1[7];
      v25 = v9 + 48 * v23;
      v26 = v11 + 32 * v23;
      do
      {
        if (v24 == v23)
        {
          break;
        }

        v27 = v23 + 1;
        v53[0] = *a1;
        v53[1] = v7;
        v53[2] = v10;
        v53[3] = v22;
        v53[4] = v23;
        v56(v53, v25, v26);
        ++v22;
        v25 += 48;
        v26 += 32;
        v23 = v27;
      }

      while (!v48);
    }
  }

  else
  {
    v42 = v4;
    v49 = v8;
    v16 = v6;
    if (!v5)
    {
      v16 = a1[7] - a1[6];
    }

    v17 = sub_1AF42C7DC(MEMORY[0x1E69E7CC0]);
    v18 = a2;
    v44 = 32 * v16;
    v19 = ecs_stack_allocator_allocate(a2[4], 32 * v16, 8);
    v45 = v19;
    v43 = v16;
    if (v16)
    {
      *v19 = v17;
      v19[1] = 0x636143746E696F50;
      v19[2] = 0xEA00000000006568;
      v19[3] = 0;
      v20 = v16 - 1;
      if (v20)
      {
        v21 = v19 + 7;
        do
        {
          *(v21 - 3) = v17;
          *(v21 - 2) = 0x636143746E696F50;
          *(v21 - 1) = 0xEA00000000006568;
          *v21 = 0;

          v21 += 4;
          --v20;
        }

        while (v20);
      }
    }

    else
    {
    }

    v28 = 0;
    if (v5)
    {
      v29 = v45;
      while (v6 != v28)
      {
        v30 = v5[v28];
        v31 = v28 + 1;
        v32 = v28 + a1[3];
        v54[0] = *a1;
        v54[1] = v50;
        v54[2] = v49;
        v54[3] = v32;
        v54[4] = v30;
        v56(v54, v9, v29);
        v9 += 48;
        v29 += 32;
        v28 = v31;
        if (v46)
        {
          v18 = a2;
          goto LABEL_28;
        }
      }

      v40 = v45;
      v18 = a2;
      sub_1AF5BEFD0(v5, v42, v6, v45, v43, a2);
    }

    else
    {
      v33 = a1[6];
      v34 = v9 + 48 * v33;
      v35 = v33 - a1[7];
      v36 = v45;
      while (v35 + v28)
      {
        v37 = v33 + v28;
        v38 = v28 + 1;
        v39 = v28 + a1[3];
        v55[0] = *a1;
        v55[1] = v50;
        v55[2] = v8;
        v55[3] = v39;
        v55[4] = v37;
        v56(v55, v34, v36);
        v36 += 32;
        v34 += 48;
        v28 = v38;
        if (v46)
        {
LABEL_28:
          ecs_stack_allocator_deallocate(v18[4], v45, v44);
        }
      }

      v40 = v45;
      sub_1AF5BF4BC(*(v50 + 232), *(v50 + 240), v45, v43, a2);
    }

    ecs_stack_allocator_deallocate(v18[4], v40, v44);
  }
}

uint64_t sub_1AF5DAA6C(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t a4)
{
  v53[7] = a4;
  v6 = a1[11];
  v5 = a1[12];
  v7 = a1[13];
  v8 = a1[1];
  v9 = a1[2];

  v10 = sub_1AF64B110(&type metadata for TexturePlaceholder, &off_1F2546C68, v6, v5, v7, v9);
  v11 = v45;
  sub_1AF649C6C(v8[5], &type metadata for TextureGPURuntime, &v49);
  if (v49 == 1)
  {
    a2[9] = &type metadata for TextureGPURuntime;
    a2[10] = &off_1F2544388;
    v12 = sub_1AF64B110(&type metadata for TextureGPURuntime, &off_1F2544388, v6, v5, v7, v9);
    v13 = v12;
    if (v6)
    {
      if (v7)
      {
        v14 = a1[3];
        v15 = *a1;
        do
        {
          v16 = *v6++;
          v50[0] = v15;
          v50[1] = v8;
          v50[2] = v9;
          v50[3] = v14;
          v50[4] = v16;
          a3(v50, v10, v13);
          if (v45)
          {
            break;
          }

          v13 += 16;
          v10 += 16;
          ++v14;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v26 = a1[3];
      v27 = a1[6];
      v28 = a1[7];
      v29 = v10 + 16 * v27;
      v30 = v12 + 16 * v27;
      do
      {
        if (v28 == v27)
        {
          break;
        }

        v31 = v27 + 1;
        v51[0] = *a1;
        v51[1] = v8;
        v51[2] = v9;
        v51[3] = v26;
        v51[4] = v27;
        a3(v51, v29, v30);
        ++v26;
        v29 += 16;
        v30 += 16;
        v27 = v31;
      }

      while (!v45);
    }
  }

  else
  {
    v46 = v5;
    v17 = v7;
    if (!v6)
    {
      v17 = a1[7] - a1[6];
    }

    v18 = v17;
    v19 = 16 * v17;
    v20 = ecs_stack_allocator_allocate(a2[4], 16 * v17, 8);
    v43 = v20;
    v41 = v18;
    if (v18)
    {
      bzero(v20, v19);
      v20 = v43;
    }

    v42 = v19;
    v21 = 0;
    if (v6)
    {
      v22 = v20;
      while (v7 != v21)
      {
        v23 = v6[v21];
        v24 = v21 + 1;
        v25 = v21 + a1[3];
        v52[0] = *a1;
        v52[1] = v8;
        v52[2] = v9;
        v52[3] = v25;
        v52[4] = v23;
        a3(v52, v10, v22);
        v10 += 16;
        v22 += 2;
        v21 = v24;
        if (v11)
        {
          goto LABEL_24;
        }
      }

      v38 = a2;
      v39 = v43;
      sub_1AF5B80C0(v6, v46, v7, v43, v41, a2);
    }

    else
    {
      v32 = a1[6];
      v33 = v10 + 16 * v32;
      v47 = v32 - a1[7];
      v34 = v20;
      while (v47 + v21)
      {
        v35 = v32 + v21;
        v36 = v21 + 1;
        v37 = v21 + a1[3];
        v53[0] = *a1;
        v53[1] = v8;
        v53[2] = v9;
        v53[3] = v37;
        v53[4] = v35;
        a3(v53, v33, v34);
        v34 += 2;
        v33 += 16;
        v21 = v36;
        if (v11)
        {
LABEL_24:
          ecs_stack_allocator_deallocate(a2[4], v43, v42);
        }
      }

      v39 = v43;
      v38 = a2;
      sub_1AF5B85AC(v8[29], v8[30], v43, v41, a2);
    }

    ecs_stack_allocator_deallocate(v38[4], v39, v42);
  }
}

uint64_t sub_1AF5DADE8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AFDFEE28() & 1;
  }
}

uint64_t sub_1AF5DAE40()
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

uint64_t sub_1AF5DAE8C(void *a1)
{
  sub_1AF5DE3A8(0, &qword_1EB63C160, sub_1AF5DDF3C, &type metadata for MeshImportOptions.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF5DDF3C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v10 = a1[3];
    v11 = a1[4];
    sub_1AF441150(a1, v10);
    if (sub_1AF69504C(1014, v10, v11))
    {
      v18 = 1;
      if (sub_1AFDFE6A8())
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      v17 = 2;
      v12 = sub_1AFDFE6A8();
      (*(v5 + 8))(v8, v4);
      if (v12 == 2 || (v12 & 1) != 0)
      {
        v9 |= 1uLL;
      }
    }

    else
    {
      v20 = 0;
      sub_1AF5DDF90();
      sub_1AFDFE6E8();
      v9 = v15;
      v14 = v16;
      v19 = 3;
      sub_1AF5DDFE4();
      sub_1AFDFE6E8();
      if (v14)
      {
        v9 = 0;
      }

      (*(v5 + 8))(v8, v4);
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

double sub_1AF5DB180@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v37 = a2;
  v3 = sub_1AFDFC128();
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5DE3A8(0, &qword_1EB63C1C8, sub_1AF5DE354, &type metadata for SceneFileAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v36 - v10;
  v12 = sub_1AFDFC318();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC308();
  v40 = sub_1AFDFC2B8();
  v42 = v17;
  (*(v13 + 8))(v16, v12);
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DE354();
  v18 = v41;
  sub_1AFDFF3B8();
  if (v18)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v47 = 0;
    v48 = 0xE000000000000000;
    v49 = 0;
    v50 = 0xE000000000000000;
    v51 = 0;
    v52 = 0;
    v53 = v40;
    v54 = v42;
    sub_1AF5A3564(&v47);
  }

  else
  {
    v20 = v38;
    v41 = v8;
    v21 = a1[3];
    v22 = a1[4];
    sub_1AF441150(a1, v21);
    if (sub_1AF69504C(2031, v21, v22))
    {
      LOBYTE(v47) = 0;
      sub_1AF5DE224();
      v23 = v6;
      sub_1AFDFE768();
      v24 = sub_1AFDFC028();
      v26 = v25;
      (*(v20 + 8))(v23, v3);

      v27 = 0;
      v28 = 0;
      v29 = v26;
      v38 = v24;
    }

    else
    {
      LOBYTE(v43) = 0;
      sub_1AF5DE134();
      sub_1AFDFE768();
      v24 = v47;
      v29 = v48;
      v26 = v50;
      v38 = v49;
      v28 = v51;
      v27 = v52;
    }

    v55 = 1;
    v36 = sub_1AFDFE708();
    v31 = v30;
    (*(v39 + 8))(v11, v41);

    *&v43 = v24;
    *(&v43 + 1) = v29;
    *&v44 = v38;
    *(&v44 + 1) = v26;
    *&v45 = v28;
    *(&v45 + 1) = v27;
    v32 = v36;
    *&v46 = v36;
    *(&v46 + 1) = v31;
    sub_1AF4402F0(&v43, &v47);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v47 = v24;
    v48 = v29;
    v49 = v38;
    v50 = v26;
    v51 = v28;
    v52 = v27;
    v53 = v32;
    v54 = v31;
    sub_1AF5A3564(&v47);
    v33 = v44;
    v34 = v37;
    *v37 = v43;
    v34[1] = v33;
    result = *&v45;
    v35 = v46;
    v34[2] = v45;
    v34[3] = v35;
  }

  return result;
}

uint64_t sub_1AF5DB64C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = sub_1AFDFC128();
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5DE3A8(0, &unk_1EB630B30, sub_1AF5DE0E0, &type metadata for MeshFileAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v29 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DE0E0();
  v12 = v34;
  sub_1AFDFF3B8();
  if (v12)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    v34 = v8;
    v13 = a1[3];
    v14 = a1[4];
    sub_1AF441150(a1, v13);
    if (sub_1AF69504C(2031, v13, v14))
    {
      LOBYTE(v35) = 0;
      sub_1AF5DE224();
      v15 = v6;
      v16 = v11;
      sub_1AFDFE768();
      v18 = sub_1AFDFC028();
      v20 = v19;
      v21 = v18;
      (*(v31 + 8))(v15, v3);

      v22 = 0;
      v30 = v21;
      v31 = 0;
      v23 = v20;
      v24 = v16;
    }

    else
    {
      v41 = 0;
      sub_1AF5DE134();
      v24 = v11;
      sub_1AFDFE768();
      v21 = v35;
      v23 = v36;
      v20 = v38;
      v22 = v39;
      v30 = v37;
      v31 = v40;
    }

    LOBYTE(v35) = 1;
    v25 = v34;
    if (sub_1AFDFE808())
    {
      v29 = v21;
      sub_1AF5822B0();
      v41 = 1;
      sub_1AF5DE188();
      sub_1AFDFE768();
      (*(v33 + 8))(v24, v25);
      v26 = v35;
      v21 = v29;
    }

    else
    {
      (*(v33 + 8))(v24, v25);
      v26 = 0;
    }

    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v27 = v32;
    *v32 = v21;
    v27[1] = v23;
    v28 = v31;
    v27[2] = v30;
    v27[3] = v20;
    v27[4] = v22;
    v27[5] = v28;
    v27[6] = v26;
  }

  return result;
}

uint64_t sub_1AF5DBA4C(void *a1)
{
  sub_1AF5DE3A8(0, &qword_1EB63C190, sub_1AF5DE08C, &type metadata for MeshReferenceAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF5DE08C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1AFDFE708();
    v12 = 1;
    sub_1AFDFE708();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AF5DBC48(uint64_t a1)
{
  sub_1AF0D4E74();
  v223 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v222 = &v206[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v221 = sub_1AFDFC298();
  v6 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221, v7);
  v220 = &v206[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1AFDFC128();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v231 = &v206[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v232 = &v206[-v15];
  MEMORY[0x1EEE9AC00](v16, v17);
  v242 = &v206[-v18];
  v19 = *(a1 + 184);

  v20 = sub_1AF6D36F4(&type metadata for SceneAssetRegistryInstance, &off_1F2536D38, v19);
  v214 = 0;

  v243 = v20;
  if (!v20)
  {
    return result;
  }

  v22 = *(v1 + 32);
  v257[0] = *(v1 + 16);
  v257[1] = v22;
  v258 = *(v1 + 48);
  v215 = a1;
  sub_1AF6B06C0(a1, v257, 0x200000000, v248);
  v210 = *&v248[0];
  if (!*&v248[0])
  {
  }

  v209 = *(&v248[2] + 1);
  v23 = *(&v249 + 1);
  v213 = *(&v250 + 1);
  v252 = *(v248 + 8);
  v253 = *(&v248[1] + 8);
  if (v251 <= 0 || !*(&v249 + 1))
  {

    v204 = MEMORY[0x1E69E6720];
    return sub_1AF5DD530(v248, &qword_1ED725EA0, &type metadata for QueryResult, v204, sub_1AF5DE4E0);
  }

  v212 = v213[4];
  v24 = *(v250 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v224 = (v215 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v247[2] = v248[2];
  v247[3] = v249;
  v247[4] = v250;
  v247[5] = v251;
  v247[0] = v248[0];
  v247[1] = v248[1];
  sub_1AF5DD298(v247, v245);
  v25 = 0;
  v218 = "rl of an asset (";
  v219 = "_TtC3VFX19MeshReferenceSystem";
  v217 = (v6 + 32);
  v230 = (v10 + 16);
  v235 = v10 + 8;
  v216 = xmmword_1AFE431C0;
  v240 = v9;
  v26 = v231;
  v27 = v242;
  v208 = v23;
  v207 = v24;
  while (1)
  {
    v211 = v25;
    v28 = (v209 + 48 * v25);
    v29 = *v28;
    v30 = *(v28 + 2);
    v31 = *(v28 + 3);
    v227 = v28[1];
    v228 = v30;
    v32 = *(v28 + 4);
    v33 = *(v28 + 5);
    if (v24)
    {
      v34 = *(v33 + 376);

      os_unfair_lock_lock(v34);
      os_unfair_lock_lock(*(v33 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v212);
    v35 = v213;
    v36 = *(v213 + 4);
    v245[0] = *(v213 + 3);
    v245[1] = v36;
    v246 = v213[10];
    v37 = *(*(*(*(v33 + 40) + 16) + 32) + 16) + 1;
    v35[6] = ecs_stack_allocator_allocate(v213[4], 48 * v37, 8);
    v35[7] = v37;
    v35[9] = 0;
    v35[10] = 0;
    v35[8] = 0;
    v38 = v228;
    v39 = sub_1AF64B110(&type metadata for SceneFileAsset, &off_1F252BBF8, v228, v31, v32, v35);
    v233 = v235 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v234 = v39;
    v236 = v33;
    if (v38)
    {
      if (v32)
      {
        v40 = 0;
        v227 = v32;
        while (1)
        {
          v47 = v228[v40];

          if (*(v33 + 184))
          {
            goto LABEL_123;
          }

          v49 = *(*(v33 + 168) + 4 * v47);
          v50 = *(*(v48 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v49 + 8);

          if (v49 == -1 && v50 == 0)
          {
            goto LABEL_32;
          }

          v52 = 0;
          v53 = 0;
          if ((v49 & 0x80000000) == 0 && v224[1] > v49)
          {
            break;
          }

          v237 = 0;
LABEL_35:
          LODWORD(v238) = v52;
          v239 = v53;
          v63 = (v234 + (v40 << 6));
          v64 = v63[2];
          v65 = v63[3];
          v66 = v63[4];
          v241 = v40;
          if (v66)
          {
            v67 = v9;
            v68 = v63[5];
            ObjectType = swift_getObjectType();
            (*(v68 + 8))(v64, v65, ObjectType, v68);
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v244[0] = 0;
            v244[1] = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, v219 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v64, v65);
            MEMORY[0x1B2718AE0](0xD000000000000016, v218 | 0x8000000000000000);
            v71 = v244[0];
            v70 = v244[1];
            v72 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v229 = v65;
            v226 = v64;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v73 = swift_allocObject();
            *(v73 + 16) = v216;
            *(v73 + 56) = MEMORY[0x1E69E6158];
            *(v73 + 64) = sub_1AF0D544C();
            *(v73 + 32) = v71;
            *(v73 + 40) = v70;

            sub_1AFDFC4C8();

            v74 = v220;
            sub_1AFDFC288();
            v225 = v223[12];
            v75 = v223[16];
            v76 = v70;
            v77 = v71;
            v78 = v222;
            v79 = &v222[v223[20]];
            (*v217)(v222, v74, v221);
            *(v78 + v225) = v72;
            *(v78 + v75) = 0;
            *v79 = v77;
            v79[1] = v76;
            sub_1AFDFC608();

            sub_1AF5DD2F4(v78, sub_1AF0D4E74);
            v27 = v242;
            sub_1AFDFC018();
            v67 = v240;
          }

          v80 = v63[6];
          v81 = v63[7];
          if (*(*(v243 + 16) + 16))
          {

            sub_1AF419914(v80, v81);
            v83 = v82;

            if (v83)
            {
              v84 = *v235;
              v26 = v231;
              goto LABEL_15;
            }
          }

          v229 = v80;
          v85 = *v230;
          v86 = v232;
          (*v230)(v232, v27, v67);
          type metadata accessor for SceneAssetRegistryEntry();
          v87 = swift_allocObject();
          swift_weakInit();
          v88 = (v87 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry__rootNode);
          *v88 = 0;
          v88[1] = 0;
          *(v87 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_loaded) = 0;
          v89 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_idToEntity;

          v90 = MEMORY[0x1E69E7CC0];
          *(v87 + v89) = sub_1AF43B44C(MEMORY[0x1E69E7CC0]);
          v91 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_entityToId;
          *(v87 + v91) = sub_1AF43B558(v90);
          *(v87 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_counter) = 0;
          v92 = v243;
          swift_weakAssign();
          v226 = v85;
          (v85)(v87 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_asset, v86, v67);
          v93 = v229;
          v94 = v87 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_options;
          *v94 = v239;
          *(v94 + 8) = v238;
          *(v94 + 9) = v237;
          v95 = (v87 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_sceneIdentifier);
          *v95 = v93;
          v95[1] = v81;
          strcpy(v244, "registry for ");
          HIWORD(v244[1]) = -4864;
          v96 = sub_1AFDFC028();
          MEMORY[0x1B2718AE0](v96);

          v97 = v244[0];
          v98 = v244[1];
          type metadata accessor for EntityManager();
          swift_allocObject();
          v99 = sub_1AF66F180(v97, v98, 1, 0);
          v84 = *v235;
          (*v235)(v86, v67);
          *(v87 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry__entityManager) = v99;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v244[0] = *(v92 + 16);
          v101 = v244[0];
          *(v92 + 16) = 0x8000000000000000;
          v103 = sub_1AF419914(v93, v81);
          v104 = v102;
          v105 = *(v101 + 16) + ((v102 & 1) == 0);
          if (*(v101 + 24) >= v105)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v108 = v244[0];
              if ((v102 & 1) == 0)
              {
                goto LABEL_50;
              }
            }

            else
            {
              sub_1AF848168();
              v108 = v244[0];
              if ((v104 & 1) == 0)
              {
                goto LABEL_50;
              }
            }
          }

          else
          {
            sub_1AF8331A4(v105, isUniquelyReferenced_nonNull_native);
            v106 = sub_1AF419914(v93, v81);
            if ((v104 & 1) != (v107 & 1))
            {
              goto LABEL_124;
            }

            v103 = v106;
            v108 = v244[0];
            if ((v104 & 1) == 0)
            {
LABEL_50:
              sub_1AF85B958(v103, v93, v81, v87, v108);
              goto LABEL_54;
            }
          }

          *(*(v108 + 56) + 8 * v103) = v87;

LABEL_54:
          v109 = v243;
          *(v243 + 16) = v108;

          v110 = swift_isUniquelyReferenced_nonNull_native();
          v244[0] = *(v109 + 24);
          v111 = v244[0];
          *(v109 + 24) = 0x8000000000000000;
          v112 = v242;
          v113 = sub_1AF41A390(v242);
          v115 = v114;
          v116 = *(v111 + 16) + ((v114 & 1) == 0);
          v67 = v240;
          v26 = v231;
          if (*(v111 + 24) < v116)
          {
            sub_1AF832DE0(v116, v110);
            v113 = sub_1AF41A390(v112);
            if ((v115 & 1) != (v117 & 1))
            {
              goto LABEL_125;
            }

LABEL_58:
            v118 = v244[0];
            if (v115)
            {
              goto LABEL_59;
            }

            goto LABEL_13;
          }

          if (v110)
          {
            goto LABEL_58;
          }

          v120 = v113;
          sub_1AF847EAC();
          v113 = v120;
          v118 = v244[0];
          if (v115)
          {
LABEL_59:
            v119 = (v118[7] + 16 * v113);
            *v119 = v93;
            v119[1] = v81;

            v27 = v242;
            v45 = v243;
            goto LABEL_14;
          }

LABEL_13:
          v41 = v113;
          v42 = v232;
          v43 = v242;
          (v226)(v232, v242, v67);
          v44 = v42;
          v27 = v43;
          sub_1AF84364C(v41, v44, v93, v81, v118);
          v45 = v243;
LABEL_14:
          *(v45 + 24) = v118;
LABEL_15:
          v33 = v236;
          v46 = v241;
          v84(v27, v67);
          v40 = v46 + 1;
          v9 = v67;
          if (v40 == v227)
          {
            goto LABEL_65;
          }
        }

        v54 = (*v224 + 12 * v49);
        if (v50 == -1 || v54[2] == v50)
        {
          v56 = *(v54 + 2);
          v57 = *(*(v215 + 144) + 8 * *v54 + 32);
          v58 = *(v57 + 48);
          v59 = (v58 + 32);
          v53 = *(v58 + 16) + 1;
          while (--v53)
          {
            v60 = v59 + 5;
            v61 = *v59;
            v59 += 5;
            if (v61 == &type metadata for MeshImportOptions)
            {
              v62 = &(*(v60 - 2))[v56] + *(v57 + 128);
              v53 = *v62;
              v52 = *(v62 + 8);
              v237 = *(v62 + 9);
              goto LABEL_35;
            }
          }
        }

        else
        {
LABEL_32:
          v53 = 0;
        }

        v52 = 0;
        v237 = 0;
        goto LABEL_35;
      }

      goto LABEL_65;
    }

    if (v29 != v227)
    {
      break;
    }

LABEL_65:
    v254 = v210;
    v255 = v252;
    v256 = v253;
    v121 = v214;
    sub_1AF630994(v213, &v254, v245);
    v214 = v121;
    sub_1AF62D29C(v33);
    ecs_stack_allocator_pop_snapshot(v212);
    v24 = v207;
    if (v207)
    {
      os_unfair_lock_unlock(*(v33 + 344));
      os_unfair_lock_unlock(*(v33 + 376));
    }

    v25 = v211 + 1;
    if (v211 + 1 == v208)
    {

      v205 = MEMORY[0x1E69E6720];
      sub_1AF5DD530(v248, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
      v204 = v205;
      return sub_1AF5DD530(v248, &qword_1ED725EA0, &type metadata for QueryResult, v204, sub_1AF5DE4E0);
    }
  }

  while (1)
  {

    if (*(v33 + 184))
    {
      break;
    }

    v132 = *(*(v33 + 168) + 4 * v29);
    v133 = *(*(v131 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v132 + 8);

    if (v132 == -1 && v133 == 0)
    {
      goto LABEL_85;
    }

    if ((v132 & 0x80000000) == 0 && v224[1] > v132)
    {
      v135 = (*v224 + 12 * v132);
      if (v133 == -1 || v135[2] == v133)
      {
        v137 = *(v135 + 2);
        v138 = *(*(v215 + 144) + 8 * *v135 + 32);
        v139 = *(v138 + 48);
        v140 = (v139 + 32);
        v141 = *(v139 + 16) + 1;
        while (--v141)
        {
          v142 = v140 + 5;
          v143 = *v140;
          v140 += 5;
          if (v143 == &type metadata for MeshImportOptions)
          {
            v144 = &(*(v142 - 2))[v137] + *(v138 + 128);
            v238 = *v144;
            v237 = *(v144 + 8);
            LODWORD(v229) = *(v144 + 9);
            goto LABEL_87;
          }
        }
      }

LABEL_85:
      v238 = 0;
      v237 = 0;
      LODWORD(v229) = 0;
      goto LABEL_87;
    }

    v238 = 0;
    v237 = 0;
    LODWORD(v229) = 0;
LABEL_87:
    v239 = v29;
    v145 = (v234 + (v29 << 6));
    v146 = v145[2];
    v147 = v145[3];
    if (v145[4])
    {
      v148 = v145[5];
      v149 = swift_getObjectType();
      (*(v148 + 8))(v146, v147, v149, v148);
      v150 = v243;
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v244[0] = 0;
      v244[1] = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000020, v219 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](v146, v147);
      MEMORY[0x1B2718AE0](0xD000000000000016, v218 | 0x8000000000000000);
      v152 = v244[0];
      v151 = v244[1];
      v153 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v228 = v147;
      v241 = v146;
      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v154 = swift_allocObject();
      *(v154 + 16) = v216;
      *(v154 + 56) = MEMORY[0x1E69E6158];
      *(v154 + 64) = sub_1AF0D544C();
      *(v154 + 32) = v152;
      *(v154 + 40) = v151;

      sub_1AFDFC4C8();

      v226 = v152;
      v155 = v220;
      sub_1AFDFC288();
      v156 = v223[12];
      v157 = v223[16];
      v158 = v151;
      v159 = v153;
      v160 = v222;
      v161 = &v222[v223[20]];
      (*v217)(v222, v155, v221);
      *(v160 + v156) = v159;
      *(v160 + v157) = 0;
      *v161 = v226;
      v161[1] = v158;
      sub_1AFDFC608();

      sub_1AF5DD2F4(v160, sub_1AF0D4E74);
      v26 = v231;
      sub_1AFDFC018();
      v150 = v243;
      v33 = v236;
    }

    v163 = v145[6];
    v162 = v145[7];
    if (*(*(v150 + 16) + 16))
    {

      sub_1AF419914(v163, v162);
      v165 = v164;

      if (v165)
      {
        v130 = *v235;
LABEL_113:
        v27 = v242;
        v9 = v240;
        goto LABEL_68;
      }
    }

    v166 = *v230;
    v167 = v232;
    v241 = v163;
    v168 = v240;
    (v166)(v232, v26, v240);
    type metadata accessor for SceneAssetRegistryEntry();
    v169 = swift_allocObject();
    swift_weakInit();
    v170 = (v169 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry__rootNode);
    *v170 = 0;
    v170[1] = 0;
    *(v169 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_loaded) = 0;
    v171 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_idToEntity;

    v172 = MEMORY[0x1E69E7CC0];
    *(v169 + v171) = sub_1AF43B44C(MEMORY[0x1E69E7CC0]);
    v173 = OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_entityToId;
    *(v169 + v173) = sub_1AF43B558(v172);
    *(v169 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_counter) = 0;
    v174 = v243;
    swift_weakAssign();
    v228 = v166;
    (v166)(v169 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_asset, v167, v168);
    v175 = v169 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_options;
    *v175 = v238;
    *(v175 + 8) = v237;
    *(v175 + 9) = v229;
    v176 = (v169 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry_sceneIdentifier);
    *v176 = v241;
    v176[1] = v162;
    strcpy(v244, "registry for ");
    HIWORD(v244[1]) = -4864;
    v177 = sub_1AFDFC028();
    MEMORY[0x1B2718AE0](v177);

    v178 = v244[0];
    v179 = v244[1];
    type metadata accessor for EntityManager();
    swift_allocObject();
    v180 = sub_1AF66F180(v178, v179, 1, 0);
    v130 = *v235;
    v181 = v167;
    v182 = v168;
    v183 = v241;
    v184 = v174;
    (*v235)(v181, v182);
    *(v169 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry__entityManager) = v180;

    v185 = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = *(v174 + 16);
    v186 = v244[0];
    *(v174 + 16) = 0x8000000000000000;
    v187 = sub_1AF419914(v183, v162);
    v189 = v188;
    v190 = *(v186 + 16) + ((v188 & 1) == 0);
    if (*(v186 + 24) >= v190)
    {
      if ((v185 & 1) == 0)
      {
        v202 = v187;
        sub_1AF848168();
        v187 = v202;
      }
    }

    else
    {
      sub_1AF8331A4(v190, v185);
      v187 = sub_1AF419914(v183, v162);
      if ((v189 & 1) != (v191 & 1))
      {
        goto LABEL_124;
      }
    }

    v33 = v236;
    v192 = v244[0];
    if (v189)
    {
      *(*(v244[0] + 56) + 8 * v187) = v169;
    }

    else
    {
      sub_1AF85B958(v187, v183, v162, v169, v244[0]);
    }

    *(v184 + 16) = v192;

    v193 = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = *(v184 + 24);
    v194 = v244[0];
    *(v184 + 24) = 0x8000000000000000;
    v26 = v231;
    v195 = sub_1AF41A390(v231);
    v197 = v196;
    v198 = *(v194 + 16) + ((v196 & 1) == 0);
    if (*(v194 + 24) < v198)
    {
      sub_1AF832DE0(v198, v193);
      v195 = sub_1AF41A390(v26);
      if ((v197 & 1) != (v199 & 1))
      {
        goto LABEL_126;
      }

LABEL_111:
      v200 = v244[0];
      if (v197)
      {
        goto LABEL_112;
      }

      goto LABEL_67;
    }

    if (v193)
    {
      goto LABEL_111;
    }

    v203 = v195;
    sub_1AF847EAC();
    v195 = v203;
    v200 = v244[0];
    if (v197)
    {
LABEL_112:
      v201 = (v200[7] + 16 * v195);
      *v201 = v183;
      v201[1] = v162;

      *(v184 + 24) = v200;
      goto LABEL_113;
    }

LABEL_67:
    v122 = v195;
    v123 = v232;
    v124 = v26;
    v125 = v162;
    v126 = v26;
    v127 = v130;
    v128 = v183;
    v9 = v240;
    (v228)(v232, v124, v240);
    v129 = v128;
    v130 = v127;
    v26 = v126;
    sub_1AF84364C(v122, v123, v129, v125, v200);
    v27 = v242;
    *(v243 + 24) = v200;
LABEL_68:
    v29 = v239 + 1;
    v130(v26, v9);
    if (v29 == v227)
    {
      goto LABEL_65;
    }
  }

LABEL_123:
  sub_1AFDFE518();
  __break(1u);
LABEL_124:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_125:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_126:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF5DD2F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF5DD41C(uint64_t a1)
{
  sub_1AF5DD4A4(0, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF5DD4A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1AF5C5358(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF5DD530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AF5DD590(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Query1();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1AF5DD5E0(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a3)
  {
    v57 = v6;
    v58 = v7;
    v8 = result;
    v53 = a3;
    v56 = v5;
    v10 = *a2;
    v11 = a2[1];
    v13 = sub_1AF6EEA78(*a2, v11);
    if (!v13)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      sub_1AFDFE218();

      v55 = 0x80000001AFF2C6C0;
      MEMORY[0x1B2718AE0](v10, v11);
      v20 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v46 = v20;
        swift_once();
        v20 = v46;
      }

      v54 = 0;
      sub_1AF0D4F18(v20, &v54, 0xD000000000000027, 0x80000001AFF2C6C0);
    }

    v14 = v13;
    v15 = a2[2];
    v16 = a2[3];
    if (*(v8 + 32))
    {
      LOBYTE(v54) = 0;
      sub_1AF80F414(0);
    }

    v17 = sub_1AF6EFBE0(v15, v16);
    if (v18)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      sub_1AFDFE218();

      v55 = 0x80000001AFF2C6F0;
      MEMORY[0x1B2718AE0](v15, v16);
      v19 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v47 = v19;
        swift_once();
        v19 = v47;
      }

      v54 = 0;
      sub_1AF0D4F18(v19, &v54, 0xD000000000000026, 0x80000001AFF2C6F0);
    }

    v21 = v17;
    v51 = v15;
    v52 = v16;
    v22 = **(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    sub_1AF6EF324(0, 0);
    v23 = *(v14 + OBJC_IVAR____TtC3VFX23SceneAssetRegistryEntry__entityManager);
    v24 = MEMORY[0x1E69E7CC0];
    v25 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
    type metadata accessor for RemapContext();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = sub_1AF42B4D0(v24);

    v27 = sub_1AF42B590(v24);
    *(v26 + 24) = v25;
    *(v26 + 32) = v27;

    *(v26 + 16) = 0;
    sub_1AF65B02C(v21, v26);
    LOBYTE(v54) = 1;
    sub_1AF630BA4(v26, v23, 0x100000000uLL, 0, v22);
    if (*(*(v26 + 24) + 16) && (sub_1AF449D3C(v21), v28 = *(v26 + 24), *(v28 + 16)) && (v29 = sub_1AF449D3C(v21), (v30 & 1) != 0))
    {
      v31 = (*(v28 + 56) + 8 * v29);
      v33 = *v31;
      v32 = v31[1];
    }

    else
    {
      v32 = 0;
      v33 = -1;
    }

    if ((v33 != -1 || v32) && (, v34 = sub_1AF3CA3E4(v33 | (v32 << 32)), v36 = v35, , v36))
    {
      if (!v34)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v41 = sub_1AFDFDA28();
        if (qword_1ED731058 != -1)
        {
          v49 = v41;
          swift_once();
          v41 = v49;
        }

        v54 = 0;
        sub_1AF0D4F18(v41, &v54, 0xD000000000000026, 0x80000001AFF2C750);
      }

      v37 = v53;
      *v53 = v34;
      swift_retain_n();

      v37[1] = v36;
      v54 = 32;
      v55 = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v38, v39);
      v50[2] = &v54;
      sub_1AF5D90A8(sub_1AF5DDDD0, v50, v51, v52);
      v42 = sub_1AFDFD1F8();
      v43 = MEMORY[0x1B27189E0](v42);
      v45 = v44;

      *(v34 + 56) = v43;
      *(v34 + 64) = v45;
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v40 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v48 = v40;
        swift_once();
        v40 = v48;
      }

      v54 = 0;
      sub_1AF0D4F18(v40, &v54, 0xD00000000000002ALL, 0x80000001AFF2C720);
    }
  }

  return result;
}

uint64_t sub_1AF5DDC4C(uint64_t a1)
{
  v3 = *(a1 + 184);

  v4 = sub_1AF6D36F4(&type metadata for SceneAssetRegistryInstance, &off_1F2536D38, v3);

  if (v4)
  {
    v6 = *(v1 + 32);
    v21[0] = *(v1 + 16);
    v21[1] = v6;
    v22 = *(v1 + 48);
    sub_1AF6B06C0(a1, v21, 0x200000000, &v7);
    if (v7)
    {
      v17 = v10;
      v18 = v11;
      v19 = v12;
      v20 = v13;
      v15 = v8;
      v16 = v9;
      v14 = v7;

      sub_1AFD167F8(&v14, v4, a1);

      return sub_1AF5DD530(&v7, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF5DE4E0);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF5DDDD0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AFDFEE28() & 1;
  }
}

uint64_t sub_1AF5DDE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneKitRenderer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AF5DDF3C()
{
  result = qword_1EB63C168;
  if (!qword_1EB63C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C168);
  }

  return result;
}

unint64_t sub_1AF5DDF90()
{
  result = qword_1EB63C170;
  if (!qword_1EB63C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C170);
  }

  return result;
}

unint64_t sub_1AF5DDFE4()
{
  result = qword_1EB63C178;
  if (!qword_1EB63C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C178);
  }

  return result;
}

unint64_t sub_1AF5DE038()
{
  result = qword_1EB63C188;
  if (!qword_1EB63C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C188);
  }

  return result;
}

unint64_t sub_1AF5DE08C()
{
  result = qword_1EB63C198;
  if (!qword_1EB63C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C198);
  }

  return result;
}

unint64_t sub_1AF5DE0E0()
{
  result = qword_1EB632308;
  if (!qword_1EB632308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632308);
  }

  return result;
}

unint64_t sub_1AF5DE134()
{
  result = qword_1EB633D08;
  if (!qword_1EB633D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633D08);
  }

  return result;
}

unint64_t sub_1AF5DE188()
{
  result = qword_1EB63C1A8;
  if (!qword_1EB63C1A8)
  {
    sub_1AF5822B0();
    sub_1AF5DE2D0(&qword_1ED726C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C1A8);
  }

  return result;
}

unint64_t sub_1AF5DE224()
{
  result = qword_1EB633060;
  if (!qword_1EB633060)
  {
    sub_1AFDFC128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633060);
  }

  return result;
}

unint64_t sub_1AF5DE27C()
{
  result = qword_1EB63C1B8;
  if (!qword_1EB63C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C1B8);
  }

  return result;
}

uint64_t sub_1AF5DE2D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF5DE4E0(255, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF5DE354()
{
  result = qword_1EB63C1D0;
  if (!qword_1EB63C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C1D0);
  }

  return result;
}

void sub_1AF5DE3A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF5DE464()
{
  result = qword_1EB63C1E0;
  if (!qword_1EB63C1E0)
  {
    sub_1AF5DE4E0(255, &qword_1EB63C1E8, &type metadata for MeshImportOptions.Loader, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C1E0);
  }

  return result;
}

void sub_1AF5DE4E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF5DE534()
{
  result = qword_1EB63C1F0;
  if (!qword_1EB63C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C1F0);
  }

  return result;
}

unint64_t sub_1AF5DE58C()
{
  result = qword_1EB63C1F8;
  if (!qword_1EB63C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C1F8);
  }

  return result;
}

unint64_t sub_1AF5DE5E4()
{
  result = qword_1EB63C200;
  if (!qword_1EB63C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C200);
  }

  return result;
}

unint64_t sub_1AF5DE63C()
{
  result = qword_1EB63C208;
  if (!qword_1EB63C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C208);
  }

  return result;
}

unint64_t sub_1AF5DE694()
{
  result = qword_1EB63C210;
  if (!qword_1EB63C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C210);
  }

  return result;
}

unint64_t sub_1AF5DE6EC()
{
  result = qword_1EB63C218;
  if (!qword_1EB63C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C218);
  }

  return result;
}

unint64_t sub_1AF5DE744()
{
  result = qword_1EB63C220;
  if (!qword_1EB63C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C220);
  }

  return result;
}

unint64_t sub_1AF5DE79C()
{
  result = qword_1EB6322F8;
  if (!qword_1EB6322F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6322F8);
  }

  return result;
}

unint64_t sub_1AF5DE7F4()
{
  result = qword_1EB632300;
  if (!qword_1EB632300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632300);
  }

  return result;
}

unint64_t sub_1AF5DE84C()
{
  result = qword_1EB63C228;
  if (!qword_1EB63C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C228);
  }

  return result;
}

unint64_t sub_1AF5DE8A4()
{
  result = qword_1EB63C230;
  if (!qword_1EB63C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C230);
  }

  return result;
}

unint64_t sub_1AF5DE8FC()
{
  result = qword_1EB63C238;
  if (!qword_1EB63C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C238);
  }

  return result;
}

unint64_t sub_1AF5DE954()
{
  result = qword_1EB63C240;
  if (!qword_1EB63C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C240);
  }

  return result;
}

unint64_t sub_1AF5DE9A8()
{
  result = qword_1EB63C248;
  if (!qword_1EB63C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C248);
  }

  return result;
}

uint64_t sub_1AF5DEA30()
{
  result = sub_1AF5DEA50();
  qword_1EB6C2A68 = result;
  return result;
}

uint64_t sub_1AF5DEA50()
{
  type metadata accessor for NavigationConfiguration();
  v0 = swift_allocObject();
  v1 = sub_1AF42C43C(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1AF851618(&unk_1F24F38E8, 0, isUniquelyReferenced_nonNull_native, v3);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AF851618(&unk_1F24F3910, 1, v4, v5);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AF851618(&unk_1F24F3938, 2, v6, v7);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AF851618(&unk_1F24F3960, 3, v8, v9);
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_1AF5DEB3C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1AF5DEBAC()
{
  result = qword_1EB6339A8;
  if (!qword_1EB6339A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6339A8);
  }

  return result;
}

uint64_t sub_1AF5DEC00(void *a1)
{
  v3 = v1;
  sub_1AF5E0838(0, &qword_1EB63C268, sub_1AF5E0790, &type metadata for _Navigation.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E0790();
  sub_1AFDFF3F8();
  v12 = *v3;
  v13 = 0;
  sub_1AF5E0838(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AF5E08A0(&qword_1ED72F758);
  sub_1AFDFE918();
  if (!v2)
  {
    v12 = v3[1];
    v13 = 1;
    sub_1AFDFE918();
    LOBYTE(v12) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 3;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 4;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 5;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 6;
    sub_1AFDFE8E8();
    LOBYTE(v12) = *(v3 + 52);
    v13 = 7;
    sub_1AF5E091C();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1AF5DEFC8()
{
  v1 = *v0;
  v2 = 0x7055646C726F77;
  v3 = 0x636F6C6556796C66;
  if (v1 != 6)
  {
    v3 = 0x6E6F697461746F72;
  }

  v4 = 0x69736E65536E6170;
  if (v1 != 4)
  {
    v4 = 0x6C754D7466696873;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF5DF0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5DF740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF5DF124(uint64_t a1)
{
  v2 = sub_1AF5E0790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5DF160(uint64_t a1)
{
  v2 = sub_1AF5E0790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF5DF19C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF5DF9F8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = v7[0];
    *(a2 + 32) = *v7;
    *(a2 + 45) = *(&v7[1] + 5);
  }

  return result;
}

__n128 sub_1AF5DF200@<Q0>(uint64_t a1@<X8>)
{
  sub_1AF5DF688(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v5[6];
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AF5DF250()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5DF2CC()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5DF324@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF5DF3BC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF5DF414(uint64_t a1)
{
  v2 = sub_1AF5E012C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5DF450(uint64_t a1)
{
  v2 = sub_1AF5E012C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5DF48C(void *a1)
{
  v2 = v1;
  sub_1AF5E0838(0, &qword_1EB63C250, sub_1AF5E012C, &type metadata for Navigation.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E012C();
  sub_1AFDFF3F8();
  v10 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v10;
  v13[0] = *(v2 + 32);
  *(v13 + 13) = *(v2 + 45);
  sub_1AF5E0204();
  sub_1AFDFE918();
  return (*(v6 + 8))(v9, v5);
}

__n128 sub_1AF5DF61C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF5DFDC0(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1AF5DF688@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB633578 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EB6C2A68;
  *a1 = xmmword_1AFE20160;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_1AFE64740;
  *(a1 + 48) = 1065353216;
  *(a1 + 52) = 1;
  *(a1 + 56) = v1;
  *(a1 + 64) = 2;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 72) = MEMORY[0x1E69E7CC0];
  *(a1 + 80) = v2;
  *(a1 + 88) = v2;
  *(a1 + 96) = v2;
  *(a1 + 104) = v2;
}

uint64_t sub_1AF5DF740(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7055646C726F77 && a2 == 0xE700000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF296C0 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001AFF296A0 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF29680 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69736E65536E6170 && a2 == 0xEE00797469766974 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C754D7466696873 && a2 == 0xEF7265696C706974 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x636F6C6556796C66 && a2 == 0xEB00000000797469 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xEC00000065646F4DLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1AF5DF9F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF5E0838(0, &qword_1EB633158, sub_1AF5E0790, &type metadata for _Navigation.CodingKeys, MEMORY[0x1E69E6F48]);
  v27 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E0790();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v6;
  sub_1AF5E0838(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v28 = 0;
  sub_1AF5E08A0(&qword_1ED72F748);
  v11 = v27;
  sub_1AFDFE768();
  v26 = v29;
  v28 = 1;
  sub_1AFDFE768();
  v25 = v29;
  LOBYTE(v29) = 2;
  sub_1AFDFE738();
  v13 = v12;
  LOBYTE(v29) = 3;
  sub_1AFDFE738();
  v15 = v14;
  LOBYTE(v29) = 4;
  sub_1AFDFE738();
  v17 = v16;
  LOBYTE(v29) = 5;
  sub_1AFDFE738();
  v19 = v18;
  LOBYTE(v29) = 6;
  sub_1AFDFE738();
  v21 = v20;
  v28 = 7;
  sub_1AF5E07E4();
  sub_1AFDFE768();
  (*(v10 + 8))(v9, v11);
  v22 = v29;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v24 = v25;
  *a2 = v26;
  *(a2 + 16) = v24;
  *(a2 + 32) = v13;
  *(a2 + 36) = v15;
  *(a2 + 40) = v17;
  *(a2 + 44) = v19;
  *(a2 + 48) = v21;
  *(a2 + 52) = v22;
  return result;
}

uint64_t sub_1AF5DFDC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF5E0838(0, &qword_1EB633170, sub_1AF5E012C, &type metadata for Navigation.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  *&v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - v8;
  if (qword_1EB633578 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB6C2A68;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E012C();

  sub_1AFDFF3B8();
  if (v2)
  {
    v24 = xmmword_1AFE20160;
    v25 = 0;
    v26 = 0;
    v27 = xmmword_1AFE64740;
    v28 = 1065353216;
    v29 = 1;
    v30 = v10;
    v31 = 2;
    v32 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E7CC0];
    sub_1AF5E0180(&v24);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    sub_1AF5E01B0();
    sub_1AFDFE768();
    (*(v18 + 8))(v9, v6);
    v18 = v19;
    v17 = v20;
    v12 = v22;
    v13 = v23;
    v16 = v21;
    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v14 = v17;
    *a2 = v18;
    *(a2 + 16) = v14;
    *(a2 + 32) = v16;
    *(a2 + 48) = v12;
    *(a2 + 52) = v13;
    *(a2 + 53) = v38;
    *(a2 + 55) = v39;
    *(a2 + 56) = v10;
    *(a2 + 64) = 2;
    *(a2 + 65) = *v37;
    v15 = MEMORY[0x1E69E7CC0];
    *(a2 + 68) = *&v37[3];
    *(a2 + 72) = v15;
    *(a2 + 80) = v15;
    *(a2 + 88) = v15;
    *(a2 + 96) = v15;
    *(a2 + 104) = v15;
  }

  return result;
}

unint64_t sub_1AF5E012C()
{
  result = qword_1EB6339E0;
  if (!qword_1EB6339E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6339E0);
  }

  return result;
}

unint64_t sub_1AF5E01B0()
{
  result = qword_1EB633940;
  if (!qword_1EB633940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633940);
  }

  return result;
}

unint64_t sub_1AF5E0204()
{
  result = qword_1EB63C258;
  if (!qword_1EB63C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C258);
  }

  return result;
}

__n128 initializeWithCopy for _Navigation(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _Navigation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 53))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 52);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _Navigation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *(result + 52) = a2 + 1;
    }
  }

  return result;
}

uint64_t destroy for Navigation()
{
}

uint64_t initializeWithCopy for Navigation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;
  v5 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v5;
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithCopy for Navigation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithTake for Navigation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for Navigation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Navigation(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

unint64_t sub_1AF5E068C()
{
  result = qword_1EB63C260;
  if (!qword_1EB63C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C260);
  }

  return result;
}

unint64_t sub_1AF5E06E4()
{
  result = qword_1EB6339D0;
  if (!qword_1EB6339D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6339D0);
  }

  return result;
}

unint64_t sub_1AF5E073C()
{
  result = qword_1EB6339D8;
  if (!qword_1EB6339D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6339D8);
  }

  return result;
}

unint64_t sub_1AF5E0790()
{
  result = qword_1EB633958;
  if (!qword_1EB633958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633958);
  }

  return result;
}

unint64_t sub_1AF5E07E4()
{
  result = qword_1EB633580;
  if (!qword_1EB633580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633580);
  }

  return result;
}

void sub_1AF5E0838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF5E08A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF5E0838(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF5E091C()
{
  result = qword_1EB63C270;
  if (!qword_1EB63C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C270);
  }

  return result;
}

unint64_t sub_1AF5E09A4()
{
  result = qword_1EB63C278;
  if (!qword_1EB63C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C278);
  }

  return result;
}

unint64_t sub_1AF5E09FC()
{
  result = qword_1EB63C280;
  if (!qword_1EB63C280)
  {
    sub_1AF5E0A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C280);
  }

  return result;
}

void sub_1AF5E0A54()
{
  if (!qword_1EB63C288)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63C288);
    }
  }
}

unint64_t sub_1AF5E0AA8()
{
  result = qword_1EB63C290;
  if (!qword_1EB63C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C290);
  }

  return result;
}

unint64_t sub_1AF5E0B00()
{
  result = qword_1EB63C298;
  if (!qword_1EB63C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C298);
  }

  return result;
}

unint64_t sub_1AF5E0B58()
{
  result = qword_1EB633948;
  if (!qword_1EB633948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633948);
  }

  return result;
}

unint64_t sub_1AF5E0BB0()
{
  result = qword_1EB633950;
  if (!qword_1EB633950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633950);
  }

  return result;
}

unint64_t sub_1AF5E0C04()
{
  result = qword_1EB633588;
  if (!qword_1EB633588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633588);
  }

  return result;
}

uint64_t sub_1AF5E0C68()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5E0CCC()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5E0D18@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF5E0D84@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF5E0DDC(uint64_t a1)
{
  v2 = sub_1AF5E11D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E0E18(uint64_t a1)
{
  v2 = sub_1AF5E11D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E0E54@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF5E0F38(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF5E0E80(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AF5E1280();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

double sub_1AF5E0F28@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AFE201A0;
  return result;
}

uint64_t sub_1AF5E0F38(void *a1)
{
  sub_1AF5E117C();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (sub_1AF694FF8(2000, v9, v10))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v1)
    {
      sub_1AF441150(&v13, v14);
      sub_1AF5E122C();
      sub_1AFDFEE88();
      v12[0] = v12[1];
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v13);
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF5E11D8();
    sub_1AFDFF3B8();
    if (!v1)
    {
      sub_1AF5E122C();
      sub_1AFDFE768();
      (*(v5 + 8))(v8, v4);
      v12[0] = v13;
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

void sub_1AF5E117C()
{
  if (!qword_1EB633160)
  {
    sub_1AF5E11D8();
    v0 = sub_1AFDFE818();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633160);
    }
  }
}

unint64_t sub_1AF5E11D8()
{
  result = qword_1EB633988;
  if (!qword_1EB633988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633988);
  }

  return result;
}

unint64_t sub_1AF5E122C()
{
  result = qword_1EB633738;
  if (!qword_1EB633738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633738);
  }

  return result;
}

unint64_t sub_1AF5E1280()
{
  result = qword_1EB63C2A0;
  if (!qword_1EB63C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C2A0);
  }

  return result;
}

unint64_t sub_1AF5E12E8()
{
  result = qword_1EB63C2A8;
  if (!qword_1EB63C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C2A8);
  }

  return result;
}

unint64_t sub_1AF5E1340()
{
  result = qword_1EB633978;
  if (!qword_1EB633978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633978);
  }

  return result;
}

unint64_t sub_1AF5E1398()
{
  result = qword_1EB633980;
  if (!qword_1EB633980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633980);
  }

  return result;
}

uint64_t sub_1AF5E1450(uint64_t a1)
{
  v2 = sub_1AF5E709C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E148C(uint64_t a1)
{
  v2 = sub_1AF5E709C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E14C8(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C358, sub_1AF5E709C, &type metadata for Particle.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E709C();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AF5E1608@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF5E52A8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF5E1634(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v3, v4);
  v1 = MEMORY[0x1E69E74A8];
  sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF5E55F8(&qword_1ED72F710, &qword_1ED72F6E0, v1);
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF5E1758(uint64_t a1)
{
  v2 = sub_1AF5E7144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E1794(uint64_t a1)
{
  v2 = sub_1AF5E7144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E187C(uint64_t a1)
{
  v2 = sub_1AF5E7198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E18B8(uint64_t a1)
{
  v2 = sub_1AF5E7198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E1944@<X0>(void *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, void (*a5)(void)@<X6>, _DWORD *a6@<X8>)
{
  v20 = a6;
  sub_1AF5E7C00(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v19 - v12;
  sub_1AF441150(a1, a1[3]);
  a5();
  sub_1AFDFF3B8();
  if (v6)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v15 = v19;
  v14 = v20;
  sub_1AFDFE738();
  v17 = v16;
  (*(v15 + 8))(v13, v10);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v14 = v17;
  return result;
}

uint64_t sub_1AF5E1B38(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(void))
{
  sub_1AF5E7C00(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  sub_1AFDFE8E8();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AF5E1C98(uint64_t a1)
{
  v2 = sub_1AF5E71EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E1CD4(uint64_t a1)
{
  v2 = sub_1AF5E71EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E1DB0(uint64_t a1)
{
  v2 = sub_1AF5E7240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E1DEC(uint64_t a1)
{
  v2 = sub_1AF5E7240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E1EC8(uint64_t a1)
{
  v2 = sub_1AF5E7294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E1F04(uint64_t a1)
{
  v2 = sub_1AF5E7294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E1FE0(uint64_t a1)
{
  v2 = sub_1AF5E4E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E201C(uint64_t a1)
{
  v2 = sub_1AF5E4E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E20F8(void *a1, double a2)
{
  sub_1AF5E7C00(0, &qword_1EB63C378, sub_1AF5E70F0, &type metadata for ParticleRibbonLength.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E70F0();
  sub_1AFDFF3F8();
  *&v12[1] = a2;
  v10 = MEMORY[0x1E69E7428];
  sub_1AF5E7C00(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  sub_1AF5E55F8(&qword_1ED72F798, &unk_1ED72F770, v10);
  sub_1AFDFE918();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AF5E22DC(uint64_t a1)
{
  v2 = sub_1AF5E70F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E2318(uint64_t a1)
{
  v2 = sub_1AF5E70F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF5E2354(void *a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1AF5E5C90(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1AF5E23BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D65737265766E69 && a2 == 0xEB00000000737361)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF5E2448(uint64_t a1)
{
  v2 = sub_1AF5E72E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E2484(uint64_t a1)
{
  v2 = sub_1AF5E72E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E2560(void *a1, __n128 a2)
{
  v11[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C420, sub_1AF5E733C, &type metadata for LinearFactor.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E733C();
  sub_1AFDFF3F8();
  v11[1] = v11[0];
  v9 = MEMORY[0x1E69E7450];
  sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AF5E55F8(&qword_1ED72F758, &qword_1ED72F740, v9);
  sub_1AFDFE918();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF5E2744(uint64_t a1)
{
  v2 = sub_1AF5E733C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E2780(uint64_t a1)
{
  v2 = sub_1AF5E733C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E27BC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF5E5EC4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF5E280C(void *a1, __n128 a2)
{
  v11[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C438, sub_1AF5E7390, &type metadata for AngularFactor.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7390();
  sub_1AFDFF3F8();
  v11[1] = v11[0];
  v9 = MEMORY[0x1E69E7450];
  sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AF5E55F8(&qword_1ED72F758, &qword_1ED72F740, v9);
  sub_1AFDFE918();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF5E29F0(uint64_t a1)
{
  v2 = sub_1AF5E7390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E2A2C(uint64_t a1)
{
  v2 = sub_1AF5E7390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E2A68@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF5E60F4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF5E2ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7A696C616D726F6ELL && a2 == 0xEF65756C61566465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF5E2B6C(uint64_t a1)
{
  v2 = sub_1AF5E4EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E2BA8(uint64_t a1)
{
  v2 = sub_1AF5E4EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E2C84(void *a1, __n128 a2)
{
  v11[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C450, sub_1AF5E73E4, &type metadata for ParticleTarget.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E73E4();
  sub_1AFDFF3F8();
  v11[1] = v11[0];
  v9 = MEMORY[0x1E69E7450];
  sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AF5E55F8(&qword_1ED72F758, &qword_1ED72F740, v9);
  sub_1AFDFE918();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF5E2E68(uint64_t a1)
{
  v2 = sub_1AF5E73E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E2EA4(uint64_t a1)
{
  v2 = sub_1AF5E73E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E2EE0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF5E6324(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF5E2F28(void *a1, __n128 a2)
{
  v11[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C468, sub_1AF5E7438, &type metadata for UserData1.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7438();
  sub_1AFDFF3F8();
  v11[1] = v11[0];
  v9 = MEMORY[0x1E69E74A8];
  sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF5E55F8(&qword_1ED72F710, &qword_1ED72F6E0, v9);
  sub_1AFDFE918();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF5E310C(uint64_t a1)
{
  v2 = sub_1AF5E7438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E3148(uint64_t a1)
{
  v2 = sub_1AF5E7438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E3184@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF5E6554(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF5E31CC(void *a1, __n128 a2)
{
  v11[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C480, sub_1AF5E748C, &type metadata for UserData2.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E748C();
  sub_1AFDFF3F8();
  v11[1] = v11[0];
  v9 = MEMORY[0x1E69E74A8];
  sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF5E55F8(&qword_1ED72F710, &qword_1ED72F6E0, v9);
  sub_1AFDFE918();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF5E33B0(uint64_t a1)
{
  v2 = sub_1AF5E748C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E33EC(uint64_t a1)
{
  v2 = sub_1AF5E748C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E3428@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF5E6784(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF5E3470(void *a1, __n128 a2)
{
  v11[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C498, sub_1AF5E74E0, &type metadata for UserData3.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E74E0();
  sub_1AFDFF3F8();
  v11[1] = v11[0];
  v9 = MEMORY[0x1E69E74A8];
  sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF5E55F8(&qword_1ED72F710, &qword_1ED72F6E0, v9);
  sub_1AFDFE918();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF5E3654(uint64_t a1)
{
  v2 = sub_1AF5E74E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E3690(uint64_t a1)
{
  v2 = sub_1AF5E74E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E36CC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF5E69B4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF5E3714(void *a1, __n128 a2)
{
  v11[0] = a2;
  sub_1AF5E7C00(0, &qword_1EB63C4B0, sub_1AF5E7534, &type metadata for UserData4.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7534();
  sub_1AFDFF3F8();
  v11[1] = v11[0];
  v9 = MEMORY[0x1E69E74A8];
  sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF5E55F8(&qword_1ED72F710, &qword_1ED72F6E0, v9);
  sub_1AFDFE918();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF5E38F8(uint64_t a1)
{
  v2 = sub_1AF5E7534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E3934(uint64_t a1)
{
  v2 = sub_1AF5E7534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E3970@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF5E6BE4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF5E39B8(uint64_t a1)
{
  v2 = sub_1AF5E7588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E39F4(uint64_t a1)
{
  v2 = sub_1AF5E7588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E3AD0(uint64_t a1)
{
  v2 = sub_1AF5E75DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E3B0C(uint64_t a1)
{
  v2 = sub_1AF5E75DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E3B48@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v14 = a2;
  sub_1AF5E7C00(0, &qword_1EB63C4D0, sub_1AF5E75DC, &type metadata for ParticlePivot.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E75DC();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v14;
  v11 = sub_1AFDFE7D8();
  (*(v6 + 8))(v9, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v11;
  return result;
}

uint64_t sub_1AF5E3CF4(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C4E0, sub_1AF5E75DC, &type metadata for ParticlePivot.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E75DC();
  sub_1AFDFF3F8();
  sub_1AFDFE988();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AF5E3E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C65737265766E69 && a2 == 0xEF656D6974656669)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF5E3F18(uint64_t a1)
{
  v2 = sub_1AF5E4F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E3F54(uint64_t a1)
{
  v2 = sub_1AF5E4F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E4030(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7473727562;
  if (v2 != 1)
  {
    v3 = 0x74696D655FLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7265764F65746172;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEC000000656D6954;
  }

  v6 = 0x7473727562;
  if (*a2 != 1)
  {
    v6 = 0x74696D655FLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7265764F65746172;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xEC000000656D6954;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();
  }

  return v9 & 1;
}

uint64_t sub_1AF5E4128()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5E41CC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF5E425C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5E42FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF5E50A0();
  *a1 = result;
  return result;
}

void sub_1AF5E432C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000656D6954;
  v4 = 0x7473727562;
  if (v2 != 1)
  {
    v4 = 0x74696D655FLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7265764F65746172;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1AF5E438C()
{
  v1 = 0x7473727562;
  if (*v0 != 1)
  {
    v1 = 0x74696D655FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265764F65746172;
  }
}

uint64_t sub_1AF5E43E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF5E50A0();
  *a1 = result;
  return result;
}

uint64_t sub_1AF5E4410(uint64_t a1)
{
  v2 = sub_1AF5E7048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E444C(uint64_t a1)
{
  v2 = sub_1AF5E7048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF5E4488@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF5E6E14(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
  }

  return result;
}

void sub_1AF5E44E4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = nullsub_106;
  *(a1 + 24) = 0;
}

uint64_t sub_1AF5E4504(void *a1, __n128 a2)
{
  v12 = a2;
  sub_1AF5E7C00(0, &qword_1EB63C4F8, sub_1AF5E789C, &type metadata for ParticleSphereAttractor.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E789C();
  sub_1AFDFF3F8();
  v13 = v12;
  v14 = 0;
  v10 = MEMORY[0x1E69E74A8];
  sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF5E55F8(&qword_1ED72F710, &qword_1ED72F6E0, v10);
  sub_1AFDFE918();
  if (!v2)
  {
    v13.n128_u8[0] = 1;
    sub_1AFDFE8E8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AF5E471C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7469736E65746E69;
  }

  else
  {
    v3 = 0x657265687073;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000079;
  }

  if (*a2)
  {
    v5 = 0x7469736E65746E69;
  }

  else
  {
    v5 = 0x657265687073;
  }

  if (*a2)
  {
    v6 = 0xE900000000000079;
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

uint64_t sub_1AF5E47C4()
{
  if (*v0)
  {
    return 0x7469736E65746E69;
  }

  else
  {
    return 0x657265687073;
  }
}

uint64_t sub_1AF5E4800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657265687073 && a2 == 0xE600000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AF5E48E0(uint64_t a1)
{
  v2 = sub_1AF5E789C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E491C(uint64_t a1)
{
  v2 = sub_1AF5E789C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E4958@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5E7630(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double sub_1AF5E49A8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AFE201A0;
  *(a1 + 16) = 1065353216;
  return result;
}

uint64_t sub_1AF5E49C0(void *a1, unint64_t a2, __n128 a3, __n128 a4)
{
  v15 = a4;
  v16 = a3;
  sub_1AF5E7C00(0, &qword_1EB63C510, sub_1AF5E7BAC, &type metadata for ParticleSDFAttractor.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7BAC();
  sub_1AFDFF3F8();
  v17.n128_u64[0] = a2;
  v18 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v4)
  {
    v17 = v16;
    v18 = 1;
    v13 = MEMORY[0x1E69E7450];
    sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF5E55F8(&qword_1ED72F758, &qword_1ED72F740, v13);
    sub_1AFDFE918();
    v17 = v15;
    v18 = 2;
    sub_1AFDFE918();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1AF5E4C30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  if (v2 != 1)
  {
    v4 = 0x657A6953666C6168;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x61746144666473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265746E6563;
  if (*a2 != 1)
  {
    v8 = 0x657A6953666C6168;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x61746144666473;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
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

uint64_t sub_1AF5E4D2C()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x657A6953666C6168;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61746144666473;
  }
}

uint64_t sub_1AF5E4D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5E4F8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF5E4DAC(uint64_t a1)
{
  v2 = sub_1AF5E7BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5E4DE8(uint64_t a1)
{
  v2 = sub_1AF5E7BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5E4E24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5E78F0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 16) = v5;
    *(a2 + 32) = v6;
  }

  return result;
}

__n128 sub_1AF5E4E78@<Q0>(__n128 *a1@<X8>)
{
  a1->n128_u64[0] = 0xFFFFFFFFLL;
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
  __asm { FMOV            V0.4S, #1.0 }

  a1[2] = result;
  return result;
}

unint64_t sub_1AF5E4E90()
{
  result = qword_1EB63C2B8;
  if (!qword_1EB63C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C2B8);
  }

  return result;
}

unint64_t sub_1AF5E4EE4()
{
  result = qword_1EB63C2D0;
  if (!qword_1EB63C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C2D0);
  }

  return result;
}

unint64_t sub_1AF5E4F38()
{
  result = qword_1EB63C2E8;
  if (!qword_1EB63C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C2E8);
  }

  return result;
}

uint64_t sub_1AF5E4F8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144666473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A6953666C6168 && a2 == 0xE800000000000000)
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

uint64_t sub_1AF5E50A0()
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

uint64_t sub_1AF5E50EC(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C350, sub_1AF5E7048, &type metadata for ParticleCustomEmitter.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7048();
  sub_1AFDFF3F8();
  v13 = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v12 = 1;
    sub_1AFDFE8E8();
    v11 = 2;
    sub_1AFDFE8E8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF5E52A8(void *a1)
{
  sub_1AF5E7C00(0, &qword_1ED726A78, sub_1AF47986C, &type metadata for ValueCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v14 - v7;
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (sub_1AF694FF8(2000, v9, v10))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v1)
    {
      sub_1AF441150(&v15, v16);
      v11 = MEMORY[0x1E69E74A8];
      sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v11);
      sub_1AFDFEE88();
      v14[0] = v14[1];
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v15);
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF47986C();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v12 = MEMORY[0x1E69E74A8];
      sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v12);
      sub_1AFDFE768();
      (*(v5 + 8))(v8, v4);
      v14[0] = v15;
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E55F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF5E7C00(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeWithCopy for ParticleCustomEmitter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithCopy for ParticleCustomEmitter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithTake for ParticleCustomEmitter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleCustomEmitter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ParticleCustomEmitter(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 initializeWithCopy for ParticleSphereAttractor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

unint64_t sub_1AF5E597C()
{
  result = qword_1EB63C2F8;
  if (!qword_1EB63C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C2F8);
  }

  return result;
}

unint64_t sub_1AF5E59D4()
{
  result = qword_1EB63C300;
  if (!qword_1EB63C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C300);
  }

  return result;
}

unint64_t sub_1AF5E5A2C()
{
  result = qword_1EB63C308;
  if (!qword_1EB63C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C308);
  }

  return result;
}

unint64_t sub_1AF5E5A84()
{
  result = qword_1EB63C310;
  if (!qword_1EB63C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C310);
  }

  return result;
}

unint64_t sub_1AF5E5ADC()
{
  result = qword_1EB63C318;
  if (!qword_1EB63C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C318);
  }

  return result;
}

unint64_t sub_1AF5E5B34()
{
  result = qword_1EB63C320;
  if (!qword_1EB63C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C320);
  }

  return result;
}

unint64_t sub_1AF5E5B8C()
{
  result = qword_1EB63C328;
  if (!qword_1EB63C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C328);
  }

  return result;
}

unint64_t sub_1AF5E5BE4()
{
  result = qword_1EB63C330;
  if (!qword_1EB63C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C330);
  }

  return result;
}

unint64_t sub_1AF5E5C3C()
{
  result = qword_1EB63C338;
  if (!qword_1EB63C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C338);
  }

  return result;
}

double sub_1AF5E5C90(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C368, sub_1AF5E70F0, &type metadata for ParticleRibbonLength.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E70F0();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v10 = MEMORY[0x1E69E7428];
    sub_1AF5E7C00(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AF5E55F8(&qword_1ED72F780, &unk_1ED72F770, v10);
    sub_1AFDFE768();
    (*(v6 + 8))(v9, v5);
    v2 = *&v12[1];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF5E5EC4(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C410, sub_1AF5E733C, &type metadata for LinearFactor.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E733C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v9 = MEMORY[0x1E69E7450];
    sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF5E55F8(&qword_1ED72F748, &qword_1ED72F740, v9);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v11[0] = v11[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E60F4(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C428, sub_1AF5E7390, &type metadata for AngularFactor.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7390();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v9 = MEMORY[0x1E69E7450];
    sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF5E55F8(&qword_1ED72F748, &qword_1ED72F740, v9);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v11[0] = v11[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E6324(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C440, sub_1AF5E73E4, &type metadata for ParticleTarget.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E73E4();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v9 = MEMORY[0x1E69E7450];
    sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF5E55F8(&qword_1ED72F748, &qword_1ED72F740, v9);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v11[0] = v11[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E6554(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C458, sub_1AF5E7438, &type metadata for UserData1.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7438();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v9 = MEMORY[0x1E69E74A8];
    sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v9);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v11[0] = v11[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E6784(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C470, sub_1AF5E748C, &type metadata for UserData2.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E748C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v9 = MEMORY[0x1E69E74A8];
    sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v9);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v11[0] = v11[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E69B4(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C488, sub_1AF5E74E0, &type metadata for UserData3.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E74E0();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v9 = MEMORY[0x1E69E74A8];
    sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v9);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v11[0] = v11[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E6BE4(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C4A0, sub_1AF5E7534, &type metadata for UserData4.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7534();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v9 = MEMORY[0x1E69E74A8];
    sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v9);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v11[0] = v11[1];
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF5E6E14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1AF5E7C00(0, &qword_1EB63C340, sub_1AF5E7048, &type metadata for ParticleCustomEmitter.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E7048();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v6;
  v11 = v19;
  v22 = 0;
  sub_1AFDFE738();
  v13 = v12;
  v21 = 1;
  sub_1AFDFE738();
  v15 = v14;
  v20 = 2;
  sub_1AFDFE738();
  v17 = v16;
  (*(v10 + 8))(v9, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v11 = v13;
  *(v11 + 4) = v15;
  *(v11 + 8) = v17;
  *(v11 + 16) = nullsub_106;
  *(v11 + 24) = 0;
  return result;
}

unint64_t sub_1AF5E7048()
{
  result = qword_1EB63C348;
  if (!qword_1EB63C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C348);
  }

  return result;
}

unint64_t sub_1AF5E709C()
{
  result = qword_1EB63C360;
  if (!qword_1EB63C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C360);
  }

  return result;
}

unint64_t sub_1AF5E70F0()
{
  result = qword_1EB63C370;
  if (!qword_1EB63C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C370);
  }

  return result;
}

unint64_t sub_1AF5E7144()
{
  result = qword_1EB63C388;
  if (!qword_1EB63C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C388);
  }

  return result;
}

unint64_t sub_1AF5E7198()
{
  result = qword_1EB63C3A0;
  if (!qword_1EB63C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C3A0);
  }

  return result;
}

unint64_t sub_1AF5E71EC()
{
  result = qword_1EB63C3B8;
  if (!qword_1EB63C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C3B8);
  }

  return result;
}

unint64_t sub_1AF5E7240()
{
  result = qword_1EB63C3D0;
  if (!qword_1EB63C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C3D0);
  }

  return result;
}

unint64_t sub_1AF5E7294()
{
  result = qword_1EB63C3E8;
  if (!qword_1EB63C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C3E8);
  }

  return result;
}

unint64_t sub_1AF5E72E8()
{
  result = qword_1EB63C400;
  if (!qword_1EB63C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C400);
  }

  return result;
}

unint64_t sub_1AF5E733C()
{
  result = qword_1EB63C418;
  if (!qword_1EB63C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C418);
  }

  return result;
}

unint64_t sub_1AF5E7390()
{
  result = qword_1EB63C430;
  if (!qword_1EB63C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C430);
  }

  return result;
}

unint64_t sub_1AF5E73E4()
{
  result = qword_1EB63C448;
  if (!qword_1EB63C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C448);
  }

  return result;
}

unint64_t sub_1AF5E7438()
{
  result = qword_1EB63C460;
  if (!qword_1EB63C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C460);
  }

  return result;
}

unint64_t sub_1AF5E748C()
{
  result = qword_1EB63C478;
  if (!qword_1EB63C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C478);
  }

  return result;
}

unint64_t sub_1AF5E74E0()
{
  result = qword_1EB63C490;
  if (!qword_1EB63C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C490);
  }

  return result;
}

unint64_t sub_1AF5E7534()
{
  result = qword_1EB63C4A8;
  if (!qword_1EB63C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C4A8);
  }

  return result;
}

unint64_t sub_1AF5E7588()
{
  result = qword_1EB63C4C0;
  if (!qword_1EB63C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C4C0);
  }

  return result;
}

unint64_t sub_1AF5E75DC()
{
  result = qword_1EB63C4D8;
  if (!qword_1EB63C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C4D8);
  }

  return result;
}

uint64_t sub_1AF5E7630(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C4E8, sub_1AF5E789C, &type metadata for ParticleSphereAttractor.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5E789C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v9 = MEMORY[0x1E69E74A8];
    sub_1AF5E7C00(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v12 = 0;
    sub_1AF5E55F8(&qword_1ED72F6F0, &qword_1ED72F6E0, v9);
    sub_1AFDFE768();
    v11 = v13;
    LOBYTE(v13) = 1;
    sub_1AFDFE738();
    (*(v5 + 8))(v8, v4);
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

unint64_t sub_1AF5E789C()
{
  result = qword_1EB63C4F0;
  if (!qword_1EB63C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C4F0);
  }

  return result;
}

uint64_t sub_1AF5E78F0(void *a1)
{
  sub_1AF5E7C00(0, &qword_1EB63C500, sub_1AF5E7BAC, &type metadata for ParticleSDFAttractor.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF5E7BAC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v14 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v9 = v13;
    v10 = MEMORY[0x1E69E7450];
    sub_1AF5E7C00(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v14 = 1;
    sub_1AF5E55F8(&qword_1ED72F748, &qword_1ED72F740, v10);
    sub_1AFDFE768();
    v12[1] = v13;
    v14 = 2;
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v12[0] = v13;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

unint64_t sub_1AF5E7BAC()
{
  result = qword_1EB63C508;
  if (!qword_1EB63C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C508);
  }

  return result;
}

void sub_1AF5E7C00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF5E7DAC()
{
  result = qword_1EB63C518;
  if (!qword_1EB63C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C518);
  }

  return result;
}

unint64_t sub_1AF5E7E04()
{
  result = qword_1EB63C520;
  if (!qword_1EB63C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C520);
  }

  return result;
}

unint64_t sub_1AF5E7E5C()
{
  result = qword_1EB63C528;
  if (!qword_1EB63C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C528);
  }

  return result;
}

unint64_t sub_1AF5E7EB4()
{
  result = qword_1EB63C530;
  if (!qword_1EB63C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C530);
  }

  return result;
}

unint64_t sub_1AF5E7F0C()
{
  result = qword_1EB63C538;
  if (!qword_1EB63C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C538);
  }

  return result;
}

unint64_t sub_1AF5E7F64()
{
  result = qword_1EB63C540;
  if (!qword_1EB63C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C540);
  }

  return result;
}

unint64_t sub_1AF5E7FBC()
{
  result = qword_1EB63C548;
  if (!qword_1EB63C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C548);
  }

  return result;
}

unint64_t sub_1AF5E8014()
{
  result = qword_1EB63C550;
  if (!qword_1EB63C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C550);
  }

  return result;
}

unint64_t sub_1AF5E806C()
{
  result = qword_1EB63C558;
  if (!qword_1EB63C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C558);
  }

  return result;
}