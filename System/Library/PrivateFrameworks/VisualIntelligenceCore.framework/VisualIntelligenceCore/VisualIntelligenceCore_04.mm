Swift::Bool __swiftcall ActionPin.Pill.Flags.contains(_:)(VisualIntelligenceCore::ActionPin::Pill::Flags::Flag a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = sub_1D87E6BC4(*a1, &unk_1F54237C8);
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = v4;
  v4 = sub_1D87E6BC4(v2, &unk_1F54237C8);
  if (v7)
  {
LABEL_13:
    __break(1u);
    return v4;
  }

  v8 = 1 << v6;
  if (v6 >= 0x40)
  {
    v8 = 0;
  }

  if (v6 > 0x40)
  {
    v8 = 0;
  }

  v9 = 1 << v4;
  if (v4 >= 0x40)
  {
    v9 = 0;
  }

  if (v4 > 0x40)
  {
    v9 = 0;
  }

  LOBYTE(v4) = (v8 & v3) == v9;
  return v4;
}

void *sub_1D87E64CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1D87E64F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

VisualIntelligenceCore::ActionPin::Pill::Flags __swiftcall ActionPin.Pill.Flags.init(_:)(VisualIntelligenceCore::ActionPin::Pill::Flags::Flag a1)
{
  v2 = v1;
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = v3;
  v5 = sub_1D87C40A4(inited);
  swift_setDeallocating();
  v6 = sub_1D87DFA08(v5);

  v7 = v6;
  v8 = *(v6 + 16);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_10;
  }

  if (v8 <= 3)
  {
    v9 = 0;
    v10 = 0;
LABEL_8:
    v16 = v8 - v9;
    v17 = (v7 + 8 * v9 + 32);
    do
    {
      v18 = *v17++;
      *&v10 |= v18;
      --v16;
    }

    while (v16);
    goto LABEL_10;
  }

  v9 = v8 & 0x7FFFFFFFFFFFFFFCLL;
  v11 = (v6 + 48);
  v12 = 0uLL;
  v13 = v8 & 0x7FFFFFFFFFFFFFFCLL;
  v14 = 0uLL;
  do
  {
    v12 = vorrq_s8(v11[-1], v12);
    v14 = vorrq_s8(*v11, v14);
    v11 += 2;
    v13 -= 4;
  }

  while (v13);
  v15 = vorrq_s8(v14, v12);
  v10 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
  if (v8 != v9)
  {
    goto LABEL_8;
  }

LABEL_10:

  *v2 = v10;
  return result;
}

unint64_t sub_1D87E66C8@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D87E6BC4(*a1, &unk_1F54237C8);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = 1 << result;
    if (result >= 0x40)
    {
      v5 = 0;
    }

    if (result > 0x40)
    {
      v5 = 0;
    }

    *a2 = v5;
  }

  return result;
}

