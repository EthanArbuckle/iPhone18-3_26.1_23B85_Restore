uint64_t sub_269DE6BC0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

void *sub_269DE6C1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_269DE6C48(void *a1, uint64_t *a2)
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

uint64_t sub_269DE6CE0()
{
  sub_269DF088C();
  sub_269DF09F4(&qword_281571E50, sub_269DF088C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DE6D68()
{
  sub_269E51A9C();
  sub_269DF20F8(&qword_281571E28, MEMORY[0x277D12710]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DE6DF0()
{
  sub_269DF6030();
  sub_269DF5EB8();
  sub_269DF5D88();
  sub_269DF5C88();
  sub_269DF5BD4();
  sub_269DF58DC();
  sub_269DF6B64(&qword_281571E00, sub_269DF58DC);
  swift_getOpaqueTypeConformance2();
  sub_269DF0E28();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DE6F9C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269E50C8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_269DE7048(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_269E50C8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269DE70EC()
{
  sub_269DF6D0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269DE7178()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269DE71C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_269E50B9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_269DF6864(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    sub_269DF6864(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
    v17 = v16;
    v18 = *(*(v16 - 8) + 48);
    v19 = a1 + a3[7];

    return v18(v19, a2, v17);
  }
}

void sub_269DE73A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_269E50B9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_269DF6864(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    sub_269DF6864(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[7];

    v17(v18, a2, a2, v16);
  }
}

uint64_t sub_269DE7580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DE75EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DE76A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_269DF7980(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_269DF7980(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_269DE7820(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    sub_269DF7980(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_269DF7980(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_269DE79A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269DF7980(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_269DF7980(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_269DE7B0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269DF7980(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_269DF7980(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_269DE7C74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269E511AC();
  *a1 = result;
  return result;
}

uint64_t sub_269DE7CA0(uint64_t *a1)
{
  v1 = *a1;

  return sub_269E511BC();
}

uint64_t sub_269DE7CCC(uint64_t a1, uint64_t a2)
{
  sub_269DFCC38(0, &qword_28035E928, &qword_28035E930, sub_269DFB9E0, &qword_28035E950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE7D5C(uint64_t a1, uint64_t a2)
{
  sub_269DFBCA4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE7DC0(uint64_t a1, uint64_t a2)
{
  sub_269DFBCA4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE7E24(uint64_t a1)
{
  sub_269DFBCA4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269DE7EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepWidgetViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_269DFEAC8(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_269DFEAC8(0, &qword_2815725F0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_269DE8050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepWidgetViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_269DFEAC8(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_269DFEAC8(0, &qword_2815725F0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_269DE820C()
{
  sub_269DFE5D0();
  sub_269DFE53C();
  sub_269DFE8C4(&qword_28035EA58, sub_269DFE5D0);
  sub_269DFE8C4(&qword_281571BF8, sub_269DFE53C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DE82E4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_269DFEBC0(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_269DFEBC0(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_269DFEBC0(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for SleepStageBarViewModel(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_269DE8510(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_269DFEBC0(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_269DFEBC0(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_269DFEBC0(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for SleepStageBarViewModel(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_269DE8738()
{
  v1 = type metadata accessor for SleepStageBarView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_269DFEBC0(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_269E510EC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_269DFEBC0(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_269E51B0C();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = v1[6];
  sub_269DFEBC0(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_269E51ADC();
    (*(*(v12 - 8) + 8))(&v5[v11], v12);
  }

  else
  {
    v13 = *&v5[v11];
  }

  sub_269DFC008(*&v5[v1[7]], v5[v1[7] + 8]);
  v14 = &v5[v1[8]];
  v15 = sub_269E509EC();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = &v14[*(type metadata accessor for SleepStageBarViewModel(0) + 20)];
  v17 = *v16;

  v18 = *(v16 + 1);

  v19 = *(v16 + 2);

  v20 = *(v16 + 3);

  v21 = *(v16 + 4);

  v22 = *(v16 + 5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_269DE8A40(uint64_t a1, uint64_t a2)
{
  sub_269DFEBC0(0, &qword_28035EAB8, sub_269E00C4C, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE8AF4(uint64_t a1, uint64_t a2)
{
  sub_269E00948();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE8B58(uint64_t a1)
{
  sub_269E00948();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269DE8BB4(uint64_t a1, uint64_t a2)
{
  sub_269E00C4C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE8C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DE8CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DE8D3C(uint64_t a1, uint64_t a2)
{
  sub_269E016F4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DE8DA0()
{
  sub_269E0180C();
  sub_269E01A60(&qword_281571F68, sub_269E0180C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DE8E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DE8EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DE8F2C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D652DF0]();
  *a1 = result;
  return result;
}

uint64_t sub_269DE8F58(uint64_t *a1)
{
  v1 = *a1;

  return sub_269E5117C();
}

uint64_t sub_269DE8F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E0355C(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 24) + 32);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for SleepWidgetViewModel();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

void sub_269DE90D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E0355C(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 24) + 32) = -a2;
  }

  else
  {
    v11 = type metadata accessor for SleepWidgetViewModel();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_269DE9238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E07A08(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
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

    return (v10 + 1);
  }
}

void sub_269DE9324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E07A08(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_269DE940C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E07A08(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
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

    return (v10 + 1);
  }
}

void sub_269DE94FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E07A08(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

void sub_269DE9614(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_269E08040();
  sub_269E50ADC();
  __break(1u);
}

void sub_269DE96C8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_269E07F8C();
  sub_269E50ADC();
  __break(1u);
}

uint64_t sub_269DE973C()
{
  v1 = type metadata accessor for SleepStageSummaryValueView.NoDataStringView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_269E07A08(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_269E51ADC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20));

  v9 = *(v5 + *(v1 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_269DE9930(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_269E0895C(255);
  type metadata accessor for SleepWidgetResultsView.SummaryTextView();
  sub_269E510FC();
  sub_269E08A58();
  swift_getTupleTypeMetadata();
  sub_269E519DC();
  swift_getWitnessTable();
  sub_269E5194C();
  sub_269DFE53C();
  swift_getWitnessTable();
  sub_269E08D9C(&qword_281571BF8, sub_269DFE53C);
  return swift_getOpaqueTypeConformance2();
}

void sub_269DE9B50(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x26D652F10]();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_269DE9B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E0A508(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
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

void sub_269DE9C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E0A508(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }
}

uint64_t sub_269DE9E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepWidgetViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 252)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_269E166D0(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v14 = v13;
    v15 = *(*(v13 - 8) + 48);
    v16 = a1 + *(a3 + 28);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_269DE9F84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SleepWidgetViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 252)
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  else
  {
    sub_269E166D0(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_269DEA0E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269E5121C();
  *a1 = result;
  return result;
}

uint64_t sub_269DEA110(uint64_t *a1)
{
  v1 = *a1;

  return sub_269E5122C();
}

uint64_t sub_269DEA13C(uint64_t a1, uint64_t a2)
{
  sub_269E14F38(0, &qword_2815724D0, &qword_2815720A8, &qword_281572068, MEMORY[0x277CE0AE0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DEA274()
{
  sub_269E15714();
  sub_269DFE53C();
  sub_269E16DA0(&qword_28035EC80, sub_269E15714);
  sub_269E16DA0(&qword_281571BF8, sub_269DFE53C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEA34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269E50A5C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEA3B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_269E50A5C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEA448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for SleepWidgetViewModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_269DEA4EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for SleepWidgetViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269DEA58C()
{
  v1 = (type metadata accessor for GreetingSleepWidgetRectangularView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v22 = *(*v1 + 64);
  v23 = v0;
  v4 = v0 + v3;
  sub_269DFC008(*v4, *(v4 + 8));
  v5 = v4 + v1[7];
  v6 = type metadata accessor for SleepWidgetViewModel();
  v7 = v6[5];
  v8 = sub_269E50A0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v11 = v6[6];
  if (!v10(v5 + v11, 1, v8))
  {
    (*(v9 + 8))(v5 + v11, v8);
  }

  v12 = v6[8];
  v13 = sub_269E50B9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v5 + v12, v13);

  v16 = v5 + v6[10];
  if (*v16)
  {
  }

  v17 = v6[11];
  v18 = *(v14 + 48);
  if (!v18(v5 + v17, 1, v13))
  {
    v15(v5 + v17, v13);
  }

  v19 = v6[12];
  if (!v18(v5 + v19, 1, v13))
  {
    v15(v5 + v19, v13);
  }

  v20 = v6[13];
  if (!v18(v5 + v20, 1, v13))
  {
    v15(v5 + v20, v13);
  }

  return MEMORY[0x2821FE8E8](v23, v3 + v22, v2 | 7);
}

uint64_t sub_269DEA8AC()
{
  sub_269E1C810();
  sub_269E1C698();
  sub_269E1C550();
  sub_269E1C440();
  sub_269E1C370();
  sub_269E1C040();
  sub_269E1D29C(&qword_281571DF0, sub_269E1C040);
  sub_269DF0E28();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEAA60(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269E50C8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_269DEAB0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_269E50C8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269DEABB0()
{
  sub_269E1D310();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269DEAC3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269DEAC84(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_269E50B9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_269E1D01C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for SleepWidgetViewModel();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_269E1D01C(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_269DEAE6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_269E50B9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_269E1D01C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for SleepWidgetViewModel();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_269E1D01C(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_269DEB06C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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

  else
  {
    v9 = sub_269E50CDC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_269DEB124(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_269E50CDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269DEB1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269E5103C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_269E510EC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_269E51ADC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_269DEB310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_269E5103C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_269E510EC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_269E51ADC();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_269DEB46C()
{
  sub_269E21F38(255, &qword_28035EEE0, sub_269E2042C, sub_269E20454);
  sub_269E2042C(255);
  sub_269E20454();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEB548@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269E511CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_269DEB5A8(uint64_t a1)
{
  sub_269E220A8(0, &qword_28035EF70, sub_269E22078, &qword_2815720C0, MEMORY[0x277D85048]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269DEB638()
{
  sub_269E220A8(255, &qword_28035EF70, sub_269E22078, &qword_2815720C0, MEMORY[0x277D85048]);
  sub_269DFE53C();
  sub_269E2225C();
  sub_269E224DC(&qword_281571BF8, sub_269DFE53C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEB72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E27338(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 24) + 32);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for SleepScoreWidgetViewModel();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

void sub_269DEB87C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E27338(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 24) + 32) = -a2;
  }

  else
  {
    v11 = type metadata accessor for SleepScoreWidgetViewModel();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_269DEB9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for SleepWidgetViewModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_269DEBAA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for SleepWidgetViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269DEBB54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEBBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEBC30(uint64_t a1, uint64_t a2)
{
  sub_269E01714(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DEBC94(uint64_t a1)
{
  sub_269E01714(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269DEBDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEBE30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEBEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepScoreWidgetViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_269E2E2C8(0, &qword_28035F0D8, _s13SleepWidgetUI5SpecsVMa_0, MEMORY[0x277CDF468]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_269DEBFC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepScoreWidgetViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_269E2E2C8(0, &qword_28035F0D8, _s13SleepWidgetUI5SpecsVMa_0, MEMORY[0x277CDF468]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_269DEC0EC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_269E51ADC();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_269DEC190(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_269E51ADC();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269DEC248()
{
  sub_269E2E7F8();
  sub_269E2E32C();
  sub_269E51C1C();
  sub_269E2EF68(&qword_28035F160, sub_269E2E32C);
  sub_269E2EF68(&qword_28035F168, MEMORY[0x277CE3ED8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEC350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepWidgetViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_269E2EFC4(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_269E2EFC4(0, &qword_2815725F0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_269DEC4F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepWidgetViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_269E2EFC4(0, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_269E2EFC4(0, &qword_2815725F0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_269DEC69C(uint64_t a1)
{
  sub_269E30E2C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269DEC718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEC784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEC7F4()
{
  v1 = *(type metadata accessor for GreetingSleepWidgetView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(v1 + 64);
  v22 = v0;
  v4 = v0 + v3;
  v5 = type metadata accessor for SleepWidgetViewModel();
  v6 = v5[5];
  v7 = sub_269E50A0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v5[6];
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  v11 = v5[8];
  v12 = sub_269E50B9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v14(v4 + v11, v12);

  v15 = v4 + v5[10];
  if (*v15)
  {
  }

  v16 = v5[11];
  v17 = *(v13 + 48);
  if (!v17(v4 + v16, 1, v12))
  {
    v14(v4 + v16, v12);
  }

  v18 = v5[12];
  if (!v17(v4 + v18, 1, v12))
  {
    v14(v4 + v18, v12);
  }

  v19 = v5[13];
  if (!v17(v4 + v19, 1, v12))
  {
    v14(v4 + v19, v12);
  }

  return MEMORY[0x2821FE8E8](v22, v3 + v21, v2 | 7);
}

uint64_t sub_269DECAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E34FE4(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_269E34FE4(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_269DECC6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E34FE4(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_269E34FE4(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_269DECDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269E509EC();
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

    return (v10 + 1);
  }
}

uint64_t sub_269DECEB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_269E509EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_269DECFC4()
{
  sub_269E38CB4();
  sub_269E38B3C();
  sub_269E389F4();
  sub_269E388E4();
  sub_269E38814();
  sub_269E3852C();
  sub_269E3871C(&qword_281571E10, sub_269E3852C);
  sub_269DF0E28();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DED178(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269E50CDC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_269E50C8C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_269DED29C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_269E50CDC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_269E50C8C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_269DED3C0()
{
  sub_269E39800();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269DED448()
{
  v1 = (type metadata accessor for SleepScoreWidgetTimelineProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_269E50CDC();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = (v5 + v1[9]);

  v9 = v1[11];
  v10 = sub_269E50C8C();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_269DED5A4()
{
  v1 = sub_269E50CDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_269DED688()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269DED6D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_269E50B9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_269E3953C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for SleepScoreWidgetViewModel();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_269E3953C(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_269DED8B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_269E50B9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_269E3953C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for SleepScoreWidgetViewModel();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_269E3953C(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_269DEDAB0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_269E50B9C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[9]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_269DEDC80(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = sub_269E50B9C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
  }

  else
  {
    sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_269DEDE50()
{
  sub_269E3F648();
  sub_269E3F598();
  sub_269E3F8B8(&qword_28035F248, sub_269E3F598);
  sub_269DF0E28();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEDF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_269E50B9C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEDF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_269E50B9C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEE000()
{
  sub_269E40370();
  sub_269E401B8();
  sub_269DFE53C();
  sub_269E40474(&qword_28035F2B0, sub_269E401B8);
  sub_269E40474(&qword_281571BF8, sub_269DFE53C);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEE148()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_269DEE1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEE248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEE300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreWidgetViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269DEE36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreWidgetViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269DEE404()
{
  sub_269E20324();
  sub_269E2E6C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEE464@<X0>(_BYTE *a1@<X8>)
{
  sub_269E42930();
  result = sub_269E512DC();
  *a1 = v3;
  return result;
}

uint64_t sub_269DEE4B4(char *a1)
{
  v2 = *a1;
  sub_269E42930();
  return sub_269E512EC();
}

uint64_t sub_269DEE500()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_269DEE548()
{
  v1 = sub_269E50CDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_269DEE62C()
{
  v1 = sub_269E50B9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_269DEE718()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269DEE758()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269DEE798()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_269DEE800()
{
  sub_269E4961C();
  sub_269E496D0();
  sub_269E4997C(&qword_281571F78, sub_269E496D0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269DEE8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_269E49C1C(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_269E49C1C(0, &qword_2815725C8, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_269DEEA54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_269E49C1C(0, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_269E49C1C(0, &qword_2815725C8, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_269DEEBD8()
{
  v1 = type metadata accessor for SleepWidgetChartView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = v1[8];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_269E51B0C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  sub_269DFC008(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v12 = v1[10];
  sub_269E49C1C(0, &qword_2815725F8, MEMORY[0x277CE0A00], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E5160C();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  sub_269DFC008(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_269DEEDF0(uint64_t a1, uint64_t a2)
{
  sub_269E49C1C(0, &qword_281571E78, sub_269E4E880, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DEEE84()
{
  v1 = type metadata accessor for SleepWidgetChartView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 24);

  v10 = v1[8];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_269E51B0C();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  sub_269DFC008(*(v6 + v1[9]), *(v6 + v1[9] + 8));
  v13 = v1[10];
  sub_269E49C1C(0, &qword_2815725F8, MEMORY[0x277CE0A00], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_269E5160C();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
    v15 = *(v6 + v13);
  }

  sub_269DFC008(*(v6 + v1[11]), *(v6 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_269DEF0E8@<X0>(void *a1@<X8>)
{
  result = sub_269E511EC();
  *a1 = v3;
  return result;
}

uint64_t sub_269DEF13C@<X0>(uint64_t a1@<X8>)
{
  result = sub_269E5129C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_269DEF170(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_269E512AC();
}

uint64_t sub_269DEF1A0()
{
  v1 = type metadata accessor for SleepWidgetChartView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = v1[8];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_269E51B0C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  sub_269DFC008(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v12 = v1[10];
  sub_269E49C1C(0, &qword_2815725F8, MEMORY[0x277CE0A00], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E5160C();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  sub_269DFC008(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t get_enum_tag_for_layout_string_13SleepWidgetUI0A17DaySummaryResultsVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_269DEF4B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_269DEF50C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_269DEF580(uint64_t a1)
{
  result = sub_269DEF5A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269DEF5A8()
{
  result = qword_2815731B8;
  if (!qword_2815731B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815731B8);
  }

  return result;
}

uint64_t sub_269DEF618@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  sub_269DF0BA8(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  sub_269DF088C();
  v32 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[1];
  v38 = *v1;
  v39 = v14;
  v40 = *(v1 + 32);
  v15 = v1[1];
  v35 = *v1;
  v36 = v15;
  v37 = *(v1 + 32);
  v31 = sub_269DEFABC();
  v45 = v40;
  v44[0] = v38;
  v44[1] = v39;
  v41 = v38;
  v42 = v39;
  v43 = v40;
  if (v40 == 2)
  {
    goto LABEL_2;
  }

  if (!*&v44[0])
  {
    goto LABEL_2;
  }

  v22 = *(&v44[0] + 1);
  if (!*(&v44[0] + 1))
  {
    goto LABEL_2;
  }

  sub_269DF0AC8(v44, v34);
  [v22 sleepDuration];
  if (v23 <= COERCE_DOUBLE(1) || v23 <= 0.0)
  {
    [v22 inBedDuration];
    v28 = v27;
    sub_269DF0B24(&v38);
    if (v28 > COERCE_DOUBLE(1) && v28 > 0.0)
    {
      goto LABEL_16;
    }

LABEL_2:
    sub_269DF035C();
    goto LABEL_3;
  }

  sub_269DF0B24(&v38);
LABEL_16:
  sub_269DF145C(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_269E528D0;
  *(v29 + 32) = sub_269DEFFC4();
  *(v29 + 40) = v30;
LABEL_3:
  if (qword_281571DC0 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  v17 = v39;
  *(v16 + 16) = v38;
  *(v16 + 32) = v17;
  *(v16 + 48) = v40;
  sub_269DF0928(&v38, v34);
  type metadata accessor for SleepStageResultsView(0);
  sub_269DF09F4(&qword_2815736A8, type metadata accessor for SleepStageResultsView);

  sub_269E51A4C();
  v18 = *MEMORY[0x277D62138];
  v19 = HKSPSleepURL();
  if (v19)
  {
    v20 = v19;
    sub_269E50AFC();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v24 = sub_269E50B0C();
  (*(*(v24 - 8) + 56))(v6, v21, 1, v24);
  sub_269DF0960(v6, v8);
  sub_269DF09F4(&qword_281571E50, sub_269DF088C);
  v25 = v32;
  sub_269E5173C();
  sub_269DF0A3C(v8);
  return (*(v10 + 8))(v13, v25);
}

uint64_t sub_269DEFABC()
{
  v15 = *v0;
  v16 = v0[1];
  v17 = *(v0 + 32);
  v1 = sub_269DEFD84();
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_269DF0E08(0, v2, 0);
    sub_269E51E1C();
    v3 = v14;
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_269E51E0C();
      sub_269E51DDC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_269DF0E28();
      v7 = sub_269E51FAC();
      v9 = v8;

      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_269DF0E08((v10 > 1), v11 + 1, 1);
      }

      *(v14 + 16) = v11 + 1;
      v12 = v14 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_269DEFC60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v12 = *a1;
  v13 = v4;
  v14 = *(a1 + 32);
  *a2 = swift_getKeyPath();
  v5 = MEMORY[0x277CDF458];
  sub_269DF0BA8(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SleepStageResultsView(0);
  v7 = *(v6 + 20);
  *(a2 + v7) = swift_getKeyPath();
  sub_269DF0BA8(0, &qword_281572610, MEMORY[0x277CE3AF8], v5);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + *(v6 + 24);
  v9 = v13;
  *v8 = v12;
  *(v8 + 1) = v9;
  v8[32] = v14;
  return sub_269DF0928(a1, v11);
}

uint64_t sub_269DEFD84()
{
  sub_269DF0490();
  v12[0] = v0;
  v1 = 0;
  v12[1] = sub_269DF1C70();
  v12[2] = v2;
  v3 = MEMORY[0x277D84F90];
LABEL_2:
  v4 = &v12[2 * v1];
  while (++v1 != 3)
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v4 += 2;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_269DF0E08(0, *(v3 + 16) + 1, 1);
      }

      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_269DF0E08((v8 > 1), v9 + 1, 1);
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v5;
      goto LABEL_2;
    }
  }

  swift_arrayDestroy();
  return v3;
}

uint64_t sub_269DEFEA4()
{
  sub_269DF06AC();
  v12[0] = v0;
  v1 = 0;
  v12[1] = sub_269DF1E8C();
  v12[2] = v2;
  v3 = MEMORY[0x277D84F90];
LABEL_2:
  v4 = &v12[2 * v1];
  while (++v1 != 3)
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v4 += 2;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_269DF0E08(0, *(v3 + 16) + 1, 1);
      }

      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_269DF0E08((v8 > 1), v9 + 1, 1);
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v5;
      goto LABEL_2;
    }
  }

  swift_arrayDestroy();
  return v3;
}

uint64_t sub_269DEFFC4()
{
  if (*(v0 + 32) != 2)
  {
    v1 = *(v0 + 24);
    if (*v0 && v1 != 0)
    {
      sub_269DF0AC8(v0, v12);
      v3 = [v1 averageSleepDuration];
      if (v3)
      {
        v4 = v3;
        [v3 _value];
        v6 = v5;

        sub_269DF0B54(v0);
        if (v6 > COERCE_DOUBLE(1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_269DF0B54(v0);
      }

      sub_269DF0AC8(v0, v12);
      v7 = [v1 averageInBedDuration];
      if (v7)
      {
        v8 = v7;
        [v7 _value];
        v10 = v9;

        sub_269DF0B54(v0);
        if (v10 > COERCE_DOUBLE(1))
        {
          if (qword_281571CB0 == -1)
          {
            return sub_269E50A7C();
          }

          goto LABEL_17;
        }
      }

      else
      {
        sub_269DF0B54(v0);
      }
    }
  }

LABEL_15:
  if (qword_281571CB0 != -1)
  {
LABEL_17:
    swift_once();
  }

  return sub_269E50A7C();
}

uint64_t sub_269DF01B0()
{
  v1 = (v0 + *(type metadata accessor for SleepWidgetViewModel() + 40));
  v2 = v1[3];
  if (*v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = [v2 averageSleepDuration];
    if (!v4 || (v5 = v4, [v4 _value], v7 = v6, v5, v7 <= COERCE_DOUBLE(1)))
    {
      v8 = [v2 averageInBedDuration];
      if (v8)
      {
        v9 = v8;
        [v8 _value];
        v11 = v10;

        if (v11 > COERCE_DOUBLE(1))
        {
          if (qword_281571CB0 == -1)
          {
            return sub_269E50A7C();
          }

          goto LABEL_13;
        }
      }
    }
  }

  if (qword_281571CB0 != -1)
  {
LABEL_13:
    swift_once();
  }

  return sub_269E50A7C();
}

uint64_t sub_269DF035C()
{
  sub_269DF145C(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_269E528E0;
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_269E50A7C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_269E50A7C();
  *(v0 + 56) = v2;
  return v0;
}

uint64_t sub_269DF0490()
{
  if (*(v0 + 32) == 2)
  {
    return 0;
  }

  v1 = *(v0 + 24);
  if (!*v0 || v1 == 0)
  {
    return 0;
  }

  sub_269DF0AC8(v0, v20);
  v3 = [v1 averageSleepDuration];
  if (v3)
  {
    v4 = v3;
    [v3 _value];
    v6 = v5;

    sub_269DF0B54(v0);
    if (v6 > COERCE_DOUBLE(1))
    {
      sub_269E51E2C();
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v9 setUnitsStyle_];
      [v9 setAllowedUnits_];
      v10 = [v9 stringFromTimeInterval_];
      if (v10)
      {
LABEL_9:
        v11 = v10;
        v12 = sub_269E51CDC();

        return v12;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_269DF0B54(v0);
  }

  sub_269DF0AC8(v0, v20);
  v14 = [v1 averageInBedDuration];
  if (!v14)
  {
    sub_269DF0B54(v0);
    return 0;
  }

  v15 = v14;
  [v14 _value];
  v17 = v16;

  sub_269DF0B54(v0);
  if (v17 > COERCE_DOUBLE(1))
  {
    sub_269E51E2C();
    v19 = v18;
    v9 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v9 setUnitsStyle_];
    [v9 setAllowedUnits_];
    v10 = [v9 stringFromTimeInterval_];
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_14:
  }

  return 0;
}

id sub_269DF06AC()
{
  v1 = (v0 + *(type metadata accessor for SleepWidgetViewModel() + 40));
  v2 = v1[3];
  if (*v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = [v2 averageSleepDuration];
  if (v5)
  {
    v6 = v5;
    [v5 _value];
    v8 = v7;

    if (v8 > COERCE_DOUBLE(1))
    {
      sub_269E51E2C();
      v10 = v9;
      v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v11 setUnitsStyle_];
      [v11 setAllowedUnits_];
      v12 = [v11 stringFromTimeInterval_];
      if (v12)
      {
LABEL_11:
        v13 = v12;
        v14 = sub_269E51CDC();

        return v14;
      }

      goto LABEL_15;
    }
  }

  result = [v2 averageInBedDuration];
  if (result)
  {
    v15 = result;
    [result _value];
    v17 = v16;

    if (v17 <= COERCE_DOUBLE(1))
    {
      return 0;
    }

    sub_269E51E2C();
    v19 = v18;
    v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v11 setUnitsStyle_];
    [v11 setAllowedUnits_];
    v12 = [v11 stringFromTimeInterval_];
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_15:

    return 0;
  }

  return result;
}

void sub_269DF088C()
{
  if (!qword_281571E48)
  {
    type metadata accessor for SleepStageResultsView(255);
    sub_269DF09F4(&qword_2815736A8, type metadata accessor for SleepStageResultsView);
    v0 = sub_269E51A5C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571E48);
    }
  }
}

uint64_t sub_269DF0960(uint64_t a1, uint64_t a2)
{
  sub_269DF0BA8(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DF09F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269DF0A3C(uint64_t a1)
{
  sub_269DF0BA8(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269DF0BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269DF0C0C()
{
  v1 = *v0;
  sub_269E5220C();
  MEMORY[0x26D653EA0](v1);
  return sub_269E5223C();
}

uint64_t sub_269DF0C80()
{
  v1 = *v0;
  sub_269E5220C();
  MEMORY[0x26D653EA0](v1);
  return sub_269E5223C();
}

void *sub_269DF0CEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_269DF0D18@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_269DF0DC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_269E507AC();

  *a1 = v2;
  return result;
}

char *sub_269DF0E08(char *a1, int64_t a2, char a3)
{
  result = sub_269DF0EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_269DF0E28()
{
  result = qword_281571DD8;
  if (!qword_281571DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571DD8);
  }

  return result;
}

char *sub_269DF0E7C(char *a1, int64_t a2, char a3)
{
  result = sub_269DF1004(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_269DF0E9C(char *a1, int64_t a2, char a3)
{
  result = sub_269DF113C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_269DF0EBC(char *a1, int64_t a2, char a3)
{
  result = sub_269DF128C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_269DF0EDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_269DF145C(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

char *sub_269DF1004(char *result, int64_t a2, char a3, char *a4)
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
    sub_269DF145C(0, &qword_28035E8B8, &type metadata for SleepWidgetChartBar, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_269DF113C(char *result, int64_t a2, char a3, char *a4)
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
    sub_269DF0BA8(0, &qword_28035E8A8, type metadata accessor for HKCategoryValueSleepAnalysis, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_269DF128C(char *result, int64_t a2, char a3, char *a4)
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
    sub_269DF145C(0, &qword_28035E8B0, &type metadata for Segment, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BarView.Range(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BarView.Range(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_269DF145C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_269DF164C(uint64_t a1)
{
  result = sub_269DF1674();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269DF1674()
{
  result = qword_2815731C0[0];
  if (!qword_2815731C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815731C0);
  }

  return result;
}

uint64_t sub_269DF16E4@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  sub_269DF2140(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v38 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v35 - v6;
  v8 = sub_269E51A8C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_269E50FBC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_269E51A9C();
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1[1];
  v41 = *v1;
  v42 = v19;
  v43 = *(v1 + 32);
  sub_269E50FAC();
  v20 = sub_269E50F6C();
  v35[1] = v21;
  v35[2] = v20;
  (*(v11 + 8))(v14, v10);
  v22 = MEMORY[0x277D84F90];
  if (v43 != 2)
  {
    if (v41)
    {
      if (*(&v41 + 1))
      {
        [*(&v41 + 1) sleepDuration];
        if (v28 > COERCE_DOUBLE(1) && v28 > 0.0)
        {
          sub_269DF2140(0, &qword_28035E900, MEMORY[0x277CC8C40], MEMORY[0x277D84560]);
          v29 = *(sub_269E50A5C() - 8);
          v30 = *(v29 + 72);
          v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
          *(swift_allocObject() + 16) = xmmword_269E528D0;
          sub_269DF1C70();
          sub_269E51D4C();
        }
      }
    }
  }

  if (qword_281571DC0 != -1)
  {
    swift_once();
  }

  v40 = v22;
  sub_269DF20F8(&qword_281571E30, MEMORY[0x277D12700]);
  sub_269DF2140(0, &qword_281571D80, MEMORY[0x277D12700], MEMORY[0x277D83940]);
  sub_269DF2070();

  sub_269E51FEC();
  sub_269E51A6C();
  v23 = *MEMORY[0x277D62138];
  v24 = HKSPSleepURL();
  if (v24)
  {
    v25 = v38;
    v26 = v24;
    sub_269E50AFC();

    v27 = 0;
  }

  else
  {
    v27 = 1;
    v25 = v38;
  }

  v32 = sub_269E50B0C();
  (*(*(v32 - 8) + 56))(v25, v27, 1, v32);
  sub_269DF0960(v25, v7);
  sub_269DF20F8(&qword_281571E28, MEMORY[0x277D12710]);
  v33 = v37;
  sub_269E5173C();
  sub_269DF0A3C(v7);
  return (*(v36 + 8))(v18, v33);
}

uint64_t sub_269DF1C70()
{
  if (*(v0 + 32) == 2)
  {
    return 0;
  }

  v1 = *(v0 + 24);
  if (!*v0 || v1 == 0)
  {
    return 0;
  }

  sub_269DF0AC8(v0, v20);
  v3 = [v1 averageSleepDuration];
  if (v3)
  {
    v4 = v3;
    [v3 _value];
    v6 = v5;

    sub_269DF0B54(v0);
    if (v6 > COERCE_DOUBLE(1))
    {
      sub_269E51E2C();
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v9 setUnitsStyle_];
      [v9 setAllowedUnits_];
      v10 = [v9 stringFromTimeInterval_];
      if (v10)
      {
LABEL_9:
        v11 = v10;
        v12 = sub_269E51CDC();

        return v12;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_269DF0B54(v0);
  }

  sub_269DF0AC8(v0, v20);
  v14 = [v1 averageInBedDuration];
  if (!v14)
  {
    sub_269DF0B54(v0);
    return 0;
  }

  v15 = v14;
  [v14 _value];
  v17 = v16;

  sub_269DF0B54(v0);
  if (v17 > COERCE_DOUBLE(1))
  {
    sub_269E51E2C();
    v19 = v18;
    v9 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v9 setUnitsStyle_];
    [v9 setAllowedUnits_];
    v10 = [v9 stringFromTimeInterval_];
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_14:
  }

  return 0;
}

id sub_269DF1E8C()
{
  v1 = (v0 + *(type metadata accessor for SleepWidgetViewModel() + 40));
  v2 = v1[3];
  if (*v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = [v2 averageSleepDuration];
  if (v5)
  {
    v6 = v5;
    [v5 _value];
    v8 = v7;

    if (v8 > COERCE_DOUBLE(1))
    {
      sub_269E51E2C();
      v10 = v9;
      v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v11 setUnitsStyle_];
      [v11 setAllowedUnits_];
      v12 = [v11 stringFromTimeInterval_];
      if (v12)
      {
LABEL_11:
        v13 = v12;
        v14 = sub_269E51CDC();

        return v14;
      }

      goto LABEL_15;
    }
  }

  result = [v2 averageInBedDuration];
  if (result)
  {
    v15 = result;
    [result _value];
    v17 = v16;

    if (v17 <= COERCE_DOUBLE(1))
    {
      return 0;
    }

    sub_269E51E2C();
    v19 = v18;
    v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v11 setUnitsStyle_];
    [v11 setAllowedUnits_];
    v12 = [v11 stringFromTimeInterval_];
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_15:

    return 0;
  }

  return result;
}

unint64_t sub_269DF2070()
{
  result = qword_281571D78;
  if (!qword_281571D78)
  {
    sub_269DF2140(255, &qword_281571D80, MEMORY[0x277D12700], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D78);
  }

  return result;
}

uint64_t sub_269DF20F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269DF2140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_269DF21A4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_269E5101C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v7 = sub_269E5100C();
  v8 = sub_269E51ECC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v19);
    _os_log_impl(&dword_269DE5000, v7, v8, "[%{public}s] Returning placeholder for sleep stage widget...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D654490](v10, -1, -1);
    MEMORY[0x26D654490](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_269E50B7C();
  v11 = type metadata accessor for SleepStageWidgetEntry(0);
  v12 = v11[5];
  sub_269E50B7C();
  v13 = sub_269E50B9C();
  (*(*(v13 - 8) + 56))(a1 + v12, 0, 1, v13);
  v14 = v11[7];
  v15 = sub_269E51BEC();
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  v16 = a1 + v11[6];
  result = 0.0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 3;
  return result;
}

void sub_269DF23FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v33 = a3;
  v6 = type metadata accessor for SleepStageWidgetTimelineProvider(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_269E5101C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v14 = sub_269E5100C();
  v15 = sub_269E51ECC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = a1;
    v19 = v18;
    v34 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v34);
    _os_log_impl(&dword_269DE5000, v14, v15, "[%{public}s] Getting snapshot for sleep stage widget...", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D654490](v19, -1, -1);
    v20 = v17;
    v7 = v31;
    MEMORY[0x26D654490](v20, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  *(v21 + 24) = v33;

  sub_269E51BFC();
  v23 = *(v4 + 24);
  v34 = *(v4 + 16);
  v22 = v34;
  v35 = v23;
  sub_269DF6EF0(v4, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepStageWidgetTimelineProvider);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  sub_269DF6DE4(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_269DF72AC;
  v26[1] = v21;
  v27 = v22;
  v28 = v23;

  SleepWidgetViewModelProvider.currentSleepStageWidgetViewModel(showLiveContent:completion:)(1, sub_269DF73E4, v25);

  v29 = v34;
}

uint64_t sub_269DF2728(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_269E5101C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v9 = sub_269E5100C();
  v10 = sub_269E51ECC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v15);
    _os_log_impl(&dword_269DE5000, v9, v10, "[%{public}s] Returning snapshot for sleep stage widget", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D654490](v12, -1, -1);
    MEMORY[0x26D654490](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return a2(a1);
}

void sub_269DF28E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v33 = a3;
  v6 = type metadata accessor for SleepStageWidgetTimelineProvider(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_269E5101C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v14 = sub_269E5100C();
  v15 = sub_269E51ECC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = a1;
    v19 = v18;
    v34 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v34);
    _os_log_impl(&dword_269DE5000, v14, v15, "[%{public}s] Getting timeline for sleep stage widget...", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D654490](v19, -1, -1);
    v20 = v17;
    v7 = v31;
    MEMORY[0x26D654490](v20, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  *(v21 + 24) = v33;

  sub_269E51BFC();
  v23 = *(v4 + 24);
  v34 = *(v4 + 16);
  v22 = v34;
  v35 = v23;
  sub_269DF6EF0(v4, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepStageWidgetTimelineProvider);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  sub_269DF6DE4(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_269DF6F58;
  v26[1] = v21;
  v27 = v22;
  v28 = v23;

  SleepWidgetViewModelProvider.currentSleepStageWidgetViewModel(showLiveContent:completion:)(1, sub_269DF73E4, v25);

  v29 = v34;
}

uint64_t sub_269DF2C10(uint64_t a1, void (*a2)(void))
{
  v52 = a1;
  sub_269DF7128();
  v4 = v3;
  v54 = *(v3 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6864(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - v9;
  v11 = sub_269E50B9C();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_269E51BCC();
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = *(v50 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v48 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v44 - v18;
  v19 = sub_269E5101C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v24 = sub_269E5100C();
  v25 = sub_269E51ECC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v45 = a2;
    v27 = v26;
    v28 = swift_slowAlloc();
    v44 = v11;
    v29 = v28;
    v55 = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v55);
    _os_log_impl(&dword_269DE5000, v24, v25, "[%{public}s] Returning timeline for sleep stage widget", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v11 = v44;
    MEMORY[0x26D654490](v29, -1, -1);
    v30 = v27;
    a2 = v45;
    MEMORY[0x26D654490](v30, -1, -1);
  }

  (*(v20 + 8))(v23, v19);
  v31 = type metadata accessor for SleepStageWidgetEntry(0);
  v32 = v52;
  sub_269DF71BC(v52 + *(v31 + 20), v10, &qword_281573C60, MEMORY[0x277CC9578]);
  v33 = v47;
  v34 = (*(v47 + 48))(v10, 1, v11);
  v35 = v49;
  if (v34 == 1)
  {
    sub_269DF723C(v10, &qword_281573C60, MEMORY[0x277CC9578]);
    sub_269E51BBC();
  }

  else
  {
    v36 = v46;
    (*(v33 + 32))(v46, v10, v11);
    sub_269E51BAC();
    (*(v33 + 8))(v36, v11);
  }

  sub_269DF6864(0, &qword_28035E910, type metadata accessor for SleepStageWidgetEntry, MEMORY[0x277D84560]);
  v37 = *(*(v31 - 8) + 72);
  v38 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_269E528D0;
  sub_269DF6EF0(v32, v39 + v38, type metadata accessor for SleepStageWidgetEntry);
  v41 = v50;
  v40 = v51;
  (*(v50 + 16))(v48, v35, v51);
  sub_269DF6B64(qword_281573068, type metadata accessor for SleepStageWidgetEntry);
  v42 = v53;
  sub_269E51C2C();
  a2(v42);
  (*(v54 + 8))(v42, v4);
  return (*(v41 + 8))(v35, v40);
}

uint64_t sub_269DF3244(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v72 = a5;
  v69 = a4;
  v70 = type metadata accessor for SleepStageWidgetEntry(0);
  v8 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v68 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_269E50B9C();
  v71 = *(v75 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v75);
  v76 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_269E5101C();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v67 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v63 - v16;
  v18 = *(a1 + 8);
  v77 = *a1;
  v78 = v18;
  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  v73 = *(a1 + 32);
  if (a2)
  {
    v21 = a2;
    sub_269E50FFC();
    v22 = a2;
    v23 = sub_269E5100C();
    v24 = sub_269E51EAC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v81 = v65;
      *v25 = 136446466;
      *(v25 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v81);
      *(v25 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v63[1] = v63;
      v64 = v24;
      v27 = *(*(v79 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v29 + 16))(v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      v30 = sub_269E51D0C();
      v32 = sub_269E47920(v30, v31, &v81);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_269DE5000, v23, v64, "[%{public}s] Error getting sleep stage widget viewModel: %{public}s", v25, 0x16u);
      v33 = v65;
      swift_arrayDestroy();
      MEMORY[0x26D654490](v33, -1, -1);
      MEMORY[0x26D654490](v25, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v17, v74);
  }

  v34 = v67;
  sub_269E50FFC();
  v36 = v77;
  v35 = v78;
  sub_269DF6E4C(v77, v78, v20, v19);
  v37 = sub_269E5100C();
  v38 = sub_269E51ECC();
  sub_269DF6EA0(v36, v35, v20, v19);
  v39 = os_log_type_enabled(v37, v38);
  v66 = v19;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v80 = v41;
    *v40 = 136446466;
    *(v40 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v80);
    *(v40 + 12) = 2082;
    v81 = v77;
    v82 = v78;
    v83 = v20;
    v84 = v19;
    v85 = v73;
    sub_269DF6E4C(v77, v78, v20, v19);
    v42 = sub_269E51D0C();
    v44 = v20;
    v45 = v38;
    v46 = a3;
    v47 = sub_269E47920(v42, v43, &v80);

    *(v40 + 14) = v47;
    a3 = v46;
    _os_log_impl(&dword_269DE5000, v37, v45, "[%{public}s] Returning sleep stage widget viewModel: %{public}s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v41, -1, -1);
    MEMORY[0x26D654490](v40, -1, -1);

    (*(v12 + 8))(v34, v74);
  }

  else
  {

    (*(v12 + 8))(v34, v74);
    v44 = v20;
  }

  v48 = v76;
  sub_269E50B8C();
  v49 = v71;
  v50 = v68;
  (*(v71 + 16))(v68, v48, v75);
  v51 = type metadata accessor for SleepStageWidgetTimelineProvider(0);
  v52 = v70;
  v53 = a3 + *(v51 + 32);
  Calendar.midnight(after:)(v50 + *(v70 + 20));
  v54 = *(v52 + 28);
  v56 = v77;
  v55 = v78;
  v81 = v77;
  v82 = v78;
  v83 = v44;
  v57 = v44;
  v58 = v66;
  v84 = v66;
  v59 = v73;
  v85 = v73;
  sub_269DF6E4C(v77, v78, v57, v66);
  SleepStageWidgetViewModel.timelineEntryRelevance.getter(v50 + v54);
  v60 = sub_269E51BEC();
  (*(*(v60 - 8) + 56))(v50 + v54, 0, 1, v60);
  v61 = v50 + *(v52 + 24);
  *v61 = v56;
  *(v61 + 8) = v55;
  *(v61 + 16) = v57;
  *(v61 + 24) = v58;
  *(v61 + 32) = v59;
  v69(v50);
  sub_269DF6C10(v50);
  return (*(v49 + 8))(v76, v75);
}

uint64_t sub_269DF3968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CE3CF8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_269DF3A1C;

  return MEMORY[0x282136270](a1, a2, a3);
}

uint64_t sub_269DF3A1C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_269DF3B10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269DF73E0;

  return sub_269DF3BA8(a1);
}

uint64_t sub_269DF3BA8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for SleepStageWidgetEntry(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = sub_269E5101C();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269DF3C98, 0, 0);
}

uint64_t sub_269DF3C98()
{
  v18 = v0;
  v1 = v0[13];
  sub_269E50FFC();
  v2 = sub_269E5100C();
  v3 = sub_269E51ECC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E52EA0, &v17);
    _os_log_impl(&dword_269DE5000, v2, v3, "[%{public}s] returning widget relevance", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D654490](v9, -1, -1);
    MEMORY[0x26D654490](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v0[8];
  v11 = swift_task_alloc();
  v0[14] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = 1;
  v12 = *(MEMORY[0x277D859E0] + 4);
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_269DF3E9C;
  v15 = v0[9];
  v14 = v0[10];

  return MEMORY[0x2822007B8](v14, 0, 0, 0xD000000000000023, 0x8000000269E567C0, sub_269DF6C04, v11, v15);
}

uint64_t sub_269DF3E9C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269DF3FB4, 0, 0);
}

uint64_t sub_269DF3FB4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = v2 + *(*(v0 + 72) + 24);
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  *(v0 + 16) = *v4;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  sub_269DF4050((v0 + 16), v3);
  sub_269DF6C10(v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_269DF4050@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = sub_269E5096C();
  v39 = *(v41 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269E50B9C();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v7);
  v8 = sub_269E5097C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6CB8();
  v40 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6864(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = sub_269E509EC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v37 - v26;
  v28 = a1[1];
  v43 = *a1;
  v44 = v28;
  v45 = *(a1 + 32);
  SleepStageWidgetViewModel.relevantDateInterval.getter(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_269DF723C(v19, &qword_281573CB8, MEMORY[0x277CC88A8]);
    return sub_269E51B4C();
  }

  else
  {
    (*(v21 + 32))(v27, v19, v20);
    sub_269E509CC();
    sub_269E509AC();
    sub_269E509BC();
    v30 = v38;
    sub_269E5095C();
    sub_269E5094C();
    (*(v39 + 8))(v30, v41);
    v31 = *(v21 + 8);
    v31(v25, v20);
    sub_269E51AEC();
    sub_269DF6864(0, &qword_281571BD8, sub_269DF6CB8, MEMORY[0x277D84560]);
    v32 = *(v12 + 72);
    v33 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_269E528D0;
    v35 = v34 + v33;
    v36 = v40;
    (*(v12 + 16))(v35, v15, v40);
    sub_269E51B4C();
    (*(v12 + 8))(v15, v36);
    return (v31)(v27, v20);
  }
}

uint64_t sub_269DF456C@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v40 = sub_269E5096C();
  v38 = *(v40 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269E50B9C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v6);
  v7 = sub_269E5097C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v36[1] = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6CB8();
  v39 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6864(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v36 - v17;
  v19 = sub_269E509EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v36 - v26;
  v41(v25);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_269DF723C(v18, &qword_281573CB8, MEMORY[0x277CC88A8]);
    return sub_269E51B4C();
  }

  else
  {
    (*(v20 + 32))(v27, v18, v19);
    sub_269E509CC();
    sub_269E509AC();
    sub_269E509BC();
    v29 = v37;
    sub_269E5095C();
    sub_269E5094C();
    (*(v38 + 8))(v29, v40);
    v30 = *(v20 + 8);
    v30(v24, v19);
    sub_269E51AEC();
    sub_269DF6864(0, &qword_281571BD8, sub_269DF6CB8, MEMORY[0x277D84560]);
    v31 = *(v11 + 72);
    v32 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_269E528D0;
    v34 = v33 + v32;
    v35 = v39;
    (*(v11 + 16))(v34, v14, v39);
    sub_269E51B4C();
    (*(v11 + 8))(v14, v35);
    return (v30)(v27, v19);
  }
}

void sub_269DF4A4C(uint64_t a1, uint64_t a2, int a3)
{
  v25 = a3;
  v5 = type metadata accessor for SleepStageWidgetTimelineProvider(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269DF6D0C();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v10);
  v16 = *(a2 + 24);
  v26 = *(a2 + 16);
  v15 = v26;
  v27 = v16;
  sub_269DF6EF0(a2, v8, type metadata accessor for SleepStageWidgetTimelineProvider);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_269DF6DE4(v8, v19 + v17);
  v20 = (v19 + v18);
  *v20 = sub_269DF6D74;
  v20[1] = v14;
  v21 = v15;
  v22 = v16;

  SleepWidgetViewModelProvider.currentSleepStageWidgetViewModel(showLiveContent:completion:)(v25, sub_269DF6E48, v19);

  v23 = v26;
}

uint64_t sub_269DF4CB0(uint64_t a1)
{
  v2 = type metadata accessor for SleepStageWidgetEntry(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_269DF6EF0(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepStageWidgetEntry);
  sub_269DF6D0C();
  return sub_269E51DEC();
}

uint64_t sub_269DF4D58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E50B9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

SleepWidgetUI::SleepStageWidget __swiftcall SleepStageWidget.init()()
{
  v1 = v0;
  v2 = *MEMORY[0x277D62300];
  v3 = sub_269E51CDC();
  *v1 = v3;
  v1[1] = v4;
  result.kind._object = v4;
  result.kind._countAndFlagsBits = v3;
  return result;
}

uint64_t SleepStageWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v3 = sub_269E50BDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepStageWidgetTimelineProvider(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269DF58DC();
  v68 = v12;
  v69 = *(v12 - 8);
  v13 = *(v69 + 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF5BD4();
  v72 = v16;
  v70 = *(v16 - 8);
  v17 = *(v70 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF5C88();
  v78 = v20;
  v73 = *(v20 - 8);
  v21 = *(v73 + 64);
  MEMORY[0x28223BE20](v20);
  v71 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF5D88();
  v82 = v23;
  v79 = *(v23 - 8);
  v24 = *(v79 + 64);
  MEMORY[0x28223BE20](v23);
  v75 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF5EB8();
  v83 = v26;
  v81 = *(v26 - 8);
  v27 = *(v81 + 64);
  MEMORY[0x28223BE20](v26);
  v77 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6030();
  v80 = v29;
  v76 = *(v29 - 8);
  v30 = *(v76 + 64);
  MEMORY[0x28223BE20](v29);
  v74 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v2;
  v32 = v2[1];
  v34 = *(v8 + 32);
  (*(v4 + 104))(v7, *MEMORY[0x277CC9830], v3);

  sub_269E50BEC();
  (*(v4 + 8))(v7, v3);
  v35 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *v11 = v35;
  v36 = objc_allocWithZone(MEMORY[0x277D62528]);
  v37 = v35;
  v38 = sub_269E51CCC();
  v39 = [v36 initWithIdentifier:v38 healthStore:v37 options:1];

  v11[1] = v39;
  v11[2] = v37;
  v11[3] = v39;
  sub_269DF5940();
  sub_269DF5AF4();
  sub_269DF6B64(&qword_2815731B0, type metadata accessor for SleepStageWidgetTimelineProvider);
  v40 = v39;
  sub_269E51B8C();
  v41 = sub_269DF6B64(&qword_281571E00, sub_269DF58DC);
  v42 = v68;
  sub_269E5139C();
  (*(v69 + 1))(v15, v42);
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  v69 = "SLEEP_STAGE_WIDGET_DISPLAY_NAME";
  v85 = sub_269E50A7C();
  v86 = v43;
  v89 = v42;
  v90 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_269DF0E28();
  v47 = v71;
  v46 = v72;
  sub_269E5138C();

  (*(v70 + 8))(v19, v46);
  v48 = MEMORY[0x277D84560];
  sub_269DF6864(0, &qword_281571BC8, MEMORY[0x277CE3BD8], MEMORY[0x277D84560]);
  v49 = *(sub_269E51B3C() - 8);
  v50 = *(v49 + 72);
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  *(swift_allocObject() + 16) = xmmword_269E528E0;
  sub_269E51B2C();
  sub_269E51B1C();
  sub_269DF6864(0, &qword_281571BD0, MEMORY[0x277CE3BA0], v48);
  v52 = sub_269E51B0C();
  v53 = *(v52 - 8);
  v54 = *(v53 + 72);
  v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_269E528D0;
  (*(v53 + 104))(v56 + v55, *MEMORY[0x277CE3B68], v52);
  v85 = v46;
  v57 = MEMORY[0x277D837D0];
  v86 = MEMORY[0x277D837D0];
  v87 = OpaqueTypeConformance2;
  v88 = v45;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v75;
  v60 = v78;
  sub_269E5137C();

  (*(v73 + 8))(v47, v60);
  v85 = sub_269E50A7C();
  v86 = v61;
  v89 = v60;
  v90 = v58;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v77;
  v64 = v82;
  sub_269E5135C();

  (*(v79 + 8))(v59, v64);
  _s13SleepWidgetUI0a5StageB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  v85 = v64;
  v86 = v57;
  v87 = v62;
  v88 = v45;
  swift_getOpaqueTypeConformance2();
  v65 = v74;
  v66 = v83;
  sub_269E5136C();

  (*(v81 + 8))(v63, v66);
  sub_269DF63DC(v84);
  return (*(v76 + 8))(v65, v80);
}

void sub_269DF58DC()
{
  if (!qword_281571DF8)
  {
    sub_269DF5940();
    sub_269DF5AF4();
    v0 = sub_269E51B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571DF8);
    }
  }
}

void sub_269DF5940()
{
  if (!qword_281572438)
  {
    sub_269DF59A8();
    sub_269DF5A94();
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572438);
    }
  }
}

void sub_269DF59A8()
{
  if (!qword_281571F90)
  {
    type metadata accessor for SleepStageWidgetView();
    sub_269E50B9C();
    sub_269DF6B64(qword_281573108, type metadata accessor for SleepStageWidgetView);
    sub_269DF6B64(&qword_281573C68, MEMORY[0x277CC9578]);
    v0 = sub_269E5192C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571F90);
    }
  }
}

void sub_269DF5A94()
{
  if (!qword_2815720D8)
  {
    sub_269E5132C();
    v0 = sub_269E513DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2815720D8);
    }
  }
}

unint64_t sub_269DF5AF4()
{
  result = qword_281572440;
  if (!qword_281572440)
  {
    sub_269DF5940();
    sub_269DF6B64(&qword_281571F98, sub_269DF59A8);
    sub_269DF6B64(&qword_2815720E0, sub_269DF5A94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572440);
  }

  return result;
}

void sub_269DF5BD4()
{
  if (!qword_281572258)
  {
    sub_269DF58DC();
    sub_269DF6B64(&qword_281571E00, sub_269DF58DC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572258);
    }
  }
}

void sub_269DF5C88()
{
  if (!qword_281572260)
  {
    sub_269DF5BD4();
    sub_269DF58DC();
    sub_269DF6B64(&qword_281571E00, sub_269DF58DC);
    swift_getOpaqueTypeConformance2();
    sub_269DF0E28();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572260);
    }
  }
}

void sub_269DF5D88()
{
  if (!qword_281572288)
  {
    sub_269DF5C88();
    sub_269DF5BD4();
    sub_269DF58DC();
    sub_269DF6B64(&qword_281571E00, sub_269DF58DC);
    swift_getOpaqueTypeConformance2();
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572288);
    }
  }
}

void sub_269DF5EB8()
{
  if (!qword_2815722B8)
  {
    sub_269DF5D88();
    sub_269DF5C88();
    sub_269DF5BD4();
    sub_269DF58DC();
    sub_269DF6B64(&qword_281571E00, sub_269DF58DC);
    swift_getOpaqueTypeConformance2();
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2815722B8);
    }
  }
}

void sub_269DF6030()
{
  if (!qword_2815722A0)
  {
    sub_269DF5EB8();
    sub_269DF5D88();
    sub_269DF5C88();
    sub_269DF5BD4();
    sub_269DF58DC();
    sub_269DF6B64(&qword_281571E00, sub_269DF58DC);
    swift_getOpaqueTypeConformance2();
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2815722A0);
    }
  }
}

void sub_269DF61D8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1 + *(type metadata accessor for SleepStageWidgetEntry(0) + 24);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  *a2 = swift_getKeyPath();
  sub_269DF6864(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for SleepStageWidgetView();
  v11 = v10[5];
  *(a2 + v11) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v12 = a2 + v10[6];
  *v12 = swift_getKeyPath();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v12[32] = 0;
  v13 = a2 + v10[7];
  *v13 = v5;
  *(v13 + 1) = v6;
  *(v13 + 2) = v7;
  *(v13 + 3) = v8;
  v13[32] = v9;
  sub_269DF59A8();
  v15 = *(v14 + 52);
  v16 = sub_269E50B9C();
  (*(*(v16 - 8) + 16))(a2 + v15, a1, v16);
  sub_269DF6E4C(v5, v6, v7, v8);
  v17 = sub_269E5107C();

  sub_269DF5940();
  *(a2 + *(v18 + 36)) = v17;
}

id sub_269DF63DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_269E5101C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v38 - v8;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v11 = result;
    v12 = [result hksp_supportsHealthData];

    v38[1] = a1;
    if (v12)
    {
      sub_269E50FFC();
      v13 = sub_269E5100C();
      v14 = sub_269E51ECC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v39 = v16;
        *v15 = 136446210;
        *(v15 + 4) = sub_269E47920(0xD00000000000004ALL, 0x8000000269E567F0, &v39);
        _os_log_impl(&dword_269DE5000, v13, v14, "[%{public}s] sleep stage widget supported", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x26D654490](v16, -1, -1);
        MEMORY[0x26D654490](v15, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
    }

    else
    {
      sub_269E50FFC();
      v17 = sub_269E5100C();
      v18 = sub_269E51ECC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39 = v20;
        *v19 = 136446210;
        *(v19 + 4) = sub_269E47920(0xD00000000000004ALL, 0x8000000269E567F0, &v39);
        _os_log_impl(&dword_269DE5000, v17, v18, "[%{public}s] sleep stage widget not supported", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x26D654490](v20, -1, -1);
        MEMORY[0x26D654490](v19, -1, -1);
      }

      (*(v3 + 8))(v7, v2);
    }

    sub_269DF6030();
    sub_269DF5EB8();
    v22 = v21;
    sub_269DF5D88();
    v24 = v23;
    sub_269DF5C88();
    v26 = v25;
    sub_269DF5BD4();
    v28 = v27;
    sub_269DF58DC();
    v30 = v29;
    v31 = sub_269DF6B64(&qword_281571E00, sub_269DF58DC);
    v39 = v30;
    v40 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = sub_269DF0E28();
    v34 = MEMORY[0x277D837D0];
    v39 = v28;
    v40 = MEMORY[0x277D837D0];
    v41 = OpaqueTypeConformance2;
    v42 = v33;
    v35 = swift_getOpaqueTypeConformance2();
    v39 = v26;
    v40 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v39 = v24;
    v40 = v34;
    v41 = v36;
    v42 = v33;
    v37 = swift_getOpaqueTypeConformance2();
    v39 = v22;
    v40 = v37;
    swift_getOpaqueTypeConformance2();
    return sub_269E513AC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269DF682C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *MEMORY[0x277D62300];
  result = sub_269E51CDC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_269DF6864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269DF68E4(uint64_t a1, int a2)
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

uint64_t sub_269DF692C(uint64_t result, int a2, int a3)
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

void sub_269DF69A0()
{
  sub_269DF6A7C(319, &qword_281571D10, 0x277CCD4D8);
  if (v0 <= 0x3F)
  {
    sub_269DF6A7C(319, &qword_281571D08, 0x277D62528);
    if (v1 <= 0x3F)
    {
      sub_269DF6AC4();
      if (v2 <= 0x3F)
      {
        sub_269E50C8C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_269DF6A7C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_269DF6AC4()
{
  if (!qword_281572B90)
  {
    v0 = type metadata accessor for SleepWidgetRelevanceProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_281572B90);
    }
  }
}

uint64_t sub_269DF6B64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269DF6BCC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269DF6C10(uint64_t a1)
{
  v2 = type metadata accessor for SleepStageWidgetEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_269DF6CB8()
{
  if (!qword_281571E20)
  {
    v0 = sub_269E51AFC();
    if (!v1)
    {
      atomic_store(v0, &qword_281571E20);
    }
  }
}

void sub_269DF6D0C()
{
  if (!qword_281571D38)
  {
    type metadata accessor for SleepStageWidgetEntry(255);
    v0 = sub_269E51DFC();
    if (!v1)
    {
      atomic_store(v0, &qword_281571D38);
    }
  }
}

uint64_t sub_269DF6D74(uint64_t a1)
{
  sub_269DF6D0C();
  v3 = *(*(v2 - 8) + 80);

  return sub_269DF4CB0(a1);
}

uint64_t sub_269DF6DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepStageWidgetTimelineProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_269DF6E4C(id result, void *a2, uint64_t a3, void *a4)
{
  if (result)
  {
    v4 = a4;

    return a2;
  }

  return result;
}

void sub_269DF6EA0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t sub_269DF6EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_17Tm()
{
  v1 = (type metadata accessor for SleepStageWidgetTimelineProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);

  v6 = v1[10];
  v7 = sub_269E50C8C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_269DF7078(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for SleepStageWidgetTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_269DF3244(a1, a2, v2 + v6, v8, v9);
}

void sub_269DF7128()
{
  if (!qword_28035E908)
  {
    type metadata accessor for SleepStageWidgetEntry(255);
    sub_269DF6B64(qword_281573068, type metadata accessor for SleepStageWidgetEntry);
    v0 = sub_269E51C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035E908);
    }
  }
}

uint64_t sub_269DF71BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269DF6864(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269DF723C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269DF6864(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_269DF72DC()
{
  sub_269E50B9C();
  if (v0 <= 0x3F)
  {
    sub_269DF6864(319, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_269DF6864(319, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for GreetingSleepWidgetCircularView()
{
  result = qword_281573A18;
  if (!qword_281573A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269DF745C()
{
  result = type metadata accessor for SleepWidgetViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269DF74D4(uint64_t a1)
{
  result = sub_269DF78C0(qword_281573A50, type metadata accessor for GreetingSleepWidgetCircularView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269DF7548@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[0] = a1;
  v3 = sub_269E51A8C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_269E50FBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FAC();
  sub_269E50F6C();
  (*(v6 + 8))(v9, v5);
  v10 = (v2 + *(type metadata accessor for SleepWidgetViewModel() + 40));
  v11 = v10[1];
  v12 = MEMORY[0x277D84F90];
  if (*v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    [v11 sleepDuration];
    if (v14 > COERCE_DOUBLE(1) && v14 > 0.0)
    {
      sub_269DF7908(0, &qword_28035E900, MEMORY[0x277CC8C40], MEMORY[0x277D84560]);
      v15 = *(sub_269E50A5C() - 8);
      v16 = *(v15 + 72);
      v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      *(swift_allocObject() + 16) = xmmword_269E528D0;
      sub_269DF1E8C();
      sub_269E51D4C();
    }
  }

  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v19[1] = v12;
  sub_269DF78C0(&qword_281571E30, MEMORY[0x277D12700]);
  sub_269DF7908(0, &qword_281571D80, MEMORY[0x277D12700], MEMORY[0x277D83940]);
  sub_269DF2070();

  sub_269E51FEC();
  return sub_269E51A6C();
}

uint64_t sub_269DF78C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269DF7908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269DF7980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269DF7A18()
{
  sub_269DF7980(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_269DF7980(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BarView.Configuration(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BarView.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_269DF7C34()
{
  sub_269DF7980(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_269DF7980(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_269DFB5D8(319, &qword_2815725C0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_269DF7DA8()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_28035E918 = 1.0 / v2;
  return result;
}

double sub_269DF7E14()
{
  if (qword_28035E870 != -1)
  {
    swift_once();
  }

  result = *&qword_28035E918;
  qword_28035E920 = qword_28035E918;
  return result;
}

uint64_t sub_269DF7E6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E512CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CE3BA0];
  v10 = MEMORY[0x277CDF458];
  sub_269DF7980(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v19 - v13);
  sub_269DFB888(v2, &v19 - v13, &qword_281572608, v9, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_269E51B0C();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_269E51EBC();
    v18 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_269DF8098@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3AF8];
  v9 = MEMORY[0x277CDF458];
  sub_269DF7980(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for BarView(0);
  sub_269DFB888(v1 + *(v14 + 20), v13, &qword_281572610, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_269E51ADC();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_269E51EBC();
    v18 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_269DF82CC()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for BarView(0) + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_269E51EBC();
    v8 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_269DF8424@<X0>(uint64_t a1@<X8>)
{
  v37[1] = a1;
  sub_269DFCC38(0, &qword_28035E928, &qword_28035E930, sub_269DFB9E0, &qword_28035E950);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (v37 - v4);
  sub_269DFBCA4();
  v37[0] = v6;
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v37 - v11;
  sub_269DFBD64(0, &qword_28035E960, type metadata accessor for PlaceholderBarView, sub_269DFBCA4, MEMORY[0x277CE0330]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v37 - v15;
  v17 = type metadata accessor for PlaceholderBarView(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BarView(0);
  v22 = (v1 + v21[7]);
  v23 = v22[1];
  v38 = *v22;
  v39 = v23;
  v40 = v22[2];
  v24 = sub_269E28B60();
  v25 = v1 + v21[8];
  if (v24)
  {
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v1 + v21[10]);
    *&v20[*(v17 + 28)] = swift_getKeyPath();
    v30 = MEMORY[0x277CDF458];
    sub_269DF7980(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *&v20[*(v17 + 32)] = swift_getKeyPath();
    sub_269DF7980(0, &qword_281572610, MEMORY[0x277CE3AF8], v30);
    swift_storeEnumTagMultiPayload();
    *v20 = v26;
    *(v20 + 1) = v27;
    v20[16] = v28;
    *(v20 + 3) = 0x4018000000000000;
    v20[32] = v29;
    sub_269DFB7C0(v20, v16, type metadata accessor for PlaceholderBarView);
    swift_storeEnumTagMultiPayload();
    sub_269DFCAB0(&qword_281572768, type metadata accessor for PlaceholderBarView);
    sub_269DFBE80();
    sub_269E513BC();
    return sub_269DFB828(v20, type metadata accessor for PlaceholderBarView);
  }

  else
  {
    v32 = v37[0];
    if (*(v25 + 16))
    {
      v33 = sub_269E519AC();
    }

    else
    {
      v33 = sub_269E519CC();
    }

    *v5 = v33;
    v5[1] = v34;
    sub_269DFBDE8();
    sub_269DF88A4(v1, v5 + *(v35 + 44));
    v36 = sub_269E5185C();
    sub_269DE7CCC(v5, v10);
    *&v10[*(v32 + 36)] = v36;
    sub_269DE7D5C(v10, v12);
    sub_269DE7DC0(v12, v16);
    swift_storeEnumTagMultiPayload();
    sub_269DFCAB0(&qword_281572768, type metadata accessor for PlaceholderBarView);
    sub_269DFBE80();
    sub_269E513BC();
    return sub_269DE7E24(v12);
  }
}

uint64_t sub_269DF88A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v3 = type metadata accessor for BarView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_269DFBA64();
  v113 = v7;
  v121 = *(v7 - 8);
  v8 = v121[8];
  v9 = MEMORY[0x28223BE20](v7);
  v123 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v120 = &v107 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v112 = &v107 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v111 = &v107 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v110 = &v107 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v119 = &v107 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v117 = &v107 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v131 = &v107 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v129 = &v107 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v130 = &v107 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v132 = &v107 - v30;
  MEMORY[0x28223BE20](v29);
  v133 = &v107 - v31;
  v32 = a1 + *(v4 + 40);
  v33 = *v32;
  v34 = *(v32 + 8);
  sub_269DF94D0(*(v32 + 16), &v138);
  v118 = sub_269E5186C();
  KeyPath = swift_getKeyPath();
  v35 = (a1 + *(v4 + 36));
  v36 = *v35;
  v128 = v35;
  v37 = a1;
  v38 = sub_269DF9734(v36);
  v39 = *(v38 + 16);
  *&v151[0] = 0;
  *(&v151[0] + 1) = v39;
  v109 = swift_getKeyPath();
  v126 = type metadata accessor for BarView;
  v134 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFB7C0(a1, v134, type metadata accessor for BarView);
  v40 = *(v5 + 80);
  v41 = (v40 + 24) & ~v40;
  v137 = v41;
  v115 = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = v38;
  v135 = type metadata accessor for BarView;
  sub_269DFC688(&v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41, type metadata accessor for BarView);
  *(v42 + ((v6 + v41 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
  sub_269DFC3D8(0, &qword_281571D20, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
  v136 = v43;
  sub_269DFBB24();
  v45 = v44;
  v125 = sub_269DFBBA4();
  *&v146[0] = MEMORY[0x277CE11C8];
  *(&v146[0] + 1) = MEMORY[0x277CE11C0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v116 = v45;
  sub_269E5197C();
  v46 = v35[1];
  v109 = _HKCategoryValueSleepAnalysisDefaultAsleepValue();
  v124 = v37;
  v47 = sub_269DF9734(v46);
  v48 = *(v47 + 16);
  *&v151[0] = 0;
  *(&v151[0] + 1) = v48;
  swift_getKeyPath();
  v49 = v37;
  v50 = v134;
  v51 = v126;
  sub_269DFB7C0(v49, v134, v126);
  v52 = (v6 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = v47;
  v54 = v50;
  v55 = v50;
  v56 = v135;
  sub_269DFC688(v54, v53 + v137, v135);
  *(v53 + v52) = v109;
  sub_269E5197C();
  v57 = v128;
  v58 = v124;
  v59 = sub_269DF9734(v128[3]);
  v60 = *(v59 + 16);
  *&v151[0] = 0;
  *(&v151[0] + 1) = v60;
  v109 = swift_getKeyPath();
  v61 = v58;
  v62 = v55;
  sub_269DFB7C0(v61, v55, v51);
  v63 = v108;
  v64 = swift_allocObject();
  *(v64 + 16) = v59;
  v65 = v137;
  sub_269DFC688(v62, v64 + v137, v56);
  *(v64 + v63) = 5;
  sub_269E5197C();
  v66 = v124;
  v67 = sub_269DF9734(v57[2]);
  v68 = *(v67 + 16);
  *&v151[0] = 0;
  *(&v151[0] + 1) = v68;
  swift_getKeyPath();
  v69 = v66;
  v70 = v134;
  v71 = v126;
  sub_269DFB7C0(v69, v134, v126);
  v72 = swift_allocObject();
  *(v72 + 16) = v67;
  sub_269DFC688(v70, v72 + v65, v135);
  *(v72 + v63) = 3;
  v73 = v63;
  sub_269E5197C();
  v74 = v124;
  v75 = sub_269DF9734(v128[4]);
  v76 = *(v75 + 16);
  *&v151[0] = 0;
  *(&v151[0] + 1) = v76;
  v109 = swift_getKeyPath();
  v77 = v134;
  sub_269DFB7C0(v74, v134, v71);
  v78 = swift_allocObject();
  *(v78 + 16) = v75;
  sub_269DFC688(v77, v78 + v137, v135);
  *(v78 + v73) = 4;
  sub_269E5197C();
  v79 = sub_269DF9734(v128[5]);
  v80 = *(v79 + 16);
  *&v151[0] = 0;
  *(&v151[0] + 1) = v80;
  swift_getKeyPath();
  v81 = v134;
  sub_269DFB7C0(v74, v134, v126);
  v82 = swift_allocObject();
  *(v82 + 16) = v79;
  sub_269DFC688(v81, v82 + v137, v135);
  *(v82 + v73) = 2;
  v83 = v117;
  sub_269E5197C();
  v84 = v121[2];
  v85 = v119;
  v86 = v113;
  v84(v119, v133, v113);
  v87 = v110;
  v84(v110, v132, v86);
  v88 = v111;
  v84(v111, v130, v86);
  v89 = v112;
  v84(v112, v129, v86);
  v84(v120, v131, v86);
  v84(v123, v83, v86);
  v147 = v143;
  v148 = v144;
  v146[0] = v138;
  v146[1] = v139;
  v146[2] = v140;
  v146[3] = v141;
  v146[4] = v142;
  *&v149 = v145;
  *(&v149 + 1) = KeyPath;
  v90 = v118;
  v150 = v118;
  v91 = v138;
  v92 = v139;
  v93 = v141;
  v94 = v142;
  v95 = v114;
  *(v114 + 32) = v140;
  *(v95 + 48) = v93;
  *v95 = v91;
  *(v95 + 16) = v92;
  v96 = v147;
  v97 = v148;
  v98 = v149;
  *(v95 + 128) = v90;
  *(v95 + 96) = v97;
  *(v95 + 112) = v98;
  *(v95 + 64) = v94;
  *(v95 + 80) = v96;
  v99 = v95;
  sub_269DFB9E0();
  v101 = v100;
  v84((v99 + v100[12]), v85, v86);
  v84((v99 + v101[16]), v87, v86);
  v84((v99 + v101[20]), v88, v86);
  v84((v99 + v101[24]), v89, v86);
  v102 = v120;
  v84((v99 + v101[28]), v120, v86);
  v103 = (v99 + v101[32]);
  v104 = v123;
  v84(v103, v123, v86);
  sub_269DFB7C0(v146, v151, sub_269DFB458);
  v105 = v121[1];
  v105(v117, v86);
  v105(v131, v86);
  v105(v129, v86);
  v105(v130, v86);
  v105(v132, v86);
  v105(v133, v86);
  v105(v104, v86);
  v105(v102, v86);
  v105(v89, v86);
  v105(v88, v86);
  v105(v87, v86);
  v105(v119, v86);
  v151[4] = v142;
  v151[5] = v143;
  v151[6] = v144;
  v151[0] = v138;
  v151[1] = v139;
  v151[2] = v140;
  v151[3] = v141;
  v152 = v145;
  v153 = KeyPath;
  v154 = v118;
  return sub_269DFB828(v151, sub_269DFB458);
}

double sub_269DF94D0@<D0>(char a1@<W2>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_269E519AC();
    sub_269E5106C();
  }

  else
  {
    sub_269E519AC();
    sub_269E5111C();
  }

  v3 = MEMORY[0x277CE14A8];
  v4 = MEMORY[0x277CDFC70];
  v5 = MEMORY[0x277CDFAB8];
  sub_269DFC3D8(0, &qword_281572408, MEMORY[0x277CE14A8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
  v6 = MEMORY[0x277CDF688];
  sub_269DFC3D8(0, &qword_281572418, v3, MEMORY[0x277CDF688], v5);
  sub_269DFB94C(&qword_281572410, &qword_281572408, v4);
  sub_269DFB94C(&qword_281572420, &qword_281572418, v6);
  sub_269E513BC();
  *(a2 + 64) = v12;
  *(a2 + 80) = v13;
  *(a2 + 96) = v14;
  *(a2 + 112) = v15;
  *a2 = v8;
  *(a2 + 16) = v9;
  result = *&v10;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_269DF9734(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  result = type metadata accessor for BarView(0);
  v5 = (v1 + *(result + 36));
  v6 = *v5;
  v7 = *(v1 + *(result + 32) + 8) / (v5[1] - *v5);
  v8 = MEMORY[0x277D84F90];
  for (i = (a1 + 48); ; i += 3)
  {
    v15 = *(i - 2);
    v16 = *i;
    v17 = v7 * (v15 - v6);
    v18 = v7 * (*(i - 1) - v15);
    v19 = *(v8 + 16);
    if (!v19)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v25 = 1;
LABEL_21:
        result = sub_269E0DE88(0, v25, 1, v8);
        v8 = result;
      }

LABEL_4:
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        result = sub_269E0DE88((v10 > 1), v11 + 1, 1, v8);
        v8 = result;
      }

      v13 = v17;
      goto LABEL_7;
    }

    v20 = v8 + 24 * v19;
    v13 = *(v20 + 8);
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (qword_28035E878 != -1)
    {
      result = swift_once();
    }

    v23 = v17 - (v13 + v21);
    if (v23 >= *&qword_28035E920)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v25 = *(v8 + 16) + 1;
        goto LABEL_21;
      }

      goto LABEL_4;
    }

    if (!*(v8 + 16))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v12 = *(v8 + 16);
      if (!v12)
      {
        goto LABEL_27;
      }
    }

    else
    {
      result = sub_269DFCAF8(v8);
      v8 = result;
      v12 = *(result + 16);
      if (!v12)
      {
        goto LABEL_27;
      }
    }

    v11 = v12 - 1;
    *(v8 + 16) = v12 - 1;
    v24 = *(v8 + 24);
    if (v12 > v24 >> 1)
    {
      result = sub_269E0DE88((v24 > 1), v12, 1, v8);
      v8 = result;
    }

    v16 |= v22;
    v18 = v18 + v21 + v23;
LABEL_7:
    *(v8 + 16) = v12;
    v14 = v8 + 24 * v11;
    *(v14 + 32) = v13;
    *(v14 + 40) = v18;
    *(v14 + 48) = v16 & 1;
    if (!--v2)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_269DF996C@<X0>(unint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a4;
  v79 = a5;
  v74 = sub_269E51B0C();
  v73 = *(v74 - 8);
  v10 = *(v73 + 64);
  v11 = MEMORY[0x28223BE20](v74);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v67 - v13;
  sub_269DFBD64(0, &qword_28035E988, sub_269DFC2FC, sub_269DFC42C, MEMORY[0x277CDFAB8]);
  v71 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - v16;
  sub_269DFC4C0();
  v76 = v18;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFC564(0);
  v78 = v22;
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v77 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_269E51ADC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  sub_269E51E1C();
  v75 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v30 < *(a2 + 2))
  {
    v31 = a2;
    a2 = v21;
    v32 = &v31[24 * v30];
    v6 = *(v32 + 4);
    v5 = *(v32 + 5);
    v33 = v32[48];
    sub_269DF8098(v29);
    v34 = sub_269DF82CC();
    v35 = v69;
    v67 = sub_269DFA074(v33, v29, v34 & 1, v69);
    v36 = *(v26 + 8);
    v36(v29, v25);
    sub_269DF8098(v29);
    v68 = v33;
    LODWORD(v69) = sub_269DFA360(v33, v29, v35);
    v36(v29, v25);
    if (qword_28035E870 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_6:
  v37 = 1.0;
  v38 = v73;
  v39 = v72;
  if (*&qword_28035E918 >= v5)
  {
    v37 = fmax(v5 / *&qword_28035E918, 0.5);
  }

  v40 = a2;
  v41 = (a3 + *(type metadata accessor for BarView(0) + 32));
  v42 = *v41;
  v43 = *(v41 + 16);
  sub_269DFA4A8(v43, v81);
  KeyPath = swift_getKeyPath();
  v45 = v67;

  v46 = v70;
  sub_269DF7E6C(v70);
  v47 = sub_269DF82CC();
  v48 = v74;
  (*(v38 + 32))(v39, v46, v74);
  if ((*(v38 + 88))(v39, v48) == *MEMORY[0x277CE3B98])
  {
    v49 = 3.0;
    if (v47)
    {
      v49 = 4.0;
    }

    if (v43)
    {
      v50 = 2.0;
    }

    else
    {
      v50 = v49;
    }
  }

  else
  {
    (*(v38 + 8))(v39, v48);
    v50 = 2.0;
  }

  v51 = &v17[*(v71 + 36)];
  v52 = *(sub_269E5110C() + 20);
  v53 = *MEMORY[0x277CE0118];
  v54 = sub_269E5131C();
  (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
  *v51 = v50;
  v51[1] = v50;
  sub_269DFC42C();
  *(v51 + *(v55 + 36)) = 256;
  v56 = v81[5];
  *(v17 + 4) = v81[4];
  *(v17 + 5) = v56;
  *(v17 + 6) = v81[6];
  v57 = v82;
  v58 = v81[1];
  *v17 = v81[0];
  *(v17 + 1) = v58;
  v59 = v81[3];
  *(v17 + 2) = v81[2];
  *(v17 + 3) = v59;
  v60 = v69;
  *(v17 + 28) = v57;
  *(v17 + 29) = v60;
  *(v17 + 15) = KeyPath;
  *(v17 + 16) = v45;
  sub_269DFC5E0(v17, v40);
  *(v40 + *(v76 + 36)) = v37;
  v61 = v77;
  sub_269DFC688(v40, v77, sub_269DFC4C0);
  v62 = (v61 + *(v78 + 36));
  v63 = 0.0;
  if (v43)
  {
    v64 = 0.0;
  }

  else
  {
    v64 = v6;
  }

  if (v43)
  {
    v63 = v6;
  }

  *v62 = v64;
  v62[1] = v63;
  sub_269DFC6F0(&qword_28035E9C8, sub_269DFC564, sub_269DFC770);
  v65 = sub_269E5196C();

  v80 = v65;
  sub_269E5172C();
}

uint64_t sub_269DFA074(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_269E51ADC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51ACC();
  v12 = sub_269E51AAC();
  (*(v8 + 8))(v11, v7);
  result = 0;
  if (v12)
  {
    if (a3)
    {
      sub_269E5180C();
      v14 = sub_269E5188C();

      return v14;
    }

    if (a4 > 2)
    {
      switch(a4)
      {
        case 3:
          v15 = objc_opt_self();
          if (a1)
          {
            v16 = [v15 hk_sleepAsleepCoreColor];
            goto LABEL_30;
          }

          goto LABEL_29;
        case 4:
          v15 = objc_opt_self();
          if (a1)
          {
            v16 = [v15 hk_sleepAsleepDeepColor];
            goto LABEL_30;
          }

          goto LABEL_29;
        case 5:
          v15 = objc_opt_self();
          if (a1)
          {
            v16 = [v15 hk_sleepAsleepREMColor];
            goto LABEL_30;
          }

LABEL_29:
          v16 = [v15 systemGray3Color];
          goto LABEL_30;
      }
    }

    else
    {
      switch(a4)
      {
        case 0:
          v17 = objc_opt_self();
          if (a1)
          {
            v16 = [v17 hk_sleepInBedColor];
          }

          else
          {
            v16 = [v17 systemGray5Color];
          }

          goto LABEL_30;
        case 1:
          if ((a1 & 1) == 0)
          {
            goto LABEL_20;
          }

          return sub_269E5180C();
        case 2:
          v15 = objc_opt_self();
          if (a1)
          {
            v16 = [v15 hk_sleepAwakeColor];
LABEL_30:
            v18 = v16;
            return sub_269E5183C();
          }

          goto LABEL_29;
      }
    }

    if ((a1 & 1) == 0)
    {
LABEL_20:
      v16 = [objc_opt_self() systemGray3Color];
      goto LABEL_30;
    }

    return sub_269E5180C();
  }

  return result;
}

uint64_t sub_269DFA360(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_269E51ADC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51ACC();
  sub_269DFCAB0(&qword_28035EA08, MEMORY[0x277CE3AF8]);
  v10 = sub_269E51C9C();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    return sub_269E513EC();
  }

  if (a1)
  {
    if (a3)
    {
      return sub_269E513EC();
    }

    return sub_269E5140C();
  }

  if (a3)
  {
    return sub_269E5140C();
  }

  return sub_269E513FC();
}

double sub_269DFA4A8@<D0>(char a1@<W2>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_269E519AC();
    sub_269E5106C();
  }

  else
  {
    sub_269E519AC();
    sub_269E5111C();
  }

  v3 = MEMORY[0x277CE14A8];
  v4 = MEMORY[0x277CDFC70];
  v5 = MEMORY[0x277CDFAB8];
  sub_269DFC3D8(0, &qword_281572408, MEMORY[0x277CE14A8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
  v6 = MEMORY[0x277CDF688];
  sub_269DFC3D8(0, &qword_281572418, v3, MEMORY[0x277CDF688], v5);
  sub_269DFB94C(&qword_281572410, &qword_281572408, v4);
  sub_269DFB94C(&qword_281572420, &qword_281572418, v6);
  sub_269E513BC();
  *(a2 + 64) = v12;
  *(a2 + 80) = v13;
  *(a2 + 96) = v14;
  *(a2 + 112) = v15;
  *a2 = v8;
  *(a2 + 16) = v9;
  result = *&v10;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_269DFA72C()
{
  v1 = sub_269E51ADC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269E51B0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v0, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 != *MEMORY[0x277CE3B68])
  {
    if (v11 != *MEMORY[0x277CE3B98])
    {
      v14 = sub_269E5180C();
      (*(v7 + 8))(v10, v6);
      return v14;
    }

    goto LABEL_5;
  }

  sub_269E51ABC();
  v12 = sub_269E51AAC();
  (*(v2 + 8))(v5, v1);
  if (v12)
  {
LABEL_5:
    sub_269E5185C();
    v14 = sub_269E5188C();

    return v14;
  }

  v13 = [objc_opt_self() systemGray5Color];
  return sub_269E5183C();
}

uint64_t sub_269DFA964@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3BA0];
  v9 = MEMORY[0x277CDF458];
  sub_269DF7980(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for PlaceholderBarView(0);
  sub_269DFB888(v1 + *(v14 + 28), v13, &qword_281572608, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_269E51B0C();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_269E51EBC();
    v18 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_269DFAB98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3AF8];
  v9 = MEMORY[0x277CDF458];
  sub_269DF7980(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for PlaceholderBarView(0);
  sub_269DFB888(v1 + *(v14 + 32), v13, &qword_281572610, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_269E51ADC();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_269E51EBC();
    v18 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_269DFADCC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 16))
  {
    v4 = sub_269E519AC();
  }

  else
  {
    v4 = sub_269E519CC();
  }

  v6 = v4;
  v7 = v5;
  sub_269DFAF84(v2, &v16);
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v30 = v16;
  v31 = v17;
  v44[10] = v26;
  v44[11] = v27;
  v44[12] = v28;
  v44[6] = v22;
  v44[7] = v23;
  v44[8] = v24;
  v44[9] = v25;
  v44[2] = v18;
  v44[3] = v19;
  v44[4] = v20;
  v44[5] = v21;
  v43 = v29;
  v45 = v29;
  v44[0] = v16;
  v44[1] = v17;
  sub_269DFB888(&v30, &v15, &qword_281571EE8, sub_269DFB3E8, MEMORY[0x277CE14B8]);
  sub_269DFB6DC(v44);
  v56 = v40;
  v57 = v41;
  v58 = v42;
  v59 = v43;
  v52 = v36;
  v53 = v37;
  v54 = v38;
  v55 = v39;
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v51 = v35;
  v46 = v30;
  v47 = v31;
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = v57;
  *(a1 + 176) = v56;
  *(a1 + 192) = v8;
  *(a1 + 208) = v58;
  *(a1 + 224) = v59;
  v9 = v53;
  *(a1 + 112) = v52;
  *(a1 + 128) = v9;
  v10 = v55;
  *(a1 + 144) = v54;
  *(a1 + 160) = v10;
  v11 = v49;
  *(a1 + 48) = v48;
  *(a1 + 64) = v11;
  v12 = v51;
  *(a1 + 80) = v50;
  *(a1 + 96) = v12;
  result = *&v46;
  v14 = v47;
  *(a1 + 16) = v46;
  *(a1 + 32) = v14;
  return result;
}

uint64_t sub_269DFAF84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_269E51ADC();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269E51B0C();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = *(a1 + 16);
  sub_269DF94D0(*(a1 + 16), &v92);
  v48 = sub_269E5186C();
  KeyPath = swift_getKeyPath();
  v15 = *(a1 + 3);
  sub_269E519BC();
  sub_269E5106C();
  v16 = v87;
  v43 = v86;
  v44 = v88;
  v17 = v89;
  v45 = v91;
  v46 = v90;
  if (*(a1 + 32) == 1)
  {
    sub_269DFA964(v11);
    sub_269DFAB98(v7);
    v18 = sub_269DFA72C();
    (*(v41 + 8))(v7, v42);
    (*(v39 + 8))(v11, v40);
  }

  else
  {
    v18 = sub_269E5186C();
  }

  v19 = swift_getKeyPath();
  v83 = v16;
  v82 = v17;
  v20 = v13 * 0.5 - v15 * 0.5;
  if (v14)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v13 * 0.5 - v15 * 0.5;
  }

  if (!v14)
  {
    v20 = 0.0;
  }

  v58[4] = v96;
  v58[5] = v97;
  v58[6] = v98;
  v58[0] = v92;
  v58[1] = v93;
  v58[2] = v94;
  v58[3] = v95;
  v23 = KeyPath;
  v22 = v48;
  *&v59 = v99;
  *(&v59 + 1) = KeyPath;
  v60 = v48;
  *&v57[0] = v48;
  v53 = v96;
  v54 = v97;
  v51 = v94;
  v52 = v95;
  v49 = v92;
  v50 = v93;
  v55 = v98;
  v56 = v59;
  v25 = v43;
  v24 = v44;
  *&v61 = v43;
  BYTE8(v61) = v16;
  HIDWORD(v61) = *&v85[3];
  *(&v61 + 9) = *v85;
  *&v62 = v44;
  BYTE8(v62) = v17;
  HIDWORD(v62) = *&v84[3];
  *(&v62 + 9) = *v84;
  v27 = v45;
  v26 = v46;
  *&v63 = v46;
  *(&v63 + 1) = v45;
  *&v64 = v19;
  *(&v64 + 1) = v18;
  *&v65 = v21;
  *(&v65 + 1) = v20;
  *(v57 + 8) = v61;
  *(&v57[4] + 8) = v65;
  *(&v57[3] + 8) = v64;
  *(&v57[2] + 8) = v63;
  *(&v57[1] + 8) = v62;
  v28 = v93;
  *a2 = v92;
  *(a2 + 16) = v28;
  v29 = v51;
  v30 = v52;
  v31 = v54;
  *(a2 + 64) = v53;
  *(a2 + 80) = v31;
  *(a2 + 32) = v29;
  *(a2 + 48) = v30;
  v32 = v55;
  v33 = v56;
  v34 = v57[1];
  *(a2 + 128) = v57[0];
  *(a2 + 144) = v34;
  *(a2 + 96) = v32;
  *(a2 + 112) = v33;
  v35 = v57[2];
  v36 = v57[3];
  v37 = v57[4];
  *(a2 + 208) = *&v57[5];
  *(a2 + 176) = v36;
  *(a2 + 192) = v37;
  *(a2 + 160) = v35;
  v66 = v25;
  v67 = v16;
  *v68 = *v85;
  *&v68[3] = *&v85[3];
  v69 = v24;
  v70 = v17;
  *v71 = *v84;
  *&v71[3] = *&v84[3];
  v72 = v26;
  v73 = v27;
  v74 = v19;
  v75 = v18;
  v76 = v21;
  v77 = v20;
  sub_269DFB7C0(v58, v78, sub_269DFB458);
  sub_269DFB7C0(&v61, v78, sub_269DFB628);
  sub_269DFB828(&v66, sub_269DFB628);
  v78[4] = v96;
  v78[5] = v97;
  v78[6] = v98;
  v78[0] = v92;
  v78[1] = v93;
  v78[2] = v94;
  v78[3] = v95;
  v79 = v99;
  v80 = v23;
  v81 = v22;
  return sub_269DFB828(v78, sub_269DFB458);
}

void sub_269DFB3E8()
{
  if (!qword_281572510)
  {
    sub_269DFB458(255);
    sub_269DFB628(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281572510);
    }
  }
}

void sub_269DFB4A0()
{
  if (!qword_281572160)
  {
    v0 = MEMORY[0x277CE14A8];
    v1 = MEMORY[0x277CDFAB8];
    sub_269DFC3D8(255, &qword_281572408, MEMORY[0x277CE14A8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    sub_269DFC3D8(255, &qword_281572418, v0, MEMORY[0x277CDF688], v1);
    v2 = sub_269E513CC();
    if (!v3)
    {
      atomic_store(v2, &qword_281572160);
    }
  }
}

void sub_269DFB55C()
{
  if (!qword_281572098)
  {
    sub_269DFB5D8(255, &qword_281572020, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    v0 = sub_269E5147C();
    if (!v1)
    {
      atomic_store(v0, &qword_281572098);
    }
  }
}

void sub_269DFB5D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269DFB648()
{
  if (!qword_281572378)
  {
    sub_269DFC3D8(255, &qword_281572478, MEMORY[0x277CE1120], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_269DFB55C();
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572378);
    }
  }
}

uint64_t sub_269DFB6DC(uint64_t a1)
{
  sub_269DF7980(0, &qword_281571EE8, sub_269DFB3E8, MEMORY[0x277CE14B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269DFB768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269E511AC();
  *a1 = result;
  return result;
}

uint64_t sub_269DFB794(uint64_t *a1)
{
  v1 = *a1;

  return sub_269E511BC();
}

uint64_t sub_269DFB7C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269DFB828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269DFB888(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_269DF7980(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_269DFB8F8()
{
  result = qword_281571F08;
  if (!qword_281571F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571F08);
  }

  return result;
}

uint64_t sub_269DFB94C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_269DFC3D8(255, a2, MEMORY[0x277CE14A8], a3, MEMORY[0x277CDFAB8]);
    sub_269DFB8F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269DFB9E0()
{
  if (!qword_28035E938)
  {
    sub_269DFB458(255);
    sub_269DFBA64();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_28035E938);
    }
  }
}

void sub_269DFBA64()
{
  if (!qword_28035E940)
  {
    sub_269DFC3D8(255, &qword_281571D20, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    sub_269DFBB24();
    sub_269DFBBA4();
    v0 = sub_269E5198C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035E940);
    }
  }
}

void sub_269DFBB24()
{
  if (!qword_28035E948)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035E948);
    }
  }
}

unint64_t sub_269DFBBA4()
{
  result = qword_281571D18;
  if (!qword_281571D18)
  {
    sub_269DFC3D8(255, &qword_281571D20, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    sub_269DFBC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D18);
  }

  return result;
}

unint64_t sub_269DFBC50()
{
  result = qword_281571DC8;
  if (!qword_281571DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571DC8);
  }

  return result;
}

void sub_269DFBCA4()
{
  if (!qword_28035E958)
  {
    sub_269DFCC38(255, &qword_28035E928, &qword_28035E930, sub_269DFB9E0, &qword_28035E950);
    sub_269DFC3D8(255, &qword_2815720D0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035E958);
    }
  }
}

void sub_269DFBD64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_269DFBDE8()
{
  if (!qword_28035E968)
  {
    sub_269DF7980(255, &qword_28035E930, sub_269DFB9E0, MEMORY[0x277CE14B8]);
    v0 = sub_269E5109C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035E968);
    }
  }
}

unint64_t sub_269DFBE80()
{
  result = qword_28035E970;
  if (!qword_28035E970)
  {
    sub_269DFBCA4();
    sub_269DFBF20();
    sub_269DFBFA4(&qword_28035E980, &qword_2815720D0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035E970);
  }

  return result;
}

unint64_t sub_269DFBF20()
{
  result = qword_28035E978;
  if (!qword_28035E978)
  {
    sub_269DFCC38(255, &qword_28035E928, &qword_28035E930, sub_269DFB9E0, &qword_28035E950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035E978);
  }

  return result;
}

uint64_t sub_269DFBFA4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269DFC3D8(255, a2, a3, a4, MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269DFC008(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_269DFC018@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BarView(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_269DF996C(a1, v8, v2 + v6, v7, a2);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for BarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  sub_269DF7980(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_269E51B0C();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = v1[5];
  sub_269DF7980(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_269E51ADC();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
    v11 = *&v6[v9];
  }

  sub_269DFC008(*&v6[v1[6]], v6[v1[6] + 8]);
  v12 = &v6[v1[7]];
  v13 = *v12;

  v14 = *(v12 + 1);

  v15 = *(v12 + 2);

  v16 = *(v12 + 3);

  v17 = *(v12 + 4);

  v18 = *(v12 + 5);

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_269DFC344()
{
  if (!qword_28035E998)
  {
    sub_269DFB4A0();
    sub_269DFC3D8(255, &qword_28035E9A0, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035E998);
    }
  }
}

void sub_269DFC3D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269DFC42C()
{
  if (!qword_28035E9A8)
  {
    sub_269E5110C();
    sub_269DFCAB0(&qword_28035E9B0, MEMORY[0x277CDFC08]);
    v0 = sub_269E5104C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035E9A8);
    }
  }
}

void sub_269DFC4C0()
{
  if (!qword_28035E9B8)
  {
    sub_269DFBD64(255, &qword_28035E988, sub_269DFC2FC, sub_269DFC42C, MEMORY[0x277CDFAB8]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035E9B8);
    }
  }
}

void sub_269DFC584(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E510FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269DFC5E0(uint64_t a1, uint64_t a2)
{
  sub_269DFBD64(0, &qword_28035E988, sub_269DFC2FC, sub_269DFC42C, MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269DFC688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269DFC6F0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269DFC7AC()
{
  result = qword_28035E9D8;
  if (!qword_28035E9D8)
  {
    sub_269DFBD64(255, &qword_28035E988, sub_269DFC2FC, sub_269DFC42C, MEMORY[0x277CDFAB8]);
    sub_269DFC8A0();
    sub_269DFCAB0(&qword_28035EA00, sub_269DFC42C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035E9D8);
  }

  return result;
}

unint64_t sub_269DFC8A0()
{
  result = qword_28035E9E0;
  if (!qword_28035E9E0)
  {
    sub_269DFC2FC(255);
    sub_269DFC950();
    sub_269DFCAB0(&qword_2815720A0, sub_269DFB55C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035E9E0);
  }

  return result;
}

unint64_t sub_269DFC950()
{
  result = qword_28035E9E8;
  if (!qword_28035E9E8)
  {
    sub_269DFC344();
    sub_269DFC9F0();
    sub_269DFBFA4(&qword_28035E9F8, &qword_28035E9A0, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035E9E8);
  }

  return result;
}

unint64_t sub_269DFC9F0()
{
  result = qword_28035E9F0;
  if (!qword_28035E9F0)
  {
    sub_269DFB4A0();
    sub_269DFB94C(&qword_281572410, &qword_281572408, MEMORY[0x277CDFC70]);
    sub_269DFB94C(&qword_281572420, &qword_281572418, MEMORY[0x277CDF688]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035E9F0);
  }

  return result;
}

uint64_t sub_269DFCAB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for Segment(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Segment(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_269DFCBB4()
{
  result = qword_281571F38;
  if (!qword_281571F38)
  {
    sub_269DFCC38(255, &qword_281571F30, &qword_281571EE8, sub_269DFB3E8, &qword_281571EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571F38);
  }

  return result;
}

void sub_269DFCC38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_269DF7980(255, a3, a4, MEMORY[0x277CE14B8]);
    sub_269DFCCD8(a5, a3, a4);
    v9 = sub_269E5195C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_269DFCCD8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_269DF7980(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269DFCD3C()
{
  result = qword_28035EA10;
  if (!qword_28035EA10)
  {
    sub_269DFBD64(255, &qword_28035EA18, type metadata accessor for PlaceholderBarView, sub_269DFBCA4, MEMORY[0x277CE0338]);
    sub_269DFCAB0(&qword_281572768, type metadata accessor for PlaceholderBarView);
    sub_269DFBE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EA10);
  }

  return result;
}

uint64_t type metadata accessor for BedtimeSleepWidgetView()
{
  result = qword_281573AE0;
  if (!qword_281573AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269DFCEB4()
{
  type metadata accessor for SleepWidgetViewModel();
  if (v0 <= 0x3F)
  {
    sub_269DFEAC8(319, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_269DFEAC8(319, &qword_2815725F0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_269DFCFCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDFA28];
  sub_269DFEAC8(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - v11);
  v13 = type metadata accessor for BedtimeSleepWidgetView();
  sub_269DFEB2C(v1 + *(v13 + 20), v12, &qword_281572600, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_269E510EC();
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  else
  {
    v16 = *v12;
    sub_269E51EBC();
    v17 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_269DFD1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v71 = type metadata accessor for SleepWidgetViewModel();
  v3 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v75 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = type metadata accessor for ScheduleOccurrenceSectionView(0);
  v5 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v7 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269DFE6F4();
  v77 = v8;
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v80 = &v67[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v67[-v13];
  MEMORY[0x28223BE20](v12);
  v79 = &v67[-v14];
  v15 = sub_269E510EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v67[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v67[-v21];
  v23 = type metadata accessor for BedTitleView(0);
  v24 = *(*(v23 - 1) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v78 = &v67[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v67[-v28];
  MEMORY[0x28223BE20](v27);
  v73 = &v67[-v30];
  sub_269E51E1C();
  v76 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = SleepWidgetViewModel.title.getter();
  v69 = v32;
  v70 = v31;
  v68 = (*(a1 + 8) & 1) == 0 && *a1 == 5;
  sub_269DFCFCC(v22);
  (*(v16 + 104))(v20, *MEMORY[0x277CDFA00], v15);
  sub_269DFE8C4(&qword_281572568, MEMORY[0x277CDFA28]);
  v33 = sub_269E51C8C();
  v34 = *(v16 + 8);
  v34(v20, v15);
  v34(v22, v15);
  if (sub_269DFD928())
  {
    v35 = 0.6;
  }

  else
  {
    v35 = 1.0;
  }

  *v29 = swift_getKeyPath();
  v36 = MEMORY[0x277CDF458];
  sub_269DFEAC8(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v37 = (v29 + v23[5]);
  v38 = v69;
  *v37 = v70;
  v37[1] = v38;
  *(v29 + v23[6]) = v68;
  *(v29 + v23[7]) = v33 & 1;
  *(v29 + v23[8]) = v35;
  v39 = v73;
  sub_269DFE96C(v29, v73, type metadata accessor for BedTitleView);
  if (sub_269DFDB80())
  {
    v40 = 0;
  }

  else
  {
    v40 = 0x4010000000000000;
  }

  v41 = v75;
  sub_269DFE9D4(a1, v75, type metadata accessor for SleepWidgetViewModel);
  v42 = *(a1 + *(v71 + 28));
  v43 = sub_269DFDB80() & 1;
  KeyPath = swift_getKeyPath();
  v45 = v74;
  *&v7[*(v74 + 28)] = KeyPath;
  sub_269DFEAC8(0, &qword_281572600, MEMORY[0x277CDFA28], v36);
  swift_storeEnumTagMultiPayload();
  sub_269DFE96C(v41, v7, type metadata accessor for SleepWidgetViewModel);
  v7[*(v45 + 20)] = v42;
  *&v7[*(v45 + 24)] = v43;
  v46 = sub_269E5150C();
  sub_269E5102C();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v72;
  sub_269DFE96C(v7, v72, type metadata accessor for ScheduleOccurrenceSectionView);
  v56 = &v55[*(v77 + 36)];
  *v56 = v46;
  *(v56 + 1) = v48;
  *(v56 + 2) = v50;
  *(v56 + 3) = v52;
  *(v56 + 4) = v54;
  v56[40] = 0;
  v57 = v79;
  sub_269DFE96C(v55, v79, sub_269DFE6F4);
  v58 = sub_269DFDDDC();
  v59 = v78;
  sub_269DFE9D4(v39, v78, type metadata accessor for BedTitleView);
  v60 = v80;
  sub_269DFE9D4(v57, v80, sub_269DFE6F4);
  v61 = v81;
  sub_269DFE9D4(v59, v81, type metadata accessor for BedTitleView);
  sub_269DFE664();
  v63 = v62;
  v64 = v61 + *(v62 + 48);
  *v64 = v40;
  *(v64 + 8) = 0;
  sub_269DFE9D4(v60, v61 + *(v62 + 64), sub_269DFE6F4);
  v65 = v61 + *(v63 + 80);
  *v65 = 0;
  *(v65 + 8) = 0;
  *(v65 + 9) = (v58 & 1) == 0;
  sub_269DFE90C(v57, sub_269DFE6F4);
  sub_269DFE90C(v39, type metadata accessor for BedTitleView);
  sub_269DFE90C(v60, sub_269DFE6F4);
  sub_269DFE90C(v59, type metadata accessor for BedTitleView);
}

uint64_t sub_269DFD928()
{
  v0 = sub_269E510EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  sub_269DFEAC8(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  if ((sub_269DFE030() & 1) != 0 || (sub_269E3CD30(v11), v12 = sub_269E50B9C(), v13 = (*(*(v12 - 8) + 48))(v11, 1, v12), sub_269DFEA3C(v11), v13 == 1))
  {
    v14 = 0;
  }

  else
  {
    sub_269DFCFCC(v7);
    (*(v1 + 104))(v5, *MEMORY[0x277CDF998], v0);
    sub_269DFE8C4(&qword_281572568, MEMORY[0x277CDFA28]);
    v14 = sub_269E51C8C();
    v15 = *(v1 + 8);
    v15(v5, v0);
    v15(v7, v0);
  }

  return v14 & 1;
}

uint64_t sub_269DFDB80()
{
  v0 = sub_269E510EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  sub_269DFEAC8(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  sub_269E3CD30(&v17 - v10);
  v12 = sub_269E50B9C();
  v13 = 1;
  v14 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_269DFEA3C(v11);
  if (v14 != 1)
  {
    if (sub_269DFE030())
    {
      v13 = 0;
    }

    else
    {
      sub_269DFCFCC(v7);
      (*(v1 + 104))(v5, *MEMORY[0x277CDF988], v0);
      sub_269DFE8C4(&qword_281572568, MEMORY[0x277CDFA28]);
      v13 = sub_269E51C8C();
      v15 = *(v1 + 8);
      v15(v5, v0);
      v15(v7, v0);
    }
  }

  return v13 & 1;
}

uint64_t sub_269DFDDDC()
{
  v0 = sub_269E510EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  sub_269DFEAC8(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  sub_269E3CD30(&v17 - v10);
  v12 = sub_269E50B9C();
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_269DFEA3C(v11);
  if (v13 == 1)
  {
    sub_269DFCFCC(v7);
    (*(v1 + 104))(v5, *MEMORY[0x277CDF988], v0);
    sub_269DFE8C4(&qword_281572568, MEMORY[0x277CDFA28]);
    v14 = sub_269E51C8C();
    v15 = *(v1 + 8);
    v15(v5, v0);
    v15(v7, v0);
  }

  else
  {
    v14 = sub_269DFDB80();
  }

  return v14 & 1;
}

uint64_t sub_269DFE030()
{
  v21 = sub_269E512CC();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CC9788];
  sub_269DFEAC8(0, qword_281572618, MEMORY[0x277CC9788], MEMORY[0x277CDF458]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v20 - v8);
  v10 = sub_269E50BCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BedtimeSleepWidgetView();
  sub_269DFEB2C(v0 + *(v15 + 24), v9, qword_281572618, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_269E51EBC();
    v17 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v21);
  }

  v18 = sub_269E50BBC();
  (*(v11 + 8))(v14, v10);
  return v18 & 1;
}

uint64_t sub_269DFE2E0()
{
  sub_269DFE53C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFE5D0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = sub_269E5134C();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_269DFE82C();
  sub_269DFD1F8(v0, &v8[*(v9 + 44)]);
  v10 = *MEMORY[0x277CDF998];
  v11 = sub_269E510EC();
  (*(*(v11 - 8) + 104))(v4, v10, v11);
  sub_269DFE8C4(&qword_281572560, MEMORY[0x277CDFA28]);
  result = sub_269E51C9C();
  if (result)
  {
    sub_269DFE8C4(&qword_28035EA58, sub_269DFE5D0);
    sub_269DFE8C4(&qword_281571BF8, sub_269DFE53C);
    sub_269E5179C();
    sub_269DFE90C(v4, sub_269DFE53C);
    return sub_269DFE90C(v8, sub_269DFE5D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269DFE53C()
{
  if (!qword_281571BF0)
  {
    sub_269E510EC();
    sub_269DFE8C4(&qword_281572568, MEMORY[0x277CDFA28]);
    v0 = sub_269E5217C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571BF0);
    }
  }
}

void sub_269DFE5D0()
{
  if (!qword_28035EA20)
  {
    sub_269DFEAC8(255, &qword_28035EA28, sub_269DFE664, MEMORY[0x277CE14B8]);
    sub_269DFE7A4();
    v0 = sub_269E5194C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EA20);
    }
  }
}

void sub_269DFE664()
{
  if (!qword_28035EA30)
  {
    type metadata accessor for BedTitleView(255);
    sub_269DFE6F4();
    sub_269DFE754();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_28035EA30);
    }
  }
}

void sub_269DFE6F4()
{
  if (!qword_28035EA38)
  {
    type metadata accessor for ScheduleOccurrenceSectionView(255);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EA38);
    }
  }
}

void sub_269DFE754()
{
  if (!qword_28035EA40)
  {
    v0 = sub_269E51F9C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EA40);
    }
  }
}

unint64_t sub_269DFE7A4()
{
  result = qword_28035EA48;
  if (!qword_28035EA48)
  {
    sub_269DFEAC8(255, &qword_28035EA28, sub_269DFE664, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EA48);
  }

  return result;
}

void sub_269DFE82C()
{
  if (!qword_28035EA50)
  {
    sub_269DFEAC8(255, &qword_28035EA28, sub_269DFE664, MEMORY[0x277CE14B8]);
    v0 = sub_269E5109C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EA50);
    }
  }
}

uint64_t sub_269DFE8C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269DFE90C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269DFE96C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269DFE9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269DFEA3C(uint64_t a1)
{
  sub_269DFEAC8(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269DFEAC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269DFEB2C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269DFEAC8(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_269DFEBC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SleepStageBarView()
{
  result = qword_281573748;
  if (!qword_281573748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269DFEC84()
{
  sub_269DFEBC0(319, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_269DFEBC0(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_269DFEBC0(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_269E00DC8(319, &qword_2815725C0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SleepStageBarViewModel(319);
          if (v4 <= 0x3F)
          {
            sub_269DFEE1C();
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

unint64_t sub_269DFEE1C()
{
  result = qword_281571D00;
  if (!qword_281571D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281571D00);
  }

  return result;
}

uint64_t sub_269DFEE84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFEBC0(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SleepStageBarView();
  sub_269E00F68(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E51B0C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_269E51EBC();
    v16 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_269DFF098()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for SleepStageBarView() + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_269E51EBC();
    v8 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_269DFF1F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v118 = a2;
  sub_269DFE53C();
  v99 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v109 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E00948();
  v100 = v6;
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v103 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v102 = v89 - v10;
  v107 = type metadata accessor for BarView(0);
  v11 = *(*(v107 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v107);
  v101 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v112 = (v89 - v14);
  v113 = sub_269E51B0C();
  v110 = *(v113 - 8);
  v15 = *(v110 + 64);
  v16 = MEMORY[0x28223BE20](v113);
  v108 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v106 = v89 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v105 = v89 - v21;
  MEMORY[0x28223BE20](v20);
  v104 = v89 - v22;
  sub_269E00C4C();
  v24 = v23;
  v117 = *(v23 - 8);
  v25 = *(v117 + 64);
  MEMORY[0x28223BE20](v23);
  v111 = (v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269DFEBC0(0, &qword_28035EAB8, sub_269E00C4C, MEMORY[0x277D83D88]);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v116 = v89 - v29;
  sub_269E51E1C();
  v115 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E5108C();
  v31 = v30;
  v32 = *(type metadata accessor for SleepStageBarView() + 32);
  v114 = a1;
  v33 = (a1 + v32 + *(type metadata accessor for SleepStageBarViewModel(0) + 20));
  v34 = *v33;
  v35 = v33[1];
  v37 = v33[2];
  v36 = v33[3];
  v38 = v33[4];
  v39 = v33[5];
  *&v129 = *v33;
  *(&v129 + 1) = v35;
  *&v130 = v37;
  *(&v130 + 1) = v36;
  *&v131 = v38;
  *(&v131 + 1) = v39;
  v40 = sub_269E28C14();
  if (v41)
  {
    goto LABEL_5;
  }

  v96 = v40;
  v97 = v38;
  *&v129 = v34;
  *(&v129 + 1) = v35;
  *&v130 = v37;
  *(&v130 + 1) = v36;
  *&v131 = v38;
  *(&v131 + 1) = v39;
  v98 = v39;
  v42 = sub_269E28CB8();
  if (v43)
  {
LABEL_5:
    v44 = v116;
    (*(v117 + 56))(v116, 1, 1, v24);
LABEL_17:
    sub_269DE8A40(v44, v118);
  }

  v95 = v42;
  v45 = sub_269E5134C();
  v46 = v111;
  *v111 = v45;
  v46[1] = 0;
  *(v46 + 16) = 0;
  v89[1] = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269DFEE84(v104);
  v47 = sub_269DFF098();
  v48 = v110;
  v49 = v105;
  v50 = v113;
  v93 = *(v110 + 32);
  v94 = v110 + 32;
  v93();
  v91 = *(v48 + 88);
  v92 = v48 + 88;
  v51 = v91(v49, v50);
  LODWORD(v104) = *MEMORY[0x277CE3B98];
  v90 = v24;
  if (v51 == v104)
  {
    v52 = 0x4030000000000000;
    if (v47)
    {
      v52 = 0x4038000000000000;
    }
  }

  else
  {
    (*(v48 + 8))(v49, v50);
    v52 = 0x403E000000000000;
  }

  v105 = v52;
  KeyPath = swift_getKeyPath();
  v54 = v112;
  *v112 = KeyPath;
  v55 = MEMORY[0x277CDF458];
  sub_269DFEBC0(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v56 = v107;
  v57 = *(v107 + 20);
  *(v54 + v57) = swift_getKeyPath();
  sub_269DFEBC0(0, &qword_281572610, MEMORY[0x277CE3AF8], v55);
  swift_storeEnumTagMultiPayload();
  v58 = v54 + v56[6];
  *v58 = swift_getKeyPath();
  v58[8] = 0;
  v59 = (v54 + v56[7]);
  *v59 = v34;
  v59[1] = v35;
  v59[2] = v37;
  v59[3] = v36;
  v60 = v98;
  v59[4] = v97;
  v59[5] = v60;
  v61 = v54 + v56[8];
  *v61 = v105;
  *(v61 + 1) = v31;
  v61[16] = 0;
  v62 = (v54 + v56[9]);
  v63 = v95;
  *v62 = v96;
  v62[1] = v63;
  *(v54 + v56[10]) = 1;

  v64 = v106;
  v65 = v114;
  sub_269DFEE84(v106);
  v66 = v108;
  v67 = v113;
  (v93)(v108, v64, v113);
  v68 = v91(v66, v67);
  v69 = v104;
  if (v68 != v104)
  {
    (*(v110 + 8))(v66, v67);
  }

  sub_269E00E18();
  v71 = *(v70 + 44);
  v72 = sub_269E5130C();
  v122 = 1;
  sub_269DFFD38(v65, &v129);
  v125 = v131;
  v126 = v132;
  v123 = v129;
  v124 = v130;
  v128[1] = v130;
  v128[2] = v131;
  v128[3] = v132;
  v128[4] = v133;
  v127 = v133;
  v128[0] = v129;
  sub_269E00EE0(&v123, &v119, sub_269E00B6C);
  sub_269E00E80(v128, sub_269E00B6C);
  *&v121[7] = v123;
  *&v121[71] = v127;
  *&v121[55] = v126;
  *&v121[39] = v125;
  *&v121[23] = v124;
  *&v120[33] = *&v121[32];
  *&v120[49] = *&v121[48];
  *&v120[65] = *&v121[64];
  *&v120[1] = *v121;
  v119 = v72;
  v120[0] = v122;
  *&v120[80] = *(&v127 + 1);
  *&v120[17] = *&v121[16];
  v73 = *MEMORY[0x277CDFA00];
  v74 = sub_269E510EC();
  v75 = v109;
  (*(*(v74 - 8) + 104))(v109, v73, v74);
  sub_269E00C04(&qword_281572560, MEMORY[0x277CDFA28]);
  result = sub_269E51C9C();
  if (result)
  {
    LODWORD(v114) = v68 != v69;
    v77 = v111;
    v78 = v111 + v71;
    sub_269E00AD8();
    sub_269E00C04(&qword_28035EA90, sub_269E00AD8);
    sub_269E00C04(&qword_281571BF8, sub_269DFE53C);
    v79 = v102;
    sub_269E5179C();
    sub_269E00E80(v75, sub_269DFE53C);
    v133 = *&v120[48];
    v134 = *&v120[64];
    v135 = *&v120[80];
    v129 = v119;
    v130 = *v120;
    v131 = *&v120[16];
    v132 = *&v120[32];
    sub_269E00E80(&v129, sub_269E00AD8);
    v80 = swift_getKeyPath();
    v81 = v101;
    v82 = (v79 + *(v100 + 36));
    *v82 = v80;
    v82[1] = 0x3FE7AE147AE147AELL;
    v83 = v112;
    sub_269E00EE0(v112, v81, type metadata accessor for BarView);
    v84 = v103;
    sub_269DE8AF4(v79, v103);
    *v78 = 0;
    v78[8] = 0;
    sub_269E00D14();
    v86 = v85;
    sub_269E00EE0(v81, &v78[v85[12]], type metadata accessor for BarView);
    v87 = &v78[v86[16]];
    *v87 = 0;
    v87[8] = 0;
    v87[9] = v114;
    sub_269DE8AF4(v84, &v78[v86[20]]);
    v88 = &v78[v86[24]];
    *v88 = 0;
    v88[8] = 0;
    sub_269DE8B58(v79);
    sub_269E00E80(v83, type metadata accessor for BarView);
    sub_269DE8B58(v84);
    sub_269E00E80(v81, type metadata accessor for BarView);

    v44 = v116;
    sub_269DE8BB4(v77, v116);
    (*(v117 + 56))(v44, 0, 1, v90);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_269DFFD38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v126 = a2;
  v131 = sub_269E51ADC();
  v128 = *(v131 - 8);
  v3 = *(v128 + 64);
  v4 = MEMORY[0x28223BE20](v131);
  v124 = v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v122 = v104 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = v104 - v8;
  v10 = sub_269E51B0C();
  v129 = *(v10 - 8);
  v130 = v10;
  v11 = *(v129 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v127 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v123 = v104 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v104 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v104 - v19;
  v21 = sub_269E50B9C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  v125 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = type metadata accessor for SleepStageBarView();
  v27 = *(a1 + v26[9]);
  v114 = a1 + v26[8];
  sub_269E509CC();
  v28 = sub_269E50B5C();
  v29 = *(v22 + 8);
  v120 = v21;
  v119 = v22 + 8;
  v113 = v29;
  v29(v25, v21);
  v116 = v27;
  v30 = [v27 stringFromDate_];

  v31 = sub_269E51CDC();
  v33 = v32;

  v135 = v31;
  v136 = v33;
  v112 = sub_269DF0E28();
  v34 = sub_269E516CC();
  v117 = v35;
  v37 = v36;
  v118 = v38;
  sub_269DFEE84(v20);
  v39 = v26[6];
  v121 = a1;
  v111 = a1 + v39;
  sub_269E2E90C(v9);
  v41 = v129;
  v40 = v130;
  v42 = *(v129 + 16);
  v110 = v129 + 16;
  v109 = v42;
  v42(v18, v20, v130);
  v108 = *(v41 + 88);
  v104[1] = v41 + 88;
  v43 = v108(v18, v40);
  v44 = (v128 + 8);
  v106 = *MEMORY[0x277CE3B68];
  v128 += 8;
  v104[0] = v25;
  if (v43 == v106)
  {
    v45 = v122;
    sub_269E51ABC();
    v46 = sub_269E51AAC();
    v47 = *v128;
    v48 = v131;
    (*v128)(v45, v131);
    v49 = (v41 + 8);
    v115 = v47;
    if (v46)
    {
      sub_269E5185C();
    }

    else
    {
      sub_269E5180C();
    }

    v47(v9, v48);
    goto LABEL_10;
  }

  v49 = (v41 + 8);
  if (v43 == *MEMORY[0x277CE3B98])
  {
    sub_269E5185C();
    v115 = *v44;
    v115(v9, v131);
LABEL_10:
    v50 = v130;
    v107 = *v49;
    v107(v20, v130);
    goto LABEL_12;
  }

  sub_269E5180C();
  v115 = *v44;
  v115(v9, v131);
  v51 = *v49;
  v50 = v130;
  (*v49)(v20, v130);
  v107 = v51;
  v51(v18, v50);
LABEL_12:
  v52 = v37;
  v53 = v117;
  v54 = sub_269E5168C();
  v56 = v55;
  v58 = v57;

  sub_269E00F48(v34, v53, v52 & 1);

  sub_269E5155C();
  v118 = sub_269E516AC();
  v117 = v59;
  v105 = v60;
  v130 = v61;

  sub_269E00F48(v54, v56, v58 & 1);

  v62 = v104[0];
  sub_269E509AC();
  v63 = sub_269E50B5C();
  v113(v62, v120);
  v64 = [v116 stringFromDate_];

  v65 = sub_269E51CDC();
  v67 = v66;

  v135 = v65;
  v136 = v67;
  v120 = sub_269E516CC();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v123;
  sub_269DFEE84(v123);
  v75 = v124;
  sub_269E2E90C(v124);
  v76 = v127;
  v109(v127, v74, v50);
  v77 = v108(v76, v50);
  v78 = v50;
  if (v77 == v106)
  {
    v127 = v73;
    v79 = v122;
    sub_269E51ABC();
    v80 = sub_269E51AAC();
    v81 = v131;
    v82 = v115;
    v115(v79, v131);
    if (v80)
    {
      sub_269E5185C();
    }

    else
    {
      sub_269E5180C();
    }

    v82(v75, v81);
    v107(v74, v78);
  }

  else
  {
    v83 = v131;
    v84 = v115;
    if (v77 == *MEMORY[0x277CE3B98])
    {
      sub_269E5185C();
      v84(v75, v83);
      v107(v74, v50);
    }

    else
    {
      sub_269E5180C();
      v84(v75, v83);
      v85 = v107;
      v107(v74, v50);
      v85(v127, v50);
    }
  }

  v86 = v120;
  v87 = sub_269E5168C();
  v89 = v88;
  v91 = v90;

  sub_269E00F48(v86, v69, v71 & 1);

  sub_269E5155C();
  v92 = sub_269E516AC();
  v94 = v93;
  v96 = v95;
  v98 = v97;

  sub_269E00F48(v87, v89, v91 & 1);

  v99 = v105 & 1;
  LOBYTE(v135) = v105 & 1;
  v134 = v105 & 1;
  v133 = 0;
  v132 = v96 & 1;
  v100 = v126;
  v101 = v118;
  v102 = v117;
  *v126 = v118;
  v100[1] = v102;
  *(v100 + 16) = v99;
  v100[3] = v130;
  v100[4] = 0x3FE0000000000000;
  *(v100 + 40) = 0;
  v100[6] = v92;
  v100[7] = v94;
  *(v100 + 64) = v96 & 1;
  v100[9] = v98;
  sub_269E00F58(v101, v102, v99);

  sub_269E00F58(v92, v94, v96 & 1);

  sub_269E00F48(v92, v94, v96 & 1);

  sub_269E00F48(v101, v102, v135);
}

uint64_t sub_269E00764@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_269E00EE0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepStageBarView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_269E00864(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_269E008C8;
  a2[1] = v7;
  return result;
}

uint64_t sub_269E00864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepStageBarView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E008C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepStageBarView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_269DFF1F0(v4, a1);
}

void sub_269E00948()
{
  if (!qword_28035EA60)
  {
    sub_269E009D4();
    sub_269E00DC8(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EA60);
    }
  }
}

void sub_269E009D4()
{
  if (!qword_28035EA68)
  {
    sub_269E00AD8();
    sub_269DFE53C();
    sub_269E00C04(&qword_28035EA90, sub_269E00AD8);
    sub_269E00C04(&qword_281571BF8, sub_269DFE53C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035EA68);
    }
  }
}

void sub_269E00AD8()
{
  if (!qword_28035EA70)
  {
    sub_269E00B6C(255);
    sub_269E00C04(&qword_28035EA88, sub_269E00B6C);
    v0 = sub_269E5191C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EA70);
    }
  }
}

void sub_269E00BA0()
{
  if (!qword_28035EA80)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28035EA80);
    }
  }
}

uint64_t sub_269E00C04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269E00C4C()
{
  if (!qword_28035EA98)
  {
    sub_269E00CE0(255);
    sub_269E00C04(&qword_28035EAB0, sub_269E00CE0);
    v0 = sub_269E5194C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EA98);
    }
  }
}

void sub_269E00D14()
{
  if (!qword_28035EAA8)
  {
    v0 = MEMORY[0x277CE1180];
    type metadata accessor for BarView(255);
    sub_269E00DC8(255, &qword_28035EA40, v0, MEMORY[0x277D83D88]);
    sub_269E00948();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28035EAA8);
    }
  }
}

void sub_269E00DC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269E00E18()
{
  if (!qword_28035EAC0)
  {
    sub_269E00CE0(255);
    v0 = sub_269E5109C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EAC0);
    }
  }
}

uint64_t sub_269E00E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E00EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E00F48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_269E00F58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_269E00F68(uint64_t a1, uint64_t a2)
{
  sub_269DFEBC0(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269E00FFC()
{
  if (!qword_28035EAD0)
  {
    sub_269DFEBC0(255, &qword_28035EAB8, sub_269E00C4C, MEMORY[0x277D83D88]);
    sub_269E01090();
    v0 = sub_269E510BC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EAD0);
    }
  }
}

unint64_t sub_269E01090()
{
  result = qword_28035EAD8;
  if (!qword_28035EAD8)
  {
    sub_269DFEBC0(255, &qword_28035EAB8, sub_269E00C4C, MEMORY[0x277D83D88]);
    sub_269E00C04(&qword_28035EAE0, sub_269E00C4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EAD8);
  }

  return result;
}

id sub_269E0119C()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_281575970 = result;
  return result;
}

uint64_t type metadata accessor for SleepWidgetSmallView()
{
  result = qword_281572948;
  if (!qword_281572948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E01268(uint64_t a1)
{
  result = sub_269E01A60(&qword_281572958, type metadata accessor for SleepWidgetSmallView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E012C0(uint64_t a1)
{
  result = sub_269E01A60(&qword_28035EAE8, type metadata accessor for SleepWidgetSmallView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E01334@<X0>(uint64_t a1@<X8>)
{
  v23[2] = a1;
  v24 = sub_269E5146C();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v24);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E016F4(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  sub_269E0180C();
  v23[1] = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = sub_269E5134C();
  *(v15 + 1) = 0;
  v15[16] = 0;
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E019F4(0, &qword_281572588, sub_269E018A0);
  v17 = &v15[*(v16 + 44)];
  *v17 = sub_269E512FC();
  *(v17 + 1) = 0;
  v17[16] = 0;
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E019F4(0, &qword_281572598, sub_269E01934);
  v19 = &v17[*(v18 + 44)];
  sub_269E29B9C(v11);
  sub_269DE8D3C(v11, v9);
  sub_269DE8D3C(v9, v19);
  sub_269E0198C();
  v21 = v19 + *(v20 + 48);
  *v21 = 0;
  *(v21 + 8) = 0;
  sub_269E01AA8(v11, sub_269E016F4);
  sub_269E01AA8(v9, sub_269E016F4);

  sub_269E5145C();
  sub_269E01A60(&qword_281571F68, sub_269E0180C);
  sub_269E517CC();
  (*(v1 + 8))(v4, v24);
  return sub_269E01AA8(v15, sub_269E0180C);
}

void sub_269E01734(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E513CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269E0178C()
{
  if (!qword_281572040)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572040);
    }
  }
}

void sub_269E0180C()
{
  if (!qword_281571F60)
  {
    sub_269E018A0();
    sub_269E01A60(&qword_281571FB8, sub_269E018A0);
    v0 = sub_269E5194C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571F60);
    }
  }
}

void sub_269E018A0()
{
  if (!qword_281571FB0)
  {
    sub_269E01934();
    sub_269E01A60(&qword_281571E68, sub_269E01934);
    v0 = sub_269E5191C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571FB0);
    }
  }
}

void sub_269E01934()
{
  if (!qword_281571E60)
  {
    sub_269E0198C();
    v0 = sub_269E519DC();
    if (!v1)
    {
      atomic_store(v0, &qword_281571E60);
    }
  }
}

void sub_269E0198C()
{
  if (!qword_281572108)
  {
    sub_269E016F4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281572108);
    }
  }
}

void sub_269E019F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E5109C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269E01A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269E01AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SleepWidgetRectangularView()
{
  result = qword_281572D20;
  if (!qword_281572D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E01B7C(uint64_t a1)
{
  result = sub_269E01C04(qword_281572D58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E01BC0(uint64_t a1)
{
  result = sub_269E01C04(&qword_28035EAF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E01C04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SleepWidgetRectangularView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269E01C68()
{
  result = qword_281572118;
  if (!qword_281572118)
  {
    sub_269E01734(255, &qword_281572110, sub_269E01714);
    sub_269E01CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572118);
  }

  return result;
}

unint64_t sub_269E01CFC()
{
  result = qword_281572158;
  if (!qword_281572158)
  {
    sub_269E01714(255);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572158);
  }

  return result;
}

uint64_t sub_269E01DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E512CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0355C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_269E00F68(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E51B0C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_269E51EBC();
    v16 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_269E01FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0355C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SleepWidgetView();
  sub_269E00F68(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E51B0C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_269E51EBC();
    v16 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t SleepWidgetView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_269E0355C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SleepWidgetView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  v6[32] = 0;
  return sub_269E0376C(a1, a2 + v4[7], type metadata accessor for SleepWidgetViewModel);
}

uint64_t SleepWidgetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E51B0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  sub_269E034E0(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E02570(v1, v15);
  v16 = sub_269E5180C();
  KeyPath = swift_getKeyPath();
  v18 = &v15[*(v12 + 44)];
  *v18 = KeyPath;
  v18[1] = v16;
  v19 = swift_getKeyPath();
  v20 = _s13SleepWidgetUI0aB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  sub_269E01FB0(v8);
  v21 = sub_269E02FE0(v8, v20);

  (*(v4 + 8))(v8, v3);
  if (v21)
  {
    sub_269E01FB0(v10);
  }

  else
  {
    sub_269E01DA4(v10);
  }

  sub_269E036B4(0, &qword_281572380, sub_269E034E0, sub_269E03738, MEMORY[0x277CDFAB8]);
  v23 = (a1 + *(v22 + 36));
  sub_269E03738(0);
  (*(v4 + 32))(v23 + *(v24 + 28), v10, v3);
  *v23 = v19;
  return sub_269E0376C(v15, a1, sub_269E034E0);
}