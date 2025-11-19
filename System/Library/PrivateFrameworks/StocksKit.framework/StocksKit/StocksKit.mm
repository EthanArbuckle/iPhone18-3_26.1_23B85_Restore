uint64_t sub_26BB22D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StockChart(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DataSource(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26BB22E60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for StockChart(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DataSource(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26BB22F5C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26BB22F94(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26BB22FE4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_26BB2304C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26BB230A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BB230E0()
{
  v1 = *(type metadata accessor for StockService.NetworkSession(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  sub_26BB28EE8();
  v8 = v7;
  if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
  {
    v9 = *(v6 + 8);

    v10 = *(v8 + 48);
    v11 = sub_26BB7BE48();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  v12 = *(v0 + ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 17, v2 | 7);
}

uint64_t sub_26BB23248()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BB23280()
{
  v1 = sub_26BB7BE48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 55) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_26BB23378()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26BB233B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26BB233F8()
{
  v1 = sub_26BB7BE48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_26BB234A0(uint64_t a1, uint64_t a2)
{
  sub_26BB28EE8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BB2350C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_26BB28EE8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_26BB23594(uint64_t result, unsigned int a2)
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

uint64_t sub_26BB235B4()
{
  v1 = sub_26BB7C5C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_26BB2375C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DataSource(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26BB23808(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DataSource(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BB238AC@<X0>(uint64_t *a1@<X8>)
{
  result = ChartRange.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BB238FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_26BB3F0A4(0, qword_28158BEB8, type metadata accessor for DataSource.Logo);
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
      sub_26BB3F0A4(0, &qword_28158C328, MEMORY[0x277CC9260]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26BB23A58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_26BB3F0A4(0, qword_28158BEB8, type metadata accessor for DataSource.Logo);
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
      sub_26BB3F0A4(0, &qword_28158C328, MEMORY[0x277CC9260]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_26BB23BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BB7C3D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BB23C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BB7C3D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BB23CB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DataSource(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26BB23D5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DataSource(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BB23E50(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 120);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[13];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = sub_26BB7BE48();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[22];
    goto LABEL_11;
  }

  v15 = sub_26BB7BFC8();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[23];

  return v16(v17, a2, v15);
}

uint64_t sub_26BB23FF8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 120) = a2;
    return result;
  }

  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[13];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_26BB7BE48();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[22];
    goto LABEL_7;
  }

  v14 = sub_26BB7BFC8();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[23];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_26BB24194()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26BB24244()
{
  v1 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v2 = *(v1 + 80);
  v24 = *(v1 + 64);
  v25 = sub_26BB7BE78();
  v3 = *(v25 - 8);
  v4 = *(v3 + 80);
  v23 = *(v3 + 64);
  sub_26BB57E88(0, &qword_28158B260, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D85670]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v22 = *(v7 + 64);
  v9 = v0 + ((v2 + 16) & ~v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26BB7C3D8();
    (*(*(v10 - 8) + 8))(v0 + ((v2 + 16) & ~v2), v10);
  }

  else
  {
    sub_26BB53CA4();
    v21 = v6;
    v12 = *(v11 + 48);
    v13 = sub_26BB7D178();
    v14 = *(v13 - 8);
    v20 = v12;
    v15 = v9 + v12;
    v6 = v21;
    if (!(*(v14 + 48))(v15, 1, v13))
    {
      (*(v14 + 8))(v9 + v20, v13);
    }
  }

  v16 = v2 | v4 | v8;
  v17 = (((v2 + 16) & ~v2) + v24 + v4) & ~v4;
  v18 = (v17 + v23 + v8) & ~v8;
  (*(v3 + 8))(v0 + v17, v25);
  (*(v7 + 8))(v0 + v18, v6);

  return MEMORY[0x2821FE8E8](v0, v18 + v22, v16 | 7);
}

uint64_t sub_26BB24528()
{
  v1 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v2 = *(v1 + 80);
  v24 = *(v1 + 64);
  v25 = sub_26BB7BE78();
  v3 = *(v25 - 8);
  v4 = *(v3 + 80);
  v23 = *(v3 + 64);
  sub_26BB57304();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v22 = *(v7 + 64);
  v9 = v0 + ((v2 + 16) & ~v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26BB7C3D8();
    (*(*(v10 - 8) + 8))(v0 + ((v2 + 16) & ~v2), v10);
  }

  else
  {
    sub_26BB53CA4();
    v21 = v6;
    v12 = *(v11 + 48);
    v13 = sub_26BB7D178();
    v14 = *(v13 - 8);
    v20 = v12;
    v15 = v9 + v12;
    v6 = v21;
    if (!(*(v14 + 48))(v15, 1, v13))
    {
      (*(v14 + 8))(v9 + v20, v13);
    }
  }

  v16 = v2 | v4 | v8;
  v17 = (((v2 + 16) & ~v2) + v24 + v4) & ~v4;
  v18 = (v17 + v23 + v8) & ~v8;
  (*(v3 + 8))(v0 + v17, v25);
  (*(v7 + 8))(v0 + v18, v6);

  return MEMORY[0x2821FE8E8](v0, v18 + v22, v16 | 7);
}

void sub_26BB247FC()
{
  if (MEMORY[0x277D85020])
  {
    sub_26BB598B0(0, &qword_28043A328, sub_26BB5987C, MEMORY[0x277D85458]);
  }
}

uint64_t sub_26BB24868()
{
  v1 = *(type metadata accessor for CancellableStocksKitServiceRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_26BB7CC78();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v26 = *(v6 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = sub_26BB7BE78();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);
  if (EnumCaseMultiPayload != 1)
  {
    sub_26BB54250();
    v11 = v0 + v3 + *(v10 + 48);
    type metadata accessor for StocksKitServiceRequest(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_26BB7C3D8();
      (*(*(v12 - 8) + 8))(v11, v12);
    }

    else
    {
      sub_26BB53CA4();
      v25 = v4;
      v14 = *(v13 + 48);
      v15 = sub_26BB7D178();
      v16 = *(v15 - 8);
      v24 = v14;
      v17 = v11 + v14;
      v4 = v25;
      if (!(*(v16 + 48))(v17, 1, v15))
      {
        (*(v16 + 8))(v11 + v24, v15);
      }
    }
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + v7 + 56) & ~v7;
  v20 = v0 + v18;
  v21 = *(v0 + v18);

  __swift_destroy_boxed_opaque_existential_1Tm((v20 + 8));
  v22 = *(v20 + 48);

  (*(v6 + 8))(v0 + v19, v5);

  return MEMORY[0x2821FE8E8](v0, v19 + v26, v2 | v7 | 7);
}

uint64_t sub_26BB24B18()
{
  v1 = sub_26BB7CC78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v24 = *(v6 + 64);
  v25 = sub_26BB7BE78();
  v9 = *(v25 - 8);
  v10 = *(v9 + 80);
  v23 = *(v9 + 64);
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v12 = v0 + v8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26BB7C3D8();
    (*(*(v13 - 8) + 8))(v0 + v8, v13);
  }

  else
  {
    sub_26BB53CA4();
    v15 = *(v14 + 48);
    v16 = sub_26BB7D178();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v12 + v15, 1, v16))
    {
      (*(v17 + 8))(v12 + v15, v16);
    }
  }

  v18 = (v8 + v24 + v10) & ~v10;
  v19 = (v23 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v9 + 8))(v0 + v18, v25);
  v20 = *(v0 + v19);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v19 + 8));
  v21 = *(v0 + v19 + 48);

  return MEMORY[0x2821FE8E8](v0, v19 + 56, v3 | v7 | v10 | 7);
}

uint64_t sub_26BB24DD8()
{
  v1 = *(v0 + 16);
  v2 = sub_26BB7CC78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = v5 + *(v3 + 64);
  sub_26BB56CE8();
  v7 = *(type metadata accessor for StocksKitServiceResult() - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8) & ~v8;
  v10 = *(v7 + 64);
  (*(v3 + 8))(v0 + v5, v2);
  if (!swift_getEnumCaseMultiPayload())
  {
    (*(*(v1 - 8) + 8))(v0 + v9, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v4 | v8 | 7);
}

uint64_t sub_26BB24F60()
{
  v1 = sub_26BB7CC78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 2, v3 | 7);
}

uint64_t sub_26BB24FEC()
{
  v1 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v6 = v0[8];

  v7 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26BB7C3D8();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  else
  {
    sub_26BB53CA4();
    v10 = *(v9 + 48);
    v11 = sub_26BB7D178();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(&v7[v10], 1, v11))
    {
      (*(v12 + 8))(&v7[v10], v11);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26BB25180()
{
  sub_26BB3C9C8(v0[2], v0[3]);
  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    sub_26BB3C9C8(v0[6], v1);
  }

  v2 = v0[11];
  if (v2 >> 60 != 15)
  {
    sub_26BB3C9C8(v0[10], v2);
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_26BB251E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_26BB25220(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BB7BF48();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BB2528C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BB7BF48();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BB2538C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_26BB6AC08(0, &qword_28043A128, MEMORY[0x277CC9578]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[15];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[17] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    sub_26BB6AC08(0, &qword_28158C328, MEMORY[0x277CC9260]);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[18];
      goto LABEL_3;
    }

    sub_26BB6AC08(0, &qword_28043A468, MEMORY[0x277CC9A70]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[20];

    return v17(v18, a2, v16);
  }
}

void sub_26BB25560(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_26BB6AC08(0, &qword_28043A128, MEMORY[0x277CC9578]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[15];
LABEL_3:
    v12 = *(v10 + 56);

    v12(a1 + v11, a2, a2, v9);
    return;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[17] + 8) = a2;
    return;
  }

  sub_26BB6AC08(0, &qword_28158C328, MEMORY[0x277CC9260]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[18];
    goto LABEL_3;
  }

  sub_26BB6AC08(0, &qword_28043A468, MEMORY[0x277CC9A70]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = a1 + a4[20];

  v16(v17, a2, a2, v15);
}

uint64_t sub_26BB25728(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_26BB707D4();
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
      v13 = sub_26BB7BFC8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_26BB2584C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_26BB707D4();
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
      v13 = sub_26BB7BFC8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26BB25970(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26BB7BE48();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BB25A1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26BB7BE48();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BB25ACC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DataSource(0);
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
      v13 = sub_26BB7BE48();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_26BB25BF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DataSource(0);
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
      v13 = sub_26BB7BE48();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26BB25D14(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DataSource(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26BB25DC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DataSource(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BB25E64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DataSource(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26BB25F10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DataSource(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BB25FB4()
{
  sub_26BB7B768();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26BB2603C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t type metadata accessor for StockChartResult()
{
  result = qword_280439D48;
  if (!qword_280439D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BB2623C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB262CC()
{
  result = type metadata accessor for StockChart(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DataSource(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BB26360(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BB26380(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BB263C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BB263E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_26BB26428(uint64_t a1, unint64_t *a2)
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

uint64_t sub_26BB26474@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB287D8(0, &qword_28158BA88);
  result = sub_26BB7C8C8();
  if (v7[3])
  {
    v5 = type metadata accessor for FeatureAvailability();
    swift_allocObject();
    v6 = sub_26BB71C44(v7);
    a2[3] = v5;
    result = sub_26BB289F0(&qword_280439E28, type metadata accessor for FeatureAvailability);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_26BB26558(uint64_t a1)
{
  v87 = sub_26BB7CFA8();
  v89 = *(v87 - 8);
  v2 = *(v89 + 64);
  MEMORY[0x28223BE20]();
  v86 = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_26BB7CF88() - 8) + 64);
  MEMORY[0x28223BE20]();
  v84 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_26BB7CCB8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v82 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_26BB7C878() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_26BB282D8(a1, v90);
  v9 = swift_allocObject();
  sub_26BB22F94(v90, v9 + 16);
  v10 = MEMORY[0x277D84F90];
  *&v90[0] = MEMORY[0x277D84F90];
  sub_26BB289F0(&qword_28158C308, MEMORY[0x277D6CA70]);
  v11 = MEMORY[0x277D6CA70];
  sub_26BB28900(0, &qword_28158BBB0, MEMORY[0x277D6CA70]);
  sub_26BB28954(&qword_28158BBA8, &qword_28158BBB0, v11);
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158B9E0, &qword_28158BA88);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v88 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v90);
  v15 = swift_allocObject();
  sub_26BB22F94(v90, v15 + 16);
  *&v90[0] = v10;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9E8, &qword_28158BA90);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v85 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v90);
  v19 = swift_allocObject();
  sub_26BB22F94(v90, v19 + 16);
  *&v90[0] = v10;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158BA18, &unk_28158BAD0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v83 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v90);
  v23 = swift_allocObject();
  sub_26BB22F94(v90, v23 + 16);
  *&v90[0] = v10;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9F8, &qword_28158BAA0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v81 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v90);
  v27 = swift_allocObject();
  sub_26BB22F94(v90, v27 + 16);
  *&v90[0] = v10;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158BA28, &unk_28158BAE0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v80 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v90);
  v31 = swift_allocObject();
  sub_26BB22F94(v90, v31 + 16);
  *&v90[0] = v10;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158BA08, &qword_28158BAC0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v79 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v90);
  v35 = swift_allocObject();
  sub_26BB22F94(v90, v35 + 16);
  *&v90[0] = v10;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158BA38, &qword_28158BAF0);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v78 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v90);
  v39 = swift_allocObject();
  sub_26BB22F94(v90, v39 + 16);
  *&v90[0] = v10;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158B9B8, &qword_28158B450);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v77 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v90);
  v43 = swift_allocObject();
  sub_26BB22F94(v90, v43 + 16);
  *&v90[0] = v10;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9C0, qword_28158B458);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v76 = sub_26BB7C9F8();
  v47 = type metadata accessor for StockService(0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  *(v50 + 5) = [objc_allocWithZone(sub_26BB7C9D8()) init];
  v51 = sub_26BB288B4();
  v74 = "com.apple.stocks.watchapp";
  v75 = v51;
  sub_26BB7CCA8();
  *&v90[0] = v10;
  v73[2] = sub_26BB289F0(&unk_28158BB70, MEMORY[0x277D85230]);
  v52 = MEMORY[0x277D85230];
  sub_26BB28900(0, &unk_28158BB98, MEMORY[0x277D85230]);
  v73[1] = v53;
  v73[3] = sub_26BB28954(&qword_28158BB90, &unk_28158BB98, v52);
  sub_26BB7D028();
  v54 = *MEMORY[0x277D85260];
  v55 = *(v89 + 104);
  v89 += 104;
  v57 = v86;
  v56 = v87;
  v55(v86, v54, v87);
  *(v50 + 6) = sub_26BB7CFD8();
  v74 = ".stockskit.fetch";
  sub_26BB7CC98();
  *&v90[0] = MEMORY[0x277D84F90];
  sub_26BB7D028();
  v55(v57, v54, v56);
  *(v50 + 7) = sub_26BB7CFD8();
  *(v50 + 17) = 0;
  v58 = OBJC_IVAR____TtC9StocksKit12StockService____lazy_storage___networkProxy;
  v59 = sub_26BB7C888();
  (*(*(v59 - 8) + 56))(&v50[v58], 1, 1, v59);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v60 = sub_26BB7CB88();
  __swift_project_value_buffer(v60, qword_28158F140);
  v61 = sub_26BB7CB68();
  v62 = sub_26BB7CF78();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&v90[0] = v64;
    *v63 = 136315138;
    *(v63 + 4) = sub_26BB38238(0xD000000000000015, 0x800000026BB82E30, v90);
    _os_log_impl(&dword_26BB21000, v61, v62, "Creating stocks service with configuration: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x26D68EA90](v64, -1, -1);
    MEMORY[0x26D68EA90](v63, -1, -1);
  }

  *(v50 + 2) = 0;
  *(v50 + 3) = 0;
  *(v50 + 4) = 0;
  v65 = v85;
  *(v50 + 8) = v88;
  *(v50 + 9) = v65;
  v67 = v80;
  v66 = v81;
  *(v50 + 10) = v83;
  *(v50 + 11) = v66;
  v69 = v78;
  v68 = v79;
  *(v50 + 12) = v67;
  *(v50 + 13) = v68;
  v70 = v76;
  v71 = v77;
  *(v50 + 14) = v69;
  *(v50 + 15) = v71;
  *(v50 + 16) = v70;
  return v50;
}

uint64_t sub_26BB2713C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB287D8(0, &qword_28158BA90);
  sub_26BB7C3B8();
  sub_26BB7C8A8();

  if (v6)
  {
    return sub_26BB22F94(&v5, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BB271F0@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(_BYTE *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB287D8(0, a2);
  result = sub_26BB7C8C8();
  if (v10)
  {
    return a3(v9, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BB27294@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB287D8(0, &qword_28158BAF0);
  result = sub_26BB7C8C8();
  if (v5)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BB27318(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockService(0);
  result = sub_26BB7C8B8();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BB2736C@<X0>(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    sub_26BB7CD48();
  }

  sub_26BB2746C();

  sub_26BB7C818();
  sub_26BB7C7F8();
  sub_26BB7C7A8();
  v4 = sub_26BB7C808();

  *a1 = v4 & 1;
  return result;
}

uint64_t sub_26BB2746C()
{

  v0 = sub_26BB7CDA8();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_26BB7CDA8();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_26BB7D378();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_26BB7CDA8();
      v3 = v5;
    }

    while (v5);
  }

  sub_26BB7CDA8();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_26BB275C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_26BB7C8A8();
  if (v18 == 2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v18)
  {
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v6 = sub_26BB7CB88();
    __swift_project_value_buffer(v6, qword_28158F140);
    v7 = sub_26BB7CB68();
    v8 = sub_26BB7CF78();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26BB21000, v7, v8, "Registering StocksKitService: XPC Service", v9, 2u);
      MEMORY[0x26D68EA90](v9, -1, -1);
    }

    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = type metadata accessor for StocksKitServiceProxy();
    result = sub_26BB7C8B8();
    if (result)
    {
      v12 = &off_287C84E10;
LABEL_15:
      a2[3] = v11;
      a2[4] = v12;
      *a2 = result;
      return result;
    }

    goto LABEL_17;
  }

  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v13 = sub_26BB7CB88();
  __swift_project_value_buffer(v13, qword_28158F140);
  v14 = sub_26BB7CB68();
  v15 = sub_26BB7CF78();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26BB21000, v14, v15, "Registering StocksKitService: In-Process", v16, 2u);
    MEMORY[0x26D68EA90](v16, -1, -1);
  }

  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = type metadata accessor for InProcessStockService();
  result = sub_26BB7C8B8();
  if (result)
  {
    v12 = &protocol witness table for InProcessStockService;
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26BB27844(uint64_t a1)
{
  v2 = *(*(sub_26BB7C878() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_26BB282D8(a1, v27);
  v3 = swift_allocObject();
  sub_26BB22F94(v27, v3 + 16);
  v4 = MEMORY[0x277D84F90];
  *&v27[0] = MEMORY[0x277D84F90];
  sub_26BB289F0(&qword_28158C308, MEMORY[0x277D6CA70]);
  v5 = MEMORY[0x277D6CA70];
  sub_26BB28900(0, &qword_28158BBB0, MEMORY[0x277D6CA70]);
  sub_26BB28954(&qword_28158BBA8, &qword_28158BBB0, v5);
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158B9E0, &qword_28158BA88);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v27);
  v10 = swift_allocObject();
  sub_26BB22F94(v27, v10 + 16);
  *&v27[0] = v4;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9D0, &unk_28158BA78);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_26BB7C9F8();
  sub_26BB282D8(a1, v27);
  v15 = swift_allocObject();
  sub_26BB22F94(v27, v15 + 16);
  *&v27[0] = v4;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158BA10, &qword_28158BAC8);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_26BB7C9F8();
  type metadata accessor for InProcessStockService();
  v20 = swift_allocObject();
  sub_26BB2845C();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_26BB7CAF8();
  sub_26BB285E4();
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = v24;
  v20[2] = v9;
  v20[3] = v14;
  v20[4] = v19;
  v20[5] = v25;
  return v20;
}

uint64_t sub_26BB27BC8()
{
  type metadata accessor for StocksKitServiceProxy();

  return swift_allocObject();
}

uint64_t sub_26BB27BFC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for IdentificationService();
  v3 = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  result = sub_26BB289F0(&qword_280439E20, type metadata accessor for IdentificationService);
  a1[4] = result;
  *a1 = v3;
  return result;
}

id sub_26BB27C84()
{
  v0 = objc_allocWithZone(type metadata accessor for NoopAppActivityMonitor());

  return [v0 init];
}

uint64_t sub_26BB27D0C()
{
  v0 = sub_26BB7CA18();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7C918();
  sub_26BB287D8(0, &qword_28158BAB8);
  sub_26BB7C988();

  v5 = *MEMORY[0x277D6CF10];
  v6 = v1[13];
  v6(v4, v5, v0);
  sub_26BB7C858();

  v7 = v1[1];
  v7(v4, v0);
  sub_26BB7C918();
  type metadata accessor for StockService(0);
  sub_26BB7C978();

  sub_26BB7C918();
  sub_26BB7C978();

  v6(v4, v5, v0);
  sub_26BB7C858();

  v7(v4, v0);
  sub_26BB7C918();
  sub_26BB7C988();

  sub_26BB7C918();
  sub_26BB287D8(0, &qword_28158B450);
  sub_26BB7C988();

  v6(v4, v5, v0);
  sub_26BB7C858();

  v7(v4, v0);
  sub_26BB7C918();
  type metadata accessor for InProcessStockService();
  sub_26BB7C978();

  sub_26BB7C918();
  type metadata accessor for StocksKitServiceProxy();
  sub_26BB7C978();

  v6(v4, v5, v0);
  sub_26BB7C858();

  v7(v4, v0);
  sub_26BB7C918();
  sub_26BB287D8(0, &qword_28158BA98);
  sub_26BB7C988();

  v6(v4, v5, v0);
  sub_26BB7C858();

  v7(v4, v0);
  sub_26BB7C918();
  sub_26BB28274();
  sub_26BB7C978();

  sub_26BB7C918();
  sub_26BB287D8(0, qword_28158B458);
  sub_26BB7C988();
}

unint64_t sub_26BB28274()
{
  result = qword_28158B240;
  if (!qword_28158B240)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28158B240);
  }

  return result;
}

uint64_t sub_26BB282D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_26BB2837C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_26BB287D8(255, a3);
    v4 = sub_26BB7CA08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26BB2845C()
{
  if (!qword_28158B9A0)
  {
    sub_26BB284C8();
    sub_26BB28518();
    v0 = sub_26BB7CB08();
    if (!v1)
    {
      atomic_store(v0, &qword_28158B9A0);
    }
  }
}

void sub_26BB284C8()
{
  if (!qword_28158B5C8)
  {
    v0 = sub_26BB7CFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_28158B5C8);
    }
  }
}

unint64_t sub_26BB28518()
{
  result = qword_28158B5C0;
  if (!qword_28158B5C0)
  {
    sub_26BB284C8();
    sub_26BB28590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B5C0);
  }

  return result;
}

unint64_t sub_26BB28590()
{
  result = qword_28158B5D8[0];
  if (!qword_28158B5D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28158B5D8);
  }

  return result;
}

void sub_26BB285E4()
{
  if (!qword_28158B230)
  {
    sub_26BB2845C();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_26BB7D0F8();
    if (!v1)
    {
      atomic_store(v0, &qword_28158B230);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26BB287D8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26BB288B4()
{
  result = qword_28158BB68;
  if (!qword_28158BB68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28158BB68);
  }

  return result;
}

void sub_26BB28900(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BB7CE38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BB28954(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_26BB28900(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26BB289F0(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_26BB28A40()
{
  if (qword_28158B8B8 != -1)
  {
    swift_once();
  }

  sub_26BB3CB34(v1);

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  type metadata accessor for StockService(0);
  result = sub_26BB7C898();
  if (result)
  {
    off_28158B718 = result;
    return __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static StockService.shared.getter()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }
}

unint64_t StockService.Configuration.description.getter()
{
  v1 = 0xD000000000000015;
  v2 = v0[1];
  if (v2)
  {
    v3 = v0[2];
    v4 = *v0;
    sub_26BB7D098();
    MEMORY[0x26D68DCA0](0xD000000000000019, 0x800000026BB82E50);
    MEMORY[0x26D68DCA0](v4, v2);
    MEMORY[0x26D68DCA0](46, 0xE100000000000000);
    sub_26BB7CF08();
    return 0;
  }

  return v1;
}

unint64_t StockService.NetworkSession.description.getter()
{
  v1 = v0;
  v2 = 0xD00000000000001ALL;
  v3 = sub_26BB7BE48();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(type metadata accessor for StockService.NetworkSession(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB3B49C(v1, v10, type metadata accessor for StockService.NetworkSession);
  sub_26BB28EE8();
  v12 = v11;
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    v13 = *v10;
    v14 = *(v10 + 1);
    v15 = *&v10[*(v12 + 64)];
    (*(v4 + 32))(v7, &v10[*(v12 + 48)], v3);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_26BB7D098();
    MEMORY[0x26D68DCA0](0xD00000000000001BLL, 0x800000026BB82EA0);
    MEMORY[0x26D68DCA0](v13, v14);

    MEMORY[0x26D68DCA0](46, 0xE100000000000000);
    sub_26BB7CF08();
    MEMORY[0x26D68DCA0](46, 0xE100000000000000);
    v16 = sub_26BB7BE28();
    MEMORY[0x26D68DCA0](v16);

    v2 = v18[0];
    (*(v4 + 8))(v7, v3);
  }

  return v2;
}

void sub_26BB28EE8()
{
  if (!qword_28158B278)
  {
    sub_26BB7BE48();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28158B278);
    }
  }
}

uint64_t StockService.CachePolicy.description.getter()
{
  v1 = sub_26BB7BFA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26BB7D4C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26BB7D4A8();
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26BB7D538();
  v56 = *(v15 - 8);
  v57 = v15;
  v16 = *(v56 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26BB7D548();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  v27 = *v0;
  v26 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    v51 = &v45 - v22;
    v52 = v24;
    v48 = v25;
    v53 = v23;
    v54 = v27;
    v55 = v26;
    sub_26BB7D098();

    v61 = 0xD000000000000011;
    v62 = 0x800000026BB82F00;
    sub_26BB390BC(0, &qword_280439E30, MEMORY[0x277CC9FC8], MEMORY[0x277D84560]);
    v34 = sub_26BB7D508();
    v47 = v11;
    v35 = *(v34 - 8);
    v50 = v1;
    v36 = *(v35 + 72);
    v37 = *(v35 + 80);
    v46 = v6;
    v49 = v2;
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_26BB7DFD0;
    sub_26BB7D4D8();
    sub_26BB7D4E8();
    sub_26BB7D4F8();
    sub_26BB38A34(v38);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_26BB7D528();
    sub_26BB7D498();
    sub_26BB7D4B8();
    v39 = v48;
    sub_26BB7BD78();

    (*(v7 + 8))(v10, v46);
    (*(v58 + 8))(v14, v47);
    (*(v56 + 8))(v18, v57);
    sub_26BB7BE98();
    v33 = v51;
    v32 = v39;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    v51 = &v45 - v22;
    v52 = v24;
    v48 = v25;
    v53 = v23;
    v54 = v27;
    v55 = v26;
    sub_26BB7D098();

    v61 = 0xD000000000000012;
    v62 = 0x800000026BB82EE0;
    sub_26BB390BC(0, &qword_280439E30, MEMORY[0x277CC9FC8], MEMORY[0x277D84560]);
    v28 = sub_26BB7D508();
    v49 = v2;
    v50 = v1;
    v29 = *(*(v28 - 8) + 72);
    v30 = *(*(v28 - 8) + 80);
    v46 = v6;
    v47 = v11;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_26BB7DFD0;
    sub_26BB7D4D8();
    sub_26BB7D4E8();
    sub_26BB7D4F8();
    sub_26BB38A34(v31);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_26BB7D528();
    sub_26BB7D498();
    sub_26BB7D4B8();
    v32 = v48;
    sub_26BB7BD78();

    (*(v7 + 8))(v10, v46);
    (*(v58 + 8))(v14, v47);
    (*(v56 + 8))(v18, v57);
    sub_26BB7BE98();
    v33 = v51;
LABEL_5:
    sub_26BB7D518();
    (*(v49 + 8))(v5, v50);
    v40 = *(v52 + 8);
    v41 = v32;
    v42 = v53;
    v40(v41, v53);
    sub_26BB3BE9C(&qword_280439E38, MEMORY[0x277CC9FF0]);
    sub_26BB7D568();
    v40(v33, v42);
    MEMORY[0x26D68DCA0](v59, v60);

    MEMORY[0x26D68DCA0](41, 0xE100000000000000);
    return v61;
  }

  if (v27 > 1)
  {
    if (v27 ^ 2 | v26)
    {
      v44 = 0x726566657270;
    }

    else
    {
      v44 = 0x65726F6E6769;
    }

    return v44 & 0xFFFFFFFFFFFFLL | 0x6143000000000000;
  }

  else if (v27 | v26)
  {
    return 0x6E4F646568636163;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_26BB297D0@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, double *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v7 = *v3;
    v6 = *(v3 + 8);
    if (!*(v3 + 16))
    {
      v9 = *v3;
      *a3 = sub_26BB7D578();
      v5 = MEMORY[0x277D6CA40];
      goto LABEL_8;
    }

    if (*(v3 + 16) == 1)
    {
      v8 = *v3;
      *a3 = sub_26BB7D578();
    }

    else
    {
      if (v7 > 1)
      {
        if (v7 ^ 2 | v6)
        {
          v17 = a1;
          v13 = sub_26BB7C868();
          v12 = *(*(v13 - 8) + 104);
          if (v17 == 4)
          {
            v18 = MEMORY[0x277D6CA38];
          }

          else
          {
            v18 = MEMORY[0x277D6CA28];
          }

          v15 = *v18;
          v14 = a3;
          goto LABEL_9;
        }

        goto LABEL_2;
      }

      if (v7 | v6)
      {
        v5 = MEMORY[0x277D6CA30];
        goto LABEL_8;
      }

      if (a1 >= 3u)
      {
        if (a1 == 3)
        {
          v5 = MEMORY[0x277D6CA28];
        }

        else
        {
          v5 = MEMORY[0x277D6CA38];
        }

        goto LABEL_8;
      }

      *a3 = 60.0;
    }

    v5 = MEMORY[0x277D6CA48];
    goto LABEL_8;
  }

LABEL_2:
  v5 = MEMORY[0x277D6CA20];
LABEL_8:
  v10 = *v5;
  v11 = sub_26BB7C868();
  v12 = *(*(v11 - 8) + 104);
  v13 = v11;
  v14 = a3;
  v15 = v10;
LABEL_9:

  return v12(v14, v15, v13);
}

uint64_t sub_26BB29964(uint64_t a1)
{
  v2 = sub_26BB38E9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB299A0(uint64_t a1)
{
  v2 = sub_26BB38E9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB299F0(uint64_t a1)
{
  v2 = sub_26BB38E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB29A2C(uint64_t a1)
{
  v2 = sub_26BB38E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB29A68()
{
  v1 = *v0;
  sub_26BB7D418();
  MEMORY[0x26D68E330](v1);
  return sub_26BB7D458();
}

uint64_t sub_26BB29AB0()
{
  v1 = *v0;
  sub_26BB7D418();
  MEMORY[0x26D68E330](v1);
  return sub_26BB7D458();
}

uint64_t sub_26BB29AF4()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x614365726F6E6769;
  v4 = 0x6143726566657270;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E4F646568636163;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_26BB29BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB394BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BB29C04(uint64_t a1)
{
  v2 = sub_26BB38F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB29C40(uint64_t a1)
{
  v2 = sub_26BB38F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB29C7C(uint64_t a1)
{
  v2 = sub_26BB38EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB29CB8(uint64_t a1)
{
  v2 = sub_26BB38EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB29CF4(uint64_t a1)
{
  v2 = sub_26BB38DF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB29D30(uint64_t a1)
{
  v2 = sub_26BB38DF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB29D6C(uint64_t a1)
{
  v2 = sub_26BB38DA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB29DA8(uint64_t a1)
{
  v2 = sub_26BB38DA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB29DE4()
{
  sub_26BB7D418();
  MEMORY[0x26D68E330](0);
  return sub_26BB7D458();
}

uint64_t sub_26BB29E28()
{
  sub_26BB7D418();
  MEMORY[0x26D68E330](0);
  return sub_26BB7D458();
}

uint64_t sub_26BB29E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_26BB29EE8(uint64_t a1)
{
  v2 = sub_26BB38D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB29F24(uint64_t a1)
{
  v2 = sub_26BB38D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StockService.CachePolicy.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_26BB38F98(0, &qword_28158B118, sub_26BB38D4C, &type metadata for StockService.CachePolicy.PreferCacheMaxAgeCodingKeys, MEMORY[0x277D84538]);
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v59 = &v45 - v6;
  sub_26BB38F98(0, &qword_28158B120, sub_26BB38DA0, &type metadata for StockService.CachePolicy.PreferCacheCodingKeys, v3);
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v53 = &v45 - v9;
  sub_26BB38F98(0, &qword_28158B128, sub_26BB38DF4, &type metadata for StockService.CachePolicy.IgnoreCacheCodingKeys, v3);
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v50 = &v45 - v12;
  sub_26BB38F98(0, &qword_28158B0F8, sub_26BB38E48, &type metadata for StockService.CachePolicy.CachedOnlyMaxAgeCodingKeys, v3);
  v58 = v13;
  v56 = *(v13 - 8);
  v14 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v57 = &v45 - v15;
  sub_26BB38F98(0, &qword_28158B100, sub_26BB38E9C, &type metadata for StockService.CachePolicy.CachedOnlyCodingKeys, v3);
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v47 = &v45 - v18;
  sub_26BB38F98(0, &qword_28158B108, sub_26BB38EF0, &type metadata for StockService.CachePolicy.DefaultCodingKeys, v3);
  v45 = *(v19 - 8);
  v46 = v19;
  v20 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = &v45 - v21;
  sub_26BB38F98(0, &qword_28158B110, sub_26BB38F44, &type metadata for StockService.CachePolicy.CodingKeys, v3);
  v24 = *(v23 - 8);
  v62 = v23;
  v63 = v24;
  v25 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v26 = *v1;
  v27 = *(v1 + 8);
  v28 = *(v1 + 16);
  v29 = a1[3];
  v30 = a1[4];
  v31 = a1;
  v33 = &v45 - v32;
  __swift_project_boxed_opaque_existential_1(v31, v29);
  sub_26BB38F44();
  sub_26BB7D488();
  if (!v28)
  {
    v37 = v56;
    LOBYTE(v64) = 2;
    sub_26BB38E48();
    v38 = v57;
    v35 = v62;
    sub_26BB7D2B8();
    v64 = v26;
    v65 = v27;
    v39 = v58;
    sub_26BB7D328();
    (*(v37 + 8))(v38, v39);
    return (*(v63 + 8))(v33, v35);
  }

  if (v28 == 1)
  {
    LOBYTE(v64) = 5;
    sub_26BB38D4C();
    v34 = v59;
    v35 = v62;
    sub_26BB7D2B8();
    v64 = v26;
    v65 = v27;
    v36 = v61;
    sub_26BB7D328();
    (*(v60 + 8))(v34, v36);
    return (*(v63 + 8))(v33, v35);
  }

  if (v26 > 1)
  {
    if (v26 ^ 2 | v27)
    {
      LOBYTE(v64) = 4;
      sub_26BB38DA0();
      v42 = v53;
      v41 = v62;
      sub_26BB7D2B8();
      v44 = v54;
      v43 = v55;
    }

    else
    {
      LOBYTE(v64) = 3;
      sub_26BB38DF4();
      v42 = v50;
      v41 = v62;
      sub_26BB7D2B8();
      v44 = v51;
      v43 = v52;
    }

    goto LABEL_13;
  }

  if (v26 | v27)
  {
    LOBYTE(v64) = 1;
    sub_26BB38E9C();
    v42 = v47;
    v41 = v62;
    sub_26BB7D2B8();
    v44 = v48;
    v43 = v49;
LABEL_13:
    (*(v44 + 8))(v42, v43);
    return (*(v63 + 8))(v33, v41);
  }

  LOBYTE(v64) = 0;
  sub_26BB38EF0();
  v41 = v62;
  sub_26BB7D2B8();
  (*(v45 + 8))(v22, v46);
  return (*(v63 + 8))(v33, v41);
}

uint64_t StockService.CachePolicy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_26BB38F98(0, &qword_28158B198, sub_26BB38D4C, &type metadata for StockService.CachePolicy.PreferCacheMaxAgeCodingKeys, MEMORY[0x277D844C8]);
  v5 = *(v4 - 8);
  v68 = v4;
  v69 = v5;
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v74 = &v57 - v7;
  sub_26BB38F98(0, &qword_28158B1A0, sub_26BB38DA0, &type metadata for StockService.CachePolicy.PreferCacheCodingKeys, v3);
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v71 = &v57 - v10;
  sub_26BB38F98(0, &qword_28158B1A8, sub_26BB38DF4, &type metadata for StockService.CachePolicy.IgnoreCacheCodingKeys, v3);
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v73 = &v57 - v13;
  sub_26BB38F98(0, &qword_28158B178, sub_26BB38E48, &type metadata for StockService.CachePolicy.CachedOnlyMaxAgeCodingKeys, v3);
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v70 = &v57 - v16;
  sub_26BB38F98(0, &qword_28158B180, sub_26BB38E9C, &type metadata for StockService.CachePolicy.CachedOnlyCodingKeys, v3);
  v60 = *(v17 - 8);
  v61 = v17;
  v18 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v72 = &v57 - v19;
  sub_26BB38F98(0, &qword_28158B188, sub_26BB38EF0, &type metadata for StockService.CachePolicy.DefaultCodingKeys, v3);
  v21 = v20;
  v59 = *(v20 - 8);
  v22 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v24 = &v57 - v23;
  sub_26BB38F98(0, &qword_28158B190, sub_26BB38F44, &type metadata for StockService.CachePolicy.CodingKeys, v3);
  v26 = v25;
  v27 = *(v25 - 8);
  v28 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v30 = &v57 - v29;
  v31 = a1;
  v32 = a1[3];
  v33 = v31[4];
  v78 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_26BB38F44();
  v34 = v76;
  sub_26BB7D478();
  if (!v34)
  {
    v58 = v21;
    v36 = v72;
    v35 = v73;
    v76 = v27;
    v38 = v74;
    v37 = v75;
    v39 = sub_26BB7D298();
    if (*(v39 + 16) != 1 || (v40 = *(v39 + 32), v40 == 6))
    {
      v45 = sub_26BB7D0E8();
      swift_allocError();
      v46 = v30;
      v47 = v26;
      v49 = v48;
      sub_26BB39000();
      v51 = *(v50 + 48);
      *v49 = &type metadata for StockService.CachePolicy;
      sub_26BB7D218();
      sub_26BB7D0C8();
      (*(*(v45 - 8) + 104))(v49, *MEMORY[0x277D84160], v45);
      swift_willThrow();
      (*(v76 + 8))(v46, v47);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v39 + 32) > 2u)
      {
        if (v40 == 3)
        {
          LOBYTE(v77) = 3;
          sub_26BB38DF4();
          sub_26BB7D208();
          (*(v62 + 8))(v35, v63);
          (*(v76 + 8))(v30, v26);
          swift_unknownObjectRelease();
          v43 = xmmword_26BB7DFF0;
          v44 = 2;
        }

        else
        {
          v73 = v39;
          if (v40 == 4)
          {
            LOBYTE(v77) = 4;
            sub_26BB38DA0();
            v53 = v71;
            sub_26BB7D208();
            (*(v66 + 8))(v53, v67);
            (*(v76 + 8))(v30, v26);
            swift_unknownObjectRelease();
            v43 = xmmword_26BB7DFE0;
            v44 = 2;
          }

          else
          {
            LOBYTE(v77) = 5;
            sub_26BB38D4C();
            sub_26BB7D208();
            v56 = v68;
            sub_26BB7D288();
            (*(v69 + 8))(v38, v56);
            (*(v76 + 8))(v30, v26);
            swift_unknownObjectRelease();
            v43 = v77;
            v44 = 1;
          }
        }
      }

      else if (*(v39 + 32))
      {
        if (v40 == 1)
        {
          LOBYTE(v77) = 1;
          sub_26BB38E9C();
          v41 = v36;
          sub_26BB7D208();
          v42 = v76;
          (*(v60 + 8))(v41, v61);
          (*(v42 + 8))(v30, v26);
          swift_unknownObjectRelease();
          v43 = xmmword_26BB7E000;
          v44 = 2;
        }

        else
        {
          LOBYTE(v77) = 2;
          sub_26BB38E48();
          v54 = v70;
          sub_26BB7D208();
          v55 = v65;
          sub_26BB7D288();
          (*(v64 + 8))(v54, v55);
          (*(v76 + 8))(v30, v26);
          swift_unknownObjectRelease();
          v44 = 0;
          v43 = v77;
        }
      }

      else
      {
        LOBYTE(v77) = 0;
        sub_26BB38EF0();
        sub_26BB7D208();
        (*(v59 + 8))(v24, v58);
        (*(v76 + 8))(v30, v26);
        swift_unknownObjectRelease();
        v43 = 0uLL;
        v44 = 2;
      }

      *v37 = v43;
      *(v37 + 16) = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v78);
}

uint64_t sub_26BB2B154()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_26BB2B1CC()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    v4 = sub_26BB7CD38();
    [v3 setName_];

    [v3 setMaxConcurrentOperationCount_];
    v5 = *(v0 + 136);
    *(v0 + 136) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t StockService.__allocating_init(configuration:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  StockService.init(configuration:)(a1);
  return v5;
}

void *StockService.init(configuration:)(uint64_t *a1)
{
  v2 = v1;
  v77 = sub_26BB7C878();
  v4 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20]();
  v78 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_26BB7CFA8();
  v6 = *(v79 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v73 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_26BB7CF88() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = *(*(sub_26BB7CCB8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = *a1;
  v74 = a1[1];
  v75 = a1[2];
  v76 = v11;
  v1[5] = [objc_allocWithZone(sub_26BB7C9D8()) init];
  v71[1] = sub_26BB3B454(0, &qword_28158BB68, 0x277D85C78);
  v72 = "com.apple.stocks.watchapp";
  sub_26BB7CCA8();
  v81[0] = MEMORY[0x277D84F90];
  v71[4] = sub_26BB3BE9C(&unk_28158BB70, MEMORY[0x277D85230]);
  v12 = MEMORY[0x277D85230];
  sub_26BB390BC(0, &unk_28158BB98, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  v71[3] = v13;
  sub_26BB3BB84(&qword_28158BB90, &unk_28158BB98, v12);
  sub_26BB7D028();
  v14 = *MEMORY[0x277D85260];
  v15 = v6 + 104;
  v16 = *(v6 + 104);
  v71[2] = v15;
  v17 = v73;
  v16(v73, v14, v79);
  v1[6] = sub_26BB7CFD8();
  v72 = ".stockskit.fetch";
  sub_26BB7CC98();
  v81[0] = MEMORY[0x277D84F90];
  sub_26BB7D028();
  v16(v17, v14, v79);
  v1[7] = sub_26BB7CFD8();
  v1[17] = 0;
  v18 = OBJC_IVAR____TtC9StocksKit12StockService____lazy_storage___networkProxy;
  v19 = sub_26BB7C888();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v20 = sub_26BB7CB88();
  __swift_project_value_buffer(v20, qword_28158F140);
  v21 = v74;

  v22 = sub_26BB7CB68();
  v23 = sub_26BB7CF78();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v80[0] = v25;
    *v24 = 136315138;
    v27 = v75;
    v26 = v76;
    v81[0] = v76;
    v81[1] = v21;
    v81[2] = v75;
    v28 = StockService.Configuration.description.getter();
    v30 = sub_26BB38238(v28, v29, v80);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_26BB21000, v22, v23, "Creating stocks service with configuration: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x26D68EA90](v25, -1, -1);
    MEMORY[0x26D68EA90](v24, -1, -1);
  }

  else
  {

    v27 = v75;
    v26 = v76;
  }

  v1[2] = v26;
  v1[3] = v21;
  v1[4] = v27;
  if (qword_28158B8B8 != -1)
  {
    swift_once();
  }

  sub_26BB3CB34(v81);
  sub_26BB282D8(v81, v80);
  v31 = swift_allocObject();
  sub_26BB22F94(v80, v31 + 16);
  v32 = MEMORY[0x277D84F90];
  *&v80[0] = MEMORY[0x277D84F90];
  sub_26BB3BE9C(&qword_28158C308, MEMORY[0x277D6CA70]);
  v33 = MEMORY[0x277D6CA70];
  sub_26BB390BC(0, &qword_28158BBB0, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
  sub_26BB3BB84(&qword_28158BBA8, &qword_28158BBB0, v33);
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158B9E0, &qword_28158BA88);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v2[8] = sub_26BB7C9F8();
  sub_26BB282D8(v81, v80);
  v37 = swift_allocObject();
  sub_26BB22F94(v80, v37 + 16);
  *&v80[0] = v32;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9E8, &qword_28158BA90);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v2[9] = sub_26BB7C9F8();
  sub_26BB282D8(v81, v80);
  v41 = swift_allocObject();
  sub_26BB22F94(v80, v41 + 16);
  *&v80[0] = v32;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158BA18, &unk_28158BAD0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v2[10] = sub_26BB7C9F8();
  sub_26BB282D8(v81, v80);
  v45 = swift_allocObject();
  sub_26BB22F94(v80, v45 + 16);
  *&v80[0] = v32;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9F8, &qword_28158BAA0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v2[11] = sub_26BB7C9F8();
  sub_26BB282D8(v81, v80);
  v49 = swift_allocObject();
  sub_26BB22F94(v80, v49 + 16);
  *&v80[0] = v32;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158BA28, &unk_28158BAE0);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v2[12] = sub_26BB7C9F8();
  sub_26BB282D8(v81, v80);
  v53 = swift_allocObject();
  sub_26BB22F94(v80, v53 + 16);
  *&v80[0] = v32;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158BA08, &qword_28158BAC0);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v2[13] = sub_26BB7C9F8();
  sub_26BB282D8(v81, v80);
  v57 = swift_allocObject();
  sub_26BB22F94(v80, v57 + 16);
  *&v80[0] = v32;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158BA38, &qword_28158BAF0);
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  v2[14] = sub_26BB7C9F8();
  sub_26BB282D8(v81, v80);
  v61 = swift_allocObject();
  sub_26BB22F94(v80, v61 + 16);
  *&v80[0] = v32;
  sub_26BB7D028();
  sub_26BB2837C(0, &qword_28158B9B8, &qword_28158B450);
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  v2[15] = sub_26BB7C9F8();
  sub_26BB282D8(v81, v80);
  v65 = swift_allocObject();
  sub_26BB22F94(v80, v65 + 16);
  *&v80[0] = v32;
  sub_26BB7D028();
  sub_26BB2837C(0, &unk_28158B9C0, qword_28158B458);
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  v69 = sub_26BB7C9F8();
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  v2[16] = v69;
  return v2;
}

uint64_t sub_26BB2BF1C@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(_BYTE *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB287D8(0, a2);
  result = sub_26BB7C8C8();
  if (v10)
  {
    return a3(v9, a4);
  }

  __break(1u);
  return result;
}

uint64_t StockService.fetch(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BB2BFE4, 0, 0);
}

uint64_t sub_26BB2BFE4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = 0x4000000000000000;
  *(v1 + 24) = vextq_s8(v2, v2, 8uLL);
  v3 = *(MEMORY[0x277D6CB70] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_26BB2C0D0;
  v5 = *(v0 + 16);

  return MEMORY[0x2821D1B50](v5, "StockService.fetchLogo", 22, 2, &unk_26BB7E060, v1, &type metadata for DataSource.DownloadedLogo);
}

uint64_t sub_26BB2C0D0()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB2C20C, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26BB2C20C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t StockService.fetch(_:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[3] = a2;
  v4[4] = v3;
  v4[2] = a1;
  v4[5] = *a3;
  return MEMORY[0x2822009F8](sub_26BB2C29C, 0, 0);
}

uint64_t sub_26BB2C29C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = vextq_s8(v3, v3, 8uLL);
  v4 = *(MEMORY[0x277D6CB70] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_26BB2C388;
  v6 = *(v0 + 16);

  return MEMORY[0x2821D1B50](v6, "StockService.fetchLogo", 22, 2, &unk_26BB7E070, v2, &type metadata for DataSource.DownloadedLogo);
}

uint64_t sub_26BB2C388()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB2C4C4, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26BB2C4C4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_26BB2C528(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 272) = a2;
  *(v4 + 280) = a3;
  *(v4 + 264) = a4;
  *(v4 + 256) = a1;
  return MEMORY[0x2822009F8](sub_26BB2C550, 0, 0);
}

uint64_t sub_26BB2C550()
{
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v1 = sub_26BB7CB88();
  v0[36] = __swift_project_value_buffer(v1, qword_28158F140);
  sub_26BB2CB40();
  sub_26BB2CB40();
  v2 = sub_26BB7CB68();
  v3 = sub_26BB7CF78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[33];
    v5 = swift_slowAlloc();
    *v5 = 68157952;
    *(v5 + 4) = 1;
    *(v5 + 8) = 2048;
    *(v5 + 10) = v4;
    _os_log_impl(&dword_26BB21000, v2, v3, "Fetch logo started. scale: %.*f", v5, 0x12u);
    MEMORY[0x26D68EA90](v5, -1, -1);
  }

  v6 = v0[34];
  v7 = v0[33];

  v8 = *(v6 + 120);
  sub_26BB7C9E8();
  v9 = v0[29];
  v10 = v0[30];
  __swift_project_boxed_opaque_existential_1(v0 + 26, v9);
  v0[31] = v7;
  v11 = *(v10 + 8);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[37] = v13;
  *v13 = v0;
  v13[1] = sub_26BB2C790;
  v14 = v0[35];

  return (v16)(v0 + 2, v14, v0 + 31, v9, v10);
}

uint64_t sub_26BB2C790()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_26BB2C9B4;
  }

  else
  {
    v3 = sub_26BB2C8A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BB2C8A4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v2;
  v3 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v3;
  v4 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v4;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
  v5 = sub_26BB7CB68();
  v6 = sub_26BB7CF78();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26BB21000, v5, v6, "Fetch logo succeeded", v7, 2u);
    MEMORY[0x26D68EA90](v7, -1, -1);
  }

  v8 = *(v0 + 256);

  v9 = *(v0 + 128);
  *v8 = *(v0 + 112);
  v8[1] = v9;
  v10 = *(v0 + 144);
  v11 = *(v0 + 160);
  v12 = *(v0 + 192);
  v8[4] = *(v0 + 176);
  v8[5] = v12;
  v8[2] = v10;
  v8[3] = v11;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_26BB2C9B4()
{
  v1 = v0[38];
  v2 = v0[36];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 26);
  v3 = v1;
  v4 = sub_26BB7CB68();
  v5 = sub_26BB7CF78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[38];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26BB21000, v4, v5, "Fetch logo failed: %{public}@", v7, 0xCu);
    sub_26BB3B504(v8, sub_26BB3B3EC);
    MEMORY[0x26D68EA90](v8, -1, -1);
    MEMORY[0x26D68EA90](v7, -1, -1);
  }

  v11 = v0[38];

  sub_26BB3B148();
  swift_allocError();
  *v12 = v11;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t StockService.searchStocks(for:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a4;
  v33 = a1;
  v34 = a3;
  v7 = *v4;
  v8 = sub_26BB7BE78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7BE68();
  v13 = sub_26BB7BE58();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v16 = sub_26BB7CB88();
  __swift_project_value_buffer(v16, qword_28158F140);

  v17 = sub_26BB7CB68();
  v18 = sub_26BB7CF78();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_26BB38238(v13, v15, &v35);
    *(v19 + 12) = 2080;
    v21 = v33;
    *(v19 + 14) = sub_26BB38238(v33, a2, &v35);
    _os_log_impl(&dword_26BB21000, v17, v18, "Stocks search started for requestID: %s, query: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v20, -1, -1);
    MEMORY[0x26D68EA90](v19, -1, -1);
  }

  else
  {

    v21 = v33;
  }

  v22 = v5[6];
  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  *(v23 + 24) = v15;
  sub_26BB7C268();

  sub_26BB7CAC8();

  v24 = swift_allocObject();
  v24[2] = v13;
  v24[3] = v15;
  v24[4] = v21;
  v24[5] = a2;
  sub_26BB390BC(0, &qword_280439E50, MEMORY[0x277D69810], MEMORY[0x277D83940]);

  sub_26BB7CA58();

  v25 = swift_allocObject();
  *(v25 + 16) = v13;
  *(v25 + 24) = v15;
  type metadata accessor for StockSearchResult();

  sub_26BB7CA58();

  v26 = v5[7];
  v27 = swift_allocObject();
  v28 = v34;
  v29 = v32;
  *(v27 + 16) = v34;
  *(v27 + 24) = v29;

  sub_26BB7CA68();

  v30 = swift_allocObject();
  v30[2] = v13;
  v30[3] = v15;
  v30[4] = v28;
  v30[5] = v29;

  sub_26BB7CA78();
}

uint64_t sub_26BB2D024(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v9 = sub_26BB7CB88();
  __swift_project_value_buffer(v9, qword_28158F140);

  v10 = sub_26BB7CB68();
  v11 = sub_26BB7CF78();

  if (os_log_type_enabled(v10, v11))
  {
    v17[6] = a5;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_26BB38238(a3, a4, v17);
    _os_log_impl(&dword_26BB21000, v10, v11, "Firing stock search for requestID: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D68EA90](v13, -1, -1);
    MEMORY[0x26D68EA90](v12, -1, -1);
  }

  v14 = *(a2 + 80);
  sub_26BB7C9E8();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v15 = sub_26BB7C2E8();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v15;
}

uint64_t sub_26BB2D1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_26BB7C788();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = sub_26BB7C758();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v12 = *(*(sub_26BB7C378() - 8) + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB2D34C, 0, 0);
}

uint64_t sub_26BB2D34C()
{
  v92 = v0;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = sub_26BB7CB88();
  __swift_project_value_buffer(v3, qword_28158F140);

  v4 = sub_26BB7CB68();
  v5 = sub_26BB7CF78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v90 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_26BB38238(v9, v8, &v90);
    *(v10 + 12) = 2080;
    v12 = MEMORY[0x26D68DD10](v7, v6);
    v14 = sub_26BB38238(v12, v13, &v90);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_26BB21000, v4, v5, "Stock search success for requestID: %s, result: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v11, -1, -1);
    MEMORY[0x26D68EA90](v10, -1, -1);
  }

  v15 = v0;
  v16 = v0[10];
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v19 = v15[16];
    v77 = v15;
    v20 = v15[13];
    v88 = MEMORY[0x277D84F90];
    sub_26BB63D74(0, v17, 0);
    v21 = v88;
    v22 = *(v19 + 16);
    v19 += 16;
    v23 = v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v75 = *(v19 + 56);
    v76 = v22;
    v74 = (v20 + 88);
    v73 = *MEMORY[0x277D69898];
    v71 = *MEMORY[0x277D698A0];
    v70 = *MEMORY[0x277D69870];
    v69 = *MEMORY[0x277D69888];
    v68 = *MEMORY[0x277D69878];
    v67 = *MEMORY[0x277D69890];
    v66 = *MEMORY[0x277D69880];
    v64 = (v20 + 8);
    v72 = (v19 - 8);
    v65 = *MEMORY[0x277D69868];
    while (1)
    {
      v86 = v17;
      v87 = v21;
      v24 = v77[17];
      v25 = v77[18];
      v27 = v77[14];
      v26 = v77[15];
      v28 = v77[12];
      v85 = v23;
      v76(v25);
      (v76)(v24, v25, v26);
      v29 = sub_26BB7C728();
      v31 = v30;
      v84 = sub_26BB7C708();
      v83 = v32;
      v33 = sub_26BB7C738();
      v35 = v34;
      sub_26BB7C718();
      v36 = (*v74)(v27, v28);
      if (v36 != v73)
      {
        if (v36 == v71)
        {
          v37 = 1;
LABEL_23:
          v82 = v37;
          goto LABEL_24;
        }

        if (v36 == v70)
        {
          v37 = 2;
          goto LABEL_23;
        }

        if (v36 == v69)
        {
          v37 = 3;
          goto LABEL_23;
        }

        if (v36 == v68)
        {
          v37 = 4;
          goto LABEL_23;
        }

        if (v36 == v67)
        {
          v37 = 5;
          goto LABEL_23;
        }

        if (v36 == v66)
        {
          v37 = 6;
          goto LABEL_23;
        }

        if (v36 == v65)
        {
          v37 = 7;
          goto LABEL_23;
        }

        (*v64)(v77[14], v77[12]);
      }

      v82 = 0;
LABEL_24:
      v38 = v77[17];
      v39 = v77[18];
      v40 = v77[15];
      v81 = sub_26BB7C748();
      v42 = v41;
      v43 = sub_26BB7C6F8();
      v79 = v44;
      v80 = v43;
      v90 = v33;
      v91 = v35;

      MEMORY[0x26D68DCA0](58, 0xE100000000000000);
      MEMORY[0x26D68DCA0](v29, v31);
      v78 = v33;
      v45 = v31;
      v46 = v29;
      v48 = v90;
      v47 = v91;
      v49 = *v72;
      (*v72)(v38, v40);
      v49(v39, v40);
      *v89 = v90;
      *&v89[3] = *(&v90 + 3);
      v21 = v87;
      v51 = *(v87 + 16);
      v50 = *(v87 + 24);

      if (v51 >= v50 >> 1)
      {
        sub_26BB63D74((v50 > 1), v51 + 1, 1);
        v21 = v87;
      }

      *(v21 + 16) = v51 + 1;
      v52 = v21 + 120 * v51;
      *(v52 + 32) = v48;
      *(v52 + 40) = v47;
      *(v52 + 48) = v46;
      *(v52 + 56) = v45;
      *(v52 + 64) = v84;
      *(v52 + 72) = v83;
      *(v52 + 80) = v78;
      *(v52 + 88) = v35;
      *(v52 + 96) = v82;
      *(v52 + 97) = *v89;
      *(v52 + 100) = *&v89[3];
      *(v52 + 104) = v81;
      *(v52 + 112) = v42;
      *(v52 + 120) = v81;
      *(v52 + 128) = v42;
      *(v52 + 136) = v80;
      *(v52 + 144) = v79;
      v23 = v85 + v75;
      v17 = v86 - 1;
      if (v86 == 1)
      {
        v18 = v21;
        v53 = v77;
        goto LABEL_30;
      }
    }
  }

  v53 = v15;
LABEL_30:
  v55 = v53[18];
  v54 = v53[19];
  v56 = v53[17];
  v57 = v53[14];
  v58 = v53[7];
  v59 = *(v53[11] + 72);
  sub_26BB7C9E8();
  v60 = v53[6];
  __swift_project_boxed_opaque_existential_1(v53 + 2, v53[5]);
  sub_26BB7C498();
  v61 = type metadata accessor for StockSearchResult();
  sub_26BB3EBA4(v54, (v58 + *(v61 + 20)));
  __swift_destroy_boxed_opaque_existential_1Tm(v53 + 2);
  *v58 = v18;

  v62 = v53[1];

  return v62();
}

uint64_t StockService.fetchStocks(for:cachePolicy:networkSession:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a4;
  v69 = a5;
  v72 = *v5;
  v9 = type metadata accessor for StockService.NetworkSession(0);
  v64 = *(v9 - 8);
  v10 = *(v64 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v65 = v12;
  v66 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  v15 = sub_26BB7BE78();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v71 = a2[1];
  v70 = *(a2 + 16);
  sub_26BB7BE68();
  v21 = sub_26BB7BE58();
  v23 = v22;
  (*(v16 + 8))(v19, v15);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v24 = sub_26BB7CB88();
  __swift_project_value_buffer(v24, qword_28158F140);
  sub_26BB3B49C(a3, v14, type metadata accessor for StockService.NetworkSession);

  v25 = sub_26BB7CB68();
  v26 = sub_26BB7CF78();

  v27 = os_log_type_enabled(v25, v26);
  v63 = v20;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v62 = a3;
    v29 = v28;
    v30 = swift_slowAlloc();
    v76 = v30;
    *v29 = 136315906;
    *(v29 + 4) = sub_26BB38238(v21, v23, &v76);
    *(v29 + 12) = 2080;
    v31 = MEMORY[0x26D68DD10](a1, MEMORY[0x277D837D0]);
    v33 = sub_26BB38238(v31, v32, &v76);
    v61 = v21;
    v34 = v33;

    *(v29 + 14) = v34;
    *(v29 + 22) = 2080;
    v73 = v20;
    v74 = v71;
    v75 = v70;
    v35 = StockService.CachePolicy.description.getter();
    v37 = sub_26BB38238(v35, v36, &v76);

    *(v29 + 24) = v37;
    *(v29 + 32) = 2080;
    v38 = StockService.NetworkSession.description.getter();
    v40 = v39;
    sub_26BB3B504(v14, type metadata accessor for StockService.NetworkSession);
    v41 = sub_26BB38238(v38, v40, &v76);
    v21 = v61;

    *(v29 + 34) = v41;
    _os_log_impl(&dword_26BB21000, v25, v26, "Stock metadata fetch started for requestID: %s, symbols: %s, cachePolicy: %s, networkSession: %s", v29, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v30, -1, -1);
    v42 = v29;
    a3 = v62;
    MEMORY[0x26D68EA90](v42, -1, -1);
  }

  else
  {

    sub_26BB3B504(v14, type metadata accessor for StockService.NetworkSession);
  }

  v62 = sub_26BB396D0(v43);

  v44 = v67;
  v45 = *(v67 + 48);
  v46 = swift_allocObject();
  *(v46 + 16) = v21;
  *(v46 + 24) = v23;
  sub_26BB7C268();

  sub_26BB7CAC8();

  v47 = v66;
  sub_26BB3B49C(a3, v66, type metadata accessor for StockService.NetworkSession);
  v48 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v49 = (v65 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v21;
  *(v50 + 24) = v23;
  sub_26BB3B268(v47, v50 + v48, type metadata accessor for StockService.NetworkSession);
  v51 = v63;
  *(v50 + v49) = v62;
  v52 = v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
  v53 = v71;
  *v52 = v51;
  *(v52 + 8) = v53;
  *(v52 + 16) = v70;
  sub_26BB3B88C(0, &qword_280439E58, MEMORY[0x277D69810], MEMORY[0x277D834F8]);

  sub_26BB7CA58();

  v54 = swift_allocObject();
  *(v54 + 16) = v21;
  *(v54 + 24) = v23;
  type metadata accessor for StockResult();

  sub_26BB7CA58();

  v55 = *(v44 + 56);
  v56 = swift_allocObject();
  v57 = v68;
  v58 = v69;
  *(v56 + 16) = v68;
  *(v56 + 24) = v58;

  sub_26BB7CA68();

  v59 = swift_allocObject();
  v59[2] = v21;
  v59[3] = v23;
  v59[4] = v57;
  v59[5] = v58;

  sub_26BB7CA78();
}

uint64_t sub_26BB2E068(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v8 = sub_26BB7CB88();
  __swift_project_value_buffer(v8, qword_28158F140);

  v9 = sub_26BB7CB68();
  v10 = sub_26BB7CF78();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_26BB38238(a2, a3, v18);
    _os_log_impl(&dword_26BB21000, v9, v10, a4, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D68EA90](v12, -1, -1);
    MEMORY[0x26D68EA90](v11, -1, -1);
  }

  v13 = *(a1 + 64);
  sub_26BB7C9E8();
  v14 = v19;
  v15 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v16 = sub_26BB4A684(v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v16;
}

uint64_t sub_26BB2E20C(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v83 = a8;
  v92 = a7;
  v96 = a6;
  v13 = sub_26BB7BE48();
  v94 = *(v13 - 8);
  v95 = v13;
  v14 = *(v94 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v93 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v84 = &v77[-v17];
  v18 = sub_26BB7C908();
  v90 = *(v18 - 8);
  v91 = v18;
  v19 = *(v90 + 64);
  MEMORY[0x28223BE20](v18);
  v87 = &v77[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_26BB7C868();
  v88 = *(v21 - 8);
  v89 = v21;
  v22 = *(v88 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v82 = &v77[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v26 = &v77[-v25];
  v27 = type metadata accessor for StockService.NetworkSession(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v77[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = sub_26BB7C888();
  v85 = *(v86 - 8);
  v31 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v102 = &v77[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v33 = sub_26BB7CB88();
  __swift_project_value_buffer(v33, qword_28158F140);

  v34 = sub_26BB7CB68();
  v35 = sub_26BB7CF78();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v81 = a5;
    v80 = a2;
    v38 = v26;
    v39 = v37;
    v99[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_26BB38238(a3, a4, v99);
    _os_log_impl(&dword_26BB21000, v34, v35, "Firing stock metadata fetch for requestID: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v40 = v39;
    v26 = v38;
    a2 = v80;
    a5 = v81;
    MEMORY[0x26D68EA90](v40, -1, -1);
    MEMORY[0x26D68EA90](v36, -1, -1);
  }

  v41 = a9;
  sub_26BB2EC48(a5, v102);
  sub_26BB3B49C(a5, v30, type metadata accessor for StockService.NetworkSession);
  sub_26BB28EE8();
  v43 = v42;
  if ((*(*(v42 - 8) + 48))(v30, 1, v42) != 1)
  {
    v52 = *(v30 + 1);

    (*(v94 + 32))(v93, &v30[*(v43 + 48)], v95);
    v53 = *(a2 + 11);
    sub_26BB7C9E8();
    v54 = v100;
    v55 = v101;
    v79 = __swift_project_boxed_opaque_existential_1(v99, v100);
    v56 = v96[2];
    v57 = MEMORY[0x277D84F90];
    v81 = v54;
    v80 = v55;
    if (v56)
    {
      v78 = a9;
      v58 = sub_26BB381B0(v56, 0);
      v59 = sub_26BB388DC(v97, v58 + 4, v56, v96);

      result = sub_26BB3B7C4();
      if (v59 != v56)
      {
        goto LABEL_22;
      }

      v96 = v58;
      v41 = v78;
      v57 = MEMORY[0x277D84F90];
    }

    else
    {
      v96 = MEMORY[0x277D84F90];
    }

    v97[0] = v92;
    v97[1] = v83;
    LOBYTE(v98) = v41;
    v60 = v84;
    sub_26BB7BE38();
    v61 = v93;
    v62 = sub_26BB7BDF8();
    v63 = v95;
    v94 = *(v94 + 8);
    (v94)(v60, v95);
    v64 = v82;
    sub_26BB297D0(3u, v62 & 1, v82);
    v97[0] = v57;
    sub_26BB3BE9C(&qword_280439EF0, MEMORY[0x277D6CB48]);
    v65 = MEMORY[0x277D6CB48];
    sub_26BB390BC(0, &qword_280439EF8, MEMORY[0x277D6CB48], MEMORY[0x277D83940]);
    sub_26BB3BB84(&qword_280439F00, &qword_280439EF8, v65);
    v66 = v87;
    v67 = v91;
    sub_26BB7D028();
    v68 = v102;
    v69 = sub_26BB7C488();

    (*(v90 + 8))(v66, v67);
    (*(v88 + 8))(v64, v89);
    (v94)(v61, v63);
    (*(v85 + 8))(v68, v86);
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    return v69;
  }

  v44 = *(a2 + 11);
  sub_26BB7C9E8();
  v93 = v101;
  v81 = v100;
  v82 = __swift_project_boxed_opaque_existential_1(v99, v100);
  v45 = v96[2];
  v46 = MEMORY[0x277D84F90];
  if (!v45)
  {
    v50 = a9;
    if (a9)
    {
LABEL_9:
      if (v50 == 1)
      {
        *v26 = sub_26BB7D578();
        v51 = MEMORY[0x277D6CA48];
      }

      else
      {
        v51 = qword_279D1C840[v92];
      }

      goto LABEL_19;
    }

LABEL_15:
    *v26 = sub_26BB7D578();
    v51 = MEMORY[0x277D6CA40];
LABEL_19:
    v70 = v88;
    v71 = v89;
    (*(v88 + 104))(v26, *v51, v89);
    v97[0] = v46;
    sub_26BB3BE9C(&qword_280439EF0, MEMORY[0x277D6CB48]);
    v72 = MEMORY[0x277D6CB48];
    sub_26BB390BC(0, &qword_280439EF8, MEMORY[0x277D6CB48], MEMORY[0x277D83940]);
    sub_26BB3BB84(&qword_280439F00, &qword_280439EF8, v72);
    v73 = v87;
    v74 = v91;
    sub_26BB7D028();
    v75 = v84;
    sub_26BB7BE38();
    v76 = v102;
    v69 = sub_26BB7C488();

    (*(v94 + 8))(v75, v95);
    (*(v90 + 8))(v73, v74);
    (*(v70 + 8))(v26, v71);
    (*(v85 + 8))(v76, v86);
    goto LABEL_20;
  }

  v47 = sub_26BB381B0(v96[2], 0);
  v48 = sub_26BB388DC(v97, v47 + 4, v45, v96);

  result = sub_26BB3B7C4();
  if (v48 == v45)
  {
    v46 = MEMORY[0x277D84F90];
    v50 = a9;
    if (a9)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_26BB2EC48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for StockService.NetworkSession(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB3B49C(a1, v8, type metadata accessor for StockService.NetworkSession);
  sub_26BB28EE8();
  v10 = v9;
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    v11 = *MEMORY[0x277D6CAB8];
    v12 = sub_26BB7C888();
    return (*(*(v12 - 8) + 104))(a2, v11, v12);
  }

  else
  {
    v14 = *v8;
    v15 = *(v8 + 1);
    v16 = *(v10 + 48);
    v17 = *&v8[*(v10 + 64)];
    v18 = objc_opt_self();
    v19 = sub_26BB7CD38();

    v20 = [v18 backgroundSessionConfigurationWithIdentifier_];

    [v20 setTimeoutIntervalForResource_];
    v21 = *(v2 + 40);
    v22 = v20;
    v23 = sub_26BB2B1CC();
    v24 = [objc_opt_self() sessionWithConfiguration:v22 delegate:v21 delegateQueue:v23];

    v33[4] = sub_26BB3B454(0, &qword_28158B248, 0x277CCAD30);
    v33[5] = MEMORY[0x277D6D018];
    v33[1] = v24;
    v25 = sub_26BB7C9B8();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = v24;
    v29 = sub_26BB7C9A8();

    *a2 = v29;
    v30 = *MEMORY[0x277D6CAB0];
    v31 = sub_26BB7C888();
    (*(*(v31 - 8) + 104))(a2, v30, v31);
    v32 = sub_26BB7BE48();
    return (*(*(v32 - 8) + 8))(&v8[v16], v32);
  }
}

uint64_t sub_26BB2EF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_26BB7C788();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = sub_26BB7C758();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v12 = *(*(sub_26BB7C378() - 8) + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB2F098, 0, 0);
}

uint64_t sub_26BB2F098()
{
  v105 = v0;
  v1 = v0;
  if (qword_28158C2F8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v3 = v1[9];
  v2 = v1[10];
  v4 = sub_26BB7CB88();
  __swift_project_value_buffer(v4, qword_28158F140);

  v5 = sub_26BB7CB68();
  v6 = sub_26BB7CF78();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[15];
    v9 = v1[9];
    v8 = v1[10];
    v10 = v1[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v103 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_26BB38238(v10, v9, &v103);
    *(v11 + 12) = 2080;
    v13 = sub_26BB7CCC8();
    v15 = sub_26BB38238(v13, v14, &v103);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_26BB21000, v5, v6, "Stock metadata fetch success for requestID: %s, result: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v12, -1, -1);
    MEMORY[0x26D68EA90](v11, -1, -1);
  }

  v16 = v1[16];
  v17 = v1[13];
  v18 = v1[10];
  sub_26BB3BB24();
  v19 = sub_26BB7D1B8();
  v20 = 0;
  v21 = *(v18 + 64);
  v79 = v18 + 64;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v78 = (v22 + 63) >> 6;
  v86 = v18;
  v85 = (v17 + 88);
  v84 = *MEMORY[0x277D69898];
  v80 = *MEMORY[0x277D698A0];
  v76 = *MEMORY[0x277D69888];
  v77 = *MEMORY[0x277D69870];
  v74 = *MEMORY[0x277D69890];
  v75 = *MEMORY[0x277D69878];
  v73 = *MEMORY[0x277D69880];
  v71 = (v17 + 8);
  v87 = v16;
  v88 = v19;
  v82 = v19 + 64;
  v83 = (v16 + 8);
  v72 = *MEMORY[0x277D69868];
  v81 = v1;
  if ((v23 & v21) != 0)
  {
    do
    {
      v25 = __clz(__rbit64(v24));
      v26 = (v24 - 1) & v24;
LABEL_13:
      v29 = v25 | (v20 << 6);
      v31 = v1[17];
      v30 = v1[18];
      v33 = v1[14];
      v32 = v1[15];
      v95 = v1[12];
      v34 = (*(v86 + 48) + 16 * v29);
      v35 = v34[1];
      v99 = *v34;
      v101 = v29;
      v36 = *(v87 + 16);
      v36(v30, *(v86 + 56) + *(v87 + 72) * v29, v32);
      v36(v31, v30, v32);
      v100 = v35;

      v37 = sub_26BB7C728();
      v39 = v38;
      v40 = sub_26BB7C708();
      v42 = v41;
      v43 = sub_26BB7C738();
      v97 = v44;
      sub_26BB7C718();
      v45 = (*v85)(v33, v95);
      v89 = v26;
      v98 = v42;
      if (v45 == v84)
      {
        goto LABEL_14;
      }

      if (v45 == v80)
      {
        v46 = 1;
      }

      else if (v45 == v77)
      {
        v46 = 2;
      }

      else if (v45 == v76)
      {
        v46 = 3;
      }

      else if (v45 == v75)
      {
        v46 = 4;
      }

      else if (v45 == v74)
      {
        v46 = 5;
      }

      else if (v45 == v73)
      {
        v46 = 6;
      }

      else
      {
        if (v45 != v72)
        {
          (*v71)(v1[14], v1[12]);
LABEL_14:
          v96 = 0;
          goto LABEL_30;
        }

        v46 = 7;
      }

      v96 = v46;
LABEL_30:
      v47 = v1[17];
      v91 = v1[18];
      v1 = v1[15];
      v94 = sub_26BB7C748();
      v49 = v48;
      v50 = sub_26BB7C6F8();
      v92 = v51;
      v93 = v50;
      v103 = v43;
      v104 = v97;

      MEMORY[0x26D68DCA0](58, 0xE100000000000000);
      MEMORY[0x26D68DCA0](v37, v39);
      v90 = v39;
      v52 = v103;
      v53 = v104;
      v54 = *v83;
      (*v83)(v47, v1);
      LODWORD(v102) = v103;
      *(&v102 + 3) = *(&v103 + 3);

      v54(v91, v1);
      *(v82 + ((v101 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v101;
      v19 = v88;
      v55 = (v88[6] + 16 * v101);
      *v55 = v99;
      v55[1] = v100;
      v56 = v88[7] + 120 * v101;
      *v56 = v52;
      *(v56 + 8) = v53;
      *(v56 + 16) = v37;
      *(v56 + 24) = v90;
      *(v56 + 32) = v40;
      *(v56 + 40) = v98;
      *(v56 + 48) = v43;
      *(v56 + 56) = v97;
      *(v56 + 64) = v96;
      *(v56 + 65) = v102;
      *(v56 + 68) = *(&v102 + 3);
      *(v56 + 72) = v94;
      *(v56 + 80) = v49;
      *(v56 + 88) = v94;
      *(v56 + 96) = v49;
      *(v56 + 104) = v93;
      *(v56 + 112) = v92;
      v57 = v88[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v88[2] = v59;
      v1 = v81;
      v24 = v89;
    }

    while (v89);
  }

  v27 = v20;
  while (1)
  {
    v20 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v20 >= v78)
    {
      break;
    }

    v28 = *(v79 + 8 * v20);
    ++v27;
    if (v28)
    {
      v25 = __clz(__rbit64(v28));
      v26 = (v28 - 1) & v28;
      goto LABEL_13;
    }
  }

  v61 = v1[18];
  v60 = v1[19];
  v62 = v1[17];
  v63 = v1[14];
  v64 = v1[7];
  v65 = *(v1[11] + 72);
  v66 = v19;
  sub_26BB7C9E8();
  v67 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_26BB7C498();
  v68 = type metadata accessor for StockResult();
  sub_26BB3EBA4(v60, (v64 + *(v68 + 20)));
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  *v64 = v66;

  v69 = v1[1];

  return v69();
}

uint64_t sub_26BB2F7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BB7CC88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26BB7CCB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    sub_26BB7CEA8();
    MEMORY[0x28223BE20]();
    *(&v19 - 2) = a1;
    *(&v19 - 1) = a2;
    return sub_26BB37E58(sub_26BB3B920, (&v19 - 4));
  }

  else
  {
    sub_26BB3B454(0, &qword_28158BB68, 0x277D85C78);
    v20 = v9;
    v19 = sub_26BB7CFB8();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    aBlock[4] = sub_26BB3B900;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BB3805C;
    aBlock[3] = &block_descriptor;
    v16 = _Block_copy(aBlock);

    sub_26BB7CC98();
    v21 = MEMORY[0x277D84F90];
    sub_26BB3BE9C(&qword_28158B990, MEMORY[0x277D85198]);
    v17 = MEMORY[0x277D85198];
    sub_26BB390BC(0, &qword_28158B270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_26BB3BB84(&qword_28158B268, &qword_28158B270, v17);
    sub_26BB7D028();
    v18 = v19;
    MEMORY[0x26D68DEA0](0, v13, v8, v16);
    _Block_release(v16);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v20);
  }
}

uint64_t StockService.fetchQuotes(for:cachePolicy:networkSession:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a4;
  v69 = a5;
  v72 = *v5;
  v9 = type metadata accessor for StockService.NetworkSession(0);
  v64 = *(v9 - 8);
  v10 = *(v64 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v65 = v12;
  v66 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  v15 = sub_26BB7BE78();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v71 = a2[1];
  v70 = *(a2 + 16);
  sub_26BB7BE68();
  v21 = sub_26BB7BE58();
  v23 = v22;
  (*(v16 + 8))(v19, v15);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v24 = sub_26BB7CB88();
  __swift_project_value_buffer(v24, qword_28158F140);
  sub_26BB3B49C(a3, v14, type metadata accessor for StockService.NetworkSession);

  v25 = sub_26BB7CB68();
  v26 = sub_26BB7CF78();

  v27 = os_log_type_enabled(v25, v26);
  v63 = v20;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v62 = a3;
    v29 = v28;
    v30 = swift_slowAlloc();
    v76 = v30;
    *v29 = 136315906;
    *(v29 + 4) = sub_26BB38238(v21, v23, &v76);
    *(v29 + 12) = 2080;
    v31 = MEMORY[0x26D68DD10](a1, MEMORY[0x277D837D0]);
    v33 = sub_26BB38238(v31, v32, &v76);
    v61 = v21;
    v34 = v33;

    *(v29 + 14) = v34;
    *(v29 + 22) = 2080;
    v73 = v20;
    v74 = v71;
    v75 = v70;
    v35 = StockService.CachePolicy.description.getter();
    v37 = sub_26BB38238(v35, v36, &v76);

    *(v29 + 24) = v37;
    *(v29 + 32) = 2080;
    v38 = StockService.NetworkSession.description.getter();
    v40 = v39;
    sub_26BB3B504(v14, type metadata accessor for StockService.NetworkSession);
    v41 = sub_26BB38238(v38, v40, &v76);
    v21 = v61;

    *(v29 + 34) = v41;
    _os_log_impl(&dword_26BB21000, v25, v26, "Quote fetch started for requestID: %s, symbols: %s, cachePolicy: %s, networkSession: %s", v29, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v30, -1, -1);
    v42 = v29;
    a3 = v62;
    MEMORY[0x26D68EA90](v42, -1, -1);
  }

  else
  {

    sub_26BB3B504(v14, type metadata accessor for StockService.NetworkSession);
  }

  v62 = sub_26BB396D0(v43);

  v44 = v67;
  v45 = *(v67 + 48);
  v46 = swift_allocObject();
  *(v46 + 16) = v21;
  *(v46 + 24) = v23;
  sub_26BB7C268();

  sub_26BB7CAC8();

  v47 = v66;
  sub_26BB3B49C(a3, v66, type metadata accessor for StockService.NetworkSession);
  v48 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v49 = (v65 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v21;
  *(v50 + 24) = v23;
  sub_26BB3B268(v47, v50 + v48, type metadata accessor for StockService.NetworkSession);
  v51 = v63;
  *(v50 + v49) = v62;
  v52 = v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
  v53 = v71;
  *v52 = v51;
  *(v52 + 8) = v53;
  *(v52 + 16) = v70;
  sub_26BB3B88C(0, &qword_280439E60, MEMORY[0x277D697F8], MEMORY[0x277D834F8]);

  sub_26BB7CA58();

  v54 = swift_allocObject();
  *(v54 + 16) = v21;
  *(v54 + 24) = v23;
  type metadata accessor for QuoteResult();

  sub_26BB7CA58();

  v55 = *(v44 + 56);
  v56 = swift_allocObject();
  v57 = v68;
  v58 = v69;
  *(v56 + 16) = v68;
  *(v56 + 24) = v58;

  sub_26BB7CA68();

  v59 = swift_allocObject();
  v59[2] = v21;
  v59[3] = v23;
  v59[4] = v57;
  v59[5] = v58;

  sub_26BB7CA78();
}

uint64_t sub_26BB30248(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v83 = a5;
  *&v77 = a7;
  *(&v77 + 1) = a8;
  v76 = a3;
  v84 = a2;
  v90 = sub_26BB7BE48();
  v11 = *(v90 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v90);
  v85 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v73 - v15;
  v16 = sub_26BB7C868();
  v81 = *(v16 - 8);
  v82 = v16;
  v17 = *(v81 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v75 = (&v73 - v21);
  v22 = type metadata accessor for StockService.NetworkSession(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_26BB7C888();
  v79 = *(v26 - 8);
  v80 = v26;
  v27 = *(v79 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (&v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v30 = sub_26BB7CB88();
  __swift_project_value_buffer(v30, qword_28158F140);

  v31 = sub_26BB7CB68();
  v32 = sub_26BB7CF78();

  v33 = os_log_type_enabled(v31, v32);
  v74 = v20;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v73 = a6;
    v35 = v34;
    v36 = v11;
    v37 = swift_slowAlloc();
    v87[0] = v37;
    *v35 = 136315138;
    *(v35 + 4) = sub_26BB38238(v76, a4, v87);
    _os_log_impl(&dword_26BB21000, v31, v32, "Firing quote fetch for requestID: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v38 = v37;
    v11 = v36;
    MEMORY[0x26D68EA90](v38, -1, -1);
    a6 = v73;
    MEMORY[0x26D68EA90](v35, -1, -1);
  }

  v39 = a9;
  v40 = v83;
  v41 = v84;
  sub_26BB2EC48(v83, v29);
  sub_26BB3B49C(v40, v25, type metadata accessor for StockService.NetworkSession);
  sub_26BB28EE8();
  v43 = v42;
  if ((*(*(v42 - 8) + 48))(v25, 1, v42) != 1)
  {
    v51 = *(v25 + 1);

    (*(v11 + 32))(v85, &v25[*(v43 + 48)], v90);
    v52 = v41[12];
    sub_26BB7C9E8();
    v75 = v89;
    v76 = v88;
    v83 = __swift_project_boxed_opaque_existential_1(v87, v88);
    v53 = *(a6 + 16);
    if (v53)
    {
      v84 = v29;
      v73 = sub_26BB381B0(v53, 0);
      v54 = sub_26BB388DC(&v86, v73 + 4, v53, a6);

      result = sub_26BB3B7C4();
      if (v54 != v53)
      {
        goto LABEL_45;
      }

      v29 = v84;
      v39 = a9;
    }

    else
    {
      v73 = MEMORY[0x277D84F90];
    }

    v58 = v78;
    sub_26BB7BE38();
    v59 = sub_26BB7BDF8();
    v60 = *(v11 + 8);
    (v60)(v58, v90);
    v84 = v60;
    if (v59)
    {
      v61 = MEMORY[0x277D6CA20];
LABEL_19:
      v62 = v74;
LABEL_29:
      v67 = v81;
      v66 = v82;
      (*(v81 + 104))(v62, *v61, v82);
      v68 = v85;
      v69 = sub_26BB7C2D8();

      (*(v67 + 8))(v62, v66);
      (v84)(v68, v90);
      (*(v79 + 8))(v29, v80);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      return v69;
    }

    if (!v39)
    {
      v65 = sub_26BB7D578();
      v62 = v74;
      *v74 = v65;
      v61 = MEMORY[0x277D6CA40];
      goto LABEL_29;
    }

    if (v39 == 1)
    {
      v63 = sub_26BB7D578();
      v62 = v74;
      *v74 = v63;
    }

    else
    {
      if (v77 > 1)
      {
        v61 = MEMORY[0x277D6CA20];
        if (v77 ^ 2 | *(&v77 + 1))
        {
          v61 = MEMORY[0x277D6CA28];
        }

        goto LABEL_19;
      }

      if (v77 != 0)
      {
        v61 = MEMORY[0x277D6CA30];
        goto LABEL_19;
      }

      v62 = v74;
      *v74 = 60.0;
    }

    v61 = MEMORY[0x277D6CA48];
    goto LABEL_29;
  }

  v44 = v41[12];
  sub_26BB7C9E8();
  v45 = v88;
  v85 = v89;
  v46 = __swift_project_boxed_opaque_existential_1(v87, v88);
  v47 = *(a6 + 16);
  if (!v47)
  {
    goto LABEL_12;
  }

  v74 = v46;
  v76 = v45;
  LODWORD(v83) = a9;
  v84 = v29;
  v48 = sub_26BB381B0(v47, 0);
  v49 = sub_26BB388DC(&v86, v48 + 4, v47, a6);

  result = sub_26BB3B7C4();
  if (v49 == v47)
  {
    v29 = v84;
    v39 = v83;
LABEL_12:
    if (!v39)
    {
      v64 = sub_26BB7D578();
      v56 = v75;
      *v75 = v64;
      v57 = MEMORY[0x277D6CA40];
      goto LABEL_38;
    }

    if (v39 == 1)
    {
      v55 = sub_26BB7D578();
      v56 = v75;
      *v75 = v55;
LABEL_15:
      v57 = MEMORY[0x277D6CA48];
LABEL_38:
      v71 = v81;
      v70 = v82;
      (*(v81 + 104))(v56, *v57, v82);
      v72 = v78;
      sub_26BB7BE38();
      v69 = sub_26BB7C2D8();

      (*(v11 + 8))(v72, v90);
      (*(v71 + 8))(v56, v70);
      (*(v79 + 8))(v29, v80);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      return v69;
    }

    if (v77 > 1)
    {
      v57 = MEMORY[0x277D6CA20];
      if (v77 ^ 2 | *(&v77 + 1))
      {
        v57 = MEMORY[0x277D6CA28];
      }
    }

    else
    {
      if (v77 == 0)
      {
        v56 = v75;
        *v75 = 60.0;
        goto LABEL_15;
      }

      v57 = MEMORY[0x277D6CA30];
    }

    v56 = v75;
    goto LABEL_38;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_26BB30B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(type metadata accessor for Quote() - 8);
  v5[12] = v6;
  v7 = *(v6 + 64) + 15;
  v5[13] = swift_task_alloc();
  v8 = sub_26BB7C6E8();
  v5[14] = v8;
  v9 = *(v8 - 8);
  v5[15] = v9;
  v10 = *(v9 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v11 = *(*(sub_26BB7C378() - 8) + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB30CAC, 0, 0);
}

uint64_t sub_26BB30CAC()
{
  v57 = v0;
  if (qword_28158C2F8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v2 = *(v0 + 72);
    v1 = *(v0 + 80);
    v3 = sub_26BB7CB88();
    __swift_project_value_buffer(v3, qword_28158F140);

    v4 = sub_26BB7CB68();
    v5 = sub_26BB7CF78();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 112);
      v8 = *(v0 + 72);
      v7 = *(v0 + 80);
      v9 = *(v0 + 64);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v56 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_26BB38238(v9, v8, &v56);
      *(v10 + 12) = 2080;
      v12 = sub_26BB7CCC8();
      v14 = sub_26BB38238(v12, v13, &v56);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_26BB21000, v4, v5, "Quote fetch success for requestID: %s, result: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D68EA90](v11, -1, -1);
      MEMORY[0x26D68EA90](v10, -1, -1);
    }

    v15 = *(v0 + 120);
    v50 = *(v0 + 96);
    v52 = v0;
    v0 = *(v0 + 80);
    sub_26BB3B88C(0, &qword_280439ED8, type metadata accessor for Quote, MEMORY[0x277D84460]);
    v16 = sub_26BB7D1B8();
    v17 = v16;
    v18 = 0;
    v47 = v0 + 64;
    v19 = 1 << *(v0 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v0 + 64);
    v22 = (v19 + 63) >> 6;
    v49 = v0;
    v51 = v16;
    v48 = v16 + 64;
    if (!v21)
    {
      break;
    }

    while (1)
    {
      v23 = __clz(__rbit64(v21));
      v53 = (v21 - 1) & v21;
LABEL_13:
      v0 = v23 | (v18 << 6);
      v27 = v52[16];
      v26 = v52[17];
      v28 = v52[14];
      v54 = v52[13];
      v29 = (*(v49 + 48) + 16 * v0);
      v30 = v29[1];
      v55 = *v29;
      v31 = *(v15 + 16);
      v31(v26, *(v49 + 56) + *(v15 + 72) * v0, v28);
      v31(v27, v26, v28);

      sub_26BB45130(v27, v54);
      (*(v15 + 8))(v26, v28);
      *(v48 + ((v0 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v0;
      v17 = v51;
      v32 = (v51[6] + 16 * v0);
      *v32 = v55;
      v32[1] = v30;
      sub_26BB3B268(v54, v51[7] + *(v50 + 72) * v0, type metadata accessor for Quote);
      v33 = v51[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v51[2] = v35;
      v21 = v53;
      if (!v53)
      {
        goto LABEL_8;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_8:
  v24 = v18;
  while (1)
  {
    v18 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v18 >= v22)
    {
      break;
    }

    v25 = *(v47 + 8 * v18);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v53 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  v37 = v52[17];
  v36 = v52[18];
  v38 = v52[16];
  v39 = v52[13];
  v40 = v52[7];
  v41 = v17;
  v42 = *(v52[11] + 72);
  sub_26BB7C9E8();
  v43 = v52[6];
  __swift_project_boxed_opaque_existential_1(v52 + 2, v52[5]);
  sub_26BB7C498();
  v44 = type metadata accessor for QuoteResult();
  sub_26BB3EBA4(v36, (v40 + *(v44 + 20)));
  __swift_destroy_boxed_opaque_existential_1Tm(v52 + 2);
  *v40 = v41;

  v45 = v52[1];

  return v45();
}

uint64_t StockService.fetchQuoteDetails(for:cachePolicy:networkSession:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a4;
  v69 = a5;
  v72 = *v5;
  v9 = type metadata accessor for StockService.NetworkSession(0);
  v64 = *(v9 - 8);
  v10 = *(v64 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v65 = v12;
  v66 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  v15 = sub_26BB7BE78();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v71 = a2[1];
  v70 = *(a2 + 16);
  sub_26BB7BE68();
  v21 = sub_26BB7BE58();
  v23 = v22;
  (*(v16 + 8))(v19, v15);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v24 = sub_26BB7CB88();
  __swift_project_value_buffer(v24, qword_28158F140);
  sub_26BB3B49C(a3, v14, type metadata accessor for StockService.NetworkSession);

  v25 = sub_26BB7CB68();
  v26 = sub_26BB7CF78();

  v27 = os_log_type_enabled(v25, v26);
  v63 = v20;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v62 = a3;
    v29 = v28;
    v30 = swift_slowAlloc();
    v76 = v30;
    *v29 = 136315906;
    *(v29 + 4) = sub_26BB38238(v21, v23, &v76);
    *(v29 + 12) = 2080;
    v31 = MEMORY[0x26D68DD10](a1, MEMORY[0x277D837D0]);
    v33 = sub_26BB38238(v31, v32, &v76);
    v61 = v21;
    v34 = v33;

    *(v29 + 14) = v34;
    *(v29 + 22) = 2080;
    v73 = v20;
    v74 = v71;
    v75 = v70;
    v35 = StockService.CachePolicy.description.getter();
    v37 = sub_26BB38238(v35, v36, &v76);

    *(v29 + 24) = v37;
    *(v29 + 32) = 2080;
    v38 = StockService.NetworkSession.description.getter();
    v40 = v39;
    sub_26BB3B504(v14, type metadata accessor for StockService.NetworkSession);
    v41 = sub_26BB38238(v38, v40, &v76);
    v21 = v61;

    *(v29 + 34) = v41;
    _os_log_impl(&dword_26BB21000, v25, v26, "Quote detail fetch started for requestID: %s, symbols: %s, cachePolicy: %s, networkSession: %s", v29, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v30, -1, -1);
    v42 = v29;
    a3 = v62;
    MEMORY[0x26D68EA90](v42, -1, -1);
  }

  else
  {

    sub_26BB3B504(v14, type metadata accessor for StockService.NetworkSession);
  }

  v62 = sub_26BB396D0(v43);

  v44 = v67;
  v45 = *(v67 + 48);
  v46 = swift_allocObject();
  *(v46 + 16) = v21;
  *(v46 + 24) = v23;
  sub_26BB7C268();

  sub_26BB7CAC8();

  v47 = v66;
  sub_26BB3B49C(a3, v66, type metadata accessor for StockService.NetworkSession);
  v48 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v49 = (v65 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v21;
  *(v50 + 24) = v23;
  sub_26BB3B268(v47, v50 + v48, type metadata accessor for StockService.NetworkSession);
  v51 = v63;
  *(v50 + v49) = v62;
  v52 = v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
  v53 = v71;
  *v52 = v51;
  *(v52 + 8) = v53;
  *(v52 + 16) = v70;
  sub_26BB3B88C(0, &qword_280439E68, MEMORY[0x277D69178], MEMORY[0x277D834F8]);

  sub_26BB7CA58();

  v54 = swift_allocObject();
  *(v54 + 16) = v21;
  *(v54 + 24) = v23;
  type metadata accessor for QuoteDetailResult();

  sub_26BB7CA58();

  v55 = *(v44 + 56);
  v56 = swift_allocObject();
  v57 = v68;
  v58 = v69;
  *(v56 + 16) = v68;
  *(v56 + 24) = v58;

  sub_26BB7CA68();

  v59 = swift_allocObject();
  v59[2] = v21;
  v59[3] = v23;
  v59[4] = v57;
  v59[5] = v58;

  sub_26BB7CA78();
}

uint64_t sub_26BB318C4(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v83 = a5;
  *&v77 = a7;
  *(&v77 + 1) = a8;
  v76 = a3;
  v84 = a2;
  v90 = sub_26BB7BE48();
  v11 = *(v90 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v90);
  v85 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v73 - v15;
  v16 = sub_26BB7C868();
  v81 = *(v16 - 8);
  v82 = v16;
  v17 = *(v81 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v75 = (&v73 - v21);
  v22 = type metadata accessor for StockService.NetworkSession(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_26BB7C888();
  v79 = *(v26 - 8);
  v80 = v26;
  v27 = *(v79 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (&v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v30 = sub_26BB7CB88();
  __swift_project_value_buffer(v30, qword_28158F140);

  v31 = sub_26BB7CB68();
  v32 = sub_26BB7CF78();

  v33 = os_log_type_enabled(v31, v32);
  v74 = v20;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v73 = a6;
    v35 = v34;
    v36 = v11;
    v37 = swift_slowAlloc();
    v87[0] = v37;
    *v35 = 136315138;
    *(v35 + 4) = sub_26BB38238(v76, a4, v87);
    _os_log_impl(&dword_26BB21000, v31, v32, "Firing quote detail fetch for requestID: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v38 = v37;
    v11 = v36;
    MEMORY[0x26D68EA90](v38, -1, -1);
    a6 = v73;
    MEMORY[0x26D68EA90](v35, -1, -1);
  }

  v39 = a9;
  v40 = v83;
  v41 = v84;
  sub_26BB2EC48(v83, v29);
  sub_26BB3B49C(v40, v25, type metadata accessor for StockService.NetworkSession);
  sub_26BB28EE8();
  v43 = v42;
  if ((*(*(v42 - 8) + 48))(v25, 1, v42) != 1)
  {
    v51 = *(v25 + 1);

    (*(v11 + 32))(v85, &v25[*(v43 + 48)], v90);
    v52 = v41[13];
    sub_26BB7C9E8();
    v75 = v89;
    v76 = v88;
    v83 = __swift_project_boxed_opaque_existential_1(v87, v88);
    v53 = *(a6 + 16);
    if (v53)
    {
      v84 = v29;
      v73 = sub_26BB381B0(v53, 0);
      v54 = sub_26BB388DC(&v86, v73 + 4, v53, a6);

      result = sub_26BB3B7C4();
      if (v54 != v53)
      {
        goto LABEL_45;
      }

      v29 = v84;
      v39 = a9;
    }

    else
    {
      v73 = MEMORY[0x277D84F90];
    }

    v58 = v78;
    sub_26BB7BE38();
    v59 = sub_26BB7BDF8();
    v60 = *(v11 + 8);
    (v60)(v58, v90);
    v84 = v60;
    if (v59)
    {
      v61 = MEMORY[0x277D6CA20];
LABEL_19:
      v62 = v74;
LABEL_29:
      v67 = v81;
      v66 = v82;
      (*(v81 + 104))(v62, *v61, v82);
      v68 = v85;
      v69 = sub_26BB7C388();

      (*(v67 + 8))(v62, v66);
      (v84)(v68, v90);
      (*(v79 + 8))(v29, v80);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      return v69;
    }

    if (!v39)
    {
      v65 = sub_26BB7D578();
      v62 = v74;
      *v74 = v65;
      v61 = MEMORY[0x277D6CA40];
      goto LABEL_29;
    }

    if (v39 == 1)
    {
      v63 = sub_26BB7D578();
      v62 = v74;
      *v74 = v63;
    }

    else
    {
      if (v77 > 1)
      {
        v61 = MEMORY[0x277D6CA20];
        if (v77 ^ 2 | *(&v77 + 1))
        {
          v61 = MEMORY[0x277D6CA28];
        }

        goto LABEL_19;
      }

      if (v77 != 0)
      {
        v61 = MEMORY[0x277D6CA30];
        goto LABEL_19;
      }

      v62 = v74;
      *v74 = 60.0;
    }

    v61 = MEMORY[0x277D6CA48];
    goto LABEL_29;
  }

  v44 = v41[13];
  sub_26BB7C9E8();
  v45 = v88;
  v85 = v89;
  v46 = __swift_project_boxed_opaque_existential_1(v87, v88);
  v47 = *(a6 + 16);
  if (!v47)
  {
    goto LABEL_12;
  }

  v74 = v46;
  v76 = v45;
  LODWORD(v83) = a9;
  v84 = v29;
  v48 = sub_26BB381B0(v47, 0);
  v49 = sub_26BB388DC(&v86, v48 + 4, v47, a6);

  result = sub_26BB3B7C4();
  if (v49 == v47)
  {
    v29 = v84;
    v39 = v83;
LABEL_12:
    if (!v39)
    {
      v64 = sub_26BB7D578();
      v56 = v75;
      *v75 = v64;
      v57 = MEMORY[0x277D6CA40];
      goto LABEL_38;
    }

    if (v39 == 1)
    {
      v55 = sub_26BB7D578();
      v56 = v75;
      *v75 = v55;
LABEL_15:
      v57 = MEMORY[0x277D6CA48];
LABEL_38:
      v71 = v81;
      v70 = v82;
      (*(v81 + 104))(v56, *v57, v82);
      v72 = v78;
      sub_26BB7BE38();
      v69 = sub_26BB7C388();

      (*(v11 + 8))(v72, v90);
      (*(v71 + 8))(v56, v70);
      (*(v79 + 8))(v29, v80);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      return v69;
    }

    if (v77 > 1)
    {
      v57 = MEMORY[0x277D6CA20];
      if (v77 ^ 2 | *(&v77 + 1))
      {
        v57 = MEMORY[0x277D6CA28];
      }
    }

    else
    {
      if (v77 == 0)
      {
        v56 = v75;
        *v75 = 60.0;
        goto LABEL_15;
      }

      v57 = MEMORY[0x277D6CA30];
    }

    v56 = v75;
    goto LABEL_38;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_26BB321D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v9 = *a1;
  sub_26BB390BC(0, a5, a6, MEMORY[0x277D6CF30]);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v9;
  v10[5] = a2;

  return sub_26BB7CA48();
}

uint64_t sub_26BB32290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(type metadata accessor for QuoteDetail() - 8);
  v5[12] = v6;
  v7 = *(v6 + 64) + 15;
  v5[13] = swift_task_alloc();
  v8 = sub_26BB7C208();
  v5[14] = v8;
  v9 = *(v8 - 8);
  v5[15] = v9;
  v10 = *(v9 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v11 = *(*(sub_26BB7C378() - 8) + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB323E8, 0, 0);
}

uint64_t sub_26BB323E8()
{
  v57 = v0;
  if (qword_28158C2F8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v2 = *(v0 + 72);
    v1 = *(v0 + 80);
    v3 = sub_26BB7CB88();
    __swift_project_value_buffer(v3, qword_28158F140);

    v4 = sub_26BB7CB68();
    v5 = sub_26BB7CF78();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 112);
      v8 = *(v0 + 72);
      v7 = *(v0 + 80);
      v9 = *(v0 + 64);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v56 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_26BB38238(v9, v8, &v56);
      *(v10 + 12) = 2080;
      v12 = sub_26BB7CCC8();
      v14 = sub_26BB38238(v12, v13, &v56);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_26BB21000, v4, v5, "Quote detail fetch success for requestID: %s, result: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D68EA90](v11, -1, -1);
      MEMORY[0x26D68EA90](v10, -1, -1);
    }

    v15 = *(v0 + 120);
    v50 = *(v0 + 96);
    v52 = v0;
    v0 = *(v0 + 80);
    sub_26BB3B88C(0, &qword_280439EC0, type metadata accessor for QuoteDetail, MEMORY[0x277D84460]);
    v16 = sub_26BB7D1B8();
    v17 = v16;
    v18 = 0;
    v47 = v0 + 64;
    v19 = 1 << *(v0 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v0 + 64);
    v22 = (v19 + 63) >> 6;
    v49 = v0;
    v51 = v16;
    v48 = v16 + 64;
    if (!v21)
    {
      break;
    }

    while (1)
    {
      v23 = __clz(__rbit64(v21));
      v53 = (v21 - 1) & v21;
LABEL_13:
      v0 = v23 | (v18 << 6);
      v27 = v52[16];
      v26 = v52[17];
      v28 = v52[14];
      v54 = v52[13];
      v29 = (*(v49 + 48) + 16 * v0);
      v30 = v29[1];
      v55 = *v29;
      v31 = *(v15 + 16);
      v31(v26, *(v49 + 56) + *(v15 + 72) * v0, v28);
      v31(v27, v26, v28);

      sub_26BB69E34(v27, v54);
      (*(v15 + 8))(v26, v28);
      *(v48 + ((v0 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v0;
      v17 = v51;
      v32 = (v51[6] + 16 * v0);
      *v32 = v55;
      v32[1] = v30;
      sub_26BB3B268(v54, v51[7] + *(v50 + 72) * v0, type metadata accessor for QuoteDetail);
      v33 = v51[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v51[2] = v35;
      v21 = v53;
      if (!v53)
      {
        goto LABEL_8;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_8:
  v24 = v18;
  while (1)
  {
    v18 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v18 >= v22)
    {
      break;
    }

    v25 = *(v47 + 8 * v18);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v53 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  v37 = v52[17];
  v36 = v52[18];
  v38 = v52[16];
  v39 = v52[13];
  v40 = v52[7];
  v41 = v17;
  v42 = *(v52[11] + 72);
  sub_26BB7C9E8();
  v43 = v52[6];
  __swift_project_boxed_opaque_existential_1(v52 + 2, v52[5]);
  sub_26BB7C498();
  v44 = type metadata accessor for QuoteDetailResult();
  sub_26BB3EBA4(v36, (v40 + *(v44 + 20)));
  __swift_destroy_boxed_opaque_existential_1Tm(v52 + 2);
  *v40 = v41;

  v45 = v52[1];

  return v45();
}

uint64_t sub_26BB328F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a6;
  v38 = a4;
  v32 = a8;
  v33 = a9;
  v15 = sub_26BB7BE48();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20]();
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[1];
  v35 = *a2;
  v36 = v19;
  v37 = *(a2 + 16);
  v20 = *(v9 + 24);
  if (v20)
  {
    v32 = *(v9 + 16);
    (*(v16 + 16))(&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v15);
    v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = a7;
    v23 = swift_allocObject();
    *(v23 + 16) = v32;
    *(v23 + 24) = v20;
    (*(v16 + 32))(v23 + v21, v18, v15);
    *(v23 + v22) = a1;
    v24 = v23 + v31;
    v25 = v36;
    *v24 = v35;
    *(v24 + 8) = v25;
    *(v24 + 16) = v37;
    v26 = (v23 + ((v22 + 39) & 0xFFFFFFFFFFFFFFF8));
    *v26 = v38;
    v26[1] = a5;

    sub_26BB2F7AC(v33, v23);
  }

  else
  {
    v28 = swift_allocObject();
    v30 = v35;
    v29 = v36;
    *(v28 + 16) = a1;
    *(v28 + 24) = v30;
    *(v28 + 32) = v29;
    *(v28 + 40) = v37;
    *(v28 + 48) = v38;
    *(v28 + 56) = a5;

    sub_26BB2F7AC(v33, v28);
  }
}

uint64_t sub_26BB32B54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void *, char *, uint64_t, uint64_t))
{
  v14 = type metadata accessor for StockService.NetworkSession(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v21[0] = a2;
  v21[1] = a3;
  v22 = a4;
  sub_26BB28EE8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  a7(a1, v21, v17, a5, a6);
  return sub_26BB3B504(v17, type metadata accessor for StockService.NetworkSession);
}

uint64_t sub_26BB32CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, void *, char *, uint64_t, uint64_t))
{
  v27 = a7;
  v28 = a4;
  v29 = a10;
  v30 = a8;
  v15 = type metadata accessor for StockService.NetworkSession(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB28EE8();
  v20 = v19;
  v21 = *(v19 + 48);
  v22 = *(v19 + 64);
  *v18 = a1;
  *(v18 + 1) = a2;
  v23 = sub_26BB7BE48();
  (*(*(v23 - 8) + 16))(&v18[v21], a3, v23);
  *&v18[v22] = 0x40AC200000000000;
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v24 = qword_28158B710;

  if (v24 != -1)
  {
    swift_once();
  }

  v31[0] = a5;
  v31[1] = a6;
  v32 = v27;
  v29(v28, v31, v18, v30, a9);
  return sub_26BB3B504(v18, type metadata accessor for StockService.NetworkSession);
}

uint64_t StockService.fetchStockChart(for:range:cachePolicy:networkSession:completion:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v86 = a6;
  v87 = a7;
  v92 = a1;
  v85 = *v8;
  v13 = type metadata accessor for StockService.NetworkSession(0);
  v81 = *(v13 - 8);
  v14 = *(v81 + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v84 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v79 - v17;
  v19 = sub_26BB7BE78();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a3;
  v25 = *a4;
  v90 = a4[1];
  v91 = v25;
  LODWORD(v22) = *(a4 + 16);
  v88 = v24;
  v89 = v22;
  sub_26BB7BE68();
  v93 = sub_26BB7BE58();
  v27 = v26;
  (*(v20 + 8))(v23, v19);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v28 = sub_26BB7CB88();
  __swift_project_value_buffer(v28, qword_28158F140);
  sub_26BB3B49C(a5, v18, type metadata accessor for StockService.NetworkSession);

  v29 = sub_26BB7CB68();
  v30 = sub_26BB7CF78();

  v31 = os_log_type_enabled(v29, v30);
  v83 = a2;
  if (v31)
  {
    LODWORD(v80) = v30;
    v79 = a5;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v97 = v33;
    *v32 = 136316162;
    *(v32 + 4) = sub_26BB38238(v93, v27, &v97);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_26BB38238(v92, a2, &v97);
    *(v32 + 22) = 2080;
    if (v88 <= 4)
    {
      v44 = 0xE600000000000000;
      v45 = 0x796144656E6FLL;
      v46 = 0xE800000000000000;
      v47 = 0x68746E6F4D656E6FLL;
      v48 = 0xEB00000000736874;
      v49 = 0x6E6F4D6565726874;
      if (v88 != 3)
      {
        v49 = 0x68746E6F4D786973;
        v48 = 0xE900000000000073;
      }

      if (v88 != 2)
      {
        v47 = v49;
        v46 = v48;
      }

      if (v88)
      {
        v45 = 0x6B656557656E6FLL;
        v44 = 0xE700000000000000;
      }

      if (v88 <= 1)
      {
        v42 = v45;
      }

      else
      {
        v42 = v47;
      }

      if (v88 <= 1)
      {
        v43 = v44;
      }

      else
      {
        v43 = v46;
      }
    }

    else
    {
      v34 = 0x7261655965766966;
      v35 = 0xE900000000000073;
      v36 = 0xE800000000000000;
      v37 = 0x73726165596E6574;
      if (v88 != 9)
      {
        v37 = 7105633;
        v36 = 0xE300000000000000;
      }

      if (v88 != 8)
      {
        v34 = v37;
        v35 = v36;
      }

      v38 = 0xEA00000000006574;
      v39 = 0x61446F5472616579;
      v40 = 0xE700000000000000;
      v41 = 0x72616559656E6FLL;
      if (v88 != 6)
      {
        v41 = 0x73726165596F7774;
        v40 = 0xE800000000000000;
      }

      if (v88 != 5)
      {
        v39 = v41;
        v38 = v40;
      }

      if (v88 <= 7)
      {
        v42 = v39;
      }

      else
      {
        v42 = v34;
      }

      if (v88 <= 7)
      {
        v43 = v38;
      }

      else
      {
        v43 = v35;
      }
    }

    v50 = sub_26BB38238(v42, v43, &v97);

    *(v32 + 24) = v50;
    *(v32 + 32) = 2080;
    v94 = v91;
    v95 = v90;
    v96 = v89;
    v51 = StockService.CachePolicy.description.getter();
    v53 = sub_26BB38238(v51, v52, &v97);

    *(v32 + 34) = v53;
    *(v32 + 42) = 2080;
    v54 = StockService.NetworkSession.description.getter();
    v56 = v55;
    sub_26BB3B504(v18, type metadata accessor for StockService.NetworkSession);
    v57 = sub_26BB38238(v54, v56, &v97);

    *(v32 + 44) = v57;
    _os_log_impl(&dword_26BB21000, v29, v80, "Chart fetch started for requestID: %s, symbol: %s, range: %s, cachePolicy: %s, networkSession: %s", v32, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v33, -1, -1);
    MEMORY[0x26D68EA90](v32, -1, -1);

    a5 = v79;
  }

  else
  {

    sub_26BB3B504(v18, type metadata accessor for StockService.NetworkSession);
  }

  v80 = v8[6];
  v58 = swift_allocObject();
  v59 = v93;
  *(v58 + 16) = v93;
  *(v58 + 24) = v27;
  v60 = v59;
  sub_26BB7C268();

  sub_26BB7CAC8();

  v61 = v84;
  sub_26BB3B49C(a5, v84, type metadata accessor for StockService.NetworkSession);
  v62 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v63 = (v62 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v62 + v82 + 31) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  *(v65 + 16) = v60;
  *(v65 + 24) = v27;
  sub_26BB3B268(v61, v65 + v62, type metadata accessor for StockService.NetworkSession);
  v66 = v65 + v63;
  v67 = v92;
  v68 = v83;
  *v66 = v92;
  *(v66 + 8) = v68;
  *(v66 + 16) = v88;
  v69 = v65 + v64;
  v70 = v90;
  *v69 = v91;
  *(v69 + 8) = v70;
  *(v69 + 16) = v89;
  sub_26BB7C5C8();

  sub_26BB7CA58();

  v71 = swift_allocObject();
  v72 = v93;
  v71[2] = v93;
  v71[3] = v27;
  v71[4] = v67;
  v71[5] = v68;
  type metadata accessor for StockChartResult();

  sub_26BB7CA58();

  v73 = v8[7];
  v74 = swift_allocObject();
  v76 = v86;
  v75 = v87;
  *(v74 + 16) = v86;
  *(v74 + 24) = v75;

  sub_26BB7CA68();

  v77 = swift_allocObject();
  v77[2] = v72;
  v77[3] = v27;
  v77[4] = v76;
  v77[5] = v75;

  sub_26BB7CA78();
}

uint64_t sub_26BB336E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, char a10)
{
  v93 = a6;
  v84 = a5;
  v85 = a8;
  v94 = a7;
  v80 = a3;
  v99 = sub_26BB7BE48();
  v97 = *(v99 - 8);
  v12 = *(v97 + 8);
  v13 = MEMORY[0x28223BE20](v99);
  v88 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v77 - v15;
  v17 = sub_26BB7C868();
  v95 = *(v17 - 8);
  v96 = v17;
  v18 = *(v95 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v82 = (&v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v81 = (&v77 - v21);
  v22 = sub_26BB7C018();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v87 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v86 = &v77 - v27;
  v28 = type metadata accessor for StockService.NetworkSession(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_26BB7C888();
  v90 = *(v32 - 8);
  v91 = v32;
  v33 = *(v90 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = (&v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v83 = a9;
  v36 = sub_26BB7CB88();
  __swift_project_value_buffer(v36, qword_28158F140);

  v37 = sub_26BB7CB68();
  v38 = sub_26BB7CF78();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v79 = v16;
    v78 = v35;
    v40 = v22;
    v41 = v39;
    v42 = a2;
    v43 = v23;
    v44 = swift_slowAlloc();
    v98[0] = v44;
    *v41 = 136315138;
    *(v41 + 4) = sub_26BB38238(v80, a4, v98);
    _os_log_impl(&dword_26BB21000, v37, v38, "Firing chart fetch for requestID: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v45 = v44;
    v23 = v43;
    a2 = v42;
    MEMORY[0x26D68EA90](v45, -1, -1);
    v46 = v41;
    v22 = v40;
    v35 = v78;
    v16 = v79;
    MEMORY[0x26D68EA90](v46, -1, -1);
  }

  v47 = v84;
  sub_26BB2EC48(v84, v35);
  sub_26BB3B49C(v47, v31, type metadata accessor for StockService.NetworkSession);
  sub_26BB28EE8();
  v49 = v48;
  v50 = (*(*(v48 - 8) + 48))(v31, 1, v48);
  v92 = v23;
  v89 = v22;
  if (v50 != 1)
  {
    v52 = v35;
    v56 = *(v31 + 1);

    v57 = *(v49 + 48);
    v58 = a2;
    v59 = v97;
    v60 = v99;
    (*(v97 + 4))(v88, &v31[v57], v99);
    v61 = *(v58 + 112);
    sub_26BB7C9E8();
    v86 = v98[1];
    (*(v23 + 104))(v87, **(&unk_279D1C860 + v85), v22);
    sub_26BB7BE38();
    v62 = sub_26BB7BDF8();
    v63 = *(v59 + 1);
    v63(v16, v60);
    v97 = v63;
    if (v62)
    {
      v64 = MEMORY[0x277D6CA20];
      v65 = v82;
    }

    else if (a10)
    {
      v65 = v82;
      if (a10 == 1)
      {
        *v65 = sub_26BB7D578();
      }

      else
      {
        if (v83 > 1)
        {
          v64 = MEMORY[0x277D6CA20];
          if (v83 ^ 2 | *(&v83 + 1))
          {
            v64 = MEMORY[0x277D6CA28];
          }

          goto LABEL_33;
        }

        if (v83 != 0)
        {
          v64 = MEMORY[0x277D6CA30];
          goto LABEL_33;
        }

        *v82 = 60.0;
      }

      v64 = MEMORY[0x277D6CA48];
    }

    else
    {
      v67 = sub_26BB7D578();
      v65 = v82;
      *v82 = v67;
      v64 = MEMORY[0x277D6CA40];
    }

LABEL_33:
    v73 = v95;
    v72 = v96;
    (*(v95 + 104))(v65, *v64, v96);
    swift_getObjectType();
    v74 = v87;
    v75 = v88;
    v71 = sub_26BB7C278();
    swift_unknownObjectRelease();
    (*(v73 + 8))(v65, v72);
    (*(v92 + 8))(v74, v89);
    v97(v75, v99);
    goto LABEL_34;
  }

  v51 = *(a2 + 112);
  sub_26BB7C9E8();
  (*(v23 + 104))(v86, **(&unk_279D1C860 + v85), v22);
  if (a10)
  {
    if (a10 == 1)
    {
      v52 = v35;
      v53 = sub_26BB7D578();
      v54 = v81;
      *v81 = v53;
    }

    else
    {
      if (v83 > 1)
      {
        v52 = v35;
        v55 = MEMORY[0x277D6CA20];
        if (v83 ^ 2 | *(&v83 + 1))
        {
          v55 = MEMORY[0x277D6CA28];
        }

        v54 = v81;
        goto LABEL_28;
      }

      v54 = v81;
      v52 = v35;
      if (v83 != 0)
      {
        v55 = MEMORY[0x277D6CA30];
        goto LABEL_28;
      }

      *v81 = 60.0;
    }

    v55 = MEMORY[0x277D6CA48];
  }

  else
  {
    v52 = v35;
    v66 = sub_26BB7D578();
    v54 = v81;
    *v81 = v66;
    v55 = MEMORY[0x277D6CA40];
  }

LABEL_28:
  v69 = v95;
  v68 = v96;
  (*(v95 + 104))(v54, *v55, v96);
  swift_getObjectType();
  sub_26BB7BE38();
  v70 = v86;
  v71 = sub_26BB7C278();
  swift_unknownObjectRelease();
  (*(v97 + 1))(v16, v99);
  (*(v69 + 8))(v54, v68);
  (*(v92 + 8))(v70, v89);
LABEL_34:
  (*(v90 + 8))(v52, v91);
  return v71;
}

uint64_t sub_26BB33FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a2;
  v23 = a5;
  v21 = a3;
  v9 = sub_26BB7C5C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB390BC(0, &qword_280439EA8, type metadata accessor for StockChartResult, MEMORY[0x277D6CF30]);
  v20 = v13;
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = a4;
  (*(v10 + 32))(v16 + v14, v12, v9);
  v17 = (v16 + v15);
  v18 = v22;
  *v17 = v23;
  v17[1] = a6;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;

  return sub_26BB7CA48();
}

uint64_t sub_26BB34184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  v8 = *(*(sub_26BB7C378() - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v9 = sub_26BB7C5C8();
  v7[15] = v9;
  v10 = *(v9 - 8);
  v7[16] = v10;
  v11 = *(v10 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB34288, 0, 0);
}

uint64_t sub_26BB34288()
{
  v38 = v0;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[9];
  v4 = v0[10];
  v6 = sub_26BB7CB88();
  __swift_project_value_buffer(v6, qword_28158F140);
  v7 = *(v3 + 16);
  v7(v1, v4, v2);

  v8 = sub_26BB7CB68();
  v9 = sub_26BB7CF78();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  if (v10)
  {
    v15 = v0[8];
    v14 = v0[9];
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v16 = 136315394;
    *(v16 + 4) = sub_26BB38238(v15, v14, &v37);
    *(v16 + 12) = 2080;
    v17 = sub_26BB7C5A8();
    v18 = sub_26BB7C598();
    v19 = MEMORY[0x26D68DD10](v17, v18);
    v35 = v9;
    v20 = v7;
    v22 = v21;

    (*(v12 + 8))(v11, v13);
    v23 = sub_26BB38238(v19, v22, &v37);
    v7 = v20;

    *(v16 + 14) = v23;
    _os_log_impl(&dword_26BB21000, v8, v35, "Chart fetch success for requestID: %s, result: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v36, -1, -1);
    MEMORY[0x26D68EA90](v16, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v24 = v0[17];
  v25 = v0[14];
  v26 = v0[12];
  v27 = v0[13];
  v28 = v0[11];
  v29 = v0[7];
  v7(v24, v0[10], v0[15]);

  sub_26BB6E79C(v28, v26, v24, v29);
  v30 = *(v27 + 72);
  sub_26BB7C9E8();
  v31 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_26BB7C498();
  v32 = type metadata accessor for StockChartResult();
  sub_26BB3EBA4(v25, (v29 + *(v32 + 20)));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v33 = v0[1];

  return v33();
}

uint64_t sub_26BB345AC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  sub_26BB3BBE8(0, a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v17 - v14;
  sub_26BB3B49C(a1, v17 - v14, a7);
  swift_storeEnumTagMultiPayload();
  a3(v15);
  return sub_26BB3B564(v15, a5, a6);
}

uint64_t sub_26BB34698(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, unint64_t *a6, void (*a7)(uint64_t), const char *a8)
{
  v35 = a8;
  v36 = a5;
  v8 = a7;
  v34 = a2;
  sub_26BB3BBE8(0, a6, a7);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v17 = sub_26BB7CB88();
  __swift_project_value_buffer(v17, qword_28158F140);

  v18 = a1;
  v19 = sub_26BB7CB68();
  v20 = sub_26BB7CF68();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v33 = v8;
    v24 = v23;
    v37 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_26BB38238(v34, a3, &v37);
    *(v22 + 12) = 2080;
    swift_getErrorValue();
    v25 = sub_26BB7D3C8();
    v27 = sub_26BB38238(v25, v26, &v37);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_26BB21000, v19, v20, v35, v22, 0x16u);
    swift_arrayDestroy();
    v28 = v24;
    v8 = v33;
    MEMORY[0x26D68EA90](v28, -1, -1);
    v29 = v22;
    a4 = v32;
    MEMORY[0x26D68EA90](v29, -1, -1);
  }

  *v16 = a1;
  *(v16 + 1) = 0;
  v16[16] = 1;
  swift_storeEnumTagMultiPayload();
  v30 = a1;
  a4(v16);
  return sub_26BB3B564(v16, a6, v8);
}

uint64_t StockService.fetchStockChart(for:range:cachePolicy:earliestBeginDate:completion:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v36 = a6;
  v13 = sub_26BB7BE48();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v32 = *a3;
  v16 = a4[1];
  v33 = *a4;
  v34 = v16;
  v17 = *(a4 + 16);
  v18 = *(v7 + 24);
  if (v18)
  {
    v31 = a7;
    v29 = *(v7 + 16);
    (*(v14 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
    v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v30 = v17;
    v20 = swift_allocObject();
    *(v20 + 16) = v29;
    *(v20 + 24) = v18;
    (*(v14 + 32))(v20 + v19, &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    v21 = v20 + ((v19 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v21 = v35;
    *(v21 + 8) = a2;
    *(v21 + 16) = v32;
    v22 = v20 + ((v19 + v15 + 31) & 0xFFFFFFFFFFFFFFF8);
    v23 = v34;
    *v22 = v33;
    *(v22 + 8) = v23;
    *(v22 + 16) = v30;
    v24 = (v20 + ((v19 + v15 + 55) & 0xFFFFFFFFFFFFFFF8));
    v25 = v31;
    *v24 = v36;
    v24[1] = v25;

    sub_26BB2F7AC(sub_26BB3A09C, v20);
  }

  else
  {
    v27 = swift_allocObject();
    *(v27 + 16) = v35;
    *(v27 + 24) = a2;
    *(v27 + 32) = v32;
    v28 = v34;
    *(v27 + 40) = v33;
    *(v27 + 48) = v28;
    *(v27 + 56) = v17;
    *(v27 + 64) = v36;
    *(v27 + 72) = a7;

    sub_26BB2F7AC(sub_26BB3A15C, v27);
  }
}

uint64_t sub_26BB34B9C(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for StockService.NetworkSession(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v23[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v25 = a3;
  v23[0] = a4;
  v23[1] = a5;
  v24 = a6;
  sub_26BB28EE8();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  StockService.fetchStockChart(for:range:cachePolicy:networkSession:completion:)(a1, a2, &v25, v23, v19, a7, a8);
  return sub_26BB3B504(v19, type metadata accessor for StockService.NetworkSession);
}

uint64_t sub_26BB34D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v30 = a4;
  v31 = a5;
  v29 = a11;
  v27 = a8;
  v28 = a10;
  v16 = type metadata accessor for StockService.NetworkSession(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB28EE8();
  v21 = v20;
  v22 = *(v20 + 48);
  v23 = *(v20 + 64);
  *v19 = a1;
  *(v19 + 1) = a2;
  v24 = sub_26BB7BE48();
  (*(*(v24 - 8) + 16))(&v19[v22], a3, v24);
  *&v19[v23] = 0x40AC200000000000;
  (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
  v25 = qword_28158B710;

  if (v25 != -1)
  {
    swift_once();
  }

  v34 = a6;
  v32[0] = a7;
  v32[1] = v27;
  v33 = a9;
  StockService.fetchStockChart(for:range:cachePolicy:networkSession:completion:)(v30, v31, &v34, v32, v19, v28, v29);
  return sub_26BB3B504(v19, type metadata accessor for StockService.NetworkSession);
}

uint64_t StockService.fetchCurrencyConversions(cachePolicy:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 120) = a5;
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v8 = sub_26BB7D178();
  *(v6 + 48) = v8;
  v9 = *(v8 - 8);
  *(v6 + 56) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 64) = swift_task_alloc();
  sub_26BB390BC(0, &qword_28158BB50, MEMORY[0x277D858F8], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = *a2;
  *(v6 + 121) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_26BB35008, 0, 0);
}

uint64_t sub_26BB35008()
{
  if (*(v0 + 120))
  {
    v1 = 1;
    v2 = 1;
  }

  else
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    sub_26BB7D158();
    sub_26BB7D168();
    (*(v6 + 8))(v3, v5);
    v2 = 0;
    v1 = *(v0 + 120);
  }

  v9 = *(v0 + 121);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 72);
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);
  v15 = *(v0 + 24);
  (*(*(v0 + 56) + 56))(v12, v2, 1, *(v0 + 48));
  v16 = swift_task_alloc();
  *(v0 + 96) = v16;
  *(v16 + 16) = v12;
  *(v16 + 24) = v11;
  *(v16 + 32) = v10;
  *(v16 + 40) = v9;
  *(v16 + 48) = v15;
  *(v16 + 56) = v14;
  *(v16 + 64) = v1 & 1;
  *(v16 + 72) = v13;
  v17 = *(MEMORY[0x277D6CB70] + 4);
  v18 = swift_task_alloc();
  *(v0 + 104) = v18;
  v19 = type metadata accessor for CurrencyConversionsResult();
  *v18 = v0;
  v18[1] = sub_26BB351AC;
  v20 = *(v0 + 16);

  return MEMORY[0x2821D1B50](v20, "StockService.fetchCurrencyConversions", 37, 2, &unk_26BB7E088, v16, v19);
}

uint64_t sub_26BB351AC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_26BB3BF3C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_26BB3BF1C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BB352C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = v17;
  *(v8 + 74) = a8;
  *(v8 + 120) = a4;
  *(v8 + 128) = a6;
  *(v8 + 73) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = sub_26BB7C968();
  *(v8 + 152) = v9;
  v10 = *(v9 - 8);
  *(v8 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v12 = sub_26BB7D188();
  *(v8 + 192) = v12;
  v13 = *(v12 - 8);
  *(v8 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB35418, 0, 0);
}

uint64_t sub_26BB35418()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 74);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 73);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  sub_26BB7D3B8();
  v10 = swift_task_alloc();
  *(v0 + 216) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  *(v10 + 48) = v4;
  *(v10 + 56) = v2 & 1;
  *(v10 + 64) = v3;
  *(v10 + 72) = v9;
  v11 = *(MEMORY[0x277D6CC50] + 4);
  v12 = swift_task_alloc();
  *(v0 + 224) = v12;
  v13 = type metadata accessor for CurrencyConversionsResult();
  v14 = sub_26BB3BE9C(&qword_28158B200, MEMORY[0x277D85928]);
  *v12 = v0;
  v12[1] = sub_26BB3557C;
  v15 = *(v0 + 208);
  v16 = *(v0 + 192);
  v17 = *(v0 + 96);
  v18 = *(v0 + 104);

  return MEMORY[0x2821D1D98](v17, v18, v15, &unk_26BB7E9E0, v10, v16, v13, v14);
}

uint64_t sub_26BB3557C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  v2[29] = v0;

  v5 = v2[27];
  (*(v2[25] + 8))(v2[26], v2[24]);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB35760, 0, 0);
  }

  else
  {
    v6 = v2[26];
    v8 = v2[22];
    v7 = v2[23];
    v9 = v2[21];

    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_26BB35760()
{
  v68 = v0;
  v1 = *(v0 + 232);
  *(v0 + 80) = v1;
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = v1;
  sub_26BB287D8(0, &qword_28158BB40);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 232);
  if (v5)
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 160);
    v9 = *(v0 + 168);
    v10 = *(v0 + 152);

    (*(v8 + 32))(v7, v9, v10);
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = sub_26BB7CB88();
    __swift_project_value_buffer(v15, qword_28158F140);
    (*(v13 + 16))(v12, v11, v14);
    v16 = sub_26BB7CB68();
    v17 = sub_26BB7CF68();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 176);
    v20 = *(v0 + 152);
    v21 = *(v0 + 160);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = v65;
      *v22 = 136315138;
      v63 = sub_26BB7C958();
      v64 = v17;
      v24 = v23;
      v25 = *(v21 + 8);
      v25(v19, v20);
      v26 = sub_26BB38238(v63, v24, &v67);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_26BB21000, v16, v64, "Currencies fetch timed out before it could complete: %s.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x26D68EA90](v65, -1, -1);
      MEMORY[0x26D68EA90](v22, -1, -1);
    }

    else
    {

      v25 = *(v21 + 8);
      v25(v19, v20);
    }

    v27 = *(v0 + 184);
    v28 = *(v0 + 152);
    sub_26BB3B148();
    v6 = swift_allocError();
    *v29 = 0;
    *(v29 + 8) = 0;
    *(v29 + 16) = 2;
    swift_willThrow();
    v25(v27, v28);
  }

  *(v0 + 88) = v6;
  v30 = v6;
  if (!swift_dynamicCast())
  {
    goto LABEL_19;
  }

  v32 = *(v0 + 56);
  v31 = *(v0 + 64);
  v33 = *(v0 + 72);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v34 = sub_26BB7CB88();
  __swift_project_value_buffer(v34, qword_28158F140);
  sub_26BB3B21C(v32, v31, v33);
  v35 = sub_26BB7CB68();
  v36 = sub_26BB7CF78();
  sub_26BB3B23C(v32, v31, v33);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v66 = v32;
    v38 = v31;
    v39 = v33;
    v40 = swift_slowAlloc();
    *v37 = 138543362;
    sub_26BB3B148();
    swift_allocError();
    *v41 = v66;
    *(v41 + 8) = v38;
    *(v41 + 16) = v39;
    sub_26BB3B21C(v66, v38, v39);
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v42;
    *v40 = v42;
    _os_log_impl(&dword_26BB21000, v35, v36, "Currencies fetch failed with error: %{public}@", v37, 0xCu);
    sub_26BB3B504(v40, sub_26BB3B3EC);
    v43 = v40;
    v33 = v39;
    v31 = v38;
    v32 = v66;
    MEMORY[0x26D68EA90](v43, -1, -1);
    MEMORY[0x26D68EA90](v37, -1, -1);
  }

  v44 = *(v0 + 73);

  if (v44 >= 2 && !(*(v0 + 112) ^ 2 | *(v0 + 120)))
  {
    sub_26BB3B148();
    swift_allocError();
    *v45 = v32;
    *(v45 + 8) = v31;
    *(v45 + 16) = v33;
    swift_willThrow();
LABEL_19:
    v53 = *(v0 + 208);
    v55 = *(v0 + 176);
    v54 = *(v0 + 184);
    v56 = *(v0 + 168);

    v62 = *(v0 + 8);
    goto LABEL_20;
  }

  v46 = (v0 + 16);
  v47 = sub_26BB7CB68();
  v48 = sub_26BB7CF78();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_26BB21000, v47, v48, "Returning bundled static data.", v49, 2u);
    MEMORY[0x26D68EA90](v49, -1, -1);
  }

  v50 = *(v0 + 144);
  v51 = *(v0 + 96);

  v52 = *(v50 + 128);
  sub_26BB7C9E8();
  __swift_project_boxed_opaque_existential_1(v46, *(v0 + 40));
  sub_26BB3C590(v51);
  sub_26BB3B23C(v32, v31, v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);

  v58 = *(v0 + 208);
  v59 = *(v0 + 176);
  v60 = *(v0 + 184);
  v61 = *(v0 + 168);

  v62 = *(v0 + 8);
LABEL_20:

  return v62();
}

uint64_t sub_26BB35EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 128) = a8;
  *(v8 + 136) = v16;
  *(v8 + 74) = a7;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 73) = a4;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = sub_26BB7CE88();
  *(v8 + 144) = v9;
  v10 = *(v9 - 8);
  *(v8 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v12 = type metadata accessor for CurrencyConversionsResult();
  *(v8 + 176) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB35FE4, 0, 0);
}

uint64_t sub_26BB35FE4()
{
  v34 = v0;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v1 = sub_26BB7CB88();
  *(v0 + 208) = __swift_project_value_buffer(v1, qword_28158F140);
  v2 = sub_26BB7CB68();
  v3 = sub_26BB7CF78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 74);
    v5 = *(v0 + 73);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32[0] = v9;
    v32[1] = v7;
    *v8 = 136315394;
    v32[2] = v6;
    v33 = v5;
    v10 = StockService.CachePolicy.description.getter();
    v12 = sub_26BB38238(v10, v11, v32);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    if (v4)
    {
      v13 = 0xE400000000000000;
      v14 = 1701736302;
    }

    else
    {
      v15 = *(v0 + 112);
      v16 = *(v0 + 120);
      v14 = sub_26BB7D558();
      v13 = v17;
    }

    v18 = sub_26BB38238(v14, v13, v32);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_26BB21000, v2, v3, "Currencies fetch started, cachePolicy: %s, timeout: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v9, -1, -1);
    MEMORY[0x26D68EA90](v8, -1, -1);
  }

  v19 = *(v0 + 73);
  v21 = *(v0 + 96);
  v20 = *(v0 + 104);
  v22 = *(*(v0 + 128) + 120);
  sub_26BB7C9E8();
  v23 = *(v0 + 40);
  v24 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
  *(v0 + 56) = v21;
  *(v0 + 64) = v20;
  *(v0 + 72) = v19;
  v25 = *(v24 + 16);
  v31 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 216) = v27;
  *v27 = v0;
  v27[1] = sub_26BB362D0;
  v28 = *(v0 + 136);
  v29 = *(v0 + 88);

  return v31(v29, v0 + 56, v28, v23, v24);
}

uint64_t sub_26BB362D0()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_26BB366E8;
  }

  else
  {
    v3 = sub_26BB363E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BB363E4()
{
  v33 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[11];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_26BB3B49C(v5, v1, type metadata accessor for CurrencyConversionsResult);
  sub_26BB3B49C(v5, v3, type metadata accessor for CurrencyConversionsResult);
  sub_26BB3B49C(v5, v4, type metadata accessor for CurrencyConversionsResult);
  v6 = sub_26BB7CB68();
  v7 = sub_26BB7CF78();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  v10 = v0[25];
  v11 = v0[23];
  if (v8)
  {
    v12 = v0[22];
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v13 = 134349570;
    v14 = *(*v10 + 16);
    sub_26BB3B504(v10, type metadata accessor for CurrencyConversionsResult);
    *(v13 + 4) = v14;
    *(v13 + 12) = 2082;
    v15 = (v9 + *(v12 + 20));
    v16 = *v15;
    v17 = v15[1];

    sub_26BB3B504(v9, type metadata accessor for CurrencyConversionsResult);
    v18 = sub_26BB38238(v16, v17, &v32);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2082;
    v19 = *(v12 + 24);
    sub_26BB7BE48();
    sub_26BB3BE9C(&qword_28158C320, MEMORY[0x277CC9578]);
    v20 = sub_26BB7D348();
    v22 = v21;
    sub_26BB3B504(v11, type metadata accessor for CurrencyConversionsResult);
    v23 = sub_26BB38238(v20, v22, &v32);

    *(v13 + 24) = v23;
    _os_log_impl(&dword_26BB21000, v6, v7, "Currencies fetch succeeded, conversions: %{public}ld, source: %{public}s, createdAt: %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v31, -1, -1);
    MEMORY[0x26D68EA90](v13, -1, -1);
  }

  else
  {
    sub_26BB3B504(v0[25], type metadata accessor for CurrencyConversionsResult);

    sub_26BB3B504(v11, type metadata accessor for CurrencyConversionsResult);
    sub_26BB3B504(v9, type metadata accessor for CurrencyConversionsResult);
  }

  v25 = v0[24];
  v24 = v0[25];
  v26 = v0[23];
  v28 = v0[20];
  v27 = v0[21];

  v29 = v0[1];

  return v29();
}

uint64_t sub_26BB366E8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v0 + 80) = v1;
  v4 = v1;
  sub_26BB287D8(0, &qword_28158BB40);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 224);
  v7 = *(v0 + 208);
  if (v5)
  {
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);

    (*(v11 + 32))(v8, v9, v10);
    v12 = sub_26BB7CB68();
    v13 = sub_26BB7CF68();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26BB21000, v12, v13, "Currencies fetch for was cancelled before it could complete.", v14, 2u);
      MEMORY[0x26D68EA90](v14, -1, -1);
    }

    v15 = *(v0 + 168);
    v16 = *(v0 + 144);
    v17 = *(v0 + 152);

    sub_26BB3BE9C(&qword_280439E98, MEMORY[0x277D85678]);
    swift_allocError();
    (*(v17 + 16))(v18, v15, v16);
    swift_willThrow();
    (*(v17 + 8))(v15, v16);
  }

  else
  {

    v19 = v6;
    v20 = sub_26BB7CB68();
    v21 = sub_26BB7CF68();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 224);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      v25 = v22;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_26BB21000, v20, v21, "Currencies fetch failed, error: %{public}@", v23, 0xCu);
      sub_26BB3B504(v24, sub_26BB3B3EC);
      MEMORY[0x26D68EA90](v24, -1, -1);
      MEMORY[0x26D68EA90](v23, -1, -1);
    }

    v27 = *(v0 + 224);

    sub_26BB3B148();
    swift_allocError();
    *v28 = v27;
    *(v28 + 8) = 0;
    *(v28 + 16) = 1;
    swift_willThrow();
  }

  v30 = *(v0 + 192);
  v29 = *(v0 + 200);
  v31 = *(v0 + 184);
  v33 = *(v0 + 160);
  v32 = *(v0 + 168);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t StockService.fetchCurrencyConversions(cachePolicy:timeout:networkSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v7 = sub_26BB7D178();
  *(v5 + 48) = v7;
  v8 = *(v7 - 8);
  *(v5 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  sub_26BB390BC(0, &qword_28158BB50, MEMORY[0x277D858F8], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = *a2;
  *(v5 + 120) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_26BB36B74, 0, 0);
}

uint64_t sub_26BB36B74()
{
  v16 = *(v0 + 120);
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  if (sub_26BB7D588())
  {
    v9 = 0x158E460913D00000;
    v7 = 1;
  }

  sub_26BB7D158();
  sub_26BB7D168();
  (*(v6 + 8))(v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *(v10 + 16) = v3;
  *(v10 + 24) = v2;
  *(v10 + 32) = v1;
  *(v10 + 40) = v16;
  *(v10 + 48) = v9;
  *(v10 + 56) = v7;
  *(v10 + 64) = 0;
  *(v10 + 72) = v8;
  v11 = *(MEMORY[0x277D6CB70] + 4);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  v13 = type metadata accessor for CurrencyConversionsResult();
  *v12 = v0;
  v12[1] = sub_26BB36D30;
  v14 = *(v0 + 16);

  return MEMORY[0x2821D1B50](v14, "StockService.fetchCurrencyConversions", 37, 2, &unk_26BB7E098, v10, v13);
}

uint64_t sub_26BB36D30()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_26BB36EE0;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_26BB36E4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BB36E4C()
{
  v1 = v0[8];
  sub_26BB3A268(v0[9], &qword_28158BB50, MEMORY[0x277D858F8]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26BB36EE0()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];

  sub_26BB3A268(v3, &qword_28158BB50, MEMORY[0x277D858F8]);

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t StockService.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  v9 = *(v0 + 120);

  v10 = *(v0 + 128);

  sub_26BB3A268(v0 + OBJC_IVAR____TtC9StocksKit12StockService____lazy_storage___networkProxy, &qword_28158BA58, MEMORY[0x277D6CAC8]);
  return v0;
}

uint64_t StockService.__deallocating_deinit()
{
  StockService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t StockService.observeFetchSessionDidFinish(keepAliveObject:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  swift_unknownObjectRetain();

  sub_26BB2F7AC(sub_26BB3A2D8, v6);
}

uint64_t sub_26BB37118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v5 = off_28158B718;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = v5[5];

  sub_26BB7C9C8();
}

uint64_t sub_26BB37208()
{
  v0 = type metadata accessor for StockService.NetworkSession(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_26BB7C888();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  sub_26BB28EE8();
  v10 = v9;
  v11 = *(v9 + 48);
  v12 = *(v9 + 64);
  *v3 = 0xD000000000000024;
  v3[1] = 0x800000026BB83160;
  sub_26BB7BE38();
  *(v3 + v12) = 0x40AC200000000000;
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  sub_26BB2EC48(v3, v8);
  sub_26BB3B504(v3, type metadata accessor for StockService.NetworkSession);
  return (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall StockService.reestablishBackgroundSession(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v3 = type metadata accessor for StockService.NetworkSession(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_26BB7C888();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BB28EE8();
  v13 = v12;
  v14 = *(v12 + 48);
  v15 = *(v12 + 64);
  *v6 = countAndFlagsBits;
  v6[1] = object;

  sub_26BB7BE38();
  *(v6 + v15) = 0x40AC200000000000;
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  sub_26BB2EC48(v6, v11);
  sub_26BB3B504(v6, type metadata accessor for StockService.NetworkSession);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_26BB375A4()
{
  v0 = [objc_opt_self() defaultsForCurrentCountry];
  v1 = [v0 defaultSymbols];

  v2 = sub_26BB7CDF8();
  return v2;
}

uint64_t StockService.fetchDefaultWatchlist(cachePolicy:networkSession:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = [objc_opt_self() defaultsForCurrentCountry];
  v11 = [v10 defaultSymbols];

  v12 = sub_26BB7CDF8();
  v15[0] = v7;
  v15[1] = v8;
  v16 = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  StockService.fetchStocks(for:cachePolicy:networkSession:completion:)(v12, v15, a2, sub_26BB3A2E4, v13);
}

uint64_t StockService.fetchDefaultWatchlist(cachePolicy:earliestBeginDate:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20 = *v4;
  v7 = sub_26BB7BE48();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  LOBYTE(a1) = *(a1 + 16);
  (*(v8 + 16))(v10, a2, v7);
  v13 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  *(v15 + 32) = a1;
  (*(v8 + 32))(v15 + v13, v10, v7);
  v16 = (v15 + v14);
  v17 = v22;
  *v16 = v21;
  v16[1] = v17;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;

  sub_26BB2F7AC(sub_26BB3A300, v15);
}

uint64_t sub_26BB378F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v41 = a3;
  v42 = a1;
  v43 = a2;
  v8 = sub_26BB7BE48();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v10 = off_28158B718;
  v11 = objc_opt_self();
  v12 = [v11 defaultsForCurrentCountry];
  v13 = [v12 defaultSymbols];

  v14 = sub_26BB7CDF8();
  v15 = [v11 defaultsForCurrentCountry];
  v16 = [v15 defaultSymbols];

  v17 = sub_26BB7CDF8();
  v44 = v14;
  sub_26BB387E8(v17);
  v18 = v44;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  v20 = v10[3];
  if (v20)
  {
    v36[0] = v10[2];
    v21 = v38;
    v22 = v39;
    v23 = *(v39 + 16);
    v24 = v37;
    v38 = v18;
    v25 = v40;
    v23(v37, v21, v40);
    v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v27 = (v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36[1] = a6;
    v28 = swift_allocObject();
    *(v28 + 16) = v36[0];
    *(v28 + 24) = v20;
    (*(v22 + 32))(v28 + v26, v24, v25);
    *(v28 + v27) = v38;
    v29 = v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = v43;
    *v29 = v42;
    *(v29 + 8) = v30;
    *(v29 + 16) = v41;
    v31 = (v28 + ((v27 + 39) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_26BB3BF40;
    v31[1] = v19;

    sub_26BB2F7AC(sub_26BB3BF14, v28);
  }

  else
  {
    v33 = swift_allocObject();
    v35 = v42;
    v34 = v43;
    *(v33 + 16) = v18;
    *(v33 + 24) = v35;
    *(v33 + 32) = v34;
    *(v33 + 40) = v41;
    *(v33 + 48) = sub_26BB3BF40;
    *(v33 + 56) = v19;

    sub_26BB2F7AC(sub_26BB3BF18, v33);
  }
}

void sub_26BB37C90(uint64_t a1, void (*a2)(void **))
{
  v4 = type metadata accessor for StockResult();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BB3BBE8(0, &qword_280439E88, type metadata accessor for StockResult);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  sub_26BB3B19C(a1, &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = v11[16];
    v16 = v12;
    v17 = v13;
    LOBYTE(v18) = v14;
    HIBYTE(v18) = 1;
    sub_26BB3B21C(v12, v13, v14);
    a2(&v16);
    sub_26BB3B23C(v12, v13, v14);
    sub_26BB3B25C(v16, v17, v18, SHIBYTE(v18));
  }

  else
  {
    sub_26BB3B268(v11, v7, type metadata accessor for StockResult);
    v16 = *v7;
    v17 = 0;
    v18 = 0;

    a2(&v16);
    sub_26BB3B25C(v16, v17, v18, SHIBYTE(v18));
    sub_26BB3B504(v7, type metadata accessor for StockResult);
  }
}

uint64_t sub_26BB37E58(uint64_t a1, uint64_t a2)
{
  sub_26BB7CE98();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_26BB3B948();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_26BB7D098();
    MEMORY[0x26D68DCA0](0xD00000000000003FLL, 0x800000026BB831C0);
    v8 = sub_26BB7D5F8();
    MEMORY[0x26D68DCA0](v8);

    MEMORY[0x26D68DCA0](46, 0xE100000000000000);
    result = sub_26BB7D198();
    __break(1u);
  }

  return result;
}

uint64_t sub_26BB37FE0(uint64_t a1, uint64_t a2)
{
  sub_26BB7CEA8();
  v5[2] = a1;
  v5[3] = a2;
  return sub_26BB37E58(sub_26BB3BEE4, v5);
}

uint64_t sub_26BB3805C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

char *sub_26BB380A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_26BB3BDBC(0, &qword_280439E90);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26BB381B0(uint64_t a1, uint64_t a2)
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

  sub_26BB3BDBC(0, &qword_280439E90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_26BB38238(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26BB38304(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26BB3BD60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_26BB38304(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26BB38410(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_26BB7D108();
    a6 = v11;
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

uint64_t sub_26BB38410(uint64_t a1, unint64_t a2)
{
  v4 = sub_26BB3845C(a1, a2);
  sub_26BB3858C(&unk_287C82E20);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26BB3845C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26BB38678(v5, 0);
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

  result = sub_26BB7D108();
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
        v10 = sub_26BB7CDB8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26BB38678(v10, 0);
        result = sub_26BB7D088();
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

uint64_t sub_26BB3858C(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26BB386F0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26BB38678(uint64_t a1, uint64_t a2)
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

  sub_26BB3BDBC(0, &qword_28158BB48);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26BB386F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_26BB3BDBC(0, &qword_28158BB48);
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

uint64_t sub_26BB387E8(uint64_t result)
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

  result = sub_26BB380A0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

void *sub_26BB388DC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26BB38A34(uint64_t a1)
{
  v2 = sub_26BB7D508();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_26BB3BE08();
    v10 = sub_26BB7D068();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v35 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    v33 = v9;
    v34 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v14 * v11, v2);
      v16 = *(v10 + 40);
      sub_26BB3BE9C(&qword_280439F20, MEMORY[0x277CC9FC8]);
      v17 = sub_26BB7CCE8();
      v18 = -1 << *(v10 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v38 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        do
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v19 * v14, v2);
          sub_26BB3BE9C(&qword_280439F28, MEMORY[0x277CC9FC8]);
          v25 = sub_26BB7CD28();
          v26 = *v15;
          (*v15)(v7, v2);
          if (v25)
          {
            v26(v39, v2);
            v12 = v24;
            v9 = v33;
            goto LABEL_4;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v38 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          v12 = v24;
        }

        while (((1 << v19) & v21) != 0);
        v9 = v33;
      }

      v27 = v39;
      *(v38 + 8 * v20) = v22 | v21;
      result = (*v34)(*(v10 + 48) + v19 * v14, v27, v2);
      v29 = *(v10 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v10 + 16) = v31;
LABEL_4:
      v11 = v36 + 1;
      if (v36 + 1 == v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_26BB38D4C()
{
  result = qword_28158BD88;
  if (!qword_28158BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD88);
  }

  return result;
}

unint64_t sub_26BB38DA0()
{
  result = qword_28158BDA0;
  if (!qword_28158BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BDA0);
  }

  return result;
}

unint64_t sub_26BB38DF4()
{
  result = qword_28158BDB8;
  if (!qword_28158BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BDB8);
  }

  return result;
}

unint64_t sub_26BB38E48()
{
  result = qword_28158BD28;
  if (!qword_28158BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD28);
  }

  return result;
}

unint64_t sub_26BB38E9C()
{
  result = qword_28158BD40;
  if (!qword_28158BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD40);
  }

  return result;
}

unint64_t sub_26BB38EF0()
{
  result = qword_28158BD58;
  if (!qword_28158BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD58);
  }

  return result;
}

unint64_t sub_26BB38F44()
{
  result = qword_28158BD70;
  if (!qword_28158BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD70);
  }

  return result;
}

void sub_26BB38F98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_26BB39000()
{
  if (!qword_280439E40)
  {
    sub_26BB39070();
    sub_26BB7D0D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280439E40);
    }
  }
}

unint64_t sub_26BB39070()
{
  result = qword_280439E48;
  if (!qword_280439E48)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_280439E48);
  }

  return result;
}

void sub_26BB390BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26BB392E0(uint64_t a1)
{
  v4 = v1[2];
  v6 = *(v1 + 3);
  v5 = *(v1 + 4);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26BB3BF24;

  return sub_26BB2C528(a1, v6, v5, v4);
}

uint64_t sub_26BB394BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E4F646568636163 && a2 == 0xEA0000000000796CLL || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026BB830F0 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614365726F6E6769 && a2 == 0xEB00000000656863 || (sub_26BB7D378() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6143726566657270 && a2 == 0xEB00000000656863 || (sub_26BB7D378() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026BB83110 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_26BB7D378();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_26BB396D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D68DE20](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26BB643C8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t objectdestroy_51Tm()
{
  v1 = *(type metadata accessor for StockService.NetworkSession(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  sub_26BB28EE8();
  v8 = v7;
  if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
  {
    v9 = *(v6 + 8);

    v10 = *(v8 + 48);
    v11 = sub_26BB7BE48();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v12);

  return MEMORY[0x2821FE8E8](v0, v13 + 17, v2 | 7);
}

uint64_t sub_26BB39A68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, void, unint64_t, void, void, void, char))
{
  v7 = *(type metadata accessor for StockService.NetworkSession(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + v10 + 16);
  return a3(a1, a2, *(v3 + 16), *(v3 + 24), v3 + v8, *(v3 + v9), *(v3 + v10), *(v3 + v10 + 8), v12);
}

uint64_t sub_26BB39C38(void (*a1)(uint64_t, void *, char *, uint64_t, uint64_t))
{
  v3 = *(sub_26BB7BE48() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_26BB32CB0(*(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8), a1);
}

uint64_t sub_26BB39EC4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for StockService.NetworkSession(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  return sub_26BB336E8(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t objectdestroy_36Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 40));

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_26BB3A09C()
{
  v1 = *(sub_26BB7BE48() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  return sub_26BB34D04(*(v0 + 16), *(v0 + 24), v0 + v2, *(v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + ((v3 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 31) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 31) & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + ((v3 + 55) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 55) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_26BB3A174(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 40);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_26BB3BF24;

  return sub_26BB352C8(a1, v4, v5, v6, v11, v7, v8, v9);
}

uint64_t sub_26BB3A268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26BB390BC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26BB3A300()
{
  v1 = *(sub_26BB7BE48() - 8);
  v2 = (*(v1 + 80) + 33) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);
  v11 = *(v0 + 32);

  return sub_26BB378F0(v5, v6, v11, v0 + v2, v8, v9);
}

uint64_t sub_26BB3A3CC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BB3A404()
{
  sub_26BB390BC(319, &qword_28158BA58, MEMORY[0x277D6CAC8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BB3A544(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BB3A594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26BB3A5EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26BB3A608(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_26BB3A664()
{
  sub_26BB28EE8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BB3A6D0(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_9StocksKit12StockServiceC6ErrorsO(uint64_t a1)
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

uint64_t sub_26BB3A714(uint64_t a1, unsigned int a2)
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

uint64_t sub_26BB3A75C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for StockService.CachePolicy.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StockService.CachePolicy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BundleJSONDecoderError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BundleJSONDecoderError(_WORD *result, int a2, int a3)
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

unint64_t sub_26BB3AA40()
{
  result = qword_280439E70;
  if (!qword_280439E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439E70);
  }

  return result;
}

unint64_t sub_26BB3AA98()
{
  result = qword_280439E78;
  if (!qword_280439E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439E78);
  }

  return result;
}

unint64_t sub_26BB3AAF0()
{
  result = qword_280439E80;
  if (!qword_280439E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439E80);
  }

  return result;
}

unint64_t sub_26BB3AB48()
{
  result = qword_28158BD60;
  if (!qword_28158BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD60);
  }

  return result;
}

unint64_t sub_26BB3ABA0()
{
  result = qword_28158BD68;
  if (!qword_28158BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD68);
  }

  return result;
}

unint64_t sub_26BB3ABF8()
{
  result = qword_28158BD48;
  if (!qword_28158BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD48);
  }

  return result;
}

unint64_t sub_26BB3AC50()
{
  result = qword_28158BD50;
  if (!qword_28158BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD50);
  }

  return result;
}

unint64_t sub_26BB3ACA8()
{
  result = qword_28158BD30;
  if (!qword_28158BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD30);
  }

  return result;
}

unint64_t sub_26BB3AD00()
{
  result = qword_28158BD38;
  if (!qword_28158BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD38);
  }

  return result;
}

unint64_t sub_26BB3AD58()
{
  result = qword_28158BD18;
  if (!qword_28158BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD18);
  }

  return result;
}

unint64_t sub_26BB3ADB0()
{
  result = qword_28158BD20;
  if (!qword_28158BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD20);
  }

  return result;
}

unint64_t sub_26BB3AE08()
{
  result = qword_28158BDA8;
  if (!qword_28158BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BDA8);
  }

  return result;
}

unint64_t sub_26BB3AE60()
{
  result = qword_28158BDB0;
  if (!qword_28158BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BDB0);
  }

  return result;
}

unint64_t sub_26BB3AEB8()
{
  result = qword_28158BD90;
  if (!qword_28158BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD90);
  }

  return result;
}

unint64_t sub_26BB3AF10()
{
  result = qword_28158BD98;
  if (!qword_28158BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD98);
  }

  return result;
}

unint64_t sub_26BB3AF68()
{
  result = qword_28158BD78;
  if (!qword_28158BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD78);
  }

  return result;
}

unint64_t sub_26BB3AFC0()
{
  result = qword_28158BD80;
  if (!qword_28158BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD80);
  }

  return result;
}

uint64_t objectdestroy_63Tm()
{
  v1 = sub_26BB7BE48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t objectdestroy_66Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_26BB3B148()
{
  result = qword_28158B720;
  if (!qword_28158B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B720);
  }

  return result;
}

uint64_t sub_26BB3B19C(uint64_t a1, uint64_t a2)
{
  sub_26BB3BBE8(0, &qword_280439E88, type metadata accessor for StockResult);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_26BB3B21C(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

void sub_26BB3B23C(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

void sub_26BB3B25C(void *a1, id a2, char a3, char a4)
{
  if (a4)
  {
    sub_26BB3B23C(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_26BB3B268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB3B2D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26BB3B2FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 32);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_26BB3BF24;

  return sub_26BB35EB4(a1, v4, v5, v11, v6, v7, v8, v9);
}

void sub_26BB3B3EC()
{
  if (!qword_28158BB58)
  {
    sub_26BB3B454(255, &qword_28158BB60, 0x277D82BB8);
    v0 = sub_26BB7CFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_28158BB58);
    }
  }
}

uint64_t sub_26BB3B454(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26BB3B49C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB3B504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BB3B564(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_26BB3BBE8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26BB3B5C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26BB7C5C8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_26BB3BF24;

  return sub_26BB34184(a1, v9, v10, v1 + v6, v12, v13, v14);
}