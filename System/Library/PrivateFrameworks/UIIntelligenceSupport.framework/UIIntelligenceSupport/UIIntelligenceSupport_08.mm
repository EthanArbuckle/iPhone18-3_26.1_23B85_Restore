uint64_t sub_1BBB2D86C()
{
  sub_1BBB843D8();
  IntelligenceSnapshotConfiguration.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB2D8B0()
{
  sub_1BBB843D8();
  IntelligenceSnapshotConfiguration.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB2D920()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v25 = v0[8];
  v26 = v0[9];
  v27 = v0[10];
  v28 = v0[11];
  v29 = v0[12];
  v30 = v0[13];
  v31 = v0[14];
  v32 = v0[15];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFB16A80](*&v1);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1BFB16A80](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x1BFB16A80](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1BFB16A80](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1BFB16A80](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1BFB16A80](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1BFB16A80](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x1BFB16A80](*&v15);
  v16 = v25;
  if (v25 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x1BFB16A80](*&v16);
  v17 = v26;
  if (v26 == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x1BFB16A80](*&v17);
  v18 = v27;
  if (v27 == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x1BFB16A80](*&v18);
  v19 = v28;
  if (v28 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x1BFB16A80](*&v19);
  v20 = v29;
  if (v29 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1BFB16A80](*&v20);
  v21 = v30;
  if (v30 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1BFB16A80](*&v21);
  v22 = v31;
  if (v31 == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x1BFB16A80](*&v22);
  v23 = v32;
  if (v32 == 0.0)
  {
    v23 = 0.0;
  }

  return MEMORY[0x1BFB16A80](*&v23);
}

uint64_t sub_1BBB2DAC0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BBABBA8C(*a1);
  v5 = v4;
  if (v3 == sub_1BBABBA8C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BBB842F8();
  }

  return v8 & 1;
}

uint64_t sub_1BBB2DB48()
{
  v1 = *v0;
  sub_1BBB843D8();
  sub_1BBABBA8C(v1);
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB2DBAC()
{
  sub_1BBABBA8C(*v0);
  sub_1BBB83AC8();
}

uint64_t sub_1BBB2DC00()
{
  v1 = *v0;
  sub_1BBB843D8();
  sub_1BBABBA8C(v1);
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB2DC60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB30288();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB2DC90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BBABBA8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BBB2DCC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB30288();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB2DCF8(uint64_t a1)
{
  v2 = sub_1BBB2FEC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB2DD34(uint64_t a1)
{
  v2 = sub_1BBB2FEC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB2DD70(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CAC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB2FEC8();
  sub_1BBB84478();
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[3];
  v36 = v3[2];
  v37 = v10;
  v12 = v3[5];
  v34 = v3[4];
  v35 = v11;
  v13 = v3[7];
  v32 = v3[6];
  v33 = v12;
  v31 = v13;
  v15 = v3[8];
  v14 = v3[9];
  v17 = v3[10];
  v16 = v3[11];
  v19 = v3[12];
  v18 = v3[13];
  v20 = v3[14];
  v21 = v3[15];
  v39 = v9;
  v38 = 0;
  sub_1BBA9E98C();
  sub_1BBB84288();
  if (!v2)
  {
    v29 = v14;
    v30 = v15;
    v27 = v16;
    v28 = v17;
    v25 = v18;
    v26 = v19;
    v24 = v20;
    v23 = v21;
    v39 = v37;
    v38 = 1;
    sub_1BBB84288();
    v39 = v36;
    v38 = 2;
    sub_1BBB84288();
    v39 = v35;
    v38 = 3;
    sub_1BBB84288();
    v39 = v34;
    v38 = 4;
    sub_1BBB84288();
    v39 = v33;
    v38 = 5;
    sub_1BBB84288();
    v39 = v32;
    v38 = 6;
    sub_1BBB84288();
    v39 = v31;
    v38 = 7;
    sub_1BBB84288();
    v39 = v30;
    v38 = 8;
    sub_1BBB84288();
    v39 = v29;
    v38 = 9;
    sub_1BBB84288();
    v39 = v28;
    v38 = 10;
    sub_1BBB84288();
    v39 = v27;
    v38 = 11;
    sub_1BBB84288();
    v39 = v26;
    v38 = 12;
    sub_1BBB84288();
    v39 = v25;
    v38 = 13;
    sub_1BBB84288();
    v39 = v24;
    v38 = 14;
    sub_1BBB84288();
    v39 = v23;
    v38 = 15;
    sub_1BBB84288();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BBB2E2A0()
{
  sub_1BBB843D8();
  sub_1BBB2D920();
  return sub_1BBB84438();
}

unint64_t sub_1BBB2E354()
{
  result = qword_1EBC7C890;
  if (!qword_1EBC7C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C890);
  }

  return result;
}

unint64_t sub_1BBB2E3A8()
{
  result = qword_1EBC7C8A0;
  if (!qword_1EBC7C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C8A0);
  }

  return result;
}

unint64_t sub_1BBB2E3FC()
{
  result = qword_1EBC7C8B8;
  if (!qword_1EBC7C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C8B8);
  }

  return result;
}

unint64_t sub_1BBB2E450()
{
  result = qword_1EBC7C8D0;
  if (!qword_1EBC7C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C8D0);
  }

  return result;
}

uint64_t sub_1BBB2E4A4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7C8C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBB2E51C()
{
  result = qword_1EBC7C8E8;
  if (!qword_1EBC7C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C8E8);
  }

  return result;
}

uint64_t sub_1BBB2E570()
{
  sub_1BBB843D8();
  sub_1BBB2D920();
  return sub_1BBB84438();
}

double sub_1BBB2E5D4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1BBB302D4(a1, v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

BOOL sub_1BBB2E674(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v2;
  v3 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v3;
  v4 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v4;
  v5 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v5;
  v6 = a2[5];
  *&v11.m31 = a2[4];
  *&v11.m33 = v6;
  v7 = a2[7];
  *&v11.m41 = a2[6];
  *&v11.m43 = v7;
  v8 = a2[1];
  *&v11.m11 = *a2;
  *&v11.m13 = v8;
  v9 = a2[3];
  *&v11.m21 = a2[2];
  *&v11.m23 = v9;
  return CATransform3DEqualToTransform(&a, &v11);
}

uint64_t sub_1BBB2E6E4(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x1BFB16A80](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x1BFB16A80](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x1BFB16A80](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x1BFB16A80](*&v9);
}

BOOL _s21UIIntelligenceSupport33IntelligenceSnapshotConfigurationV0D6TargetV7StorageO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        sub_1BBB2EB98(*a2, *(a2 + 8), 1);
        sub_1BBB2EB98(v3, v2, 1);
        sub_1BBB2EB98(v6, v5, 1);
        sub_1BBB2EB98(v3, v2, 1);
        v8 = sub_1BBAFEE1C(v3, v6);
        sub_1BBB2EBAC(v3, v2, 1);
        sub_1BBB2EBAC(v6, v5, 1);
        sub_1BBB2EBAC(v6, v5, 1);
        sub_1BBB2EBAC(v3, v2, 1);
        return v8;
      }
    }

    else if (v7 == 2 && (v5 | v6) == 0)
    {
      sub_1BBB2EBAC(*a1, v2, 2);
      sub_1BBB2EBAC(0, 0, 2);
      return 1;
    }

    goto LABEL_19;
  }

  if (*(a2 + 16))
  {
LABEL_19:
    sub_1BBB2EB98(v6, v5, v7);
    sub_1BBB2EBAC(v3, v2, v4);
    sub_1BBB2EBAC(v6, v5, v7);
    return 0;
  }

  sub_1BBB2EBAC(*a1, v2, 0);
  sub_1BBB2EBAC(v6, v5, 0);
  return v3 == v6 && v2 == v5;
}

unint64_t sub_1BBB2E8F8()
{
  result = qword_1EBC7C910;
  if (!qword_1EBC7C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C910);
  }

  return result;
}

unint64_t sub_1BBB2E94C()
{
  result = qword_1EBC7C918;
  if (!qword_1EBC7C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C918);
  }

  return result;
}

unint64_t sub_1BBB2E9A0()
{
  result = qword_1EBC7C920;
  if (!qword_1EBC7C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C920);
  }

  return result;
}

unint64_t sub_1BBB2E9F4()
{
  result = qword_1EBC7C928;
  if (!qword_1EBC7C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C928);
  }

  return result;
}

unint64_t sub_1BBB2EA48()
{
  result = qword_1EBC7C930;
  if (!qword_1EBC7C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C930);
  }

  return result;
}

unint64_t sub_1BBB2EA9C()
{
  result = qword_1EBC7C938;
  if (!qword_1EBC7C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C938);
  }

  return result;
}

unint64_t sub_1BBB2EAF0()
{
  result = qword_1EBC7C960;
  if (!qword_1EBC7C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C960);
  }

  return result;
}

unint64_t sub_1BBB2EB44()
{
  result = qword_1EBC7C968;
  if (!qword_1EBC7C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C968);
  }

  return result;
}

uint64_t sub_1BBB2EB98(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1BBB2EBAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_1BBB2EBC0()
{
  result = qword_1EBC7C978;
  if (!qword_1EBC7C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C978);
  }

  return result;
}

unint64_t sub_1BBB2EC14()
{
  result = qword_1EBC7C980;
  if (!qword_1EBC7C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C980);
  }

  return result;
}

unint64_t sub_1BBB2EC68()
{
  result = qword_1EBC7C990;
  if (!qword_1EBC7C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C990);
  }

  return result;
}

BOOL _s21UIIntelligenceSupport33IntelligenceSnapshotConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 104);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 72);
  v18 = *(a2 + 80);
  v19 = *(a2 + 88);
  v20 = *(a2 + 96);
  v21 = *(a2 + 104);
  if (v4)
  {
    if (!v11)
    {
      return 0;
    }

    v39 = *(a1 + 48);
    v40 = *(a1 + 40);
    v33 = *(a2 + 56);
    v34 = *(a1 + 56);
    v37 = *(a2 + 64);
    v38 = *(a1 + 64);
    v35 = *(a1 + 96);
    v36 = *(a1 + 88);
    if ((*a1 != *a2 || v4 != v11) && (sub_1BBB842F8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v39 = *(a1 + 48);
    v40 = *(a1 + 40);
    v33 = *(a2 + 56);
    v34 = *(a1 + 56);
    v37 = *(a2 + 64);
    v38 = *(a1 + 64);
    v35 = *(a1 + 96);
    v36 = *(a1 + 88);
    if (v11)
    {
      return 0;
    }
  }

  a.m11 = v5;
  a.m12 = v6;
  LOBYTE(a.m13) = v7;
  b.m11 = v12;
  b.m12 = v13;
  LOBYTE(b.m13) = v14;
  sub_1BBB2EB98(*&v5, *&v6, v7);
  sub_1BBB2EB98(*&v12, *&v13, v14);
  v22 = _s21UIIntelligenceSupport33IntelligenceSnapshotConfigurationV0D6TargetV7StorageO2eeoiySbAG_AGtFZ_0(&a, &b);
  sub_1BBB2EBAC(*&b.m11, *&b.m12, SLOBYTE(b.m13));
  sub_1BBB2EBAC(*&a.m11, *&a.m12, SLOBYTE(a.m13));
  if (!v22 || (v40 != v15 || v39 != v16) && (sub_1BBB842F8() & 1) == 0)
  {
    return 0;
  }

  if (!v38)
  {
    result = 0;
    if (v37)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (!v37)
  {
    return 0;
  }

  if (v34 != v33 || v38 != v37)
  {
    v24 = sub_1BBB842F8();
    result = 0;
    if ((v24 & 1) == 0)
    {
      return result;
    }

LABEL_22:
    if (v8 != v17)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (v8 != v17)
  {
    return 0;
  }

LABEL_23:
  v43.origin.x = v9;
  v43.size.width = v35;
  v43.origin.y = v36;
  v43.size.height = v10;
  v44.origin.x = v18;
  v44.origin.y = v19;
  v44.size.width = v20;
  v44.size.height = v21;
  result = CGRectEqualToRect(v43, v44);
  if (result)
  {
    v25 = *(a1 + 192);
    *&a.m31 = *(a1 + 176);
    *&a.m33 = v25;
    v26 = *(a1 + 224);
    *&a.m41 = *(a1 + 208);
    *&a.m43 = v26;
    v27 = *(a1 + 128);
    *&a.m11 = *(a1 + 112);
    *&a.m13 = v27;
    v28 = *(a1 + 160);
    *&a.m21 = *(a1 + 144);
    *&a.m23 = v28;
    v29 = *(a2 + 192);
    *&b.m31 = *(a2 + 176);
    *&b.m33 = v29;
    v30 = *(a2 + 224);
    *&b.m41 = *(a2 + 208);
    *&b.m43 = v30;
    v31 = *(a2 + 128);
    *&b.m11 = *(a2 + 112);
    *&b.m13 = v31;
    v32 = *(a2 + 160);
    *&b.m21 = *(a2 + 144);
    *&b.m23 = v32;
    return CATransform3DEqualToTransform(&a, &b);
  }

  return result;
}

unint64_t sub_1BBB2EF10()
{
  result = qword_1EBC7C9A0;
  if (!qword_1EBC7C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C9A0);
  }

  return result;
}

unint64_t sub_1BBB2EF64()
{
  result = qword_1EBC7C9A8;
  if (!qword_1EBC7C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C9A8);
  }

  return result;
}

unint64_t sub_1BBB2EFB8()
{
  result = qword_1EBC7C9B8;
  if (!qword_1EBC7C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C9B8);
  }

  return result;
}

uint64_t sub_1BBB2F00C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBB2F0BC()
{
  result = qword_1EBC7C9C0;
  if (!qword_1EBC7C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C9C0);
  }

  return result;
}

unint64_t sub_1BBB2F114()
{
  result = qword_1EBC7C9C8;
  if (!qword_1EBC7C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C9C8);
  }

  return result;
}

unint64_t sub_1BBB2F16C()
{
  result = qword_1EBC7C9D0;
  if (!qword_1EBC7C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C9D0);
  }

  return result;
}

unint64_t sub_1BBB2F1C4()
{
  result = qword_1EBC7C9D8;
  if (!qword_1EBC7C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C9D8);
  }

  return result;
}

unint64_t sub_1BBB2F21C()
{
  result = qword_1EBC7C9E0;
  if (!qword_1EBC7C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C9E0);
  }

  return result;
}

unint64_t sub_1BBB2F274()
{
  result = qword_1EBC7C9E8;
  if (!qword_1EBC7C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C9E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21UIIntelligenceSupport33IntelligenceSnapshotConfigurationV0D6TargetV7StorageO(uint64_t a1)
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

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1BBB2F390(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBB2F3B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
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

  *(result + 136) = v3;
  return result;
}

uint64_t sub_1BBB2F42C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1BBB2F474(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BBB2F4B8(uint64_t result, unsigned int a2)
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

unint64_t sub_1BBB2F584()
{
  result = qword_1EBC7C9F0;
  if (!qword_1EBC7C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C9F0);
  }

  return result;
}

unint64_t sub_1BBB2F5DC()
{
  result = qword_1EBC7C9F8;
  if (!qword_1EBC7C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C9F8);
  }

  return result;
}

unint64_t sub_1BBB2F634()
{
  result = qword_1EBC7CA00;
  if (!qword_1EBC7CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA00);
  }

  return result;
}

unint64_t sub_1BBB2F68C()
{
  result = qword_1EBC7CA08;
  if (!qword_1EBC7CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA08);
  }

  return result;
}

unint64_t sub_1BBB2F6E4()
{
  result = qword_1EBC7CA10;
  if (!qword_1EBC7CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA10);
  }

  return result;
}

unint64_t sub_1BBB2F73C()
{
  result = qword_1EBC7CA18;
  if (!qword_1EBC7CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA18);
  }

  return result;
}

unint64_t sub_1BBB2F794()
{
  result = qword_1EBC7CA20;
  if (!qword_1EBC7CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA20);
  }

  return result;
}

unint64_t sub_1BBB2F7EC()
{
  result = qword_1EBC7CA28;
  if (!qword_1EBC7CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA28);
  }

  return result;
}

unint64_t sub_1BBB2F844()
{
  result = qword_1EBC7CA30;
  if (!qword_1EBC7CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA30);
  }

  return result;
}

unint64_t sub_1BBB2F89C()
{
  result = qword_1EBC7CA38;
  if (!qword_1EBC7CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA38);
  }

  return result;
}

unint64_t sub_1BBB2F8F4()
{
  result = qword_1EBC7CA40;
  if (!qword_1EBC7CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA40);
  }

  return result;
}

unint64_t sub_1BBB2F94C()
{
  result = qword_1EBC7CA48;
  if (!qword_1EBC7CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA48);
  }

  return result;
}

unint64_t sub_1BBB2F9A4()
{
  result = qword_1EBC7CA50;
  if (!qword_1EBC7CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA50);
  }

  return result;
}

unint64_t sub_1BBB2F9FC()
{
  result = qword_1EBC7CA58;
  if (!qword_1EBC7CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA58);
  }

  return result;
}

unint64_t sub_1BBB2FA54()
{
  result = qword_1EBC7CA60;
  if (!qword_1EBC7CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA60);
  }

  return result;
}

unint64_t sub_1BBB2FAAC()
{
  result = qword_1EBC7CA68;
  if (!qword_1EBC7CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA68);
  }

  return result;
}

unint64_t sub_1BBB2FB04()
{
  result = qword_1EBC7CA70;
  if (!qword_1EBC7CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA70);
  }

  return result;
}

unint64_t sub_1BBB2FB5C()
{
  result = qword_1EBC7CA78;
  if (!qword_1EBC7CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA78);
  }

  return result;
}