VisualIntelligenceCore::ActionPin::Pill::Flags::Flag_optional __swiftcall ActionPin.Pill.Flags.Flag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActionPin.Pill.Flags.Flag.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7474756853657270;
  v3 = 0x7261507473726966;
  v4 = 0x6E49746C697562;
  if (v1 != 3)
  {
    v4 = 0x62616D6165727473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6261686372616573;
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

uint64_t sub_1D87E6828()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87E6910()
{
  sub_1D8B15A60();
}

uint64_t sub_1D87E69E4()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

void sub_1D87E6AD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x7474756853657270;
  v5 = 0xEA00000000007974;
  v6 = 0x7261507473726966;
  v7 = 0xE700000000000000;
  v8 = 0x6E49746C697562;
  if (v2 != 3)
  {
    v8 = 0x62616D6165727473;
    v7 = 0xEA0000000000656CLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6261686372616573;
    v3 = 0xEA0000000000656CLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  *a1 = v9;
  a1[1] = v10;
}

BOOL ActionPin.Pill.Flags.contains(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D87E4FE0(a1) & v3;
  return v4 == sub_1D87E4FE0(a1);
}

uint64_t sub_1D87E6BC4(unsigned __int8 a1, uint64_t a2)
{
  v15 = *(a2 + 16);
  v2 = 0;
  if (v15)
  {
    v16 = a2 + 32;
    v3 = a1;
    for (i = 0xE700000000000000; ; i = 0xE700000000000000)
    {
      v5 = *(v16 + v2);
      if (v5 <= 1)
      {
        if (*(v16 + v2))
        {
          v6 = 0x6261686372616573;
        }

        else
        {
          v6 = 0x7474756853657270;
        }

        if (*(v16 + v2))
        {
          v7 = 0xEA0000000000656CLL;
        }

        else
        {
          v7 = 0xEA00000000007265;
        }
      }

      else if (v5 == 2)
      {
        v6 = 0x7261507473726966;
        v7 = 0xEA00000000007974;
      }

      else
      {
        if (v5 == 3)
        {
          v6 = 0x6E49746C697562;
        }

        else
        {
          v6 = 0x62616D6165727473;
        }

        if (v5 == 3)
        {
          v7 = 0xE700000000000000;
        }

        else
        {
          v7 = 0xEA0000000000656CLL;
        }
      }

      v8 = 0xEA00000000007265;
      if (v3 == 3)
      {
        v9 = 0x6E49746C697562;
      }

      else
      {
        v9 = 0x62616D6165727473;
      }

      if (v3 != 3)
      {
        i = 0xEA0000000000656CLL;
      }

      if (v3 == 2)
      {
        v9 = 0x7261507473726966;
        i = 0xEA00000000007974;
      }

      if (v3)
      {
        v10 = 0x6261686372616573;
      }

      else
      {
        v10 = 0x7474756853657270;
      }

      if (v3)
      {
        v8 = 0xEA0000000000656CLL;
      }

      v11 = v3 <= 1 ? v10 : v9;
      v12 = v3 <= 1 ? v8 : i;
      if (v6 == v11 && v7 == v12)
      {
        break;
      }

      v13 = sub_1D8B16BA0();

      if (v13)
      {
        return v2;
      }

      if (v15 == ++v2)
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t ActionPin.Pill.Flags.debugDescription.getter()
{
  v1 = *v0;
  v28 = 91;
  v29 = 0xE100000000000000;
  v27[5] = v1;
  ActionPin.Pill.Flags.flagSet.getter();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = sub_1D87F39AC(*(v2 + 16), 0, &qword_1ECA63508);
    v6 = sub_1D8817D24(v27, v5 + 32, v4, v3);
    sub_1D87977A0();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v27[0] = v5;

  sub_1D8810EE0(v27);

  v7 = v27[0];
  v8 = *(v27[0] + 2);
  if (v8)
  {
    v27[0] = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v8, 0);
    v9 = 32;
    v10 = v27[0];
    v11 = 0x7474756853657270;
    do
    {
      v12 = v7[v9];
      v13 = 0xEA00000000007265;
      if (v12 == 3)
      {
        v14 = 0x6E49746C697562;
      }

      else
      {
        v14 = 0x62616D6165727473;
      }

      if (v12 == 3)
      {
        v15 = 0xE700000000000000;
      }

      else
      {
        v15 = 0xEA0000000000656CLL;
      }

      if (v12 == 2)
      {
        v14 = 0x7261507473726966;
        v15 = 0xEA00000000007974;
      }

      if (v7[v9])
      {
        v16 = 0x6261686372616573;
      }

      else
      {
        v16 = v11;
      }

      if (v7[v9])
      {
        v13 = 0xEA0000000000656CLL;
      }

      if (v7[v9] <= 1u)
      {
        v17 = v16;
      }

      else
      {
        v17 = v14;
      }

      if (v7[v9] <= 1u)
      {
        v18 = v13;
      }

      else
      {
        v18 = v15;
      }

      v27[0] = v10;
      v20 = *(v10 + 2);
      v19 = *(v10 + 3);
      if (v20 >= v19 >> 1)
      {
        v22 = v11;
        sub_1D87F3F54((v19 > 1), v20 + 1, 1);
        v11 = v22;
        v10 = v27[0];
      }

      *(v10 + 2) = v20 + 1;
      v21 = &v10[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      ++v9;
      --v8;
    }

    while (v8);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v27[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
  v23 = sub_1D8B15810();
  v25 = v24;

  MEMORY[0x1DA71EFA0](v23, v25);

  MEMORY[0x1DA71EFA0](93, 0xE100000000000000);
  return v28;
}

unint64_t sub_1D87E70C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  result = sub_1D87E6BC4(*a1, &unk_1F54237C8);
  if (v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  result = sub_1D87E6BC4(v2, &unk_1F54237C8);
  if (v6)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v7 = 1 << v5;
  if (v5 >= 0x40)
  {
    v7 = 0;
  }

  if (v5 > 0x40)
  {
    v7 = 0;
  }

  v8 = 1 << result;
  if (result >= 0x40)
  {
    v8 = 0;
  }

  if (result > 0x40)
  {
    v8 = 0;
  }

  return v7 < v8;
}

uint64_t sub_1D87E7158(char a1)
{
  result = 0x796669746E656469;
  switch(a1)
  {
    case 1:
      v3 = 0x636F4C6F6567;
      goto LABEL_5;
    case 2:
      result = 0x756B6F6F4C6F6567;
      break;
    case 3:
      result = 0x437261426E616373;
      break;
    case 4:
      result = 0x6165536567616D69;
      break;
    case 5:
      result = 0x7A6972616D6D7573;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0x756F6C4164616572;
      break;
    case 8:
      result = 0x746E657645646461;
      break;
    case 9:
      result = 0x656D63416B7361;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x746F685065766173;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x6974634174786574;
      break;
    case 14:
      v3 = 0x6C736E617274;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 15:
      result = 0x6B63616264656566;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D87E7348(uint64_t a1)
{
  v2 = sub_1D881C614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E7384(uint64_t a1)
{
  v2 = sub_1D881C614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E73C0(uint64_t a1)
{
  v2 = sub_1D881C5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E73FC(uint64_t a1)
{
  v2 = sub_1D881C5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E7440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D881EF58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D87E7474(uint64_t a1)
{
  v2 = sub_1D881C230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E74B0(uint64_t a1)
{
  v2 = sub_1D881C230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E74EC(uint64_t a1)
{
  v2 = sub_1D881C4C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E7528(uint64_t a1)
{
  v2 = sub_1D881C4C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E7564(uint64_t a1)
{
  v2 = sub_1D881C284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E75A0(uint64_t a1)
{
  v2 = sub_1D881C284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E75DC()
{
  if (*v0)
  {
    return 0x697461746F6E6E61;
  }

  else
  {
    return 0x65746E6573657270;
  }
}

uint64_t sub_1D87E762C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746E6573657270 && a2 == 0xED00007765695664;
  if (v6 || (sub_1D8B16BA0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEB00000000736E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D8B16BA0();

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

uint64_t sub_1D87E7714(uint64_t a1)
{
  v2 = sub_1D881C2D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E7750(uint64_t a1)
{
  v2 = sub_1D881C2D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E778C(uint64_t a1)
{
  v2 = sub_1D881C8B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E77C8(uint64_t a1)
{
  v2 = sub_1D881C8B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E781C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D87E78A4(uint64_t a1)
{
  v2 = sub_1D881C80C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E78E0(uint64_t a1)
{
  v2 = sub_1D881C80C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E791C(uint64_t a1)
{
  v2 = sub_1D881C908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E7958(uint64_t a1)
{
  v2 = sub_1D881C908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E7994(uint64_t a1)
{
  v2 = sub_1D881C764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E79D0(uint64_t a1)
{
  v2 = sub_1D881C764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E7A0C(uint64_t a1)
{
  v2 = sub_1D881C56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E7A48(uint64_t a1)
{
  v2 = sub_1D881C56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E7A84(uint64_t a1)
{
  v2 = sub_1D881C668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E7AC0(uint64_t a1)
{
  v2 = sub_1D881C668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E7AFC(uint64_t a1)
{
  v2 = sub_1D881C518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E7B38(uint64_t a1)
{
  v2 = sub_1D881C518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E7B74()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6D496D6574737973;
  }
}

uint64_t sub_1D87E7BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761;
  if (v6 || (sub_1D8B16BA0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B41F90 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D8B16BA0();

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

uint64_t sub_1D87E7CAC(uint64_t a1)
{
  v2 = sub_1D881C7B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E7CE8(uint64_t a1)
{
  v2 = sub_1D881C7B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E7D24(uint64_t a1)
{
  v2 = sub_1D881C710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E7D60(uint64_t a1)
{
  v2 = sub_1D881C710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E7D9C(uint64_t a1)
{
  v2 = sub_1D881C6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E7DD8(uint64_t a1)
{
  v2 = sub_1D881C6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E7E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D87E7EAC(uint64_t a1)
{
  v2 = sub_1D881C41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E7EE8(uint64_t a1)
{
  v2 = sub_1D881C41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E7F24(uint64_t a1)
{
  v2 = sub_1D881C3C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E7F60(uint64_t a1)
{
  v2 = sub_1D881C3C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BuiltInAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA638A8);
  v114 = *(v2 - 8);
  v115 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v113 = &v71 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA638B0);
  v118 = *(v4 - 8);
  v119 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v117 = &v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v116 = &v71 - v7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA638B8);
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v107 = &v71 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA638C0);
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v108 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA638C8);
  v105 = *(v10 - 8);
  v106 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v104 = &v71 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA638D0);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v71 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA638D8);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v71 - v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA638E0);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v71 - v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA638E8);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v71 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA638F0);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v71 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA638F8);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v71 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63900);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v71 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63908);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v71 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63910);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v71 - v20;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63918);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v71 - v21;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63920);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63928);
  v71 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v71 - v25;
  v27 = type metadata accessor for BuiltInAction(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63930);
  v31 = *(v30 - 8);
  v122 = v30;
  v123 = v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v71 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D881C230();
  v121 = v33;
  sub_1D8B16DD0();
  sub_1D881BDC4(v120, v29, type metadata accessor for BuiltInAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LOBYTE(v126) = 3;
      sub_1D881C7B8();
      v62 = v81;
      v64 = v121;
      v63 = v122;
      sub_1D8B16A40();
      LOBYTE(v126) = 0;
      v65 = v85;
      v66 = v124;
      sub_1D8B16A90();

      if (!v66)
      {
        LOBYTE(v126) = 1;
        sub_1D8B16A90();
      }

      (*(v84 + 8))(v62, v65);
      return (*(v123 + 8))(v64, v63);
    case 2u:
      v48 = *v29;
      LOBYTE(v126) = 13;
      sub_1D881C41C();
      v49 = v108;
      v51 = v121;
      v50 = v122;
      sub_1D8B16A40();
      v126 = v48;
      sub_1D881C470();
      v52 = v112;
      sub_1D8B16AE0();
      (*(v110 + 8))(v49, v52);
      (*(v123 + 8))(v51, v50);

    case 3u:
      v54 = *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0) + 48));
      v55 = v116;
      sub_1D881F6FC(v29, v116, &qword_1ECA635B8);
      LOBYTE(v126) = 15;
      sub_1D881C2D8();
      v56 = v117;
      v58 = v121;
      v57 = v122;
      sub_1D8B16A40();
      LOBYTE(v126) = 0;
      sub_1D8B13E30();
      sub_1D881BBCC(&qword_1ECA63950, MEMORY[0x1E699C540]);
      v59 = v119;
      v60 = v124;
      sub_1D8B16A80();
      if (v60)
      {

        (*(v118 + 8))(v56, v59);
        sub_1D87A14E4(v55, &qword_1ECA635B8);
        return (*(v123 + 8))(v58, v57);
      }

      else
      {
        v126 = v54;
        v125 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63958);
        sub_1D881C32C(&qword_1ECA63960, &qword_1ECA63950);
        sub_1D8B16AE0();
        (*(v118 + 8))(v56, v59);
        sub_1D87A14E4(v55, &qword_1ECA635B8);
        (*(v123 + 8))(v58, v57);
      }

    case 4u:
      LOBYTE(v126) = 0;
      sub_1D881C908();
      v42 = v121;
      v41 = v122;
      sub_1D8B16A40();
      (*(v71 + 8))(v26, v24);
      goto LABEL_23;
    case 5u:
      LOBYTE(v126) = 1;
      sub_1D881C8B4();
      v42 = v121;
      v41 = v122;
      sub_1D8B16A40();
      (*(v72 + 8))(v23, v73);
      goto LABEL_23;
    case 6u:
      LOBYTE(v126) = 4;
      sub_1D881C764();
      v68 = v77;
      v42 = v121;
      v41 = v122;
      sub_1D8B16A40();
      (*(v78 + 8))(v68, v79);
      goto LABEL_23;
    case 7u:
      LOBYTE(v126) = 5;
      sub_1D881C710();
      v61 = v80;
      v42 = v121;
      v41 = v122;
      sub_1D8B16A40();
      (*(v82 + 8))(v61, v83);
      goto LABEL_23;
    case 8u:
      LOBYTE(v126) = 6;
      sub_1D881C6BC();
      v70 = v86;
      v42 = v121;
      v41 = v122;
      sub_1D8B16A40();
      (*(v87 + 8))(v70, v88);
      goto LABEL_23;
    case 9u:
      LOBYTE(v126) = 7;
      sub_1D881C668();
      v47 = v89;
      v42 = v121;
      v41 = v122;
      sub_1D8B16A40();
      (*(v90 + 8))(v47, v91);
      goto LABEL_23;
    case 0xAu:
      LOBYTE(v126) = 8;
      sub_1D881C614();
      v69 = v92;
      v42 = v121;
      v41 = v122;
      sub_1D8B16A40();
      (*(v93 + 8))(v69, v94);
      goto LABEL_23;
    case 0xBu:
      LOBYTE(v126) = 9;
      sub_1D881C5C0();
      v45 = v95;
      v42 = v121;
      v41 = v122;
      sub_1D8B16A40();
      (*(v96 + 8))(v45, v97);
      goto LABEL_23;
    case 0xCu:
      LOBYTE(v126) = 10;
      sub_1D881C56C();
      v46 = v98;
      v42 = v121;
      v41 = v122;
      sub_1D8B16A40();
      (*(v99 + 8))(v46, v100);
      goto LABEL_23;
    case 0xDu:
      LOBYTE(v126) = 11;
      sub_1D881C518();
      v67 = v101;
      v42 = v121;
      v41 = v122;
      sub_1D8B16A40();
      (*(v102 + 8))(v67, v103);
      goto LABEL_23;
    case 0xEu:
      LOBYTE(v126) = 12;
      sub_1D881C4C4();
      v40 = v104;
      v42 = v121;
      v41 = v122;
      sub_1D8B16A40();
      v44 = v105;
      v43 = v106;
      goto LABEL_5;
    case 0xFu:
      LOBYTE(v126) = 14;
      sub_1D881C3C8();
      v53 = v107;
      v42 = v121;
      v41 = v122;
      sub_1D8B16A40();
      (*(v109 + 8))(v53, v111);
      goto LABEL_23;
    case 0x10u:
      LOBYTE(v126) = 16;
      sub_1D881C284();
      v40 = v113;
      v42 = v121;
      v41 = v122;
      sub_1D8B16A40();
      v44 = v114;
      v43 = v115;
LABEL_5:
      (*(v44 + 8))(v40, v43);
LABEL_23:
      result = (*(v123 + 8))(v42, v41);
      break;
    default:
      v34 = *v29;
      LOBYTE(v126) = 2;
      sub_1D881C80C();
      v35 = v74;
      v37 = v121;
      v36 = v122;
      sub_1D8B16A40();
      v126 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA639D8);
      sub_1D881C9B0(&qword_1ECA639E0, sub_1D881C860);
      v38 = v76;
      sub_1D8B16AE0();
      (*(v75 + 8))(v35, v38);
      (*(v123 + 8))(v37, v36);

      break;
  }

  return result;
}

uint64_t BuiltInAction.hash(into:)(__int128 *a1)
{
  v3 = sub_1D8B13E40();
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B13E30();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635B8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = type metadata accessor for BuiltInAction(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D881BDC4(v1, v17, type metadata accessor for BuiltInAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      MEMORY[0x1DA720210](3);
      sub_1D8B15A60();

      sub_1D8B15A60();

    case 2u:
      v20 = *v17;
      MEMORY[0x1DA720210](13);
      sub_1D8819574(a1, v20);
      goto LABEL_10;
    case 3u:
      v24 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0) + 48));
      sub_1D881F6FC(v17, v14, &qword_1ECA635B8);
      MEMORY[0x1DA720210](15);
      sub_1D87A0E38(v14, v12, &qword_1ECA635B8);
      v22 = v26;
      if ((*(v26 + 48))(v12, 1, v6) == 1)
      {
        sub_1D8B16D40();
      }

      else
      {
        (*(v22 + 32))(v8, v12, v6);
        sub_1D8B16D40();
        sub_1D8B13E10();
        sub_1D881BBCC(&qword_1ECA635D8, MEMORY[0x1E699C610]);
        sub_1D8B157A0();
        (*(v25 + 8))(v5, v3);
        sub_1D8B13DF0();
        sub_1D8B15A60();

        sub_1D8B13DE0();
        sub_1D8B15A60();

        (*(v22 + 8))(v8, v6);
      }

      sub_1D87CF700(a1, v24);

      return sub_1D87A14E4(v14, &qword_1ECA635B8);
    case 4u:
      v19 = 0;
      goto LABEL_21;
    case 5u:
      v19 = 1;
      goto LABEL_21;
    case 6u:
      v19 = 4;
      goto LABEL_21;
    case 7u:
      v19 = 5;
      goto LABEL_21;
    case 8u:
      v19 = 6;
      goto LABEL_21;
    case 9u:
      v19 = 7;
      goto LABEL_21;
    case 0xAu:
      v19 = 8;
      goto LABEL_21;
    case 0xBu:
      v19 = 9;
      goto LABEL_21;
    case 0xCu:
      v19 = 10;
      goto LABEL_21;
    case 0xDu:
      v19 = 11;
      goto LABEL_21;
    case 0xEu:
      v19 = 12;
      goto LABEL_21;
    case 0xFu:
      v19 = 14;
      goto LABEL_21;
    case 0x10u:
      v19 = 16;
LABEL_21:
      result = MEMORY[0x1DA720210](v19);
      break;
    default:
      v18 = *v17;
      MEMORY[0x1DA720210](2);
      sub_1D87D0814(a1, v18);
LABEL_10:

      break;
  }

  return result;
}

uint64_t sub_1D87E9908(void (*a1)(_BYTE *))
{
  sub_1D8B16D20();
  a1(v3);
  return sub_1D8B16D80();
}

uint64_t BuiltInAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A00);
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v135 = v83 - v3;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A08);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v139 = v83 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A10);
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v133 = v83 - v5;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A18);
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v134 = v83 - v6;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A20);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v132 = v83 - v7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A28);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v131 = v83 - v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A30);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v130 = v83 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A38);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v129 = v83 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A40);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v128 = v83 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A48);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v127 = v83 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A50);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v138 = v83 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A58);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v125 = v83 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A60);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v124 = v83 - v15;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A68);
  v96 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v126 = v83 - v16;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A70);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v123 = v83 - v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A78);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v137 = v83 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A80);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v122 = v83 - v19;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63A88);
  v141 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v21 = v83 - v20;
  v142 = type metadata accessor for BuiltInAction(0);
  v22 = MEMORY[0x1EEE9AC00](v142);
  v24 = v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v83 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = v83 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = v83 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = v83 - v34;
  v36 = a1[3];
  v144 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1D881C230();
  v37 = v143;
  sub_1D8B16DB0();
  if (v37)
  {
    v38 = v144;
  }

  else
  {
    v85 = v27;
    v86 = v33;
    v84 = v30;
    v39 = v137;
    v87 = v24;
    v41 = v138;
    v40 = v139;
    v143 = v35;
    v42 = v140;
    v43 = v136;
    v44 = sub_1D8B16A20();
    if (*(v44 + 16) != 1 || (v45 = *(v44 + 32), v45 == 17))
    {
      v48 = sub_1D8B16770();
      swift_allocError();
      v50 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
      *v50 = v142;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v48);
      swift_willThrow();
      (*(v141 + 8))(v21, v43);
      swift_unknownObjectRelease();
      v38 = v144;
    }

    else
    {
      v83[1] = v44;
      switch(v45)
      {
        case 1:
          LOBYTE(v145) = 1;
          sub_1D881C8B4();
          sub_1D8B16950();
          (*(v90 + 8))(v39, v91);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v47 = v143;
          swift_storeEnumTagMultiPayload();
          break;
        case 2:
          LOBYTE(v145) = 2;
          sub_1D881C80C();
          v57 = v123;
          sub_1D8B16950();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA639D8);
          sub_1D881C9B0(&qword_1ECA63AA8, sub_1D881CA28);
          v58 = v93;
          sub_1D8B16A10();
          (*(v92 + 8))(v57, v58);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v59 = v86;
          *v86 = v145;
          goto LABEL_25;
        case 3:
          LOBYTE(v145) = 3;
          sub_1D881C7B8();
          v62 = v126;
          sub_1D8B16950();
          LOBYTE(v145) = 0;
          v63 = v99;
          v139 = sub_1D8B169C0();
          v74 = v73;
          LOBYTE(v145) = 1;
          v75 = sub_1D8B169C0();
          v76 = (v141 + 8);
          v77 = *(v96 + 8);
          v78 = v63;
          v79 = v75;
          v141 = v80;
          v77(v62, v78);
          (*v76)(v21, v43);
          swift_unknownObjectRelease();
          v59 = v84;
          *v84 = v139;
          v59[1] = v74;
          v81 = v141;
          v59[2] = v79;
          v59[3] = v81;
          goto LABEL_25;
        case 4:
          LOBYTE(v145) = 4;
          sub_1D881C764();
          v54 = v124;
          sub_1D8B16950();
          (*(v94 + 8))(v54, v95);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v47 = v143;
          swift_storeEnumTagMultiPayload();
          break;
        case 5:
          LOBYTE(v145) = 5;
          sub_1D881C710();
          v65 = v125;
          sub_1D8B16950();
          (*(v97 + 8))(v65, v98);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v47 = v143;
          swift_storeEnumTagMultiPayload();
          break;
        case 6:
          LOBYTE(v145) = 6;
          sub_1D881C6BC();
          sub_1D8B16950();
          (*(v100 + 8))(v41, v101);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v47 = v143;
          swift_storeEnumTagMultiPayload();
          break;
        case 7:
          LOBYTE(v145) = 7;
          sub_1D881C668();
          v64 = v127;
          sub_1D8B16950();
          (*(v102 + 8))(v64, v103);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v47 = v143;
          swift_storeEnumTagMultiPayload();
          break;
        case 8:
          LOBYTE(v145) = 8;
          sub_1D881C614();
          v71 = v128;
          sub_1D8B16950();
          (*(v104 + 8))(v71, v105);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v47 = v143;
          swift_storeEnumTagMultiPayload();
          break;
        case 9:
          LOBYTE(v145) = 9;
          sub_1D881C5C0();
          v56 = v129;
          sub_1D8B16950();
          (*(v106 + 8))(v56, v107);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v47 = v143;
          swift_storeEnumTagMultiPayload();
          break;
        case 10:
          LOBYTE(v145) = 10;
          sub_1D881C56C();
          v70 = v130;
          sub_1D8B16950();
          (*(v108 + 8))(v70, v109);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v47 = v143;
          swift_storeEnumTagMultiPayload();
          break;
        case 11:
          LOBYTE(v145) = 11;
          sub_1D881C518();
          v53 = v131;
          sub_1D8B16950();
          (*(v110 + 8))(v53, v111);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v47 = v143;
          swift_storeEnumTagMultiPayload();
          break;
        case 12:
          LOBYTE(v145) = 12;
          sub_1D881C4C4();
          v55 = v132;
          sub_1D8B16950();
          (*(v112 + 8))(v55, v113);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v47 = v143;
          swift_storeEnumTagMultiPayload();
          break;
        case 13:
          LOBYTE(v145) = 13;
          sub_1D881C41C();
          v66 = v134;
          sub_1D8B16950();
          sub_1D881C95C();
          v67 = v66;
          v68 = v117;
          sub_1D8B16A10();
          v69 = v141;
          (*(v115 + 8))(v67, v68);
          (*(v69 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v59 = v85;
          *v85 = v145;
          goto LABEL_25;
        case 14:
          LOBYTE(v145) = 14;
          sub_1D881C3C8();
          v52 = v133;
          sub_1D8B16950();
          (*(v114 + 8))(v52, v116);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v47 = v143;
          swift_storeEnumTagMultiPayload();
          break;
        case 15:
          LOBYTE(v145) = 15;
          sub_1D881C2D8();
          v60 = v40;
          sub_1D8B16950();
          sub_1D8B13E30();
          LOBYTE(v145) = 0;
          sub_1D881BBCC(&qword_1ECA63A90, MEMORY[0x1E699C540]);
          v61 = v121;
          sub_1D8B169B0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63958);
          LOBYTE(v145) = 1;
          sub_1D881C32C(&qword_1ECA63A98, &qword_1ECA63A90);
          sub_1D8B16A10();
          (*(v120 + 8))(v60, v61);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v59 = v87;
LABEL_25:
          swift_storeEnumTagMultiPayload();
          v47 = v143;
          sub_1D881BFE4(v59, v143, type metadata accessor for BuiltInAction);
          break;
        case 16:
          LOBYTE(v145) = 16;
          sub_1D881C284();
          v51 = v135;
          sub_1D8B16950();
          (*(v118 + 8))(v51, v119);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v47 = v143;
          swift_storeEnumTagMultiPayload();
          break;
        default:
          LOBYTE(v145) = 0;
          sub_1D881C908();
          v46 = v122;
          sub_1D8B16950();
          (*(v88 + 8))(v46, v89);
          (*(v141 + 8))(v21, v43);
          swift_unknownObjectRelease();
          v47 = v143;
          swift_storeEnumTagMultiPayload();
          break;
      }

      v82 = v144;
      sub_1D881BFE4(v47, v42, type metadata accessor for BuiltInAction);
      v38 = v82;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_1D87EB560(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D8B16D20();
  a3(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D87EB5C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D8B16D20();
  a4(v6);
  return sub_1D8B16D80();
}

unint64_t sub_1D87EB638()
{
  v1 = type metadata accessor for BuiltInAction(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D881BDC4(v0, v3, type metadata accessor for BuiltInAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x2E72656B61657073;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v6 = *v3;

      result = v6;
      break;
    case 2:
      sub_1D881BD44(v3, type metadata accessor for BuiltInAction);
      result = 0x6569762E74786574;
      break;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);

      sub_1D87A14E4(v3, &qword_1ECA635B8);
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      return result;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
    case 12:
      result = 0x6275622E74786574;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0x642E6E6F2E636F64;
      break;
    case 15:
      result = 0x74616C736E617274;
      break;
    case 16:
      result = 0x6F746F6870;
      break;
    default:
      sub_1D881BD44(v3, type metadata accessor for BuiltInAction);
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

uint64_t sub_1D87EB930()
{
  v0 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v36[4] = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D8B15930();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v36[3] = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v36[2] = v36 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36[1] = v36 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v36[0] = v36 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v18 = type metadata accessor for BuiltInAction(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D881BDC4(v36[5], v20, type metadata accessor for BuiltInAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = *(v20 + 2);

      return v29;
    case 2u:
      sub_1D881BD44(v20, type metadata accessor for BuiltInAction);
      return 0x7463412074786554;
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);

      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        v27 = [objc_opt_self() mainBundle];
      }

      sub_1D8B132F0();
      v28 = sub_1D8B159D0();
      sub_1D87A14E4(v20, &qword_1ECA635B8);
      return v28;
    case 4u:
      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        v23 = [objc_opt_self() mainBundle];
      }

      goto LABEL_36;
    case 5u:
      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        v30 = [objc_opt_self() mainBundle];
      }

      goto LABEL_36;
    case 6u:
      static ImageSearchProvider.getImageSearchProvider()(&v38);
      if (v39)
      {
        v37[0] = v38;
        v37[1] = v39;
        v31 = &off_1F5429C08;
        v32 = &type metadata for GoogleImageSearch;
      }

      else
      {
        v31 = &off_1F542A738;
        v32 = &type metadata for ImageSearchProviderUnavailable;
      }

      v37[3] = v32;
      v37[4] = v31;
      __swift_project_boxed_opaque_existential_1(v37, v32);
      v35 = (v31[2])();
      __swift_destroy_boxed_opaque_existential_1(v37);
      return v35;
    case 7u:
    case 8u:
      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        v21 = [objc_opt_self() mainBundle];
      }

      goto LABEL_36;
    case 9u:
      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        v26 = [objc_opt_self() mainBundle];
      }

      goto LABEL_36;
    case 0xAu:
      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        v34 = [objc_opt_self() mainBundle];
      }

      goto LABEL_36;
    case 0xBu:
      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        v24 = [objc_opt_self() mainBundle];
      }

      goto LABEL_36;
    case 0xCu:
      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        v25 = [objc_opt_self() mainBundle];
      }

      goto LABEL_36;
    case 0xDu:
      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    case 0xEu:
      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    case 0xFu:
      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    case 0x10u:
      return 0xD000000000000013;
    default:
      sub_1D881BD44(v20, type metadata accessor for BuiltInAction);
      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
LABEL_35:
        v33 = [objc_opt_self() mainBundle];
      }

