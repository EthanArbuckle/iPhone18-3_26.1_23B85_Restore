uint64_t type metadata accessor for ConversionSignal()
{
  result = qword_281494CE8;
  if (!qword_281494CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for StandaloneAppOpenSignal()
{
  result = qword_281494908;
  if (!qword_281494908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FFEA4A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_230030E00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEA584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_230030E00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FFEA630@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_22FFEA6C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB05B60, &qword_230031D30);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FFEA738(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22FFED9B8(&qword_27DB05B60, &qword_230031D30);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22FFEA7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConversionParams();
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

uint64_t sub_22FFEA8A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConversionParams();
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

uint64_t sub_22FFEA974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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

  else
  {
    v9 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_22FFEAABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
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
      v13 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FFEABF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ConversionSignal();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_230030E00();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_22FFEAD44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for ConversionSignal();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_230030E00();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_22FFEAE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConversionParams();
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
    v11 = type metadata accessor for ActionStoreAdInstance();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22FFEAFC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConversionParams();
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
    v11 = type metadata accessor for ActionStoreAdInstance();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22FFEB204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for APJSValue();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22FFEB27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for APJSValue();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22FFEB2F8()
{
  v1 = sub_22FFED9B8(&qword_27DB06270, &qword_230034E18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22FFEB38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_230030E00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AttributionConfig();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22FFEB49C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_230030E00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AttributionConfig();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22FFEB5A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_230030E00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FFEB654(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_230030E00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEB6F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22FFED9B8(&qword_27DB06368, &qword_230035338);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FFEB7B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFED9B8(&qword_27DB06368, &qword_230035338);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEB874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for JetServiceResponse.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22FFEB92C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for JetServiceResponse.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEB9D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_22FFED9B8(&qword_27DB064E0, &qword_230035C88);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_22FFEBA94(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_22FFED9B8(&qword_27DB064E0, &qword_230035C88);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEBB40(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 32);
  v5 = *(a2 + a3 - 16);
  v6 = *(v3 - 1);
  v7 = *a2;
  v8 = type metadata accessor for XPCOpenIntentModel();
  return XPCOpenIntentModel.subscript.getter(v7, v8);
}

__n128 sub_22FFEBBA8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_22FFEBBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_230030E00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AttributionConfig();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22FFEBCC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_230030E00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AttributionConfig();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22FFEBDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IntentMessage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FFEBE8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IntentMessage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FFEBF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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

  else
  {
    v9 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22FFEC00C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEC0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FFEC1BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FFEC284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_230030EC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22FFEC350(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_230030EC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22FFEC408(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_230030E00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FFEC4B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_230030E00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEC558(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AttributionMatchedEventProperties();
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
      v13 = type metadata accessor for ActionStoreAdInstance();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22FFEC67C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AttributionMatchedEventProperties();
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
      v13 = type metadata accessor for ActionStoreAdInstance();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FFEC7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_230030E00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AttributionConfig();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22FFEC8B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_230030E00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AttributionConfig();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22FFEC9C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_230030E00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FFECA70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_230030E00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFECB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JetServiceSettings.Environment(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_22FFED9B8(&qword_27DB06BB8, &qword_230039820);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22FFECC58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for JetServiceSettings.Environment(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_22FFED9B8(&qword_27DB06BB8, &qword_230039820);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22FFECD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_230030DD0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FFECDF0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_230030DD0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22FFECE74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversionParams();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FFECEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversionParams();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FFECF8C(uint64_t a1)
{
  v2 = sub_22FFEDB48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFECFC8(uint64_t a1)
{
  v2 = sub_22FFEDB48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFED004(uint64_t a1)
{
  v2 = sub_22FFEDC98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFED040(uint64_t a1)
{
  v2 = sub_22FFEDC98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFED07C()
{
  v1 = 0x6863746566;
  if (*v0 != 1)
  {
    v1 = 0x666E497465737361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7261656C63;
  }
}

uint64_t sub_22FFED0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FFEEEBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FFED0FC(uint64_t a1)
{
  v2 = sub_22FFEDA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFED138(uint64_t a1)
{
  v2 = sub_22FFEDA90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFED174()
{
  v1 = *v0;
  sub_230031740();
  MEMORY[0x23190FB00](v1);
  return sub_230031760();
}

uint64_t sub_22FFED1BC()
{
  v1 = *v0;
  sub_230031740();
  MEMORY[0x23190FB00](v1);
  return sub_230031760();
}

uint64_t sub_22FFED200()
{
  v1 = 0x61746144676162;
  if (*v0 != 1)
  {
    v1 = 0x6974616D6F747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_22FFED254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FFEEFD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FFED27C(uint64_t a1)
{
  v2 = sub_22FFEDB9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFED2B8(uint64_t a1)
{
  v2 = sub_22FFEDB9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JetPackAssetCacheAction.encode(to:)(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB05B40, &qword_230031D10);
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v39 - v4;
  v46 = sub_22FFED9B8(&qword_27DB05B48, &qword_230031D18);
  v43 = *(v46 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - v6;
  v7 = sub_230030DD0();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FFED9B8(&qword_27DB05B50, &qword_230031D20);
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = type metadata accessor for JetPackAssetCacheAction();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22FFED9B8(&qword_27DB05B58, &qword_230031D28);
  v48 = *(v50 - 8);
  v19 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v21 = &v39 - v20;
  v22 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFEDA90();
  sub_230031780();
  sub_22FFEDAE4(v47, v18);
  v23 = sub_22FFED9B8(&qword_27DB05B60, &qword_230031D30);
  v24 = (*(*(v23 - 8) + 48))(v18, 2, v23);
  if (v24)
  {
    if (v24 == 1)
    {
      LOBYTE(v51) = 0;
      sub_22FFEDC98();
      v25 = v50;
      sub_2300315A0();
      (*(v39 + 8))(v14, v11);
      return (*(v48 + 8))(v21, v25);
    }

    else
    {
      LOBYTE(v51) = 2;
      sub_22FFEDB48();
      v33 = v40;
      v34 = v50;
      sub_2300315A0();
      (*(v41 + 8))(v33, v42);
      return (*(v48 + 8))(v21, v34);
    }
  }

  else
  {
    v27 = &v18[*(v23 + 48)];
    v29 = *v27;
    v28 = v27[1];
    v30 = v18[*(v23 + 64)];
    (*(v44 + 32))(v10, v18, v7);
    LOBYTE(v51) = 1;
    sub_22FFEDB9C();
    v31 = v50;
    sub_2300315A0();
    LOBYTE(v51) = 0;
    sub_22FFEE6BC(&qword_2814942A0);
    v32 = v49;
    sub_230031640();
    if (v32)
    {
      sub_22FFEDBF0(v29, v28);
      (*(v43 + 8))(v45, v46);
      (*(v44 + 8))(v10, v7);
      return (*(v48 + 8))(v21, v31);
    }

    else
    {
      LODWORD(v47) = v30;
      v49 = v10;
      v35 = v44;
      v51 = v29;
      v52 = v28;
      v53 = 1;
      sub_22FFEDC44();
      sub_230031640();
      LOBYTE(v51) = 2;
      sub_230031610();
      v36 = v35;
      v37 = v43;
      v38 = v50;
      sub_22FFEDBF0(v29, v28);
      (*(v37 + 8))(v45, v46);
      (*(v36 + 8))(v49, v7);
      return (*(v48 + 8))(v21, v38);
    }
  }
}

uint64_t sub_22FFED9B8(uint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for JetPackAssetCacheAction()
{
  result = qword_281494FD8;
  if (!qword_281494FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_22FFEDA4C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22FFEDA90()
{
  result = qword_281495040;
  if (!qword_281495040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495040);
  }

  return result;
}

uint64_t sub_22FFEDAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAssetCacheAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FFEDB48()
{
  result = qword_27DB05B68;
  if (!qword_27DB05B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05B68);
  }

  return result;
}

unint64_t sub_22FFEDB9C()
{
  result = qword_281495018;
  if (!qword_281495018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495018);
  }

  return result;
}

uint64_t sub_22FFEDBF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_22FFEDC44()
{
  result = qword_2814954A8;
  if (!qword_2814954A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814954A8);
  }

  return result;
}

unint64_t sub_22FFEDC98()
{
  result = qword_27DB05B70;
  if (!qword_27DB05B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05B70);
  }

  return result;
}

uint64_t JetPackAssetCacheAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_22FFED9B8(&qword_27DB05B78, &qword_230031D38);
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v71 = &v61 - v5;
  v6 = sub_22FFED9B8(&qword_27DB05B80, &qword_230031D40);
  v7 = *(v6 - 8);
  v67 = v6;
  v68 = v7;
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v69 = &v61 - v9;
  v10 = sub_22FFED9B8(&qword_27DB05B88, &qword_230031D48);
  v11 = *(v10 - 8);
  v63 = v10;
  v64 = v11;
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v14 = &v61 - v13;
  v15 = sub_22FFED9B8(&qword_27DB05B90, &unk_230031D50);
  v70 = *(v15 - 8);
  v16 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v18 = &v61 - v17;
  v19 = type metadata accessor for JetPackAssetCacheAction();
  v20 = *(*(v19 - 8) + 64);
  v21 = (MEMORY[0x28223BE20])();
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - v24;
  v26 = a1[3];
  v27 = a1[4];
  v74 = a1;
  sub_22FFEDA4C(a1, v26);
  sub_22FFEDA90();
  v28 = v73;
  sub_230031770();
  if (v28)
  {
    return sub_22FFEE60C(v74);
  }

  v30 = v70;
  v29 = v71;
  v61 = v23;
  v62 = v25;
  v73 = 0;
  v31 = v72;
  v32 = sub_230031580();
  v33 = v32;
  v34 = *(v32 + 16);
  v35 = v15;
  if (!v34 || ((v36 = *(v32 + 32), v34 == 1) ? (v37 = v36 == 3) : (v37 = 1), v37))
  {
    v38 = sub_230031400();
    swift_allocError();
    v39 = v18;
    v41 = v40;
    v42 = *(sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0) + 48);
    *v41 = v19;
    sub_230031480();
    sub_2300313F0();
    (*(*(v38 - 8) + 104))(v41, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v30 + 8))(v39, v35);
LABEL_17:
    swift_unknownObjectRelease();
    return sub_22FFEE60C(v74);
  }

  if (!*(v32 + 32))
  {
    v75 = 0;
    sub_22FFEDC98();
    v45 = v14;
    v46 = v15;
    v47 = v73;
    sub_230031470();
    if (!v47)
    {
      (*(v64 + 8))(v45, v63);
      (*(v30 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v48 = sub_22FFED9B8(&qword_27DB05B60, &qword_230031D30);
      v49 = v62;
      (*(*(v48 - 8) + 56))(v62, 1, 2, v48);
      v50 = v31;
      goto LABEL_21;
    }

LABEL_16:
    (*(v30 + 8))(v18, v46);
    goto LABEL_17;
  }

  if (v36 != 1)
  {
    v80 = 2;
    sub_22FFEDB48();
    v46 = v15;
    v51 = v73;
    sub_230031470();
    if (!v51)
    {
      v50 = v31;
      (*(v65 + 8))(v29, v66);
      (*(v30 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v55 = sub_22FFED9B8(&qword_27DB05B60, &qword_230031D30);
      v49 = v62;
      (*(*(v55 - 8) + 56))(v62, 2, 2, v55);
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v79 = 1;
  sub_22FFEDB9C();
  v43 = v69;
  v44 = v73;
  sub_230031470();
  if (v44)
  {
    (*(v30 + 8))(v18, v15);
    goto LABEL_17;
  }

  v71 = v15;
  v73 = v33;
  sub_230030DD0();
  v78 = 0;
  sub_22FFEE6BC(&qword_281494298);
  v53 = v61;
  v54 = v67;
  sub_230031520();
  v66 = sub_22FFED9B8(&qword_27DB05B60, &qword_230031D30);
  v56 = &v53[*(v66 + 48)];
  v77 = 1;
  sub_22FFEE700();
  sub_230031520();
  v57 = v66;
  v76 = 2;
  v58 = sub_2300314F0();
  v59 = *(v57 + 64);
  (*(v68 + 8))(v43, v54);
  (*(v30 + 8))(v18, v71);
  swift_unknownObjectRelease();
  v60 = v61;
  v61[v59] = v58 & 1;
  (*(*(v57 - 8) + 56))(v60, 0, 2, v57);
  v49 = v62;
  sub_22FFEE658(v60, v62);
  v50 = v31;
LABEL_21:
  sub_22FFEE658(v49, v50);
  return sub_22FFEE60C(v74);
}

uint64_t sub_22FFEE60C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22FFEE658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAssetCacheAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FFEE6BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_230030DD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22FFEE700()
{
  result = qword_2814954A0;
  if (!qword_2814954A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814954A0);
  }

  return result;
}

uint64_t sub_22FFEE754()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 13;
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

uint64_t sub_22FFEE788()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
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

void sub_22FFEE7BC(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3] >> 1;
  if (v2 == v3)
  {
    *a1 = 2;
  }

  else if (v2 < v3)
  {
    *a1 = *(v1[1] + v2);
    v1[2] = v2 + 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22FFEE7F8()
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

uint64_t sub_22FFEE82C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t sub_22FFEE860()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
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

uint64_t sub_22FFEE8F0()
{
  sub_22FFEE948();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22FFEE948()
{
  if (!qword_2814954B0)
  {
    sub_230030DD0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2814954B0);
    }
  }
}

uint64_t getEnumTagSinglePayload for ConversionParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConversionParams.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22FFEEB50()
{
  result = qword_27DB05BA0;
  if (!qword_27DB05BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05BA0);
  }

  return result;
}

unint64_t sub_22FFEEBA8()
{
  result = qword_27DB05BA8;
  if (!qword_27DB05BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05BA8);
  }

  return result;
}

unint64_t sub_22FFEEC00()
{
  result = qword_281495020;
  if (!qword_281495020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495020);
  }

  return result;
}

unint64_t sub_22FFEEC58()
{
  result = qword_281495028;
  if (!qword_281495028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495028);
  }

  return result;
}

unint64_t sub_22FFEECB0()
{
  result = qword_281495008;
  if (!qword_281495008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495008);
  }

  return result;
}

unint64_t sub_22FFEED08()
{
  result = qword_281495010;
  if (!qword_281495010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495010);
  }

  return result;
}

unint64_t sub_22FFEED60()
{
  result = qword_281495048;
  if (!qword_281495048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495048);
  }

  return result;
}

unint64_t sub_22FFEEDB8()
{
  result = qword_281495050[0];
  if (!qword_281495050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281495050);
  }

  return result;
}

unint64_t sub_22FFEEE10()
{
  result = qword_281495030;
  if (!qword_281495030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495030);
  }

  return result;
}

unint64_t sub_22FFEEE68()
{
  result = qword_281495038;
  if (!qword_281495038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281495038);
  }

  return result;
}

uint64_t sub_22FFEEEBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261656C63 && a2 == 0xE500000000000000;
  if (v4 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6863746566 && a2 == 0xE500000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E497465737361 && a2 == 0xE90000000000006FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_2300316D0();

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

uint64_t sub_22FFEEFD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144676162 && a2 == 0xE700000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063)
  {

    return 2;
  }

  else
  {
    v6 = sub_2300316D0();

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

uint64_t ConversionMatchingStep2Intent.metrics.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConversionMatchingStep2Intent() + 20));
}

uint64_t type metadata accessor for ConversionMatchingStep2Intent()
{
  result = qword_281494540;
  if (!qword_281494540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FFEF200@<X0>(char *a1@<X8>)
{
  v2 = sub_230031460();

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

unint64_t ConversionMatchingStep2Intent.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x7363697274656DLL;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_22FFEF2B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7363697274656DLL;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = 0x8000000230039F10;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x7363697274656DLL;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0x8000000230039F10;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2300316D0();
  }

  return v9 & 1;
}

uint64_t sub_22FFEF364()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_22FFEF3EC()
{
  *v0;
  sub_2300311A0();
}

uint64_t sub_22FFEF460()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_22FFEF4E4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_230031460();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_22FFEF544(unint64_t *a1@<X8>)
{
  v2 = 0x8000000230039F10;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x7363697274656DLL;
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_22FFEF588()
{
  if (*v0)
  {
    result = 0x7363697274656DLL;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_22FFEF5C8@<X0>(char *a1@<X8>)
{
  v2 = sub_230031460();

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

uint64_t sub_22FFEF62C(uint64_t a1)
{
  v2 = sub_22FFEFF50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFEF668(uint64_t a1)
{
  v2 = sub_22FFEFF50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionMatchingStep2Intent.ReturnType.enrichmentQuery.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConversionMatchingStep2Intent.ReturnType.conversionMetricJson.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t sub_22FFEF704()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x656D686369726E65;
  }

  *v0;
  return result;
}

uint64_t sub_22FFEF750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D686369726E65 && a2 == 0xEF7972657551746ELL;
  if (v6 || (sub_2300316D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230039FC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2300316D0();

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

uint64_t sub_22FFEF83C(uint64_t a1)
{
  v2 = sub_22FFEFA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFEF878(uint64_t a1)
{
  v2 = sub_22FFEFA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionMatchingStep2Intent.ReturnType.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB05BB0, &qword_2300321B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFEFA48();
  sub_230031780();
  v16 = 0;
  v12 = v14[3];
  sub_2300315B0();
  if (!v12)
  {
    v15 = 1;
    sub_2300315B0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22FFEFA48()
{
  result = qword_27DB05BB8;
  if (!qword_27DB05BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05BB8);
  }

  return result;
}

uint64_t ConversionMatchingStep2Intent.ReturnType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB05BC0, &qword_2300321B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFEFA48();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v21 = 0;
  v11 = sub_230031490();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_230031490();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  sub_22FFEE60C(a1);
}

uint64_t ConversionMatchingStep2Intent.init(conversionParams:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22FFEFD08(a1, a3);
  result = type metadata accessor for ConversionMatchingStep2Intent();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_22FFEFD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversionParams();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConversionMatchingStep2Intent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB05BC8, &unk_2300321C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFEFF50();
  sub_230031780();
  v14 = 0;
  type metadata accessor for ConversionParams();
  sub_22FFF0774(&qword_27DB05BD8, type metadata accessor for ConversionParams);
  sub_230031640();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for ConversionMatchingStep2Intent() + 20));
    v12[15] = 1;
    sub_22FFED9B8(&qword_27DB05BE0, &unk_230035310);
    sub_22FFEFFA4();
    sub_230031640();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_22FFEFF50()
{
  result = qword_27DB05BD0;
  if (!qword_27DB05BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05BD0);
  }

  return result;
}

unint64_t sub_22FFEFFA4()
{
  result = qword_27DB05BE8;
  if (!qword_27DB05BE8)
  {
    sub_22FFF0054(&qword_27DB05BE0, &unk_230035310);
    sub_22FFF009C(&qword_27DB05BF0, &qword_27DB05C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05BE8);
  }

  return result;
}

uint64_t sub_22FFF0054(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_22FFF009C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22FFF0054(&qword_27DB05BF8, &qword_2300321D0);
    sub_22FFF0774(a2, type metadata accessor for ActionsStoreMetric);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ConversionMatchingStep2Intent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for ConversionParams();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFED9B8(&qword_27DB05C08, &qword_2300321D8);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ConversionMatchingStep2Intent();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFEFF50();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v16 = v14;
  v17 = v22;
  v27 = 0;
  sub_22FFF0774(&qword_27DB05C10, type metadata accessor for ConversionParams);
  v18 = v23;
  sub_230031520();
  sub_22FFEFD08(v24, v16);
  sub_22FFED9B8(&qword_27DB05BE0, &unk_230035310);
  v26 = 1;
  sub_22FFF0454();
  sub_230031520();
  (*(v17 + 8))(v10, v18);
  *(v16 + *(v11 + 20)) = v25;
  sub_22FFF0504(v16, v21, type metadata accessor for ConversionMatchingStep2Intent);
  sub_22FFEE60C(a1);
  return sub_22FFF056C(v16, type metadata accessor for ConversionMatchingStep2Intent);
}

unint64_t sub_22FFF0454()
{
  result = qword_27DB05C18;
  if (!qword_27DB05C18)
  {
    sub_22FFF0054(&qword_27DB05BE0, &unk_230035310);
    sub_22FFF009C(&qword_27DB05C20, &qword_27DB05C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05C18);
  }

  return result;
}

uint64_t sub_22FFF0504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFF056C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FFF05D0()
{
  result = qword_27DB05C30;
  if (!qword_27DB05C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05C30);
  }

  return result;
}

unint64_t sub_22FFF0628()
{
  result = qword_27DB05C38;
  if (!qword_27DB05C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05C38);
  }

  return result;
}

unint64_t sub_22FFF0680()
{
  result = qword_27DB05C40;
  if (!qword_27DB05C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05C40);
  }

  return result;
}

uint64_t sub_22FFF06F0(uint64_t a1)
{
  *(a1 + 8) = sub_22FFF0774(&qword_27DB05C48, type metadata accessor for ConversionMatchingStep2Intent);
  result = sub_22FFF0774(&qword_27DB05C50, type metadata accessor for ConversionMatchingStep2Intent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FFF0774(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22FFF0814()
{
  type metadata accessor for ConversionParams();
  if (v0 <= 0x3F)
  {
    sub_22FFF0898();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FFF0898()
{
  if (!qword_2814942C0)
  {
    sub_22FFF0054(&qword_27DB05BF8, &qword_2300321D0);
    v0 = sub_2300312A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814942C0);
    }
  }
}

__n128 sub_22FFF090C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22FFF0918(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_22FFF0974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversionMatchingStep3Intent.ReturnType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversionMatchingStep3Intent.ReturnType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FFF0B2C()
{
  result = qword_27DB05C58;
  if (!qword_27DB05C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05C58);
  }

  return result;
}

unint64_t sub_22FFF0B84()
{
  result = qword_27DB05C60;
  if (!qword_27DB05C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05C60);
  }

  return result;
}

unint64_t sub_22FFF0BDC()
{
  result = qword_27DB05C68;
  if (!qword_27DB05C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05C68);
  }

  return result;
}

uint64_t ActionsStoreMetric.impressionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t type metadata accessor for ActionsStoreMetric()
{
  result = qword_281494AF8;
  if (!qword_281494AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionsStoreMetric.properties.getter()
{
  v1 = (v0 + *(type metadata accessor for ActionsStoreMetric() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_22FFF0DD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22FFED9B8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

PromotedContentJetClient::ActionsStoreMetric::CodingKeys_optional __swiftcall ActionsStoreMetric.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::ActionsStoreMetric::CodingKeys_optional __swiftcall ActionsStoreMetric.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = ActionsStoreMetric.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_22FFF0F30()
{
  v1 = *v0;
  v2 = 0x6973736572706D69;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x6D617473656D6974;
  if (v1 != 3)
  {
    v4 = 0x69747265706F7270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x63697274656DLL;
  if (v1 != 1)
  {
    v5 = 0x65736F70727570;
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

uint64_t sub_22FFF103C()
{
  *v0;
  *v0;
  *v0;
  sub_2300311A0();
}

void sub_22FFF1178(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064496E6FLL;
  v4 = 0x6973736572706D69;
  v5 = 0x8000000230039F60;
  v6 = 0xD000000000000012;
  if (v2 != 5)
  {
    v6 = 0xD000000000000010;
    v5 = 0x8000000230039F80;
  }

  v7 = 0xE900000000000070;
  v8 = 0x6D617473656D6974;
  if (v2 != 3)
  {
    v8 = 0x69747265706F7270;
    v7 = 0xEA00000000007365;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x63697274656DLL;
  if (v2 != 1)
  {
    v10 = 0x65736F70727570;
    v9 = 0xE700000000000000;
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
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_22FFF12A8(uint64_t a1)
{
  v2 = sub_22FFF2C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF12E4(uint64_t a1)
{
  v2 = sub_22FFF2C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActionsStoreMetric.init(impressionId:metric:purpose:timestamp:properties:internalProperties:additionalFields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 20) = BYTE4(a3) & 1;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  v15 = type metadata accessor for ActionsStoreMetric();
  sub_22FFF1400(a5, a9 + v15[7], &qword_27DB05C70, &unk_230032560);
  v16 = (a9 + v15[8]);
  *v16 = a6;
  v16[1] = a7;
  sub_22FFF1400(a8, a9 + v15[9], &qword_27DB05C78, &qword_230032800);
  return sub_22FFF1400(a10, a9 + v15[10], &qword_27DB05C78, &qword_230032800);
}

uint64_t sub_22FFF1400(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22FFED9B8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t ActionsStoreMetric.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB05C80, &qword_230032570);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFF2C68();
  sub_230031780();
  v11 = *v3;
  v12 = v3[1];
  v25[31] = 0;
  sub_2300315B0();
  if (!v2)
  {
    v13 = *(v3 + 4);
    v14 = *(v3 + 20);
    v25[30] = 1;
    v25[28] = v14;
    sub_2300315E0();
    v15 = *(v3 + 6);
    v16 = *(v3 + 28);
    v25[29] = 2;
    v25[24] = v16;
    sub_2300315E0();
    v17 = type metadata accessor for ActionsStoreMetric();
    v18 = v17[7];
    v25[27] = 3;
    sub_230030E00();
    sub_22FFF3274(&qword_281494290, MEMORY[0x277CC9578]);
    sub_2300315D0();
    v19 = (v3 + v17[8]);
    v20 = *v19;
    v21 = v19[1];
    v25[26] = 4;
    sub_2300315B0();
    v22 = v17[9];
    v25[25] = 5;
    type metadata accessor for APJSValue();
    sub_22FFF3274(&qword_27DB05C90, type metadata accessor for APJSValue);
    sub_2300315D0();
    v23 = v17[10];
    v25[15] = 6;
    sub_2300315D0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ActionsStoreMetric.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v51 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v47 - v7;
  v9 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v47 - v11;
  v52 = sub_22FFED9B8(&qword_27DB05C98, &qword_230032578);
  v50 = *(v52 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v15 = v47 - v14;
  v16 = type metadata accessor for ActionsStoreMetric();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v20 = a1[4];
  v54 = a1;
  sub_22FFEDA4C(a1, v21);
  sub_22FFF2C68();
  v22 = v53;
  sub_230031770();
  if (v22)
  {
    return sub_22FFEE60C(v54);
  }

  v23 = v12;
  v53 = v8;
  v25 = v50;
  v24 = v51;
  v61 = 0;
  v26 = v52;
  v28 = v19;
  *v19 = sub_230031490();
  *(v19 + 1) = v29;
  v60 = 1;
  v30 = sub_2300314C0();
  *(v19 + 4) = v30;
  v19[20] = BYTE4(v30) & 1;
  v59 = 2;
  v31 = sub_2300314C0();
  v48 = 0;
  *(v19 + 6) = v31;
  v19[28] = BYTE4(v31) & 1;
  sub_230030E00();
  v58 = 3;
  sub_22FFF3274(&qword_27DB05CA0, MEMORY[0x277CC9578]);
  v32 = v48;
  sub_2300314B0();
  v48 = v32;
  if (v32)
  {
    (*(v25 + 8))(v15, v26);
    sub_22FFEE60C(v54);
    v33 = *(v19 + 1);
  }

  v34 = v16;
  sub_22FFF1400(v23, v28 + *(v16 + 28), &qword_27DB05C70, &unk_230032560);
  v57 = 4;
  v35 = v48;
  v36 = sub_230031490();
  v38 = v35;
  if (v35)
  {
    (*(v25 + 8))(v15, v26);
    v39 = 0;
    v48 = v35;
  }

  else
  {
    v40 = (v28 + v34[8]);
    *v40 = v36;
    v40[1] = v37;
    v41 = type metadata accessor for APJSValue();
    v56 = 5;
    v42 = sub_22FFF3274(&qword_27DB05CA8, type metadata accessor for APJSValue);
    v43 = v53;
    v47[1] = v42;
    v47[2] = v41;
    sub_2300314B0();
    v48 = 0;
    sub_22FFF1400(v43, v28 + v34[9], &qword_27DB05C78, &qword_230032800);
    v55 = 6;
    v44 = v48;
    sub_2300314B0();
    v48 = v44;
    if (!v44)
    {
      (*(v25 + 8))(v15, v26);
      sub_22FFF1400(v24, v28 + v34[10], &qword_27DB05C78, &qword_230032800);
      sub_22FFF2CBC(v28, v49);
      sub_22FFEE60C(v54);
      return sub_22FFF3214(v28, type metadata accessor for ActionsStoreMetric);
    }

    (*(v25 + 8))(v15, v26);
    v39 = 1;
  }

  sub_22FFEE60C(v54);
  v45 = *(v28 + 8);

  result = sub_22FFF31B4(v28 + v34[7], &qword_27DB05C70, &unk_230032560);
  if (v38)
  {
    if (v39)
    {
      return sub_22FFF31B4(v28 + v34[9], &qword_27DB05C78, &qword_230032800);
    }
  }

  else
  {
    v46 = *(v28 + v34[8] + 8);

    if (v39)
    {
      return sub_22FFF31B4(v28 + v34[9], &qword_27DB05C78, &qword_230032800);
    }
  }

  return result;
}

uint64_t ActionsStoreMetric.debugDescription.getter()
{
  v1 = v0;
  v41 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v2 = *(*(v41 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v41);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v40 = (&v38 - v6);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = (&v38 - v10);
  v12 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_2300313E0();
  MEMORY[0x23190F560](0x206D202020200A7BLL, 0xEA0000000000203ALL);
  v16 = *(v0 + 20);
  LODWORD(v42) = *(v0 + 4);
  BYTE4(v42) = v16;
  sub_22FFED9B8(&qword_27DB05CB0, &unk_230032580);
  v17 = sub_230031170();
  MEMORY[0x23190F560](v17);

  MEMORY[0x23190F560](0x3A2070202020200ALL, 0xE900000000000020);
  v18 = *(v0 + 28);
  LODWORD(v42) = *(v0 + 6);
  BYTE4(v42) = v18;
  v19 = sub_230031170();
  MEMORY[0x23190F560](v19);

  MEMORY[0x23190F560](0x3A2069202020200ALL, 0xE900000000000020);
  v20 = v0[1];
  v42 = *v0;
  v43 = v20;

  sub_22FFED9B8(&qword_27DB05CB8, &qword_230036AB0);
  v21 = sub_230031170();
  MEMORY[0x23190F560](v21);

  MEMORY[0x23190F560](0x3A2074202020200ALL, 0xE900000000000020);
  v22 = type metadata accessor for ActionsStoreMetric();
  sub_22FFF0DD0(v0 + v22[7], v15, &qword_27DB05C70, &unk_230032560);
  v23 = sub_230031170();
  MEMORY[0x23190F560](v23);

  MEMORY[0x23190F560](0x3A7270202020200ALL, 0xE900000000000020);
  v24 = (v0 + v22[8]);
  v25 = v24[1];
  v42 = *v24;
  v43 = v25;

  v26 = sub_230031170();
  MEMORY[0x23190F560](v26);
  v27 = v9;

  MEMORY[0x23190F560](0x3A7069202020200ALL, 0xE900000000000020);
  sub_22FFF0DD0(v0 + v22[9], v9, &qword_27DB05C78, &qword_230032800);
  v28 = type metadata accessor for APJSValue();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v27, 1, v28) == 1)
  {
    *v11 = 7104878;
    v11[1] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    v31 = *(v29 + 56);
    v31(v11, 0, 1, v28);
    if (v30(v27, 1, v28) != 1)
    {
      sub_22FFF31B4(v27, &qword_27DB05C78, &qword_230032800);
    }
  }

  else
  {
    sub_22FFF2D20(v27, v11);
    v31 = *(v29 + 56);
    v31(v11, 0, 1, v28);
  }

  v32 = sub_230031170();
  MEMORY[0x23190F560](v32);

  MEMORY[0x23190F560](0x3A6664202020200ALL, 0xE900000000000020);
  v33 = v39;
  sub_22FFF0DD0(v1 + v22[10], v39, &qword_27DB05C78, &qword_230032800);
  if (v30(v33, 1, v28) == 1)
  {
    v34 = v40;
    *v40 = 7104878;
    v34[1] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    v31(v34, 0, 1, v28);
    if (v30(v33, 1, v28) != 1)
    {
      sub_22FFF31B4(v33, &qword_27DB05C78, &qword_230032800);
    }
  }

  else
  {
    v35 = v40;
    sub_22FFF2D20(v33, v40);
    v31(v35, 0, 1, v28);
  }

  v36 = sub_230031170();
  MEMORY[0x23190F560](v36);

  MEMORY[0x23190F560](32010, 0xE200000000000000);
  return v44;
}

BOOL _s24PromotedContentJetClient18ActionsStoreMetricV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for APJSValue();
  v70 = *(v72 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v6 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v67 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v63 - v11;
  v71 = sub_22FFED9B8(&qword_27DB05CD8, qword_2300327E0);
  v12 = *(*(v71 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v71);
  v68 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  v17 = sub_230030E00();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v63 - v24;
  v26 = sub_22FFED9B8(&qword_27DB05CE0, &qword_230037BF0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v63 - v28;
  v30 = *(a1 + 8);
  v31 = *(a2 + 8);
  if (v30)
  {
    if (!v31 || (*a1 != *a2 || v30 != v31) && (sub_2300316D0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v33 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  v65 = v6;
  v64 = type metadata accessor for ActionsStoreMetric();
  v34 = *(v64 + 28);
  v35 = *(v26 + 48);
  sub_22FFF0DD0(a1 + v34, v29, &qword_27DB05C70, &unk_230032560);
  v66 = v35;
  sub_22FFF0DD0(a2 + v34, &v29[v35], &qword_27DB05C70, &unk_230032560);
  v36 = *(v18 + 48);
  if (v36(v29, 1, v17) == 1)
  {
    if (v36(&v29[v66], 1, v17) == 1)
    {
      sub_22FFF31B4(v29, &qword_27DB05C70, &unk_230032560);
      goto LABEL_29;
    }

LABEL_25:
    v37 = &qword_27DB05CE0;
    v38 = &qword_230037BF0;
    v39 = v29;
LABEL_26:
    sub_22FFF31B4(v39, v37, v38);
    return 0;
  }

  sub_22FFF0DD0(v29, v25, &qword_27DB05C70, &unk_230032560);
  if (v36(&v29[v66], 1, v17) == 1)
  {
    (*(v18 + 8))(v25, v17);
    goto LABEL_25;
  }

  (*(v18 + 32))(v21, &v29[v66], v17);
  sub_22FFF3274(&qword_27DB05CE8, MEMORY[0x277CC9578]);
  v41 = sub_230031140();
  v42 = *(v18 + 8);
  v42(v21, v17);
  v42(v25, v17);
  sub_22FFF31B4(v29, &qword_27DB05C70, &unk_230032560);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v43 = v64;
  v44 = *(v64 + 32);
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    v49 = v65;
    if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_2300316D0() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v49 = v65;
    if (v48)
    {
      return 0;
    }
  }

  v50 = *(v43 + 36);
  v51 = *(v71 + 48);
  sub_22FFF0DD0(a1 + v50, v16, &qword_27DB05C78, &qword_230032800);
  sub_22FFF0DD0(a2 + v50, &v16[v51], &qword_27DB05C78, &qword_230032800);
  v52 = *(v70 + 48);
  v53 = v72;
  if (v52(v16, 1, v72) == 1)
  {
    if (v52(&v16[v51], 1, v53) == 1)
    {
      sub_22FFF31B4(v16, &qword_27DB05C78, &qword_230032800);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v54 = v69;
  sub_22FFF0DD0(v16, v69, &qword_27DB05C78, &qword_230032800);
  if (v52(&v16[v51], 1, v53) == 1)
  {
    sub_22FFF3214(v54, type metadata accessor for APJSValue);
LABEL_41:
    v37 = &qword_27DB05CD8;
    v38 = qword_2300327E0;
    v39 = v16;
    goto LABEL_26;
  }

  sub_22FFF2D20(&v16[v51], v49);
  v55 = _s24PromotedContentJetClient9APJSValueO2eeoiySbAC_ACtFZ_0(v54, v49);
  sub_22FFF3214(v49, type metadata accessor for APJSValue);
  sub_22FFF3214(v54, type metadata accessor for APJSValue);
  sub_22FFF31B4(v16, &qword_27DB05C78, &qword_230032800);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  v56 = *(v43 + 40);
  v57 = *(v71 + 48);
  v58 = a1 + v56;
  v59 = v68;
  sub_22FFF0DD0(v58, v68, &qword_27DB05C78, &qword_230032800);
  sub_22FFF0DD0(a2 + v56, v59 + v57, &qword_27DB05C78, &qword_230032800);
  v60 = v72;
  if (v52(v59, 1, v72) != 1)
  {
    v61 = v67;
    sub_22FFF0DD0(v59, v67, &qword_27DB05C78, &qword_230032800);
    if (v52((v59 + v57), 1, v60) == 1)
    {
      sub_22FFF3214(v61, type metadata accessor for APJSValue);
      goto LABEL_48;
    }

    sub_22FFF2D20(v59 + v57, v49);
    v62 = _s24PromotedContentJetClient9APJSValueO2eeoiySbAC_ACtFZ_0(v61, v49);
    sub_22FFF3214(v49, type metadata accessor for APJSValue);
    sub_22FFF3214(v61, type metadata accessor for APJSValue);
    sub_22FFF31B4(v59, &qword_27DB05C78, &qword_230032800);
    return (v62 & 1) != 0;
  }

  if (v52((v59 + v57), 1, v60) != 1)
  {
LABEL_48:
    v37 = &qword_27DB05CD8;
    v38 = qword_2300327E0;
    v39 = v59;
    goto LABEL_26;
  }

  sub_22FFF31B4(v59, &qword_27DB05C78, &qword_230032800);
  return 1;
}

unint64_t sub_22FFF2C68()
{
  result = qword_27DB05C88;
  if (!qword_27DB05C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05C88);
  }

  return result;
}

uint64_t sub_22FFF2CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionsStoreMetric();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FFF2D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for APJSValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FFF2D88()
{
  result = qword_27DB05CC0;
  if (!qword_27DB05CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05CC0);
  }

  return result;
}

unint64_t sub_22FFF2DE0()
{
  result = qword_27DB05CC8;
  if (!qword_27DB05CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05CC8);
  }

  return result;
}

unint64_t sub_22FFF2E38()
{
  result = qword_27DB05CD0;
  if (!qword_27DB05CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05CD0);
  }

  return result;
}

void sub_22FFF2EB4()
{
  sub_22FFF2FC4(319, &qword_2814942D0);
  if (v0 <= 0x3F)
  {
    sub_22FFF2FC4(319, &qword_2814942B0);
    if (v1 <= 0x3F)
    {
      sub_22FFF3010(319, &qword_281495498, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_22FFF3010(319, &qword_281494350, type metadata accessor for APJSValue);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22FFF2FC4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_230031380();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_22FFF3010(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_230031380();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ActionsStoreMetric.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActionsStoreMetric.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22FFF31B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22FFED9B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22FFF3214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FFF3274(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FFF32CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ConversionParams()
{
  result = qword_281494D80;
  if (!qword_281494D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConversionParams.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConversionParams() + 24);
  v4 = sub_230030E00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

PromotedContentJetClient::ConversionParams::CodingKeys_optional __swiftcall ConversionParams.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ConversionParams.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6769666E6F63;
  }
}

uint64_t sub_22FFF3524(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x8000000230039FA0;
  if (v2 == 1)
  {
    v5 = 0x8000000230039FA0;
  }

  else
  {
    v3 = 0x6D617473656D6974;
    v5 = 0xE900000000000070;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6769666E6F63;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x6D617473656D6974;
    v4 = 0xE900000000000070;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6769666E6F63;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2300316D0();
  }

  return v11 & 1;
}

uint64_t sub_22FFF3624()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_22FFF36CC()
{
  *v0;
  *v0;
  sub_2300311A0();
}

uint64_t sub_22FFF3760()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_22FFF3810(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x8000000230039FA0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x6D617473656D6974;
    v4 = 0xE900000000000070;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6769666E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_22FFF3874()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6769666E6F63;
  }
}

uint64_t sub_22FFF390C(uint64_t a1)
{
  v2 = sub_22FFF3D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF3948(uint64_t a1)
{
  v2 = sub_22FFF3D70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionParams.init(config:conversionSignal:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22FFF3A24(a1, a4);
  v7 = type metadata accessor for ConversionParams();
  sub_22FFF3A94(a2, a4 + *(v7 + 20));
  v8 = *(v7 + 24);
  v9 = sub_230030E00();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t sub_22FFF3A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FFF3A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversionSignal();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConversionParams.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB05CF0, &qword_230032808);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  v8 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFF3D70();
  sub_230031780();
  v13[15] = 0;
  type metadata accessor for APJSValue();
  sub_22FFF4334(&qword_27DB05C90, type metadata accessor for APJSValue);
  sub_2300315D0();
  if (!v1)
  {
    v9 = type metadata accessor for ConversionParams();
    v10 = *(v9 + 20);
    v13[14] = 1;
    type metadata accessor for ConversionSignal();
    sub_22FFF4334(&qword_27DB05D00, type metadata accessor for ConversionSignal);
    sub_230031640();
    v11 = *(v9 + 24);
    v13[13] = 2;
    sub_230030E00();
    sub_22FFF4334(&qword_281494290, MEMORY[0x277CC9578]);
    sub_230031640();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22FFF3D70()
{
  result = qword_27DB05CF8;
  if (!qword_27DB05CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05CF8);
  }

  return result;
}

uint64_t ConversionParams.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v35 = sub_230030E00();
  v32 = *(v35 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConversionSignal();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v37 = &v30 - v12;
  v38 = sub_22FFED9B8(&qword_27DB05D08, &qword_230032810);
  v36 = *(v38 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v15 = &v30 - v14;
  v16 = type metadata accessor for ConversionParams();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v20 = a1[4];
  v39 = a1;
  sub_22FFEDA4C(a1, v21);
  sub_22FFF3D70();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(v39);
  }

  v31 = v16;
  v22 = v36;
  v23 = v19;
  type metadata accessor for APJSValue();
  v42 = 0;
  sub_22FFF4334(&qword_27DB05CA8, type metadata accessor for APJSValue);
  v25 = v37;
  v24 = v38;
  sub_2300314B0();
  v37 = v23;
  sub_22FFF3A24(v25, v23);
  v41 = 1;
  sub_22FFF4334(&qword_27DB05D10, type metadata accessor for ConversionSignal);
  sub_230031520();
  v26 = v37;
  sub_22FFF3A94(v9, &v37[*(v31 + 20)]);
  v40 = 2;
  sub_22FFF4334(&qword_27DB05CA0, MEMORY[0x277CC9578]);
  v28 = v34;
  v27 = v35;
  sub_230031520();
  (*(v22 + 8))(v15, v24);
  (*(v32 + 32))(v26 + *(v31 + 24), v28, v27);
  sub_22FFF437C(v26, v33, type metadata accessor for ConversionParams);
  sub_22FFEE60C(v39);
  return sub_22FFF43E4(v26, type metadata accessor for ConversionParams);
}

uint64_t sub_22FFF42CC(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FFF4334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FFF437C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFF43E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FFF4448()
{
  result = qword_27DB05D18;
  if (!qword_27DB05D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05D18);
  }

  return result;
}

unint64_t sub_22FFF44A0()
{
  result = qword_27DB05D20;
  if (!qword_27DB05D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05D20);
  }

  return result;
}

unint64_t sub_22FFF44F8()
{
  result = qword_27DB05D28;
  if (!qword_27DB05D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05D28);
  }

  return result;
}

void sub_22FFF45A4()
{
  sub_22FFF4640();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ConversionSignal();
    if (v1 <= 0x3F)
    {
      sub_230030E00();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FFF4640()
{
  if (!qword_281494350)
  {
    type metadata accessor for APJSValue();
    v0 = sub_230031380();
    if (!v1)
    {
      atomic_store(v0, &qword_281494350);
    }
  }
}

uint64_t ConversionMatchingStep3Intent.conversionMetricJson.getter()
{
  v1 = (v0 + *(type metadata accessor for ConversionMatchingStep3Intent() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for ConversionMatchingStep3Intent()
{
  result = qword_2814944B0;
  if (!qword_2814944B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

PromotedContentJetClient::ConversionMatchingStep3Intent::CodingKeys_optional __swiftcall ConversionMatchingStep3Intent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ConversionMatchingStep3Intent.CodingKeys.stringValue.getter()
{
  v1 = 0x6E6174736E496461;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22FFF48B0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000006563;
  v3 = 0x6E6174736E496461;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x6E6174736E496461;
  }

  if (v4 == 1)
  {
    v6 = 0x8000000230039FC0;
  }

  else
  {
    v6 = 0xEA00000000006563;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000230039F10;
  }

  if (*a2 == 1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x8000000230039FC0;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000230039F10;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2300316D0();
  }

  return v11 & 1;
}

uint64_t sub_22FFF4990()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_22FFF4A3C()
{
  *v0;
  *v0;
  sub_2300311A0();
}

uint64_t sub_22FFF4AD4()
{
  v1 = *v0;
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_22FFF4B88(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006563;
  v4 = 0x6E6174736E496461;
  if (v2 == 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x8000000230039FC0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x8000000230039F10;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_22FFF4BF0()
{
  v1 = 0x6E6174736E496461;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22FFF4C8C(uint64_t a1)
{
  v2 = sub_22FFF5654();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF4CC8(uint64_t a1)
{
  v2 = sub_22FFF5654();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionMatchingStep3Intent.ReturnType.impressionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConversionMatchingStep3Intent.ReturnType.conversionMetricJson.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

PromotedContentJetClient::ConversionMatchingStep3Intent::ReturnType __swiftcall ConversionMatchingStep3Intent.ReturnType.init(impressionId:conversionMetricJson:)(Swift::String_optional impressionId, Swift::String_optional conversionMetricJson)
{
  *v2 = impressionId;
  v2[1] = conversionMetricJson;
  result.conversionMetricJson = conversionMetricJson;
  result.impressionId = impressionId;
  return result;
}

unint64_t sub_22FFF4D70()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x6973736572706D69;
  }

  *v0;
  return result;
}

uint64_t sub_22FFF4DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973736572706D69 && a2 == 0xEC00000064496E6FLL;
  if (v6 || (sub_2300316D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230039FC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2300316D0();

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

uint64_t sub_22FFF4EA0(uint64_t a1)
{
  v2 = sub_22FFF50AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF4EDC(uint64_t a1)
{
  v2 = sub_22FFF50AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionMatchingStep3Intent.ReturnType.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB05D30, &qword_230032A20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFF50AC();
  sub_230031780();
  v16 = 0;
  v12 = v14[3];
  sub_2300315B0();
  if (!v12)
  {
    v15 = 1;
    sub_2300315B0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22FFF50AC()
{
  result = qword_27DB05D38;
  if (!qword_27DB05D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05D38);
  }

  return result;
}

uint64_t ConversionMatchingStep3Intent.ReturnType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB05D40, &qword_230032A28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFF50AC();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v21 = 0;
  v11 = sub_230031490();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_230031490();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  sub_22FFEE60C(a1);
}

uint64_t ConversionMatchingStep3Intent.init(conversionParams:conversionMetricJson:adInstance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_22FFF53B8(a1, a5, type metadata accessor for ConversionParams);
  v9 = type metadata accessor for ConversionMatchingStep3Intent();
  v10 = (a5 + *(v9 + 20));
  *v10 = a2;
  v10[1] = a3;
  return sub_22FFF53B8(a4, a5 + *(v9 + 24), type metadata accessor for ActionStoreAdInstance);
}

uint64_t sub_22FFF53B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ConversionMatchingStep3Intent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB05D48, &qword_230032A30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFF5654();
  sub_230031780();
  v17[15] = 0;
  type metadata accessor for ConversionParams();
  sub_22FFF5D6C(&qword_27DB05BD8, type metadata accessor for ConversionParams);
  sub_230031640();
  if (!v2)
  {
    v11 = type metadata accessor for ConversionMatchingStep3Intent();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v17[14] = 1;
    sub_230031600();
    v15 = *(v11 + 24);
    v17[13] = 2;
    type metadata accessor for ActionStoreAdInstance();
    sub_22FFF5D6C(&qword_27DB05D58, type metadata accessor for ActionStoreAdInstance);
    sub_230031640();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_22FFF5654()
{
  result = qword_27DB05D50;
  if (!qword_27DB05D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05D50);
  }

  return result;
}

uint64_t ConversionMatchingStep3Intent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = type metadata accessor for ActionStoreAdInstance();
  v4 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConversionParams();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22FFED9B8(&qword_27DB05D60, &qword_230032A38);
  v32 = *(v34 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ConversionMatchingStep3Intent();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v35 = a1;
  sub_22FFEDA4C(a1, v18);
  sub_22FFF5654();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(v35);
  }

  v19 = v32;
  v29 = v13;
  v20 = v16;
  v38 = 0;
  sub_22FFF5D6C(&qword_27DB05C10, type metadata accessor for ConversionParams);
  v22 = v33;
  v21 = v34;
  sub_230031520();
  sub_22FFF53B8(v22, v20, type metadata accessor for ConversionParams);
  v37 = 1;
  v23 = sub_2300314E0();
  v24 = v29;
  v25 = (v20 + *(v29 + 20));
  *v25 = v23;
  v25[1] = v26;
  v36 = 2;
  sub_22FFF5D6C(&qword_27DB05D68, type metadata accessor for ActionStoreAdInstance);
  sub_230031520();
  (*(v19 + 8))(v12, v21);
  sub_22FFF53B8(v6, v20 + *(v24 + 24), type metadata accessor for ActionStoreAdInstance);
  sub_22FFF5AFC(v20, v30, type metadata accessor for ConversionMatchingStep3Intent);
  sub_22FFEE60C(v35);
  return sub_22FFF5B64(v20, type metadata accessor for ConversionMatchingStep3Intent);
}

uint64_t sub_22FFF5AFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFF5B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FFF5BC8()
{
  result = qword_27DB05D70;
  if (!qword_27DB05D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05D70);
  }

  return result;
}

unint64_t sub_22FFF5C20()
{
  result = qword_27DB05D78;
  if (!qword_27DB05D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05D78);
  }

  return result;
}

unint64_t sub_22FFF5C78()
{
  result = qword_27DB05D80;
  if (!qword_27DB05D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05D80);
  }

  return result;
}

uint64_t sub_22FFF5CE8(uint64_t a1)
{
  *(a1 + 8) = sub_22FFF5D6C(&qword_27DB05D88, type metadata accessor for ConversionMatchingStep3Intent);
  result = sub_22FFF5D6C(&qword_27DB05D90, type metadata accessor for ConversionMatchingStep3Intent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FFF5D6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FFF5E0C()
{
  result = type metadata accessor for ConversionParams();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActionStoreAdInstance();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22FFF5ECC()
{
  result = qword_27DB05D98;
  if (!qword_27DB05D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05D98);
  }

  return result;
}

unint64_t sub_22FFF5F24()
{
  result = qword_27DB05DA0;
  if (!qword_27DB05DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05DA0);
  }

  return result;
}

unint64_t sub_22FFF5F7C()
{
  result = qword_27DB05DA8;
  if (!qword_27DB05DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05DA8);
  }

  return result;
}

uint64_t sub_22FFF5FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for APJSValue();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_22FFFA88C(v14, v11);
        sub_22FFFA88C(v15, v8);
        v17 = _s24PromotedContentJetClient9APJSValueO2eeoiySbAC_ACtFZ_0(v11, v8);
        sub_22FFFC768(v8);
        sub_22FFFC768(v11);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_22FFF6150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for APJSValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v12 = sub_22FFED9B8(&qword_27DB060C0, &qword_230033F40);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v55 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = a2;
  v54 = (&v51 - v17);
  v18 = 0;
  v52 = a1;
  v19 = *(a1 + 64);
  v51 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  while (v22)
  {
    v56 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v18 << 6);
    v25 = v55;
LABEL_16:
    v30 = (*(v52 + 48) + 16 * v24);
    v31 = *v30;
    v32 = v30[1];
    sub_22FFFA88C(*(v52 + 56) + *(v5 + 72) * v24, v11);
    v33 = sub_22FFED9B8(&qword_27DB060C8, &qword_230033F48);
    v34 = *(v33 + 48);
    *v25 = v31;
    v25[1] = v32;
    sub_22FFF2D20(v11, v25 + v34);
    (*(*(v33 - 8) + 56))(v25, 0, 1, v33);

LABEL_17:
    v35 = v54;
    sub_22FFFC7C4(v25, v54);
    v36 = sub_22FFED9B8(&qword_27DB060C8, &qword_230033F48);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = v11;
    v40 = v5;
    v41 = *(v36 + 48);
    v43 = *v35;
    v42 = v35[1];
    sub_22FFF2D20(v35 + v41, v9);
    v44 = v53;
    v45 = sub_23002F3D0(v43, v42);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      sub_22FFFC768(v9);
      return 0;
    }

    v48 = *(v44 + 56);
    v5 = v40;
    v11 = v39;
    sub_22FFFA88C(v48 + *(v40 + 72) * v45, v39);
    v49 = _s24PromotedContentJetClient9APJSValueO2eeoiySbAC_ACtFZ_0(v39, v9);
    sub_22FFFC768(v39);
    result = sub_22FFFC768(v9);
    v22 = v56;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v23 <= v18 + 1)
  {
    v26 = v18 + 1;
  }

  else
  {
    v26 = v23;
  }

  v27 = v26 - 1;
  v25 = v55;
  while (1)
  {
    v28 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v50 = sub_22FFED9B8(&qword_27DB060C8, &qword_230033F48);
      (*(*(v50 - 8) + 56))(v25, 1, 1, v50);
      v56 = 0;
      v18 = v27;
      goto LABEL_17;
    }

    v29 = *(v51 + 8 * v28);
    ++v18;
    if (v29)
    {
      v56 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v18 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FFF6568(char a1)
{
  result = 0x676E69727473;
  switch(a1)
  {
    case 1:
      result = 0x656C62756F64;
      break;
    case 2:
      result = 0x7261686363;
      break;
    case 3:
      result = 0x3233746E69;
      break;
    case 4:
      result = 0x3233746E6975;
      break;
    case 5:
      result = 0x3436746E69;
      break;
    case 6:
      result = 0x3436746E6975;
      break;
    case 7:
      result = 1819242338;
      break;
    case 8:
      result = 1702125924;
      break;
    case 9:
      result = 7107189;
      break;
    case 10:
      result = 1684632949;
      break;
    case 11:
      result = 0x7961727261;
      break;
    case 12:
      result = 0x616E6F6974636964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22FFF6690(uint64_t a1)
{
  v2 = sub_22FFFAA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF66CC(uint64_t a1)
{
  v2 = sub_22FFFAA00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6708(uint64_t a1)
{
  v2 = sub_22FFFAB50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6744(uint64_t a1)
{
  v2 = sub_22FFFAB50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6780(uint64_t a1)
{
  v2 = sub_22FFFACF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF67BC(uint64_t a1)
{
  v2 = sub_22FFFACF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FFFC308(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FFF6834(uint64_t a1)
{
  v2 = sub_22FFFA838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6870(uint64_t a1)
{
  v2 = sub_22FFFA838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF68AC(uint64_t a1)
{
  v2 = sub_22FFFAAFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF68E8(uint64_t a1)
{
  v2 = sub_22FFFAAFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6924(uint64_t a1)
{
  v2 = sub_22FFFA8F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6960(uint64_t a1)
{
  v2 = sub_22FFFA8F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF699C(uint64_t a1)
{
  v2 = sub_22FFFAD48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF69D8(uint64_t a1)
{
  v2 = sub_22FFFAD48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6A14(uint64_t a1)
{
  v2 = sub_22FFFACA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6A50(uint64_t a1)
{
  v2 = sub_22FFFACA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6A8C(uint64_t a1)
{
  v2 = sub_22FFFABF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6AC8(uint64_t a1)
{
  v2 = sub_22FFFABF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6B04(uint64_t a1)
{
  v2 = sub_22FFFAD9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6B40(uint64_t a1)
{
  v2 = sub_22FFFAD9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6B7C(uint64_t a1)
{
  v2 = sub_22FFFAC4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6BB8(uint64_t a1)
{
  v2 = sub_22FFFAC4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6BF4(uint64_t a1)
{
  v2 = sub_22FFFABA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6C30(uint64_t a1)
{
  v2 = sub_22FFFABA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6C6C(uint64_t a1)
{
  v2 = sub_22FFFAAA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6CA8(uint64_t a1)
{
  v2 = sub_22FFFAAA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6CE4()
{
  sub_230031740();
  MEMORY[0x23190FB00](0);
  return sub_230031760();
}

uint64_t sub_22FFF6D28()
{
  sub_230031740();
  MEMORY[0x23190FB00](0);
  return sub_230031760();
}

uint64_t sub_22FFF6D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2300316D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22FFF6DE8(uint64_t a1)
{
  v2 = sub_22FFFAA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6E24(uint64_t a1)
{
  v2 = sub_22FFFAA54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t APJSValue.encode(to:)(void *a1)
{
  v126 = sub_22FFED9B8(&qword_27DB05DB0, &qword_230032DC0);
  v90 = *(v126 - 8);
  v2 = *(v90 + 64);
  MEMORY[0x28223BE20](v126);
  v124 = &v82 - v3;
  v125 = sub_22FFED9B8(&qword_27DB05DB8, &qword_230032DC8);
  v89 = *(v125 - 8);
  v4 = *(v89 + 64);
  MEMORY[0x28223BE20](v125);
  v123 = &v82 - v5;
  v122 = sub_22FFED9B8(&qword_27DB05DC0, &qword_230032DD0);
  v88 = *(v122 - 8);
  v6 = *(v88 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v82 - v7;
  v8 = sub_230030E20();
  v120 = *(v8 - 8);
  v121 = v8;
  v9 = *(v120 + 64);
  MEMORY[0x28223BE20](v8);
  v118 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22FFED9B8(&qword_27DB05DC8, &qword_230032DD8);
  v87 = *(v117 - 8);
  v11 = *(v87 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v82 - v12;
  v13 = sub_230030DD0();
  v115 = *(v13 - 8);
  v116 = v13;
  v14 = *(v115 + 64);
  MEMORY[0x28223BE20](v13);
  v113 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_22FFED9B8(&qword_27DB05DD0, &qword_230032DE0);
  v86 = *(v112 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v82 - v17;
  v111 = sub_230030E00();
  v110 = *(v111 - 8);
  v18 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v108 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22FFED9B8(&qword_27DB05DD8, &qword_230032DE8);
  v85 = *(v107 - 8);
  v20 = *(v85 + 64);
  MEMORY[0x28223BE20](v107);
  v106 = &v82 - v21;
  v105 = sub_22FFED9B8(&qword_27DB05DE0, &qword_230032DF0);
  v84 = *(v105 - 8);
  v22 = *(v84 + 64);
  MEMORY[0x28223BE20](v105);
  v104 = &v82 - v23;
  v103 = sub_22FFED9B8(&qword_27DB05DE8, &qword_230032DF8);
  v83 = *(v103 - 8);
  v24 = *(v83 + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v82 - v25;
  v101 = sub_22FFED9B8(&qword_27DB05DF0, &qword_230032E00);
  v82 = *(v101 - 8);
  v26 = *(v82 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v82 - v27;
  v99 = sub_22FFED9B8(&qword_27DB05DF8, &qword_230032E08);
  v98 = *(v99 - 8);
  v28 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = &v82 - v29;
  v96 = sub_22FFED9B8(&qword_27DB05E00, &qword_230032E10);
  v95 = *(v96 - 8);
  v30 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v82 - v31;
  v93 = sub_22FFED9B8(&qword_27DB05E08, &qword_230032E18);
  v92 = *(v93 - 8);
  v32 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v34 = &v82 - v33;
  v35 = sub_22FFED9B8(&qword_27DB05E10, &qword_230032E20);
  v91 = *(v35 - 8);
  v36 = *(v91 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v82 - v37;
  v39 = type metadata accessor for APJSValue();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v42 = (&v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = sub_22FFED9B8(&qword_27DB05E18, &qword_230032E28);
  v127[0] = *(v129 - 8);
  v43 = *(v127[0] + 64);
  MEMORY[0x28223BE20](v129);
  v45 = &v82 - v44;
  v46 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFFA838();
  v128 = v45;
  sub_230031780();
  sub_22FFFA88C(v127[1], v42);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v76 = *v42;
      LOBYTE(v130) = 1;
      sub_22FFFAD48();
      v78 = v128;
      v77 = v129;
      sub_2300315A0();
      v79 = v93;
      sub_230031620();
      (*(v92 + 8))(v34, v79);
      return (*(v127[0] + 8))(v78, v77);
    case 2u:
      v73 = *v42;
      LOBYTE(v130) = 2;
      sub_22FFFACF4();
      v59 = v94;
      v61 = v128;
      v60 = v129;
      sub_2300315A0();
      v62 = v96;
      sub_230031650();
      v63 = v127;
      goto LABEL_14;
    case 3u:
      v74 = *v42;
      LOBYTE(v130) = 3;
      sub_22FFFACA0();
      v59 = v97;
      v61 = v128;
      v60 = v129;
      sub_2300315A0();
      v62 = v99;
      sub_230031660();
      v63 = &v129;
      goto LABEL_14;
    case 4u:
      v58 = *v42;
      LOBYTE(v130) = 4;
      sub_22FFFAC4C();
      v59 = v100;
      v61 = v128;
      v60 = v129;
      sub_2300315A0();
      v62 = v101;
      sub_230031680();
      v63 = &v114;
      goto LABEL_14;
    case 5u:
      v80 = *v42;
      LOBYTE(v130) = 5;
      sub_22FFFABF8();
      v59 = v102;
      v61 = v128;
      v60 = v129;
      sub_2300315A0();
      v62 = v103;
      sub_230031670();
      v63 = &v115;
      goto LABEL_14;
    case 6u:
      v81 = *v42;
      LOBYTE(v130) = 6;
      sub_22FFFABA4();
      v59 = v104;
      v61 = v128;
      v60 = v129;
      sub_2300315A0();
      v62 = v105;
      sub_230031690();
      v63 = &v116;
      goto LABEL_14;
    case 7u:
      v75 = *v42;
      LOBYTE(v130) = 7;
      sub_22FFFAB50();
      v59 = v106;
      v61 = v128;
      v60 = v129;
      sub_2300315A0();
      v62 = v107;
      sub_230031610();
      v63 = &v117;
LABEL_14:
      (*(*(v63 - 32) + 8))(v59, v62);
      return (*(v127[0] + 8))(v61, v60);
    case 8u:
      v66 = v110;
      v67 = v108;
      v65 = v111;
      (*(v110 + 32))(v108, v42, v111);
      LOBYTE(v130) = 8;
      sub_22FFFAAFC();
      v68 = v109;
      v70 = v128;
      v69 = v129;
      sub_2300315A0();
      sub_22FFFAF48(&qword_281494290, MEMORY[0x277CC9578]);
      v71 = v112;
      sub_230031640();
      v72 = &v118;
      goto LABEL_17;
    case 9u:
      v66 = v115;
      v65 = v116;
      v67 = v113;
      (*(v115 + 32))(v113, v42, v116);
      LOBYTE(v130) = 9;
      sub_22FFFAAA8();
      v68 = v114;
      v70 = v128;
      v69 = v129;
      sub_2300315A0();
      sub_22FFFAF48(&qword_2814942A0, MEMORY[0x277CC9260]);
      v71 = v117;
      sub_230031640();
      v72 = &v119;
      goto LABEL_17;
    case 0xAu:
      v66 = v120;
      v65 = v121;
      v67 = v118;
      (*(v120 + 32))(v118, v42, v121);
      LOBYTE(v130) = 10;
      sub_22FFFAA54();
      v68 = v119;
      v70 = v128;
      v69 = v129;
      sub_2300315A0();
      sub_22FFFAF48(&qword_27DB05E60, MEMORY[0x277CC95F0]);
      v71 = v122;
      sub_230031640();
      v72 = &v120;
LABEL_17:
      (*(*(v72 - 32) + 1))(v68, v71);
      (*(v66 + 8))(v67, v65);
      return (*(v127[0] + 8))(v70, v69);
    case 0xBu:
      v52 = *v42;
      LOBYTE(v130) = 11;
      sub_22FFFAA00();
      v53 = v123;
      v55 = v128;
      v54 = v129;
      sub_2300315A0();
      v130 = v52;
      sub_22FFED9B8(&qword_27DB05E48, &qword_230032E38);
      sub_22FFFAEAC(&qword_27DB05E50, &qword_27DB05C90);
      v56 = v125;
      sub_230031640();
      v57 = &v121;
      goto LABEL_6;
    case 0xCu:
      v64 = *v42;
      LOBYTE(v130) = 12;
      sub_22FFFA8F0();
      v53 = v124;
      v55 = v128;
      v54 = v129;
      sub_2300315A0();
      v130 = v64;
      sub_22FFED9B8(&qword_27DB05E30, &qword_230032E30);
      sub_22FFFA944();
      v56 = v126;
      sub_230031640();
      v57 = &v122;
LABEL_6:
      (*(*(v57 - 32) + 8))(v53, v56);
      (*(v127[0] + 8))(v55, v54);

      break;
    default:
      v47 = *v42;
      v48 = v42[1];
      LOBYTE(v130) = 0;
      sub_22FFFAD9C();
      v50 = v128;
      v49 = v129;
      sub_2300315A0();
      sub_230031600();

      (*(v91 + 8))(v38, v35);
      result = (*(v127[0] + 8))(v50, v49);
      break;
  }

  return result;
}

uint64_t APJSValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v211 = a2;
  v199 = sub_22FFED9B8(&qword_27DB05EB8, &qword_230032E40);
  v184 = *(v199 - 8);
  v3 = *(v184 + 64);
  MEMORY[0x28223BE20](v199);
  v216 = &v161 - v4;
  v200 = sub_22FFED9B8(&qword_27DB05EC0, &qword_230032E48);
  v183 = *(v200 - 8);
  v5 = *(v183 + 64);
  MEMORY[0x28223BE20](v200);
  v210 = &v161 - v6;
  v198 = sub_22FFED9B8(&qword_27DB05EC8, &qword_230032E50);
  v182 = *(v198 - 8);
  v7 = *(v182 + 64);
  MEMORY[0x28223BE20](v198);
  v209 = &v161 - v8;
  v197 = sub_22FFED9B8(&qword_27DB05ED0, &qword_230032E58);
  v181 = *(v197 - 8);
  v9 = *(v181 + 64);
  MEMORY[0x28223BE20](v197);
  v208 = &v161 - v10;
  v196 = sub_22FFED9B8(&qword_27DB05ED8, &qword_230032E60);
  v180 = *(v196 - 8);
  v11 = *(v180 + 64);
  MEMORY[0x28223BE20](v196);
  v207 = &v161 - v12;
  v195 = sub_22FFED9B8(&qword_27DB05EE0, &qword_230032E68);
  v179 = *(v195 - 8);
  v13 = *(v179 + 64);
  MEMORY[0x28223BE20](v195);
  v206 = &v161 - v14;
  v194 = sub_22FFED9B8(&qword_27DB05EE8, &qword_230032E70);
  v178 = *(v194 - 8);
  v15 = *(v178 + 64);
  MEMORY[0x28223BE20](v194);
  v205 = &v161 - v16;
  v193 = sub_22FFED9B8(&qword_27DB05EF0, &qword_230032E78);
  v177 = *(v193 - 8);
  v17 = *(v177 + 64);
  MEMORY[0x28223BE20](v193);
  v204 = &v161 - v18;
  v192 = sub_22FFED9B8(&qword_27DB05EF8, &qword_230032E80);
  v176 = *(v192 - 8);
  v19 = *(v176 + 64);
  MEMORY[0x28223BE20](v192);
  v203 = &v161 - v20;
  v191 = sub_22FFED9B8(&qword_27DB05F00, &qword_230032E88);
  v175 = *(v191 - 8);
  v21 = *(v175 + 64);
  MEMORY[0x28223BE20](v191);
  v215 = &v161 - v22;
  v190 = sub_22FFED9B8(&qword_27DB05F08, &qword_230032E90);
  v174 = *(v190 - 8);
  v23 = *(v174 + 64);
  MEMORY[0x28223BE20](v190);
  v214 = &v161 - v24;
  v189 = sub_22FFED9B8(&qword_27DB05F10, &qword_230032E98);
  v173 = *(v189 - 8);
  v25 = *(v173 + 64);
  MEMORY[0x28223BE20](v189);
  v202 = &v161 - v26;
  v188 = sub_22FFED9B8(&qword_27DB05F18, &qword_230032EA0);
  v172 = *(v188 - 8);
  v27 = *(v172 + 64);
  MEMORY[0x28223BE20](v188);
  v201 = &v161 - v28;
  v213 = sub_22FFED9B8(&qword_27DB05F20, &qword_230032EA8);
  v217 = *(v213 - 8);
  v29 = *(v217 + 64);
  MEMORY[0x28223BE20](v213);
  v31 = &v161 - v30;
  v212 = type metadata accessor for APJSValue();
  v32 = *(*(v212 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v212);
  v170 = (&v161 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x28223BE20](v33);
  v171 = (&v161 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v187 = &v161 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v186 = &v161 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v185 = &v161 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v169 = &v161 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v168 = (&v161 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v167 = (&v161 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v166 = (&v161 - v50);
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v161 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v161 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v161 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v62 = &v161 - v61;
  MEMORY[0x28223BE20](v60);
  v64 = &v161 - v63;
  v65 = a1[3];
  v66 = a1[4];
  v219 = a1;
  sub_22FFEDA4C(a1, v65);
  sub_22FFFA838();
  v218 = v31;
  v67 = v220;
  sub_230031770();
  if (v67)
  {
LABEL_9:
    v86 = v219;
    return sub_22FFEE60C(v86);
  }

  v161 = v62;
  v162 = v59;
  v163 = v56;
  v164 = v53;
  v69 = v214;
  v68 = v215;
  v70 = v216;
  v220 = 0;
  v71 = v212;
  v165 = v64;
  v72 = v213;
  v73 = sub_230031580();
  v74 = (2 * *(v73 + 16)) | 1;
  v222 = v73;
  v223 = v73 + 32;
  v224 = 0;
  v225 = v74;
  v75 = sub_22FFEE754();
  if (v224 != v225 >> 1)
  {
LABEL_6:
    v82 = sub_230031400();
    swift_allocError();
    v84 = v83;
    v85 = *(sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0) + 48);
    *v84 = v71;
    v77 = v218;
    sub_230031480();
    sub_2300313F0();
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x277D84160], v82);
    swift_willThrow();
LABEL_7:
    (*(v217 + 8))(v77, v72);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  switch(v75)
  {
    case 0:
      LOBYTE(v221) = 0;
      sub_22FFFAD9C();
      v76 = v201;
      v77 = v218;
      v78 = v220;
      sub_230031470();
      if (v78)
      {
        goto LABEL_7;
      }

      v79 = v188;
      v80 = sub_2300314E0();
      v81 = v217;
      v151 = v80;
      v153 = v152;
      (*(v172 + 8))(v76, v79);
      (*(v81 + 8))(v218, v72);
      swift_unknownObjectRelease();
      v154 = v161;
      *v161 = v151;
      v154[1] = v153;
      swift_storeEnumTagMultiPayload();
      v155 = v154;
      goto LABEL_42;
    case 1:
      LOBYTE(v221) = 1;
      sub_22FFFAD48();
      v120 = v202;
      v121 = v218;
      v122 = v220;
      sub_230031470();
      if (v122)
      {
        (*(v217 + 8))(v121, v72);
        goto LABEL_8;
      }

      v141 = v189;
      sub_230031500();
      v157 = v156;
      (*(v173 + 8))(v120, v141);
      (*(v217 + 8))(v121, v72);
      swift_unknownObjectRelease();
      v147 = v162;
      *v162 = v157;
      goto LABEL_39;
    case 2:
      LOBYTE(v221) = 2;
      sub_22FFFACF4();
      v89 = v218;
      v109 = v220;
      sub_230031470();
      if (v109)
      {
        goto LABEL_30;
      }

      v110 = v190;
      v111 = sub_230031530();
      v112 = v217;
      v148 = v111;
      (*(v174 + 8))(v69, v110);
      (*(v112 + 8))(v89, v72);
      swift_unknownObjectRelease();
      v99 = v163;
      *v163 = v148;
      goto LABEL_40;
    case 3:
      LOBYTE(v221) = 3;
      sub_22FFFACA0();
      v113 = v218;
      v114 = v220;
      sub_230031470();
      if (v114)
      {
        (*(v217 + 8))(v113, v72);
        goto LABEL_8;
      }

      v137 = v191;
      v138 = sub_230031540();
      v139 = v68;
      v140 = v217;
      (*(v175 + 8))(v139, v137);
      (*(v140 + 8))(v113, v72);
      swift_unknownObjectRelease();
      v147 = v164;
      *v164 = v138;
      goto LABEL_39;
    case 4:
      LOBYTE(v221) = 4;
      sub_22FFFAC4C();
      v93 = v203;
      v89 = v218;
      v94 = v220;
      sub_230031470();
      if (v94)
      {
        goto LABEL_30;
      }

      v95 = v192;
      v96 = sub_230031560();
      v97 = v217;
      v98 = v96;
      (*(v176 + 8))(v93, v95);
      (*(v97 + 8))(v89, v72);
      swift_unknownObjectRelease();
      v99 = v166;
      *v166 = v98;
      goto LABEL_40;
    case 5:
      LOBYTE(v221) = 5;
      sub_22FFFABF8();
      v123 = v204;
      v89 = v218;
      v124 = v220;
      sub_230031470();
      if (v124)
      {
        goto LABEL_30;
      }

      v125 = v193;
      v126 = sub_230031550();
      v127 = v217;
      v128 = v126;
      (*(v177 + 8))(v123, v125);
      (*(v127 + 8))(v89, v72);
      swift_unknownObjectRelease();
      v99 = v167;
      *v167 = v128;
      goto LABEL_40;
    case 6:
      LOBYTE(v221) = 6;
      sub_22FFFABA4();
      v129 = v205;
      v89 = v218;
      v130 = v220;
      sub_230031470();
      if (v130)
      {
        goto LABEL_30;
      }

      v142 = v194;
      v143 = sub_230031570();
      v144 = v217;
      v158 = v143;
      (*(v178 + 8))(v129, v142);
      (*(v144 + 8))(v89, v72);
      swift_unknownObjectRelease();
      v99 = v168;
      *v168 = v158;
LABEL_40:
      swift_storeEnumTagMultiPayload();
      v155 = v99;
      goto LABEL_42;
    case 7:
      LOBYTE(v221) = 7;
      sub_22FFFAB50();
      v115 = v206;
      v89 = v218;
      v116 = v220;
      sub_230031470();
      if (v116)
      {
        goto LABEL_30;
      }

      v117 = v195;
      v118 = sub_2300314F0();
      v119 = v217;
      v149 = v118;
      (*(v179 + 8))(v115, v117);
      (*(v119 + 8))(v89, v72);
      swift_unknownObjectRelease();
      v150 = v149 & 1;
      v147 = v169;
      *v169 = v150;
      goto LABEL_39;
    case 8:
      LOBYTE(v221) = 8;
      sub_22FFFAAFC();
      v135 = v207;
      v104 = v218;
      v136 = v220;
      sub_230031470();
      if (v136)
      {
        goto LABEL_34;
      }

      sub_230030E00();
      sub_22FFFAF48(&qword_27DB05CA0, MEMORY[0x277CC9578]);
      v106 = v185;
      v145 = v196;
      sub_230031520();
      v146 = v217;
      (*(v180 + 8))(v135, v145);
      (*(v146 + 8))(v104, v72);
      swift_unknownObjectRelease();
      goto LABEL_41;
    case 9:
      LOBYTE(v221) = 9;
      sub_22FFFAAA8();
      v103 = v208;
      v104 = v218;
      v105 = v220;
      sub_230031470();
      if (v105)
      {
        goto LABEL_34;
      }

      sub_230030DD0();
      sub_22FFFAF48(&qword_281494298, MEMORY[0x277CC9260]);
      v106 = v186;
      v107 = v197;
      sub_230031520();
      v108 = v217;
      (*(v181 + 8))(v103, v107);
      (*(v108 + 8))(v104, v72);
      swift_unknownObjectRelease();
      goto LABEL_41;
    case 10:
      LOBYTE(v221) = 10;
      sub_22FFFAA54();
      v131 = v209;
      v104 = v218;
      v132 = v220;
      sub_230031470();
      if (v132)
      {
LABEL_34:
        (*(v217 + 8))(v104, v72);
        swift_unknownObjectRelease();
        v86 = v219;
        return sub_22FFEE60C(v86);
      }

      sub_230030E20();
      sub_22FFFAF48(&qword_27DB05F38, MEMORY[0x277CC95F0]);
      v106 = v187;
      v133 = v198;
      sub_230031520();
      v134 = v217;
      (*(v182 + 8))(v131, v133);
      (*(v134 + 8))(v104, v72);
      swift_unknownObjectRelease();
LABEL_41:
      swift_storeEnumTagMultiPayload();
      v155 = v106;
      goto LABEL_42;
    case 11:
      LOBYTE(v221) = 11;
      sub_22FFFAA00();
      v88 = v210;
      v89 = v218;
      v90 = v220;
      sub_230031470();
      if (v90)
      {
        goto LABEL_30;
      }

      sub_22FFED9B8(&qword_27DB05E48, &qword_230032E38);
      sub_22FFFAEAC(&qword_27DB05F30, &qword_27DB05CA8);
      v91 = v200;
      sub_230031520();
      v92 = v217;
      (*(v183 + 8))(v88, v91);
      (*(v92 + 8))(v89, v72);
      swift_unknownObjectRelease();
      v147 = v171;
      *v171 = v221;
      goto LABEL_39;
    case 12:
      LOBYTE(v221) = 12;
      sub_22FFFA8F0();
      v89 = v218;
      v100 = v220;
      sub_230031470();
      if (v100)
      {
LABEL_30:
        (*(v217 + 8))(v89, v72);
        goto LABEL_8;
      }

      sub_22FFED9B8(&qword_27DB05E30, &qword_230032E30);
      sub_22FFFADF0();
      v101 = v199;
      sub_230031520();
      v102 = v217;
      (*(v184 + 8))(v70, v101);
      (*(v102 + 8))(v89, v72);
      swift_unknownObjectRelease();
      v147 = v170;
      *v170 = v221;
LABEL_39:
      swift_storeEnumTagMultiPayload();
      v155 = v147;
LABEL_42:
      v159 = v165;
      sub_22FFF2D20(v155, v165);
      v160 = v219;
      sub_22FFF2D20(v159, v211);
      result = sub_22FFEE60C(v160);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}

uint64_t APJSValue.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_230030E20();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_230030DD0();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_230030E00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for APJSValue();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FFFA88C(v1, v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = *v18;
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_2300312E0();
      return v34;
    case 2u:
      LOBYTE(v34) = *v18;
      return sub_2300316B0();
    case 3u:
      LODWORD(v34) = *v18;
      return sub_2300316B0();
    case 4u:
      LODWORD(v34) = *v18;
      return sub_2300316B0();
    case 5u:
      v34 = *v18;
      return sub_2300316B0();
    case 6u:
      v34 = *v18;
      return sub_2300316B0();
    case 7u:
      v26 = *v18;
      v34 = 0;
      v35 = 0xE000000000000000;
      if (v26)
      {
        v27 = 1702195828;
      }

      else
      {
        v27 = 0x65736C6166;
      }

      if (v26)
      {
        v28 = 0xE400000000000000;
      }

      else
      {
        v28 = 0xE500000000000000;
      }

      MEMORY[0x23190F560](v27, v28);

      return v34;
    case 8u:
      (*(v11 + 32))(v14, v18, v10);
      sub_22FFFAF48(&qword_27DB05F50, MEMORY[0x277CC9578]);
      v25 = sub_2300316B0();
      (*(v11 + 8))(v14, v10);
      return v25;
    case 9u:
      v24 = v32;
      (*(v32 + 32))(v9, v18, v6);
      sub_22FFFAF48(&qword_27DB05F48, MEMORY[0x277CC9260]);
      v25 = sub_2300316B0();
      (*(v24 + 8))(v9, v6);
      return v25;
    case 0xAu:
      v30 = v33;
      (*(v33 + 32))(v5, v18, v2);
      sub_22FFFAF48(&qword_27DB05F40, MEMORY[0x277CC95F0]);
      v31 = sub_2300316B0();
      (*(v30 + 8))(v5, v2);
      return v31;
    case 0xBu:
      v21 = MEMORY[0x23190F640](*v18, v15);
      goto LABEL_6;
    case 0xCu:
      v22 = *v18;
      v21 = sub_230031110();
LABEL_6:
      v23 = v21;

      result = v23;
      break;
    default:
      result = *v18;
      v20 = v18[1];
      break;
  }

  return result;
}

uint64_t _s24PromotedContentJetClient9APJSValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, double *a2)
{
  v107 = a1;
  v108 = a2;
  v2 = sub_230030E20();
  v105 = *(v2 - 8);
  v106 = v2;
  v3 = *(v105 + 64);
  MEMORY[0x28223BE20](v2);
  v94 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_230030DD0();
  v103 = *(v5 - 8);
  v104 = v5;
  v6 = *(v103 + 64);
  MEMORY[0x28223BE20](v5);
  v93 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_230030E00();
  v101 = *(v8 - 8);
  v102 = v8;
  v9 = *(v101 + 64);
  MEMORY[0x28223BE20](v8);
  v92 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for APJSValue();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v97 = (&v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v96 = (&v91 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v100 = &v91 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v99 = &v91 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v98 = &v91 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v95 = &v91 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v91 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v91 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (&v91 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = (&v91 - v35);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v91 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = (&v91 - v41);
  MEMORY[0x28223BE20](v40);
  v44 = (&v91 - v43);
  v45 = sub_22FFED9B8(&qword_27DB060B8, &qword_230033F38);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v49 = &v91 - v48;
  v50 = (&v91 + *(v47 + 56) - v48);
  sub_22FFFA88C(v107, &v91 - v48);
  v51 = v108;
  v108 = v50;
  sub_22FFFA88C(v51, v50);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22FFFA88C(v49, v42);
      v78 = v108;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_44;
      }

      v74 = *v42 == *v78;
      goto LABEL_31;
    case 2u:
      sub_22FFFA88C(v49, v39);
      v72 = v108;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_44;
      }

      v61 = *v39;
      v73 = *v72;
      goto LABEL_21;
    case 3u:
      sub_22FFFA88C(v49, v36);
      v60 = v108;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_44;
      }

      v61 = *v36;
      goto LABEL_20;
    case 4u:
      sub_22FFFA88C(v49, v33);
      v60 = v108;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_44;
      }

      v61 = *v33;
LABEL_20:
      v73 = *v60;
LABEL_21:
      v74 = v61 == v73;
      goto LABEL_31;
    case 5u:
      sub_22FFFA88C(v49, v30);
      v79 = v108;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_44;
      }

      v80 = *v30;
      v81 = *v79;
      goto LABEL_30;
    case 6u:
      sub_22FFFA88C(v49, v27);
      v82 = v108;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_44;
      }

      v80 = *v27;
      v81 = *v82;
LABEL_30:
      v74 = v80 == v81;
LABEL_31:
      v65 = v74;
      goto LABEL_39;
    case 7u:
      v75 = v95;
      sub_22FFFA88C(v49, v95);
      v76 = v108;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_44;
      }

      v77 = *v75 ^ *v76;
      sub_22FFFC768(v49);
      v65 = v77 ^ 1;
      return v65 & 1;
    case 8u:
      v66 = v98;
      sub_22FFFA88C(v49, v98);
      v84 = v108;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v69 = v101;
        v68 = v102;
        v70 = v92;
        (*(v101 + 32))(v92, v84, v102);
        v71 = sub_230030DF0();
        goto LABEL_38;
      }

      v87 = v101;
      v86 = v102;
      goto LABEL_43;
    case 9u:
      v66 = v99;
      sub_22FFFA88C(v49, v99);
      v67 = v108;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v69 = v103;
        v68 = v104;
        v70 = v93;
        (*(v103 + 32))(v93, v67, v104);
        v71 = sub_230030DA0();
        goto LABEL_38;
      }

      v87 = v103;
      v86 = v104;
      goto LABEL_43;
    case 0xAu:
      v66 = v100;
      sub_22FFFA88C(v49, v100);
      v83 = v108;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v69 = v105;
        v68 = v106;
        v70 = v94;
        (*(v105 + 32))(v94, v83, v106);
        v71 = sub_230030E10();
LABEL_38:
        v65 = v71;
        v85 = *(v69 + 8);
        v85(v70, v68);
        v85(v66, v68);
LABEL_39:
        sub_22FFFC768(v49);
        return v65 & 1;
      }

      v87 = v105;
      v86 = v106;
LABEL_43:
      (*(v87 + 8))(v66, v86);
      goto LABEL_44;
    case 0xBu:
      v56 = v96;
      sub_22FFFA88C(v49, v96);
      v57 = *v56;
      v58 = v108;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_13;
      }

      v59 = sub_22FFF5FDC(v57, *v58);
      goto LABEL_12;
    case 0xCu:
      v62 = v97;
      sub_22FFFA88C(v49, v97);
      v63 = *v62;
      v64 = v108;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_13;
      }

      v59 = sub_22FFF6150(v63, *v64);
LABEL_12:
      v65 = v59;

      goto LABEL_39;
    default:
      sub_22FFFA88C(v49, v44);
      v53 = *v44;
      v52 = v44[1];
      v54 = v108;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_13:

LABEL_44:
        sub_22FFFC700(v49);
        goto LABEL_45;
      }

      if (v53 != *v54 || v52 != *(v54 + 1))
      {
        v89 = *(v54 + 1);
        v90 = sub_2300316D0();

        if (v90)
        {
          goto LABEL_48;
        }

        sub_22FFFC768(v49);
LABEL_45:
        v65 = 0;
        return v65 & 1;
      }

      v55 = *(v54 + 1);

LABEL_48:
      sub_22FFFC768(v49);
      v65 = 1;
      return v65 & 1;
  }
}

uint64_t type metadata accessor for APJSValue()
{
  result = qword_281494380;
  if (!qword_281494380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22FFFA838()
{
  result = qword_27DB05E20;
  if (!qword_27DB05E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05E20);
  }

  return result;
}

uint64_t sub_22FFFA88C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for APJSValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FFFA8F0()
{
  result = qword_27DB05E28;
  if (!qword_27DB05E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05E28);
  }

  return result;
}

unint64_t sub_22FFFA944()
{
  result = qword_27DB05E38;
  if (!qword_27DB05E38)
  {
    sub_22FFF0054(&qword_27DB05E30, &qword_230032E30);
    sub_22FFFAF48(&qword_27DB05C90, type metadata accessor for APJSValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05E38);
  }

  return result;
}

unint64_t sub_22FFFAA00()
{
  result = qword_27DB05E40;
  if (!qword_27DB05E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05E40);
  }

  return result;
}

unint64_t sub_22FFFAA54()
{
  result = qword_27DB05E58;
  if (!qword_27DB05E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05E58);
  }

  return result;
}

unint64_t sub_22FFFAAA8()
{
  result = qword_27DB05E68;
  if (!qword_27DB05E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05E68);
  }

  return result;
}

unint64_t sub_22FFFAAFC()
{
  result = qword_27DB05E70;
  if (!qword_27DB05E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05E70);
  }

  return result;
}

unint64_t sub_22FFFAB50()
{
  result = qword_27DB05E78;
  if (!qword_27DB05E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05E78);
  }

  return result;
}

unint64_t sub_22FFFABA4()
{
  result = qword_27DB05E80;
  if (!qword_27DB05E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05E80);
  }

  return result;
}

unint64_t sub_22FFFABF8()
{
  result = qword_27DB05E88;
  if (!qword_27DB05E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05E88);
  }

  return result;
}

unint64_t sub_22FFFAC4C()
{
  result = qword_27DB05E90;
  if (!qword_27DB05E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05E90);
  }

  return result;
}

unint64_t sub_22FFFACA0()
{
  result = qword_27DB05E98;
  if (!qword_27DB05E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05E98);
  }

  return result;
}

unint64_t sub_22FFFACF4()
{
  result = qword_27DB05EA0;
  if (!qword_27DB05EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05EA0);
  }

  return result;
}

unint64_t sub_22FFFAD48()
{
  result = qword_27DB05EA8;
  if (!qword_27DB05EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05EA8);
  }

  return result;
}

unint64_t sub_22FFFAD9C()
{
  result = qword_27DB05EB0;
  if (!qword_27DB05EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05EB0);
  }

  return result;
}

unint64_t sub_22FFFADF0()
{
  result = qword_27DB05F28;
  if (!qword_27DB05F28)
  {
    sub_22FFF0054(&qword_27DB05E30, &qword_230032E30);
    sub_22FFFAF48(&qword_27DB05CA8, type metadata accessor for APJSValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05F28);
  }

  return result;
}

uint64_t sub_22FFFAEAC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22FFF0054(&qword_27DB05E48, &qword_230032E38);
    sub_22FFFAF48(a2, type metadata accessor for APJSValue);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FFFAF48(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22FFFAFE0()
{
  sub_230030E00();
  if (v0 <= 0x3F)
  {
    sub_230030DD0();
    if (v1 <= 0x3F)
    {
      sub_230030E20();
      if (v2 <= 0x3F)
      {
        sub_22FFFB0E0();
        if (v3 <= 0x3F)
        {
          sub_22FFFB138();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22FFFB0E0()
{
  if (!qword_27DB05F58)
  {
    type metadata accessor for APJSValue();
    v0 = sub_2300312A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DB05F58);
    }
  }
}

void sub_22FFFB138()
{
  if (!qword_27DB05F60)
  {
    type metadata accessor for APJSValue();
    v0 = sub_230031130();
    if (!v1)
    {
      atomic_store(v0, &qword_27DB05F60);
    }
  }
}

uint64_t getEnumTagSinglePayload for APJSValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for APJSValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntentDependencyProvider.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IntentDependencyProvider.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_22FFFB49C()
{
  result = qword_27DB05F68;
  if (!qword_27DB05F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05F68);
  }

  return result;
}

unint64_t sub_22FFFB4F4()
{
  result = qword_27DB05F70;
  if (!qword_27DB05F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05F70);
  }

  return result;
}

unint64_t sub_22FFFB54C()
{
  result = qword_27DB05F78;
  if (!qword_27DB05F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05F78);
  }

  return result;
}

unint64_t sub_22FFFB5A4()
{
  result = qword_27DB05F80;
  if (!qword_27DB05F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05F80);
  }

  return result;
}

unint64_t sub_22FFFB5FC()
{
  result = qword_27DB05F88;
  if (!qword_27DB05F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05F88);
  }

  return result;
}

unint64_t sub_22FFFB654()
{
  result = qword_27DB05F90;
  if (!qword_27DB05F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05F90);
  }

  return result;
}

unint64_t sub_22FFFB6AC()
{
  result = qword_27DB05F98;
  if (!qword_27DB05F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05F98);
  }

  return result;
}

unint64_t sub_22FFFB704()
{
  result = qword_27DB05FA0;
  if (!qword_27DB05FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05FA0);
  }

  return result;
}

unint64_t sub_22FFFB75C()
{
  result = qword_27DB05FA8;
  if (!qword_27DB05FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05FA8);
  }

  return result;
}

unint64_t sub_22FFFB7B4()
{
  result = qword_27DB05FB0;
  if (!qword_27DB05FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05FB0);
  }

  return result;
}

unint64_t sub_22FFFB80C()
{
  result = qword_27DB05FB8;
  if (!qword_27DB05FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05FB8);
  }

  return result;
}

unint64_t sub_22FFFB864()
{
  result = qword_27DB05FC0;
  if (!qword_27DB05FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05FC0);
  }

  return result;
}

unint64_t sub_22FFFB8BC()
{
  result = qword_27DB05FC8;
  if (!qword_27DB05FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05FC8);
  }

  return result;
}

unint64_t sub_22FFFB914()
{
  result = qword_27DB05FD0;
  if (!qword_27DB05FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05FD0);
  }

  return result;
}

unint64_t sub_22FFFB96C()
{
  result = qword_27DB05FD8;
  if (!qword_27DB05FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05FD8);
  }

  return result;
}

unint64_t sub_22FFFB9C4()
{
  result = qword_27DB05FE0;
  if (!qword_27DB05FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05FE0);
  }

  return result;
}

unint64_t sub_22FFFBA1C()
{
  result = qword_27DB05FE8;
  if (!qword_27DB05FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05FE8);
  }

  return result;
}

unint64_t sub_22FFFBA74()
{
  result = qword_27DB05FF0;
  if (!qword_27DB05FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05FF0);
  }

  return result;
}

unint64_t sub_22FFFBACC()
{
  result = qword_27DB05FF8;
  if (!qword_27DB05FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB05FF8);
  }

  return result;
}

unint64_t sub_22FFFBB24()
{
  result = qword_27DB06000;
  if (!qword_27DB06000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06000);
  }

  return result;
}

unint64_t sub_22FFFBB7C()
{
  result = qword_27DB06008;
  if (!qword_27DB06008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06008);
  }

  return result;
}

unint64_t sub_22FFFBBD4()
{
  result = qword_27DB06010;
  if (!qword_27DB06010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06010);
  }

  return result;
}

unint64_t sub_22FFFBC2C()
{
  result = qword_27DB06018;
  if (!qword_27DB06018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06018);
  }

  return result;
}

unint64_t sub_22FFFBC84()
{
  result = qword_27DB06020;
  if (!qword_27DB06020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06020);
  }

  return result;
}

unint64_t sub_22FFFBCDC()
{
  result = qword_27DB06028;
  if (!qword_27DB06028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06028);
  }

  return result;
}

unint64_t sub_22FFFBD34()
{
  result = qword_27DB06030;
  if (!qword_27DB06030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06030);
  }

  return result;
}

unint64_t sub_22FFFBD8C()
{
  result = qword_27DB06038;
  if (!qword_27DB06038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06038);
  }

  return result;
}

unint64_t sub_22FFFBDE4()
{
  result = qword_27DB06040;
  if (!qword_27DB06040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06040);
  }

  return result;
}

unint64_t sub_22FFFBE3C()
{
  result = qword_27DB06048;
  if (!qword_27DB06048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06048);
  }

  return result;
}

unint64_t sub_22FFFBE94()
{
  result = qword_27DB06050;
  if (!qword_27DB06050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06050);
  }

  return result;
}

unint64_t sub_22FFFBEEC()
{
  result = qword_27DB06058;
  if (!qword_27DB06058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06058);
  }

  return result;
}

unint64_t sub_22FFFBF44()
{
  result = qword_27DB06060;
  if (!qword_27DB06060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06060);
  }

  return result;
}

unint64_t sub_22FFFBF9C()
{
  result = qword_27DB06068;
  if (!qword_27DB06068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06068);
  }

  return result;
}

unint64_t sub_22FFFBFF4()
{
  result = qword_27DB06070;
  if (!qword_27DB06070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06070);
  }

  return result;
}

unint64_t sub_22FFFC04C()
{
  result = qword_27DB06078;
  if (!qword_27DB06078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06078);
  }

  return result;
}

unint64_t sub_22FFFC0A4()
{
  result = qword_27DB06080;
  if (!qword_27DB06080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06080);
  }

  return result;
}

unint64_t sub_22FFFC0FC()
{
  result = qword_27DB06088;
  if (!qword_27DB06088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06088);
  }

  return result;
}

unint64_t sub_22FFFC154()
{
  result = qword_27DB06090;
  if (!qword_27DB06090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06090);
  }

  return result;
}

unint64_t sub_22FFFC1AC()
{
  result = qword_27DB06098;
  if (!qword_27DB06098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06098);
  }

  return result;
}

unint64_t sub_22FFFC204()
{
  result = qword_27DB060A0;
  if (!qword_27DB060A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB060A0);
  }

  return result;
}

unint64_t sub_22FFFC25C()
{
  result = qword_27DB060A8;
  if (!qword_27DB060A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB060A8);
  }

  return result;
}

unint64_t sub_22FFFC2B4()
{
  result = qword_27DB060B0;
  if (!qword_27DB060B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB060B0);
  }

  return result;
}

uint64_t sub_22FFFC308(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261686363 && a2 == 0xE500000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3233746E69 && a2 == 0xE500000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x3436746E69 && a2 == 0xE500000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x3436746E6975 && a2 == 0xE600000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7961727261 && a2 == 0xE500000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972)
  {

    return 12;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_22FFFC700(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB060B8, &qword_230033F38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FFFC768(uint64_t a1)
{
  v2 = type metadata accessor for APJSValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FFFC7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB060C0, &qword_230033F40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ProofOfPurchase.utAdamId.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ProofOfPurchase.utTimestamp.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ProofOfPurchase.utPrivateInput.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ProofOfPurchase.utPublicKey.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ProofOfPurchase.utFinalizedToken.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

PromotedContentJetClient::ProofOfPurchase::CodingKeys_optional __swiftcall ProofOfPurchase.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::ProofOfPurchase::CodingKeys_optional __swiftcall ProofOfPurchase.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = ProofOfPurchase.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_22FFFC9D0()
{
  v1 = *v0;
  v2 = 0x64496D6164417475;
  v3 = 0x7461766972507475;
  v4 = 0x63696C6275507475;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7473656D69547475;
  if (v1 != 1)
  {
    v5 = 0x6F64657273497475;
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

uint64_t sub_22FFFCACC()
{
  *v0;
  *v0;
  *v0;
  sub_2300311A0();
}

void sub_22FFFCBFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x64496D6164417475;
  v5 = 0xEE007475706E4965;
  v6 = 0x7461766972507475;
  v7 = 0xEB0000000079654BLL;
  v8 = 0x63696C6275507475;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000023003A020;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000706D61;
  v10 = 0x7473656D69547475;
  if (v2 != 1)
  {
    v10 = 0x6F64657273497475;
    v9 = 0xEE0064616F6C6E77;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_22FFFCD2C(uint64_t a1)
{
  v2 = sub_22FFFD948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFFCD68(uint64_t a1)
{
  v2 = sub_22FFFD948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProofOfPurchase.init(utAdamId:utTimestamp:utIsredownload:utPrivateInput:utPublicKey:utFinalizedToken:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a10;
  if ((a2 & 1) == 0 || a4 || a5 != 2 || a7 || a10 || a12)
  {
    v13 = a11;
    *a9 = result;
    *(a9 + 8) = a2 & 1;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
  }

  else
  {
    a7 = 0;
    a8 = 0;
    v12 = 0;
    v13 = 0;
    *a9 = 0;
    *(a9 + 8) = 0;
    *(a9 + 16) = 0;
    *(a9 + 24) = 1;
    *(a9 + 32) = 0;
    *(a9 + 40) = 0;
  }

  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v12;
  *(a9 + 72) = v13;
  *(a9 + 80) = a12;
  return result;
}

uint64_t ProofOfPurchase.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB060D0, &qword_230033F50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v18 = *(v1 + 32);
  v11 = v1[5];
  v17[4] = v1[6];
  v17[5] = v11;
  v12 = v1[7];
  v17[2] = v1[8];
  v17[3] = v12;
  v13 = v1[10];
  v17[0] = v1[9];
  v17[1] = v13;
  v14 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFFD948();
  sub_230031780();
  v27 = 0;
  v15 = v21;
  sub_2300315F0();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v26 = 1;
  sub_2300315B0();
  v25 = 2;
  sub_2300315C0();
  v24 = 3;
  sub_2300315B0();
  v23 = 4;
  sub_2300315B0();
  v22 = 5;
  sub_2300315B0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ProofOfPurchase.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB060D8, &qword_230033F58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFFD948();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  LOBYTE(v47) = 0;
  v11 = sub_2300314D0();
  v58 = v12 & 1;
  LOBYTE(v47) = 1;
  v13 = sub_230031490();
  v15 = v14;
  v16 = v13;
  LOBYTE(v47) = 2;
  v39 = sub_2300314A0();
  LOBYTE(v47) = 3;
  v17 = sub_230031490();
  v40 = v18;
  v38 = v17;
  LOBYTE(v47) = 4;
  v19 = sub_230031490();
  v37 = v20;
  v35 = v19;
  v59 = 5;
  v21 = sub_230031490();
  v36 = 0;
  v22 = v21;
  v23 = v9;
  v25 = v24;
  (*(v6 + 8))(v23, v5);
  v34 = v11;
  *&v41 = v11;
  v33 = v58;
  BYTE8(v41) = v58;
  *&v42 = v16;
  *(&v42 + 1) = v15;
  LOBYTE(v43) = v39;
  v26 = v38;
  v27 = v40;
  *(&v43 + 1) = v38;
  *&v44 = v40;
  v28 = v35;
  *(&v44 + 1) = v35;
  *&v45 = v37;
  *(&v45 + 1) = v22;
  v46 = v25;
  *(a2 + 80) = v25;
  v29 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v29;
  *(a2 + 64) = v45;
  v30 = v42;
  *a2 = v41;
  *(a2 + 16) = v30;
  sub_22FFFD99C(&v41, &v47);
  sub_22FFEE60C(a1);
  v47 = v34;
  v48 = v33;
  v49 = v16;
  v50 = v15;
  v51 = v39;
  v52 = v26;
  v53 = v27;
  v54 = v28;
  v55 = v37;
  v56 = v22;
  v57 = v25;
  return sub_22FFFD9D4(&v47);
}

uint64_t ProofOfPurchase.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[8];
  v9 = v0[10];
  v17 = v0[7];
  v18 = v0[9];

  sub_2300313E0();
  MEMORY[0x23190F560](0x496D61644174757BLL, 0xEB00000000203A64);
  sub_22FFED9B8(&qword_27DB060E0, &unk_230033F60);
  v10 = sub_230031170();
  MEMORY[0x23190F560](v10);

  MEMORY[0x23190F560](0x656D69547475202CLL, 0xEF203A706D617473);
  sub_22FFED9B8(&qword_27DB05CB8, &qword_230036AB0);
  v11 = sub_230031170();
  MEMORY[0x23190F560](v11);

  MEMORY[0x23190F560](0xD000000000000012, 0x800000023003A390);
  sub_22FFED9B8(&qword_27DB060E8, &qword_230033F70);
  v12 = sub_230031170();
  MEMORY[0x23190F560](v12);

  MEMORY[0x23190F560](0xD000000000000012, 0x800000023003A3B0);
  v13 = sub_230031170();
  MEMORY[0x23190F560](v13);

  MEMORY[0x23190F560](0x6C6275507475202CLL, 0xEF203A79654B6369);
  v14 = sub_230031170();
  MEMORY[0x23190F560](v14);

  MEMORY[0x23190F560](0xD000000000000014, 0x800000023003A3D0);
  v15 = sub_230031170();
  MEMORY[0x23190F560](v15);

  MEMORY[0x23190F560](125, 0xE100000000000000);
  return 0;
}

BOOL _s24PromotedContentJetClient15ProofOfPurchaseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = *(a2 + 40);
  v16 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 72);
  v21 = *(a2 + 80);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v22 = *(a2 + 8);
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v14)
    {
      return 0;
    }

    if (v5 != *(a2 + 16) || v6 != v14)
    {
      v38 = v11;
      v39 = *(a2 + 80);
      v36 = *(a2 + 56);
      v37 = v13;
      v23 = v12;
      v24 = *(a2 + 72);
      v25 = v10;
      v26 = sub_2300316D0();
      v10 = v25;
      v20 = v24;
      v11 = v38;
      v21 = v39;
      v12 = v23;
      v18 = v36;
      v13 = v37;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v7 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }

    goto LABEL_20;
  }

  result = 0;
  if (v15 != 2 && ((v15 ^ v7) & 1) == 0)
  {
LABEL_20:
    if (v9)
    {
      if (!v16)
      {
        return 0;
      }

      if (v8 != v17 || v9 != v16)
      {
        v28 = v12;
        v29 = v20;
        v30 = v10;
        v31 = v18;
        v32 = sub_2300316D0();
        v18 = v31;
        v10 = v30;
        v20 = v29;
        v12 = v28;
        if ((v32 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v16)
    {
      return 0;
    }

    if (v10)
    {
      if (!v19)
      {
        return 0;
      }

      if (v11 != v18 || v10 != v19)
      {
        v33 = v12;
        v34 = v20;
        v35 = sub_2300316D0();
        v20 = v34;
        v12 = v33;
        if ((v35 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v19)
    {
      return 0;
    }

    if (v13)
    {
      return v21 && (v12 == v20 && v13 == v21 || (sub_2300316D0() & 1) != 0);
    }

    return !v21;
  }

  return result;
}

unint64_t sub_22FFFD948()
{
  result = qword_281494140;
  if (!qword_281494140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494140);
  }

  return result;
}

unint64_t sub_22FFFDA08()
{
  result = qword_27DB060F0;
  if (!qword_27DB060F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB060F0);
  }

  return result;
}

unint64_t sub_22FFFDA60()
{
  result = qword_281494130;
  if (!qword_281494130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494130);
  }

  return result;
}

unint64_t sub_22FFFDAB8()
{
  result = qword_281494138;
  if (!qword_281494138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281494138);
  }

  return result;
}

__n128 sub_22FFFDB0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22FFFDB30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_22FFFDB8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProofOfPurchase.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProofOfPurchase.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

PromotedContentJetClient::JetServiceTelemetryErrorCode_optional __swiftcall JetServiceTelemetryErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void _s24PromotedContentJetClient0C24ServiceTelemetryRecorderC6record5erroryAA0ceF9ErrorCodeO_tF_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = sub_230031150();
  sub_22FFED9B8(&qword_27DB06100, &qword_230034360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2300341F0;
  *(inited + 32) = 0x646F43726F727265;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_23001476C(inited);
  swift_setDeallocating();
  sub_22FFFE348(inited + 32);
  sub_22FFFE2FC();
  v5 = sub_230031100();

  [v2 sendEvent:v3 customPayload:v5];
}

void _s24PromotedContentJetClient0C24ServiceTelemetryRecorderC6record12cacheUpdated9jsVersion7runningySb_SSSbtF_0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = objc_opt_self();
  v7 = sub_230031150();
  sub_22FFED9B8(&qword_27DB06100, &qword_230034360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230034200;
  *(inited + 32) = 0x6F6973726556736ALL;
  *(inited + 40) = 0xE90000000000006ELL;
  *(inited + 48) = sub_230031150();
  *(inited + 56) = 0x676E696E6E7572;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 80) = 0x64657461647075;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_23001476C(inited);
  swift_setDeallocating();
  sub_22FFED9B8(&qword_27DB06108, &qword_230034368);
  swift_arrayDestroy();
  sub_22FFFE2FC();
  v9 = sub_230031100();

  [v6 sendEvent:v7 customPayload:v9];
}

unint64_t sub_22FFFE0E0()
{
  result = qword_27DB060F8;
  if (!qword_27DB060F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB060F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetServiceTelemetryErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JetServiceTelemetryErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FFFE2FC()
{
  result = qword_281493E90;
  if (!qword_281493E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281493E90);
  }

  return result;
}

uint64_t sub_22FFFE348(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06108, &qword_230034368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FieldValue.rawValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      v4 = MEMORY[0x277D83808];
      a4[3] = MEMORY[0x277D837D0];
      a4[4] = v4;
      a4[5] = MEMORY[0x277D837D8];
      *a4 = result;
      a4[1] = a2;
    }

    v7 = MEMORY[0x277D83BB8];
    a4[3] = MEMORY[0x277D83B88];
    a4[4] = v7;
    v6 = MEMORY[0x277D83B90];
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v5 = MEMORY[0x277D83A30];
    a4[3] = MEMORY[0x277D839F8];
    a4[4] = v5;
    v6 = MEMORY[0x277D83A08];
LABEL_7:
    a4[5] = v6;
    *a4 = result;
    return result;
  }

  v8 = MEMORY[0x277D839D0];
  a4[3] = MEMORY[0x277D839B0];
  a4[4] = v8;
  a4[5] = MEMORY[0x277D839B8];
  *a4 = result & 1;
  return result;
}

uint64_t sub_22FFFE468(uint64_t a1)
{
  v2 = sub_22FFFEC9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFFE4A4(uint64_t a1)
{
  v2 = sub_22FFFEC9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFFE4E0()
{
  v1 = 0x676E69727473;
  v2 = 0x656C62756F64;
  if (*v0 != 2)
  {
    v2 = 1819242338;
  }

  if (*v0)
  {
    v1 = 7630441;
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

uint64_t sub_22FFFE544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FFFEE60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FFFE578(uint64_t a1)
{
  v2 = sub_22FFFEC48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFFE5B4(uint64_t a1)
{
  v2 = sub_22FFFEC48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFFE5F0(uint64_t a1)
{
  v2 = sub_22FFFECF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFFE62C(uint64_t a1)
{
  v2 = sub_22FFFECF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFFE668(uint64_t a1)
{
  v2 = sub_22FFFED44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFFE6A4(uint64_t a1)
{
  v2 = sub_22FFFED44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFFE6E0(uint64_t a1)
{
  v2 = sub_22FFFED98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFFE71C(uint64_t a1)
{
  v2 = sub_22FFFED98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FieldValue.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v41 = a2;
  v39 = a4;
  v37 = a3;
  v38 = sub_22FFED9B8(&qword_27DB06110, &qword_230034370);
  v36 = *(v38 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v30 - v6;
  v7 = sub_22FFED9B8(&qword_27DB06118, &qword_230034378);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = sub_22FFED9B8(&qword_27DB06120, &qword_230034380);
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = sub_22FFED9B8(&qword_27DB06128, &qword_230034388);
  v30 = *(v15 - 8);
  v16 = *(v30 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v40 = sub_22FFED9B8(&qword_27DB06130, &qword_230034390);
  v19 = *(v40 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v40);
  v22 = &v30 - v21;
  v23 = a1[4];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFFEC48();
  sub_230031780();
  if (v39 > 1u)
  {
    if (v39 == 2)
    {
      v44 = 2;
      sub_22FFFECF0();
      v25 = v40;
      sub_2300315A0();
      v26 = v34;
      sub_230031620();
      (*(v33 + 8))(v10, v26);
      return (*(v19 + 8))(v22, v25);
    }

    v45 = 3;
    sub_22FFFEC9C();
    v14 = v35;
    v24 = v40;
    sub_2300315A0();
    v28 = v38;
    sub_230031610();
    v29 = v36;
    goto LABEL_8;
  }

  if (v39)
  {
    v43 = 1;
    sub_22FFFED44();
    v24 = v40;
    sub_2300315A0();
    v28 = v32;
    sub_230031630();
    v29 = v31;
LABEL_8:
    (*(v29 + 8))(v14, v28);
    return (*(v19 + 8))(v22, v24);
  }

  v42 = 0;
  sub_22FFFED98();
  v24 = v40;
  sub_2300315A0();
  sub_230031600();
  (*(v30 + 8))(v18, v15);
  return (*(v19 + 8))(v22, v24);
}

unint64_t sub_22FFFEC48()
{
  result = qword_27DB06138;
  if (!qword_27DB06138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06138);
  }

  return result;
}

unint64_t sub_22FFFEC9C()
{
  result = qword_27DB06140;
  if (!qword_27DB06140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06140);
  }

  return result;
}

unint64_t sub_22FFFECF0()
{
  result = qword_27DB06148;
  if (!qword_27DB06148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06148);
  }

  return result;
}

unint64_t sub_22FFFED44()
{
  result = qword_27DB06150;
  if (!qword_27DB06150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06150);
  }

  return result;
}

unint64_t sub_22FFFED98()
{
  result = qword_27DB06158;
  if (!qword_27DB06158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB06158);
  }

  return result;
}

uint64_t FieldValue.init(from:)(uint64_t *a1)
{
  result = sub_22FFFEFBC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_22FFFEE10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22FFFEFBC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_22FFFEE60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2300316D0();

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

uint64_t sub_22FFFEFBC(uint64_t *a1)
{
  v56 = sub_22FFED9B8(&qword_27DB061D8, &qword_230034A08);
  v58 = *(v56 - 8);
  v2 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  v60 = &v50 - v3;
  v53 = sub_22FFED9B8(&qword_27DB061E0, &qword_230034A10);
  v57 = *(v53 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v53);
  v59 = &v50 - v5;
  v6 = sub_22FFED9B8(&qword_27DB061E8, &qword_230034A18);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  v10 = sub_22FFED9B8(&qword_27DB061F0, &qword_230034A20);
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = sub_22FFED9B8(&qword_27DB061F8, &qword_230034A28);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v62 = a1;
  v21 = sub_22FFEDA4C(a1, v20);
  sub_22FFFEC48();
  v22 = v61;
  sub_230031770();
  if (!v22)
  {
    v23 = v13;
    v51 = v10;
    v61 = v9;
    v24 = v59;
    v25 = v60;
    v26 = sub_230031580();
    v27 = (2 * *(v26 + 16)) | 1;
    v64 = v26;
    v65 = v26 + 32;
    v66 = 0;
    v67 = v27;
    v28 = sub_22FFEE788();
    v29 = v14;
    v30 = v18;
    if (v28 == 4 || v66 != v67 >> 1)
    {
      v33 = sub_230031400();
      swift_allocError();
      v35 = v34;
      v36 = *(sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0) + 48);
      *v35 = &type metadata for FieldValue;
      v37 = v29;
      v21 = v30;
      sub_230031480();
      sub_2300313F0();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
      swift_willThrow();
      (*(v15 + 8))(v30, v37);
      swift_unknownObjectRelease();
    }

    else if (v28 > 1u)
    {
      if (v28 == 2)
      {
        v63 = 2;
        sub_22FFFECF0();
        v39 = v24;
        sub_230031470();
        v40 = v53;
        sub_230031500();
        v48 = v47;
        (*(v57 + 8))(v39, v40);
        (*(v15 + 8))(v18, v29);
        swift_unknownObjectRelease();
        v21 = v48;
      }

      else
      {
        v63 = 3;
        sub_22FFFEC9C();
        v44 = v25;
        v45 = v29;
        sub_230031470();
        v46 = v56;
        v49 = sub_2300314F0();
        (*(v58 + 8))(v44, v46);
        (*(v15 + 8))(v30, v45);
        swift_unknownObjectRelease();
        v21 = v49 & 1;
      }
    }

    else
    {
      if (v28)
      {
        v63 = 1;
        sub_22FFFED44();
        v41 = v61;
        v42 = v29;
        sub_230031470();
        v43 = v55;
        v21 = sub_230031510();
        (*(v54 + 8))(v41, v43);
        (*(v15 + 8))(v30, v42);
      }

      else
      {
        v63 = 0;
        sub_22FFFED98();
        v31 = v29;
        sub_230031470();
        v32 = v51;
        v21 = sub_2300314E0();
        (*(v52 + 8))(v23, v32);
        (*(v15 + 8))(v18, v31);
      }

      swift_unknownObjectRelease();
    }
  }

  sub_22FFEE60C(v62);
  return v21;
}

__n128 sub_22FFFF780(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22FFFF794(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FFFF7DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t getEnumTagSinglePayload for FieldValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FieldValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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