unint64_t sub_1BBB2FBB4()
{
  result = qword_1EBC7CA80;
  if (!qword_1EBC7CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA80);
  }

  return result;
}

unint64_t sub_1BBB2FC0C()
{
  result = qword_1EBC7CA88;
  if (!qword_1EBC7CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA88);
  }

  return result;
}

unint64_t sub_1BBB2FC64()
{
  result = qword_1EBC7CA90;
  if (!qword_1EBC7CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA90);
  }

  return result;
}

unint64_t sub_1BBB2FCBC()
{
  result = qword_1EBC7CA98;
  if (!qword_1EBC7CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CA98);
  }

  return result;
}

unint64_t sub_1BBB2FD14()
{
  result = qword_1EBC7CAA0;
  if (!qword_1EBC7CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CAA0);
  }

  return result;
}

unint64_t sub_1BBB2FD6C()
{
  result = qword_1EBC7CAA8;
  if (!qword_1EBC7CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CAA8);
  }

  return result;
}

unint64_t sub_1BBB2FDC4()
{
  result = qword_1EBC7CAB0;
  if (!qword_1EBC7CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CAB0);
  }

  return result;
}

unint64_t sub_1BBB2FE1C()
{
  result = qword_1EBC7CAB8;
  if (!qword_1EBC7CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CAB8);
  }

  return result;
}

unint64_t sub_1BBB2FE74()
{
  result = qword_1EBC7CAC0;
  if (!qword_1EBC7CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CAC0);
  }

  return result;
}

unint64_t sub_1BBB2FEC8()
{
  result = qword_1EBC7CAD0;
  if (!qword_1EBC7CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CAD0);
  }

  return result;
}

uint64_t sub_1BBB2FF1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C747865746E6F63 && a2 == 0xEB00000000747369 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6565726373 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBB842F8();

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

uint64_t sub_1BBB30030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746F687370616E73 && a2 == 0xEC000000656D614ELL;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1BBB842F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BBB9C640 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1952671090 && a2 == 0xE400000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BBB9C620 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1BBB842F8();

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

uint64_t sub_1BBB30288()
{
  v0 = sub_1BBB84108();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBB302D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CAD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB2FEC8();
  sub_1BBB84458();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  sub_1BBAA7A60();
  sub_1BBB841B8();
  v9 = v32;
  v31 = 1;
  sub_1BBB841B8();
  v10 = v32;
  v31 = 2;
  sub_1BBB841B8();
  v11 = v32;
  v31 = 3;
  sub_1BBB841B8();
  v12 = v32;
  v31 = 4;
  sub_1BBB841B8();
  v13 = v32;
  v31 = 5;
  sub_1BBB841B8();
  v14 = v32;
  v31 = 6;
  sub_1BBB841B8();
  v15 = v32;
  v31 = 7;
  sub_1BBB841B8();
  v16 = v32;
  v31 = 8;
  sub_1BBB841B8();
  v30 = v32;
  v31 = 9;
  sub_1BBB841B8();
  v29 = v32;
  v31 = 10;
  sub_1BBB841B8();
  v28 = v32;
  v31 = 11;
  sub_1BBB841B8();
  v27 = v32;
  v31 = 12;
  sub_1BBB841B8();
  v26 = v32;
  v31 = 13;
  sub_1BBB841B8();
  v25 = v32;
  v31 = 14;
  sub_1BBB841B8();
  v24 = v32;
  v31 = 15;
  sub_1BBB841B8();
  (*(v6 + 8))(v8, v5);
  v23 = v32;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v14;
  a2[6] = v15;
  a2[7] = v16;
  v18 = v29;
  a2[8] = v30;
  a2[9] = v18;
  v19 = v27;
  a2[10] = v28;
  a2[11] = v19;
  v20 = v25;
  a2[12] = v26;
  a2[13] = v20;
  v21 = v23;
  a2[14] = v24;
  a2[15] = v21;
  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceTransform3D.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntelligenceTransform3D.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BBB309B8()
{
  result = qword_1EBC7CAE0;
  if (!qword_1EBC7CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CAE0);
  }

  return result;
}

unint64_t sub_1BBB30A10()
{
  result = qword_1EBC7CAE8;
  if (!qword_1EBC7CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CAE8);
  }

  return result;
}

unint64_t sub_1BBB30A68()
{
  result = qword_1EBC7CAF0;
  if (!qword_1EBC7CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CAF0);
  }

  return result;
}

void IntelligenceCollectionCoordinator.finishCollection(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  sub_1BBB31EFC((v1 + 16), v2);
  os_unfair_lock_unlock((v1 + 32));
  if (v2[2])
  {
    sub_1BBB333BC(v2);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall IntelligenceCollectionCoordinator.AsyncTask.complete()()
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = *(v1 + 4);
  if (qword_1ED6BF1F8 != -1)
  {
    v0 = swift_once();
  }

  v3 = *(off_1ED6BF200 + 2);
  MEMORY[0x1EEE9AC00](v0);
  os_unfair_lock_lock((v3 + 32));
  sub_1BBAB28E8((v3 + 16), v4);
  os_unfair_lock_unlock((v3 + 32));
  if (v4[2])
  {
    sub_1BBB333BC(v4);
    swift_unknownObjectRelease();
  }
}

uint64_t static IntelligenceCollectionCoordinator.shared.getter()
{
  if (qword_1ED6BF1F8 != -1)
  {
    swift_once();
  }
}

uint64_t IntelligenceCollectionCoordinator.createCollector(remoteContextWrapper:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21UIIntelligenceSupport44UIIntelligenceCollectionRemoteContextWrapper_remoteContext;
  swift_beginAccess();
  v5 = *(a1 + v2);

  v3 = IntelligenceCollectionCoordinator.createCollector(remoteContext:)(&v5);

  return v3;
}

uint64_t IntelligenceCollectionCoordinator.createCollector(remoteContext:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = (*a1 + *(**a1 + 88));
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  v35 = v7;
  type metadata accessor for IntelligenceFragmentCollector();
  swift_allocObject();

  v11 = IntelligenceFragmentCollector.init(remoteContext:)(&v35);
  if (qword_1ED6BDE98 != -1)
  {
    swift_once();
  }

  v12 = sub_1BBB83758();
  __swift_project_value_buffer(v12, qword_1ED6BDEA0);

  v13 = sub_1BBB83738();
  v14 = sub_1BBB83D58();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v2;
    v17 = v16;
    *v15 = 136446722;
    v35 = 0;
    v36 = 0xE000000000000000;
    v37[0] = v16;
    sub_1BBB84028();

    v35 = 0xD000000000000020;
    v36 = 0x80000001BBB9C660;
    v34 = v11;
    v18 = sub_1BBB83A78();
    v32 = v9;
    v19 = v10;
    MEMORY[0x1BFB16150](v18);

    MEMORY[0x1BFB16150](62, 0xE100000000000000);
    v20 = sub_1BBA85E50(v35, v36, v37);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    v21 = _s13RemoteContextV7StorageVMa(0);
    sub_1BBB33960(v8 + *(v21 + 20), v6, type metadata accessor for IntelligenceFragment.RemoteID);
    v22 = IntelligenceFragment.RemoteID.description.getter();
    v24 = v23;
    sub_1BBACD424(v6);
    v25 = sub_1BBA85E50(v22, v24, v37);

    *(v15 + 14) = v25;
    *(v15 + 22) = 2082;
    v10 = v19;
    v9 = v32;
    v35 = __PAIR64__(v32, v10);
    v26 = RequestID.debugDescription.getter();
    v28 = sub_1BBA85E50(v26, v27, v37);

    *(v15 + 24) = v28;
    _os_log_impl(&dword_1BBA81000, v13, v14, "created remote %{public}s for %{public}s of %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    v29 = v17;
    v2 = v33;
    MEMORY[0x1BFB174E0](v29, -1, -1);
    MEMORY[0x1BFB174E0](v15, -1, -1);
  }

  v30 = *(v2 + 16);
  os_unfair_lock_lock((v30 + 32));
  sub_1BBB3110C((v30 + 16), v10 | (v9 << 32), v11);
  os_unfair_lock_unlock((v30 + 32));
  return v11;
}

uint64_t sub_1BBB3110C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1BBA98B58(a2), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 48 * v7);
    v10 = v9[1];
    v12 = v9[2];
    v11 = v9[3];
    v14 = v9[4];
    v13 = v9[5];
    v25 = *v9;

    swift_unknownObjectRetain();
  }

  else
  {
    v15 = [objc_opt_self() processInfo];
    v16 = sub_1BBB839E8();
    v13 = [v15 beginActivityWithOptions:0xFFFFFFLL reason:v16];

    v25 = MEMORY[0x1E69E7CD0];
    type metadata accessor for IntelligenceSupportAgentXPCConnection();
    swift_allocObject();
    v14 = sub_1BBA82D48();
    v12 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC8];
    v10 = MEMORY[0x1E69E7CC0];
  }

  sub_1BBA9846C(&v20, a3);

  *&v20 = v25;
  *(&v20 + 1) = v10;
  v21 = v12;
  v22 = v11;
  v23 = v14;
  v24 = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a1;
  sub_1BBA989F4(&v20, a2, isUniquelyReferenced_nonNull_native);

  *a1 = v19;
  return result;
}

CFRunLoopRef IntelligenceCollectionCoordinator.createCollector(remoteContextWrapper:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC21UIIntelligenceSupport44UIIntelligenceCollectionRemoteContextWrapper_remoteContext;
  swift_beginAccess();
  aBlock[0] = *(a1 + v6);

  v7 = IntelligenceCollectionCoordinator.createCollector(remoteContext:)(aBlock);

  result = CFRunLoopGetMain();
  if (result)
  {
    v9 = result;
    result = swift_allocObject();
    *(result + 2) = a2;
    *(result + 3) = a3;
    *(result + 4) = v7;
    v10 = *MEMORY[0x1E695E8D0];
    if (*MEMORY[0x1E695E8D0])
    {
      aBlock[4] = sub_1BBB33B94;
      aBlock[5] = result;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BBA83B58;
      aBlock[3] = &block_descriptor_3;
      v11 = _Block_copy(aBlock);

      CFRunLoopPerformBlock(v9, v10, v11);
      _Block_release(v11);
      CFRunLoopWakeUp(v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

CFRunLoopRef IntelligenceCollectionCoordinator.createCollector(remoteContext:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v10[0] = *a1;
  v5 = IntelligenceCollectionCoordinator.createCollector(remoteContext:)(v10);
  result = CFRunLoopGetMain();
  if (result)
  {
    v7 = result;
    result = swift_allocObject();
    *(result + 2) = a2;
    *(result + 3) = a3;
    *(result + 4) = v5;
    v8 = *MEMORY[0x1E695E8D0];
    if (*MEMORY[0x1E695E8D0])
    {
      v10[4] = sub_1BBB3377C;
      v10[5] = result;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1107296256;
      v10[2] = sub_1BBA83B58;
      v10[3] = &block_descriptor_6;
      v9 = _Block_copy(v10);

      CFRunLoopPerformBlock(v7, v8, v9);
      _Block_release(v9);
      CFRunLoopWakeUp(v7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BBB315E8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a1;
  v6 = *(a2 + 16);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_1BBB154E8(v6 + v7);
  if (v3)
  {
    os_unfair_lock_unlock((v6 + v8));
    __break(1u);
    goto LABEL_28;
  }

  os_unfair_lock_unlock((v6 + v8));
  v9 = *(a2 + 104);
  v10 = *(a2 + 136);
  v72[6] = *(a2 + 120);
  v73[0] = v10;
  *(v73 + 15) = *(a2 + 151);
  v11 = *(a2 + 40);
  v12 = *(a2 + 72);
  v72[2] = *(a2 + 56);
  v72[3] = v12;
  v72[4] = *(a2 + 88);
  v72[5] = v9;
  v72[0] = *(a2 + 24);
  v72[1] = v11;
  v13 = *(a2 + 104);
  v14 = *(a2 + 136);
  v74[6] = *(a2 + 120);
  v75[0] = v14;
  *(v75 + 15) = *(a2 + 151);
  v15 = *(a2 + 40);
  v16 = *(a2 + 72);
  v74[2] = *(a2 + 56);
  v74[3] = v16;
  v74[4] = *(a2 + 88);
  v74[5] = v13;
  v74[0] = *(a2 + 24);
  v74[1] = v15;
  v17 = sub_1BBA87258(v74);
  v18 = sub_1BBA87034(v74);
  v19 = v18;
  if (v17 == 1)
  {
    v20 = *v18;
    v21 = &protocol witness table for IntelligenceFragment.RemoteContext;
    v22 = &type metadata for IntelligenceFragment.RemoteContext;
  }

  else
  {
    v20 = swift_allocObject();
    v20[1] = *v19;
    v23 = v19[4];
    v25 = v19[1];
    v24 = v19[2];
    v20[4] = v19[3];
    v20[5] = v23;
    v20[2] = v25;
    v20[3] = v24;
    v27 = v19[6];
    v26 = v19[7];
    v28 = v19[5];
    *(v20 + 143) = *(v19 + 127);
    v20[7] = v27;
    v20[8] = v26;
    v20[6] = v28;
    v21 = &protocol witness table for IntelligenceFragment.LocalContext;
    v22 = &type metadata for IntelligenceFragment.LocalContext;
  }

  v71[3] = v22;
  v71[4] = v21;
  v71[0] = v20;
  __swift_project_boxed_opaque_existential_1(v71, v22);
  v29 = v21[1];
  sub_1BBA98F54(v72, v70);
  v29(v70);
  sub_1BBA96D48(v70);
  v30 = LODWORD(v70[0]);
  v31 = DWORD1(v70[0]);
  __swift_destroy_boxed_opaque_existential_1(v71);
  v32 = *v86;
  if (*(*v86 + 16))
  {
    v33 = sub_1BBA98B58(v30 | (v31 << 32));
    if (v34)
    {
      v66 = v30 | (v31 << 32);
      v35 = (*(v32 + 56) + 48 * v33);
      v36 = v35[2];
      v37 = v35[3];
      v38 = v35[5];
      v68 = v35[1];
      v69 = *v35;
      v67 = v35[4];

      swift_unknownObjectRetain();
      if (sub_1BBB32FB0(a2))
      {

        MEMORY[0x1BFB16220](v39);
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BBB83BE8();
        }

        sub_1BBB83C08();
        if (qword_1ED6BDE98 != -1)
        {
          swift_once();
        }

        v40 = sub_1BBB83758();
        __swift_project_value_buffer(v40, qword_1ED6BDEA0);
        *&v81 = v69;
        *(&v81 + 1) = v68;
        v82 = v36;
        v83 = v37;
        v84 = v67;
        v85 = v38;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v41 = sub_1BBB83738();
        v42 = sub_1BBB83D58();

        v65 = v42;
        v43 = v42;
        v44 = v41;
        if (os_log_type_enabled(v41, v43))
        {
          v45 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *&v76 = v64;
          *v45 = 136446722;
          v79 = 0;
          v80 = 0xE000000000000000;
          sub_1BBB84028();

          v79 = 0xD000000000000020;
          v80 = 0x80000001BBB9C660;
          v46 = sub_1BBB83A78();
          MEMORY[0x1BFB16150](v46);

          MEMORY[0x1BFB16150](62, 0xE100000000000000);
          v47 = sub_1BBA85E50(v79, v80, &v76);

          *(v45 + 4) = v47;
          *(v45 + 12) = 2082;
          v79 = __PAIR64__(v31, v30);
          v48 = RequestID.debugDescription.getter();
          v50 = sub_1BBA85E50(v48, v49, &v76);

          *(v45 + 14) = v50;
          *(v45 + 22) = 2050;
          if ((v69 & 0xC000000000000001) != 0)
          {
            v51 = sub_1BBB83F78();
          }

          else
          {
            v51 = *(v69 + 16);
          }

          swift_unknownObjectRelease();

          *(v45 + 24) = v51;
          swift_unknownObjectRelease();

          _os_log_impl(&dword_1BBA81000, v44, v65, "finished %{public}s for %{public}s; collectors still pending: %{public}ld", v45, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1BFB174E0](v64, -1, -1);
          MEMORY[0x1BFB174E0](v45, -1, -1);
        }

        else
        {

          swift_unknownObjectRelease_n();

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v60 = v86;
        v61 = v86[1];
        v79 = __PAIR64__(v31, v30);
        sub_1BBAB3C6C(v61, &v79, &v76);
        if (v77)
        {
          sub_1BBAE45CC(v66, &v79);
          sub_1BBA8BCC4(&v79, &qword_1EBC7CB08);
        }

        else
        {

          swift_unknownObjectRetain();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v79 = *v60;
          sub_1BBA989F4(&v81, v66, isUniquelyReferenced_nonNull_native);

          *v60 = v79;
        }

        swift_unknownObjectRelease();
        v63 = v77;
        *a3 = v76;
        *(a3 + 16) = v63;
        *(a3 + 32) = v78;
        return;
      }

LABEL_28:
      sub_1BBB840A8();
      __break(1u);
      return;
    }
  }

  if (qword_1ED6BDE98 != -1)
  {
    swift_once();
  }

  v52 = sub_1BBB83758();
  __swift_project_value_buffer(v52, qword_1ED6BDEA0);
  v53 = sub_1BBB83738();
  v54 = sub_1BBB83D48();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v81 = v56;
    *v55 = 136446210;
    v79 = __PAIR64__(v31, v30);
    v57 = RequestID.debugDescription.getter();
    v59 = sub_1BBA85E50(v57, v58, &v81);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_1BBA81000, v53, v54, "ignoring finished collection for untracked request: %{public}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x1BFB174E0](v56, -1, -1);
    MEMORY[0x1BFB174E0](v55, -1, -1);
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
}

uint64_t sub_1BBB31F18()
{
  v0 = sub_1BBB83D98();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1BBB83DA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BBB83878();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1BBAB0F08(0, &qword_1ED6BF090);
  sub_1BBB83868();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v1);
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1BBAB0E6C(&unk_1ED6BDE78, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7CB40);
  sub_1BBAB0EB4(&qword_1ED6BDE88, &unk_1EBC7CB40);
  sub_1BBB83F28();
  result = sub_1BBB83DC8();
  qword_1ED6BDF18 = result;
  return result;
}

void sub_1BBB32178()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceFragment();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[2];
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_15:
    if (!*(v1 + 8))
    {
      if (*v1)
      {
        v19 = *(v1 + 24);

        sub_1BBAA3854(v8, v19);

        goto LABEL_19;
      }

      sub_1BBB32E64();
    }

    v18 = *(v1 + 24);

    sub_1BBAA3854(v8, v18);

    sub_1BBA85620();

LABEL_19:
    v20 = [objc_opt_self() processInfo];
    [v20 endActivity_];

    return;
  }

  v9 = v6;
  v26 = MEMORY[0x1E69E7CC0];
  sub_1BBAE4F80(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v8 = v26;
    v11 = v9;
    v25 = v9 & 0xC000000000000001;
    v23 = v1;
    v24 = v9 & 0xFFFFFFFFFFFFFF8;
    v12 = v9;
    while (1)
    {
      if (v25)
      {
        v13 = MEMORY[0x1BFB16690](v10, v11);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v21 = v6;
          v22 = sub_1BBB83F78();
          v6 = v21;
          v7 = v22;
          goto LABEL_3;
        }

        if (v10 >= *(v24 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 8 * v10 + 32);
      }

      v14 = *(v13 + 16);
      v15 = *(*v14 + *MEMORY[0x1E69E6B68] + 16);
      v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v14 + v16));
      sub_1BBB33960(v14 + v15, v5, type metadata accessor for IntelligenceFragment);
      os_unfair_lock_unlock((v14 + v16));

      v26 = v8;
      v1 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v1 >= v17 >> 1)
      {
        sub_1BBAE4F80(v17 > 1, v1 + 1, 1);
        v8 = v26;
      }

      ++v10;
      *(v8 + 16) = v1 + 1;
      sub_1BBB339C8(v5, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1);
      v11 = v12;
      if (v7 == v10)
      {
        v1 = v23;
        goto LABEL_15;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1BBB32498()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB50);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_1ED6BDAF0 = result;
  return result;
}

double IntelligenceCollectionCoordinator.AsyncTask.requestID.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

uint64_t IntelligenceCollectionCoordinator.AsyncTask.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IntelligenceCollectionCoordinator.AsyncTask.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

uint64_t IntelligenceCollectionCoordinator.beginAsyncTask(for:timeout:description:)@<X0>(_OWORD *a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v36 = a2;
  v10 = sub_1BBB838D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = a1[7];
  v42[6] = a1[6];
  v43[0] = v20;
  *(v43 + 15) = *(a1 + 127);
  v21 = a1[3];
  v42[2] = a1[2];
  v42[3] = v21;
  v22 = a1[5];
  v42[4] = a1[4];
  v42[5] = v22;
  v23 = a1[1];
  v42[0] = *a1;
  v42[1] = v23;
  v24 = *(v11 + 56);
  v24(&v35 - v18, 1, 1, v10);
  if ((a3 & 1) == 0)
  {
    if (v36 <= 0.0)
    {
      goto LABEL_9;
    }

    sub_1BBB838B8();
    sub_1BBB838E8();
    (*(v11 + 8))(v13, v10);
    sub_1BBA8BCC4(v19, &qword_1EBC7CB00);
    v24(v16, 0, 1, v10);
    sub_1BBB337B0(v16, v19);
  }

  v25 = v42[0];
  v26 = DWORD1(v42[0]);
  if (qword_1ED6BDAE8 != -1)
  {
    swift_once();
  }

  v27 = off_1ED6BDAF0;
  os_unfair_lock_lock(off_1ED6BDAF0 + 6);
  v28 = *(v27 + 2);
  if (!__OFADD__(v28, 1))
  {
    *(v27 + 2) = v28 + 1;
    os_unfair_lock_unlock(v27 + 6);

    v29 = mach_continuous_time();
    *&v39 = v28;
    *(&v39 + 1) = __PAIR64__(v26, v25);
    *&v40 = v37;
    *(&v40 + 1) = a5;
    v41 = v29;
    v30 = *(v38 + 16);
    MEMORY[0x1EEE9AC00](v29);
    *(&v35 - 12) = v25;
    *(&v35 - 11) = v26;
    *(&v35 - 5) = &v39;
    *(&v35 - 4) = v19;
    *(&v35 - 3) = v42;
    v34 = v31;
    os_unfair_lock_lock((v30 + 32));
    sub_1BBADAD20((v30 + 16));
    os_unfair_lock_unlock((v30 + 32));
    v32 = v40;
    *a6 = v39;
    *(a6 + 16) = v32;
    *(a6 + 32) = v41;
    return sub_1BBA8BCC4(v19, &qword_1EBC7CB00);
  }

  __break(1u);
LABEL_9:
  *&v39 = 0;
  *(&v39 + 1) = 0xE000000000000000;
  sub_1BBB84028();
  MEMORY[0x1BFB16150](0xD000000000000023, 0x80000001BBB9C710);
  sub_1BBB83C98();
  result = sub_1BBB840A8();
  __break(1u);
  return result;
}

void IntelligenceCollectionCoordinator.beginAsyncTask(for:deadline:description:)(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = HIDWORD(*a1);
  if (qword_1ED6BDAE8 != -1)
  {
    swift_once();
  }

  v10 = off_1ED6BDAF0;
  os_unfair_lock_lock(off_1ED6BDAF0 + 6);
  v11 = *(v10 + 2);
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    *(v10 + 2) = v11 + 1;
    os_unfair_lock_unlock(v10 + 6);

    *&v13 = v11;
    *(&v13 + 1) = __PAIR64__(v9, v8);
    *&v14 = a2;
    *(&v14 + 1) = a3;
    v15 = mach_continuous_time();
    v12 = *(v4 + 16);
    MEMORY[0x1EEE9AC00](v15);
    os_unfair_lock_lock((v12 + 32));
    sub_1BBADB428((v12 + 16));
    os_unfair_lock_unlock((v12 + 32));
    *a4 = v13;
    *(a4 + 16) = v14;
    *(a4 + 32) = v15;
  }
}

uint64_t sub_1BBB32B50()
{
  v0 = sub_1BBB83D98();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1BBB83DA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BBB83878();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1BBAB0F08(0, &qword_1ED6BF090);
  sub_1BBB83868();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v1);
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1BBAB0E6C(&unk_1ED6BDE78, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7CB40);
  sub_1BBAB0EB4(&qword_1ED6BDE88, &unk_1EBC7CB40);
  sub_1BBB83F28();
  result = sub_1BBB83DC8();
  qword_1ED6BDB08 = result;
  return result;
}

void sub_1BBB32DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock((v1 + 32));
  sub_1BBAB2908((v1 + 16), v2);
  os_unfair_lock_unlock((v1 + 32));
  if (v2[2])
  {
    sub_1BBB333BC(v2);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BBB32E64()
{
  if (qword_1ED6BDE98 != -1)
  {
    swift_once();
  }

  v0 = sub_1BBB83758();
  __swift_project_value_buffer(v0, qword_1ED6BDEA0);
  v1 = sub_1BBB83738();
  v2 = sub_1BBB83D48();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BBA81000, v1, v2, "missing both remote and primary connections; creating temporary connection as fallback", v3, 2u);
    MEMORY[0x1BFB174E0](v3, -1, -1);
  }

  type metadata accessor for IntelligenceSupportAgentXPCConnection();
  swift_allocObject();
  return sub_1BBA82D48();
}