LABEL_36:
      sub_1D8B132F0();
      return sub_1D8B159D0();
  }
}

uint64_t sub_1D87EC3AC()
{
  v1 = type metadata accessor for BuiltInAction(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D881BDC4(v0, v3, type metadata accessor for BuiltInAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1000;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1D881BD44(v3, type metadata accessor for BuiltInAction);
      return 900;
    case 2:
      sub_1D881BD44(v3, type metadata accessor for BuiltInAction);
      return 50;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);

      sub_1D87A14E4(v3, &qword_1ECA635B8);
      goto LABEL_9;
    case 4:
      return result;
    case 5:
      return 600;
    case 6:
    case 13:
    case 14:
      return 50;
    case 7:
      return 350;
    case 8:
      return 20;
    case 9:
      return 400;
    case 10:
      return 850;
    case 11:
    case 12:
      return 100;
    case 15:
    case 16:
LABEL_9:
      result = 0;
      break;
    default:
      sub_1D881BD44(v3, type metadata accessor for BuiltInAction);
      result = 700;
      break;
  }

  return result;
}

uint64_t BuiltInAction.asEmpty.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for BuiltInAction(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D881BDC4(v1, v5, type metadata accessor for BuiltInAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1D881BD44(v5, type metadata accessor for BuiltInAction);
        *a1 = MEMORY[0x1E69E7CD0];
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);

    v9 = *(v8 + 48);
    v10 = sub_1D8B13E30();
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    *(a1 + v9) = MEMORY[0x1E69E7CC0];
    swift_storeEnumTagMultiPayload();
    return sub_1D87A14E4(v5, &qword_1ECA635B8);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D881BD44(v5, type metadata accessor for BuiltInAction);
        *a1 = 0;
        a1[1] = 0xE000000000000000;
        a1[2] = 0;
        a1[3] = 0xE000000000000000;
        return swift_storeEnumTagMultiPayload();
      }

LABEL_8:
      sub_1D881BDC4(v1, a1, type metadata accessor for BuiltInAction);
      return sub_1D881BD44(v5, type metadata accessor for BuiltInAction);
    }

    sub_1D881BD44(v5, type metadata accessor for BuiltInAction);
    *a1 = MEMORY[0x1E69E7CC0];
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1D87EC7AC()
{
  v0 = type metadata accessor for BuiltInAction(0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v74 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v73 = &v61 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v72 = &v61 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v71 = (&v61 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v69 = &v61 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v68 = &v61 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v66 = &v61 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v65 = &v61 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v64 = &v61 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v63 = &v61 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v62 = &v61 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v61 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v61 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = (&v61 - v31);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = (&v61 - v34);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v61 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v61 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FE8);
  v41 = *(v1 + 72);
  v42 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v67 = 16 * v41;
  v43 = swift_allocObject();
  v70 = v43;
  *(v43 + 16) = xmmword_1D8B20D10;
  v44 = (v43 + v42);
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter(v44);
  sub_1D881BD44(v40, type metadata accessor for BuiltInAction);
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + v41));
  sub_1D881BD44(v38, type metadata accessor for BuiltInAction);
  *v35 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + 2 * v41));
  sub_1D881BD44(v35, type metadata accessor for BuiltInAction);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v32[2] = 0;
  v32[3] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + 3 * v41));
  sub_1D881BD44(v32, type metadata accessor for BuiltInAction);
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + 4 * v41));
  sub_1D881BD44(v29, type metadata accessor for BuiltInAction);
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + 5 * v41));
  sub_1D881BD44(v26, type metadata accessor for BuiltInAction);
  v45 = v62;
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + 6 * v41));
  sub_1D881BD44(v45, type metadata accessor for BuiltInAction);
  v46 = v63;
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + 7 * v41));
  sub_1D881BD44(v46, type metadata accessor for BuiltInAction);
  v47 = v64;
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter(&v44[v41]);
  sub_1D881BD44(v47, type metadata accessor for BuiltInAction);
  v48 = v65;
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + 9 * v41));
  sub_1D881BD44(v48, type metadata accessor for BuiltInAction);
  v49 = v66;
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + 10 * v41));
  sub_1D881BD44(v49, type metadata accessor for BuiltInAction);
  v50 = v68;
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + 11 * v41));
  sub_1D881BD44(v50, type metadata accessor for BuiltInAction);
  v51 = v69;
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + 12 * v41));
  sub_1D881BD44(v51, type metadata accessor for BuiltInAction);
  v52 = v71;
  *v71 = MEMORY[0x1E69E7CD0];
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + 13 * v41));
  sub_1D881BD44(v52, type metadata accessor for BuiltInAction);
  v53 = v72;
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + 14 * v41));
  sub_1D881BD44(v53, type metadata accessor for BuiltInAction);
  v54 = v67;
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0) + 48);
  v56 = sub_1D8B13E30();
  v57 = v73;
  (*(*(v56 - 8) + 56))(v73, 1, 1, v56);
  *(v57 + v55) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + v54 - v41));
  sub_1D881BD44(v57, type metadata accessor for BuiltInAction);
  v58 = v74;
  swift_storeEnumTagMultiPayload();
  BuiltInAction.asEmpty.getter((v44 + v54));
  sub_1D881BD44(v58, type metadata accessor for BuiltInAction);
  v59 = sub_1D87C3F18(v70);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_1EE0E8890 = v59;
  return result;
}

uint64_t sub_1D87ECEF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D8B13240();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BuiltInAction(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0E8870 != -1)
  {
    swift_once();
  }

  v9 = off_1EE0E8878;
  BuiltInAction.asEmpty.getter(v8);
  if (v9[2] && (v10 = sub_1D87EFA28(v8), (v11 & 1) != 0))
  {
    (*(v3 + 16))(v5, v9[7] + *(v3 + 72) * v10, v2);
    sub_1D881BD44(v8, type metadata accessor for BuiltInAction);
    return (*(v3 + 32))(a1, v5, v2);
  }

  else
  {
    sub_1D881BD44(v8, type metadata accessor for BuiltInAction);
    return sub_1D8B13230();
  }
}

void *sub_1D87ED0CC()
{
  result = sub_1D87ED0EC();
  off_1EE0E8878 = result;
  return result;
}

uint64_t sub_1D87ED0EC()
{
  v0 = sub_1D8B13240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0E8888 != -1)
  {
    swift_once();
  }

  v4 = off_1EE0E8890;
  v5 = *(off_1EE0E8890 + 2);
  if (v5)
  {
    v14 = MEMORY[0x1E69E7CC0];

    sub_1D87F3EE0(0, v5, 0);
    v6 = v14;
    do
    {
      sub_1D8B13230();
      v14 = v6;
      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1D87F3EE0(v7 > 1, v8 + 1, 1);
        v6 = v14;
      }

      *(v6 + 16) = v8 + 1;
      (*(v1 + 32))(v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v8, v3, v0);
      --v5;
    }

    while (v5);
    v9 = v4[2];
  }

  else
  {

    v9 = 0;
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (*(v6 + 16) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v6 + 16);
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64008);
    v11 = sub_1D8B16910();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC8];
  }

  v14 = v11;
  sub_1D8816568(v4, v6, 1, &v14);
  return v14;
}

uint64_t sub_1D87ED334()
{
  v1 = type metadata accessor for BuiltInAction(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D881BDC4(v0, v3, type metadata accessor for BuiltInAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v5 = &unk_1F54256D8;
      return sub_1D8A4DA3C(v5);
    }

    if (EnumCaseMultiPayload == 10)
    {
      v5 = &unk_1F54256B0;
      return sub_1D8A4DA3C(v5);
    }
  }

  else
  {
    if (EnumCaseMultiPayload < 2)
    {
      sub_1D881BD44(v3, type metadata accessor for BuiltInAction);
LABEL_8:
      v5 = &unk_1F5425688;
      return sub_1D8A4DA3C(v5);
    }

    if (EnumCaseMultiPayload == 4)
    {
      goto LABEL_8;
    }
  }

  v7 = sub_1D8A4DA3C(&unk_1F5425700);
  sub_1D881BD44(v3, type metadata accessor for BuiltInAction);
  return v7;
}

uint64_t static BuiltInAction.actionForIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = a2;
  v36 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63AB8);
  v4 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  if (qword_1EE0E54C0 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    if ((sub_1D8B0AAA4() & 1) == 0)
    {
      result = sub_1D8B168C0();
      __break(1u);
      return result;
    }

    v30 = v10;
    v31 = a3;
    if (qword_1EE0E8870 != -1)
    {
      swift_once();
    }

    a3 = off_1EE0E8878;
    v11 = off_1EE0E8878 + 64;
    v12 = 1 << *(off_1EE0E8878 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v10 = v13 & *(off_1EE0E8878 + 8);
    v14 = (v12 + 63) >> 6;

    v15 = 0;
    if (v10)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v25 = type metadata accessor for BuiltInAction(0);
        return (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
      }

      v10 = *&v11[8 * v16];
      ++v15;
      if (v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  while (1)
  {
    v16 = v15;
LABEL_12:
    v17 = __clz(__rbit64(v10)) | (v16 << 6);
    v18 = a3[6];
    v19 = type metadata accessor for BuiltInAction(0);
    v32 = *(v19 - 8);
    v33 = v19;
    sub_1D881BDC4(v18 + *(v32 + 72) * v17, v8, type metadata accessor for BuiltInAction);
    v20 = a3[7];
    v21 = sub_1D8B13240();
    v22 = *(v21 - 8);
    (*(v22 + 16))(&v8[*(v34 + 48)], v20 + *(v22 + 72) * v17, v21);
    sub_1D881F6FC(v8, v37, &qword_1ECA63AB8);
    if (sub_1D8B131E0() == v36 && v23 == v35)
    {

      goto LABEL_20;
    }

    v24 = sub_1D8B16BA0();

    if (v24)
    {
      break;
    }

    v10 &= v10 - 1;
    sub_1D87A14E4(v37, &qword_1ECA63AB8);
    v15 = v16;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

LABEL_20:
  v27 = v30;
  sub_1D881F6FC(v37, v30, &qword_1ECA63AB8);
  v28 = *(v34 + 48);
  v29 = v31;
  sub_1D881BFE4(v27, v31, type metadata accessor for BuiltInAction);
  (*(v32 + 56))(v29, 0, 1, v33);
  return (*(v22 + 8))(v27 + v28, v21);
}

uint64_t sub_1D87ED90C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v22 = type metadata accessor for BuiltInAction(0);
  v25 = *(v22 - 8);
  v5 = MEMORY[0x1EEE9AC00](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      sub_1D881BDC4(*(a2 + 48) + *(v25 + 72) * (__clz(__rbit64(v12)) | (v16 << 6)), v9, type metadata accessor for BuiltInAction);
      sub_1D881BFE4(v9, v7, type metadata accessor for BuiltInAction);
      v17 = v24(v7);
      if (v3)
      {
        sub_1D881BD44(v7, type metadata accessor for BuiltInAction);
      }

      if (v17)
      {
        break;
      }

      v12 &= v12 - 1;
      result = sub_1D881BD44(v7, type metadata accessor for BuiltInAction);
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v20 = v23;
    sub_1D881BFE4(v7, v23, type metadata accessor for BuiltInAction);
    v19 = v20;
    v18 = 0;
    return (*(v25 + 56))(v19, v18, 1, v22);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        v18 = 1;
        v19 = v23;
        return (*(v25 + 56))(v19, v18, 1, v22);
      }

      v12 = *(a2 + 56 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D87EDC68@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v34 = a2;
  v35 = a1;
  v32 = a4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98);
  v31 = *(v36 - 8);
  v7 = MEMORY[0x1EEE9AC00](v36);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v30 - v10;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v37 = a3;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v9;
      v38 = v5;
      v19 = v17;
LABEL_9:
      v20 = __clz(__rbit64(v14)) | (v19 << 6);
      v21 = v37;
      v22 = *(v37 + 48);
      v23 = sub_1D8B14D80();
      v24 = v33;
      (*(*(v23 - 8) + 16))(v33, v22 + *(*(v23 - 8) + 72) * v20, v23);
      v25 = *(v21 + 56);
      v26 = type metadata accessor for BundleClassification(0);
      sub_1D881BDC4(v25 + *(*(v26 - 8) + 72) * v20, v24 + *(v36 + 48), type metadata accessor for BundleClassification);
      v9 = v18;
      sub_1D881F6FC(v24, v18, &qword_1ECA63F98);
      v27 = v38;
      v28 = v35(v18);
      v5 = v27;
      if (v27)
      {
        sub_1D87A14E4(v18, &qword_1ECA63F98);
      }

      if (v28)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_1D87A14E4(v18, &qword_1ECA63F98);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v29 = v32;
    sub_1D881F6FC(v9, v32, &qword_1ECA63F98);
    return (*(v31 + 56))(v29, 0, 1, v36);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        return (*(v31 + 56))(v32, 1, 1, v36);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v9;
        v38 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D87EE0B0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v28 = a6;
  v13 = a3(0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v18 = *(a2 + 16);
  if (v18)
  {
    v26 = v14;
    v27 = a7;
    v19 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v25 = v15;
    v20 = *(v15 + 72);
    while (1)
    {
      sub_1D881BDC4(v19, v17, a4);
      v21 = a1(v17);
      if (v7)
      {
        return sub_1D881BD44(v17, a5);
      }

      if (v21)
      {
        break;
      }

      sub_1D881BD44(v17, a5);
      v19 += v20;
      if (!--v18)
      {
        v22 = 1;
        a7 = v27;
        goto LABEL_10;
      }
    }

    a7 = v27;
    sub_1D881BFE4(v17, v27, v28);
    v22 = 0;
LABEL_10:
    v15 = v25;
    v14 = v26;
  }

  else
  {
    v22 = 1;
  }

  return (*(v15 + 56))(a7, v22, 1, v14);
}

uint64_t sub_1D87EE250@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v18 = v9;
    v19 = v8;
    v20 = a3;
    v13 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_1D87A0E38(v13, v11, &qword_1ECA63DC0);
      v15 = a1(v11);
      if (v3)
      {
        return sub_1D87A14E4(v11, &qword_1ECA63DC0);
      }

      if (v15)
      {
        break;
      }

      sub_1D87A14E4(v11, &qword_1ECA63DC0);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v20;
        goto LABEL_10;
      }
    }

    a3 = v20;
    sub_1D881F6FC(v11, v20, &qword_1ECA63DC0);
    v16 = 0;
LABEL_10:
    v9 = v18;
    v8 = v19;
  }

  else
  {
    v16 = 1;
  }

  return (*(v9 + 56))(a3, v16, 1, v8);
}

