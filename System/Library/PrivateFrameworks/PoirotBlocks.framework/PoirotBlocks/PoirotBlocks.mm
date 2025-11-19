uint64_t sub_21B17A878@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21B20D2F8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21B17A8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21B17A974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21B17AA40()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21B17AA88()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17AACC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17AB0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17ABA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B17AC60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B17AD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B17AE14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B17AEF4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21B17AF3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B17AF7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17AFB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B17AFF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17B02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B20C728();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21B17B0F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21B20C728();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21B17B1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21B20C768();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B17B258(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21B20C768();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B17B2FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17B334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DatasetColumnType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B17B3E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DatasetColumnType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B17B484(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B20CCE8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21B17B4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B20CCE8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21B17B564()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17B59C()
{
  if (*(v0 + 56) != 255)
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_21B1BDE44();
  }

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_21B17B61C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B17B654@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_21B17B69C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

void *sub_21B17B6E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 2;
  return result;
}

uint64_t sub_21B17B6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B20CFD8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21B17B7C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21B20CFD8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t *sub_21B17B884@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = MEMORY[0x277D3E338];
  a2[3] = MEMORY[0x277D837D0];
  a2[4] = v4;
  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_21B17B8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21B20C768();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B17B99C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21B20C768();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B17BA40()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B17BA7C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B17BAB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B17BB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21B20C678();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21B17BC34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_21B20C678();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED28, &unk_21B212870);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21B17BD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_21B17BDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_21B17BE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource.Container(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21B17BEDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource.Container(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21B17BF74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B17BFAC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B17C01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B20C728();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21B17C150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21B20C728();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21B17C284(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21B17C2EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

_OWORD *sub_21B17C304(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21B17C3F8(uint64_t a1, id *a2)
{
  result = sub_21B20D2D8();
  *a2 = 0;
  return result;
}

uint64_t sub_21B17C470(uint64_t a1, id *a2)
{
  v3 = sub_21B20D2E8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21B17C4F0@<X0>(uint64_t *a1@<X8>)
{
  sub_21B20D2F8();
  v2 = sub_21B20D2C8();

  *a1 = v2;
  return result;
}

uint64_t sub_21B17C534(uint64_t a1)
{
  v2 = sub_21B17C840(&qword_27CD6EA40, type metadata accessor for URLResourceKey);
  v3 = sub_21B17C840(&qword_27CD6EA48, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21B17C5F0(uint64_t a1)
{
  v2 = sub_21B17C840(&qword_27CD6E9A0, type metadata accessor for BMUseCaseIdentifier);
  v3 = sub_21B17C840(&qword_27CD6E9A8, type metadata accessor for BMUseCaseIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21B17C6AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21B20D2C8();

  *a2 = v5;
  return result;
}

uint64_t sub_21B17C6F4(uint64_t a1)
{
  v2 = sub_21B17C840(&qword_27CD6E9B0, type metadata accessor for BMStreamIdentifier);
  v3 = sub_21B17C840(&qword_27CD6E9B8, type metadata accessor for BMStreamIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21B17C840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21B17C888()
{
  v1 = *v0;
  v2 = sub_21B20D2F8();
  v3 = MEMORY[0x21CEEBBD0](v2);

  return v3;
}

uint64_t sub_21B17C8C4()
{
  v1 = *v0;
  sub_21B20D2F8();
  sub_21B20D388();
}

uint64_t sub_21B17C918()
{
  v1 = *v0;
  sub_21B20D2F8();
  sub_21B20DC88();
  sub_21B20D388();
  v2 = sub_21B20DCA8();

  return v2;
}

uint64_t sub_21B17C98C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21B20D2F8();
  v6 = v5;
  if (v4 == sub_21B20D2F8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21B20DB28();
  }

  return v9 & 1;
}

void sub_21B17CB48(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t ExecutionInputPayload.hostTaskIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ExecutionInputPayload.parameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExecutionInputPayload() + 20);

  return sub_21B17CD58(v3, a1);
}

uint64_t type metadata accessor for ExecutionInputPayload()
{
  result = qword_27CD6EAF0;
  if (!qword_27CD6EAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B17CD58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t ExecutionInputPayload.recipeName.getter()
{
  v1 = (v0 + *(type metadata accessor for ExecutionInputPayload() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExecutionInputPayload.archivedRecipe.getter()
{
  v1 = v0 + *(type metadata accessor for ExecutionInputPayload() + 28);
  v2 = *v1;
  sub_21B17CE94(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_21B17CE94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21B17CEA8(a1, a2);
  }

  return a1;
}

uint64_t sub_21B17CEA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ExecutionInputPayload.init(withHostTaskIdentifier:parameters:recipeFolderURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_21B20C678();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = a1;
  a5[1] = a2;
  v29 = a2;
  v15 = type metadata accessor for ExecutionInputPayload();
  v16 = v15[5];
  sub_21B17CD58(a3, a5 + v16);
  v17 = sub_21B20C598();
  v18 = (a5 + v15[6]);
  *v18 = v17;
  v18[1] = v19;
  v20 = v30;
  sub_21B1C867C(a4, v14);
  if (v20)
  {
    v30 = v20;
    (*(v11 + 8))(a4, v10);
    sub_21B17DA0C(a3);

    sub_21B17DA0C(a5 + v16);
  }

  else
  {
    v21 = sub_21B20C688();
    v30 = 0;
    v23 = v21;
    v29 = v24;
    sub_21B1C9218();
    v25 = *(v11 + 8);
    v25(a4, v10);
    sub_21B17DA0C(a3);
    result = (v25)(v14, v10);
    v26 = (a5 + v15[7]);
    v27 = v29;
    *v26 = v23;
    v26[1] = v27;
  }

  return result;
}

double ExecutionInputPayload.init(withHostTaskIdentifier:parameters:command:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for ExecutionInputPayload();
  sub_21B17DA74(a3, a4 + v6[5]);
  v7 = a4 + v6[6];
  strcpy(v7, "get-host-info");
  *(v7 + 7) = -4864;
  result = 0.0;
  *(a4 + v6[7]) = xmmword_21B210EE0;
  return result;
}

uint64_t ExecutionInputPayload.unarchiveRecipe(into:)(uint64_t a1)
{
  result = type metadata accessor for ExecutionInputPayload();
  v4 = v1 + *(result + 28);
  v5 = *(v4 + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    sub_21B17CE94(*v4, *(v4 + 8));
    sub_21B1C9338(v6, v5, a1);
    return sub_21B17DAE4(v6, v5);
  }

  return result;
}

uint64_t sub_21B17D21C()
{
  v1 = *v0;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](v1);
  return sub_21B20DCA8();
}

uint64_t sub_21B17D264()
{
  v1 = *v0;
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](v1);
  return sub_21B20DCA8();
}

unint64_t sub_21B17D2A8()
{
  v1 = 0x6574656D61726170;
  v2 = 0x614E657069636572;
  if (*v0 != 2)
  {
    v2 = 0x6465766968637261;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_21B17D338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B17E1D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B17D378(uint64_t a1)
{
  v2 = sub_21B17DB90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B17D3B4(uint64_t a1)
{
  v2 = sub_21B17DB90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExecutionInputPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB8, &qword_21B210EF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B17DB90();
  sub_21B20DD08();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  sub_21B20D998();
  if (!v2)
  {
    v13 = type metadata accessor for ExecutionInputPayload();
    v14 = v13[5];
    LOBYTE(v22) = 1;
    type metadata accessor for PoirotToolTaskParameters();
    sub_21B17DC84(&qword_27CD6EAC8);
    sub_21B20D9D8();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v22) = 2;
    sub_21B20D9E8();
    v18 = (v3 + v13[7]);
    v19 = v18[1];
    v22 = *v18;
    v23 = v19;
    v21[15] = 3;
    sub_21B17CE94(v22, v19);
    sub_21B17DBE4();
    sub_21B20D9D8();
    sub_21B17DAE4(v22, v23);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ExecutionInputPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAD8, &qword_21B210F00);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - v10;
  v12 = type metadata accessor for ExecutionInputPayload();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B17DB90();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = a1;
  v17 = v27;
  LOBYTE(v29) = 0;
  *v15 = sub_21B20D868();
  v15[1] = v18;
  v24[1] = v18;
  type metadata accessor for PoirotToolTaskParameters();
  LOBYTE(v29) = 1;
  sub_21B17DC84(&qword_27CD6EAE0);
  sub_21B20D8B8();
  sub_21B17DA74(v7, v15 + v12[5]);
  LOBYTE(v29) = 2;
  v19 = sub_21B20D8C8();
  v20 = v25;
  v21 = (v15 + v12[6]);
  *v21 = v19;
  v21[1] = v22;
  v30 = 3;
  sub_21B17DCC8();
  sub_21B20D8B8();
  (*(v17 + 8))(v11, v28);
  *(v15 + v12[7]) = v29;
  sub_21B17DD1C(v15, v26);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_21B17DD80(v15);
}

uint64_t sub_21B17DA0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B17DA74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EAB0, &qword_21B210EF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B17DAE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21B17DAF8(a1, a2);
  }

  return a1;
}

uint64_t sub_21B17DAF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_21B17DB90()
{
  result = qword_27CD6EAC0;
  if (!qword_27CD6EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EAC0);
  }

  return result;
}

unint64_t sub_21B17DBE4()
{
  result = qword_27CD6EAD0;
  if (!qword_27CD6EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EAD0);
  }

  return result;
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

uint64_t sub_21B17DC84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PoirotToolTaskParameters();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B17DCC8()
{
  result = qword_27CD6EAE8;
  if (!qword_27CD6EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EAE8);
  }

  return result;
}

uint64_t sub_21B17DD1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionInputPayload();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B17DD80(uint64_t a1)
{
  v2 = type metadata accessor for ExecutionInputPayload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21B17DE04()
{
  sub_21B17DF1C(319, &qword_2811F9F58);
  if (v0 <= 0x3F)
  {
    sub_21B17DEC4();
    if (v1 <= 0x3F)
    {
      sub_21B17DF1C(319, &qword_27CD6EB08);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B17DEC4()
{
  if (!qword_27CD6EB00)
  {
    type metadata accessor for PoirotToolTaskParameters();
    v0 = sub_21B20D5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD6EB00);
    }
  }
}

void sub_21B17DF1C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21B20D5D8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ExecutionInputPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExecutionInputPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21B17E0D0()
{
  result = qword_27CD6EB10;
  if (!qword_27CD6EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB10);
  }

  return result;
}

unint64_t sub_21B17E128()
{
  result = qword_27CD6EB18;
  if (!qword_27CD6EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB18);
  }

  return result;
}

unint64_t sub_21B17E180()
{
  result = qword_27CD6EB20;
  if (!qword_27CD6EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB20);
  }

  return result;
}

uint64_t sub_21B17E1D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000021B20E880 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E657069636572 && a2 == 0xEA0000000000656DLL || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xEE00657069636552)
  {

    return 3;
  }

  else
  {
    v5 = sub_21B20DB28();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21B17E380(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21B17E3DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21B17E460(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v36 = a3;
  v8 = *a4;
  v9 = a4[1];
  v10 = a4[2];
  v11 = *(a4 + 24);
  v12 = a4[4];
  v13 = a4[5];
  sub_21B17FB4C(a1, v40);
  v38 = &type metadata for AggregationBlockConfig;
  v39 = sub_21B17FC04();
  v14 = swift_allocObject();
  v37[0] = v14;
  *(v14 + 16) = v8;
  *(v14 + 24) = v9;
  *(v14 + 32) = v10;
  *(v14 + 40) = v11;
  *(v14 + 48) = v12;
  *(v14 + 56) = v13;
  if (a2)
  {
    goto LABEL_4;
  }

  v15 = *__swift_project_boxed_opaque_existential_1(v40, v41);
  v16 = sub_21B20D368();
  v18 = v17;
  swift_beginAccess();
  a2 = sub_21B1BA38C(v16, v18);
  swift_endAccess();
  if (a2)
  {

LABEL_4:
    *(v5 + 88) = v11;
    *(v5 + 56) = a2;
    *(v5 + 64) = v10;

    __swift_destroy_boxed_opaque_existential_1(a1);
    *(v5 + 72) = v12;
    *(v5 + 80) = v13;
    v19 = *(*__swift_project_boxed_opaque_existential_1(v40, v41) + 152);
    v20 = v38;
    v21 = __swift_project_boxed_opaque_existential_1(v37, v38);
    v22 = *(v20[-1].Description + 8);
    MEMORY[0x28223BE20](v21);
    v24 = (v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
    (*(v25 + 16))(v24);
    v26 = *v24;
    v27 = v24[1];
    v28 = v24[2];
    v29 = v24[5];
    *(v5 + 16) = 0;
    *(v5 + 24) = v19;

    *(v5 + 32) = v26;
    *(v5 + 40) = v27;
    *(v5 + 48) = v36;
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return v5;
  }

  sub_21B17FC58();
  v31 = swift_allocError();
  *v32 = v16;
  *(v32 + 8) = v18;
  *(v32 + 16) = 3;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v40);
  type metadata accessor for QueryBlock();
  swift_deallocPartialClassInstance();
  v40[0] = v31;
  v33 = v31;
  v34 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {

    sub_21B17FAF8();
    swift_allocError();
    *v35 = v31;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v5;
}

uint64_t sub_21B17E7AC(char **a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21B20D4D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B17E964(a1, a2, a3);
  if (v3)
  {
    v17 = v3;
    v12 = v3;
    v13 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if (swift_dynamicCast())
    {
    }

    else
    {
      v17 = v3;
      if (swift_dynamicCast())
      {
        (*(v8 + 8))(v11, v7);
      }

      else
      {
        sub_21B17FAF8();
        swift_allocError();
        *v14 = v3 | 0x8000000000000000;
        swift_willThrow();
      }
    }
  }

  return 1;
}

uint64_t sub_21B17E964(char **a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v78 = a3;
  v84 = a2;
  v81 = a1;
  v83 = sub_21B20D4D8();
  v73 = *(v83 - 8);
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DatasetColumnDescription();
  v79 = *(v9 - 8);
  v10 = *(v79 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B20CF28();
  v75 = *(v13 - 8);
  v14 = *(v75 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v69 - v18;
  v20 = v3[3];
  v21 = v6[7];
  v23 = *(v21 + 32);
  v22 = *(v21 + 40);

  sub_21B20CE98();
  if (v5)
  {

    v25 = v82;
    v24 = v83;
    v26 = v6;
    goto LABEL_4;
  }

  *(&v85 + 1) = v17;
  v74 = v19;
  v27 = v75;
  v70 = v13;

  *&v86 = *v81;
  v28 = v86;
  v30 = v6[9];
  v29 = v6[10];
  v71 = v6;

  sub_21B1D151C(v30, v29);

  v31 = *(&v85 + 1);
  sub_21B20CF18();
  v77 = 0;
  v39 = *(v27 + 8);
  v75 = v27 + 8;
  v69 = v39;
  v39(v31, v70);

  v40 = v71[5];
  *&v85 = v71[4];
  *(&v85 + 1) = v40;
  v41 = v78;
  v42 = v79;
  v72 = v78 + 16;
  v43 = v71[8];
  v44 = v28;
  v80 = v43;
  v45 = v81;
  while (1)
  {
    v76 = v44;
    v46 = *(v43 + 16);
    if (v46)
    {
      v90 = MEMORY[0x277D84F90];

      sub_21B18FD70(0, v46, 0);
      v47 = v90;
      v48 = v43 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v49 = *(v42 + 72);
      do
      {
        sub_21B17FCC8(v48, v12);
        v90 = v47;
        v51 = *(v47 + 16);
        v50 = *(v47 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_21B18FD70((v50 > 1), v51 + 1, 1);
          v47 = v90;
        }

        v88 = v9;
        v89 = sub_21B17FD2C();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v86);
        sub_21B17FCC8(v12, boxed_opaque_existential_1);
        *(v47 + 16) = v51 + 1;
        sub_21B17C284(&v86, v47 + 40 * v51 + 32);
        sub_21B17FDE8(v12);
        v48 += v49;
        --v46;
      }

      while (v46);

      v41 = v78;
      v45 = v81;
    }

    else
    {
      v47 = MEMORY[0x277D84F90];
    }

    v53 = *(v47 + 16);

    if (!v53)
    {
      break;
    }

    v88 = &type metadata for DatasetColumnLayout;
    v54 = sub_21B17FE44();
    v86 = v85;
    v89 = v54;
    v87 = v80;

    v55 = v74;
    v56 = v77;
    v57 = sub_21B20CED8();
    v77 = v56;
    if (v56)
    {
      v69(v55, v70);
      __swift_destroy_boxed_opaque_existential_1(&v86);
      goto LABEL_32;
    }

    v58 = v57;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    v42 = v79;
    if (!v58)
    {
      goto LABEL_29;
    }

LABEL_24:
    ObjectType = swift_getObjectType();
    v86 = v85;
    v87 = v58;
    v62 = *(v41 + 16);

    v62(&v86, ObjectType, v41);
    v63 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v63;
    *v45 = v63;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_21B1D280C(0, *(v63 + 2) + 1, 1, v63);
      *v45 = v44;
    }

    v66 = *(v44 + 2);
    v65 = *(v44 + 3);
    if (v66 >= v65 >> 1)
    {
      v44 = sub_21B1D280C((v65 > 1), v66 + 1, 1, v44);
    }

    *(v44 + 2) = v66 + 1;
    v67 = &v44[24 * v66];
    v68 = *(&v85 + 1);
    *(v67 + 4) = v85;
    *(v67 + 5) = v68;
    *(v67 + 6) = v58;
    *v45 = v44;
    v43 = v80;
  }

  v55 = v74;
  v59 = v77;
  v60 = sub_21B20CEE8();
  v77 = v59;
  if (!v59)
  {
    v58 = v60;
    v42 = v79;
    if (!v60)
    {
LABEL_29:
      v69(v55, v70);
      v26 = v71;
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  v69(v55, v70);
LABEL_32:
  v5 = v77;
  v26 = v71;
  v25 = v82;
  v24 = v83;
LABEL_4:
  if (*(v26 + 88) == 1)
  {
    *&v86 = v5;
    v32 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if (swift_dynamicCast())
    {
      (*(v73 + 8))(v25, v24);
    }

    else
    {
      v33 = swift_getObjectType();
      v34 = swift_allocObject();
      *(v34 + 16) = v26;
      *(v34 + 24) = v5;
      v35 = v78;
      v36 = *(v78 + 8);
      v37 = v5;

      v36(sub_21B17FCAC, v34, v33, v35);

LABEL_9:
      *(v26 + 16) = 1;
    }
  }

  return 1;
}

uint64_t sub_21B17F0C8(uint64_t a1)
{
  v2 = sub_21B20D348();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B2110C0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v16[4] = 0;
  v16[5] = 0xE000000000000000;

  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD000000000000023, 0x800000021B20E8D0);
  swift_getErrorValue();
  sub_21B20DB08();
  sub_21B20D338();
  v10 = sub_21B20D308();
  v12 = v11;

  (*(v3 + 8))(v6, v2);
  if (v12 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v14 = 0xC000000000000000;
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  *(v7 + 48) = 3;
  if (v12 >> 60 != 15)
  {
    v14 = v12;
  }

  *(v7 + 56) = v13;
  *(v7 + 64) = v14;
  return v7;
}

uint64_t sub_21B17F290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v3[4];
  v7 = v3[5];
  v8 = *(a2 + 16);
  v58 = a3;
  v59 = v6;
  if (v8)
  {
    v9 = sub_21B1B9778(v6, v7);
    if (v10)
    {
      v11 = (*(a2 + 56) + 16 * v9);
      v7 = v11[1];
      v59 = *v11;
    }
  }

  v57 = v7;

  sub_21B17FB4C(a1, v63);
  v56 = v3;
  v12 = v3[7];
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  v15 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 64);
  v19 = (v16 + 63) >> 6;

  v60 = a2;

  for (i = 0; v18; v14 = v32)
  {
    v22 = i;
LABEL_12:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = (v22 << 10) | (16 * v23);
    v25 = (*(v60 + 48) + v24);
    v27 = *v25;
    v26 = v25[1];
    v28 = (*(v60 + 56) + v24);
    v30 = *v28;
    v29 = v28[1];
    v62[0] = v13;
    v62[1] = v14;
    v61[0] = 9509;
    v61[1] = 0xE200000000000000;

    MEMORY[0x21CEEBBB0](v27, v26);
    MEMORY[0x21CEEBBB0](9509, 0xE200000000000000);
    v64 = v14;
    v62[5] = v30;
    v62[6] = v29;
    sub_21B17FBB0();
    v13 = sub_21B20D628();
    v32 = v31;
  }

  while (1)
  {
    v22 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      v33 = v60;

      type metadata accessor for Query();
      v34 = swift_allocObject();
      *(v34 + 48) = 0;
      v35 = v14;
      v36 = v59;
      v37 = v57;
      *(v34 + 16) = v59;
      *(v34 + 24) = v37;
      *(v34 + 32) = v13;
      *(v34 + 40) = v35;
      v64 = v56[6];
      v38 = v56[8];

      v39 = sub_21B1B303C(v33, v38);
      v40 = *(v56 + 88);
      v42 = v56[9];
      v41 = v56[10];
      v60 = type metadata accessor for AggregationBlock();
      v43 = swift_allocObject();
      sub_21B17FB4C(v63, v62);
      v61[3] = &type metadata for AggregationBlockConfig;
      v61[4] = sub_21B17FC04();
      v44 = swift_allocObject();
      v61[0] = v44;
      *(v44 + 16) = v36;
      *(v44 + 24) = v37;
      *(v44 + 32) = v39;
      *(v44 + 40) = v40;
      *(v44 + 48) = v42;
      *(v44 + 56) = v41;
      *(v43 + 88) = v40;
      *(v43 + 56) = v34;
      *(v43 + 64) = v39;
      swift_bridgeObjectRetain_n();

      __swift_destroy_boxed_opaque_existential_1(v63);
      *(v43 + 72) = v42;
      *(v43 + 80) = v41;
      v45 = *(*__swift_project_boxed_opaque_existential_1(v62, v62[3]) + 152);
      v46 = __swift_project_boxed_opaque_existential_1(v61, &type metadata for AggregationBlockConfig);
      v47 = *(off_282CA1048 + 8);
      MEMORY[0x28223BE20](v46);
      v49 = (&v56 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v50 + 16))(v49);
      v51 = *v49;
      v52 = v49[1];
      v53 = v49[2];
      v54 = v49[5];
      *(v43 + 16) = 0;
      *(v43 + 24) = v45;

      *(v43 + 32) = v51;
      *(v43 + 40) = v52;
      *(v43 + 48) = v64;
      __swift_destroy_boxed_opaque_existential_1(v61);
      result = __swift_destroy_boxed_opaque_existential_1(v62);
      v55 = v58;
      v58[3] = v60;
      v55[4] = &off_282CA0120;
      *v55 = v43;
      return result;
    }

    v18 = *(v15 + 8 * v22);
    ++i;
    if (v18)
    {
      i = v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B17F6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v3[4];
  v7 = v3[5];
  v8 = *(a2 + 16);
  v58 = a3;
  if (v8)
  {
    v9 = sub_21B1B9778(v6, v7);
    if (v10)
    {
      v11 = (*(a2 + 56) + 16 * v9);
      v6 = *v11;
      v7 = v11[1];
    }
  }

  v56 = v7;
  v57 = v6;

  sub_21B17FB4C(a1, v61);
  v55 = v3;
  v12 = v3[7];
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;

  for (i = 0; v17; v14 = v31)
  {
    v21 = i;
LABEL_12:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = (v21 << 10) | (16 * v22);
    v24 = (*(a2 + 48) + v23);
    v26 = *v24;
    v25 = v24[1];
    v27 = (*(a2 + 56) + v23);
    v29 = *v27;
    v28 = v27[1];
    v60[0] = v13;
    v60[1] = v14;
    v59[0] = v26;
    v59[1] = v25;
    v60[5] = v29;
    v60[6] = v28;
    sub_21B17FBB0();
    v13 = sub_21B20D628();
    v31 = v30;
  }

  while (1)
  {
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      type metadata accessor for Query();
      v32 = swift_allocObject();
      *(v32 + 48) = 0;
      v34 = v56;
      v33 = v57;
      *(v32 + 16) = v57;
      *(v32 + 24) = v34;
      *(v32 + 32) = v13;
      *(v32 + 40) = v14;
      v54 = *(v55 + 48);
      v35 = *(v55 + 64);

      v36 = sub_21B1B303C(a2, v35);
      v37 = *(v55 + 88);
      v38 = *(v55 + 72);
      v39 = *(v55 + 80);
      v55 = type metadata accessor for AggregationBlock();
      v40 = swift_allocObject();
      sub_21B17FB4C(v61, v60);
      v59[3] = &type metadata for AggregationBlockConfig;
      v59[4] = sub_21B17FC04();
      v41 = swift_allocObject();
      v59[0] = v41;
      *(v41 + 16) = v33;
      *(v41 + 24) = v34;
      *(v41 + 32) = v36;
      *(v41 + 40) = v37;
      *(v41 + 48) = v38;
      *(v41 + 56) = v39;
      *(v40 + 88) = v37;
      *(v40 + 56) = v32;
      *(v40 + 64) = v36;
      swift_bridgeObjectRetain_n();

      __swift_destroy_boxed_opaque_existential_1(v61);
      *(v40 + 72) = v38;
      *(v40 + 80) = v39;
      v42 = *(*__swift_project_boxed_opaque_existential_1(v60, v60[3]) + 152);
      v43 = __swift_project_boxed_opaque_existential_1(v59, &type metadata for AggregationBlockConfig);
      v44 = *(off_282CA1048 + 8);
      MEMORY[0x28223BE20](v43);
      v46 = (&v53 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v47 + 16))(v46);
      v48 = *v46;
      v49 = v46[1];
      v50 = v46[2];
      v51 = v46[5];
      *(v40 + 16) = 0;
      *(v40 + 24) = v42;

      *(v40 + 32) = v48;
      *(v40 + 40) = v49;
      *(v40 + 48) = v54;
      __swift_destroy_boxed_opaque_existential_1(v59);
      result = __swift_destroy_boxed_opaque_existential_1(v60);
      v52 = v58;
      v58[3] = v55;
      v52[4] = &off_282CA0120;
      *v52 = v40;
      return result;
    }

    v17 = *(a2 + 64 + 8 * v21);
    ++i;
    if (v17)
    {
      i = v21;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B17FA7C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8D8](v0, 89, 7);
}

unint64_t sub_21B17FAF8()
{
  result = qword_27CD6EB30;
  if (!qword_27CD6EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB30);
  }

  return result;
}

uint64_t sub_21B17FB4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21B17FBB0()
{
  result = qword_27CD6EB38;
  if (!qword_27CD6EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB38);
  }

  return result;
}

unint64_t sub_21B17FC04()
{
  result = qword_27CD6EB40;
  if (!qword_27CD6EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB40);
  }

  return result;
}

unint64_t sub_21B17FC58()
{
  result = qword_27CD6EB48;
  if (!qword_27CD6EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB48);
  }

  return result;
}

uint64_t sub_21B17FCC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnDescription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B17FD2C()
{
  result = qword_27CD6EB50;
  if (!qword_27CD6EB50)
  {
    type metadata accessor for DatasetColumnDescription();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB50);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21B17FDE8(uint64_t a1)
{
  v2 = type metadata accessor for DatasetColumnDescription();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B17FE44()
{
  result = qword_27CD6EB58;
  if (!qword_27CD6EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB58);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21B17FECC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B17FF14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_21B17FFBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_21B1800FC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t sub_21B1801E8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(*(a1 + 8) + 8))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21B180240()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB80, &qword_21B211418);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  *(v0 + 16) = 0;
  v8 = *(v0 + 24);
  v9 = *(v3 + 56);
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);

  sub_21B20CE98();

  if (!v2)
  {
    v13 = sub_21B20CF28();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    v14 = OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_statement;
    swift_beginAccess();
    sub_21B180F98(v7, v3 + v14);
    result = swift_endAccess();
    *(v3 + OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_initialized) = 0;
  }

  return result;
}

uint64_t sub_21B180388()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB80, &qword_21B211418);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  *(v0 + 16) = 1;
  v5 = sub_21B20CF28();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_statement;
  swift_beginAccess();
  sub_21B180F98(v4, v0 + v6);
  return swift_endAccess();
}

uint64_t sub_21B180480(char **a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v57 = a3;
  ObjectType = a1;
  v59 = sub_21B20D4D8();
  v56 = *(v59 - 1);
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB80, &qword_21B211418);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v55 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v54 - v14;
  v16 = sub_21B20CF28();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v54 - v22;
  v24 = OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_statement;
  swift_beginAccess();
  sub_21B180F0C(v6 + v24, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21B180EA4(v15);
LABEL_3:
    v25 = 0;
    return v25 & 1;
  }

  v54[1] = a2;
  v26 = *(v17 + 32);
  v60 = v23;
  v26(v23, v15, v16);
  v27 = OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_initialized;
  if ((*(v6 + OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_initialized) & 1) == 0)
  {
    v61[0] = *ObjectType;
    v33 = v4;
    v34 = *(v6 + 72);
    v35 = *(v6 + 80);

    sub_21B1D151C(v34, v35);
    v5 = v33;
    if (v33)
    {

      goto LABEL_19;
    }

    sub_21B20CF18();
    (*(v17 + 8))(v21, v16);

    *(v6 + v27) = 1;
  }

  v28 = sub_21B186FF4();
  if (v5)
  {
    v61[0] = v5;
    v29 = v5;
    v30 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    v32 = v58;
    v31 = v59;
    if (swift_dynamicCast())
    {

      (*(v56 + 8))(v32, v31);
    }

    else
    {
      v46 = *(v6 + 88);

      if (v46 == 1)
      {
        ObjectType = swift_getObjectType();
        v47 = swift_allocObject();
        v48 = v57;
        v49 = v47;
        *(v47 + 16) = v6;
        *(v47 + 24) = v5;
        v59 = *(v48 + 8);
        v50 = v5;

        (v59)(sub_21B180F7C, v49, ObjectType, v48);

        (*(v17 + 8))(v60, v16);
        *(v6 + 16) = 1;
        v51 = v55;
        (*(v17 + 56))(v55, 1, 1, v16);
        swift_beginAccess();
        sub_21B180F98(v51, v6 + v24);
        swift_endAccess();
        v25 = 0;
        return v25 & 1;
      }
    }

LABEL_19:
    (*(v17 + 8))(v60, v16);
    return v25 & 1;
  }

  v36 = v28;
  if (!v28)
  {
    (*(v17 + 8))(v60, v16);
    *(v6 + 16) = 1;
    v53 = v55;
    (*(v17 + 56))(v55, 1, 1, v16);
    swift_beginAccess();
    sub_21B180F98(v53, v6 + v24);
    swift_endAccess();
    goto LABEL_3;
  }

  v37 = *(v6 + 32);
  v38 = *(v6 + 40);
  v39 = ObjectType;
  v40 = *ObjectType;
  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v39 = v40;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = sub_21B1D280C(0, *(v40 + 2) + 1, 1, v40);
    *v39 = v40;
  }

  v43 = *(v40 + 2);
  v42 = *(v40 + 3);
  if (v43 >= v42 >> 1)
  {
    v40 = sub_21B1D280C((v42 > 1), v43 + 1, 1, v40);
  }

  *(v40 + 2) = v43 + 1;
  v44 = &v40[24 * v43];
  *(v44 + 4) = v37;
  *(v44 + 5) = v38;
  *(v44 + 6) = v36;
  *ObjectType = v40;
  v45 = swift_getObjectType();
  v61[0] = v37;
  v61[1] = v38;
  v61[2] = v36;
  (*(v57 + 16))(v61, v45);
  (*(v17 + 8))(v60, v16);

  v25 = 1;
  return v25 & 1;
}