uint64_t IntelligenceCollectionCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BBB32FB0(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_1BBB83FA8();

    if (v5)
    {
      v6 = sub_1BBB33120(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](a1);
  v8 = sub_1BBB84438();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (*(*(v3 + 48) + 8 * v10) != a1)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BBAF861C();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_1BBB33214(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_1BBB33120(uint64_t a1, uint64_t a2)
{

  v4 = sub_1BBB83F78();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1BBAF7094(v5, v4);
  v14 = v6;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](a2);
  v7 = sub_1BBB84438();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 48);
    while (1)
    {
      v6 = *(v12 + 8 * v10);
      if (v6 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  sub_1BBB33214(v10);
  *v2 = v14;
  return v6;
}

unint64_t sub_1BBB33214(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1BBB83F48();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1BBB843D8();
        MEMORY[0x1BFB16A50](v10);
        v11 = sub_1BBB84438() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1BBB333BC(void *a1)
{
  v2 = sub_1BBB83828();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BBB83878();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED6BDF10 != -1)
  {
    swift_once();
  }

  v15[1] = qword_1ED6BDF18;
  v9 = *a1;
  v21 = a1[1];
  v22 = v9;
  v10 = a1[2];
  v19 = a1[3];
  v20 = v10;
  v11 = swift_allocObject();
  v12 = *(a1 + 1);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = a1[4];
  aBlock[4] = sub_1BBB3393C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBA83B58;
  aBlock[3] = &block_descriptor_27;
  v13 = _Block_copy(aBlock);
  sub_1BBA8BC5C(&v22, &v17, &qword_1EBC7CB58);
  sub_1BBA8BC5C(&v21, &v17, &qword_1EBC7CB58);
  sub_1BBA8BC5C(&v20, &v17, &qword_1EBC7CB60);
  sub_1BBA8BC5C(&v19, &v17, &qword_1EBC7CB68);
  swift_unknownObjectRetain();
  sub_1BBB83858();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1BBAB0E6C(&qword_1ED6BF0A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7CB30);
  sub_1BBAB0EB4(&qword_1ED6BF098, &unk_1EBC7CB30);
  sub_1BBB83F28();
  MEMORY[0x1BFB16410](0, v8, v5, v13);
  _Block_release(v13);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v16);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BBB337B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BBB33824()
{
  result = qword_1ED6BDAD8;
  if (!qword_1ED6BDAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDAD8);
  }

  return result;
}

uint64_t sub_1BBB338AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BBB338F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BBB33960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBB339C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFragment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBB33A2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BBB33A88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BBB33AE8(uint64_t *a1, int a2)
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

uint64_t sub_1BBB33B30(uint64_t result, int a2, int a3)
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

void Logger.error(public:error:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v5 = sub_1BBB83258();

  v6 = [v5 localizedDescription];
  v7 = sub_1BBB83A18();
  v9 = v8;

  v10 = a1();
  if (v11)
  {
    v12 = v11;
    v13 = v10;
    v34 = v5;

    v14 = sub_1BBB83738();
    v15 = sub_1BBB83D48();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136446979;
      v18 = sub_1BBA85E50(v13, v12, &v35);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      v19 = [v34 domain];
      v20 = sub_1BBB83A18();
      v22 = v21;

      v23 = sub_1BBA85E50(v20, v22, &v35);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2048;
      v24 = [v34 code];

      *(v16 + 24) = v24;
      *(v16 + 32) = 2081;
      v25 = sub_1BBA85E50(v7, v9, &v35);

      *(v16 + 34) = v25;
      _os_log_impl(&dword_1BBA81000, v14, v15, "%{public}s: %{public}s (%ld) %{private}s", v16, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      MEMORY[0x1BFB174E0](v17, -1, -1);
      MEMORY[0x1BFB174E0](v16, -1, -1);

      return;
    }
  }

  else
  {
    v34 = v5;

    v14 = sub_1BBB83738();
    v26 = sub_1BBB83D48();

    if (os_log_type_enabled(v14, v26))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136446723;
      v27 = [v34 domain];
      v28 = sub_1BBB83A18();
      v30 = v29;

      v31 = sub_1BBA85E50(v28, v30, &v35);

      *(v16 + 4) = v31;
      *(v16 + 12) = 2048;
      v32 = [v34 code];

      *(v16 + 14) = v32;
      *(v16 + 22) = 2081;
      v33 = sub_1BBA85E50(v7, v9, &v35);

      *(v16 + 24) = v33;
      _os_log_impl(&dword_1BBA81000, v14, v26, "%{public}s (%ld) %{private}s", v16, 0x20u);
      goto LABEL_6;
    }
  }
}

uint64_t sub_1BBB340C0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1BBB34134(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1BBA85E50(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1BBB34190(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BBB341DC(a1, a2);
  sub_1BBB3430C(&unk_1F3AAA278);
  return v3;
}

uint64_t sub_1BBB341DC(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BBB102BC(v5, 0);
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

  result = sub_1BBB84088();
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
        v10 = sub_1BBB83B08();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BBB102BC(v10, 0);
        result = sub_1BBB84018();
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

uint64_t sub_1BBB3430C(uint64_t result)
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

  result = sub_1BBB343F8(result, v11, 1, v3);
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

char *sub_1BBB343F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C3B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1BBB344EC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1BBB344FC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1BBB3451C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t IntelligenceElement.Document.file.getter()
{
  v1 = _s8DocumentV15InternalBackingOMa(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = _s8DocumentV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(*v7 + 88);
  swift_beginAccess();
  sub_1BBB34B48(v7 + v8, v6, _s8DocumentV7StorageVMa);
  sub_1BBB34AE0(v6, v3, _s8DocumentV15InternalBackingOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90);
    v10 = 0;
  }

  else
  {
    v10 = *v3;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98);
  }

  sub_1BBB3B8E8(v3 + *(v9 + 48), type metadata accessor for IntelligenceFile.Attributes);
  return v10;
}

uint64_t IntelligenceElement.Document.name.getter()
{
  v1 = _s8DocumentV15InternalBackingOMa(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = _s8DocumentV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(*v7 + 88);
  swift_beginAccess();
  sub_1BBB34B48(v7 + v8, v6, _s8DocumentV7StorageVMa);
  sub_1BBB34AE0(v6, v3, _s8DocumentV15InternalBackingOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v3;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90) + 48);
  }

  else
  {
    v11 = *v3;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98) + 48);
    v9 = *(v11 + 16);
  }

  sub_1BBB3B8E8(v3 + v10, type metadata accessor for IntelligenceFile.Attributes);
  return v9;
}

uint64_t IntelligenceElement.Document.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = _s8DocumentV15InternalBackingOMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = _s8DocumentV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *(*v9 + 88);
  swift_beginAccess();
  sub_1BBB34B48(v9 + v10, v8, _s8DocumentV7StorageVMa);
  sub_1BBB34AE0(v8, v5, _s8DocumentV15InternalBackingOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90);
    return sub_1BBB34AE0(v5 + *(v11 + 48), a1, type metadata accessor for IntelligenceFile.Attributes);
  }

  else
  {
    v13 = *v5;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98) + 48);
    sub_1BBB34B48(v13 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, a1, type metadata accessor for IntelligenceFile.Attributes);

    return sub_1BBB3B8E8(v5 + v14, type metadata accessor for IntelligenceFile.Attributes);
  }
}

uint64_t sub_1BBB34AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBB34B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t IntelligenceElement.Document.sourceAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = _s8DocumentV15InternalBackingOMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s8DocumentV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *(*v9 + 88);
  swift_beginAccess();
  sub_1BBB34B48(v9 + v10, v8, _s8DocumentV7StorageVMa);
  sub_1BBB34AE0(v8, v5, _s8DocumentV15InternalBackingOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v11 = &qword_1EBC7CB90;
  }

  else
  {

    v11 = &qword_1EBC7CB98;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v11);
  return sub_1BBB34AE0(&v5[*(v12 + 48)], a1, type metadata accessor for IntelligenceFile.Attributes);
}

uint64_t IntelligenceElement.Document.PaginationInfo.visiblePages.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return result;
}

uint64_t IntelligenceElement.Document.PaginationInfo.init(totalPages:visiblePages:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t static IntelligenceElement.Document.PaginationInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    if (*(a1 + 24))
    {
      if (*(a2 + 24))
      {
        return 1;
      }
    }

    else if ((*(a2 + 24) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BBB34E24()
{
  if (*v0)
  {
    return 0x50656C6269736976;
  }

  else
  {
    return 0x6761506C61746F74;
  }
}

uint64_t sub_1BBB34E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6761506C61746F74 && a2 == 0xEA00000000007365;
  if (v6 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x50656C6269736976 && a2 == 0xEC00000073656761)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBB842F8();

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

uint64_t sub_1BBB34F54(uint64_t a1)
{
  v2 = sub_1BBB351A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB34F90(uint64_t a1)
{
  v2 = sub_1BBB351A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Document.PaginationInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBA0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *(v1 + 8);
  v11 = *(v1 + 16);
  v12 = v8;
  v16 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB351A0();
  sub_1BBB84478();
  LOBYTE(v13) = 0;
  sub_1BBB84278();
  if (!v2)
  {
    v13 = v12;
    v14 = v11;
    v15 = v16;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBB0);
    sub_1BBB353F4(&qword_1EBC7CBB8);
    sub_1BBB84238();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BBB351A0()
{
  result = qword_1EBC7CBA8;
  if (!qword_1EBC7CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CBA8);
  }

  return result;
}

uint64_t IntelligenceElement.Document.PaginationInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB351A0();
  sub_1BBB84458();
  if (!v2)
  {
    LOBYTE(v13) = 0;
    v9 = sub_1BBB841A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBB0);
    v15 = 1;
    sub_1BBB353F4(&qword_1EBC7CBC8);
    sub_1BBB84178();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    v11 = v13;
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB353F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7CBB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBB35460(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    if (*(a1 + 24))
    {
      if (*(a2 + 24))
      {
        return 1;
      }
    }

    else if ((*(a2 + 24) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
    {
      return 1;
    }
  }

  return 0;
}

__n128 IntelligenceElement.Document.paginationInfo.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v4 = (v3 + *(_s8DocumentV7StorageVMa(0) + 20));
  v5 = v4[1].n128_u64[0];
  v6 = v4[1].n128_u8[8];
  v7 = v4[1].n128_u8[9];
  result = *v4;
  *a1 = *v4;
  a1[1].n128_u64[0] = v5;
  a1[1].n128_u8[8] = v6;
  a1[1].n128_u8[9] = v7;
  return result;
}

__n128 sub_1BBB35564@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = (v3 + *(_s8DocumentV7StorageVMa(0) + 20));
  v5 = v4[1].n128_u64[0];
  v6 = v4[1].n128_u8[8];
  v7 = v4[1].n128_u8[9];
  result = *v4;
  *a2 = *v4;
  a2[1].n128_u64[0] = v5;
  a2[1].n128_u8[8] = v6;
  a2[1].n128_u8[9] = v7;
  return result;
}

uint64_t IntelligenceElement.Document.paginationInfo.setter(__int128 *a1)
{
  v3 = _s8DocumentV7StorageVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 24);
  LOBYTE(a1) = *(a1 + 25);
  v9 = *v1;
  v10 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBB34B48(v9 + v10, v6, _s8DocumentV7StorageVMa);
  v11 = &v6[*(v4 + 28)];
  *v11 = v16;
  *(v11 + 2) = v7;
  v11[24] = v8;
  v11[25] = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v12 = *v1;
    v13 = *(*v12 + 88);
    swift_beginAccess();
    sub_1BBB357A4(v6, v12 + v13);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD0);
    v15 = swift_allocObject();
    sub_1BBB34AE0(v6, v15 + *(*v15 + 88), _s8DocumentV7StorageVMa);

    *v1 = v15;
  }

  return result;
}