uint64_t sub_1D87EE41C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v23 = a2;
  v22 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633B0);
  v10 = *(v9 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - v13;
  v15 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
    v16 = 1;
    return (*(v10 + 56))(a5, v16, 1, v12);
  }

  else
  {
    v20 = v12;
    v21 = a5;
    if (a3 <= v15)
    {
      v17 = a4 >> 1;
    }

    else
    {
      v17 = a3;
    }

    while (v17 != a3)
    {
      sub_1D87A0E38(v23 + *(v10 + 72) * a3, v14, &qword_1ECA633B0);
      v18 = v22(v14);
      if (v5)
      {
        return sub_1D87A14E4(v14, &qword_1ECA633B0);
      }

      if (v18)
      {
        a5 = v21;
        sub_1D881F6FC(v14, v21, &qword_1ECA633B0);
        v16 = 0;
        goto LABEL_13;
      }

      ++a3;
      result = sub_1D87A14E4(v14, &qword_1ECA633B0);
      if (v15 == a3)
      {
        v16 = 1;
        a5 = v21;
LABEL_13:
        v12 = v20;
        return (*(v10 + 56))(a5, v16, 1, v12);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D87EE5FC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_1D8B16610();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA71FC20](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_1D87EE788@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v27 = a6;
  v28 = a1;
  v29 = a4;
  v30 = a5;
  v26 = a7;
  v25 = a3(0);
  v31 = *(v25 - 8);
  v9 = MEMORY[0x1EEE9AC00](v25);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 64);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_8:
      sub_1D881BDC4(*(a2 + 48) + *(v31 + 72) * (__clz(__rbit64(v16)) | (v20 << 6)), v13, v29);
      sub_1D881BFE4(v13, v11, v30);
      v21 = v28(v11);
      if (v7)
      {
        sub_1D881BD44(v11, v27);
      }

      if (v21)
      {
        break;
      }

      v16 &= v16 - 1;
      result = sub_1D881BD44(v11, v27);
      v19 = v20;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v24 = v26;
    sub_1D881BFE4(v11, v26, v30);
    v23 = v24;
    v22 = 0;
    return (*(v31 + 56))(v23, v22, 1, v25);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        v22 = 1;
        v23 = v26;
        return (*(v31 + 56))(v23, v22, 1, v25);
      }

      v16 = *(a2 + 64 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t BuiltInAction.init(pill:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12[-v6];
  if (qword_1EE0E8888 != -1)
  {
    v5 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v5);
  *&v12[-16] = a1;
  sub_1D87ED90C(sub_1D881CA7C, v8, v7);
  v9 = type metadata accessor for BuiltInAction(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_1D87A14E4(v7, &qword_1ECA63188);
    sub_1D881BD44(a1, type metadata accessor for ActionPin.Pill);
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  else
  {
    sub_1D881BFE4(v7, a2, type metadata accessor for BuiltInAction);
    (*(v10 + 56))(a2, 0, 1, v9);
    return sub_1D881BD44(a1, type metadata accessor for ActionPin.Pill);
  }
}

uint64_t sub_1D87EEBF0(uint64_t a1, void *a2)
{
  v3 = sub_1D8B13240();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87ECEF4(v6);
  v7 = sub_1D8B131E0();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  if (v7 == *a2 && v9 == a2[1])
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D8B16BA0();
  }

  return v11 & 1;
}

double sub_1D87EED18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 8))();
  (*(a2 + 16))(v17, a1, a2);
  v6 = (*(a2 + 24))(a1, a2);
  v8 = v7;
  v9 = (*(a2 + 32))(a1, a2);
  v10 = (*(a2 + 40))(a1, a2);
  v11 = type metadata accessor for ActionPin(0);
  v12 = (a3 + v11[5]);
  v13 = v17[1];
  *v12 = v17[0];
  v12[1] = v13;
  result = *&v18;
  v15 = v19;
  v12[2] = v18;
  v12[3] = v15;
  v16 = (a3 + v11[6]);
  *v16 = v6;
  v16[1] = v8;
  *(a3 + v11[7]) = v9;
  *(a3 + v11[8]) = v10 & 1;
  return result;
}

uint64_t FBKSInteraction.AnnotatedContent.hash(into:)()
{
  v0 = sub_1D8B13E40();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13E10();
  sub_1D881BBCC(&qword_1ECA635D8, MEMORY[0x1E699C610]);
  sub_1D8B157A0();
  (*(v1 + 8))(v3, v0);
  sub_1D8B13DF0();
  sub_1D8B15A60();

  sub_1D8B13DE0();
  sub_1D8B15A60();
}

uint64_t FBKSInteraction.AnnotatedContent.hashValue.getter()
{
  v0 = sub_1D8B13E40();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B16D20();
  sub_1D8B13E10();
  sub_1D881BBCC(&qword_1ECA635D8, MEMORY[0x1E699C610]);
  sub_1D8B157A0();
  (*(v1 + 8))(v3, v0);
  sub_1D8B13DF0();
  sub_1D8B15A60();

  sub_1D8B13DE0();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87EF11C()
{
  v0 = sub_1D8B13E40();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B16D20();
  sub_1D8B13E10();
  sub_1D881BBCC(&qword_1ECA635D8, MEMORY[0x1E699C610]);
  sub_1D8B157A0();
  (*(v1 + 8))(v3, v0);
  sub_1D8B13DF0();
  sub_1D8B15A60();

  sub_1D8B13DE0();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87EF298()
{
  v0 = sub_1D8B13E40();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13E10();
  sub_1D881BBCC(&qword_1ECA635D8, MEMORY[0x1E699C610]);
  sub_1D8B157A0();
  (*(v1 + 8))(v3, v0);
  sub_1D8B13DF0();
  sub_1D8B15A60();

  sub_1D8B13DE0();
  sub_1D8B15A60();
}

uint64_t sub_1D87EF400()
{
  v0 = sub_1D8B13E40();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B16D20();
  sub_1D8B13E10();
  sub_1D881BBCC(&qword_1ECA635D8, MEMORY[0x1E699C610]);
  sub_1D8B157A0();
  (*(v1 + 8))(v3, v0);
  sub_1D8B13DF0();
  sub_1D8B15A60();

  sub_1D8B13DE0();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87EF584(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    return 0;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  if (*(a1 + *(v4 + 36)) != *(a2 + *(v4 + 36)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 40);
  v7 = *(a1 + v6 + 16);
  v17[0] = *(a1 + v6);
  v17[1] = v7;
  v8 = *(a1 + v6 + 48);
  v17[2] = *(a1 + v6 + 32);
  v17[3] = v8;
  v9 = (a2 + v6);
  v10 = v9[1];
  v16[0] = *v9;
  v16[1] = v10;
  v11 = v9[3];
  v16[2] = v9[2];
  v16[3] = v11;
  if (!_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v17, v16) || (sub_1D88E3154(*(a1 + v5[11]), *(a2 + v5[11])) & 1) == 0 || (sub_1D8A0716C(*(a1 + v5[12]), *(a2 + v5[12])) & 1) == 0 || *(a1 + v5[13]) != *(a2 + v5[13]) || *(a1 + v5[14]) != *(a2 + v5[14]))
  {
    return 0;
  }

  v12 = v5[15];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);

  return sub_1D88E31C4(v13, v14);
}

unint64_t sub_1D87EF6AC(uint64_t a1)
{
  sub_1D8B16D20();
  BundleClassification.ClassificationType.hash(into:)(v4);
  v2 = sub_1D8B16D80();
  return sub_1D87F10D4(a1, v2, type metadata accessor for BundleClassification.ClassificationType, type metadata accessor for BundleClassification.ClassificationType, static BundleClassification.ClassificationType.== infix(_:_:), type metadata accessor for BundleClassification.ClassificationType);
}

unint64_t sub_1D87EF764(uint64_t a1)
{
  sub_1D8B13240();
  v2 = MEMORY[0x1E69695A8];
  sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  v3 = sub_1D8B15790();
  return sub_1D87F1230(a1, v3, MEMORY[0x1E69695A8], &qword_1EE0E9898, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1D87EF838(uint64_t a1, uint64_t a2)
{
  sub_1D8B16D20();
  sub_1D8B15A60();
  v4 = sub_1D8B16D80();

  return sub_1D87F06F0(a1, a2, v4);
}

unint64_t sub_1D87EF8B0(unsigned __int8 *a1)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  type metadata accessor for GreymatterAvailability.AvailabilityKey(0);
  sub_1D8B14060();
  sub_1D881BBCC(&qword_1EE0E9CE8, MEMORY[0x1E69A12C8]);
  sub_1D8B157A0();
  v2 = sub_1D8B16D80();

  return sub_1D87F07A8(a1, v2);
}

unint64_t sub_1D87EFA28(uint64_t a1)
{
  sub_1D8B16D20();
  BuiltInAction.hash(into:)(v4);
  v2 = sub_1D8B16D80();
  return sub_1D87F10D4(a1, v2, type metadata accessor for BuiltInAction, type metadata accessor for BuiltInAction, _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0, type metadata accessor for BuiltInAction);
}

unint64_t sub_1D87EFAE0(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v2 = type metadata accessor for ActionPin(0);
  v3 = (a1 + *(v2 + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v11 = v3[6];
  v10 = v3[7];
  if (*v3 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1DA720250](*&v4);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1DA720250](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1DA720250](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1DA720250](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x1DA720250](*&v15);
  if (v9 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v9;
  }

  MEMORY[0x1DA720250](*&v16);
  if (v11 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v11;
  }

  MEMORY[0x1DA720250](*&v17);
  if (v10 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v10;
  }

  MEMORY[0x1DA720250](*&v18);
  sub_1D8B15A60();
  sub_1D87CF3E8(v21, *(a1 + *(v2 + 28)));
  sub_1D8B16D40();
  type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  ActionPin.Pill.hash(into:)(v21);
  v19 = sub_1D8B16D80();

  return sub_1D87F0ADC(a1, v19);
}

unint64_t sub_1D87EFCC8(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8845820(v4);
  v2 = sub_1D8B16D80();
  return sub_1D87F10D4(a1, v2, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action, sub_1D885FA50, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
}

unint64_t sub_1D87EFD80(uint64_t a1)
{
  sub_1D8B14D80();
  v2 = MEMORY[0x1E69DFAC0];
  sub_1D881BBCC(&qword_1EE0E3AC0, MEMORY[0x1E69DFAC0]);
  v3 = sub_1D8B15790();
  return sub_1D87F1230(a1, v3, MEMORY[0x1E69DFAC0], &qword_1EE0E3AB8, v2, MEMORY[0x1E69DFAD0]);
}

unint64_t sub_1D87EFE54(uint64_t a1)
{
  sub_1D8B16D20();
  type metadata accessor for CFString(0);
  sub_1D881BBCC(&unk_1EE0E37C8, type metadata accessor for CFString);
  sub_1D8B13D70();
  v2 = sub_1D8B16D80();

  return sub_1D87F13D0(a1, v2);
}

unint64_t sub_1D87EFF08(uint64_t a1)
{
  v2 = sub_1D8B16670();

  return sub_1D87F14DC(a1, v2);
}

unint64_t sub_1D87EFF4C(unsigned int a1)
{
  v3 = MEMORY[0x1DA7201E0](*(v1 + 40), a1, 4);

  return sub_1D87F15A4(a1, v3);
}

unint64_t sub_1D87EFF94(uint64_t a1)
{
  v2 = sub_1D8B16D10();

  return sub_1D87F1610(a1, v2);
}

unint64_t sub_1D87EFFD8(unsigned __int8 a1)
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](a1);
  v2 = sub_1D8B16D80();
  return sub_1D87F3490(a1, v2);
}

uint64_t sub_1D87F0040(uint64_t *a1)
{
  sub_1D8B16D20();
  sub_1D87CFE70(v7, *a1);
  v2 = a1 + *(type metadata accessor for CVProcessorTaskDescriptor(0) + 20);
  MEMORY[0x1DA720210](*v2);
  v3 = type metadata accessor for DetectionRequest(0);
  DetectionRequest.Originator.hash(into:)(v7);
  sub_1D8818BD0(v7, *&v2[v3[6]]);
  sub_1D88911A0(*&v2[v3[7]], *&v2[v3[7] + 8], *&v2[v3[7] + 16], *&v2[v3[7] + 24]);
  v4 = *&v2[v3[8]];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1DA720250](*&v4);
  v5 = sub_1D8B16D80();

  return sub_1D87F167C(a1, v5);
}

unint64_t sub_1D87F0134(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8A801C4();
  v2 = sub_1D8B16D80();

  return sub_1D87F2028(a1, v2);
}

unint64_t sub_1D87F01A0(uint64_t a1, uint64_t a2)
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](a1);
  MEMORY[0x1DA720210](a2);
  v4 = sub_1D8B16D80();

  return sub_1D87F23D8(a1, a2, v4);
}