uint64_t sub_21B180AFC(uint64_t a1)
{
  v2 = sub_21B20D348();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B2110C0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v16[4] = 0;
  v16[5] = 0xE000000000000000;

  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD000000000000023, 0x800000021B20E8D0);
  swift_getErrorValue();
  sub_21B20DB08();
  sub_21B20D338();
  v10 = sub_21B20D308();
  v12 = v11;

  (*(v3 + 8))(v6, v2);
  if (v12 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v14 = 0xC000000000000000;
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  *(v7 + 48) = 3;
  if (v12 >> 60 != 15)
  {
    v14 = v12;
  }

  *(v7 + 56) = v13;
  *(v7 + 64) = v14;
  return v7;
}

uint64_t sub_21B180CD4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  sub_21B180EA4(v0 + OBJC_IVAR____TtC12PoirotBlocks15ExtractionBlock_statement);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for ExtractionBlock()
{
  result = qword_27CD6EB68;
  if (!qword_27CD6EB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B180DB4()
{
  sub_21B180E4C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21B180E4C()
{
  if (!qword_27CD6EB78)
  {
    sub_21B20CF28();
    v0 = sub_21B20D5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD6EB78);
    }
  }
}

uint64_t sub_21B180EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB80, &qword_21B211418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B180F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB80, &qword_21B211418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B180F98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB80, &qword_21B211418);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B181014(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B18105C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_21B1810C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = *a3;
  v7 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 72) = 0;

  v12 = sub_21B1BBFE4(v11);

  *(v4 + 56) = v12;

  v14 = sub_21B1BBFE4(v13);

  *(v4 + 64) = v14;
  if (*(*(v4 + 56) + 16) < 2uLL)
  {

    sub_21B20D6A8();

    strcpy(v25, "Configured: ");
    BYTE5(v25[1]) = 0;
    HIWORD(v25[1]) = -5120;
    v26 = *(*(v4 + 56) + 16);
    v15 = sub_21B20DAB8();
    MEMORY[0x21CEEBBB0](v15);

    MEMORY[0x21CEEBBB0](0xD000000000000015, 0x800000021B20EAE0);
    v16 = 0;
    v17 = v25[0];
    v18 = v25[1];
LABEL_6:
    sub_21B1833A8();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v18;
    *(v20 + 16) = v16;
    swift_willThrow();

    v21 = *(v4 + 56);

    v22 = *(v4 + 64);

    v23 = *(v4 + 88);
    sub_21B183364(*(v4 + 72), *(v4 + 80));
    type metadata accessor for JoinBlock();
    swift_deallocPartialClassInstance();
    return v4;
  }

  if (!*(v14 + 16))
  {

    sub_21B20D6A8();

    strcpy(v25, "Configured: ");
    BYTE5(v25[1]) = 0;
    HIWORD(v25[1]) = -5120;
    v26 = *(*(v4 + 64) + 16);
    v19 = sub_21B20DAB8();
    MEMORY[0x21CEEBBB0](v19);

    MEMORY[0x21CEEBBB0](0xD000000000000015, 0x800000021B20EB00);
    v17 = v25[0];
    v18 = v25[1];
    v16 = 1;
    goto LABEL_6;
  }

  *(v4 + 16) = 0;
  *(v4 + 24) = a1;

  *(v4 + 32) = v8;
  *(v4 + 40) = v7;
  *(v4 + 48) = a2;
  return v4;
}