uint64_t sub_1BBB357A4(uint64_t a1, uint64_t a2)
{
  v4 = _s8DocumentV7StorageVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*IntelligenceElement.Document.paginationInfo.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x98uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 104) = v1;
  v6 = _s8DocumentV7StorageVMa(0);
  *(v5 + 112) = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 120) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 120) = malloc(*(*(v6 - 8) + 64));
    v8 = malloc(v7);
  }

  *(v5 + 128) = v8;
  v9 = *v1;
  *(v5 + 136) = *v1;
  v10 = *(*v9 + 88);
  *(v5 + 144) = v10;
  v11 = v9 + v10;
  swift_beginAccess();
  v12 = v11 + *(v6 + 20);
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  v15 = *(v12 + 25);
  *v5 = *v12;
  *(v5 + 16) = v13;
  *(v5 + 24) = v14;
  *(v5 + 25) = v15;
  return sub_1BBB35940;
}

void sub_1BBB35940(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 25);
  v9 = (*a1)[17];
  v8 = (*a1)[18];
  v10 = (*a1)[14];
  if (a2)
  {
    v11 = v2[15];
    sub_1BBB34B48(v9 + v8, v11, _s8DocumentV7StorageVMa);
    v12 = v11 + *(v10 + 20);
    *v12 = v4;
    *(v12 + 8) = v3;
    *(v12 + 16) = v5;
    *(v12 + 24) = v6;
    *(v12 + 25) = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v2[15];
    v15 = v2[13];
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_3:
      v16 = *v15;
      v17 = *(**v15 + 88);
      swift_beginAccess();
      sub_1BBB357A4(v14, v16 + v17);
      swift_endAccess();
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v2[16];
    sub_1BBB34B48(v9 + v8, v18, _s8DocumentV7StorageVMa);
    v19 = v18 + *(v10 + 20);
    *v19 = v4;
    *(v19 + 8) = v3;
    *(v19 + 16) = v5;
    *(v19 + 24) = v6;
    *(v19 + 25) = v7;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v14 = v2[16];
    v15 = v2[13];
    if (v20)
    {
      goto LABEL_3;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD0);
  v21 = swift_allocObject();
  sub_1BBB34AE0(v14, v21 + *(*v21 + 88), _s8DocumentV7StorageVMa);

  *v15 = v21;
LABEL_6:
  v22 = v2[15];
  free(v2[16]);
  free(v22);

  free(v2);
}

uint64_t IntelligenceElement.Document.isWindowContentGeneratedPDF.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  return *(v1 + *(_s8DocumentV7StorageVMa(0) + 24));
}

uint64_t sub_1BBB35BB0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  result = _s8DocumentV7StorageVMa(0);
  *a2 = *(v3 + *(result + 24));
  return result;
}

uint64_t IntelligenceElement.Document.isWindowContentGeneratedPDF.setter(char a1)
{
  v3 = _s8DocumentV7StorageVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  v8 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBB34B48(v7 + v8, v6, _s8DocumentV7StorageVMa);
  v6[*(v4 + 32)] = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *v1;
    v10 = *(*v9 + 88);
    swift_beginAccess();
    sub_1BBB357A4(v6, v9 + v10);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD0);
    v12 = swift_allocObject();
    sub_1BBB34AE0(v6, v12 + *(*v12 + 88), _s8DocumentV7StorageVMa);

    *v1 = v12;
  }

  return result;
}

void (*IntelligenceElement.Document.isWindowContentGeneratedPDF.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  *(v4 + 32) = *(v5 + *(_s8DocumentV7StorageVMa(0) + 24));
  return sub_1BBB35E58;
}

void sub_1BBB35E58(uint64_t a1)
{
  v1 = *a1;
  IntelligenceElement.Document.isWindowContentGeneratedPDF.setter(*(*a1 + 32));

  free(v1);
}

uint64_t IntelligenceElement.Document.init(file:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v31 = _s8DocumentV7StorageVMa(0) - 8;
  MEMORY[0x1EEE9AC00](v31);
  v29 = (&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v28 = &v27 - v4;
  v6 = type metadata accessor for IntelligenceFile.Attributes(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BBB83658();
  v27 = *(*(v10 - 8) + 56);
  v27(v5, 1, 1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BBB83498();
  v15 = *(*(v14 - 8) + 56);
  v16 = v15(v13, 1, 1, v14);
  v17 = MEMORY[0x1EEE9AC00](v16);
  (v15)(v13, 1, 1, v14, v17);
  v27(v9, 1, 1, v10);
  v18 = v7[8];
  v19 = &v9[v7[7]];
  v15(&v9[v18], 1, 1, v14);
  v20 = v7[9];
  v15(&v9[v20], 1, 1, v14);
  sub_1BBAA6910(v28, v9, &qword_1EBC7B858);
  *v19 = 0;
  v19[8] = 1;
  sub_1BBAA6910(v13, &v9[v18], &qword_1EBC7B860);
  sub_1BBAA6910(v13, &v9[v20], &qword_1EBC7B860);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98) + 48);
  v22 = v29;
  *v29 = v30;
  sub_1BBB34AE0(v9, v22 + v21, type metadata accessor for IntelligenceFile.Attributes);
  _s8DocumentV15InternalBackingOMa(0);
  swift_storeEnumTagMultiPayload();
  v23 = v31;
  v24 = v22 + *(v31 + 28);
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = 256;
  *(v22 + *(v23 + 32)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD0);
  v25 = swift_allocObject();
  result = sub_1BBB34AE0(v22, v25 + *(*v25 + 88), _s8DocumentV7StorageVMa);
  *v32 = v25;
  return result;
}

uint64_t IntelligenceElement.Document.init(file:sourceAttributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = _s8DocumentV7StorageVMa(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98) + 48);
  *v9 = a1;
  sub_1BBB34AE0(a2, v9 + v10, type metadata accessor for IntelligenceFile.Attributes);
  _s8DocumentV15InternalBackingOMa(0);
  swift_storeEnumTagMultiPayload();
  v11 = v9 + *(v7 + 28);
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *(v11 + 12) = 256;
  *(v9 + *(v7 + 32)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD0);
  v12 = swift_allocObject();
  result = sub_1BBB34AE0(v9, v12 + *(*v12 + 88), _s8DocumentV7StorageVMa);
  *a3 = v12;
  return result;
}

uint64_t IntelligenceElement.Document.init(fromMetadataOfFileAt:name:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v33 = a2;
  v36 = a5;
  v8 = _s8DocumentV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = sub_1BBB833F8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (&v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v18 + 16);
  v34 = a1;
  v22(v21, a1, v17, v19);
  sub_1BBB34B48(a4, v16, type metadata accessor for IntelligenceFile.Attributes);
  if (sub_1BBB832C8())
  {
    v35 = v8;
    if (a3)
    {
      v23 = a3;
      v24 = v33;
    }

    else
    {
      v24 = sub_1BBB83318();
      v23 = v25;
    }

    IntelligenceFile.Attributes.resolved(using:)(v21, v13);
    sub_1BBB3B8E8(a4, type metadata accessor for IntelligenceFile.Attributes);
    v26 = *(v18 + 8);
    v26(v34, v17);
    sub_1BBB3B8E8(v16, type metadata accessor for IntelligenceFile.Attributes);
    v26(v21, v17);
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90) + 48);
    *v10 = v24;
    v10[1] = v23;
    sub_1BBB34AE0(v13, v10 + v27, type metadata accessor for IntelligenceFile.Attributes);
    _s8DocumentV15InternalBackingOMa(0);
    swift_storeEnumTagMultiPayload();
    v28 = v35;
    v29 = v10 + *(v35 + 20);
    *v29 = 0;
    *(v29 + 1) = 0;
    *(v29 + 2) = 0;
    *(v29 + 12) = 256;
    *(v10 + *(v28 + 24)) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD0);
    v30 = swift_allocObject();
    result = sub_1BBB34AE0(v10, v30 + *(*v30 + 88), _s8DocumentV7StorageVMa);
    *v36 = v30;
  }

  else
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1BBB84028();

    v37 = 0xD000000000000017;
    v38 = 0x80000001BBB9AF00;
    v32 = sub_1BBB832F8();
    MEMORY[0x1BFB16150](v32);

    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t IntelligenceElement.Document.init(fromMetadataOfFileAt:name:sourceAttributes:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = _s8DocumentV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BBB832C8())
  {
    if (!a3)
    {
      a2 = sub_1BBB83318();
      a3 = v16;
    }

    IntelligenceFile.Attributes.resolved(using:)(a1, v15);
    sub_1BBB3B8E8(a4, type metadata accessor for IntelligenceFile.Attributes);
    v17 = sub_1BBB833F8();
    (*(*(v17 - 8) + 8))(a1, v17);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90) + 48);
    *v12 = a2;
    v12[1] = a3;
    sub_1BBB34AE0(v15, v12 + v18, type metadata accessor for IntelligenceFile.Attributes);
    _s8DocumentV15InternalBackingOMa(0);
    swift_storeEnumTagMultiPayload();
    v19 = v12 + *(v10 + 20);
    *v19 = 0;
    *(v19 + 1) = 0;
    *(v19 + 2) = 0;
    *(v19 + 12) = 256;
    *(v12 + *(v10 + 24)) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD0);
    v20 = swift_allocObject();
    result = sub_1BBB34AE0(v12, v20 + *(*v20 + 88), _s8DocumentV7StorageVMa);
    *a5 = v20;
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1BBB84028();

    v23 = 0xD000000000000017;
    v24 = 0x80000001BBB9AF00;
    v22 = sub_1BBB832F8();
    MEMORY[0x1BFB16150](v22);

    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBB36A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = _s8DocumentV7StorageVMa(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90) + 48);
  *v11 = a1;
  v11[1] = a2;
  sub_1BBB34AE0(a3, v11 + v12, type metadata accessor for IntelligenceFile.Attributes);
  _s8DocumentV15InternalBackingOMa(0);
  swift_storeEnumTagMultiPayload();
  v13 = v11 + *(v9 + 28);
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 12) = 256;
  *(v11 + *(v9 + 32)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD0);
  v14 = swift_allocObject();
  result = sub_1BBB34AE0(v11, v14 + *(*v14 + 88), _s8DocumentV7StorageVMa);
  *a4 = v14;
  return result;
}

uint64_t sub_1BBB36BCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CC78);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CC80);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v29 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v28 - v10;
  v11 = _s8DocumentV15InternalBackingOMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CC88);
  v38 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB3C000();
  sub_1BBB84478();
  sub_1BBB34B48(v36, v13, _s8DocumentV15InternalBackingOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90);
    v18 = v30;
    sub_1BBB34AE0(v13 + *(v17 + 48), v30, type metadata accessor for IntelligenceFile.Attributes);
    v45 = 1;
    sub_1BBB3C054();
    sub_1BBB84208();
    v44 = 0;
    v19 = v33;
    v20 = v37;
    sub_1BBB84248();

    if (!v20)
    {
      v43 = 1;
      sub_1BBB3B99C(&qword_1EBC7ADF8, type metadata accessor for IntelligenceFile.Attributes);
      sub_1BBB84288();
    }

    (*(v32 + 8))(v4, v19);
    v21 = v18;
  }

  else
  {
    v22 = *v13;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98);
    v24 = v31;
    sub_1BBB34AE0(v13 + *(v23 + 48), v31, type metadata accessor for IntelligenceFile.Attributes);
    v42 = 0;
    sub_1BBB3C0A8();
    sub_1BBB84208();
    v39 = v22;
    v41 = 0;
    type metadata accessor for IntelligenceFile(0);
    sub_1BBB3B99C(&qword_1EBC7C140, type metadata accessor for IntelligenceFile);
    v25 = v35;
    v26 = v37;
    sub_1BBB84288();
    if (v26)
    {
      (*(v34 + 8))(v7, v25);
      sub_1BBB3B8E8(v24, type metadata accessor for IntelligenceFile.Attributes);
      (*(v38 + 8))(v16, v14);
    }

    v40 = 1;
    sub_1BBB3B99C(&qword_1EBC7ADF8, type metadata accessor for IntelligenceFile.Attributes);
    sub_1BBB84288();

    (*(v34 + 8))(v7, v25);
    v21 = v24;
  }

  sub_1BBB3B8E8(v21, type metadata accessor for IntelligenceFile.Attributes);
  return (*(v38 + 8))(v16, v14);
}

uint64_t sub_1BBB371F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CCA8);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v50 = &v39 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CCB0);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CCB8);
  v7 = *(v6 - 8);
  v47 = v6;
  v48 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v8;
  v10 = _s8DocumentV15InternalBackingOMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1BBB3C000();
  v20 = v51;
  sub_1BBB84458();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v41 = v12;
  v42 = v10;
  v51 = v15;
  v21 = v49;
  v22 = v46;
  v23 = v47;
  v24 = sub_1BBB841F8();
  v25 = (2 * *(v24 + 16)) | 1;
  v53 = v24;
  v54 = v24 + 32;
  v55 = 0;
  v56 = v25;
  v26 = sub_1BBA870CC();
  if (v26 == 2 || v55 != v56 >> 1)
  {
    v27 = sub_1BBB84058();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
    *v29 = v42;
    sub_1BBB84128();
    sub_1BBB84048();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v48 + 8))(v9, v23);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  if (v26)
  {
    v57 = 1;
    sub_1BBB3C054();
    sub_1BBB84118();
    v57 = 0;
    v32 = sub_1BBB84188();
    v34 = v33;
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90) + 48);
    v35 = v41;
    *v41 = v32;
    v35[1] = v34;
    v46 = v34;
    type metadata accessor for IntelligenceFile.Attributes(0);
    v57 = 1;
    sub_1BBB3B99C(&qword_1EBC7ADF0, type metadata accessor for IntelligenceFile.Attributes);
    v36 = v45;
    sub_1BBB841B8();
    v40 = 0;
    (*(v43 + 8))(v50, v36);
    (*(v48 + 8))(v9, v23);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v37 = v35;
  }

  else
  {
    v57 = 0;
    sub_1BBB3C0A8();
    sub_1BBB84118();
    type metadata accessor for IntelligenceFile(0);
    v57 = 0;
    sub_1BBB3B99C(&qword_1EBC7C158, type metadata accessor for IntelligenceFile);
    sub_1BBB841B8();
    v31 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98);
    type metadata accessor for IntelligenceFile.Attributes(0);
    v57 = 1;
    sub_1BBB3B99C(&qword_1EBC7ADF0, type metadata accessor for IntelligenceFile.Attributes);
    sub_1BBB841B8();
    v40 = 0;
    (*(v44 + 8))(v5, v22);
    (*(v31 + 8))(v9, v23);
    swift_unknownObjectRelease();
    v38 = v51;
    swift_storeEnumTagMultiPayload();
    v37 = v38;
    v21 = v49;
  }

  sub_1BBB34AE0(v37, v18, _s8DocumentV15InternalBackingOMa);
  sub_1BBB34AE0(v18, v21, _s8DocumentV15InternalBackingOMa);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1BBB37A50()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t sub_1BBB37A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v5 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xEC000000796C6E4FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBB842F8();

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