unint64_t sub_1D87F0220(uint64_t a1)
{
  sub_1D8B15970();
  sub_1D8B16D20();
  sub_1D8B15A60();
  v2 = sub_1D8B16D80();

  return sub_1D87F2C50(a1, v2);
}

unint64_t sub_1D87F02B0(uint64_t a1)
{
  sub_1D8B16D20();
  CameraSourceFrameMetadata.hash(into:)();
  v2 = (a1 + *(type metadata accessor for TrackManager.TrackedProcessorState.Key(0) + 20));
  MEMORY[0x1DA720210](*v2);
  v3 = type metadata accessor for DetectionRequest(0);
  DetectionRequest.Originator.hash(into:)(v7);
  sub_1D8818BD0(v7, *&v2[v3[6]]);
  sub_1D88911A0(*&v2[v3[7]], *&v2[v3[7] + 8], *&v2[v3[7] + 16], *&v2[v3[7] + 24]);
  v4 = *&v2[v3[8]];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1DA720250](*&v4);
  v5 = sub_1D8B16D80();

  return sub_1D87F2450(a1, v5);
}

unint64_t sub_1D87F03BC(int *a1)
{
  sub_1D8B16D20();
  sub_1D881F548();
  sub_1D8B157A0();
  v2 = sub_1D8B16D80();
  return sub_1D87F2708(a1, v2);
}

unint64_t sub_1D87F0454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8B16D20();
  if (a2)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B15A60();
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1DA720250](v6);
  }

  else
  {
    MEMORY[0x1DA720210](0);
  }

  v7 = sub_1D8B16D80();

  return sub_1D87F2B60(a1, a2, a3, v7);
}

unint64_t sub_1D87F0508(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D891CA54(v5);
  v2 = type metadata accessor for CVBundle(0);
  sub_1D87CF97C(v5, *(a1 + v2[5]));
  sub_1D87CF97C(v5, *(a1 + v2[6]));
  sub_1D893983C(v5, *(a1 + v2[7]));
  v3 = sub_1D8B16D80();

  return sub_1D87F2D54(a1, v3);
}

unint64_t sub_1D87F05B0(double a1)
{
  v2 = sub_1D8B16D10();

  return sub_1D87F3500(v2, a1);
}

unint64_t sub_1D87F05FC(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1) & 1;
  sub_1D8B16D20();
  sub_1D8AE6CC0(v5, v1 | (v2 << 32));
  v3 = sub_1D8B16D80();
  v5[0] = v2;

  return sub_1D87F3568(v1 | (v2 << 32), v3);
}

unint64_t sub_1D87F0680(unint64_t a1)
{
  v5 = a1;
  sub_1D8B16D20();
  CVDetection.hash(into:)(v4);
  v2 = sub_1D8B16D80();

  return sub_1D87F362C(a1, v2);
}

unint64_t sub_1D87F06F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D8B16BA0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D87F07A8(unsigned __int8 *a1, uint64_t a2)
{
  v30 = type metadata accessor for GreymatterAvailability.AvailabilityKey(0);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v35 = ~v8;
    v29 = a1;
    v10 = *a1;
    v11 = *(v5 + 72);
    v33 = "ucturedExtraction.addToCalendar";
    v34 = "textComposition.OpenEndedSchema";
    v27 = "sualIntelligenceCamera";
    v28 = "";
    v31 = "gs.AppleIntelligence";
    v32 = "IntelligenceCamera.ImageSearch";
    do
    {
      sub_1D881BDC4(*(v2 + 48) + v11 * v9, v7, type metadata accessor for GreymatterAvailability.AvailabilityKey);
      v12 = *v7;
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v16 = 0xD00000000000002ELL;
          v17 = v27;
          if (v10 <= 2)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v20 = v12 == 4;
          if (v12 == 4)
          {
            v16 = 0xD000000000000024;
          }

          else
          {
            v16 = 0xD00000000000002CLL;
          }

          v17 = v32;
          if (!v20)
          {
            v17 = v31;
          }

          if (v10 <= 2)
          {
LABEL_16:
            if (v10)
            {
              if (v10 == 1)
              {
                v18 = 0xD00000000000003FLL;
              }

              else
              {
                v18 = 0xD000000000000026;
              }

              v19 = v34;
              if (v10 != 1)
              {
                v19 = v33;
              }
            }

            else
            {
              v18 = 0xD00000000000001FLL;
              v19 = v28;
            }

            goto LABEL_41;
          }
        }
      }

      else
      {
        v13 = 0xD00000000000003FLL;
        if (v12 != 1)
        {
          v13 = 0xD000000000000026;
        }

        v14 = v34;
        if (v12 != 1)
        {
          v14 = v33;
        }

        v15 = v12 == 0;
        if (*v7)
        {
          v16 = v13;
        }

        else
        {
          v16 = 0xD00000000000001FLL;
        }

        v17 = v28;
        if (!v15)
        {
          v17 = v14;
        }

        if (v10 <= 2)
        {
          goto LABEL_16;
        }
      }

      v21 = 0xD000000000000024;
      if (v10 != 4)
      {
        v21 = 0xD00000000000002CLL;
      }

      v22 = v32;
      if (v10 != 4)
      {
        v22 = v31;
      }

      if (v10 == 3)
      {
        v18 = 0xD00000000000002ELL;
      }

      else
      {
        v18 = v21;
      }

      v19 = v27;
      if (v10 != 3)
      {
        v19 = v22;
      }

LABEL_41:
      if (v16 == v18 && (v17 | 0x8000000000000000) == (v19 | 0x8000000000000000))
      {
      }

      else
      {
        v23 = sub_1D8B16BA0();

        if ((v23 & 1) == 0)
        {
          sub_1D881BD44(v7, type metadata accessor for GreymatterAvailability.AvailabilityKey);
          goto LABEL_4;
        }
      }

      v24 = sub_1D8B14050();
      sub_1D881BD44(v7, type metadata accessor for GreymatterAvailability.AvailabilityKey);
      if (v24)
      {
        return v9;
      }