void sub_21B18137C(uint64_t **a1)
{
  sub_21B181438(a1);
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if (swift_dynamicCast())
    {
      sub_21B1833FC(v4, v5, v6);
    }

    else
    {
      sub_21B1833A8();
      swift_allocError();
      *v3 = v1;
      *(v3 + 8) = 0;
      *(v3 + 16) = 5;
      swift_willThrow();
    }
  }
}

uint64_t sub_21B181438(uint64_t **a1)
{
  v117 = a1;
  v128 = type metadata accessor for DatasetColumnDescription();
  v2 = *(v128 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v128);
  v129 = v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v120 = v112 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v130 = v112 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v118 = v112 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v112 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v112 - v15;
  v17 = sub_21B197480(MEMORY[0x277D84F90]);
  v123 = v2;
  v124 = v1;
  v18 = v1[7];
  v19 = v18 + 56;
  v20 = 1 << *(v18 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v18 + 56);
  v23 = (v20 + 63) >> 6;
  v112[0] = v2 + 48;

  v24 = 0;
  v114 = v23;
  v115 = v18 + 56;
  if (!v22)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v116 = v22;
    v26 = (*(v18 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v22)))));
    v27 = *v26;
    v28 = v26[1];

    _s12PoirotBlocks18DatasetDescriptionV12removeLayout8withNameAA0c6ColumnF0VSgSS_tF_0(v27, v28, &v133);
    v29 = v134;
    if (!v134)
    {

      v133 = 0;
      v134 = 0xE000000000000000;
      sub_21B20D6A8();

      v133 = 0xD000000000000015;
      v134 = 0x800000021B20EA40;
      MEMORY[0x21CEEBBB0](v27, v28);

      MEMORY[0x21CEEBBB0](0x7373696D20736920, 0xEB00000000676E69);
      v106 = v133;
      v107 = v134;
      sub_21B1833A8();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 2;
      swift_willThrow();
    }

    v30 = v135;
    v31 = v133;

    sub_21B183364(v31, v29);
    v136 = v17;
    v121 = *(v30 + 16);
    if (v121)
    {
      v125 = v14;
      v113 = v18;
      v32 = 0;
      v33 = v130;
      v119 = v16;
      v122 = v30;
      while (1)
      {
        if (v32 >= *(v30 + 16))
        {
          goto LABEL_76;
        }

        v34 = v30 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
        v35 = *(v123 + 72);
        sub_21B186818(v34 + v35 * v32, v16, type metadata accessor for DatasetColumnDescription);
        v36 = v136;
        if (v136[2] && (v38 = *v16, v37 = *(v16 + 1), v39 = sub_21B1B9778(*v16, v37), (v40 & 1) != 0))
        {
          v41 = v118;
          sub_21B186818(v36[7] + v39 * v35, v118, type metadata accessor for DatasetColumnDescription);
          sub_21B1867B4(v41, v125);
          v42 = v124[8];
          if (!*(v42 + 16) || (v43 = *(v42 + 40), sub_21B20DC88(), sub_21B20D388(), v44 = sub_21B20DCA8(), v45 = -1 << *(v42 + 32), v46 = v44 & ~v45, ((*(v42 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0))
          {
LABEL_66:
            v133 = 0;
            v134 = 0xE000000000000000;
            sub_21B20D6A8();
            MEMORY[0x21CEEBBB0](0xD000000000000038, 0x800000021B20EAA0);
            v85 = v125;
            v86 = v120;
            sub_21B186818(v125, v120, type metadata accessor for DatasetColumnDescription);
            v87 = sub_21B20D358();
            MEMORY[0x21CEEBBB0](v87);

            MEMORY[0x21CEEBBB0](0x3A646E6F6365530ALL, 0xE900000000000020);
            sub_21B186818(v16, v86, type metadata accessor for DatasetColumnDescription);
            v88 = sub_21B20D358();
            MEMORY[0x21CEEBBB0](v88);

            v89 = v133;
            v90 = v134;
            v91 = 4;
LABEL_67:
            sub_21B1833A8();
            swift_allocError();
            *v92 = v89;
            *(v92 + 8) = v90;
            *(v92 + 16) = v91;
            swift_willThrow();
            sub_21B17FDE8(v85);

            sub_21B17FDE8(v16);
          }

          v47 = ~v45;
          while (1)
          {
            v48 = (*(v42 + 48) + 16 * v46);
            v49 = *v48 == v38 && v48[1] == v37;
            if (v49 || (sub_21B20DB28() & 1) != 0)
            {
              break;
            }

            v46 = (v46 + 1) & v47;
            if (((*(v42 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
            {
              goto LABEL_66;
            }
          }

          v64 = v38 == *v125 && v37 == *(v125 + 1);
          if (!v64 && (sub_21B20DB28() & 1) == 0)
          {
LABEL_74:
            v133 = 0;
            v134 = 0xE000000000000000;
            sub_21B20D6A8();
            MEMORY[0x21CEEBBB0](0xD000000000000033, 0x800000021B20EA60);
            v85 = v125;
            v109 = v120;
            sub_21B186818(v125, v120, type metadata accessor for DatasetColumnDescription);
            v110 = sub_21B20D358();
            MEMORY[0x21CEEBBB0](v110);

            MEMORY[0x21CEEBBB0](0x3A646E6F6365530ALL, 0xE900000000000020);
            sub_21B186818(v16, v109, type metadata accessor for DatasetColumnDescription);
            v111 = sub_21B20D358();
            MEMORY[0x21CEEBBB0](v111);

            v89 = v133;
            v90 = v134;
            v91 = 3;
            goto LABEL_67;
          }

          v65 = *(v128 + 24);
          sub_21B20CCE8();
          sub_21B186880(&qword_27CD6EC08, MEMORY[0x277D3E200]);
          sub_21B20D3F8();
          sub_21B20D3F8();
          if (v133 == v131 && v134 == v132)
          {
          }

          else
          {
            v81 = sub_21B20DB28();

            if ((v81 & 1) == 0)
            {
              goto LABEL_74;
            }
          }

          v80 = v125;
          v30 = v122;
          v33 = v130;
          if (v125[*(v128 + 28)])
          {
            v80 = v125;
            if ((v125[16] & 1) == 0)
            {
              v80 = v125;
              if (v16[16] == 1)
              {
                v82 = sub_21B1D4120(&v133, v38, v37);
                v84 = v83;
                if (!(*v112[0])(v83, 1, v128))
                {
                  *(v84 + 16) = 1;
                }

                (v82)(&v133, 0);
                v80 = v125;
              }
            }
          }
        }

        else
        {
          v126 = v35;
          v50 = v120;
          sub_21B186818(v16, v120, type metadata accessor for DatasetColumnDescription);
          v52 = *v50;
          v51 = *(v50 + 8);
          *v33 = *v50;
          *(v33 + 1) = v51;
          v33[16] = *(v50 + 16);
          v53 = v128;
          sub_21B186818(v50 + *(v128 + 24), &v33[*(v128 + 24)], type metadata accessor for DatasetColumnType);
          swift_bridgeObjectRetain_n();
          sub_21B17FDE8(v50);
          v127 = *(v53 + 28);
          v54 = v124[8];
          if (*(v54 + 16) && (v55 = *(v54 + 40), sub_21B20DC88(), sub_21B20D388(), v56 = sub_21B20DCA8(), v57 = -1 << *(v54 + 32), v58 = v56 & ~v57, ((*(v54 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) != 0))
          {
            v59 = ~v57;
            while (1)
            {
              v60 = (*(v54 + 48) + 16 * v58);
              v61 = *v60 == v52 && v60[1] == v51;
              if (v61 || (sub_21B20DB28() & 1) != 0)
              {
                break;
              }

              v58 = (v58 + 1) & v59;
              if (((*(v54 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            v62 = 1;
            v63 = v130;
          }

          else
          {
LABEL_34:
            v62 = 0;
            v63 = v130;
            v130[16] = 1;
          }

          *(v63 + v127) = v62;
          sub_21B186818(v63, v129, type metadata accessor for DatasetColumnDescription);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v133 = v36;
          v68 = sub_21B1B9778(v52, v51);
          v69 = v36[2];
          v70 = (v67 & 1) == 0;
          v71 = v69 + v70;
          if (__OFADD__(v69, v70))
          {
            goto LABEL_77;
          }

          v72 = v67;
          if (v36[3] >= v71)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21B20398C();
            }
          }

          else
          {
            sub_21B2010D8(v71, isUniquelyReferenced_nonNull_native);
            v73 = sub_21B1B9778(v52, v51);
            if ((v72 & 1) != (v74 & 1))
            {
              goto LABEL_79;
            }

            v68 = v73;
          }

          v33 = v130;
          v75 = v133;
          if (v72)
          {
            sub_21B186750(v129, v133[7] + v68 * v126);
          }

          else
          {
            v133[(v68 >> 6) + 8] |= 1 << v68;
            v76 = (v75[6] + 16 * v68);
            *v76 = v52;
            v76[1] = v51;
            sub_21B1867B4(v129, v75[7] + v68 * v126);
            v77 = v75[2];
            v78 = __OFADD__(v77, 1);
            v79 = v77 + 1;
            if (v78)
            {
              goto LABEL_78;
            }

            v75[2] = v79;
          }

          v136 = v75;
          v80 = v33;
          v16 = v119;
          v30 = v122;
        }

        ++v32;
        sub_21B17FDE8(v80);
        sub_21B17FDE8(v16);
        if (v32 == v121)
        {
          v17 = v136;
          v18 = v113;
          v14 = v125;
          break;
        }
      }
    }

    v22 = (v116 - 1) & v116;

    v19 = v115;
    v23 = v114;
  }

  while (v22);
LABEL_5:
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      v95 = v124[4];
      v94 = v124[5];
      v96 = v17[2];
      if (!v96)
      {
        goto LABEL_71;
      }

      v97 = sub_21B1C6F40(v17[2], 0);
      v98 = sub_21B1C7718(&v133, v97 + ((*(v123 + 80) + 32) & ~*(v123 + 80)), v96, v17);

      sub_21B17AB4C();
      if (v98 != v96)
      {
        __break(1u);
LABEL_71:

        v97 = MEMORY[0x277D84F90];
      }

      v99 = v117;
      v100 = v124;
      v101 = v124[9];
      v102 = v124[10];
      v103 = v124[11];
      v124[9] = v95;
      v100[10] = v94;
      v100[11] = v97;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_21B183364(v101, v102);

      v104 = *v99;
      v105 = swift_isUniquelyReferenced_nonNull_native();
      v133 = *v99;
      *v99 = 0x8000000000000000;
      sub_21B1BB4EC(v95, v94, v97, v95, v94, v105);

      result = swift_bridgeObjectRelease_n();
      *v99 = v133;
      return result;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      v24 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

uint64_t sub_21B1820FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_21B182950(a1, a2, a3);
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if (swift_dynamicCast())
    {
      sub_21B1833FC(v7, v8, v9);
    }

    else
    {
      sub_21B1833A8();
      swift_allocError();
      *v5 = v3;
      *(v5 + 8) = 0;
      *(v5 + 16) = 6;
      swift_willThrow();
    }
  }

  return 1;
}

uint64_t sub_21B1821C4()
{
  v2 = v0;
  v3 = sub_21B20C368();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_21B20C3A8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_21B20C398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBD0, &unk_21B2197F0);
  v9 = *(v4 + 72);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21B211420;
  sub_21B20C358();
  sub_21B20C348();
  v23 = v11;
  sub_21B186880(&qword_27CD6EBD8, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBE0, &qword_21B217FE0);
  sub_21B1865AC();
  sub_21B20D638();
  sub_21B20C378();
  v12 = v2[10];
  if (!v12)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v13 = v2[9];
  v14 = v2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21B2110C0;
  v16 = v2[4];
  v17 = v2[5];
  v22 = v16;
  v23 = v14;
  sub_21B186658(v13, v12);

  sub_21B186658(v13, v12);

  sub_21B183610(&v23);
  if (!v1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBF0, &unk_21B2115E0);
    sub_21B18669C();
    v18 = sub_21B20C388();
    v20 = v19;

    *(v15 + 32) = v22;
    *(v15 + 40) = v17;
    *(v15 + 48) = 0;
    *(v15 + 56) = v18;
    *(v15 + 64) = v20;
    sub_21B183364(v13, v12);
    sub_21B183364(v13, v12);
LABEL_5:

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B182534(uint64_t a1)
{
  v3 = v2;
  v5 = sub_21B20CB18();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B20CAF8();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[4];
  v35 = v1[5];
  v13 = v1[8];
  v14 = v13[2];
  if (v14)
  {
    v28 = v2;
    v30 = v12;
    v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v8;
    v15 = sub_21B1C703C(v14, 0);
    v16 = sub_21B1C7940(&v37, v15 + 4, v14, v13);
    v29 = a1;

    sub_21B17AB4C();
    if (v16 != v14)
    {
      __break(1u);
      goto LABEL_8;
    }

    v11 = v31;
    v8 = v32;
    v12 = v30;
    a1 = v29;
    v3 = v28;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v37 = v15;
  sub_21B1836B8(&v37);
  v13 = v3;
  v17 = v35;
  if (!v3)
  {
    v18 = v37;
    sub_21B1D4F40(v12, v35, sub_21B1D4F38, 0, a1, v11);
    sub_21B183490(v18);

    v19 = sub_21B1821C4();
    v20 = v36;
    v21 = v12;
    v32 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B2110C0;

    sub_21B20CB08();
    v24 = sub_21B20CA78();
    v26 = v25;
    (*(v33 + 8))(v20, v34);
    *(inited + 32) = v21;
    *(inited + 40) = v17;
    *(inited + 48) = 1;
    *(inited + 56) = v24;
    *(inited + 64) = v26;
    v37 = v32;
    sub_21B1D21C8(inited);
    v27 = v37;
    (*(v38 + 8))(v11, v8);
    return v27;
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_21B182950(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = *a1;
  v26 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  v9 = sub_21B185A70(v8, sub_21B183458, v3, &v26);
  v10 = v26;
  if (v4)
  {
    goto LABEL_2;
  }

  v12 = v9;

  v13 = v12[2];

  if (v13 > 1)
  {

    v20 = sub_21B186364(MEMORY[0x277D84F98], v12, v5);

    v21 = *a1;

    v26 = v10;

    sub_21B1D1E98(v22);
    *a1 = v26;
    ObjectType = swift_getObjectType();
    v24 = swift_allocObject();
    *(v24 + 16) = v5;
    *(v24 + 24) = v20;
    v25 = *(a3 + 8);

    v25(sub_21B186414, v24, ObjectType, a3);

    *(v5 + 16) = 1;
    return 1;
  }

  *(v5 + 16) = 1;
  if (!v12[2])
  {
LABEL_2:

    return 1;
  }

  v14 = *a1;

  if (v12[2])
  {
    v16 = *(v5 + 32);
    v15 = *(v5 + 40);
    v17 = v12[5];
    v18 = v12[6];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB90, &qword_21B2115B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B2110C0;
    *(inited + 32) = v16;
    *(inited + 40) = v15;
    *(inited + 48) = v18;
    v26 = v10;
    sub_21B1D1DA0(inited);
    *a1 = v26;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B182BE8(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 16);
  v6 = a3[5];
  v26 = a3[4];
  v7 = v26;
  v27 = v6;
  v28 = v5;
  v8 = a3[8];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_21B182E28(0, 0, v8, 0, v26, v6, v5, &v23);

  if (v3)
  {

    return swift_bridgeObjectRelease_n();
  }

  else
  {

    v11 = v23;
    v10 = v24;
    v12 = v25;
    v13 = *a1;
    if (*(*a1 + 16))
    {
      v14 = sub_21B1B97F0(v23, v24, v25);
      if (v15)
      {
        v16 = (*(v13 + 56) + 24 * v14);
        v18 = *v16;
        v17 = v16[1];
        v19 = v16[2];
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v5;
        sub_21B185D08(v19, sub_21B18585C, 0, isUniquelyReferenced_nonNull_native, &v23, &v26, v18, v17, v19);

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v5 = v23;
        v7 = v26;
        v6 = v27;
      }
    }

    v21 = *a1;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *a1;
    sub_21B1BB660(v7, v6, v5, v11, v10, v12, v22);

    *a1 = v23;
  }

  return result;
}

uint64_t sub_21B182E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v49 = a4;
  v10 = a2;
  if (!a2)
  {
    v10 = a6;

    a1 = a5;
  }

  v41 = v10;
  v39 = a1;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  if (v14)
  {
    while (1)
    {
LABEL_13:
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v23 = (*(a3 + 48) + ((v16 << 10) | (16 * v22)));
      v24 = *v23;
      v25 = v23[1];
      v26 = *(a7 + 16);

      if (v26 && (v27 = sub_21B1B9778(v24, v25), (v28 & 1) != 0))
      {
        sub_21B17FB4C(*(a7 + 56) + 40 * v27, v45);
        sub_21B17C284(v45, &v42);
        *&v46 = v24;
        *(&v46 + 1) = v25;
        v18 = *(&v43 + 1);
        v19 = __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
        *(&v48 + 1) = v18;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
        (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v19, v18);
        __swift_destroy_boxed_opaque_existential_1(&v42);
        if (!*(&v46 + 1))
        {
          goto LABEL_8;
        }

        v42 = v46;
        v43 = v47;
        v44 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_21B1D2B80(0, v17[2] + 1, 1, v17);
        }

        v30 = v17[2];
        v29 = v17[3];
        if (v30 >= v29 >> 1)
        {
          v17 = sub_21B1D2B80((v29 > 1), v30 + 1, 1, v17);
        }

        v17[2] = v30 + 1;
        v31 = &v17[6 * v30];
        v32 = v42;
        v33 = v44;
        v31[3] = v43;
        v31[4] = v33;
        v31[2] = v32;
        if (!v14)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if ((v49 & 1) == 0)
        {

          sub_21B186430();
          swift_allocError();
          *v37 = v24;
          *(v37 + 8) = v25;
          *(v37 + 16) = 0;
          swift_willThrow();
        }

        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
LABEL_8:
        sub_21B186488(&v46, &qword_27CD6EBB0, &qword_21B2115C8);
        if (!v14)
        {
          goto LABEL_9;
        }
      }
    }
  }

  while (1)
  {
LABEL_9:
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v21 >= v15)
    {
      break;
    }

    v14 = *(a3 + 56 + 8 * v21);
    ++v16;
    if (v14)
    {
      v16 = v21;
      goto LABEL_13;
    }
  }

  if (v17[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBB8, &qword_21B2115D0);
    v34 = sub_21B20D808();
  }

  else
  {
    v34 = MEMORY[0x277D84F98];
  }

  *&v46 = v34;

  sub_21B1854A0(v35, 1, &v46);
  if (!v38)
  {

    return DatasetRow.init(name:_:)(v39, v41, v46, a8);
  }

LABEL_30:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21B1831A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_5:
    v7 = sub_21B182534(v4);

    return v7;
  }

  v4 = sub_21B1C6EB0(*(a2 + 16), 0);
  v5 = sub_21B1C7598(&v8, v4 + 4, v2, a2);

  result = sub_21B17AB4C();
  if (v5 == v2)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B18328C()
{
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[11];

  return sub_21B183364(v3, v4);
}

uint64_t sub_21B1832C8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[11];
  sub_21B183364(v0[9], v0[10]);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_21B183364(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21B1833A8()
{
  result = qword_27CD6EB88;
  if (!qword_27CD6EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB88);
  }

  return result;
}

void sub_21B1833FC(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    goto LABEL_5;
  }

  if (a3 > 4u)
  {
    if (a3 == 5 || a3 == 6)
    {
    }
  }

  else if (a3 == 3 || a3 == 4)
  {
LABEL_5:
  }
}

uint64_t sub_21B183490(uint64_t a1)
{
  v2 = sub_21B20CB28();
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v15 = *(v5 + 104);
    v14 = *MEMORY[0x277CE18E0];
    v16 = v5 + 104;
    v9 = (v5 + 8);
    v10 = (a1 + 16 * v8 + 24);
    do
    {
      --v8;
      v11 = *(v10 - 1);
      v12 = *v10;
      v15(v7, v14, v2);
      sub_21B186558();

      sub_21B20CAC8();
      (*v9)(v7, v2);

      v10 -= 2;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_21B183610(void **a1)
{
  v2 = *(type metadata accessor for DatasetColumnDescription() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21B1858BC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21B183724(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_21B1836B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21B1858E4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21B183850(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21B183724(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B20DAA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DatasetColumnDescription();
        v6 = sub_21B20D488();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for DatasetColumnDescription() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21B183C48(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21B183948(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B183850(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B20DAA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21B20D488();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21B1845E8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21B183B78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B183948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for DatasetColumnDescription();
  v8 = *(*(v35 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v35);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v28 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v28 - v17);
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v29 = v20;
    v24 = v19 + v20 * a3;
LABEL_6:
    v33 = v21;
    v34 = a3;
    v31 = v24;
    v32 = v23;
    while (1)
    {
      sub_21B186818(v24, v18, type metadata accessor for DatasetColumnDescription);
      sub_21B186818(v21, v14, type metadata accessor for DatasetColumnDescription);
      if (*v18 == *v14 && v18[1] == v14[1])
      {
        sub_21B17FDE8(v14);
        result = sub_21B17FDE8(v18);
LABEL_5:
        a3 = v34 + 1;
        v21 = v33 + v29;
        v23 = v32 - 1;
        v24 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_6;
      }

      v26 = sub_21B20DB28();
      sub_21B17FDE8(v14);
      result = sub_21B17FDE8(v18);
      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_21B1867B4(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21B1867B4(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B183B78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_21B20DB28(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B183C48(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v126 = a1;
  v139 = type metadata accessor for DatasetColumnDescription();
  v132 = *(v139 - 8);
  v9 = *(v132 + 64);
  v10 = MEMORY[0x28223BE20](v139);
  v128 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v138 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v119 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v119 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v137 = (&v119 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v136 = (&v119 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v125 = (&v119 - v25);
  result = MEMORY[0x28223BE20](v24);
  v124 = (&v119 - v27);
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_112:
      v140 = v30;
      v114 = *(v30 + 16);
      if (v114 >= 2)
      {
        while (*a3)
        {
          v115 = v30;
          v30 = *(v30 + 16 * v114);
          v116 = v115;
          v117 = *&v115[16 * v114 + 24];
          sub_21B184BC4(*a3 + *(v132 + 72) * v30, *a3 + *(v132 + 72) * *&v115[16 * v114 + 16], *a3 + *(v132 + 72) * v117, v5);
          if (v6)
          {
          }

          if (v117 < v30)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_21B185388(v116);
          }

          if (v114 - 2 >= *(v116 + 2))
          {
            goto LABEL_136;
          }

          v118 = &v116[16 * v114];
          *v118 = v30;
          v118[1] = v117;
          v140 = v116;
          result = sub_21B1852FC(v114 - 1);
          v30 = v140;
          v114 = *(v140 + 16);
          if (v114 <= 1)
          {
          }
        }

        goto LABEL_146;
      }
    }

LABEL_142:
    result = sub_21B185388(v30);
    v30 = result;
    goto LABEL_112;
  }

  v120 = a4;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v133 = a3;
  v129 = v19;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v29 + 1 < v28)
    {
      v130 = v28;
      v121 = v30;
      v33 = *a3;
      v34 = *(v132 + 72);
      v35 = v29 + 1;
      v36 = v124;
      sub_21B186818(v33 + v34 * v32, v124, type metadata accessor for DatasetColumnDescription);
      v134 = v34;
      v37 = v33 + v34 * v31;
      v38 = v125;
      sub_21B186818(v37, v125, type metadata accessor for DatasetColumnDescription);
      v39 = *v36 == *v38 && v36[1] == v38[1];
      v122 = v6;
      if (v39)
      {
        LODWORD(v131) = 0;
      }

      else
      {
        LODWORD(v131) = sub_21B20DB28();
      }

      sub_21B17FDE8(v125);
      result = sub_21B17FDE8(v124);
      v123 = v31;
      v40 = v31 + 2;
      v41 = v134 * (v31 + 2);
      v42 = v33 + v41;
      v43 = v35;
      v44 = v134 * v35;
      a3 = v33 + v134 * v35;
      do
      {
        v6 = v40;
        v46 = v43;
        v30 = v44;
        v5 = v41;
        if (v40 >= v130)
        {
          break;
        }

        v135 = v40;
        v47 = v16;
        v48 = v136;
        sub_21B186818(v42, v136, type metadata accessor for DatasetColumnDescription);
        v49 = v137;
        sub_21B186818(a3, v137, type metadata accessor for DatasetColumnDescription);
        v50 = *v48 == *v49 && v48[1] == v49[1];
        v45 = v50 ? 0 : sub_21B20DB28();
        v16 = v47;
        v6 = v135;
        sub_21B17FDE8(v137);
        result = sub_21B17FDE8(v136);
        v40 = v6 + 1;
        v42 += v134;
        a3 += v134;
        v43 = v46 + 1;
        v44 = v30 + v134;
        v41 = v5 + v134;
        v19 = v129;
      }

      while (((v131 ^ v45) & 1) == 0);
      if (v131)
      {
        if (v6 < v123)
        {
          goto LABEL_139;
        }

        if (v123 >= v6)
        {
          v32 = v6;
          v30 = v121;
          v6 = v122;
          a3 = v133;
          v31 = v123;
          goto LABEL_36;
        }

        v51 = v123 * v134;
        v52 = v123;
        do
        {
          if (v52 != v46)
          {
            v54 = *v133;
            if (!*v133)
            {
              goto LABEL_145;
            }

            v135 = v54 + v51;
            sub_21B1867B4(v54 + v51, v128);
            if (v51 < v30 || v135 >= v54 + v5)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v51 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_21B1867B4(v128, v54 + v30);
          }

          ++v52;
          v30 -= v134;
          v5 -= v134;
          v51 += v134;
        }

        while (v52 < v46--);
      }

      v32 = v6;
      v30 = v121;
      v6 = v122;
      a3 = v133;
      v31 = v123;
    }

LABEL_36:
    v55 = *(a3 + 8);
    v135 = v32;
    if (v32 < v55)
    {
      v82 = __OFSUB__(v32, v31);
      v56 = v32 - v31;
      if (v82)
      {
        goto LABEL_138;
      }

      if (v56 < v120)
      {
        break;
      }
    }

LABEL_59:
    if (v135 < v31)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B18539C(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v68 = *(v30 + 16);
    v67 = *(v30 + 24);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      result = sub_21B18539C((v67 > 1), v68 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v69;
    v70 = v30 + 16 * v68;
    v71 = v135;
    *(v70 + 32) = v31;
    *(v70 + 40) = v71;
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_147;
    }

    if (v68)
    {
      while (1)
      {
        a3 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v72 = *(v30 + 32);
          v73 = *(v30 + 40);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_79:
          if (v75)
          {
            goto LABEL_126;
          }

          v88 = (v30 + 16 * v69);
          v90 = *v88;
          v89 = v88[1];
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_129;
          }

          v94 = (v30 + 32 + 16 * a3);
          v96 = *v94;
          v95 = v94[1];
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_133;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              a3 = v69 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v98 = (v30 + 16 * v69);
        v100 = *v98;
        v99 = v98[1];
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_93:
        if (v93)
        {
          goto LABEL_128;
        }

        v101 = v30 + 16 * a3;
        v103 = *(v101 + 32);
        v102 = *(v101 + 40);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_131;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_100:
        v109 = a3 - 1;
        if (a3 - 1 >= v69)
        {
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
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v133)
        {
          goto LABEL_144;
        }

        v110 = v30;
        v111 = v30 + 32;
        v30 = *(v30 + 32 + 16 * v109);
        v112 = *(v111 + 16 * a3 + 8);
        sub_21B184BC4(*v133 + *(v132 + 72) * v30, *v133 + *(v132 + 72) * *(v111 + 16 * a3), *v133 + *(v132 + 72) * v112, v5);
        if (v6)
        {
        }

        if (v112 < v30)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_21B185388(v110);
        }

        if (v109 >= *(v110 + 2))
        {
          goto LABEL_123;
        }

        v113 = &v110[16 * v109];
        *(v113 + 4) = v30;
        *(v113 + 5) = v112;
        v140 = v110;
        result = sub_21B1852FC(a3);
        v30 = v140;
        v69 = *(v140 + 16);
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = v30 + 32 + 16 * v69;
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_124;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_125;
      }

      v83 = (v30 + 16 * v69);
      v85 = *v83;
      v84 = v83[1];
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_127;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_130;
      }

      if (v87 >= v79)
      {
        v105 = (v30 + 32 + 16 * a3);
        v107 = *v105;
        v106 = v105[1];
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_134;
        }

        if (v74 < v108)
        {
          a3 = v69 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v133;
    v28 = v133[1];
    v29 = v135;
    if (v135 >= v28)
    {
      goto LABEL_110;
    }
  }

  if (__OFADD__(v31, v120))
  {
    goto LABEL_140;
  }

  if (v31 + v120 >= v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = v31 + v120;
  }

  if (v57 < v31)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v135 == v57)
  {
    goto LABEL_59;
  }

  v121 = v30;
  v122 = v6;
  v58 = *a3;
  v59 = *(v132 + 72);
  v60 = *a3 + v59 * (v135 - 1);
  v61 = -v59;
  v123 = v31;
  a3 = v31 - v135;
  v127 = v59;
  v62 = v58 + v135 * v59;
  v130 = v57;
LABEL_48:
  v5 = v62;
  v131 = a3;
  v134 = v60;
  while (1)
  {
    sub_21B186818(v5, v19, type metadata accessor for DatasetColumnDescription);
    sub_21B186818(v60, v16, type metadata accessor for DatasetColumnDescription);
    if (*v19 == *v16 && v19[1] == v16[1])
    {
      sub_21B17FDE8(v16);
      sub_21B17FDE8(v19);
LABEL_47:
      v60 = v134 + v127;
      a3 = v131 - 1;
      v62 += v127;
      if (++v135 == v130)
      {
        v135 = v130;
        v30 = v121;
        v6 = v122;
        v31 = v123;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v64 = sub_21B20DB28();
    sub_21B17FDE8(v16);
    result = sub_21B17FDE8(v19);
    if ((v64 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!v58)
    {
      break;
    }

    v65 = v138;
    sub_21B1867B4(v5, v138);
    swift_arrayInitWithTakeFrontToBack();
    sub_21B1867B4(v65, v60);
    v60 += v61;
    v5 += v61;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_21B1845E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_21B185388(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_21B1850D4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_21B20DB28();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_21B20DB28();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B18539C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_21B18539C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_21B1850D4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21B185388(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_21B1852FC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_21B20DB28(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_21B184BC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = type metadata accessor for DatasetColumnDescription();
  v8 = *(*(v50 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v50);
  v49 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v48 = (&v42 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v42 - v14);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v42 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  v47 = a2;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_71;
  }

  v21 = a3 - v47;
  if (a3 - v47 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_72;
  }

  v22 = (a2 - a1) / v20;
  v53 = a1;
  v52 = a4;
  if (v22 >= v21 / v20)
  {
    v25 = v21 / v20 * v20;
    if (a4 < v47 || v47 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v47)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v25;
    if (v25 >= 1)
    {
      v31 = -v20;
      v32 = a4 + v25;
      v45 = a4;
      v46 = -v20;
      do
      {
        v43 = v30;
        v33 = v47;
        v47 += v31;
        while (1)
        {
          if (v33 <= a1)
          {
            v53 = v33;
            v51 = v43;
            goto LABEL_69;
          }

          v34 = a3;
          v44 = v30;
          v35 = v46;
          v36 = v32 + v46;
          v37 = v48;
          sub_21B186818(v32 + v46, v48, type metadata accessor for DatasetColumnDescription);
          v38 = v49;
          sub_21B186818(v47, v49, type metadata accessor for DatasetColumnDescription);
          v39 = *v37 == *v38 && v37[1] == v38[1];
          v40 = v39 ? 0 : sub_21B20DB28();
          a3 = v34 + v35;
          sub_21B17FDE8(v49);
          sub_21B17FDE8(v48);
          v41 = v45;
          if (v40)
          {
            break;
          }

          v30 = v36;
          if (v34 < v32 || a3 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v34 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v32 = v36;
          if (v36 <= v41)
          {
            v47 = v33;
            goto LABEL_68;
          }
        }

        if (v34 < v33 || a3 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          v30 = v44;
        }

        else
        {
          v30 = v44;
          if (v34 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v46;
      }

      while (v32 > v41);
    }

LABEL_68:
    v53 = v47;
    v51 = v30;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v24 = v47;
    }

    else
    {
      v24 = v47;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v26 = a4 + v23;
    v51 = a4 + v23;
    if (v23 >= 1 && v24 < a3)
    {
      while (1)
      {
        sub_21B186818(v24, v18, type metadata accessor for DatasetColumnDescription);
        sub_21B186818(a4, v15, type metadata accessor for DatasetColumnDescription);
        if (*v18 == *v15 && v18[1] == v15[1])
        {
          break;
        }

        v29 = sub_21B20DB28();
        sub_21B17FDE8(v15);
        sub_21B17FDE8(v18);
        if ((v29 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < v24 || a1 >= v24 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v24 += v20;
LABEL_38:
        a1 += v20;
        v53 = a1;
        if (a4 >= v26 || v24 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_21B17FDE8(v15);
      sub_21B17FDE8(v18);
LABEL_30:
      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v52 = a4 + v20;
      a4 += v20;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_21B1D7E44(&v53, &v52, &v51);
  return 1;
}

uint64_t sub_21B1850D4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_21B20DB28() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_21B20DB28() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_21B1852FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21B185388(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_21B18539C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBA0, &qword_21B2115B8);
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
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_21B1854A0(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_21B1864E8(a1 + 32, &v46);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_21B17C304(v48, v43);
  v9 = *a3;
  v10 = sub_21B1B9778(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_21B201438(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_21B1B9778(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_21B20DBF8();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_21B203BE0();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_21B17C304(v43, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_21B1864E8(v26, &v46);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_21B17C304(v48, v43);
      v30 = *a3;
      v31 = sub_21B1B9778(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_21B201438(v35, 1);
        v37 = *a3;
        v31 = sub_21B1B9778(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_21B17C304(v43, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
  sub_21B20D7C8();
  __break(1u);
}

uint64_t sub_21B18585C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_21B17FB4C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_21B1858F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21B17FB4C(*(v3 + 56) + 40 * v13, v22);
    *&v24 = v16;
    *(&v24 + 1) = v15;
    sub_21B17C284(v22, &v25);

    v18 = *(&v24 + 1);
    v19 = v24;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v25;
      v22[2] = v26;
      v23 = v27;
      v21(v22);
      return sub_21B186488(v22, &qword_27CD6EBA8, &qword_21B2115C0);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B185A70(uint64_t result, uint64_t (*a2)(uint64_t *), uint64_t a3, char **a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = result + 48;
    v26 = v6 - 1;
    v9 = MEMORY[0x277D84F90];
    v29 = *(result + 16);
    v30 = result;
    v27 = result + 48;
    do
    {
      v28 = v9;
      v10 = (v8 + 24 * v7);
      v11 = v7;
      while (1)
      {
        if (v11 >= *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 - 2);
        v13 = *(v10 - 1);
        v14 = *v10;
        v34 = v12;
        v35 = v13;
        v36 = v14;

        v15 = a2(&v34);
        if (v4)
        {
          v9 = v28;

          goto LABEL_21;
        }

        if (v15)
        {
          break;
        }

        v16 = v35;
        v33 = v34;
        v17 = v36;
        v18 = *a4;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_21B1D280C(0, *(v18 + 2) + 1, 1, v18);
          *a4 = v18;
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        if (v21 >= v20 >> 1)
        {
          v18 = sub_21B1D280C((v20 > 1), v21 + 1, 1, v18);
          *a4 = v18;
        }

        ++v11;
        *(v18 + 2) = v21 + 1;
        v22 = &v18[24 * v21];
        *(v22 + 4) = v33;
        *(v22 + 5) = v16;
        *(v22 + 6) = v17;

        v10 += 3;
        v5 = v30;
        if (v29 == v11)
        {
          v9 = v28;
          goto LABEL_21;
        }
      }

      v9 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      v37 = v28;
      if ((result & 1) == 0)
      {
        result = sub_21B18FD38(0, *(v28 + 16) + 1, 1);
        v9 = v37;
      }

      v24 = *(v9 + 16);
      v23 = *(v9 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_21B18FD38((v23 > 1), v24 + 1, 1);
        v9 = v37;
      }

      v7 = v11 + 1;
      *(v9 + 16) = v24 + 1;
      v25 = (v9 + 24 * v24);
      v25[4] = v12;
      v25[5] = v13;
      v25[6] = v14;
      v8 = v27;
      v5 = v30;
    }

    while (v26 != v11);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

LABEL_21:

  return v9;
}

void sub_21B185D08(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = -1 << *(a1 + 32);
  v12 = ~v11;
  v13 = *(a1 + 64);
  v14 = -v11;
  v69 = a1;
  v70 = a1 + 64;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v71 = v12;
  v72 = 0;
  v73 = v15 & v13;
  v74 = a2;
  v75 = a3;

  sub_21B1858F8(&v66);
  v16 = v67;
  if (!v67)
  {
LABEL_19:
    sub_21B17AB4C();

    return;
  }

  while (1)
  {
    v17 = v66;
    v64 = v66;
    v65 = v16;
    sub_21B17C284(&v68, v63);
    v18 = *a5;
    v20 = sub_21B1B9778(v17, v16);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v24 = v19;
    if (v18[3] < v23)
    {
      break;
    }

    if (a4)
    {
      if (v19)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_21B203964();
      if (v24)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v30 = *a5;
    *(*a5 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v31 = (v30[6] + 16 * v20);
    *v31 = v17;
    v31[1] = v16;
    sub_21B17C284(v63, v30[7] + 40 * v20);
    v32 = v30[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_33;
    }

    v30[2] = v34;
LABEL_6:
    sub_21B1858F8(&v66);
    v16 = v67;
    a4 = 1;
    if (!v67)
    {
      goto LABEL_19;
    }
  }

  sub_21B2010B0(v23, a4 & 1);
  v25 = *a5;
  v26 = sub_21B1B9778(v17, v16);
  if ((v24 & 1) != (v27 & 1))
  {
    goto LABEL_35;
  }

  v20 = v26;
  if ((v24 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v28 = *a5;
  sub_21B17FB4C(*(*a5 + 56) + 40 * v20, v61);
  __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  if (sub_21B20CE18())
  {
    sub_21B17FB4C(v61, v62);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v63);

    v29 = (v28[7] + 40 * v20);
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_21B17C284(v62, v29);
    goto LABEL_6;
  }

  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_21B20D6A8();
  v59 = 0;
  v60 = 0xE000000000000000;
  MEMORY[0x21CEEBBB0](0xD00000000000002DLL, 0x800000021B20E9B0);
  v35 = *(a6 + 16);
  v36 = *(v35 + 16);
  if (!v36)
  {
    goto LABEL_23;
  }

  v37 = sub_21B1C703C(*(v35 + 16), 0);
  v38 = sub_21B1C7A98(v58, v37 + 32, v36, v35);
  swift_bridgeObjectRetain_n();
  sub_21B17AB4C();
  v39 = v38 == v36;
  v40 = a9;
  if (!v39)
  {
    __break(1u);
LABEL_23:

    v37 = MEMORY[0x277D84F90];
    v40 = a9;
  }

  v41 = v76;
  v58[0] = v37;
  sub_21B1836B8(v58);
  v20 = v41;
  if (v41)
  {
    goto LABEL_36;
  }

  v42 = MEMORY[0x21CEEBC80](v58[0], MEMORY[0x277D837D0]);
  v44 = v43;

  MEMORY[0x21CEEBBB0](v42, v44);

  MEMORY[0x21CEEBBB0](0x3A646E6F6365530ALL, 0xE900000000000020);
  v45 = *(v40 + 16);
  if (v45)
  {
    v76 = 0;
    v46 = sub_21B1C703C(v45, 0);
    v47 = sub_21B1C7A98(v58, v46 + 32, v45, v40);
    v20 = v58[4];

    sub_21B17AB4C();
    if (v47 == v45)
    {
      v20 = v76;
      goto LABEL_29;
    }

LABEL_34:
    __break(1u);
LABEL_35:

    sub_21B20DBF8();
    __break(1u);
LABEL_36:
    v56 = v20;
LABEL_38:

    __break(1u);
    goto LABEL_39;
  }

  v46 = MEMORY[0x277D84F90];
LABEL_29:
  v58[0] = v46;
  sub_21B1836B8(v58);
  if (v20)
  {
    v56 = v20;
    goto LABEL_38;
  }

  v48 = MEMORY[0x21CEEBC80](v58[0], MEMORY[0x277D837D0]);
  v50 = v49;

  MEMORY[0x21CEEBBB0](v48, v50);

  v51 = v59;
  v52 = v60;
  sub_21B186430();
  v53 = swift_allocError();
  *v54 = v51;
  *(v54 + 8) = v52;
  *(v54 + 16) = 2;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v61);
  v61[0] = v53;
  v55 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(v63);
    sub_21B17AB4C();

    return;
  }

LABEL_39:
  *&v62[0] = 0;
  *(&v62[0] + 1) = 0xE000000000000000;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);

  sub_21B20D7C8();
  __break(1u);
}

uint64_t sub_21B186364(uint64_t result, uint64_t a2, void *a3)
{
  v10 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    for (i = (a2 + 48); ; i += 3)
    {
      v7 = *(i - 1);
      v8 = *i;
      v9[0] = *(i - 2);
      v9[1] = v7;
      v9[2] = v8;

      sub_21B182BE8(&v10, v9, a3);

      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return v10;
      }
    }
  }

  return result;
}

unint64_t sub_21B186430()
{
  result = qword_27CD6EB98;
  if (!qword_27CD6EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EB98);
  }

  return result;
}

uint64_t sub_21B186488(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21B1864E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBC0, &qword_21B2115D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B186558()
{
  result = qword_27CD6EBC8;
  if (!qword_27CD6EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EBC8);
  }

  return result;
}

unint64_t sub_21B1865AC()
{
  result = qword_27CD6EBE8;
  if (!qword_27CD6EBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6EBE0, &qword_21B217FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EBE8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21B186658(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21B18669C()
{
  result = qword_27CD6EBF8;
  if (!qword_27CD6EBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6EBF0, &unk_21B2115E0);
    sub_21B186880(&qword_27CD6EC00, type metadata accessor for DatasetColumnDescription);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EBF8);
  }

  return result;
}

uint64_t sub_21B186750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnDescription();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1867B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnDescription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B186818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B186880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21B1868D4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = *a3;
  v6 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_21B20D368();
  v13 = v12;
  swift_beginAccess();
  v14 = sub_21B1BA38C(v11, v13);
  swift_endAccess();
  if (v14)
  {

    *(v4 + 56) = v14;
    *(v4 + 64) = v8;
    *(v4 + 72) = v9;
    v15 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 152);
    *(v4 + 16) = 0;
    *(v4 + 24) = v15;

    *(v4 + 32) = v7;
    *(v4 + 40) = v6;
    *(v4 + 48) = a2;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_21B17FC58();
    swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v13;
    *(v16 + 16) = 3;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MaterializedViewBlock();
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t sub_21B186A4C()
{
  v2 = v0;
  v3 = *(v0 + 56);
  v4 = *(v2 + 24);
  result = sub_21B1E7C08();
  if (!v1)
  {
    *(v2 + 16) = 0;
  }

  return result;
}

uint64_t sub_21B186A80(uint64_t *a1)
{
  v3 = *(v1 + 24);
  v8 = *a1;
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);

  sub_21B1D151C(v5, v6);

  if (!v2)
  {
    sub_21B1E79C0();

    *(v1 + 16) = 1;
  }

  return 1;
}

uint64_t sub_21B186B28()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
}

uint64_t sub_21B186B58()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_21B186BEC(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_21B20CF28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[3];
  v12 = v4[7];
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);

  sub_21B20CEA8();

  if (!v3)
  {
    v16 = v4[10];
    if (v16)
    {
      v17 = v4[9];
      v18 = *a1;
      if (!*(*a1 + 16) || (v19 = sub_21B1B9778(v4[9], v4[10]), (v20 & 1) == 0))
      {
        v35 = 0;
        v36 = 0xE000000000000000;
        sub_21B20D6A8();

        v35 = 0x203A6B636F6C42;
        v36 = 0xE700000000000000;
        MEMORY[0x21CEEBBB0](v4[4], v4[5]);
        MEMORY[0x21CEEBBB0](0xD000000000000026, 0x800000021B20EC20);
        v24 = v17;
        v25 = v16;
        goto LABEL_10;
      }

      v21 = *(*(*(v18 + 56) + 24 * v19 + 16) + 16);
      if (sub_21B20CEC8() >= v21)
      {
        v35 = 0;
        v36 = 0xE000000000000000;
        sub_21B20D6A8();

        v35 = 0x6572207972657551;
        v36 = 0xEF20736572697571;
        v37 = sub_21B20CEC8();
        v22 = sub_21B20DAB8();
        MEMORY[0x21CEEBBB0](v22);

        MEMORY[0x21CEEBBB0](0xD000000000000011, 0x800000021B20EC50);
        v37 = v21;
        v23 = sub_21B20DAB8();
        MEMORY[0x21CEEBBB0](v23);

        v24 = 0x7078652065726120;
        v25 = 0xED00006465746365;
LABEL_10:
        MEMORY[0x21CEEBBB0](v24, v25);
        v27 = v35;
        v28 = v36;
        sub_21B18722C();
        swift_allocError();
        *v29 = v27;
        *(v29 + 8) = v28;
        *(v29 + 16) = 0;
        swift_willThrow();
        return (*(v7 + 8))(v10, v6);
      }
    }

    else if (sub_21B20CEC8() >= 1)
    {
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_21B20D6A8();
      MEMORY[0x21CEEBBB0](0x6572207972657551, 0xEF20736572697571);
      v37 = sub_21B20CEC8();
      v26 = sub_21B20DAB8();
      MEMORY[0x21CEEBBB0](v26);

      v24 = 0xD000000000000030;
      v25 = 0x800000021B20EBE0;
      goto LABEL_10;
    }

    v30 = v4[4];
    v31 = v4[5];
    v32 = v4[8];
    swift_bridgeObjectRetain_n();

    v33 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *a1;
    *a1 = 0x8000000000000000;
    sub_21B1BB4EC(v30, v31, v32, v30, v31, isUniquelyReferenced_nonNull_native);

    *a1 = v35;
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_21B186FF4()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[8];

  v6 = sub_21B1B5784(v5);

  v7 = *(v6 + 16);

  if (!v7)
  {
    return sub_21B20CEE8();
  }

  v10[3] = &type metadata for DatasetColumnLayout;
  v10[0] = v3;
  v10[1] = v2;
  v10[4] = sub_21B17FE44();
  v10[2] = v4;

  v8 = sub_21B20CED8();
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v1)
  {
    return v8;
  }

  return result;
}

uint64_t sub_21B187100()
{
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[10];
}

uint64_t sub_21B187138()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8D8](v0, 89, 7);
}

uint64_t sub_21B1871D4@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 72);
  v2 = *(*v1 + 80);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 64);
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
}

unint64_t sub_21B18722C()
{
  result = qword_27CD6EC10;
  if (!qword_27CD6EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC10);
  }

  return result;
}

uint64_t sub_21B187280(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (!v9)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v6 != 1)
  {
    if (v9 == 2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v9 != 1)
  {
    return 0;
  }

LABEL_4:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  else
  {
    return sub_21B20DB28();
  }
}

uint64_t sub_21B1872E4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC28, &qword_21B2117E8);
  v3 = *(*(v80 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v80);
  v79 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v78 = (&v66 - v7);
  v8 = MEMORY[0x28223BE20](v6);
  v77 = (&v66 - v9);
  MEMORY[0x28223BE20](v8);
  v76 = &v66 - v10;
  v11 = type metadata accessor for DatasetColumnDescription();
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[4];
  v66 = v1[3];
  v16 = v1[8];
  v17 = v1[7];
  ObjectType = swift_getObjectType();
  v19 = *(v16 + 8);
  v67 = v15;

  v20 = v19(ObjectType, v16);
  if (!*(v20 + 16))
  {
    goto LABEL_22;
  }

  v23 = v2 + 3;
  v21 = v2[3];
  v22 = v23[1];

  v24 = sub_21B1B9778(v21, v22);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    goto LABEL_22;
  }

  v27 = *(*(v20 + 56) + 8 * v24);

  v28 = *(v27 + 16);
  if (v28)
  {
    v86 = MEMORY[0x277D84F90];

    sub_21B18FDB0(0, v28, 0);
    v29 = v86;
    v30 = v27 + 64;
    v31 = -1 << *(v27 + 32);
    result = sub_21B20D648();
    v33 = result;
    v34 = 0;
    v35 = *(v27 + 36);
    v69 = v27 + 72;
    v70 = v28;
    v72 = v27;
    v73 = v27 + 64;
    v71 = v35;
    while ((v33 & 0x8000000000000000) == 0 && v33 < 1 << *(v27 + 32))
    {
      if ((*(v30 + 8 * (v33 >> 6)) & (1 << v33)) == 0)
      {
        goto LABEL_27;
      }

      if (v35 != *(v27 + 36))
      {
        goto LABEL_28;
      }

      v82 = 1 << v33;
      v83 = v33 >> 6;
      v81 = v34;
      v85 = v29;
      v37 = v80;
      v38 = *(v80 + 48);
      v39 = *(v27 + 56);
      v40 = (*(v27 + 48) + 16 * v33);
      v41 = v14;
      v43 = *v40;
      v42 = v40[1];
      v44 = type metadata accessor for DatasetColumnType();
      v45 = v76;
      sub_21B188B7C(v39 + *(*(v44 - 8) + 72) * v33, &v76[v38], type metadata accessor for DatasetColumnType);
      v46 = v77;
      *v77 = v43;
      *(v46 + 8) = v42;
      sub_21B188AC0(&v45[v38], v46 + *(v37 + 48), type metadata accessor for DatasetColumnType);
      v47 = v78;
      sub_21B1889E0(v46, v78);
      v49 = *v47;
      v48 = v47[1];
      v84 = *(v37 + 48);
      v50 = v46;
      v51 = v79;
      sub_21B188A50(v50, v79);
      v52 = *(v51 + 8);

      v53 = *(v37 + 48);
      v29 = v85;
      *v41 = v49;
      *(v41 + 8) = v48;
      v14 = v41;
      *(v41 + 16) = 0;
      v54 = v75;
      *(v41 + *(v75 + 28)) = 0;
      sub_21B188AC0(v51 + v53, v41 + *(v54 + 24), type metadata accessor for DatasetColumnType);
      sub_21B188BE4(v47 + v84, type metadata accessor for DatasetColumnType);
      v86 = v29;
      v56 = *(v29 + 16);
      v55 = *(v29 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_21B18FDB0(v55 > 1, v56 + 1, 1);
        v29 = v86;
      }

      *(v29 + 16) = v56 + 1;
      result = sub_21B188AC0(v41, v29 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v56, type metadata accessor for DatasetColumnDescription);
      v27 = v72;
      v30 = v73;
      v36 = 1 << *(v72 + 32);
      if (v33 >= v36)
      {
        goto LABEL_29;
      }

      v57 = *(v73 + 8 * v83);
      if ((v57 & v82) == 0)
      {
        goto LABEL_30;
      }

      LODWORD(v35) = v71;
      if (v71 != *(v72 + 36))
      {
        goto LABEL_31;
      }

      v58 = v57 & (-2 << (v33 & 0x3F));
      if (v58)
      {
        v36 = __clz(__rbit64(v58)) | v33 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v59 = v83 << 6;
        v60 = v83 + 1;
        v61 = (v69 + 8 * v83);
        while (v60 < (v36 + 63) >> 6)
        {
          v63 = *v61++;
          v62 = v63;
          v59 += 64;
          ++v60;
          if (v63)
          {
            result = sub_21B17C2EC(v33, v71, 0);
            v36 = __clz(__rbit64(v62)) + v59;
            goto LABEL_6;
          }
        }

        result = sub_21B17C2EC(v33, v71, 0);
      }

LABEL_6:
      v34 = v81 + 1;
      v33 = v36;
      if (v81 + 1 == v70)
      {
        result = swift_bridgeObjectRelease_n();
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_22:

    v29 = MEMORY[0x277D84F90];
LABEL_23:
    v64 = v68;
    v65 = v67;
    *v68 = v66;
    v64[1] = v65;
    v64[2] = v29;
  }

  return result;
}

uint64_t sub_21B187848(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v27 = a2;
  v8 = type metadata accessor for DatasetColumnDescription();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a3[1];
  v28 = *a3;
  v14 = a3[2];
  *(v5 + 16) = 1;
  v15 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 120);
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {

    sub_21B188B28();
    swift_allocError();
    *v18 = 0xD000000000000044;
    v18[1] = 0x800000021B20ECB0;
    swift_willThrow();
    type metadata accessor for QueryParametersBlock();
    swift_deallocPartialClassInstance();
LABEL_17:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  v19 = v16;
  *(v5 + 40) = v14;
  if (!v14)
  {
    swift_unknownObjectRetain();
LABEL_16:
    *(v5 + 48) = v27;
    *(v5 + 24) = v28;
    *(v5 + 32) = v13;

    *(v5 + 56) = v15;
    *(v5 + 64) = v19;
    goto LABEL_17;
  }

  v26 = a1;
  v20 = *(v14 + 16);
  swift_unknownObjectRetain();

  if (!v20)
  {
    a1 = v26;
    goto LABEL_16;
  }

  v25 = v5;
  v21 = 0;
  while (v21 < *(v14 + 16))
  {
    sub_21B188B7C(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v12, type metadata accessor for DatasetColumnDescription);
    sub_21B187B28(v12, v15, v19, v28, v13);
    if (v4)
    {
      goto LABEL_19;
    }

    ++v21;
    sub_21B188BE4(v12, type metadata accessor for DatasetColumnDescription);
    if (v20 == v21)
    {
      v5 = v25;
      a1 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:

  sub_21B188BE4(v12, type metadata accessor for DatasetColumnDescription);
  v23 = *(v25 + 40);

  type metadata accessor for QueryParametersBlock();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void sub_21B187B28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v78 = type metadata accessor for DatasetColumnDescription();
  v9 = *(*(v78 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v78);
  v12 = &v71[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v76 = &v71[-v14];
  MEMORY[0x28223BE20](v13);
  v75 = &v71[-v15];
  v16 = type metadata accessor for DatasetColumnType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8);
  v74 = &v71[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v77 = &v71[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v71[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v71[-v26];
  ObjectType = swift_getObjectType();
  v29 = (*(a3 + 8))(ObjectType, a3);
  if (*(v29 + 16) && (v30 = sub_21B1B9778(a4, a5), (v31 & 1) != 0) && (v32 = *(*(v29 + 56) + 8 * v30), , , *(v32 + 16)) && (v33 = sub_21B1B9778(*a1, a1[1]), (v34 & 1) != 0))
  {
    sub_21B188B7C(*(v32 + 56) + *(v17 + 72) * v33, v25, type metadata accessor for DatasetColumnType);

    v35 = v27;
    sub_21B188AC0(v25, v27, type metadata accessor for DatasetColumnType);
    v36 = v78;
    v37 = *(v78 + 24);
    sub_21B20CCE8();
    sub_21B188C7C();
    sub_21B20D3F8();
    sub_21B20D3F8();
    if (v81[0] == v79 && v81[1] == v80)
    {
    }

    else
    {
      v48 = sub_21B20DB28();

      if ((v48 & 1) == 0)
      {
        if (qword_27CD6E950 != -1)
        {
          swift_once();
        }

        v49 = sub_21B20D218();
        __swift_project_value_buffer(v49, qword_27CD7E090);
        v50 = v75;
        sub_21B188B7C(a1, v75, type metadata accessor for DatasetColumnDescription);
        v51 = v76;
        sub_21B188B7C(a1, v76, type metadata accessor for DatasetColumnDescription);
        v52 = v77;
        sub_21B188B7C(v35, v77, type metadata accessor for DatasetColumnType);
        v53 = sub_21B20D1F8();
        v54 = sub_21B20D598();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v81[0] = v73;
          *v55 = 136315650;
          v72 = v54;
          v56 = v50;
          v57 = *v50;
          v58 = v50[1];

          sub_21B188BE4(v56, type metadata accessor for DatasetColumnDescription);
          v59 = sub_21B19D4B0(v57, v58, v81);

          *(v55 + 4) = v59;
          *(v55 + 12) = 2080;
          v60 = v74;
          sub_21B188B7C(&v51[*(v36 + 24)], v74, type metadata accessor for DatasetColumnType);
          v61 = _s12PoirotBlocks17DatasetColumnTypeV11descriptionSSvg_0();
          v63 = v62;
          sub_21B188BE4(v60, type metadata accessor for DatasetColumnType);
          sub_21B188BE4(v51, type metadata accessor for DatasetColumnDescription);
          v64 = sub_21B19D4B0(v61, v63, v81);

          *(v55 + 14) = v64;
          *(v55 + 22) = 2080;
          v65 = v77;
          sub_21B188B7C(v77, v60, type metadata accessor for DatasetColumnType);
          v66 = _s12PoirotBlocks17DatasetColumnTypeV11descriptionSSvg_0();
          v68 = v67;
          sub_21B188BE4(v60, type metadata accessor for DatasetColumnType);
          sub_21B188BE4(v65, type metadata accessor for DatasetColumnType);
          v69 = sub_21B19D4B0(v66, v68, v81);

          *(v55 + 24) = v69;
          _os_log_impl(&dword_21B179000, v53, v72, "QueryParametersBlock requires query parameter with %s name to be of the %s, but environment provides %s", v55, 0x20u);
          v70 = v73;
          swift_arrayDestroy();
          MEMORY[0x21CEECC50](v70, -1, -1);
          MEMORY[0x21CEECC50](v55, -1, -1);
        }

        else
        {

          sub_21B188BE4(v52, type metadata accessor for DatasetColumnType);
          sub_21B188BE4(v51, type metadata accessor for DatasetColumnDescription);
          sub_21B188BE4(v50, type metadata accessor for DatasetColumnDescription);
        }

        v47 = v35;
        v46 = type metadata accessor for DatasetColumnType;
        goto LABEL_13;
      }
    }

    v46 = type metadata accessor for DatasetColumnType;
    v47 = v27;
  }

  else
  {

    if (qword_27CD6E950 != -1)
    {
      swift_once();
    }

    v38 = sub_21B20D218();
    __swift_project_value_buffer(v38, qword_27CD7E090);
    sub_21B188B7C(a1, v12, type metadata accessor for DatasetColumnDescription);
    v39 = sub_21B20D1F8();
    v40 = sub_21B20D598();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v81[0] = v42;
      *v41 = 136315138;
      v43 = *v12;
      v44 = v12[1];

      sub_21B188BE4(v12, type metadata accessor for DatasetColumnDescription);
      v45 = sub_21B19D4B0(v43, v44, v81);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_21B179000, v39, v40, "QueryParametersBlock requires query parameter with %s name and environment does not provide one", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x21CEECC50](v42, -1, -1);
      MEMORY[0x21CEECC50](v41, -1, -1);

      return;
    }

    v46 = type metadata accessor for DatasetColumnDescription;
    v47 = v12;
  }

LABEL_13:
  sub_21B188BE4(v47, v46);
}

uint64_t sub_21B1882D4(char **a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[8];
  v9 = v3[7];
  ObjectType = swift_getObjectType();
  v11 = *(v8 + 16);

  v11(&v28, v7, v6, ObjectType, v8);
  if (v4)
  {
  }

  else
  {
    v12 = sub_21B188494(v28);

    DatasetRow.init(name:_:)(v7, v6, v12, &v25);
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = swift_getObjectType();
    v25 = v13;
    v26 = v14;
    v27 = v15;
    (*(a3 + 16))(&v25, v16, a3);
    v17 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_21B1D280C(0, *(v17 + 2) + 1, 1, v17);
      *a1 = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_21B1D280C((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[24 * v20];
    *(v21 + 4) = v13;
    *(v21 + 5) = v14;
    *(v21 + 6) = v15;
    *a1 = v17;
    *(v5 + 16) = 1;
  }

  return 1;
}

unint64_t sub_21B188494(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBB8, &qword_21B2115D0);
    v2 = sub_21B20D808();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_21B17FB4C(*(a1 + 56) + 40 * v15, v32);
        *&v31 = v17;
        *(&v31 + 1) = v18;
        v28[2] = v31;
        v29[0] = v32[0];
        v29[1] = v32[1];
        v30 = v33;
        v19 = v31;
        sub_21B17C284(v29, v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
        swift_dynamicCast();
        sub_21B17C304(&v25, v27);
        sub_21B17C304(v27, v28);
        sub_21B17C304(v28, &v26);
        result = sub_21B1B9778(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_21B17C304(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_21B17C304(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21B188734(uint64_t *a1)
{
  if (*(*a1 + 16) && (v4 = *(v1 + 24), v3 = *(v1 + 32), , sub_21B1B9778(v4, v3), LOBYTE(v4) = v5, , (v4 & 1) != 0))
  {
    v7 = *(v1 + 24);
    v6 = *(v1 + 32);
    sub_21B18898C();
    swift_allocError();
    *v8 = v7;
    *(v8 + 8) = v6;
    *(v8 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v10 = *(v1 + 24);
    v11 = *(v1 + 32);

    sub_21B1872E4(v15);
    v12 = v15[2];

    v13 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *a1;
    *a1 = 0x8000000000000000;
    sub_21B1BB4EC(v10, v11, v12, v10, v11, isUniquelyReferenced_nonNull_native);

    *a1 = v15[0];
  }

  return result;
}

uint64_t sub_21B188864()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_21B1888F4(char **a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  sub_21B1882D4(a1, a2, a3);
  return 1;
}

uint64_t sub_21B18894C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  return v1;
}

unint64_t sub_21B18898C()
{
  result = qword_27CD6EC18;
  if (!qword_27CD6EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC18);
  }

  return result;
}

uint64_t sub_21B1889E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC28, &qword_21B2117E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B188A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC28, &qword_21B2117E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B188AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21B188B28()
{
  result = qword_27CD6EC30;
  if (!qword_27CD6EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC30);
  }

  return result;
}

uint64_t sub_21B188B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B188BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_21B188C7C()
{
  result = qword_27CD6EC08;
  if (!qword_27CD6EC08)
  {
    sub_21B20CCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EC08);
  }

  return result;
}

uint64_t sub_21B188CE0(uint64_t a1, unsigned int a2)
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

uint64_t sub_21B188D28(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21B188D7C()
{
  v1 = v0[4];

  v2 = v0[7];
  sub_21B188EC8(v0[6]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_21B188E20(uint64_t *a1)
{
  v3 = v1;
  v4 = *(v1 + 48);
  if (!v4 || (v5 = *(v1 + 56), v7 = *a1, sub_21B188EB8(v4), , v4(&v7), , sub_21B188EC8(v4), !v2))
  {
    *(v3 + 16) = 1;
  }

  return 1;
}

uint64_t sub_21B188EB8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21B188EC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21B188EE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21B188F2C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21B188F8C(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v7 = a3[3];
  v23 = a3[2];
  v24 = v7;
  *v25 = a3[4];
  *&v25[16] = *(a3 + 10);
  v8 = a3[1];
  v21 = *a3;
  v22 = v8;
  *(v3 + 184) = 0;
  v9 = *(&v22 + 1);
  v10 = v23;
  v11 = BYTE8(v23);
  v12 = v24;
  *(v3 + 56) = v22;
  *(v3 + 64) = v9;
  *(v3 + 72) = v10;
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  *(v3 + 144) = 0;

  v13 = sub_21B1891C8(&v21, a1, a2, v20);
  if (v4)
  {
    sub_21B189514(&v21);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_21B1894C0(v3 + 56);
    type metadata accessor for TemplateBlock();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = *v25;
    *(v3 + 152) = *v25;
    MEMORY[0x28223BE20](v13);
    v18[2] = v20;
    v18[3] = a1;
    swift_bridgeObjectRetain_n();
    v16 = sub_21B1C5824(sub_21B189568, v18, v14);

    *(v3 + 176) = v16;
    v26 = *&v25[8];
    *(v3 + 160) = *&v25[8];
    v17 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 152);
    *(v3 + 16) = 0;
    *(v3 + 24) = v17;
    v27 = v21;
    sub_21B189588(&v26, v19);

    sub_21B189588(&v27, v19);
    sub_21B189514(&v21);
    *(v3 + 32) = v27;
    *(v3 + 48) = a2;

    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_21B1891C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  sub_21B17FB4C(a2, v30);
  v12 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v14 = *(a1 + 72);
  v13 = *(a1 + 80);
  v15 = *v12;
  v16 = sub_21B20D368();
  v18 = v17;
  swift_beginAccess();

  v19 = sub_21B1BA38C(v16, v18);
  swift_endAccess();
  if (v19)
  {

    v26[0] = v6;
    v26[1] = v7;
    v26[2] = v8;
    v27 = v9;
    v28 = v10;
    v29 = v11;
    v20 = type metadata accessor for AggregationBlock();
    swift_allocObject();
    v21 = v30[6];
    result = sub_21B17E460(v30, v19, a3, v26);
    if (!v21)
    {
      a4[3] = v20;
      a4[4] = &off_282C9FFD0;
      *a4 = result;
    }
  }

  else
  {

    sub_21B17FC58();
    swift_allocError();
    *v23 = v16;
    *(v23 + 8) = v18;
    *(v23 + 16) = 3;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t sub_21B18936C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_21B17F6C0(a3, v9, a5);
  if (v5)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t sub_21B1893E0()
{
  sub_21B1894C0((v0 + 7));
  v1 = v0[19];

  v2 = v0[21];

  v3 = v0[22];
}

uint64_t sub_21B189420()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_21B1894C0((v0 + 7));
  v3 = v0[19];

  v4 = v0[21];

  v5 = v0[22];

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t sub_21B1895E4(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v7 = a3[3];
  v23 = a3[2];
  v24 = v7;
  *v25 = a3[4];
  *&v25[16] = *(a3 + 10);
  v8 = a3[1];
  v21 = *a3;
  v22 = v8;
  *(v3 + 184) = 0;
  v9 = *(&v22 + 1);
  v10 = v23;
  v11 = BYTE8(v23);
  v12 = v24;
  *(v3 + 56) = v22;
  *(v3 + 64) = v9;
  *(v3 + 72) = v10;
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  *(v3 + 144) = 0;

  v13 = sub_21B1891C8(&v21, a1, a2, v20);
  if (v4)
  {
    sub_21B189514(&v21);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_21B1894C0(v3 + 56);
    type metadata accessor for TemplateBlockLegacy();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = *v25;
    *(v3 + 152) = *v25;
    MEMORY[0x28223BE20](v13);
    v18[2] = v20;
    v18[3] = a1;
    swift_bridgeObjectRetain_n();
    v16 = sub_21B1C5824(sub_21B1898B8, v18, v14);

    *(v3 + 176) = v16;
    v26 = *&v25[8];
    *(v3 + 160) = *&v25[8];
    v17 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 152);
    *(v3 + 16) = 0;
    *(v3 + 24) = v17;
    v27 = v21;
    sub_21B189588(&v26, v19);

    sub_21B189588(&v27, v19);
    sub_21B189514(&v21);
    *(v3 + 32) = v27;
    *(v3 + 48) = a2;

    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_21B189820@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_21B17F290(a3, v9, a5);
  if (v5)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t sub_21B1898D8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21B20DB28();
  }
}

uint64_t sub_21B189914(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = *a3;
  v7 = a3[1];
  v9 = *(a3 + 16);
  v10 = a3[3];
  v22 = *(a3 + 33);
  v23 = *(a3 + 32);
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 1;
  v11 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 120);
  swift_getObjectType();
  v12 = swift_conformsToProtocol2();
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {

    sub_21B188B28();
    swift_allocError();
    *v14 = 0xD00000000000003ALL;
    v14[1] = 0x800000021B20EEB0;
    swift_willThrow();
  }

  else
  {
    v15 = v12;
    v20 = v10;
    v21 = v8;
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 48);
    swift_unknownObjectRetain();
    v17(ObjectType, v15);
    if (!v24)
    {
      *(v4 + 56) = v11;
      *(v4 + 64) = v15;
      *(v4 + 72) = v21;
      *(v4 + 80) = v7;
      *(v4 + 88) = v9;
      *(v4 + 96) = v20;
      *(v4 + 104) = v23;
      *(v4 + 105) = v22;
      v19 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 152);
      *(v4 + 16) = 0;
      *(v4 + 24) = v19;
      *(v4 + 32) = v21;
      *(v4 + 40) = v7;
      *(v4 + 48) = a2;

      __swift_destroy_boxed_opaque_existential_1(a1);
      return v4;
    }

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for TimeWindowBlock();
  swift_deallocPartialClassInstance();
  return v4;
}

void sub_21B189B04()
{
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 16) = 0;
}

uint64_t sub_21B189B18(char **a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v63 = a3;
  v8 = sub_21B20C728();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21B18A0B0();
  if (!v4)
  {
    v15 = v14;
    v60 = a1;
    v61 = v12;
    v57 = v8;
    v58 = v9;
    v59 = a2;
    v62 = 0;
    v16 = *(v3 + 56);
    v17 = *(v5 + 64);
    v18 = *(v5 + 56);
    ObjectType = swift_getObjectType();
    (*(v17 + 32))(ObjectType, v17);
    v21 = *(v5 + 88);
    v22 = 86400.0;
    if (v21)
    {
      v22 = 604800.0;
    }

    if (v21 == 2)
    {
      v22 = v20 - v15;
    }

    v23 = v15 + v22;
    if (v20 < v22 + v15 + v22)
    {
      *(v5 + 16) = 1;
    }

    v24 = v61;
    if (v23 > v20)
    {
      goto LABEL_15;
    }

    if (v15 > v23)
    {
      if (qword_27CD6E950 != -1)
      {
        swift_once();
      }

      v25 = sub_21B20D218();
      __swift_project_value_buffer(v25, qword_27CD7E090);
      v26 = sub_21B20D1F8();
      v27 = sub_21B20D598();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134218240;
        *(v28 + 4) = v15;
        *(v28 + 12) = 2048;
        *(v28 + 14) = v23;
        _os_log_impl(&dword_21B179000, v26, v27, "current interval is invalid from %f to %f", v28, 0x16u);
        MEMORY[0x21CEECC50](v28, -1, -1);
      }

LABEL_15:
      v13 = 0;
      return v13 & 1;
    }

    *(v5 + 112) = v15;
    *(v5 + 120) = v23;
    *(v5 + 128) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC38, &unk_21B211B80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B211A80;
    *(inited + 32) = 0x73745F7472617473;
    *(inited + 40) = 0xE800000000000000;
    v30 = v5;
    v31 = MEMORY[0x277D839F8];
    v32 = MEMORY[0x277D3E350];
    *(inited + 72) = MEMORY[0x277D839F8];
    *(inited + 80) = v32;
    *(inited + 48) = v15;
    *(inited + 88) = 0x73745F646E65;
    *(inited + 96) = 0xE600000000000000;
    *(inited + 128) = v31;
    *(inited + 136) = v32;
    *(inited + 104) = v23;
    *(inited + 144) = 0xD000000000000013;
    *(inited + 152) = 0x800000021B20EE50;
    sub_21B20C718();
    sub_21B20C708();
    v34 = v33;
    v35 = v5;
    (*(v58 + 8))(v24, v57);
    *(inited + 184) = v31;
    *(inited + 192) = v32;
    *(inited + 160) = v34;
    v36 = sub_21B19734C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC40, &qword_21B212500);
    swift_arrayDestroy();
    v37 = *(v35 + 88);
    if (v37 == 2)
    {
      v38 = v60;
    }

    else if (v37)
    {
      v39 = *(v35 + 105);
      v38 = v60;
      if (v39 != 2 && (v39 & 1) != 0)
      {
        v40 = sub_21B18A3F0(7uLL);
        v41 = v15 + v40 * 86400.0;
        v68 = MEMORY[0x277D84A28];
        v69 = MEMORY[0x277D3E388];
        *&v66 = v40;
        sub_21B17C284(&v66, v64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v36;
        v43 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
        sub_21B18A47C(*v43, 0xD000000000000016, 0x800000021B20EE70, isUniquelyReferenced_nonNull_native, &v70);
        __swift_destroy_boxed_opaque_existential_1(v64);
        v44 = v70;
        v68 = v31;
        v69 = MEMORY[0x277D3E350];
        *&v66 = v41;
        sub_21B17C284(&v66, v64);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v70 = v44;
        v46 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
        v35 = v30;
        sub_21B18A5E4(0xD000000000000014, 0x800000021B20EE90, v45, &v70, *v46);
        __swift_destroy_boxed_opaque_existential_1(v64);
        v36 = v70;
      }
    }

    else
    {
      v38 = v60;
    }

    v47 = *(v35 + 32);
    v48 = *(v35 + 40);
    v49 = *v38;
    swift_bridgeObjectRetain_n();

    v50 = swift_isUniquelyReferenced_nonNull_native();
    *v38 = v49;
    if ((v50 & 1) == 0)
    {
      v49 = sub_21B1D280C(0, *(v49 + 2) + 1, 1, v49);
      *v38 = v49;
    }

    v52 = *(v49 + 2);
    v51 = *(v49 + 3);
    if (v52 >= v51 >> 1)
    {
      v49 = sub_21B1D280C((v51 > 1), v52 + 1, 1, v49);
    }

    *(v49 + 2) = v52 + 1;
    v53 = &v49[24 * v52];
    *(v53 + 4) = v47;
    *(v53 + 5) = v48;
    *(v53 + 6) = v36;
    *v38 = v49;
    v54 = swift_getObjectType();
    *&v66 = v47;
    *(&v66 + 1) = v48;
    v67 = v36;
    (*(v63 + 16))(&v66, v54);

    v13 = 1;
  }

  return v13 & 1;
}

double sub_21B18A0B0()
{
  v3 = sub_21B20C728();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 96);
  v26 = v4;
  v27 = v8;
  v9 = *(v0 + 104);
  if (*(v0 + 128))
  {
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    ObjectType = swift_getObjectType();
    *&v13 = COERCE_DOUBLE((*(v11 + 8))(ObjectType, v11));
    if (v14)
    {
      sub_21B20C6D8();
      sub_21B20C708();
      v2 = v15;
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v2 = *&v13;
    }
  }

  else
  {
    v16 = *(v0 + 120);
    v17 = *(v0 + 56);
    v11 = *(v0 + 64);
    v18 = swift_getObjectType();
    (*(v11 + 16))(COERCE_DOUBLE(*&v16), 0, v18, v11);
    sub_21B20D4E8();
    if (v1)
    {
      return v2;
    }

    v2 = v16;
  }

  v19 = swift_getObjectType();
  (*(v11 + 32))(v19, v11);
  if ((v9 & 1) == 0)
  {
    v22 = v20;
    if (((*(v11 + 40))(v19, v11) & 1) == 0)
    {
      v23 = v27 * 86400.0;
      if (v23 < v22 - v2)
      {
        v2 = v22 - v23;
        v24 = *(v0 + 88);
        if (v24 != 2)
        {
          v28 = v24 & 1;
          sub_21B20C6F8();
          sub_21B1AB0EC(v7);
          v2 = v25;
          (*(v26 + 8))(v7, v3);
        }
      }
    }
  }

  return v2;
}

uint64_t sub_21B18A31C()
{
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 80);
}

uint64_t sub_21B18A34C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  swift_unknownObjectRelease();
  v4 = v0[10];

  return MEMORY[0x2821FE8D8](v0, 129, 7);
}

unint64_t sub_21B18A3F0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x21CEECC70](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x21CEECC70](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B18A47C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = MEMORY[0x277D84A28];
  v26 = MEMORY[0x277D3E388];
  v9 = *a5;
  v11 = sub_21B1B9778(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_21B17C284(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_21B203964();
    goto LABEL_7;
  }

  sub_21B2010B0(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_21B1B9778(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_21B20DBF8();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D84A28]);
  sub_21B18A7D0(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_1(&v24);
}

uint64_t sub_21B18A5E4(uint64_t a1, uint64_t a2, char a3, void *a4, double a5)
{
  *&v24 = a5;
  v25 = MEMORY[0x277D839F8];
  v26 = MEMORY[0x277D3E350];
  v9 = *a4;
  v11 = sub_21B1B9778(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_21B17C284(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_21B203964();
    goto LABEL_7;
  }

  sub_21B2010B0(v14, a3 & 1);
  v20 = *a4;
  v21 = sub_21B1B9778(a1, a2);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_21B20DBF8();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D839F8]);
  sub_21B18A740(v11, a1, a2, v17, *v23);

  return __swift_destroy_boxed_opaque_existential_1(&v24);
}

uint64_t sub_21B18A740(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  *&v11 = a5;
  v12 = MEMORY[0x277D839F8];
  v13 = MEMORY[0x277D3E350];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21B17C284(&v11, a4[7] + 40 * a1);
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

uint64_t sub_21B18A7D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D84A28];
  v13 = MEMORY[0x277D3E388];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21B17C284(&v11, a5[7] + 40 * a1);
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_21B18A8D0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = a3[3];
  *(v3 + 56) = a3[2];
  *(v3 + 64) = v7;
  sub_21B18BFF8((a3 + 4), v3 + 72, &qword_27CD6EC48, &qword_21B214CC0);
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B18BFF8(*v8 + 80, &v26, &qword_27CD6EC70, &qword_21B211CB0);
  if (v27)
  {
    sub_21B17C284(&v26, v31);
    v10 = v32;
    v9 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v12 = *a3;
    v11 = a3[1];
    v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = *v13;
    v15 = *(*v13 + 160);
    v16 = *(*v13 + 168);
    v17 = *(*v13 + 192);
    v28[0] = v15;
    v28[1] = v16;
    v29 = *(v14 + 176);
    v30 = v17;
    v18 = *(v9 + 16);

    v19 = v34;
    v18(&v26, v12, v11, a3, v28, v10, v9);

    if (v19)
    {
      sub_21B18C060(a3);
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v20 = *(v4 + 56);

      v21 = *(v4 + 64);

      sub_21B186488(v4 + 72, &qword_27CD6EC48, &qword_21B214CC0);
      type metadata accessor for UserDefinedBlock();
      swift_deallocPartialClassInstance();
    }

    else
    {
      sub_21B17C284(&v26, v4 + 112);
      v22 = *(*__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 152);
      sub_21B18C0B4(a3, &v26);
      *(v4 + 16) = 0;
      *(v4 + 24) = v22;
      v23 = v26;

      sub_21B18C060(&v26);
      *(v4 + 32) = v23;
      *(v4 + 48) = a2;
      sub_21B18C060(a3);
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    return v4;
  }

  else
  {

    sub_21B186488(&v26, &qword_27CD6EC70, &qword_21B211CB0);
    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B18ABA0(uint64_t result)
{
  v2 = result;
  if (v1[7])
  {
    v3 = v1[7];

    v5 = sub_21B1BBFE4(v4);

    v6 = *v2;

    v8 = sub_21B1BC1FC(v7);
    if (*(v8 + 16) <= *(v5 + 16) >> 3)
    {
      sub_21B18B148(v8);

      if (*(v5 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = sub_21B18B274(v8, v5);

      if (*(v9 + 16))
      {
LABEL_4:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC50, &qword_21B211CA0);
        sub_21B18BF40();
        sub_21B17FBB0();
        v10 = sub_21B20D3E8();
        v12 = v11;

        sub_21B18BFA4();
        swift_allocError();
        *v13 = v10;
        *(v13 + 8) = v12;
        *(v13 + 16) = 1;
        return swift_willThrow();
      }
    }
  }

  v14 = v1[8];
  if (v14)
  {
    v15 = v1[4];
    v16 = v1[5];
    v17 = v1[8];

    swift_bridgeObjectRetain_n();
    v18 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    *v2 = 0x8000000000000000;
    sub_21B1BB4EC(v15, v16, v14, v15, v16, isUniquelyReferenced_nonNull_native);

    *v2 = v20;
  }

  return result;
}

uint64_t sub_21B18AD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + 136);
  v10 = *(v5 + 144);
  __swift_project_boxed_opaque_existential_1((v5 + 112), v9);
  v11 = (*(v10 + 16))(a1, a2, a3, v9, v10);
  if (!v4)
  {
    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    __swift_project_boxed_opaque_existential_1((v5 + 112), v12);
    if ((*(v13 + 8))(v12, v13))
    {
      *(v5 + 16) = 1;
    }
  }

  return v11 & 1;
}

uint64_t sub_21B18AE40()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((v0 + 112), v2);
  result = (*(v3 + 24))(v2, v3);
  if (!v1)
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_1((v0 + 112), v5);
    result = (*(v6 + 8))(v5, v6);
    *(v0 + 16) = result & 1;
  }

  return result;
}

uint64_t sub_21B18AEEC()
{
  v1 = v0[7];

  v2 = v0[8];

  sub_21B186488((v0 + 9), &qword_27CD6EC48, &qword_21B214CC0);

  return __swift_destroy_boxed_opaque_existential_1(v0 + 14);
}

uint64_t sub_21B18AF3C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  sub_21B186488((v0 + 9), &qword_27CD6EC48, &qword_21B214CC0);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

void *sub_21B18AFEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC68, &qword_21B211CA8);
  v2 = *v0;
  v3 = sub_21B20D668();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_21B18B148(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_21B18B7E4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_21B18B274(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_21B20DC88();

    sub_21B20D388();
    v24 = sub_21B20DCA8();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_21B20DB28() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_21B18BB58(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_21B20DC88();

            sub_21B20D388();
            v43 = sub_21B20DCA8();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_21B20DB28() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_21B18B920(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x21CEECC50](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_21B1868C8();
    goto LABEL_53;
  }

  result = MEMORY[0x21CEECC50](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_21B18B7E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_21B20DC88();
  sub_21B20D388();
  v7 = sub_21B20DCA8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_21B20DB28() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21B18AFEC();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_21B18BD7C(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_21B18B920(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_21B18BB58(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_21B20DC88();

        sub_21B20D388();
        v20 = sub_21B20DCA8();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_21B20DB28() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_21B18BB58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC68, &qword_21B211CA8);
  result = sub_21B20D688();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_21B20DC88();

    sub_21B20D388();
    result = sub_21B20DCA8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}