uint64_t sub_1BBB37B6C(uint64_t a1)
{
  v2 = sub_1BBB3C000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB37BA8(uint64_t a1)
{
  v2 = sub_1BBB3C000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB37BE4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1BBB37C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BBB9C9E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBB842F8();

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

uint64_t sub_1BBB37CF4(uint64_t a1)
{
  v2 = sub_1BBB3C0A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB37D30(uint64_t a1)
{
  v2 = sub_1BBB3C0A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB37D6C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1BBB37DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BBB9C9E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBB842F8();

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

uint64_t sub_1BBB37E88(uint64_t a1)
{
  v2 = sub_1BBB3C054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB37EC4(uint64_t a1)
{
  v2 = sub_1BBB3C054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB37F34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6974616E69676170;
  v4 = 0xEE006F666E496E6FLL;
  v5 = 0x80000001BBB9ABC0;
  if (v2 != 1)
  {
    v3 = 0xD00000000000001BLL;
    v4 = 0x80000001BBB9ABC0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x676E696B636162;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x6974616E69676170;
  if (*a2 == 1)
  {
    v5 = 0xEE006F666E496E6FLL;
  }

  else
  {
    v8 = 0xD00000000000001BLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E696B636162;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBB38048()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB380FC()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB3819C()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB3824C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB3BFB4();
  *a1 = result;
  return result;
}

void sub_1BBB3827C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEE006F666E496E6FLL;
  v5 = 0x6974616E69676170;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001BLL;
    v4 = 0x80000001BBB9ABC0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696B636162;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BBB382EC()
{
  v1 = 0x6974616E69676170;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696B636162;
  }
}

uint64_t sub_1BBB38358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB3BFB4();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB38380(uint64_t a1)
{
  v2 = sub_1BBB3B894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB383BC(uint64_t a1)
{
  v2 = sub_1BBB3B894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Document.encode(to:)(void *a1)
{
  v18[0] = _s8DocumentV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v18[0]);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB3B894();
  sub_1BBB84478();
  v10 = v9 + *(*v9 + 88);
  swift_beginAccess();
  sub_1BBB34B48(v10, v4, _s8DocumentV7StorageVMa);
  LOBYTE(v19) = 0;
  _s8DocumentV15InternalBackingOMa(0);
  sub_1BBB3B99C(&qword_1EBC7CBE8, _s8DocumentV15InternalBackingOMa);
  v11 = v18[1];
  sub_1BBB84288();
  if (v11)
  {
    (*(v6 + 8))(v8, v5);
    return sub_1BBB3B8E8(v4, _s8DocumentV15InternalBackingOMa);
  }

  else
  {
    sub_1BBB3B8E8(v4, _s8DocumentV15InternalBackingOMa);
    v13 = v18[0];
    v14 = v10 + *(v18[0] + 20);
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = *(v14 + 25);
    v19 = *v14;
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = 1;
    sub_1BBB3B948();
    sub_1BBB84238();
    if (*(v10 + *(v13 + 24)) == 1)
    {
      LOBYTE(v19) = 2;
      sub_1BBB84258();
    }

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t IntelligenceElement.Document.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v3 = _s8DocumentV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = _s8DocumentV15InternalBackingOMa(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBF8);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB3B894();
  v12 = v33;
  sub_1BBB84458();
  if (!v12)
  {
    v13 = v31;
    v33 = v3;
    v14 = v5;
    LOBYTE(v34) = 0;
    sub_1BBB3B99C(&qword_1EBC7CC00, _s8DocumentV15InternalBackingOMa);
    sub_1BBB841B8();
    v15 = v8;
    v40 = 1;
    sub_1BBB3B9E4();
    sub_1BBB84178();
    v16 = v34;
    v29 = v35;
    v17 = v36;
    v39 = v37;
    v28 = v38;
    LOBYTE(v34) = 2;
    v18 = sub_1BBB84148();
    (*(v13 + 8))(v11, v32);
    v19 = v15;
    v20 = v16;
    v21 = v14;
    sub_1BBB34AE0(v19, v14, _s8DocumentV15InternalBackingOMa);
    v22 = v33;
    v23 = v21 + *(v33 + 20);
    v24 = v29;
    *v23 = v20;
    *(v23 + 8) = v24;
    *(v23 + 16) = v17;
    *(v23 + 24) = v39;
    *(v23 + 25) = v28;
    *(v21 + *(v22 + 24)) = v18 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD0);
    v25 = swift_allocObject();
    sub_1BBB34AE0(v21, v25 + *(*v25 + 88), _s8DocumentV7StorageVMa);
    *v30 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t IntelligenceElement.Document.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v130 = v125 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v125 - v4;
  v6 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v129 = v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v125 - v9;
  v11 = sub_1BBB83658();
  v132 = *(v11 - 8);
  v133 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v126 = v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v131 = v125 - v14;
  v15 = _s8DocumentV15InternalBackingOMa(0);
  MEMORY[0x1EEE9AC00](v15);
  v135 = v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v128 = v125 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v125 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v125 - v23);
  v137 = _s8DocumentV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v137);
  v134 = v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v127 = v125 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v125 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v125 - v32;
  v34 = *v0;
  strcpy(v142, "name: ");
  v142[1] = 0xE700000000000000;
  v35 = v34 + *(*v34 + 88);
  swift_beginAccess();
  v136 = v35;
  sub_1BBB34B48(v35, v33, _s8DocumentV7StorageVMa);
  sub_1BBB34AE0(v33, v24, _s8DocumentV15InternalBackingOMa);
  v36 = v15;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v24;
    v38 = v24[1];
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90) + 48);
  }

  else
  {
    v40 = *v24;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98) + 48);
    v37 = *(v40 + 16);
    v38 = *(v40 + 24);
  }

  sub_1BBB3B8E8(v24 + v39, type metadata accessor for IntelligenceFile.Attributes);
  MEMORY[0x1BFB16150](v37, v38);

  MEMORY[0x1BFB16150](34, 0xE100000000000000);
  v41 = v142[0];
  v42 = v142[1];
  v43 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  v46 = v45 + 1;
  if (v45 >= v44 >> 1)
  {
    v43 = sub_1BBA86A94((v44 > 1), v45 + 1, 1, v43);
  }

  *(v43 + 2) = v46;
  v47 = &v43[16 * v45];
  *(v47 + 4) = v41;
  *(v47 + 5) = v42;
  v48 = v136;
  if (*(v136 + *(v137 + 24)) == 1)
  {
    v49 = *(v43 + 3);
    v50 = v45 + 2;
    if ((v45 + 2) > (v49 >> 1))
    {
      v43 = sub_1BBA86A94((v49 > 1), v45 + 2, 1, v43);
    }

    v51 = v133;
    *(v43 + 2) = v50;
    v52 = &v43[16 * v46];
    *(v52 + 4) = 0xD000000000000021;
    *(v52 + 5) = 0x80000001BBB9C970;
  }

  else
  {
    v51 = v133;
  }

  sub_1BBB34B48(v48, v30, _s8DocumentV7StorageVMa);
  sub_1BBB34AE0(v30, v21, _s8DocumentV15InternalBackingOMa);
  v53 = v36;
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90);
    sub_1BBB34AE0(v21 + *(v54 + 48), v10, type metadata accessor for IntelligenceFile.Attributes);
  }

  else
  {
    v55 = *v21;
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98) + 48);
    sub_1BBB34B48(v55 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, v10, type metadata accessor for IntelligenceFile.Attributes);

    sub_1BBB3B8E8(v21 + v56, type metadata accessor for IntelligenceFile.Attributes);
  }

  v57 = v132;
  sub_1BBB3BA38(v10, v5);
  sub_1BBB3B8E8(v10, type metadata accessor for IntelligenceFile.Attributes);
  v58 = *(v57 + 48);
  if (v58(v5, 1, v51) == 1)
  {
    sub_1BBA8BCC4(v5, &qword_1EBC7B858);
  }

  else
  {
    v59 = *(v57 + 32);
    v59(v131, v5, v51);
    v60 = v127;
    sub_1BBB34B48(v48, v127, _s8DocumentV7StorageVMa);
    v61 = v60;
    v62 = v128;
    sub_1BBB34AE0(v61, v128, _s8DocumentV15InternalBackingOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v125[1] = v53;
    if (EnumCaseMultiPayload == 1)
    {

      v64 = &qword_1EBC7CB90;
    }

    else
    {

      v64 = &qword_1EBC7CB98;
    }

    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(v64);
    v66 = v62;
    v68 = v129;
    v67 = v130;
    sub_1BBB34AE0(v66 + *(v65 + 48), v129, type metadata accessor for IntelligenceFile.Attributes);
    sub_1BBB3BA38(v68, v67);
    sub_1BBB3B8E8(v68, type metadata accessor for IntelligenceFile.Attributes);
    v69 = v58(v67, 1, v51);
    v70 = v67;
    v71 = v131;
    if (v69 == 1)
    {
      sub_1BBA8BCC4(v70, &qword_1EBC7B858);
    }

    else
    {
      v72 = v126;
      v59(v126, v70, v51);
      sub_1BBB3B99C(&qword_1EBC7B9E8, MEMORY[0x1E69E8450]);
      if (sub_1BBB83968())
      {
        (*(v57 + 8))(v72, v51);
      }

      else
      {
        v142[0] = 0;
        v142[1] = 0xE000000000000000;
        sub_1BBB84028();

        v142[0] = 0xD000000000000014;
        v142[1] = 0x80000001BBB9C950;
        sub_1BBB3B99C(&qword_1EBC7BB70, MEMORY[0x1E69E8450]);
        v73 = sub_1BBB842D8();
        MEMORY[0x1BFB16150](v73);

        MEMORY[0x1BFB16150](34, 0xE100000000000000);
        v74 = v142[0];
        v75 = v142[1];
        v77 = *(v43 + 2);
        v76 = *(v43 + 3);
        if (v77 >= v76 >> 1)
        {
          v43 = sub_1BBA86A94((v76 > 1), v77 + 1, 1, v43);
        }

        (*(v57 + 8))(v126, v51);
        *(v43 + 2) = v77 + 1;
        v78 = &v43[16 * v77];
        *(v78 + 4) = v74;
        *(v78 + 5) = v75;
      }
    }

    v142[0] = 0;
    v142[1] = 0xE000000000000000;
    sub_1BBB84028();

    strcpy(v142, "contentType: ");
    HIBYTE(v142[1]) = -18;
    sub_1BBB3B99C(&qword_1EBC7BB70, MEMORY[0x1E69E8450]);
    v79 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v79);

    MEMORY[0x1BFB16150](34, 0xE100000000000000);
    v80 = v142[0];
    v81 = v142[1];
    v83 = *(v43 + 2);
    v82 = *(v43 + 3);
    if (v83 >= v82 >> 1)
    {
      v43 = sub_1BBA86A94((v82 > 1), v83 + 1, 1, v43);
    }

    (*(v57 + 8))(v71, v51);
    *(v43 + 2) = v83 + 1;
    v84 = &v43[16 * v83];
    *(v84 + 4) = v80;
    *(v84 + 5) = v81;
  }

  v85 = v48 + *(v137 + 20);
  if ((*(v85 + 25) & 1) == 0)
  {
    v87 = *(v85 + 8);
    v86 = *(v85 + 16);
    v88 = *(v85 + 24);
    v89 = *v85;
    strcpy(v142, "totalPages: ");
    BYTE5(v142[1]) = 0;
    HIWORD(v142[1]) = -5120;
    v138 = v89;
    v90 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v90);

    v91 = v142[0];
    v92 = v142[1];
    v94 = *(v43 + 2);
    v93 = *(v43 + 3);
    if (v94 >= v93 >> 1)
    {
      v43 = sub_1BBA86A94((v93 > 1), v94 + 1, 1, v43);
    }

    *(v43 + 2) = v94 + 1;
    v95 = &v43[16 * v94];
    *(v95 + 4) = v91;
    *(v95 + 5) = v92;
    if (v88)
    {
      v96 = v135;
      v48 = v136;
      goto LABEL_38;
    }

    v142[0] = 0;
    v142[1] = 0xE000000000000000;
    sub_1BBB84028();

    strcpy(v142, "visiblePages: ");
    HIBYTE(v142[1]) = -18;
    v140 = v86;
    v141 = v87;
    v138 = 0;
    v139 = 0xE000000000000000;
    sub_1BBB84098();
    MEMORY[0x1BFB16150](3943982, 0xE300000000000000);
    sub_1BBB84098();
    MEMORY[0x1BFB16150](v138, v139);

    v97 = v142[0];
    v98 = v142[1];
    v100 = *(v43 + 2);
    v99 = *(v43 + 3);
    if (v100 >= v99 >> 1)
    {
      v43 = sub_1BBA86A94((v99 > 1), v100 + 1, 1, v43);
    }

    v48 = v136;
    *(v43 + 2) = v100 + 1;
    v101 = &v43[16 * v100];
    *(v101 + 4) = v97;
    *(v101 + 5) = v98;
  }

  v96 = v135;
LABEL_38:
  v102 = v134;
  sub_1BBB34B48(v48, v134, _s8DocumentV7StorageVMa);
  sub_1BBB34AE0(v102, v96, _s8DocumentV15InternalBackingOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90);
    sub_1BBB3B8E8(v96 + *(v103 + 48), type metadata accessor for IntelligenceFile.Attributes);
  }

  else
  {
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98);
    sub_1BBB3B8E8(v96 + *(v104 + 48), type metadata accessor for IntelligenceFile.Attributes);
    v105 = sub_1BBB833F8();
    v106 = *(v105 - 8);
    MEMORY[0x1EEE9AC00](v105);
    v108 = v125 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
    MEMORY[0x1EEE9AC00](v109 - 8);
    v111 = v125 - v110;
    IntelligenceFile.fileURL.getter(v125 - v110);
    if ((*(v106 + 48))(v111, 1, v105) == 1)
    {
      sub_1BBA8BCC4(v111, &qword_1EBC7BB98);
      v113 = *(v43 + 2);
      v112 = *(v43 + 3);
      if (v113 >= v112 >> 1)
      {
        v43 = sub_1BBA86A94((v112 > 1), v113 + 1, 1, v43);
      }

      *(v43 + 2) = v113 + 1;
      v114 = &v43[16 * v113];
      *(v114 + 4) = 0xD000000000000011;
      *(v114 + 5) = 0x80000001BBB9C930;
    }

    else
    {
      (*(v106 + 32))(v108, v111, v105);
      strcpy(v142, "fileURL: ");
      BYTE3(v142[1]) = 0;
      HIDWORD(v142[1]) = -369098752;
      v115 = sub_1BBB833B8();
      MEMORY[0x1BFB16150](v115);

      MEMORY[0x1BFB16150](34, 0xE100000000000000);
      v116 = v142[0];
      v117 = v142[1];
      v119 = *(v43 + 2);
      v118 = *(v43 + 3);
      if (v119 >= v118 >> 1)
      {
        v43 = sub_1BBA86A94((v118 > 1), v119 + 1, 1, v43);
      }

      (*(v106 + 8))(v108, v105);
      *(v43 + 2) = v119 + 1;
      v120 = &v43[16 * v119];
      *(v120 + 4) = v116;
      *(v120 + 5) = v117;
    }
  }

  strcpy(v142, "Document(");
  WORD1(v142[1]) = 0;
  HIDWORD(v142[1]) = -385875968;
  v138 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v121 = sub_1BBB83938();
  v123 = v122;

  MEMORY[0x1BFB16150](v121, v123);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v142[0];
}

uint64_t IntelligenceElement.Document.init(for:fromFileAt:name:attributes:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[7];
  v25[6] = a1[6];
  v26[0] = v15;
  *(v26 + 15) = *(a1 + 127);
  v16 = a1[3];
  v25[2] = a1[2];
  v25[3] = v16;
  v17 = a1[5];
  v25[4] = a1[4];
  v25[5] = v17;
  v18 = a1[1];
  v25[0] = *a1;
  v25[1] = v18;
  v19 = sub_1BBB833F8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a2, v19, v21);
  sub_1BBB34B48(a5, v14, type metadata accessor for IntelligenceFile.Attributes);
  IntelligenceElement.Document.init(for:fromFileAt:name:sourceAttributes:)(v25, v23, a3, a4, v14, &v27);
  sub_1BBB3B8E8(a5, type metadata accessor for IntelligenceFile.Attributes);
  result = (*(v20 + 8))(a2, v19);
  *a6 = v27;
  return result;
}