LABEL_4:
      v9 = (v9 + 1) & v35;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1D87F0ADC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for BuiltInAction(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E58);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v42 - v12;
  v13 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = -1 << *(v2 + 32);
  v18 = a2 & ~v17;
  if ((*(v2 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v48 = v5;
    v49 = v11;
    v46 = v8;
    v19 = ~v17;
    v20 = *(v14 + 72);
    v47 = (v6 + 48);
    do
    {
      sub_1D881BDC4(*(v2 + 48) + v20 * v18, v16, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      if ((sub_1D8B13200() & 1) == 0)
      {
        goto LABEL_4;
      }

      v21 = type metadata accessor for ActionPin(0);
      v22 = *(v21 + 20);
      if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v16[v22], *(a1 + v22)), vceqq_f64(*&v16[v22 + 16], *(a1 + v22 + 16))), vuzp1q_s32(vceqq_f64(*&v16[v22 + 32], *(a1 + v22 + 32)), vceqq_f64(*&v16[v22 + 48], *(a1 + v22 + 48)))))) & 1) == 0)
      {
        goto LABEL_4;
      }

      v23 = v21;
      v24 = *(v21 + 24);
      v25 = *&v16[v24];
      v26 = *&v16[v24 + 8];
      v27 = (a1 + v24);
      v28 = v25 == *v27 && v26 == v27[1];
      if (!v28 && (sub_1D8B16BA0() & 1) == 0)
      {
        goto LABEL_4;
      }

      if ((sub_1D88E245C(*&v16[*(v23 + 28)], *(a1 + *(v23 + 28))) & 1) == 0 || v16[*(v23 + 32)] != *(a1 + *(v23 + 32)))
      {
        goto LABEL_4;
      }

      v29 = *(v13 + 20);
      v30 = &v16[v29];
      v31 = (a1 + v29);
      if ((*&v16[v29] != *(a1 + v29) || *&v16[v29 + 8] != *(a1 + v29 + 8)) && (sub_1D8B16BA0() & 1) == 0)
      {
        goto LABEL_4;
      }

      if ((*(v30 + 2) != v31[2] || *(v30 + 3) != v31[3]) && (sub_1D8B16BA0() & 1) == 0 || (*(v30 + 4) != v31[4] || *(v30 + 5) != v31[5]) && (sub_1D8B16BA0() & 1) == 0)
      {
        goto LABEL_4;
      }

      v32 = *(v30 + 7);
      v33 = v31[7];
      if (v32)
      {
        if (!v33 || (*(v30 + 6) != v31[6] || v32 != v33) && (sub_1D8B16BA0() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v33)
      {
        goto LABEL_4;
      }

      if (*(v30 + 8) == v31[8])
      {
        v34 = type metadata accessor for ActionPin.Pill(0);
        v35 = *(v50 + 48);
        v44 = *(v34 + 36);
        v45 = v35;
        v43 = type metadata accessor for ActionPin.Pill.Source;
        v36 = &v30[v44];
        v37 = v51;
        sub_1D881BDC4(v36, v51, type metadata accessor for ActionPin.Pill.Source);
        sub_1D881BDC4(v31 + v44, v37 + v45, v43);
        v38 = v37;
        v39 = v48;
        v44 = *v47;
        if ((v44)(v38, 1, v48) == 1)
        {
          if ((v44)(v51 + v45, 1, v39) == 1)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }

        sub_1D881BDC4(v51, v49, type metadata accessor for ActionPin.Pill.Source);
        if ((v44)(v51 + v45, 1, v39) == 1)
        {
          sub_1D881BD44(v49, type metadata accessor for BuiltInAction);
LABEL_34:
          sub_1D87A14E4(v51, &qword_1ECA63E58);
          goto LABEL_4;
        }

        v40 = v46;
        sub_1D881BFE4(v51 + v45, v46, type metadata accessor for BuiltInAction);
        LODWORD(v45) = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v49, v40);
        sub_1D881BD44(v40, type metadata accessor for BuiltInAction);
        sub_1D881BD44(v49, type metadata accessor for BuiltInAction);
        if (v45)
        {
LABEL_38:
          sub_1D881BD44(v51, type metadata accessor for ActionPin.Pill.Source);
          sub_1D881BD44(v16, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
          return v18;
        }

        sub_1D881BD44(v51, type metadata accessor for ActionPin.Pill.Source);
      }

LABEL_4:
      sub_1D881BD44(v16, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v18 = (v18 + 1) & v19;
    }

    while (((*(v2 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

  return v18;
}

unint64_t sub_1D87F10D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, uint64_t), uint64_t (*a6)(void))
{
  v22 = a6;
  v11 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = -1 << *(v6 + 32);
  v16 = a2 & ~v15;
  if ((*(v6 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v12 + 72);
    do
    {
      sub_1D881BDC4(*(v6 + 48) + v18 * v16, v14, a4);
      v19 = a5(v14, a1);
      sub_1D881BD44(v14, v22);
      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v6 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  return v16;
}

unint64_t sub_1D87F1230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1D881BBCC(v23, v24);
      v19 = sub_1D8B158C0();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1D87F13D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1D881BBCC(&unk_1EE0E37C8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D8B13D60();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D87F14DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D881F64C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA71FB60](v9, a1);
      sub_1D881F6A8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D87F15A4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D87F1610(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1D87F167C(void *a1, uint64_t a2)
{
  v68 = sub_1D8B13240();
  v5 = *(v68 - 8);
  v6 = MEMORY[0x1EEE9AC00](v68);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v60 - v8;
  v9 = type metadata accessor for DetectionRequest.Originator(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v67 = (&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v71 = &v60 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v60 - v14);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  MEMORY[0x1EEE9AC00](v76);
  v86 = &v60 - v16;
  v17 = type metadata accessor for DetectionRequest(0);
  v84 = *(v17 - 1);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v60 - v21;
  v70 = type metadata accessor for CVProcessorTaskDescriptor(0);
  MEMORY[0x1EEE9AC00](v70);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v2 + 64;
  v78 = v2;
  v26 = -1 << *(v2 + 32);
  v27 = a2 & ~v26;
  if (((*(v2 + 64 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
    return v27;
  }

  v74 = ~v26;
  v69 = a1;
  v85 = *a1;
  v28 = v5;
  v29 = *(v85 + 16);
  v75 = *(v23 + 72);
  v61 = (v28 + 32);
  v64 = (v28 + 8);
  v73 = v20;
  v63 = v9;
  v62 = v15;
  v72 = v17;
  v79 = v29;
  v80 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    result = sub_1D881BDC4(*(v78 + 48) + v75 * v27, v25, type metadata accessor for CVProcessorTaskDescriptor);
    v31 = *v25;
    if (*(*v25 + 16) != v29)
    {
      goto LABEL_8;
    }

    if (v29 && v31 != v85)
    {
      break;
    }

LABEL_46:
    v57 = *(v70 + 20);
    v58 = &v25[v57];
    v59 = v69 + v57;
    if (v25[v57] == *(v69 + v57) && (_s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(&v58[v17[5]], &v59[v17[5]]) & 1) != 0 && (sub_1D894CAAC(*&v58[v17[6]], *&v59[v17[6]]) & 1) != 0 && CGRectEqualToRect(*&v58[v17[7]], *&v59[v17[7]]) && *&v58[v17[8]] == *&v59[v17[8]])
    {
      sub_1D881BD44(v25, type metadata accessor for CVProcessorTaskDescriptor);
      return v27;
    }

LABEL_8:
    sub_1D881BD44(v25, type metadata accessor for CVProcessorTaskDescriptor);
    v27 = (v27 + 1) & v74;
    if (((*(v77 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      return v27;
    }
  }

  v32 = 0;
  v33 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v83 = v31 + v33;
  v81 = v31;
  v82 = v85 + v33;
  while (v32 < *(v31 + 16))
  {
    v34 = *(v84 + 72) * v32;
    result = sub_1D881BDC4(v83 + v34, v22, type metadata accessor for DetectionRequest);
    if (v32 >= *(v85 + 16))
    {
      goto LABEL_56;
    }

    sub_1D881BDC4(v82 + v34, v20, type metadata accessor for DetectionRequest);
    if (*v22 != *v20)
    {
      goto LABEL_7;
    }

    v35 = v17[5];
    v36 = v86;
    v37 = v86 + *(v76 + 48);
    sub_1D881BDC4(&v22[v35], v86, type metadata accessor for DetectionRequest.Originator);
    sub_1D881BDC4(&v20[v35], v37, type metadata accessor for DetectionRequest.Originator);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v42 = swift_getEnumCaseMultiPayload();
        v17 = v72;
        if (v42)
        {
          goto LABEL_5;
        }

        sub_1D881BD44(v37, type metadata accessor for DetectionRequest.Originator);
        goto LABEL_37;
      }

      sub_1D881BDC4(v36, v15, type metadata accessor for DetectionRequest.Originator);
      v50 = *v15;
      v51 = swift_getEnumCaseMultiPayload();
      v17 = v72;
      if (v51 != 1)
      {
        goto LABEL_5;
      }

      v52 = *v37;
      v53 = *(v37 + 4);
      if (!*(v15 + 4))
      {
        if (v53)
        {
          goto LABEL_53;
        }

        goto LABEL_36;
      }

      if (*(v15 + 4) == 1)
      {
        if (v53 != 1)
        {
          goto LABEL_53;
        }

LABEL_36:
        if (v50 != v52)
        {
LABEL_53:
          sub_1D881BD44(v86, type metadata accessor for DetectionRequest.Originator);
LABEL_6:
          v20 = v73;
LABEL_7:
          sub_1D881BD44(v20, type metadata accessor for DetectionRequest);
          sub_1D881BD44(v22, type metadata accessor for DetectionRequest);
          v29 = v79;
          v25 = v80;
          goto LABEL_8;
        }

LABEL_37:
        sub_1D881BD44(v86, type metadata accessor for DetectionRequest.Originator);
        v20 = v73;
        goto LABEL_38;
      }

      sub_1D881BD44(v86, type metadata accessor for DetectionRequest.Originator);
      v20 = v73;
      if (v52 != 0.0 || v53 != 2)
      {
        goto LABEL_7;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_1D881BDC4(v36, v71, type metadata accessor for DetectionRequest.Originator);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*v64)(v71, v68);
        goto LABEL_4;
      }

      v43 = *v61;
      v44 = v65;
      v45 = v68;
      (*v61)(v65, v71, v68);
      v46 = v66;
      v43(v66, v37, v45);
      LOBYTE(v43) = sub_1D8B13200();
      v47 = *v64;
      (*v64)(v46, v45);
      v48 = v44;
      v15 = v62;
      v47(v48, v45);
      sub_1D881BD44(v36, type metadata accessor for DetectionRequest.Originator);
      v17 = v72;
      v20 = v73;
      if ((v43 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v49 = swift_getEnumCaseMultiPayload();
        v17 = v72;
        if (v49 != 4)
        {
          goto LABEL_5;
        }

        goto LABEL_37;
      }

      v39 = v67;
      sub_1D881BDC4(v36, v67, type metadata accessor for DetectionRequest.Originator);
      v40 = *v39;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

LABEL_4:
        v17 = v72;
LABEL_5:
        sub_1D87A14E4(v86, &unk_1ECA64FB0);
        goto LABEL_6;
      }

      v41 = sub_1D894FA18(v40, *v37);

      sub_1D881BD44(v36, type metadata accessor for DetectionRequest.Originator);
      v17 = v72;
      v20 = v73;
      if ((v41 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_38:
    if ((sub_1D894CAAC(*&v22[v17[6]], *&v20[v17[6]]) & 1) == 0 || !CGRectEqualToRect(*&v22[v17[7]], *&v20[v17[7]]))
    {
      goto LABEL_7;
    }

    v54 = v17[8];
    v55 = *&v22[v54];
    v56 = *&v20[v54];
    sub_1D881BD44(v20, type metadata accessor for DetectionRequest);
    result = sub_1D881BD44(v22, type metadata accessor for DetectionRequest);
    v29 = v79;
    v25 = v80;
    v31 = v81;
    if (v55 != v56)
    {
      goto LABEL_8;
    }

    if (v79 == ++v32)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

unint64_t sub_1D87F2028(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v4 = sub_1D8B13CF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v30 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  MEMORY[0x1EEE9AC00](v30);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  v14 = -1 << *(v2 + 32);
  result = a2 & ~v14;
  v32 = v2 + 64;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v31 = ~v14;
    v33 = *(v11 + 72);
    v40 = v5;
    v16 = (v5 + 8);
    v35 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v17 = *(v34 + 48);
      v37 = result;
      sub_1D881BDC4(v17 + v33 * result, v13, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      result = sub_1D8B13200();
      if (result)
      {
        v18 = *(v30 + 20);
        v19 = *&v35[v18];
        v20 = *(v36 + v18);
        v21 = *(v20 + 16);
        v41 = *(v19 + 16);
        v42 = v19;
        if (v41 == v21)
        {
          break;
        }
      }

LABEL_3:
      v13 = v35;
      sub_1D881BD44(v35, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      result = (v37 + 1) & v31;
      if (((*(v32 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    v22 = v40;
    if (!v41 || v42 == v20)
    {
LABEL_13:
      sub_1D881BD44(v35, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      return v37;
    }

    else
    {
      v23 = 0;
      v24 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v38 = v20 + v24;
      v39 = v42 + v24;
      while (v23 < *(v42 + 16))
      {
        v25 = *(v22 + 72) * v23;
        v26 = *(v22 + 16);
        result = v26(v10, v39 + v25, v4);
        if (v23 >= *(v20 + 16))
        {
          goto LABEL_16;
        }

        v26(v8, v38 + v25, v4);
        sub_1D881BBCC(&unk_1ECA64F70, MEMORY[0x1E69E0420]);
        v27 = sub_1D8B158C0();
        v28 = *v16;
        (*v16)(v8, v4);
        result = (v28)(v10, v4);
        if ((v27 & 1) == 0)
        {
          goto LABEL_3;
        }

        ++v23;
        v22 = v40;
        if (v41 == v23)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1D87F23D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D87F2450(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *a1;
    v12.f64[0] = *(a1 + 16);
    v13 = *(a1 + 24);
    v28 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    v26 = a1;
    v18 = *(v5 + 72);
    v12.f64[1] = *(a1 + 32);
    v29 = v12;
    v30 = v11;
    while (1)
    {
      sub_1D881BDC4(*(v2 + 48) + v18 * v9, v7, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      v19.f64[0] = *(v7 + 2);
      v19.f64[1] = *(v7 + 4);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*v7, v30), vceqq_f64(v19, v29))))) & 1) == 0 && ((v13 ^ v7[24]) & 1) == 0 && ((v28 ^ v7[40]) & 1) == 0)
      {
        v31.origin.x = v14;
        v31.origin.y = v15;
        v31.size.width = v16;
        v31.size.height = v17;
        if (CGRectEqualToRect(*(v7 + 48), v31))
        {
          v20 = *(v27 + 20);
          v21 = &v7[v20];
          v22 = v26 + v20;
          if (v7[v20] == *(v26 + v20))
          {
            v23 = type metadata accessor for DetectionRequest(0);
            if ((_s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(&v21[v23[5]], v22 + v23[5]) & 1) != 0 && (sub_1D894CAAC(*&v21[v23[6]], *(v22 + v23[6])) & 1) != 0 && CGRectEqualToRect(*&v21[v23[7]], *(v22 + v23[7])) && *&v21[v23[8]] == *(v22 + v23[8]))
            {
              break;
            }
          }
        }
      }

      sub_1D881BD44(v7, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      v9 = (v9 + 1) & v10;
      if (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        return v9;
      }
    }

    sub_1D881BD44(v7, type metadata accessor for TrackManager.TrackedProcessorState.Key);
  }

  return v9;
}

unint64_t sub_1D87F2708(int *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    v8 = *a1;
    v9 = *(a1 + 4);
    v39 = a1[13];
    if (v39)
    {
      v10 = *(a1 + 56);
    }

    else
    {
      v10 = 0;
    }

    v41 = v10;
    if (v39)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 56);
    }

    v37 = v11;
    v46 = *a1;
    v47 = *(a1 + 48);
    v45 = *(a1 + 1);
    v12 = *(a1 + 5);
    v13 = *(a1 + 4);
    v14 = *(a1 + 3);
    v42 = *(a1 + 8);
    v40 = *(a1 + 2);
    v16 = v47 != 2 || (*(a1 + 2) | *(a1 + 1) | *(a1 + 3) | *(a1 + 4) | *(a1 + 5)) != 0;
    v43 = *(a1 + 56);
    v44 = v16;
    while (1)
    {
      v17 = *(v6 + 48) + 88 * v5;
      v18 = *(v17 + 16);
      *v49 = *v17;
      *&v49[16] = v18;
      v19 = *(v17 + 80);
      v21 = *(v17 + 48);
      v20 = *(v17 + 64);
      v50 = *(v17 + 32);
      v51 = v21;
      v52 = v20;
      v53 = v19;
      v22 = *&v49[24];
      v23 = v50;
      v24 = DWORD1(v21);
      v25 = BYTE8(v21);
      v26 = v20;
      if (v49[4] == 1)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (*v49 == v8)
        {
          v27 = v9;
        }

        else
        {
          v27 = 1;
        }

        if (v27)
        {
          goto LABEL_16;
        }
      }

      if (!v21)
      {
        break;
      }

      if (v21 != 1)
      {
        if (v44)
        {
          goto LABEL_16;
        }

LABEL_36:
        sub_1D881F59C(v49, v48);
        if (!v25)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v47 != 1 || *&v49[8] != v45)
      {
        goto LABEL_16;
      }

      v28 = *&v49[16];
      sub_1D881F59C(v49, v48);
      v54.origin.x = v28;
      v54.origin.y = v22;
      v54.size = v23;
      v55.origin.x = v40;
      v55.origin.y = v14;
      v55.size.width = v13;
      v55.size.height = v12;
      if (!CGRectEqualToRect(v54, v55))
      {
LABEL_58:
        sub_1D881F5F8(v49);
LABEL_59:
        v8 = v46;
        goto LABEL_16;
      }

      if (!v25)
      {
LABEL_37:
        if ((v43 & 1) != 0 || v24 != v39)
        {
          goto LABEL_58;
        }

        goto LABEL_41;
      }

LABEL_30:
      if (v24)
      {
        if ((v41 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      else if ((v37 & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_41:
      if (v26)
      {
        if (v26 == 1)
        {
          if (v42 != 1)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v42 < 2)
          {
            goto LABEL_58;
          }

          type metadata accessor for CGColor(0);
          sub_1D881BBCC(&unk_1EE0E3800, type metadata accessor for CGColor);
          if ((sub_1D8B13D60() & 1) == 0)
          {
            goto LABEL_58;
          }
        }
      }

      else if (v42)
      {
        goto LABEL_58;
      }

      v29 = *(a1 + 9);
      if (*(&v52 + 1))
      {
        if (!v29)
        {
          goto LABEL_58;
        }

        type metadata accessor for CVBuffer(0);
        sub_1D881BBCC(&unk_1EE0E37A0, type metadata accessor for CVBuffer);
        v30 = v29;
        v31 = sub_1D8B13D60();

        if ((v31 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      else if (v29)
      {
        goto LABEL_58;
      }

      v32 = *(a1 + 10);
      if (!v53)
      {
        v35 = v32;
        sub_1D881F5F8(v49);
        if (!v32)
        {
          return v5;
        }

        goto LABEL_59;
      }

      if (!v32)
      {
        goto LABEL_58;
      }

      type metadata accessor for CVBuffer(0);
      sub_1D881BBCC(&unk_1EE0E37A0, type metadata accessor for CVBuffer);
      v33 = v32;
      v34 = sub_1D8B13D60();
      sub_1D881F5F8(v49);

      v8 = v46;
      if (v34)
      {
        return v5;
      }

LABEL_16:
      v5 = (v5 + 1) & v7;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if (v47 || *&v49[8] != __PAIR128__(*&v40, v45))
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

  return v5;
}

unint64_t sub_1D87F2B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    v11 = *(v4 + 48);
    do
    {
      v13 = v11 + 24 * v7;
      v14 = *(v13 + 8);
      if (v14)
      {
        if (a2)
        {
          v15 = *(v13 + 16);
          v16 = *v13 == a1 && v14 == a2;
          if (v16 || (sub_1D8B16BA0()) && v15 == *&a3)
          {
            return v7;
          }
        }
      }

      else if (!a2)
      {
        return v7;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1D87F2C50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D8B15970();
      v8 = v7;
      if (v6 == sub_1D8B15970() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D8B16BA0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D87F2D54(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v42 = sub_1D8B13240();
  v4 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v40);
  v43 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVBundle.BundleType(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = v36 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DA8);
  MEMORY[0x1EEE9AC00](v47);
  v13 = v36 - v12;
  v36[0] = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v36[0]);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v2;
  v17 = -1 << *(v2 + 32);
  v18 = a2 & ~v17;
  v46 = v2 + 64;
  if ((*(v2 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = *(v14 + 72);
    v44 = ~v17;
    v45 = v19;
    v41 = (v4 + 8);
    v37 = (v4 + 32);
    v38 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36[1] = v7;
    do
    {
      sub_1D881BDC4(*(v48 + 48) + v45 * v18, v16, type metadata accessor for CVBundle);
      v20 = *(v47 + 48);
      sub_1D881BDC4(v16, v13, type metadata accessor for CVBundle.BundleType);
      sub_1D881BDC4(v49, &v13[v20], type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D881BDC4(v13, v10, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v41)(v10, v42);
          goto LABEL_4;
        }

        v21 = v39;
        v22 = v42;
        (*v37)(v39, &v13[v20], v42);
        v23 = sub_1D8B13200();
        v24 = *v41;
        (*v41)(v21, v22);
        v25 = v22;
        v16 = v38;
        v24(v10, v25);
        if ((v23 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_1D881BDC4(v13, v50, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D881BD44(v50, type metadata accessor for CVTrackSnapshot);
LABEL_4:
          sub_1D87A14E4(v13, &qword_1ECA63DA8);
          goto LABEL_5;
        }

        sub_1D881BFE4(&v13[v20], v43, type metadata accessor for CVTrackSnapshot);
        if ((sub_1D8B13200() & 1) == 0 || (v26 = v40[5], v27 = *(v50 + v26), v51 = *(v43 + v26), v52 = v27, , , v28 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v52, &v51), , , (v28 & 1) == 0) || (v29 = v40[6], v30 = *(v50 + v29), v51 = *(v43 + v29), v52 = v30, , , v31 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v52, &v51), , , (v31 & 1) == 0) || *(v50 + v40[7]) != *(v43 + v40[7]) || *(v50 + v40[8]) != *(v43 + v40[8]) || *(v50 + v40[9]) != *(v43 + v40[9]))
        {
          sub_1D881BD44(v43, type metadata accessor for CVTrackSnapshot);
LABEL_24:
          sub_1D881BD44(v50, type metadata accessor for CVTrackSnapshot);
LABEL_25:
          sub_1D881BD44(v13, type metadata accessor for CVBundle.BundleType);
          goto LABEL_5;
        }

        v32 = v40[10];
        v33 = *(v50 + v32);
        v34 = *(v43 + v32);
        sub_1D881BD44(v43, type metadata accessor for CVTrackSnapshot);
        if (v33 != v34)
        {
          goto LABEL_24;
        }

        sub_1D881BD44(v50, type metadata accessor for CVTrackSnapshot);
      }

      sub_1D881BD44(v13, type metadata accessor for CVBundle.BundleType);
      if (sub_1D88E4444(*&v16[*(v36[0] + 20)], *(v49 + *(v36[0] + 20))) & 1) != 0 && (sub_1D88E4444(*&v16[*(v36[0] + 24)], *(v49 + *(v36[0] + 24))) & 1) != 0 && (sub_1D8854A60(*&v16[*(v36[0] + 28)], *(v49 + *(v36[0] + 28))))
      {
        sub_1D881BD44(v16, type metadata accessor for CVBundle);
        return v18;
      }

LABEL_5:
      sub_1D881BD44(v16, type metadata accessor for CVBundle);
      v18 = (v18 + 1) & v44;
    }

    while (((*(v46 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

  return v18;
}

unint64_t sub_1D87F3490(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D87F3500(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D87F3568(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = HIDWORD(a1) & 1;
    if (a1 > 1)
    {
      v8 = BYTE4(a1) & 1;
    }

    else
    {
      v8 = 0;
    }

    if (a1 == 1)
    {
      v9 = BYTE4(a1) & 1;
    }

    else
    {
      v9 = 0;
    }

    if (a1)
    {
      LOBYTE(v7) = 0;
    }

    do
    {
      v10 = *(v2 + 48) + 8 * result;
      v11 = *v10;
      if (*(v10 + 4) == 1)
      {
        if (v11 == 0.0)
        {
          if (v7)
          {
            return result;
          }
        }

        else if (LODWORD(v11) == 1)
        {
          if (v9)
          {
            return result;
          }
        }

        else if (v8)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && v11 == *&a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D87F362C(unint64_t a1, uint64_t a2)
{
  v9 = a1;
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v8 = *(*(v2 + 48) + 8 * v4);

      v6 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v8, &v9);

      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

size_t sub_1D87F372C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F90);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D87F38E8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1D87F39AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v5[2] = a1;
  v5[3] = 2 * v6 - 64;
  return result;
}

size_t sub_1D87F3AB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D87F3BB4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1D87F3C58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 3);
  return result;
}

void *sub_1D87F3CE8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

void *sub_1D87F3D64(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F76CC(a1, a2, a3, *v3, &qword_1ECA63CE0, &unk_1D8B22CC0, &qword_1ECA63CE8);
  *v3 = result;
  return result;
}

void *sub_1D87F3DA4(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F76CC(a1, a2, a3, *v3, &qword_1ECA63CF0, &unk_1D8B22CD0, &qword_1ECA63CF8);
  *v3 = result;
  return result;
}

char *sub_1D87F3DE4(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F594C(a1, a2, a3, *v3, &qword_1ECA63D00);
  *v3 = result;
  return result;
}

void *sub_1D87F3E1C(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F76CC(a1, a2, a3, *v3, &qword_1ECA63D08, &unk_1D8B22CE8, &qword_1ECA63D10);
  *v3 = result;
  return result;
}

void *sub_1D87F3E5C(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F76CC(a1, a2, a3, *v3, &qword_1ECA63EF0, &unk_1D8B22F50, &qword_1ECA63EF8);
  *v3 = result;
  return result;
}

size_t sub_1D87F3E9C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63510, &unk_1D8B23100, MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

size_t sub_1D87F3EE0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63200, &unk_1D8B1E7C0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

char *sub_1D87F3F24(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F6210(a1, a2, a3, *v3, &qword_1ECA63D18);
  *v3 = result;
  return result;
}

char *sub_1D87F3F54(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F74A0(a1, a2, a3, *v3, &qword_1ECA63498);
  *v3 = result;
  return result;
}

char *sub_1D87F3F8C(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F5240(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D87F3FAC(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F5344(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D87F3FCC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA634F8, &unk_1D8B1EAE0, type metadata accessor for BundleClassification);
  *v3 = result;
  return result;
}

char *sub_1D87F4010(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F5470(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D87F4030(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA634D8, &unk_1D8B1EAC0, MEMORY[0x1E69DFAC0]);
  *v3 = result;
  return result;
}

size_t sub_1D87F4074(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA634D0, &unk_1D8B22DD0, type metadata accessor for CVBundle);
  *v3 = result;
  return result;
}

size_t sub_1D87F40B8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA631D8, &unk_1D8B22EB0, type metadata accessor for ActionPin.Pill);
  *v3 = result;
  return result;
}

size_t sub_1D87F40FC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63370, &unk_1D8B1E950, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  *v3 = result;
  return result;
}

char *sub_1D87F4140(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F55B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D87F4160(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F6DA0(a1, a2, a3, *v3, &qword_1ECA63E70, &unk_1D8B22EB8, &qword_1ECA637E0);
  *v3 = result;
  return result;
}

void *sub_1D87F41A0(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F6DA0(a1, a2, a3, *v3, &qword_1ECA632F8, &unk_1D8B22EC0, &unk_1ECA64D60);
  *v3 = result;
  return result;
}

size_t sub_1D87F41E0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F630C(a1, a2, a3, *v3, &qword_1ECA63E48, &unk_1D8B22E88, &qword_1ECA63E50);
  *v3 = result;
  return result;
}

size_t sub_1D87F4220(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA634E0, &unk_1D8B22D00, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  *v3 = result;
  return result;
}

size_t sub_1D87F4264(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F630C(a1, a2, a3, *v3, &qword_1ECA63FB0, &unk_1D8B23068, &qword_1ECA63188);
  *v3 = result;
  return result;
}

char *sub_1D87F42A4(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F5BB0(a1, a2, a3, *v3, &qword_1ECA63F60);
  *v3 = result;
  return result;
}

size_t sub_1D87F42D4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63FC0, &unk_1D8B23080, MEMORY[0x1E69DFB38]);
  *v3 = result;
  return result;
}

void *sub_1D87F4318(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F6DA0(a1, a2, a3, *v3, &qword_1ECA63F80, &unk_1D8B23038, &qword_1ECA63F88);
  *v3 = result;
  return result;
}

size_t sub_1D87F4358(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA634E8, &unk_1D8B1EAD0, MEMORY[0x1E69DFB40]);
  *v3 = result;
  return result;
}

size_t sub_1D87F439C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63350, &unk_1D8B1E928, type metadata accessor for ProcessorState);
  *v3 = result;
  return result;
}

char *sub_1D87F43E0(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F56E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D87F4400(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F5818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D87F4420(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F594C(a1, a2, a3, *v3, &qword_1ECA63FD8);
  *v3 = result;
  return result;
}

char *sub_1D87F4458(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F594C(a1, a2, a3, *v3, &qword_1ECA63FE0);
  *v3 = result;
  return result;
}

void *sub_1D87F4490(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F6DA0(a1, a2, a3, *v3, &qword_1ECA634A8, &unk_1D8B1EA90, &qword_1ECA634B0);
  *v3 = result;
  return result;
}

size_t sub_1D87F44D0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA634C0, &unk_1D8B1EAA8, type metadata accessor for TextDetectorResult);
  *v3 = result;
  return result;
}

char *sub_1D87F4514(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F5A90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D87F4534(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F5BB0(a1, a2, a3, *v3, &qword_1ECA633D8);
  *v3 = result;
  return result;
}

void *sub_1D87F4564(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F6DA0(a1, a2, a3, *v3, &qword_1ECA63E38, &unk_1D8B22E70, &qword_1ECA63E40);
  *v3 = result;
  return result;
}

size_t sub_1D87F45A4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F630C(a1, a2, a3, *v3, &qword_1ECA63360, &unk_1D8B1E940, &qword_1ECA63368);
  *v3 = result;
  return result;
}

size_t sub_1D87F45E4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63240, &unk_1D8B1E800, type metadata accessor for DetectionRequest);
  *v3 = result;
  return result;
}

size_t sub_1D87F4628(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA633E0, &unk_1D8B23010, type metadata accessor for CVTrackSnapshot);
  *v3 = result;
  return result;
}

char *sub_1D87F466C(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F5C9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D87F468C(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F6DA0(a1, a2, a3, *v3, &qword_1ECA632A0, &unk_1D8B1E868, &qword_1ECA632A8);
  *v3 = result;
  return result;
}

size_t sub_1D87F46CC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F630C(a1, a2, a3, *v3, &qword_1ECA63DC8, &unk_1D8B22DD8, &qword_1ECA63DC0);
  *v3 = result;
  return result;
}

void *sub_1D87F470C(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F6DA0(a1, a2, a3, *v3, &qword_1ECA63ED0, &unk_1D8B22F20, &qword_1ECA63ED8);
  *v3 = result;
  return result;
}

char *sub_1D87F474C(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F5DC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D87F476C(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F5ECC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D87F478C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63F70, &unk_1D8B23008, MEMORY[0x1E69E02C0]);
  *v3 = result;
  return result;
}

char *sub_1D87F47D0(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F5FEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D87F47F0(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F610C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D87F4810(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F6210(a1, a2, a3, *v3, &qword_1ECA63488);
  *v3 = result;
  return result;
}

size_t sub_1D87F4840(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F630C(a1, a2, a3, *v3, &qword_1ECA64040, &unk_1D8B23110, &qword_1ECA64048);
  *v3 = result;
  return result;
}

size_t sub_1D87F4880(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63EB0, &unk_1D8B22EF8, MEMORY[0x1E69E0358]);
  *v3 = result;
  return result;
}

size_t sub_1D87F48C4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F630C(a1, a2, a3, *v3, &qword_1ECA63EA0, &unk_1D8B22EE8, &qword_1ECA63EA8);
  *v3 = result;
  return result;
}

size_t sub_1D87F4904(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63390, &unk_1D8B1E970, MEMORY[0x1E69E0420]);
  *v3 = result;
  return result;
}

size_t sub_1D87F4948(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA633B8, &unk_1D8B1E998, MEMORY[0x1E69E0248]);
  *v3 = result;
  return result;
}

void *sub_1D87F498C(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F6DA0(a1, a2, a3, *v3, &qword_1ECA63F48, &unk_1D8B22FC8, &qword_1ECA63F50);
  *v3 = result;
  return result;
}

size_t sub_1D87F49CC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F630C(a1, a2, a3, *v3, &qword_1ECA63290, &unk_1D8B1E850, &qword_1ECA67750);
  *v3 = result;
  return result;
}

size_t sub_1D87F4A0C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63410, &unk_1D8B23AD0, type metadata accessor for BundleClassification.ClassificationType);
  *v3 = result;
  return result;
}

size_t sub_1D87F4A50(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63F58, &unk_1D8B22FE0, type metadata accessor for RefinementState);
  *v3 = result;
  return result;
}

size_t sub_1D87F4A94(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63330, &unk_1D8B1E908, type metadata accessor for BundleClassifier.ClassificationInfo);
  *v3 = result;
  return result;
}

size_t sub_1D87F4AD8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA634A0, &unk_1D8B22F30, MEMORY[0x1E69E01E8]);
  *v3 = result;
  return result;
}

char *sub_1D87F4B1C(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F64F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D87F4B3C(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F6710(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D87F4B5C(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F682C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D87F4B7C(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F6930(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D87F4B9C(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F6A54(a1, a2, a3, *v3, &qword_1ECA63E08);
  *v3 = result;
  return result;
}

char *sub_1D87F4BCC(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F6A54(a1, a2, a3, *v3, &qword_1ECA63E10);
  *v3 = result;
  return result;
}

void *sub_1D87F4BFC(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F6B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D87F4C1C(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F6C84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D87F4C3C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA631E8, &unk_1D8B1E7A8, type metadata accessor for DetectionRequest.Originator);
  *v3 = result;
  return result;
}

void *sub_1D87F4C80(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F6DA0(a1, a2, a3, *v3, &qword_1ECA63D38, &unk_1D8B22D30, &qword_1ECA63D40);
  *v3 = result;
  return result;
}

char *sub_1D87F4CC0(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F6ED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D87F4CE0(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F6FD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D87F4D00(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F710C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D87F4D20(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63DD8, &unk_1D8B22DF0, MEMORY[0x1E69E0408]);
  *v3 = result;
  return result;
}

char *sub_1D87F4D64(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F7218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D87F4D84(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63F10, &unk_1D8B22F80, type metadata accessor for ParseDetectorResult);
  *v3 = result;
  return result;
}

size_t sub_1D87F4DC8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63F18, &unk_1D8B22F88, type metadata accessor for GroundedParseDetectorResult);
  *v3 = result;
  return result;
}

size_t sub_1D87F4E0C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63528, &unk_1D8B1EB10, type metadata accessor for StreamingBarcodeDetectorResult);
  *v3 = result;
  return result;
}

char *sub_1D87F4E50(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F7394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D87F4E70(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63DE0, &unk_1D8B22E08, type metadata accessor for VisualIntelligenceLookupResult);
  *v3 = result;
  return result;
}

size_t sub_1D87F4EB4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA632B0, &unk_1D8B22E00, MEMORY[0x1E69E0410]);
  *v3 = result;
  return result;
}

char *sub_1D87F4EF8(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F74A0(a1, a2, a3, *v3, &qword_1ECA63D90);
  *v3 = result;
  return result;
}

char *sub_1D87F4F30(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F75AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D87F4F50(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F76CC(a1, a2, a3, *v3, &qword_1ECA63F20, &unk_1D8B22F98, &qword_1ECA63140);
  *v3 = result;
  return result;
}

char *sub_1D87F4F90(char *a1, int64_t a2, char a3)
{
  result = sub_1D87F7934(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D87F4FB0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D87F5034(a1, a2, a3, *v3, &qword_1ECA63DA0, &unk_1D8B22DA8, type metadata accessor for MetaDetectionResult);
  *v3 = result;
  return result;
}

void *sub_1D87F4FF4(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F7A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D87F5014(void *a1, int64_t a2, char a3)
{
  result = sub_1D87F7B84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D87F5034(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1D87F5240(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F00);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D87F5344(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F68);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D87F5470(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1D87F55B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633A0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D87F56E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634B8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D87F5818(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87F594C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1D87F5A90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F78);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D87F5BB0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_1D87F5C9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87F5DC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87F5ECC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87F5FEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63438);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87F610C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D87F6210(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

size_t sub_1D87F630C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1D87F64F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63310);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1D87F65F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1D87F6710(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1D87F682C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

char *sub_1D87F6930(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 56 * v8);
  }

  return v10;
}

char *sub_1D87F6A54(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 + 31;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 6);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[64 * v9])
    {
      memmove(v14, v15, v9 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v9 << 6);
  }

  return v11;
}

void *sub_1D87F6B50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87F6C84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA632E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D87F6DA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1D87F6ED4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_1D87F6FD8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63250);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87F710C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63408);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87F7218(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F30);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D87F7394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F28);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D87F74A0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
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
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1D87F75AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D87F76CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1D87F7814(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 88 * v8);
  }

  return v10;
}

char *sub_1D87F7934(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631F8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D87F7A40(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63208);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63210);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D87F7B84(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D87F7CD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for BuiltInAction(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D8B16D20();
  BuiltInAction.hash(into:)(v20);
  v10 = sub_1D8B16D80();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D881BDC4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for BuiltInAction);
      v15 = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D881BD44(v8, type metadata accessor for BuiltInAction);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D881BD44(a2, type metadata accessor for BuiltInAction);
    sub_1D881BDC4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for BuiltInAction);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D881BDC4(a2, v8, type metadata accessor for BuiltInAction);
    *&v20[0] = *v3;
    sub_1D880374C(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D881BFE4(a2, v17, type metadata accessor for BuiltInAction);
    return 1;
  }
}

uint64_t sub_1D87F7F14(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1D8B16D20();
  sub_1D8B15A60();

  v5 = sub_1D8B16D80();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v26 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v25 = ~v6;
    v8 = 0x62616D6165727473;
    v9 = 0xE700000000000000;
    v27 = v4;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      if (v10 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v11 = 0x6261686372616573;
        }

        else
        {
          v11 = 0x7474756853657270;
        }

        if (*(*(v4 + 48) + v7))
        {
          v12 = 0xEA0000000000656CLL;
        }

        else
        {
          v12 = 0xEA00000000007265;
        }
      }

      else if (v10 == 2)
      {
        v11 = 0x7261507473726966;
        v12 = 0xEA00000000007974;
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x6E49746C697562;
        }

        else
        {
          v11 = v8;
        }

        if (v10 == 3)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xEA0000000000656CLL;
        }
      }

      v13 = 0xEA00000000007265;
      if (a2 == 3)
      {
        v14 = 0x6E49746C697562;
      }

      else
      {
        v14 = v8;
      }

      if (a2 != 3)
      {
        v9 = 0xEA0000000000656CLL;
      }

      if (a2 == 2)
      {
        v14 = 0x7261507473726966;
        v9 = 0xEA00000000007974;
      }

      if (a2)
      {
        v15 = 0x6261686372616573;
      }

      else
      {
        v15 = 0x7474756853657270;
      }

      if (a2)
      {
        v13 = 0xEA0000000000656CLL;
      }

      v16 = a2 <= 1u ? v15 : v14;
      v17 = a2 <= 1u ? v13 : v9;
      if (v11 == v16 && v12 == v17)
      {
        break;
      }

      v18 = a2;
      v19 = v8;
      v20 = sub_1D8B16BA0();

      if (v20)
      {
        goto LABEL_42;
      }

      v7 = (v7 + 1) & v25;
      v8 = v19;
      a2 = v18;
      v4 = v27;
      v9 = 0xE700000000000000;
      if (((*(v26 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_42:
    result = 0;
    LOBYTE(a2) = *(*(v27 + 48) + v7);
  }

  else
  {
LABEL_40:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v23;
    sub_1D8803990(a2, v7, isUniquelyReferenced_nonNull_native);
    *v23 = v28;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D87F8208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D8B16D20();
  BundleClassification.ClassificationType.hash(into:)(v20);
  v10 = sub_1D8B16D80();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D881BDC4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for BundleClassification.ClassificationType);
      v15 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v8, a2);
      sub_1D881BD44(v8, type metadata accessor for BundleClassification.ClassificationType);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D881BD44(a2, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D881BDC4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for BundleClassification.ClassificationType);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D881BDC4(a2, v8, type metadata accessor for BundleClassification.ClassificationType);
    *&v20[0] = *v3;
    sub_1D8803CE8(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D881BFE4(a2, v17, type metadata accessor for BundleClassification.ClassificationType);
    return 1;
  }
}

uint64_t sub_1D87F8448(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v4 = type metadata accessor for ActionPin(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v35 - v9;
  v36 = v2;
  v10 = *v2;
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v11 = (a2 + v4[5]);
  v12 = v11[3];
  v43 = v11[2];
  v44 = v12;
  v14 = v11[1];
  v41 = *v11;
  v13 = v41.f64[0];
  v42 = v14;
  if (v41.f64[0] == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x1DA720250](*&v13);
  v15 = v41.f64[1];
  if (v41.f64[1] == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x1DA720250](*&v15);
  v16 = v42.f64[0];
  if (v42.f64[0] == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x1DA720250](*&v16);
  v17 = v42.f64[1];
  if (v42.f64[1] == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x1DA720250](*&v17);
  v18 = v43.f64[0];
  if (v43.f64[0] == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x1DA720250](*&v18);
  v19 = v43.f64[1];
  if (v43.f64[1] == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x1DA720250](*&v19);
  v20 = v44.f64[0];
  if (v44.f64[0] == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1DA720250](*&v20);
  v21 = v44.f64[1];
  if (v44.f64[1] == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1DA720250](*&v21);
  v22 = (a2 + v4[6]);
  v23 = v22[1];
  v40 = *v22;
  sub_1D8B15A60();
  v39 = *(a2 + v4[7]);
  sub_1D87CF3E8(v45, v39);
  v38 = *(a2 + v4[8]);
  sub_1D8B16D40();
  v24 = sub_1D8B16D80();
  v25 = -1 << *(v10 + 32);
  v26 = v24 & ~v25;
  if ((*(v10 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v27 = ~v25;
    v28 = *(v5 + 72);
    while (1)
    {
      sub_1D881BDC4(*(v10 + 48) + v28 * v26, v8, type metadata accessor for ActionPin);
      if (sub_1D8B13200() & 1) != 0 && (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v8[v4[5]], v41), vceqq_f64(*&v8[v4[5] + 16], v42)), vuzp1q_s32(vceqq_f64(*&v8[v4[5] + 32], v43), vceqq_f64(*&v8[v4[5] + 48], v44))))))
      {
        v29 = &v8[v4[6]];
        v30 = *v29 == v40 && *(v29 + 1) == v23;
        if (v30 || (sub_1D8B16BA0()) && (sub_1D88E245C(*&v8[v4[7]], v39) & 1) != 0 && v38 == v8[v4[8]])
        {
          break;
        }
      }

      sub_1D881BD44(v8, type metadata accessor for ActionPin);
      v26 = (v26 + 1) & v27;
      if (((*(v10 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    sub_1D881BD44(v8, type metadata accessor for ActionPin);
    sub_1D881BD44(a2, type metadata accessor for ActionPin);
    sub_1D881BDC4(*(v10 + 48) + v28 * v26, v37, type metadata accessor for ActionPin);
    return 0;
  }

  else
  {
LABEL_30:
    v32 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v35;
    sub_1D881BDC4(a2, v35, type metadata accessor for ActionPin);
    *&v45[0] = *v32;
    sub_1D8803F2C(v34, v26, isUniquelyReferenced_nonNull_native);
    *v32 = *&v45[0];
    sub_1D881BFE4(a2, v37, type metadata accessor for ActionPin);
    return 1;
  }
}

uint64_t sub_1D87F88E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D8B16D20();
  sub_1D8B15A60();
  v8 = sub_1D8B16D80();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D8B16BA0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D8804384(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D87F8A38(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v60 = type metadata accessor for BuiltInAction(0);
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E58);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v10;
  v11 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v62 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v55 - v15;
  v66 = v2;
  v16 = *v2;
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v17 = type metadata accessor for ActionPin(0);
  v18 = (a2 + v17[5]);
  v19 = v18[3];
  v75 = v18[2];
  v76 = v19;
  v21 = v18[1];
  v73 = *v18;
  v20 = v73.f64[0];
  v74 = v21;
  if (v73.f64[0] == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1DA720250](*&v20);
  v22 = v73.f64[1];
  if (v73.f64[1] == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x1DA720250](*&v22);
  v23 = v74.f64[0];
  if (v74.f64[0] == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x1DA720250](*&v23);
  v24 = v74.f64[1];
  if (v74.f64[1] == 0.0)
  {
    v24 = 0.0;
  }

  MEMORY[0x1DA720250](*&v24);
  v25 = v75.f64[0];
  if (v75.f64[0] == 0.0)
  {
    v25 = 0.0;
  }

  MEMORY[0x1DA720250](*&v25);
  v26 = v75.f64[1];
  if (v75.f64[1] == 0.0)
  {
    v26 = 0.0;
  }

  MEMORY[0x1DA720250](*&v26);
  v27 = v76.f64[0];
  if (v76.f64[0] == 0.0)
  {
    v27 = 0.0;
  }

  MEMORY[0x1DA720250](*&v27);
  v28 = v76.f64[1];
  if (v76.f64[1] == 0.0)
  {
    v28 = 0.0;
  }

  MEMORY[0x1DA720250](*&v28);
  v29 = (a2 + v17[6]);
  v30 = *v29;
  v71 = v29[1];
  v72 = v30;
  sub_1D8B15A60();
  v70 = *(a2 + v17[7]);
  sub_1D87CF3E8(v77, v70);
  v68 = *(a2 + v17[8]);
  sub_1D8B16D40();
  v64 = v11;
  v69 = (a2 + *(v11 + 20));
  ActionPin.Pill.hash(into:)(v77);
  v31 = sub_1D8B16D80();
  v32 = -1 << *(v16 + 32);
  v33 = v31 & ~v32;
  if (((*(v16 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
  {
LABEL_55:
    v51 = v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v65;
    sub_1D881BDC4(a2, v65, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    *&v77[0] = *v51;
    sub_1D8804504(v53, v33, isUniquelyReferenced_nonNull_native);
    *v51 = *&v77[0];
    sub_1D881BFE4(a2, v67, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    return 1;
  }

  v58 = v9;
  v59 = v8;
  v57 = v5;
  v34 = ~v32;
  v35 = *(v62 + 72);
  v63 += 6;
  while (1)
  {
    sub_1D881BDC4(*(v16 + 48) + v35 * v33, v14, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    if ((sub_1D8B13200() & 1) == 0 || (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v14[v17[5]], v73), vceqq_f64(*&v14[v17[5] + 16], v74)), vuzp1q_s32(vceqq_f64(*&v14[v17[5] + 32], v75), vceqq_f64(*&v14[v17[5] + 48], v76))))) & 1) == 0)
    {
      goto LABEL_20;
    }

    v36 = &v14[v17[6]];
    v37 = *v36 == v72 && *(v36 + 1) == v71;
    if (!v37 && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_20;
    }

    if ((sub_1D88E245C(*&v14[v17[7]], v70) & 1) == 0 || v68 != v14[v17[8]])
    {
      goto LABEL_20;
    }

    v38 = &v14[*(v64 + 20)];
    v39 = *v38 == *v69 && *(v38 + 1) == v69[1];
    if (!v39 && (sub_1D8B16BA0() & 1) == 0 || (*(v38 + 2) != v69[2] || *(v38 + 3) != v69[3]) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_20;
    }

    if ((*(v38 + 4) != v69[4] || *(v38 + 5) != v69[5]) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_20;
    }

    v40 = *(v38 + 7);
    v41 = v69[7];
    if (v40)
    {
      break;
    }

    if (!v41)
    {
      goto LABEL_46;
    }

LABEL_20:
    sub_1D881BD44(v14, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    v33 = (v33 + 1) & v34;
    if (((*(v16 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  if (!v41 || (*(v38 + 6) != v69[6] || v40 != v41) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_46:
  if (*(v38 + 8) != v69[8])
  {
    goto LABEL_20;
  }

  v56 = *(type metadata accessor for ActionPin.Pill(0) + 36);
  v62 = *(v58 + 48);
  v55 = type metadata accessor for ActionPin.Pill.Source;
  v42 = &v38[v56];
  v43 = v61;
  sub_1D881BDC4(v42, v61, type metadata accessor for ActionPin.Pill.Source);
  sub_1D881BDC4(v69 + v56, v43 + v62, v55);
  v44 = v43;
  v45 = v60;
  v56 = *v63;
  if ((v56)(v44, 1, v60) == 1)
  {
    if ((v56)(v61 + v62, 1, v45) == 1)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  v46 = v61;
  sub_1D881BDC4(v61, v59, type metadata accessor for ActionPin.Pill.Source);
  v47 = v46 + v62;
  v48 = v62;
  if ((v56)(v47, 1, v60) == 1)
  {
    sub_1D881BD44(v59, type metadata accessor for BuiltInAction);
LABEL_52:
    sub_1D87A14E4(v61, &qword_1ECA63E58);
    goto LABEL_20;
  }

  v49 = v61 + v48;
  v50 = v57;
  sub_1D881BFE4(v49, v57, type metadata accessor for BuiltInAction);
  LODWORD(v62) = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v59, v50);
  sub_1D881BD44(v50, type metadata accessor for BuiltInAction);
  sub_1D881BD44(v59, type metadata accessor for BuiltInAction);
  if ((v62 & 1) == 0)
  {
    sub_1D881BD44(v61, type metadata accessor for ActionPin.Pill.Source);
    goto LABEL_20;
  }

LABEL_56:
  sub_1D881BD44(v61, type metadata accessor for ActionPin.Pill.Source);
  sub_1D881BD44(v14, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
  sub_1D881BD44(a2, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
  sub_1D881BDC4(*(v16 + 48) + v35 * v33, v67, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
  return 0;
}

uint64_t sub_1D87F93C8(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FA0);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v39 - v4;
  v6 = type metadata accessor for BuiltInAction(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v50 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v54 = &v39 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v40 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  v41 = v2;
  v53 = *v2;
  sub_1D8B16D20();
  v52 = a2;
  sub_1D87A0E38(a2, v19, &qword_1ECA63188);
  v22 = *(v7 + 48);
  v20 = v7 + 48;
  v21 = v22;
  v23 = v6;
  if (v22(v19, 1, v6) == 1)
  {
    sub_1D8B16D40();
  }

  else
  {
    sub_1D881BFE4(v19, v9, type metadata accessor for BuiltInAction);
    sub_1D8B16D40();
    BuiltInAction.hash(into:)(v55);
    sub_1D881BD44(v9, type metadata accessor for BuiltInAction);
  }

  v24 = v9;
  v25 = sub_1D8B16D80();
  v26 = v54;
  v27 = -1 << *(v53 + 32);
  v28 = v25 & ~v27;
  v49 = v53 + 56;
  if (((*(v53 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
  {
LABEL_14:
    v34 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v52;
    v37 = v40;
    sub_1D87A0E38(v52, v40, &qword_1ECA63188);
    *&v55[0] = *v34;
    sub_1D8804E7C(v37, v28, isUniquelyReferenced_nonNull_native);
    *v34 = *&v55[0];
    sub_1D881F6FC(v36, v42, &qword_1ECA63188);
    return 1;
  }

  v47 = v21;
  v48 = v20;
  v43 = v24;
  v45 = ~v27;
  v46 = *(v11 + 72);
  while (1)
  {
    v29 = v46 * v28;
    sub_1D87A0E38(*(v53 + 48) + v46 * v28, v26, &qword_1ECA63188);
    v30 = *(v51 + 48);
    sub_1D87A0E38(v26, v5, &qword_1ECA63188);
    sub_1D87A0E38(v52, &v5[v30], &qword_1ECA63188);
    v31 = v47;
    if (v47(v5, 1, v23) == 1)
    {
      break;
    }

    sub_1D87A0E38(v5, v50, &qword_1ECA63188);
    if (v31(&v5[v30], 1, v23) == 1)
    {
      sub_1D87A14E4(v54, &qword_1ECA63188);
      sub_1D881BD44(v50, type metadata accessor for BuiltInAction);
      goto LABEL_7;
    }

    v32 = v50;
    v33 = v43;
    sub_1D881BFE4(&v5[v30], v43, type metadata accessor for BuiltInAction);
    v44 = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v32, v33);
    sub_1D881BD44(v33, type metadata accessor for BuiltInAction);
    sub_1D87A14E4(v54, &qword_1ECA63188);
    sub_1D881BD44(v32, type metadata accessor for BuiltInAction);
    sub_1D87A14E4(v5, &qword_1ECA63188);
    if (v44)
    {
      goto LABEL_16;
    }

LABEL_8:
    v28 = (v28 + 1) & v45;
    v26 = v54;
    if (((*(v49 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_1D87A14E4(v26, &qword_1ECA63188);
  if (v31(&v5[v30], 1, v23) != 1)
  {
LABEL_7:
    sub_1D87A14E4(v5, &qword_1ECA63FA0);
    goto LABEL_8;
  }

  sub_1D87A14E4(v5, &qword_1ECA63188);
LABEL_16:
  sub_1D87A14E4(v52, &qword_1ECA63188);
  sub_1D87A0E38(*(v53 + 48) + v29, v42, &qword_1ECA63188);
  return 0;
}