uint64_t IntelligenceElement.Document.init(for:fromFileAt:name:sourceAttributes:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v103 = a4;
  *&v101 = 0;
  v95 = _s8DocumentV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v95);
  v12 = (v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v99 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v89 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v97 = v89 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v89 - v21;
  v23 = a1[7];
  v115 = a1[6];
  v116[0] = v23;
  *(v116 + 15) = *(a1 + 127);
  v24 = a1[3];
  v114[2] = a1[2];
  v114[3] = v24;
  v25 = a1[5];
  v114[4] = a1[4];
  v114[5] = v25;
  v26 = a1[1];
  v114[0] = *a1;
  v114[1] = v26;
  sub_1BBA96D48(v114);
  v96 = a6;
  v102 = a2;
  if (BYTE11(v115) - 1 < 2)
  {
    v93 = v17;
    v94 = v12;
    *&v100 = a3;
    v27 = sub_1BBB833F8();
    v98 = v89;
    v28 = MEMORY[0x1EEE9AC00](v27);
    v30 = (v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    v90 = v32;
    v91 = v31;
    (*(v32 + 16))(v30, a2, v28);
    v92 = a5;
    sub_1BBB34B48(a5, v22, type metadata accessor for IntelligenceFile.Attributes);
    type metadata accessor for IntelligenceFile(0);
    v33 = swift_allocObject();
    v34 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__dataCache;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC0);
    v35 = swift_allocObject();
    *(v35 + 48) = 0;
    *(v35 + 16) = xmmword_1BBB89870;
    *(v35 + 32) = xmmword_1BBB89870;
    *(v33 + v34) = v35;
    if ((sub_1BBB832C8() & 1) == 0)
    {
      *&v108[0] = 0;
      *(&v108[0] + 1) = 0xE000000000000000;
      sub_1BBB84028();

      *&v108[0] = 0xD000000000000017;
      *(&v108[0] + 1) = 0x80000001BBB9AF00;
      v88 = sub_1BBB832F8();
      MEMORY[0x1BFB16150](v88);

      goto LABEL_23;
    }

    v89[1] = v34;
    v36 = v22;
    if (v103)
    {
      v37 = v100;
      v38 = v103;
    }

    else
    {
      v37 = sub_1BBB83318();
    }

    *(v33 + 16) = v37;
    *(v33 + 24) = v38;

    v43 = v97;
    IntelligenceFile.Attributes.resolved(using:)(v30, v97);
    v44 = OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes;
    sub_1BBB34AE0(v43, v33 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, type metadata accessor for IntelligenceFile.Attributes);
    memset(v112, 0, sizeof(v112));
    v113 = 1;
    v45 = v101;
    sub_1BBAFC9E4(v112, v108);
    if (!v45)
    {
      v73 = v109;
      v72 = v110;
      v74 = v111;
      v100 = v108[1];
      v101 = v108[0];
      sub_1BBAFC6A4(v108, 1);
      sub_1BBB3B8E8(v36, type metadata accessor for IntelligenceFile.Attributes);
      v75 = v33 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile__internalRepresentation;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BEC8);
      v77 = v75 + *(v76 + 48);
      v78 = *(v76 + 64);
      v79 = v30;
      v70 = v91;
      (*(v90 + 32))(v75, v79, v91);
      v80 = v100;
      *v77 = v101;
      *(v77 + 16) = v80;
      *(v77 + 32) = v73;
      *(v77 + 40) = v72;
      *(v77 + 48) = v74;
      *(v75 + v78) = 0;
      type metadata accessor for IntelligenceFile.InternalRepresentation(0);
      swift_storeEnumTagMultiPayload();
      v71 = v92;
      goto LABEL_19;
    }

    sub_1BBB3B8E8(v36, type metadata accessor for IntelligenceFile.Attributes);
    (*(v90 + 8))(v30, v91);

    sub_1BBB3B8E8(v33 + v44, type metadata accessor for IntelligenceFile.Attributes);

    swift_deallocPartialClassInstance();
    *&v101 = 0;
    v42 = v102;
    v39 = v103;
    v41 = v92;
    v40 = v100;
LABEL_10:
    type metadata accessor for IntelligenceFile(0);
    v46 = sub_1BBB833F8();
    v98 = v89;
    v47 = MEMORY[0x1EEE9AC00](v46);
    v49 = (v89 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49, v42, v46, v47);
    a5 = v41;
    v51 = v93;
    sub_1BBB34B48(v41, v93, type metadata accessor for IntelligenceFile.Attributes);
    v104 = 1uLL;
    v105 = 0;
    v106 = 0;
    v107 = 1;

    a3 = v40;
    v52 = v101;
    v53 = IntelligenceFile.__allocating_init(creatingTemporaryCopyOfFileAt:name:attributes:sandboxExtensionType:)(v49, v40, v39, v51, &v104);
    if (v52)
    {

      v12 = v94;
      goto LABEL_12;
    }

    v33 = v53;
    v70 = v46;
    v71 = a5;
LABEL_19:
    v81 = v102;
    sub_1BBB833F8();
    v82 = *(*(v70 - 8) + 8);

    v82(v81, v70);

    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98) + 48);
    v84 = v94;
    *v94 = v33;
    sub_1BBB34AE0(v71, v84 + v83, type metadata accessor for IntelligenceFile.Attributes);
    _s8DocumentV15InternalBackingOMa(0);
    swift_storeEnumTagMultiPayload();
    v85 = v95;
    v86 = v84 + *(v95 + 20);
    *v86 = 0;
    *(v86 + 8) = 0;
    *(v86 + 16) = 0;
    *(v86 + 24) = 256;
    *(v84 + *(v85 + 24)) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD0);
    v68 = swift_allocObject();
    result = sub_1BBB34AE0(v84, v68 + *(*v68 + 88), _s8DocumentV7StorageVMa);
LABEL_20:
    *v96 = v68;
    return result;
  }

  v39 = v103;
  if (BYTE11(v115))
  {
    v93 = v17;
    v94 = v12;
    v40 = a3;
    v41 = a5;
    v42 = v102;
    goto LABEL_10;
  }

LABEL_12:
  v54 = sub_1BBB833F8();
  *&v101 = v89;
  v55 = *(v54 - 8);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v58 = (v89 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v58, v102, v54, v56);
  sub_1BBB34B48(a5, v99, type metadata accessor for IntelligenceFile.Attributes);
  if (sub_1BBB832C8())
  {
    v59 = a5;
    if (v39)
    {
      *&v100 = a3;
    }

    else
    {
      *&v100 = sub_1BBB83318();
      v103 = v60;
    }

    v61 = v97;
    v62 = v99;
    IntelligenceFile.Attributes.resolved(using:)(v58, v97);
    sub_1BBB3B8E8(v59, type metadata accessor for IntelligenceFile.Attributes);
    v63 = *(v55 + 8);
    v63(v102, v54);
    sub_1BBB3B8E8(v62, type metadata accessor for IntelligenceFile.Attributes);
    v63(v58, v54);
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90) + 48);
    v65 = v103;
    *v12 = v100;
    v12[1] = v65;
    sub_1BBB34AE0(v61, v12 + v64, type metadata accessor for IntelligenceFile.Attributes);
    _s8DocumentV15InternalBackingOMa(0);
    swift_storeEnumTagMultiPayload();
    v66 = v95;
    v67 = v12 + *(v95 + 20);
    *v67 = 0;
    *(v67 + 1) = 0;
    *(v67 + 2) = 0;
    *(v67 + 12) = 256;
    *(v12 + *(v66 + 24)) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD0);
    v68 = swift_allocObject();
    result = sub_1BBB34AE0(v12, v68 + *(*v68 + 88), _s8DocumentV7StorageVMa);
    goto LABEL_20;
  }

  *&v104 = 0;
  *(&v104 + 1) = 0xE000000000000000;
  sub_1BBB84028();

  *&v104 = 0xD000000000000017;
  *(&v104 + 1) = 0x80000001BBB9AF00;
  v87 = sub_1BBB832F8();
  MEMORY[0x1BFB16150](v87);

LABEL_23:
  result = sub_1BBB840A8();
  __break(1u);
  return result;
}

uint64_t IntelligenceElement.Document.init(for:fromData:name:attributes:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v36 = a7;
  v35 = _s8DocumentV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v35);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  v24 = a1[7];
  v40 = a1[6];
  v41[0] = v24;
  *(v41 + 15) = *(a1 + 127);
  v25 = a1[3];
  v39[2] = a1[2];
  v39[3] = v25;
  v26 = a1[5];
  v39[4] = a1[4];
  v39[5] = v26;
  v27 = a1[1];
  v39[0] = *a1;
  v39[1] = v27;
  sub_1BBB34B48(a6, &v35 - v22, type metadata accessor for IntelligenceFile.Attributes);
  if (BYTE11(v40) - 2 < 2)
  {
    sub_1BBA96D48(v39);
    type metadata accessor for IntelligenceFile(0);
    sub_1BBB34B48(v23, v17, type metadata accessor for IntelligenceFile.Attributes);
    v37[0] = 1;
    memset(&v37[1], 0, 24);
    v38 = 1;

    v29 = IntelligenceFile.__allocating_init(writingDataToTemporaryFile:name:attributes:sandboxExtensionType:)(a2, a3, a4, a5, v17, v37);
    v30 = a6;
LABEL_6:
    sub_1BBB3B8E8(v30, type metadata accessor for IntelligenceFile.Attributes);

    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98) + 48);
    *v14 = v29;
    goto LABEL_7;
  }

  if (BYTE11(v40))
  {
    sub_1BBB34B48(v23, v20, type metadata accessor for IntelligenceFile.Attributes);
    type metadata accessor for IntelligenceFile(0);
    swift_allocObject();

    v29 = IntelligenceFile.init(data:name:attributes:)(a2, a3, a4, a5, v20);
    sub_1BBA96D48(v39);
    v30 = a6;
    goto LABEL_6;
  }

  sub_1BBA885E8(a2, a3);
  sub_1BBA96D48(v39);
  sub_1BBB3B8E8(a6, type metadata accessor for IntelligenceFile.Attributes);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90) + 48);
  *v14 = a4;
  v14[1] = a5;
LABEL_7:
  sub_1BBB34AE0(v23, v14 + v28, type metadata accessor for IntelligenceFile.Attributes);
  _s8DocumentV15InternalBackingOMa(0);
  swift_storeEnumTagMultiPayload();
  v31 = v35;
  v32 = v14 + *(v35 + 20);
  *v32 = 0;
  *(v32 + 1) = 0;
  *(v32 + 2) = 0;
  *(v32 + 12) = 256;
  *(v14 + *(v31 + 24)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD0);
  v33 = swift_allocObject();
  result = sub_1BBB34AE0(v14, v33 + *(*v33 + 88), _s8DocumentV7StorageVMa);
  *v36 = v33;
  return result;
}

uint64_t IntelligenceElement.Document.init(for:fromData:name:sourceAttributes:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v32 = a7;
  v13 = _s8DocumentV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  v22 = a1[7];
  v36 = a1[6];
  v37[0] = v22;
  *(v37 + 15) = *(a1 + 127);
  v23 = a1[3];
  v35[2] = a1[2];
  v35[3] = v23;
  v24 = a1[5];
  v35[4] = a1[4];
  v35[5] = v24;
  v25 = a1[1];
  v35[0] = *a1;
  v35[1] = v25;
  if (BYTE11(v36) - 2 < 2)
  {
    sub_1BBA96D48(v35);
    type metadata accessor for IntelligenceFile(0);
    sub_1BBB34B48(a6, v18, type metadata accessor for IntelligenceFile.Attributes);
    v33[0] = 1;
    memset(&v33[1], 0, 24);
    v34 = 1;

    v27 = IntelligenceFile.__allocating_init(writingDataToTemporaryFile:name:attributes:sandboxExtensionType:)(a2, a3, a4, a5, v18, v33);
LABEL_6:

    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98) + 48);
    *v15 = v27;
    goto LABEL_7;
  }

  if (BYTE11(v36))
  {
    sub_1BBB34B48(a6, &v31 - v20, type metadata accessor for IntelligenceFile.Attributes);
    type metadata accessor for IntelligenceFile(0);
    swift_allocObject();

    v27 = IntelligenceFile.init(data:name:attributes:)(a2, a3, a4, a5, v21);
    sub_1BBA96D48(v35);
    goto LABEL_6;
  }

  sub_1BBA885E8(a2, a3);
  sub_1BBA96D48(v35);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90) + 48);
  *v15 = a4;
  v15[1] = a5;
LABEL_7:
  sub_1BBB34AE0(a6, v15 + v26, type metadata accessor for IntelligenceFile.Attributes);
  _s8DocumentV15InternalBackingOMa(0);
  swift_storeEnumTagMultiPayload();
  v28 = v15 + *(v13 + 20);
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  *(v28 + 12) = 256;
  *(v15 + *(v13 + 24)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CBD0);
  v29 = swift_allocObject();
  result = sub_1BBB34AE0(v15, v29 + *(*v29 + 88), _s8DocumentV7StorageVMa);
  *v32 = v29;
  return result;
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV8DocumentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for IntelligenceFile.Attributes(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v85 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v77 - v7;
  v8 = _s8DocumentV15InternalBackingOMa(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v80 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v87 = &v77 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v83 = &v77 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v77 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v77 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v77 - v21);
  v77 = _s8DocumentV7StorageVMa(0);
  v23 = MEMORY[0x1EEE9AC00](v77);
  v79 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v78 = &v77 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v82 = &v77 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v81 = &v77 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v77 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v77 - v34;
  v36 = *a2;
  v37 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v88 = v37;
  sub_1BBB34B48(v37, v35, _s8DocumentV7StorageVMa);
  sub_1BBB34AE0(v35, v22, _s8DocumentV15InternalBackingOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v22;
    v38 = v22[1];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90) + 48);
  }

  else
  {
    v41 = *v22;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98) + 48);
    v39 = *(v41 + 16);
    v38 = *(v41 + 24);
  }

  sub_1BBB3B8E8(v22 + v40, type metadata accessor for IntelligenceFile.Attributes);
  v42 = v36 + *(*v36 + 88);
  swift_beginAccess();
  v86 = v42;
  sub_1BBB34B48(v42, v33, _s8DocumentV7StorageVMa);
  sub_1BBB34AE0(v33, v20, _s8DocumentV15InternalBackingOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = *v20;
    v43 = v20[1];
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90) + 48);
  }

  else
  {
    v46 = *v20;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98) + 48);
    v44 = *(v46 + 16);
    v43 = *(v46 + 24);
  }

  sub_1BBB3B8E8(v20 + v45, type metadata accessor for IntelligenceFile.Attributes);
  if (v39 == v44 && v38 == v43)
  {
  }

  else
  {
    v47 = sub_1BBB842F8();

    if ((v47 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v48 = v88;
  v49 = v81;
  sub_1BBB34B48(v88, v81, _s8DocumentV7StorageVMa);
  sub_1BBB34AE0(v49, v17, _s8DocumentV15InternalBackingOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v50 = &qword_1EBC7CB90;
  }

  else
  {

    v50 = &qword_1EBC7CB98;
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(v50);
  v52 = v87;
  v53 = v83;
  v54 = v84;
  sub_1BBB34AE0(&v17[*(v51 + 48)], v84, type metadata accessor for IntelligenceFile.Attributes);
  v55 = v86;
  v56 = v82;
  sub_1BBB34B48(v86, v82, _s8DocumentV7StorageVMa);
  sub_1BBB34AE0(v56, v53, _s8DocumentV15InternalBackingOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v57 = &qword_1EBC7CB90;
  }

  else
  {

    v57 = &qword_1EBC7CB98;
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(v57);
  v59 = v85;
  sub_1BBB34AE0(v53 + *(v58 + 48), v85, type metadata accessor for IntelligenceFile.Attributes);
  v60 = static IntelligenceFile.Attributes.== infix(_:_:)(v54, v59);
  sub_1BBB3B8E8(v59, type metadata accessor for IntelligenceFile.Attributes);
  sub_1BBB3B8E8(v54, type metadata accessor for IntelligenceFile.Attributes);
  if ((v60 & 1) == 0)
  {
    goto LABEL_38;
  }

  v61 = v78;
  sub_1BBB34B48(v48, v78, _s8DocumentV7StorageVMa);
  sub_1BBB34AE0(v61, v52, _s8DocumentV15InternalBackingOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90);
    v63 = 0;
  }

  else
  {
    v63 = *v52;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98);
  }

  v64 = v80;
  sub_1BBB3B8E8(v52 + *(v62 + 48), type metadata accessor for IntelligenceFile.Attributes);
  v65 = v79;
  sub_1BBB34B48(v55, v79, _s8DocumentV7StorageVMa);
  sub_1BBB34AE0(v65, v64, _s8DocumentV15InternalBackingOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB90);
    sub_1BBB3B8E8(v64 + *(v66 + 48), type metadata accessor for IntelligenceFile.Attributes);
    if (!v63)
    {
      goto LABEL_31;
    }

LABEL_30:

    goto LABEL_38;
  }

  v67 = *v64;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB98);
  sub_1BBB3B8E8(v64 + *(v68 + 48), type metadata accessor for IntelligenceFile.Attributes);
  if (!v63)
  {
    if (!v67)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (!v67)
  {
    goto LABEL_30;
  }

  type metadata accessor for IntelligenceFile(0);
  v69 = static IntelligenceFile.== infix(_:_:)(v63, v67);

  if ((v69 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  v70 = *(v77 + 20);
  v71 = v48 + v70;
  v72 = *(v48 + v70 + 25);
  v73 = v55 + v70;
  v74 = *(v55 + v70 + 25);
  if (v72)
  {
    if (v74)
    {
LABEL_33:
      v75 = *(v48 + *(v77 + 24)) ^ *(v55 + *(v77 + 24)) ^ 1;
      return v75 & 1;
    }

LABEL_38:
    v75 = 0;
    return v75 & 1;
  }

  if ((v74 & 1) != 0 || *v71 != *v73)
  {
    goto LABEL_38;
  }

  if (*(v71 + 24))
  {
    if (*(v73 + 24))
    {
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  v75 = 0;
  if ((*(v73 + 24) & 1) == 0 && *(v71 + 8) == *(v73 + 8) && *(v71 + 16) == *(v73 + 16))
  {
    goto LABEL_33;
  }

  return v75 & 1;
}

unint64_t sub_1BBB3B894()
{
  result = qword_1EBC7CBE0;
  if (!qword_1EBC7CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CBE0);
  }

  return result;
}

uint64_t sub_1BBB3B8E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BBB3B948()
{
  result = qword_1EBC7CBF0;
  if (!qword_1EBC7CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CBF0);
  }

  return result;
}

uint64_t sub_1BBB3B99C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BBB3B9E4()
{
  result = qword_1EBC7CC08;
  if (!qword_1EBC7CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CC08);
  }

  return result;
}

uint64_t sub_1BBB3BA38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1BBB3BACC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBB3BAEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

void sub_1BBB3BB74()
{
  _s8DocumentV15InternalBackingOMa(319);
  if (v0 <= 0x3F)
  {
    sub_1BBB3BC00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BBB3BC00()
{
  if (!qword_1EBC7CC20)
  {
    v0 = sub_1BBB83E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC7CC20);
    }
  }
}

void sub_1BBB3BC50()
{
  sub_1BBB3BCC4();
  if (v0 <= 0x3F)
  {
    sub_1BBB3BD38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BBB3BCC4()
{
  if (!qword_1EBC7CC38)
  {
    type metadata accessor for IntelligenceFile(255);
    type metadata accessor for IntelligenceFile.Attributes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBC7CC38);
    }
  }
}

void sub_1BBB3BD38()
{
  if (!qword_1EBC7CC40)
  {
    type metadata accessor for IntelligenceFile.Attributes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBC7CC40);
    }
  }
}

unint64_t sub_1BBB3BDA8()
{
  result = qword_1EBC7CC48;
  if (!qword_1EBC7CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CC48);
  }

  return result;
}

unint64_t sub_1BBB3BE00()
{
  result = qword_1EBC7CC50;
  if (!qword_1EBC7CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CC50);
  }

  return result;
}

unint64_t sub_1BBB3BE58()
{
  result = qword_1EBC7CC58;
  if (!qword_1EBC7CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CC58);
  }

  return result;
}

unint64_t sub_1BBB3BEB0()
{
  result = qword_1EBC7CC60;
  if (!qword_1EBC7CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CC60);
  }

  return result;
}

unint64_t sub_1BBB3BF08()
{
  result = qword_1EBC7CC68;
  if (!qword_1EBC7CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CC68);
  }

  return result;
}

unint64_t sub_1BBB3BF60()
{
  result = qword_1EBC7CC70;
  if (!qword_1EBC7CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CC70);
  }

  return result;
}

uint64_t sub_1BBB3BFB4()
{
  v0 = sub_1BBB84108();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1BBB3C000()
{
  result = qword_1EBC7CC90;
  if (!qword_1EBC7CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CC90);
  }

  return result;
}

unint64_t sub_1BBB3C054()
{
  result = qword_1EBC7CC98;
  if (!qword_1EBC7CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CC98);
  }

  return result;
}

unint64_t sub_1BBB3C0A8()
{
  result = qword_1EBC7CCA0;
  if (!qword_1EBC7CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CCA0);
  }

  return result;
}

unint64_t sub_1BBB3C130()
{
  result = qword_1EBC7CCC0;
  if (!qword_1EBC7CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CCC0);
  }

  return result;
}

unint64_t sub_1BBB3C188()
{
  result = qword_1EBC7CCC8;
  if (!qword_1EBC7CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CCC8);
  }

  return result;
}

unint64_t sub_1BBB3C1E0()
{
  result = qword_1EBC7CCD0;
  if (!qword_1EBC7CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CCD0);
  }

  return result;
}

unint64_t sub_1BBB3C238()
{
  result = qword_1EBC7CCD8;
  if (!qword_1EBC7CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CCD8);
  }

  return result;
}

unint64_t sub_1BBB3C290()
{
  result = qword_1EBC7CCE0;
  if (!qword_1EBC7CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CCE0);
  }

  return result;
}

unint64_t sub_1BBB3C2E8()
{
  result = qword_1EBC7CCE8;
  if (!qword_1EBC7CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CCE8);
  }

  return result;
}

unint64_t sub_1BBB3C340()
{
  result = qword_1EBC7CCF0;
  if (!qword_1EBC7CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CCF0);
  }

  return result;
}

unint64_t sub_1BBB3C398()
{
  result = qword_1EBC7CCF8;
  if (!qword_1EBC7CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CCF8);
  }

  return result;
}

unint64_t sub_1BBB3C3F0()
{
  result = qword_1EBC7CD00;
  if (!qword_1EBC7CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CD00);
  }

  return result;
}

id UIIntelligenceElementCollector.__allocating_init(context:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector____lazy_storage___visitedViews] = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_contentCollectionResults] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_elementCollectionResults] = v4;
  *&v3[OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_elementArrayCollectionResults] = v4;
  sub_1BBA98C94(a1, &v3[OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context]);
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

id UIIntelligenceElementCollector.visitedViews.getter()
{
  v1 = OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector____lazy_storage___visitedViews;
  v2 = *(v0 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector____lazy_storage___visitedViews);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector____lazy_storage___visitedViews);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AC70]) initWithOptions:514 capacity:10];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*UIIntelligenceElementCollector.visitedViews.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = UIIntelligenceElementCollector.visitedViews.getter();
  return sub_1BBB3C5CC;
}

void sub_1BBB3C5CC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector____lazy_storage___visitedViews);
  *(v1 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector____lazy_storage___visitedViews) = v2;
}

uint64_t UIIntelligenceElementCollector.createRemoteContext(description:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context + 24);
  v6 = *(v2 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context), v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t UIIntelligenceElementCollector.createRemoteContext(boundingBoxTransform:description:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context + 24);
  v8 = *(v3 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context), v7);
  return (*(v8 + 24))(a1, a2, a3, v7, v8);
}

uint64_t UIIntelligenceElementCollector.createRemoteContext()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context), v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t UIIntelligenceElementCollector.createRemoteContext(boundingBoxTransform:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context + 24);
  v4 = *(v1 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context), v3);
  return (*(v4 + 40))(a1, v3, v4);
}

uint64_t UIIntelligenceElementCollector.collectAsyncContent(description:timeout:fallback:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t *a5)
{
  v6 = v5;
  v52 = a4;
  v48 = a1;
  v10 = sub_1BBB838D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v20 = *a5;
  v21 = OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_contentCollectionResults;
  swift_beginAccess();
  v22 = *(v6 + v21);
  v23 = *(v22 + 16);
  if (!v23)
  {
    goto LABEL_17;
  }

  if ((~*(v22 + 8 * (v23 - 1) + 32) & 0xF000000000000006) != 0)
  {
    v43 = 0;
    for (i = 90; ; i = 158)
    {
LABEL_19:
      sub_1BBB840A8();
      __break(1u);
LABEL_20:
      *&v53 = 0;
      *(&v53 + 1) = 0xE000000000000000;
      sub_1BBB84028();
      MEMORY[0x1BFB16150](0xD000000000000023, 0x80000001BBB9C710);
      sub_1BBB83C98();
      v43 = 0;
    }
  }

  v45 = *&a3;
  v49 = a2;
  v50 = v20;
  v46 = v23 - 1;
  v51 = v23;
  if (qword_1ED6BF1F8 != -1)
  {
    swift_once();
  }

  v47 = off_1ED6BF200;
  v25 = *(v6 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context + 24);
  v24 = *(v6 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context + 32);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context), v25);
  (*(v24 + 8))(v56, v25, v24);
  v26 = *(v11 + 56);
  v26(v19, 1, 1, v10);
  if ((v52 & 1) == 0)
  {
    if (v45 <= 0.0)
    {
      goto LABEL_20;
    }

    sub_1BBB838B8();
    sub_1BBB838E8();
    (*(v11 + 8))(v13, v10);
    sub_1BBA8BCC4(v19, &qword_1EBC7CB00);
    v26(v16, 0, 1, v10);
    sub_1BBB337B0(v16, v19);
  }

  v27 = LODWORD(v56[0]);
  v28 = HIDWORD(v56[0]);
  if (qword_1ED6BDAE8 != -1)
  {
    swift_once();
  }

  v29 = off_1ED6BDAF0;
  os_unfair_lock_lock(off_1ED6BDAF0 + 6);
  v30 = *(v29 + 2);
  if (__OFADD__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    *(v29 + 2) = v30 + 1;
    os_unfair_lock_unlock(v29 + 6);
    v31 = v49;

    v32 = mach_continuous_time();
    *&v53 = v30;
    *(&v53 + 1) = __PAIR64__(v28, v27);
    *&v54 = v48;
    *(&v54 + 1) = v31;
    v55 = v32;
    v33 = v47[2];
    MEMORY[0x1EEE9AC00](v32);
    *(&v44 - 12) = v27;
    *(&v44 - 11) = v28;
    *(&v44 - 5) = &v53;
    *(&v44 - 4) = v19;
    *(&v44 - 3) = v56;
    i = v34;
    os_unfair_lock_lock((v33 + 32));
    sub_1BBADAD20((v33 + 16));
    os_unfair_lock_unlock((v33 + 32));
    sub_1BBA8BCC4(v19, &qword_1EBC7CB00);
    sub_1BBA96D48(v56);
    type metadata accessor for IntelligenceElement.AsyncContent();
    v30 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD30);
    v35 = swift_allocObject();
    *(v35 + 32) = 0;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0xF000000000000006;
    v36 = v54;
    *(v30 + 16) = v53;
    *(v30 + 32) = v36;
    *(v30 + 48) = v55;
    v37 = v50;
    *(v30 + 56) = v50;
    *(v30 + 64) = v35;
    swift_beginAccess();
    v27 = *(v6 + v21);
    sub_1BBA8BD24(v37);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v21) = v27;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }
  }

  v27 = sub_1BBB3D58C(v27);
  *(v6 + v21) = v27;
LABEL_12:
  if (v51 > v27[2])
  {
    __break(1u);
LABEL_17:
    v43 = 0;
    i = 88;
    goto LABEL_19;
  }

  v39 = &v27[v46];
  v40 = v39[4];
  v39[4] = v30;
  *(v6 + v21) = v27;
  swift_endAccess();
  sub_1BBA9CCB4(v40);
  return v30;
}

uint64_t UIIntelligenceElementCollector.collectAsyncContent(description:deadline:fallback:)(uint64_t a1, void *a2, uint64_t a3, unint64_t *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = *a4;
  v14 = OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_contentCollectionResults;
  swift_beginAccess();
  v15 = *(v5 + v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    if ((~*(v15 + 8 * (v16 - 1) + 32) & 0xF000000000000006) != 0)
    {
      v36 = 0;
      v35 = 107;
      goto LABEL_16;
    }

    v40 = a1;
    v41 = v13;
    v39 = v16 - 1;
    if (qword_1ED6BF1F8 != -1)
    {
      swift_once();
    }

    v17 = off_1ED6BF200;
    v18 = *(v5 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context + 24);
    v19 = *(v5 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context + 32);
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context), v18);
    (*(v19 + 8))(v45, v18, v19);
    v20 = sub_1BBB838D8();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v12, a3, v20);
    (*(v21 + 56))(v12, 0, 1, v20);
    v22 = v45[0];
    v23 = HIDWORD(v45[0]);
    if (qword_1ED6BDAE8 != -1)
    {
      swift_once();
    }

    v24 = off_1ED6BDAF0;
    os_unfair_lock_lock(off_1ED6BDAF0 + 6);
    v25 = *(v24 + 2);
    if (__OFADD__(v25, 1))
    {
      __break(1u);
    }

    else
    {
      v38 = v16;
      *(v24 + 2) = v25 + 1;
      os_unfair_lock_unlock(v24 + 6);

      v26 = mach_continuous_time();
      *&v42 = v25;
      *(&v42 + 1) = __PAIR64__(v23, v22);
      *&v43 = v40;
      *(&v43 + 1) = a2;
      v44 = v26;
      v27 = v17[2];
      MEMORY[0x1EEE9AC00](v26);
      *(&v37 - 12) = v22;
      *(&v37 - 11) = v23;
      *(&v37 - 5) = &v42;
      *(&v37 - 4) = v12;
      *(&v37 - 3) = v45;
      v35 = v17;
      os_unfair_lock_lock((v27 + 32));
      sub_1BBADB428((v27 + 16));
      os_unfair_lock_unlock((v27 + 32));
      sub_1BBA96D48(v45);
      sub_1BBA8BCC4(v12, &qword_1EBC7CB00);
      type metadata accessor for IntelligenceElement.AsyncContent();
      v25 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD30);
      v28 = swift_allocObject();
      *(v28 + 32) = 0;
      *(v28 + 16) = 0;
      *(v28 + 24) = 0xF000000000000006;
      v29 = v43;
      *(v25 + 16) = v42;
      *(v25 + 32) = v29;
      *(v25 + 48) = v44;
      v30 = v41;
      *(v25 + 56) = v41;
      *(v25 + 64) = v28;
      swift_beginAccess();
      a2 = *(v5 + v14);
      sub_1BBA8BD24(v30);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + v14) = a2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_9:
        if (v38 <= a2[2])
        {
          v32 = &a2[v39];
          v33 = v32[4];
          v32[4] = v25;
          *(v5 + v14) = a2;
          swift_endAccess();
          sub_1BBA9CCB4(v33);
          return v25;
        }

        __break(1u);
        goto LABEL_14;
      }
    }

    a2 = sub_1BBB3D58C(a2);
    *(v5 + v14) = a2;
    goto LABEL_9;
  }

LABEL_14:
  v36 = 0;
  v35 = 105;
LABEL_16:
  result = sub_1BBB840A8();
  __break(1u);
  return result;
}

Swift::Void __swiftcall UIIntelligenceElementCollector.collect(_:)(Swift::OpaquePointer a1)
{
  v3 = OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_elementArrayCollectionResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = v4[2];
  if (v5 && !*(v4[v5 + 3] + 16))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v3) = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1BBB3D5B4(v4);
      *(v1 + v3) = v4;
    }

    if (v5 <= v4[2])
    {
      v4[v5 + 3] = a1._rawValue;
      *(v1 + v3) = v4;

      swift_endAccess();

      return;
    }

    __break(1u);
  }

  sub_1BBB840A8();
  __break(1u);
}

id UIIntelligenceElementCollector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIIntelligenceElementCollector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BBB3D5C8@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BBB3D58C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[a1];
    *a2 = v9[4];
    result = memmove(v9 + 4, v9 + 5, 8 * (v7 - 1 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BBB3D654@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BBB3D5A0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[8 * a1];
    v10 = v9[3];
    *a2 = v9[2];
    a2[1] = v10;
    a2[2] = v9[4];
    *(a2 + 41) = *(v9 + 73);
    result = memmove(v9 + 2, v9 + 6, (v8 - a1) << 6);
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1BBB3D6F4(unint64_t result)
{
  if ((result & 0xF000000000000006) != 0xF000000000000002)
  {
    return sub_1BBA9CCB4(result);
  }

  return result;
}

uint64_t sub_1BBB3D764()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BBB3D7D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_1BBB3D914(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t static IntelligenceInteractionToken.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1BBB842F8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BBB3DBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001BBB9C640 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BBB842F8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BBB3DC40(uint64_t a1)
{
  v2 = sub_1BBB3DDF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB3DC7C(uint64_t a1)
{
  v2 = sub_1BBB3DDF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceInteractionToken.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB3DDF4();
  sub_1BBB84478();
  sub_1BBB84218();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1BBB3DDF4()
{
  result = qword_1EBC7CD48;
  if (!qword_1EBC7CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CD48);
  }

  return result;
}

uint64_t IntelligenceInteractionToken.hash(into:)()
{
  if (!*(v0 + 8))
  {
    return sub_1BBB84408();
  }

  sub_1BBB84408();

  return sub_1BBB83AC8();
}

uint64_t IntelligenceInteractionToken.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1BBB843D8();
  sub_1BBB84408();
  if (v1)
  {
    sub_1BBB83AC8();
  }

  return sub_1BBB84438();
}

uint64_t IntelligenceInteractionToken.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB3DDF4();
  sub_1BBB84458();
  if (!v2)
  {
    v9 = sub_1BBB84138();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB3E0A4()
{
  v1 = *(v0 + 8);
  sub_1BBB843D8();
  sub_1BBB84408();
  if (v1)
  {
    sub_1BBB83AC8();
  }

  return sub_1BBB84438();
}

uint64_t sub_1BBB3E114()
{
  if (!*(v0 + 8))
  {
    return sub_1BBB84408();
  }

  sub_1BBB84408();

  return sub_1BBB83AC8();
}

uint64_t sub_1BBB3E18C()
{
  v1 = *(v0 + 8);
  sub_1BBB843D8();
  sub_1BBB84408();
  if (v1)
  {
    sub_1BBB83AC8();
  }

  return sub_1BBB84438();
}

uint64_t sub_1BBB3E210(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB3DDF4();
  sub_1BBB84478();
  sub_1BBB84218();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BBB3E34C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1BBB842F8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

unint64_t IntelligenceInteractionToken.description.getter()
{
  v2 = *v0;
  v1 = v0[1];

  sub_1BBB84028();

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 7104878;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x1BFB16150](v3, v1);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

unint64_t sub_1BBB3E468()
{
  result = qword_1EBC7CD58;
  if (!qword_1EBC7CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CD58);
  }

  return result;
}

uint64_t sub_1BBB3E4BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BBB3E518(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1BBB3E58C()
{
  result = qword_1EBC7CD60;
  if (!qword_1EBC7CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CD60);
  }

  return result;
}

unint64_t sub_1BBB3E5E4()
{
  result = qword_1EBC7CD68;
  if (!qword_1EBC7CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CD68);
  }

  return result;
}

unint64_t sub_1BBB3E63C()
{
  result = qword_1EBC7CD70;
  if (!qword_1EBC7CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CD70);
  }

  return result;
}

char *sub_1BBB3E6B8(int a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BBB85CE0;
  *(inited + 32) = sub_1BBB83A18();
  *(inited + 40) = v5;
  result = strerror(a1);
  if (result)
  {
    v7 = MEMORY[0x1BFB16100]();
    *(inited + 72) = MEMORY[0x1E69E6158];
    if (!v8)
    {
      sub_1BBB84028();

      *&v29 = 0xD000000000000013;
      *(&v29 + 1) = 0x80000001BBB9CF90;
      LODWORD(v28[0]) = a1;
      v9 = sub_1BBB842D8();
      MEMORY[0x1BFB16150](v9);

      v7 = 0xD000000000000013;
      v8 = 0x80000001BBB9CF90;
    }

    *(inited + 48) = v7;
    *(inited + 56) = v8;
    v10 = sub_1BBAC7CBC(inited);
    swift_setDeallocating();
    sub_1BBA8BCC4(inited + 32, &qword_1EBC7B918);
    v11 = sub_1BBB833F8();
    v12 = *(v11 - 8);
    MEMORY[0x1EEE9AC00](v11);
    v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
    MEMORY[0x1EEE9AC00](v15 - 8);
    v17 = &v27 - v16;
    sub_1BBB40EC4(a2, &v27 - v16);
    if ((*(v12 + 48))(v17, 1, v11) == 1)
    {
      sub_1BBA8BCC4(v17, &qword_1EBC7BB98);
    }

    else
    {
      (*(v12 + 32))(v14, v17, v11);
      v18 = sub_1BBB83A18();
      v20 = v19;
      v30 = v11;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
      (*(v12 + 16))(boxed_opaque_existential_0, v14, v11);
      sub_1BBACB024(&v29, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v10;
      sub_1BBB408EC(v28, v18, v20, isUniquelyReferenced_nonNull_native);

      (*(v12 + 8))(v14, v11);
    }

    v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v24 = *MEMORY[0x1E696A798];
    v25 = sub_1BBB838F8();

    v26 = [v23 initWithDomain:v24 code:a1 userInfo:v25];

    sub_1BBA8BCC4(a2, &qword_1EBC7BB98);
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBB3EA88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B940);
  v53 = a2;
  result = sub_1BBB840D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v51 = result;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v52 = v5;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      if (v53)
      {
        v25 = *(v5 + 56);
        v26 = *(v5 + 48) + 112 * v24;
        v27 = *v26;
        v28 = *(v26 + 32);
        v29 = *(v26 + 48);
        v63 = *(v26 + 16);
        v64 = v28;
        v65[0] = v29;
        *(v65 + 9) = *(v26 + 57);
        v31 = *(v26 + 80);
        v30 = *(v26 + 88);
        v32 = *(v26 + 96);
        v33 = *(v26 + 104);
        v54 = *(v25 + 8 * v24);
      }

      else
      {
        v34 = (*(v5 + 48) + 112 * v24);
        v35 = v34[3];
        v36 = v34[4];
        v37 = v34[5];
        *&v62[9] = *(v34 + 89);
        *&v61[16] = v36;
        *v62 = v37;
        *v61 = v35;
        v38 = v34[2];
        v39 = *v34;
        v59 = v34[1];
        v60 = v38;
        v58 = v39;
        v40 = *(*(v5 + 56) + 8 * v24);
        v41 = v12;
        v42 = v62[24];
        v32 = *&v62[16];
        v30 = *(&v37 + 1);
        v31 = v37;
        v55 = v39;
        sub_1BBACB4D0(&v58, v57);
        v63 = v59;
        v64 = v60;
        v65[0] = *v61;
        *(v65 + 9) = *&v61[9];
        v54 = v40;
        v33 = v42;
        v12 = v41;
        v7 = v51;

        v27 = v55;
      }

      v56 = v27;
      v58 = v27;
      v59 = v63;
      v60 = v64;
      *v61 = v65[0];
      *&v61[9] = *(v65 + 9);
      *v62 = v31;
      *&v62[8] = v30;
      *&v62[16] = v32;
      v62[24] = v33;
      sub_1BBB843D8();
      IntelligenceImage.Representation.hash(into:)();
      result = sub_1BBB84438();
      v43 = -1 << *(v7 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v14 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        v16 = v56;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v14 + 8 * v45);
          if (v49 != -1)
          {
            v15 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v44) & ~*(v14 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
      v16 = v56;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 112 * v15;
      v18 = v63;
      v19 = v64;
      *v17 = v16;
      *(v17 + 16) = v18;
      v20 = v65[0];
      *(v17 + 32) = v19;
      *(v17 + 48) = v20;
      *(v17 + 57) = *(v65 + 9);
      *(v17 + 80) = v31;
      *(v17 + 88) = v30;
      *(v17 + 96) = v32;
      *(v17 + 104) = v33;
      *(*(v7 + 56) + 8 * v15) = v54;
      ++*(v7 + 16);
      v5 = v52;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v50 = 1 << *(v5 + 32);
    v3 = v2;
    if (v50 >= 64)
    {
      bzero(v9, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v50;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1BBB3EE4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B910);
  v33 = a2;
  result = sub_1BBB840D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1BBACB024(v24, v34);
      }

      else
      {
        sub_1BBA86028(v24, v34);
      }

      sub_1BBB843D8();
      sub_1BBB83AC8();
      result = sub_1BBB84438();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1BBACB024(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1BBB3F104(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B970);
  result = sub_1BBB840D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_1BBACB024(v21, v31);
      }

      else
      {
        sub_1BBA86028(v21, v31);
        v22 = v20;
      }

      sub_1BBB843D8();
      type metadata accessor for CFString(0);
      sub_1BBB41064();
      sub_1BBB835B8();
      result = sub_1BBB84438();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1BBACB024(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1BBB3F3B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B968);
  v37 = a2;
  result = sub_1BBB840D8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      *&v7 = *(*(v5 + 48) + 8 * v21);
      v40 = v7;
      v22 = (*(v5 + 56) + 48 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v26 = v22[3];
      v38 = v22[5];
      v39 = v22[4];
      if ((v37 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1BBB843D8();
      MEMORY[0x1BFB16A80](DWORD1(v40) | (v40 << 32));
      result = sub_1BBB84438();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(&v7 + 1) = *(&v40 + 1);
      *(*(v8 + 48) + 8 * v16) = v40;
      v17 = (*(v8 + 56) + 48 * v16);
      *v17 = v23;
      v17[1] = v24;
      v17[2] = v25;
      v17[3] = v26;
      v17[4] = v39;
      v17[5] = v38;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1BBB3F6BC(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = type metadata accessor for IntelligenceDataSourceItem();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v49 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v42 - v7;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD80);
  v47 = a2;
  result = sub_1BBB840D8();
  v10 = result;
  if (*(v8 + 16))
  {
    v42 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v18 = v48;
    v43 = v8;
    while (v15)
    {
      v24 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v27 = v24 | (v11 << 6);
      v28 = *(v45 + 72);
      v29 = *(v8 + 48) + v28 * v27;
      if (v47)
      {
        sub_1BBA99C44(v29, v18, type metadata accessor for IntelligenceDataSourceItem);
        sub_1BBA97A80((*(v8 + 56) + 40 * v27), v52);
      }

      else
      {
        sub_1BBB40FFC(v29, v18, type metadata accessor for IntelligenceDataSourceItem);
        sub_1BBA98C94(*(v8 + 56) + 40 * v27, v52);
      }

      sub_1BBB843D8();
      sub_1BBB40FFC(v18, v49, type metadata accessor for IntelligenceDataSourceItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          MEMORY[0x1BFB16A50](*v49);
        }

        else
        {
          v19 = v49;
          MEMORY[0x1BFB16A50](*v49);
          sub_1BBA8BCC4((v19 + 1), &qword_1EBC7C230);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v40 = *(v49 + 1);
        v50[0] = *v49;
        v50[1] = v40;
        v51 = v49[4];
        sub_1BBB83FC8();
        sub_1BBAE81B0(v50);
      }

      else
      {
        v31 = sub_1BBB83548();
        v44 = &v42;
        v32 = *(v31 - 8);
        v33 = MEMORY[0x1EEE9AC00](v31);
        v35 = &v42 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v32 + 32))(v35, v49, v31, v33);
        sub_1BBAE8204();
        sub_1BBB83918();
        (*(v32 + 8))(v35, v31);
        v8 = v43;
      }

      result = sub_1BBB84438();
      v20 = -1 << *(v10 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v17 + 8 * (v21 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v20) >> 6;
        v18 = v48;
        while (++v22 != v37 || (v36 & 1) == 0)
        {
          v38 = v22 == v37;
          if (v22 == v37)
          {
            v22 = 0;
          }

          v36 |= v38;
          v39 = *(v17 + 8 * v22);
          if (v39 != -1)
          {
            v23 = __clz(__rbit64(~v39)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v17 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v18 = v48;
LABEL_9:
      *(v17 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      sub_1BBA99C44(v18, *(v10 + 48) + v28 * v23, type metadata accessor for IntelligenceDataSourceItem);
      result = sub_1BBA97A80(v52, *(v10 + 56) + 40 * v23);
      ++*(v10 + 16);
    }

    v25 = v11;
    while (1)
    {
      v11 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v11 >= v16)
      {
        break;
      }

      v26 = v12[v11];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v15 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_41;
    }

    v41 = 1 << *(v8 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v12, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v41;
    }

    *(v8 + 16) = 0;
  }

LABEL_41:
  *v3 = v10;
  return result;
}

void *sub_1BBB3FC3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B940);
  v2 = *v0;
  v3 = sub_1BBB840C8();
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
        v18 = (*(v2 + 48) + 112 * v17);
        v19 = v18[3];
        v20 = v18[4];
        v21 = v18[5];
        *&v27[9] = *(v18 + 89);
        v26[4] = v20;
        *v27 = v21;
        v26[3] = v19;
        v23 = v18[1];
        v22 = v18[2];
        v26[0] = *v18;
        v26[1] = v23;
        v26[2] = v22;
        v24 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + 112 * v17), v18, 0x69uLL);
        *(*(v4 + 56) + 8 * v17) = v24;
        sub_1BBACB4D0(v26, &v25);
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

void *sub_1BBB3FDF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B910);
  v2 = *v0;
  v3 = sub_1BBB840C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1BBA86028(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1BBACB024(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_1BBB3FF98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B970);
  v2 = *v0;
  v3 = sub_1BBB840C8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1BBA86028(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1BBACB024(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

void *sub_1BBB40118()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceElement.StorageValue();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B958);
  v4 = *v0;
  v5 = sub_1BBB840C8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1BBB40FFC(*(v4 + 56) + v23, v26, type metadata accessor for IntelligenceElement.StorageValue);
        v24 = v28;
        *(*(v28 + 48) + v20) = v21;
        result = sub_1BBA99C44(v22, *(v24 + 56) + v23, type metadata accessor for IntelligenceElement.StorageValue);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1BBB40350()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B968);
  v23 = v0;
  v1 = *v0;
  v24 = sub_1BBB840C8();
  if (*(v1 + 16))
  {
    result = (v24 + 64);
    v3 = ((1 << *(v24 + 32)) + 63) >> 6;
    if (v24 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v24 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = (*(v1 + 56) + 48 * v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[2];
        v19 = v15[3];
        v20 = v15[4];
        v21 = v15[5];
        *(*(v24 + 48) + 8 * v14) = *(*(v1 + 48) + 8 * v14);
        v22 = (*(v24 + 56) + 48 * v14);
        *v22 = v16;
        v22[1] = v17;
        v22[2] = v18;
        v22[3] = v19;
        v22[4] = v20;
        v22[5] = v21;

        swift_unknownObjectRetain();
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v23 = v24;
  }

  return result;
}

void *sub_1BBB40518()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceDataSourceItem();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD80);
  v5 = *v0;
  v6 = sub_1BBB840C8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1BBB40FFC(*(v5 + 48) + v21, v4, type metadata accessor for IntelligenceDataSourceItem);
        v20 *= 40;
        sub_1BBA98C94(*(v5 + 56) + v20, v25);
        sub_1BBA99C44(v4, *(v7 + 48) + v21, type metadata accessor for IntelligenceDataSourceItem);
        result = sub_1BBA97A80(v25, *(v7 + 56) + v20);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1BBB4075C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BBAE35CC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1BBB3EA88(v14, a3 & 1);
      v9 = sub_1BBAE35CC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1BBB84378();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1BBB3FC3C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v21 = (v19[6] + 112 * v9);
    v23 = *(a2 + 16);
    v22 = *(a2 + 32);
    *v21 = *a2;
    v21[1] = v23;
    v21[2] = v22;
    v24 = *(a2 + 48);
    v25 = *(a2 + 64);
    v26 = *(a2 + 80);
    *(v21 + 89) = *(a2 + 89);
    v21[4] = v25;
    v21[5] = v26;
    v21[3] = v24;
    *(v19[7] + 8 * v9) = a1;
    v27 = v19[2];
    v13 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v13)
    {
      v19[2] = v28;
      return sub_1BBACB4D0(a2, &v29);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

_OWORD *sub_1BBB408EC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BBAE3554(a2, a3);
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
      sub_1BBB3FDF4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BBB3EE4C(v16, a4 & 1);
    v11 = sub_1BBAE3554(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1BBB84378();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1BBACB024(a1, v22);
  }

  else
  {
    sub_1BBB40D30(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1BBB40A3C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1BBAE365C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1BBB3FF98();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1BBB3F104(v13, a3 & 1);
    v8 = sub_1BBAE365C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1BBB84378();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_1BBACB024(a1, v19);
  }

  else
  {
    sub_1BBB40D9C(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1BBB40B7C(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for IntelligenceDataSourceItem();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1BBAE3710(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1BBB40518();
      goto LABEL_7;
    }

    sub_1BBB3F6BC(v16, a3 & 1);
    v22 = sub_1BBAE3710(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1BBB40FFC(a2, v10, type metadata accessor for IntelligenceDataSourceItem);
      return sub_1BBB40E04(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1BBB84378();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 40 * v13;
  __swift_destroy_boxed_opaque_existential_1(v20);

  return sub_1BBA97A80(a1, v20);
}

_OWORD *sub_1BBB40D30(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1BBACB024(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1BBB40D9C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1BBACB024(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1BBB40E04(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for IntelligenceDataSourceItem();
  sub_1BBA99C44(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for IntelligenceDataSourceItem);
  result = sub_1BBA97A80(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1BBB40EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BBB40F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceElement.StorageValue();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBB40FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBB41064()
{
  result = qword_1EBC7BE68;
  if (!qword_1EBC7BE68)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BE68);
  }

  return result;
}

uint64_t IntelligenceElement.NavigationSplitPane.Pane.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x2072616265646953 && a2 == 0xEC000000656E6150;
  if (v6 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x20746E65746E6F43 && a2 == 0xEC000000656E6150 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 0x50206C6961746544 && a2 == 0xEB00000000656E61 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 2;
  }

  else if (a1 == 0x6F74636570736E49 && a2 == 0xEE00656E61502072)
  {

    v8 = 3;
  }

  else
  {
    v9 = sub_1BBB842F8();

    if (v9)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BBB41254()
{
  v1 = 0x72616265646973;
  v2 = 0x6C6961746564;
  if (*v0 != 2)
  {
    v2 = 0x6F74636570736E69;
  }

  if (*v0)
  {
    v1 = 0x746E65746E6F63;
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

uint64_t sub_1BBB412D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBB48BE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBB412F8(uint64_t a1)
{
  v2 = sub_1BBB46C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB41334(uint64_t a1)
{
  v2 = sub_1BBB46C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB41370(uint64_t a1)
{
  v2 = sub_1BBB46D04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB413AC(uint64_t a1)
{
  v2 = sub_1BBB46D04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB413E8(uint64_t a1)
{
  v2 = sub_1BBB46CB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB41424(uint64_t a1)
{
  v2 = sub_1BBB46CB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB41460(uint64_t a1)
{
  v2 = sub_1BBB46C5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4149C(uint64_t a1)
{
  v2 = sub_1BBB46C5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB414D8(uint64_t a1)
{
  v2 = sub_1BBB46D58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB41514(uint64_t a1)
{
  v2 = sub_1BBB46D58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.NavigationSplitPane.Pane.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

uint64_t IntelligenceElement.NavigationSplitPane.visiblePanes.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  memcpy(__dst, (v3 + 16), 0x101uLL);
  v4 = *(v3 + 232);
  v44 = *(v3 + 216);
  v45 = v4;
  v46[0] = *(v3 + 248);
  *(v46 + 9) = *(v3 + 257);
  v5 = *(v3 + 168);
  v40 = *(v3 + 152);
  v41 = v5;
  v6 = *(v3 + 200);
  v42 = *(v3 + 184);
  v43 = v6;
  v7 = *(v3 + 104);
  v36 = *(v3 + 88);
  v37 = v7;
  v8 = *(v3 + 136);
  v38 = *(v3 + 120);
  v39 = v8;
  v9 = *(v3 + 40);
  v32 = *(v3 + 24);
  v33 = v9;
  v10 = *(v3 + 72);
  v34 = *(v3 + 56);
  v35 = v10;
  sub_1BBB42740(__dst, v30);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v11 = *v1;
    swift_beginAccess();
    memcpy(v30, (v11 + 16), 0x101uLL);
    v12 = v45;
    *(v11 + 216) = v44;
    v13 = *(v46 + 9);
    *(v11 + 232) = v12;
    *(v11 + 248) = v46[0];
    *(v11 + 257) = v13;
    v14 = v41;
    *(v11 + 152) = v40;
    *(v11 + 168) = v14;
    v15 = v43;
    *(v11 + 184) = v42;
    *(v11 + 200) = v15;
    v16 = v37;
    *(v11 + 88) = v36;
    *(v11 + 104) = v16;
    v17 = v39;
    *(v11 + 120) = v38;
    *(v11 + 136) = v17;
    v18 = v33;
    *(v11 + 24) = v32;
    *(v11 + 40) = v18;
    v19 = v35;
    *(v11 + 56) = v34;
    *(v11 + 16) = a1;
    *(v11 + 72) = v19;
    return sub_1BBB42778(v30);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD90);
    v21 = swift_allocObject();
    v22 = v45;
    *(v21 + 216) = v44;
    v23 = *(v46 + 9);
    *(v21 + 232) = v22;
    *(v21 + 248) = v46[0];
    *(v21 + 257) = v23;
    v24 = v41;
    *(v21 + 152) = v40;
    *(v21 + 168) = v24;
    v25 = v43;
    *(v21 + 184) = v42;
    *(v21 + 200) = v25;
    v26 = v37;
    *(v21 + 88) = v36;
    *(v21 + 104) = v26;
    v27 = v39;
    *(v21 + 120) = v38;
    *(v21 + 136) = v27;
    v28 = v33;
    *(v21 + 24) = v32;
    *(v21 + 40) = v28;
    v29 = v35;
    *(v21 + 56) = v34;
    *(v21 + 16) = a1;
    *(v21 + 72) = v29;

    *v1 = v21;
  }

  return result;
}

void (*IntelligenceElement.NavigationSplitPane.visiblePanes.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 16);

  return sub_1BBB418E8;
}