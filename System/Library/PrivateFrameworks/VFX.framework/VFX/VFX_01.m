uint64_t sub_1AF0ED3DC(uint64_t a1, uint64_t a2)
{
  sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AF0ED478(uint64_t a1, uint64_t a2)
{
  sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t *_s3VFX7AnyTypeOwCP_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1AF442064(*a2);
  *a1 = v3;
  return a1;
}

uint64_t sub_1AF0ED7A8()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0ED7E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1AF0ED818()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1AF0ED890()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EDA10()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EDA58()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EDB10()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EDB58()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EDB90()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EDBCC()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EDC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AF0EDC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AF0EDCE0()
{
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0EDD18()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1AF0EDD78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1AF0EDDE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EDE2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EDE74()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EDEAC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EDEE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EDF24()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AF0EDF90()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EDFD8()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EE01C()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EE064()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EE0AC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1AF8859C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

__n128 sub_1AF0EE130(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

int32x2_t sub_1AF0EE16C@<D0>(int64x2_t *a1@<X0>, int32x2_t *a2@<X8>)
{
  result = vmovn_s64(*a1);
  *a2 = result;
  return result;
}

void *sub_1AF0EE17C(void *result, void *a2)
{
  v2 = HIDWORD(*result);
  if (v2 <= *result)
  {
    v2 = *result;
  }

  *a2 = *result;
  a2[1] = v2;
  return result;
}

double sub_1AF0EE1A0@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_1AF0EE1AC(void *result, uint64_t a2)
{
  LODWORD(v2) = HIDWORD(*result);
  if (COERCE_FLOAT(*result) > v2)
  {
    LODWORD(v2) = *result;
  }

  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

uint64_t sub_1AF0EE1C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 48))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1AF0EE25C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF938518();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AF0EE2AC()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EE2E4()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EE31C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_1AF0EE3F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t _s3VFX12GraphCodeGenC13CFGCustomFlowC5ChildVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_1AF0EE530()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EE568()
{
  v1 = sub_1AFDFBCE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AF0EE600()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EE638()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EE6D8()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EE758()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1AF0EE790()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

id sub_1AF0EE7E0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isVisible];
  *a2 = result;
  return result;
}

id sub_1AF0EE828@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 opacity];
  *a2 = v4;
  return result;
}

id sub_1AF0EE870@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 renderingOrder];
  *a2 = result;
  return result;
}

id sub_1AF0EE8B8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 castsShadow];
  *a2 = result;
  return result;
}

id sub_1AF0EE900@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 categoryBitMask];
  *a2 = result;
  return result;
}

id sub_1AF0EE94C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

uint64_t sub_1AF0EE99C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EE9E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EEA2C()
{
  sub_1AF4410E4(*(v0 + 48), sub_1AF441114);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1AF0EEA80()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0EEAB8()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t *_s3VFX11MappingModeV11InputFilterOwCP_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1AF4410E4(*a2, sub_1AF4410A8);
  *a1 = v3;
  return a1;
}

uint64_t sub_1AF0EEB44()
{
  sub_1AF441114(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EEB8C()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EEBC4()
{
  sub_1AF441114(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EEBFC(_BYTE *a1)
{
  if (*a1 == 3)
  {
    return 12325;
  }

  else
  {
    return 0x30252964696F7628;
  }
}

uint64_t sub_1AF0EEC2C(_BYTE *a1)
{
  if (*a1 == 3)
  {
    return 12581;
  }

  else
  {
    return 0x31252964696F7628;
  }
}

uint64_t sub_1AF0EECC8()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EED10()
{
  sub_1AF441114(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EED48()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EED8C()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EEDF8()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EEE30()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EEE70()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EEEA8()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EEEE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t sub_1AF0EEF40()
{
  sub_1AF7D4C4C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 36, 7);
}

uint64_t sub_1AF0EF028()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EF070()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EF0A8()
{
  sub_1AF7D4C4C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 36, 7);
}

uint64_t sub_1AF0EF0F8()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EF150()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EF188()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EF1D0()
{
  sub_1AF445BE4(*(v0 + 16));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0EF210()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EF248()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EF298()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EF2D0()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EF318()
{

  return MEMORY[0x1EEE6BDD0](v0, 61, 7);
}

void *_s3VFX22RenderGraphDiagnosticsC12RendererInfoVwCP_0(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_1AF0EF3EC()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EF424()
{
  sub_1AF445BE4(*(v0 + 16));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0EF464()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EF49C()
{
  sub_1AF441114(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EF4D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 61, 7);
}

uint64_t sub_1AF0EF514()
{
  sub_1AF7D4C4C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1AF0EF550()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EF588()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EF5C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_1AF0EF600()
{
  sub_1AF445BE4(*(v0 + 16));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0EF640()
{

  sub_1AF445BE4(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0EF680()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0EF6B8()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EF708()
{
  sub_1AF7D4C4C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1AF0EF744()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EF77C()
{
  MEMORY[0x1B271E060](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AF0EF7BC()
{
  MEMORY[0x1B271E060](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 92, 7);
}

uint64_t _s3VFX20WorldObjectReferenceOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = v3;
  return a1;
}

unint64_t *_s3VFX14TypeConstraintOwCP_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1AF4410A8(*a2);
  *a1 = v3;
  return a1;
}

uint64_t sub_1AF0EF87C()
{
  sub_1AF445BE4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EFAB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AF0EFC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AF0D0FCC(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
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
}

void sub_1AF0EFD60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1AF0D0FCC(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }
}

uint64_t sub_1AF0EFE4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0EFE8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F02E0()
{
  v1 = *v0;
  v2 = 1701080931;
  v3 = 0x6E6F6974636E7566;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x65676175676E616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F6974636E7566;
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

uint64_t sub_1AF0F0398(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1AFAAEB58(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AF0F0444(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1AFAAEB58(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AF0F04E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1AFAAEB58(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AF0F0594(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_1AFAAEB58(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AF0F0640(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1AFAAEB58(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

void *sub_1AF0F06EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1AFAAEB58(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AF0F0790(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1AFAAEB58(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AF0F083C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_1AFAAEB58(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

unint64_t *_s3VFX14ScriptLocationOwCP_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1AF443EE0(*a2);
  *a1 = v3;
  return a1;
}

uint64_t sub_1AF0F09FC()
{
  MEMORY[0x1B271E060](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AF0F0A3C()
{
  MEMORY[0x1B271E060](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 92, 7);
}

uint64_t sub_1AF0F0A8C()
{

  sub_1AF445BE4(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0F0B38()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0F0B70()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F0BA8()
{
  sub_1AFABCF1C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1AF0F0E0C()
{

  MEMORY[0x1B271E060](v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AF0F0E5C()
{

  MEMORY[0x1B271E060](v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0F0EAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 109, 15);
}

uint64_t sub_1AF0F0EFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F0F3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TriggerScript(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1AF0F0FE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TriggerScript(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AF0F1124()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

float sub_1AF0F115C@<S0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v2.i64[0] = vmulq_f32(*a1, v2).u64[0];
  result = vmuls_lane_f32(0.5, *a1, 2);
  v2.i64[1] = LODWORD(result);
  *a2 = v2;
  return result;
}

float sub_1AF0F1180(float32x4_t *a1, _OWORD *a2)
{
  *&v2 = vaddq_f32(*a1, *a1).u64[0];
  result = COERCE_FLOAT(a1->i64[1]) + COERCE_FLOAT(a1->i64[1]);
  *(&v2 + 2) = result;
  HIDWORD(v2) = 0;
  *a2 = v2;
  return result;
}

float32x2_t sub_1AF0F11A0@<D0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X8>)
{
  result = vmul_f32(*a1, 0x3F0000003F000000);
  *a2 = result;
  return result;
}

float32x2_t sub_1AF0F11B4(float32x2_t *a1, float32x2_t *a2)
{
  result = vadd_f32(*a1, *a1);
  *a2 = result;
  return result;
}

float sub_1AF0F11C4@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *a1 * 0.5;
  *a2 = result;
  return result;
}

float sub_1AF0F11D8(float *a1, float *a2)
{
  result = *a1 + *a1;
  *a2 = result;
  return result;
}

uint64_t sub_1AF0F11E8()
{
  if (*(v0 + 48))
  {
  }

  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AF0F1244()
{
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AF0F1294()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AF0F12CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1AF0F1364()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AF0F13AC()
{
  sub_1AFABCF1C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1AF0F13EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 61, 7);
}

uint64_t sub_1AF0F1434()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0F147C()
{
  sub_1AF445BE4(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1AF0F1520@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 28) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1AF0F1718()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F176C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF0F17F0()
{
  swift_getWitnessTable();

  return sub_1AFDFD7E8();
}

uint64_t sub_1AF0F1874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF0F18E8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F1920()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AF0F1A80()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F1AC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F1B14(uint64_t a1)
{
  sub_1AF688940(a1);

  return swift_allocObject();
}

uint64_t sub_1AF0F1B58()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1AF0F1B88(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1AF0F1BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AFB97B9C(v3, a3);
  sub_1AF688940(a1);
  return v5;
}

uint64_t sub_1AF0F1C38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

ValueMetadata *sub_1AF0F1C80()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for UpdateContext;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1AF0F1D50()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F1D88()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F1DC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0F1DF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_1AF0F1E30()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F1F68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s3VFX14VFXHandTrackerC4HandVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_1AF0F1FE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F2028()
{

  return MEMORY[0x1EEE6BDD0](v0, 176, 15);
}

uint64_t sub_1AF0F2060()
{

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t sub_1AF0F2134()
{
  if (*(v0 + 72))
  {
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AF0F217C()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t _s3VFX18VFXObjectReferenceVwxx_0()
{
  MEMORY[0x1B271E060]();
}

__n128 _s3VFX18VFXObjectReferenceVwtk_0(uint64_t a1, __n128 *a2)
{
  v3 = swift_unknownObjectWeakTakeInit();
  v3->n128_u64[1] = a2->n128_u64[1];
  result = a2[1];
  v3[1] = result;
  return result;
}

void sub_1AF0F25C8(_OWORD *a1@<X8>)
{
  v2 = sub_1AFC52758();
  if (v2)
  {
    v3 = v2;
    [v2 position];
    v6 = v4;

    v5 = v6;
  }

  else
  {
    v5 = 0uLL;
  }

  *a1 = v5;
}

void sub_1AF0F2630(__int128 *a1@<X8>)
{
  v2 = sub_1AFC52758();
  if (v2)
  {
    v3 = v2;
    [v2 orientation];
    v6 = v4;

    v5 = v6;
  }

  else
  {
    v5 = xmmword_1AFE201A0;
  }

  *a1 = v5;
}

void sub_1AF0F2690(__int128 *a1)
{
  v2 = *a1;
  v1 = sub_1AFC52758();
  [v1 setOrientation_];
}

void sub_1AF0F26EC(_OWORD *a1@<X8>)
{
  v2 = sub_1AFC52758();
  if (v2)
  {
    v3 = v2;
    [v2 scale];
    v10 = v4;

    _Q0 = v10;
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  *a1 = _Q0;
}

void sub_1AF0F2754(__int128 *a1@<X8>)
{
  v2 = sub_1AFC52758();
  if (v2)
  {
    v3 = v2;
    [v2 transform];
    v15 = v4;
    v13 = v6;
    v14 = v5;
    v12 = v7;

    v8 = v15;
    v9 = v13;
    v10 = v14;
    v11 = v12;
  }

  else
  {
    v11 = xmmword_1AFE201A0;
    v9 = xmmword_1AFE20180;
    v10 = xmmword_1AFE20160;
    v8 = xmmword_1AFE20150;
  }

  *a1 = v8;
  a1[1] = v10;
  a1[2] = v9;
  a1[3] = v11;
}

void sub_1AF0F27E0(__int128 *a1)
{
  v5 = a1[3];
  v3 = a1[1];
  v4 = a1[2];
  v2 = *a1;
  v1 = sub_1AFC52758();
  [v1 setTransform_];
}

void sub_1AF0F2850(__int128 *a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong worldTransform];
    v15 = v4;
    v13 = v6;
    v14 = v5;
    v12 = v7;

    v8 = v15;
    v9 = v13;
    v10 = v14;
    v11 = v12;
  }

  else
  {
    v11 = xmmword_1AFE201A0;
    v9 = xmmword_1AFE20180;
    v10 = xmmword_1AFE20160;
    v8 = xmmword_1AFE20150;
  }

  *a1 = v8;
  a1[1] = v10;
  a1[2] = v9;
  a1[3] = v11;
}

void sub_1AF0F28E0(_OWORD *a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong eulerAngles];
    v6 = v4;

    v5 = v6;
  }

  else
  {
    v5 = 0uLL;
  }

  *a1 = v5;
}

void sub_1AF0F293C(__int128 *a1)
{
  v2 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong setEulerAngles_];
}

uint64_t sub_1AF0F2990(uint64_t a1)
{
  MEMORY[0x1B271E060]();

  return a1;
}

void sub_1AF0F2A18(int *a1)
{
  v1 = *a1;
  v3 = sub_1AFC52758();
  LODWORD(v2) = v1;
  [v3 setOpacity_];
}

void sub_1AF0F2A7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1AFC52758();
  [v2 setRenderingOrder_];
}

uint64_t sub_1AF0F2AD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFC530C4();
  *a1 = result & 1;
  return result;
}

void sub_1AF0F2B70(_OWORD *a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_light);
  if (v2)
  {
    v3 = v2;
    [v2 extendedLinearSRGBColor];
    v6 = v4;

    v5 = v6;
  }

  else
  {
    v5 = 0uLL;
  }

  *a1 = v5;
}

void sub_1AF0F2BD8(__int128 *a1)
{
  v2 = *a1;
  v1 = sub_1AFC628C8(&selRef_light);
  [v1 setExtendedLinearSRGBColor_];
}

BOOL sub_1AF0F2CB8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AFC55EE8();
  *a1 = result;
  return result;
}

BOOL sub_1AF0F2D9C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AFC55FD4();
  *a1 = result;
  return result;
}

uint64_t sub_1AF0F2E84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFC56180();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1AF0F3034@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFC581C4();
  *a1 = result & 1;
  return result;
}

void sub_1AF0F329C(_OWORD *a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_camera);
  if (v2)
  {
    v3 = v2;
    [v2 projectionTransform];
    v15 = v4;
    v13 = v6;
    v14 = v5;
    v12 = v7;

    v9 = v12;
    v8 = v13;
    v10 = v14;
    v11 = v15;
  }

  else
  {
    v11 = 0uLL;
    v10 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v11;
  a1[1] = v10;
  a1[2] = v8;
  a1[3] = v9;
}

void sub_1AF0F3324(__int128 *a1)
{
  v5 = a1[3];
  v3 = a1[1];
  v4 = a1[2];
  v2 = *a1;
  v1 = sub_1AFC628C8(&selRef_camera);
  [v1 setProjectionTransform_];
}

void sub_1AF0F35B4(_OWORD *a1@<X8>)
{
  v2 = sub_1AFC59C10(&selRef_bloom);
  if (v2)
  {
    v3 = v2;
    [v2 colorFilter];
    v10 = v4;

    _Q0 = v10;
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  *a1 = _Q0;
}

BOOL sub_1AF0F4684@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AFC61BE0();
  *a1 = result;
  return result;
}

BOOL sub_1AF0F4738@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AFC61EE4();
  *a1 = result;
  return result;
}

BOOL sub_1AF0F47A8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AFC62004();
  *a1 = result;
  return result;
}

BOOL sub_1AF0F4818@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AFC62244();
  *a1 = result;
  return result;
}

BOOL sub_1AF0F4994@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AFC6273C();
  *a1 = result;
  return result;
}

void sub_1AF0F4A14(_OWORD *a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_physicsBody);
  if (v2)
  {
    v3 = v2;
    [v2 angularVelocity];
    v6 = v4;

    v5 = v6;
  }

  else
  {
    v5 = 0uLL;
  }

  *a1 = v5;
}

void sub_1AF0F4A7C(__int128 *a1)
{
  v2 = *a1;
  v1 = sub_1AFC628C8(&selRef_physicsBody);
  [v1 setAngularVelocity_];
}

id sub_1AF0F4E70@<X0>(void *a1@<X8>)
{
  result = sub_1AFC669DC();
  *a1 = result;
  return result;
}

uint64_t sub_1AF0F4FA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFC66AB0();
  *a1 = result;
  return result;
}

id sub_1AF0F502C@<X0>(void *a1@<X8>)
{
  result = sub_1AFC66B9C();
  *a1 = result;
  return result;
}

id sub_1AF0F508C@<X0>(void *a1@<X8>)
{
  result = sub_1AFC66C14();
  *a1 = result;
  return result;
}

BOOL sub_1AF0F5330@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AFC67768();
  *a1 = result;
  return result;
}

BOOL sub_1AF0F540C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AFC67828();
  *a1 = result;
  return result;
}

void sub_1AF0F54EC(int *a1)
{
  v1 = *a1;
  v3 = sub_1AFC66FBC();
  LODWORD(v2) = v1;
  [v3 setAlphaCutoff_];
}

__n128 sub_1AF0F57F4(__n128 *a1, __n128 *a2)
{
  sub_1AF450FE0(a1, a2);
  v4 = a1[2].n128_u64[0];
  result = a1[1];
  a2[1] = result;
  a2[2].n128_u64[0] = v4;
  return result;
}

__n128 sub_1AF0F5834(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 24);
  result = *a1;
  *(a2 + 32) = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1AF0F5850()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0F5898()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F5998(__int128 *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7 = *v6;
  v8 = v6[1];
  v12 = 0;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v11 = 0;
  return sub_1AFC77778(v10, v7, v8);
}

uint64_t sub_1AF0F5AC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1AF0F5B28()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1AF0F5B8C@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1AF0F5BF8(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC3VFX9VFXEffect_delegate) = *a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_1AF0F5CA4()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F5CDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F5D14()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1AF0F5D64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFC8C558();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AF0F5D90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1AFC8C750(v1, v2);
}

uint64_t sub_1AF0F5DE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F5E74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F5EAC()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F5EE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F5F34(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR___VFXREREnderer_device) = *a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_1AF0F5F80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR___VFXREScene_scene);
  *a2 = v2;
  return v2;
}

void sub_1AF0F5F98(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___VFXREScene_scene);
  *(*a2 + OBJC_IVAR___VFXREScene_scene) = *a1;
  v3 = v2;
}

id sub_1AF0F5FE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR___VFXREScene_effect);
  *a2 = v2;
  return v2;
}

void sub_1AF0F6000(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___VFXREScene_effect);
  *(*a2 + OBJC_IVAR___VFXREScene_effect) = *a1;
  v3 = v2;
}

uint64_t sub_1AF0F6068(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR___VFXREScene_transientDrawCall) = *a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

float sub_1AF0F60E4@<S0>(void *a1@<X0>, float *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR___VFXREScene_sceneScale);
  *a2 = result;
  return result;
}

float sub_1AF0F60FC(float *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR___VFXREScene_sceneScale) = *a1;
  return result;
}

id sub_1AF0F611C@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR___VFXREScene_scene) peerPid];
  *a2 = result;
  return result;
}

id sub_1AF0F6180@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR___VFXREScene_scene) peerTaskIdentity];
  *a2 = result;
  return result;
}

uint64_t sub_1AF0F61E4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F6228()
{
  MEMORY[0x1B271E060](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F6260()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0F62B8(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC3VFX8VFXScene_effects) = *a1;
}

uint64_t sub_1AF0F673C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR___VFXSceneLoadOptions_clientID);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_1AF0F6758(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___VFXSceneLoadOptions_clientID);
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1AF0F6840@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v3 = *(v2 + 32);
  *a2 = *(v2 + 24);
  a2[1] = v3;
}

uint64_t sub_1AF0F685C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(*a2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

void *sub_1AF0F69C0@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(*result + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  if (*(v2 + 81) == 1)
  {
    v3 = *(v2 + 84) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3 & 1;
  return result;
}

unsigned __int8 *sub_1AF0F6A60(unsigned __int8 *result, void *a2)
{
  v2 = *result;
  v3 = *(*a2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  *(v3 + 82) = v2;
  if (v2 == 1)
  {
    *(v3 + 83) = 0;
  }

  return result;
}

float sub_1AF0F6A98@<S0>(void *a1@<X0>, float *a2@<X8>)
{
  result = *(*(*(*a1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_scheduler) + 208);
  *a2 = result;
  return result;
}

float sub_1AF0F6AC4(float *a1, void *a2)
{
  result = *a1;
  *(*(*(*a2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_scheduler) + 208) = *a1;
  return result;
}

void *sub_1AF0F6B00@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(*result + OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer);
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 272);
  }

  *a2 = v2;
  return result;
}

id sub_1AF0F6B24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 assetManager];
  *a2 = result;
  return result;
}

id sub_1AF0F6B74@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 peerPid];
  *a2 = result;
  return result;
}

id sub_1AF0F6BBC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 peerTaskIdentity];
  *a2 = result;
  return result;
}

uint64_t sub_1AF0F6C04()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F6C3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F6C78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F6CB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1AF0F6CE8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 speedFactor];
  *a2 = v4;
  return result;
}

id sub_1AF0F6D30@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 time];
  *a2 = v4;
  return result;
}

id sub_1AF0F6D78@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useFixedTimeStep];
  *a2 = result;
  return result;
}

id sub_1AF0F6DC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeStep];
  *a2 = v4;
  return result;
}

id sub_1AF0F6E08@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 paused];
  *a2 = result;
  return result;
}

id sub_1AF0F6E50@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 imGUIEnabled];
  *a2 = result;
  return result;
}

id sub_1AF0F6E98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sourceReplicationDelegate];
  *a2 = result;
  return result;
}

id sub_1AF0F6EE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 destinationReplicationDelegate];
  *a2 = result;
  return result;
}

id sub_1AF0F6F38@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_1AF0F6F80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFCE70CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AF0F6FB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFCE7808();
  *a1 = result;
  return result;
}

void sub_1AF0F6FE8(_OWORD *a1@<X8>)
{
  *&v2 = sub_1AFCE98B4();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_1AF0F7070(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1AFCEC678(v1, v2);
}

uint64_t sub_1AF0F70B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 117, 7);
}

uint64_t sub_1AF0F7108()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0F7140()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F7178()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AF0F71D8()
{
  swift_weakDestroy();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 857, 15);
}

uint64_t sub_1AF0F73AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1AF0F73E4()
{
  MEMORY[0x1B271E060](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F741C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AF0F745C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F7494()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F74E4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F758C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_1AF0F7678(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AF0F774C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 48));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1AF0F7838(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }
}

uint64_t sub_1AF0F7924()
{
  v1 = sub_1AFDFC128();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1AF0F79E8()
{
  v1 = sub_1AFDFC128();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1AF0F7AD8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AF0F7B20()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F7B58()
{
  MEMORY[0x1B271E060](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F7B90()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F7D54()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AF0F7D8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AF0F7E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF0F7EB0()
{
  swift_getWitnessTable();

  return sub_1AFDFD7E8();
}

uint64_t sub_1AF0F7F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF0F8084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF0F8108()
{
  swift_getWitnessTable();

  return sub_1AFDFD7E8();
}

uint64_t sub_1AF0F818C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

void sub_1AF0F828C(void *a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    sub_1AF0F828C(a1, *(a2 + 40));
    sub_1AF0F828C(a1, *(a2 + 48));
  }

  if (*a1 == a2)
  {
    *a1 = 0;
  }

  sub_1AFDA72A0(a1[1]);
  a1[1] = a2;
}

uint64_t sub_1AF0F82EC(uint64_t result, uint64_t a2, float32x4_t *a3)
{
  v4 = result;
  if (*result)
  {
    v5 = a2;
    v6 = *(a2 + 48);
    if (v6)
    {
      v7 = vaddq_f32(*a3, a3[1]);
      do
      {
        v8 = vsubq_f32(v7, vaddq_f32(**(v5 + 40), *(*(v5 + 40) + 16)));
        v9 = vabs_f32(*v8.i8);
        v10 = vsubq_f32(v7, vaddq_f32(*v6, v6[1]));
        v11 = vabs_f32(*v10.i8);
        *v8.i8 = vadd_f32(vabs_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v10, v10, 8uLL))), vadd_f32(vzip1_s32(v9, v11), vzip2_s32(v9, v11)));
        v5 = *(v5 + 40 + 8 * (*&vmvn_s8(vcgt_f32(vdup_lane_s32(*v8.i8, 1), *v8.i8)) & 1));
        v6 = *(v5 + 48);
      }

      while (v6);
    }

    v12 = *(v5 + 32);
    result = *(result + 8);
    if (result)
    {
      v4[1] = 0;
    }

    else
    {
      result = sub_1AFDA7294(64, 16);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
    }

    v13 = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 32) = v12;
    do
    {
      v14 = a3->f32[v13 / 4];
      v15 = v5 + v13;
      if (v14 >= *(v5 + v13))
      {
        v14 = *(v5 + v13);
      }

      *(result + v13) = v14;
      v16 = a3[1].f32[v13 / 4];
      if (v16 <= *(v15 + 16))
      {
        v16 = *(v15 + 16);
      }

      *(result + v13 + 16) = v16;
      v13 += 4;
    }

    while (v13 != 12);
    if (v12)
    {
      *(v12 + 8 * (*(*(v5 + 32) + 48) == v5) + 40) = result;
      *(result + 40) = v5;
      *(v5 + 32) = result;
      *(result + 48) = a3;
      a3[2].i64[0] = result;
      do
      {
        v17 = v12;
        if (*v12 <= *result && *(v12 + 4) <= *(result + 4) && *(v12 + 8) <= *(result + 8) && *(v12 + 16) >= *(result + 16) && *(v12 + 20) >= *(result + 20) && *(v12 + 24) >= *(result + 24))
        {
          break;
        }

        v18 = 0;
        v19 = *(v12 + 40) + 16;
        v20 = *(v12 + 48) + 16;
        do
        {
          v21 = (v19 + v18);
          v22 = *(v19 + v18 - 16);
          v23 = (v20 + v18);
          if (v22 >= *(v20 + v18 - 16))
          {
            v22 = *(v20 + v18 - 16);
          }

          *(v12 + v18) = v22;
          v24 = *v21;
          if (*v21 <= *v23)
          {
            v24 = *v23;
          }

          *(v12 + v18 + 16) = v24;
          v18 += 4;
        }

        while (v18 != 12);
        v12 = *(v12 + 32);
        result = v17;
      }

      while (v12);
    }

    else
    {
      *(result + 40) = v5;
      *(v5 + 32) = result;
      *(result + 48) = a3;
      a3[2].i64[0] = result;
      *v4 = result;
    }
  }

  else
  {
    *result = a3;
    a3[2].i64[0] = 0;
  }

  return result;
}

uint64_t sub_1AF0F8520(uint64_t *a1, uint64_t a2)
{
  if (*a1 == a2)
  {
    v4 = 0;
    *a1 = 0;
  }

  else
  {
    v3 = *(a2 + 32);
    v4 = *(v3 + 32);
    v5 = *(v3 + 8 * (*(v3 + 48) != a2) + 40);
    if (v4)
    {
      *(v4 + (*(v4 + 6) == v3) + 5) = v5;
      *(v5 + 32) = v4;
      sub_1AFDA72A0(a1[1]);
      a1[1] = v3;
      while (1)
      {
        v6 = 0;
        v8 = *v4;
        v7 = v4[1];
        v9 = *(v4 + 5) + 16;
        v10 = *(v4 + 6) + 16;
        do
        {
          v11 = (v9 + v6);
          v12 = *(v9 + v6 - 16);
          v13 = (v10 + v6);
          if (v12 >= *(v10 + v6 - 16))
          {
            v12 = *(v10 + v6 - 16);
          }

          *(v4 + v6) = v12;
          v14 = *v11;
          if (*v11 <= *v13)
          {
            v14 = *v13;
          }

          *(v4 + v6 + 16) = v14;
          v6 += 4;
        }

        while (v6 != 12);
        if (*&v8 == *v4 && *(&v8 + 1) == *(v4 + 1) && *(&v8 + 2) == *(v4 + 2) && *&v7 == *(v4 + 4) && *(&v7 + 1) == *(v4 + 5) && *(&v7 + 2) == *(v4 + 6))
        {
          break;
        }

        v4 = *(v4 + 4);
        if (!v4)
        {
          return *a1;
        }
      }
    }

    else
    {
      *a1 = v5;
      *(v5 + 32) = 0;
      sub_1AFDA72A0(a1[1]);
      a1[1] = v3;
      return *a1;
    }
  }

  return v4;
}

uint64_t sub_1AF0F8694(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (*a2 == v2 || a2[1] == v2)
  {
    (*(**(a1 + 16) + 64))(*(a1 + 16));
  }

  return 0;
}

uint64_t sub_1AF0F871C(uint64_t a1, char *a2, char *__src)
{
  v3 = 0;
  v25 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 4;
  v5 = 1;
  v6 = __src;
  do
  {
    v7 = v5;
    v8 = -1;
    v9 = a2;
    do
    {
      a2 = v6;
      v10 = v8;
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = v4 + 1;
        v13 = v10;
        v14 = 4 * (v3 ^ 1);
        v15 = 4 * v3;
        v16 = a2;
        v4 = 0;
        do
        {
          v17 = *&v9[v15];
          v18 = v17 * v13;
          v19 = *(a1 + 4 * v3);
          if ((v17 * v13) < v19)
          {
            *v16 = *&v9[v11];
            *(v16 + 1) = *&v9[v11 + 4];
            v4 = (v4 + 1);
            if ((v4 & 8) != 0)
            {
              goto LABEL_22;
            }

            v16 += 8;
            v17 = *&v9[v15];
            v19 = *(a1 + 4 * v3);
            v18 = v17 * v13;
          }

          v20 = &v9[v11 + 8];
          if (v12 == 2)
          {
            v20 = v9;
          }

          v21 = v18 < v19;
          v22 = *(v20 + 4 * v3);
          if (v21 != (v22 * v13) < v19)
          {
            *&v16[4 * (v3 ^ 1)] = *&v9[v14] + (((*(v20 + 4 * (v3 ^ 1)) - *&v9[v14]) / (v22 - v17)) * -(v17 - (v13 * v19)));
            *&v16[4 * v3] = *(a1 + 4 * v3) * v13;
            v4 = (v4 + 1);
            if ((v4 & 8) != 0)
            {
              goto LABEL_22;
            }

            v16 += 8;
          }

          --v12;
          v15 += 8;
          v14 += 8;
          v11 += 8;
        }

        while (v12 > 1);
      }

      else
      {
        v4 = 0;
      }

      if (a2 == __src)
      {
        v6 = &v24;
      }

      else
      {
        v6 = __src;
      }

      v8 = v10 + 2;
      v9 = a2;
    }

    while (v10 < 0);
    v5 = 0;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
LABEL_22:
  if (a2 != __src)
  {
    memcpy(__src, a2, 8 * v4);
  }

  return v4;
}

double sub_1AF0F88D8(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(*(a1 + 16) + 40) + 96 * a2;
  v4 = *(v3 + 64);
  v5 = *v3;
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  v9 = *(a1 + 24);
  v10 = v9[1];
  v11 = v9[2];
  v12 = vmulq_f32(*v9, v8);
  v13 = vmulq_f32(v10, v8);
  *v12.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vpadd_f32(*v12.f32, *v13.i8));
  v14 = vmulq_f32(v11, v8);
  v14.i32[3] = 0;
  *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  v7.i32[3] = 0;
  v6.i32[3] = 0;
  v15 = vaddq_f32(v9[3], v12);
  v5.i32[3] = 0;
  v29[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*v9)), v6, *v9->f32, 1), v7, *v9, 2);
  v29[1] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v10.f32[0]), v6, *v10.f32, 1), v7, v10, 2);
  v29[2] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v11.f32[0]), v6, *v11.f32, 1), v7, v11, 2);
  v29[3] = v15;
  v26[0] = 0;
  v26[1] = v4;
  v26[2] = v2;
  v26[3] = v29;
  v27 = -1;
  v28 = a2;
  v16 = *(a1 + 48);
  v20 = 0;
  v21 = xmmword_1AFE47B90;
  v22 = 0;
  v18 = &unk_1F2570B30;
  v24 = v16;
  v25 = a2;
  v19 = *(v16 + 8);
  v23 = *(v16 + 48);
  return sub_1AFD74880(*(a1 + 32), *(a1 + 40), v26, &v18);
}

void sub_1AF0F8A18(__n128 a1)
{
  nullsub_106(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF0F8A50(float32x4_t *a1, float32x4_t *a2, int a3, int a4, float a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = vmulq_f32(a1[5], *a2);
  v6 = vmulq_f32(*a2, a1[6]);
  v7 = vmulq_f32(*a2, a1[7]);
  v7.i32[3] = 0;
  *v5.i8 = vadd_f32(vpadd_f32(*v5.i8, *v6.i8), vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
  v5.u64[1] = vpadd_f32(vpadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), 0);
  v11[0] = a3;
  v11[1] = a4;
  v9 = &a1[3].i8[8];
  v8 = a1[3].i64[1];
  v12[0] = *(v9 + 1);
  v12[1] = v11;
  v13 = v5;
  v14 = a5;
  return (*(*v8 + 24))(v8, v12, 1);
}

void sub_1AF0F8B20(__n128 a1)
{
  nullsub_106(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF0F8B58(float32x4_t *a1, float32x4_t *a2, int a3, int a4, float a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = vmulq_f32(a1[5], *a2);
  v6 = vmulq_f32(*a2, a1[6]);
  v7 = vmulq_f32(*a2, a1[7]);
  v7.i32[3] = 0;
  *v5.i8 = vadd_f32(vpadd_f32(*v5.i8, *v6.i8), vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
  v5.u64[1] = vpadd_f32(vpadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), 0);
  v11[0] = a3;
  v11[1] = a4;
  v9 = &a1[3].i8[8];
  v8 = a1[3].i64[1];
  v12[0] = *(v9 + 1);
  v12[1] = v11;
  v13 = v5;
  v14 = a5;
  return (*(*v8 + 24))(v8, v12, 1);
}

uint64_t sub_1AF0F8C84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  v5[0] = -1;
  v5[1] = v3;
  if (!*(a2 + 8))
  {
    *(a2 + 8) = v5;
  }

  result = (*(**(a1 + 56) + 24))(*(a1 + 56));
  *(a1 + 8) = *(*(a1 + 56) + 8);
  return result;
}

void sub_1AF0F8CFC(__n128 a1)
{
  nullsub_106(a1);

  JUMPOUT(0x1B271C6B0);
}

float *sub_1AF0F8D34(uint64_t a1, __int128 *a2, __int128 *a3, int a4, int a5, float a6)
{
  v14 = *MEMORY[0x1E69E9840];
  v9[0] = a4;
  v9[1] = a5;
  result = *(a1 + 224);
  if (result[2] >= a6)
  {
    v10[0] = *(a1 + 232);
    v10[1] = v9;
    v8 = *a3;
    v11 = *a2;
    v12 = v8;
    v13 = a6;
    return (*(*result + 24))(result, v10, 1);
  }

  return result;
}

void sub_1AF0F8DDC(__n128 a1)
{
  nullsub_106(a1);

  JUMPOUT(0x1B271C6B0);
}

float *sub_1AF0F8E14(uint64_t a1, __int128 *a2, __int128 *a3, int a4, int a5, float a6)
{
  v14 = *MEMORY[0x1E69E9840];
  v9[0] = a4;
  v9[1] = a5;
  result = *(a1 + 224);
  if (result[2] >= a6)
  {
    v10[0] = *(a1 + 232);
    v10[1] = v9;
    v8 = *a3;
    v11 = *a2;
    v12 = v8;
    v13 = a6;
    return (*(*result + 24))(result, v10, 0);
  }

  return result;
}

uint64_t sub_1AF0F8EF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5[0] = -1;
  v5[1] = v3;
  if (!*(a2 + 8))
  {
    *(a2 + 8) = v5;
  }

  result = (*(**(a1 + 40) + 24))(*(a1 + 40));
  *(a1 + 8) = *(*(a1 + 40) + 8);
  return result;
}

void sub_1AF0F8F74(__n128 a1)
{
  nullsub_106(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF0F8FAC(float32x4_t *a1, __int128 *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v7[0] = xmmword_1AFE20150;
  v7[1] = xmmword_1AFE20160;
  v7[2] = xmmword_1AFE20180;
  v8 = 0;
  v9 = 0;
  v4 = a1[13].i32[0];
  v23 = a1[13].f32[1];
  v22 = &unk_1F2570A50;
  v24 = 0;
  v25 = 0;
  sub_1AFD86E64(&v18);
  v18 = &unk_1F2572270;
  v19 = 8;
  v20 = v4;
  v21 = v4;
  sub_1AFD8A774(&v13);
  v13 = &unk_1F2570DD8;
  v14 = 1;
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  v17 = a2[2];
  v11 = 953267991;
  v12 = 0;
  sub_1AFD95528(v6, &v18, &v13, v10);
  if (sub_1AFD9554C(v6, a1 + 1, a1 + 5, v7, v7, &v22) && a1[13].f32[1] > v23)
  {
    a1[13].f32[1] = v23;
  }

  nullsub_106();
  sub_1AFD8A7AC(&v13);
  nullsub_106();
}

uint64_t sub_1AF0F9194(uint64_t a1, _OWORD *a2, float a3)
{
  *(a1 + 40) = a3;
  *(a1 + 16) = *a2;
  v3 = (*(a1 + 36) + *(a1 + 32)) + a3;
  *(a1 + 40) = v3;
  if (v3 < 0.0)
  {
    *(a1 + 44) = 1;
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8));
}

uint64_t sub_1AF0F923C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  (*(**(a1 + 8) + 32))(*(a1 + 8), &v24, &v23 + 4, &v23, &v22, &v21, &v20 + 4, &v20, &v19, a2);
  v6 = 0;
  v7 = v21 + HIDWORD(v20) * a3;
  v8 = *(a1 + 8);
  v9 = v19;
  v10 = v23;
  v11 = v22;
  v12 = v24;
  do
  {
    if (v9 == 5)
    {
      v13 = *(v7 + v6 + 2);
    }

    else if (v9 == 3)
    {
      v13 = *(v7 + 2 * v6 + 4);
    }

    else
    {
      v13 = *(v7 + 4 * v6 + 8);
    }

    v14 = v12 + v11 * v13;
    if (v10)
    {
      *&v15 = vmul_f32(v8[2], vcvt_f32_f64(*v14));
      v16 = *(v14 + 16);
      v17 = v8[3].f32[0] * v16;
    }

    else
    {
      *&v15 = vmul_f32(*v14, v8[2]);
      v17 = *(v14 + 8) * v8[3].f32[0];
    }

    *(&v15 + 1) = LODWORD(v17);
    *&v25[16 * v6-- + 32] = v15;
  }

  while (v6 != -3);
  (*(**(a1 + 16) + 16))(*(a1 + 16), v25, a2, a3);
  return (*(**(a1 + 8) + 48))(*(a1 + 8), a2);
}

uint64_t sub_1AF0F9430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  (*(**(a1 + 8) + 32))(*(a1 + 8), &v24, &v23 + 4, &v23, &v22, &v21, &v20 + 4, &v20, &v19, a2);
  v6 = 0;
  v7 = v21 + HIDWORD(v20) * a3;
  v8 = *(a1 + 8);
  v9 = v19;
  v10 = v23;
  v11 = v22;
  v12 = v24;
  do
  {
    if (v9 == 3)
    {
      v13 = *(v7 + 2 * v6 + 4);
    }

    else if (v9 == 5)
    {
      v13 = *(v7 + v6 + 2);
    }

    else
    {
      v13 = *(v7 + 4 * v6 + 8);
    }

    v14 = v12 + v11 * v13;
    if (v10)
    {
      *&v15 = vmul_f32(v8[2], vcvt_f32_f64(*v14));
      v16 = *(v14 + 16);
      v17 = v8[3].f32[0] * v16;
    }

    else
    {
      *&v15 = vmul_f32(*v14, v8[2]);
      v17 = *(v14 + 8) * v8[3].f32[0];
    }

    *(&v15 + 1) = LODWORD(v17);
    *&v25[16 * v6-- + 32] = v15;
  }

  while (v6 != -3);
  (*(**(a1 + 16) + 16))(*(a1 + 16), v25, a2, a3);
  return (*(**(a1 + 8) + 48))(*(a1 + 8), a2);
}

uint64_t sub_1AF0F9624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  (*(**(a1 + 8) + 32))(*(a1 + 8), &v26, &v25, &v24, &v23, &v22, &v21 + 4, &v21, &v20, a2);
  v6 = v22 + HIDWORD(v21) * a3;
  v7 = *(a1 + 8);
  v8 = v20;
  v9 = v24;
  v10 = v23;
  v11 = v26;
  v12 = (a1 + 64);
  for (i = 2; i != -1; --i)
  {
    if (v8 == 2)
    {
      v14 = *(v6 + 4 * i);
    }

    else if (v8 == 3)
    {
      v14 = *(v6 + 2 * i);
    }

    else
    {
      v14 = *(v6 + i);
    }

    v15 = v11 + v10 * v14;
    if (v9)
    {
      *&v16 = vmul_f32(v7[2], vcvt_f32_f64(*v15));
      v17 = *(v15 + 16);
      v18 = v7[3].f32[0] * v17;
    }

    else
    {
      *&v16 = vmul_f32(*v15, v7[2]);
      v18 = *(v15 + 8) * v7[3].f32[0];
    }

    *(&v16 + 1) = LODWORD(v18);
    *v12-- = v16;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16), a1 + 32, a2, a3);
  return (*(**(a1 + 8) + 48))(*(a1 + 8), a2);
}

void sub_1AF0F97CC()
{
  if (__cxa_guard_acquire(qword_1EB6C1AE0))
  {
    dword_1EB6C1AF0 = 1065353216;
    unk_1EB6C1AFC = 0;
    unk_1EB6C1AF4 = 0;
    dword_1EB6C1B04 = 1065353216;
    qword_1EB6C1B08 = 0;
    unk_1EB6C1B10 = 0;
    qword_1EB6C1B18 = 1065353216;
    dword_1EB6C1B20 = -1082130432;
    unk_1EB6C1B2C = 0;
    unk_1EB6C1B24 = 0;
    dword_1EB6C1B34 = -1082130432;
    qword_1EB6C1B38 = 0;
    unk_1EB6C1B40 = 0;
    qword_1EB6C1B48 = 3212836864;

    __cxa_guard_release(qword_1EB6C1AE0);
  }
}

uint64_t sub_1AF0F9864@<X0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, int a3@<W2>, float32x4_t *a4@<X3>, float32x4_t *a5@<X8>)
{
  v9 = vmulq_f32(*a1, *a4);
  v19 = v9;
  v10 = a3;
  if (a3 > 3)
  {
    v18 = 0;
    result = off_1EE810978(a2, &v19, a3, &v18);
    if (result < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a3 < 1)
  {
    result = -1;
    goto LABEL_14;
  }

  v11 = 0;
  v12 = -1;
  v13 = -3.4028e38;
  do
  {
    v14 = vmulq_f32(v9, a2[v11]);
    v15 = vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)).f32[0];
    if (v15 > v13)
    {
      v13 = v15;
      v12 = v11;
    }

    ++v11;
  }

  while (a3 != v11);
  result = v12;
  if ((v12 & 0x8000000000000000) == 0)
  {
LABEL_12:
    if (result < v10)
    {
      v17 = a2[result];
LABEL_16:
      *a5 = vmulq_f32(v17, *a4);
      return result;
    }
  }

LABEL_14:
  if (a3 >= 1)
  {
    v17 = *a2;
    goto LABEL_16;
  }

  a5->i64[0] = 0;
  a5->i64[1] = 0;
  return result;
}

void sub_1AF0F9984(__n128 a1)
{
  nullsub_106(a1);

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF0F99BC(uint64_t a1, float32x4_t *a2, int a3, int a4)
{
  v6 = a2[1];
  v7 = vminq_f32(vminq_f32(*a2, xmmword_1AFEABE60), v6);
  v8 = vmaxq_f32(vmaxq_f32(*a2, xmmword_1AFEABE70), v6);
  v9 = a2[2];
  v10 = vminq_f32(v7, v9);
  v11 = vmaxq_f32(v8, v9);
  v12 = v10;
  *v12.i32 = v10.f32[0] + -0.001;
  v13 = v11;
  *v13.i32 = v11.f32[0] + 0.001;
  v9.i32[0] = 990057071;
  v14 = vdupq_lane_s32(*&vcgtq_f32(v9, vsubq_f32(v11, v10)), 0);
  v15 = vbslq_s8(v14, v12, v10);
  v16 = vbslq_s8(v14, v13, v11);
  if ((v16.f32[1] - v15.f32[1]) < 0.002)
  {
    v16.f32[1] = v16.f32[1] + 0.001;
    v15.f32[1] = v15.f32[1] + -0.001;
  }

  if ((v16.f32[2] - v15.f32[2]) < 0.002)
  {
    v16.f32[2] = v16.f32[2] + 0.001;
    v15.f32[2] = v15.f32[2] + -0.001;
  }

  v18 = *(a1 + 8);
  v17 = *(a1 + 16);
  v19 = v17[1];
  v20 = v17[3];
  v21 = *(v18 + 4);
  if (v21 == *(v18 + 8))
  {
    v22 = v21 ? 2 * v21 : 1;
    if (v21 < v22)
    {
      v35 = v16;
      v36 = v15;
      v33 = v20;
      v34 = v19;
      if (v22)
      {
        v23 = sub_1AFDA7294(16 * v22, 16);
        v20 = v33;
        v19 = v34;
        v16 = v35;
        v15 = v36;
        v24 = v23;
        v21 = *(v18 + 4);
      }

      else
      {
        v24 = 0;
      }

      if (v21 >= 1)
      {
        v25 = 0;
        v26 = 16 * v21;
        do
        {
          *(v24 + v25) = *(*(v18 + 16) + v25);
          v25 += 16;
        }

        while (v26 != v25);
      }

      v27 = *(v18 + 16);
      if (v27 && *(v18 + 24) == 1)
      {
        sub_1AFDA72A0(v27);
        v20 = v33;
        v19 = v34;
        v16 = v35;
        v15 = v36;
      }

      *(v18 + 24) = 1;
      *(v18 + 16) = v24;
      *(v18 + 8) = v22;
      v21 = *(v18 + 4);
    }
  }

  v28 = vmulq_f32(v20, vsubq_f32(v16, v19));
  v29 = (v28.f32[1] + 1.0) | 1;
  v30 = vmulq_f32(v20, vsubq_f32(v15, v19));
  v31 = *(v18 + 16) + 16 * v21;
  v30.f32[3] = v28.f32[0] + 1.0;
  *v28.f32 = vmovn_s32(vcvtq_u32_f32(v30));
  v30.i32[0] = v28.i32[0] & 0xFFFEFFFE;
  v30.i16[2] = v28.i16[2] & 0xFFFE;
  *&result = v28.i64[0] | 0x1000100010001;
  v30.i16[3] = HIWORD(result);
  *v31 = v30.i64[0];
  *(v31 + 8) = v29;
  *(v31 + 10) = (v28.f32[2] + 1.0) | 1;
  *(v31 + 12) = a4 | (a3 << 21);
  ++*(v18 + 4);
  return result;
}

void sub_1AF0F9BE8(__n128 a1)
{
  nullsub_106(a1);

  JUMPOUT(0x1B271C6B0);
}

float32x4_t sub_1AF0F9C20(uint64_t a1, float32x4_t *a2, __int32 a3, __int32 a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a1 + 8);
  v10 = *(v9 + 4);
  if (v10 == *(v9 + 8))
  {
    v11 = v10 ? 2 * v10 : 1;
    if (v10 < v11)
    {
      v23 = a2[1];
      v24 = *a2;
      v22 = a2[2];
      if (v11)
      {
        v12 = sub_1AFDA7294(v11 << 6, 16);
        v8 = v22;
        v7 = v23;
        v6 = v24;
        v13 = v12;
        v10 = *(v9 + 4);
      }

      else
      {
        v13 = 0;
      }

      if (v10 >= 1)
      {
        v14 = 0;
        v15 = v10 << 6;
        do
        {
          v16 = (v13 + v14);
          v17 = (*(v9 + 16) + v14);
          *v16 = *v17;
          v16[1] = v17[1];
          v18 = v17[3];
          v16[2] = v17[2];
          v16[3] = v18;
          v14 += 64;
        }

        while (v15 != v14);
      }

      v19 = *(v9 + 16);
      if (v19 && *(v9 + 24) == 1)
      {
        sub_1AFDA72A0(v19);
        v8 = v22;
        v7 = v23;
        v6 = v24;
      }

      *(v9 + 24) = 1;
      *(v9 + 16) = v13;
      *(v9 + 8) = v11;
      v10 = *(v9 + 4);
    }
  }

  result = vmaxq_f32(vmaxq_f32(vmaxq_f32(v6, xmmword_1AFEABE70), v7), v8);
  v21 = (*(v9 + 16) + (v10 << 6));
  *v21 = vminq_f32(vminq_f32(vminq_f32(v6, xmmword_1AFEABE60), v7), v8);
  v21[1] = result;
  v21[2].i32[0] = -1;
  v21[2].i32[1] = a3;
  v21[2].i32[2] = a4;
  ++*(v9 + 4);
  return result;
}

void sub_1AF0F9D7C()
{
  if (__cxa_guard_acquire(qword_1EB6C1B50))
  {
    dword_1EB6C1B60 = 1065353216;
    unk_1EB6C1B6C = 0;
    unk_1EB6C1B64 = 0;
    dword_1EB6C1B74 = 1065353216;
    qword_1EB6C1B78 = 0;
    unk_1EB6C1B80 = 0;
    qword_1EB6C1B88 = 1065353216;
    dword_1EB6C1B90 = -1082130432;
    unk_1EB6C1B9C = 0;
    unk_1EB6C1B94 = 0;
    dword_1EB6C1BA4 = -1082130432;
    qword_1EB6C1BA8 = 0;
    unk_1EB6C1BB0 = 0;
    qword_1EB6C1BB8 = 3212836864;

    __cxa_guard_release(qword_1EB6C1B50);
  }
}

void sub_1AF0F9E14()
{
  if (__cxa_guard_acquire(qword_1EB6C1BC0))
  {
    xmmword_1EB6C1BD0 = xmmword_1AFEAC090;
    unk_1EB6C1BE0 = xmmword_1AFEAC0A0;
    xmmword_1EB6C1BF0 = xmmword_1AFEAC0B0;
    unk_1EB6C1C00 = xmmword_1AFEAC0C0;
    xmmword_1EB6C1C10 = xmmword_1AFEAC0D0;
    unk_1EB6C1C20 = xmmword_1AFEAC0E0;
    xmmword_1EB6C1C30 = xmmword_1AFEAC0F0;
    unk_1EB6C1C40 = xmmword_1AFEAC100;
    xmmword_1EB6C1C50 = xmmword_1AFEAC110;
    unk_1EB6C1C60 = xmmword_1AFEAC120;
    xmmword_1EB6C1C70 = xmmword_1AFEAC130;
    unk_1EB6C1C80 = xmmword_1AFEAC140;
    xmmword_1EB6C1C90 = xmmword_1AFEAC150;
    unk_1EB6C1CA0 = xmmword_1AFEAC160;
    xmmword_1EB6C1CB0 = xmmword_1AFEAC170;
    unk_1EB6C1CC0 = xmmword_1AFEAC180;
    xmmword_1EB6C1CD0 = xmmword_1AFEAC190;
    unk_1EB6C1CE0 = xmmword_1AFEAC1A0;
    xmmword_1EB6C1CF0 = xmmword_1AFEAC1B0;
    unk_1EB6C1D00 = xmmword_1AFEAC1C0;
    xmmword_1EB6C1D10 = xmmword_1AFEAC1D0;
    unk_1EB6C1D20 = xmmword_1AFEAC1E0;
    xmmword_1EB6C1D30 = xmmword_1AFEAC1F0;
    unk_1EB6C1D40 = xmmword_1AFEAC200;
    xmmword_1EB6C1D50 = xmmword_1AFEAC210;
    unk_1EB6C1D60 = xmmword_1AFE20B60;
    xmmword_1EB6C1D70 = xmmword_1AFEAC220;
    unk_1EB6C1D80 = xmmword_1AFEAC230;
    xmmword_1EB6C1D90 = xmmword_1AFEAC240;
    unk_1EB6C1DA0 = xmmword_1AFEAC250;
    xmmword_1EB6C1DB0 = xmmword_1AFE8B8F0;
    unk_1EB6C1DC0 = xmmword_1AFEAC260;
    xmmword_1EB6C1DD0 = xmmword_1AFEAC270;
    unk_1EB6C1DE0 = xmmword_1AFEAC280;
    xmmword_1EB6C1DF0 = xmmword_1AFEAC290;
    unk_1EB6C1E00 = xmmword_1AFEAC2A0;
    xmmword_1EB6C1E10 = xmmword_1AFEAC2B0;
    unk_1EB6C1E20 = xmmword_1AFEAC2C0;
    xmmword_1EB6C1E30 = xmmword_1AFEAC2D0;
    unk_1EB6C1E40 = xmmword_1AFEAC2E0;
    xmmword_1EB6C1E50 = xmmword_1AFEAC2F0;
    unk_1EB6C1E60 = xmmword_1AFEAC300;

    __cxa_guard_release(qword_1EB6C1BC0);
  }
}

void sub_1AF0FA00C(__n128 a1)
{
  nullsub_106(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF0FA044(uint64_t result, float *a2)
{
  v2 = *a2;
  v3 = a2[4];
  if (*a2 >= v3)
  {
    v4 = a2[4];
  }

  else
  {
    v4 = *a2;
  }

  v5 = a2[8];
  if (v4 >= v5)
  {
    v4 = a2[8];
  }

  if (v4 <= *(result + 32))
  {
    v6 = v2 <= v3;
    if (v2 <= v3)
    {
      v2 = a2[4];
    }

    v7 = 4 * v6;
    if (v2 <= v5)
    {
      v7 = 8;
    }

    if (a2[v7] >= *(result + 16))
    {
      v8 = a2 + 2;
      v9 = a2[2];
      v10 = a2[6];
      v11 = a2[10];
      if (v9 >= v10)
      {
        v12 = a2[6];
      }

      else
      {
        v12 = a2[2];
      }

      if (v12 >= v11)
      {
        v12 = a2[10];
      }

      if (v12 <= *(result + 40))
      {
        if (v9 <= v10)
        {
          v9 = a2[6];
          v8 = a2 + 6;
        }

        if (v9 <= v11)
        {
          v8 = a2 + 10;
        }

        if (*v8 >= *(result + 24))
        {
          v13 = a2 + 1;
          v14 = a2[1];
          v15 = a2[5];
          v16 = a2[9];
          if (v14 >= v15)
          {
            v17 = a2[5];
          }

          else
          {
            v17 = a2[1];
          }

          if (v17 >= v16)
          {
            v17 = a2[9];
          }

          if (v17 <= *(result + 36))
          {
            if (v14 <= v15)
            {
              v14 = a2[5];
              v13 = a2 + 5;
            }

            if (v14 <= v16)
            {
              v13 = a2 + 9;
            }

            if (*v13 >= *(result + 20))
            {
              return (*(**(result + 8) + 16))(*v13);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF0FA174(uint64_t result, float32x4_t *a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6, int a7)
{
  *a5 = 0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  a6->i64[0] = result;
  a6->i64[1] = a3;
  v7 = *a2;
  v8 = a2[1];
  v7.i32[3] = 0;
  v8.i32[3] = 0;
  v9 = a2[2];
  v9.i32[3] = 0;
  v10 = a4[1];
  v11 = a4[2];
  v12 = vmulq_n_f32(v7, COERCE_FLOAT(*a4));
  v13 = vmulq_lane_f32(v7, *a4->f32, 1);
  v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v7, *a4, 2), v8, v10, 2), v9, v11, 2);
  a6[1] = vmlaq_n_f32(vmlaq_n_f32(v12, v8, v10.f32[0]), v9, v11.f32[0]);
  a6[2] = vmlaq_lane_f32(vmlaq_lane_f32(v13, v8, *v10.f32, 1), v9, *v11.f32, 1);
  a6[3] = v14;
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a2[2];
  v19 = vsubq_f32(a4[3], a2[3]);
  v19.i32[3] = 0;
  v20 = *a2;
  v21 = a2[1];
  v15.i32[3] = 0;
  v20.i32[3] = 0;
  v16.i32[3] = 0;
  v22 = vmlaq_laneq_f32(vmulq_laneq_f32(v15, *a2, 2), v16, v21, 2);
  v23 = vmlaq_lane_f32(vmulq_lane_f32(v15, *a2->f32, 1), v16, *v21.f32, 1);
  v21.i32[3] = 0;
  v17.i32[3] = 0;
  v24 = vmlaq_laneq_f32(v22, v17, v18, 2);
  v18.i32[3] = 0;
  a6[4] = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v15, COERCE_FLOAT(*a2)), v16, v21.f32[0]), v17, v18.f32[0]);
  a6[5] = vmlaq_lane_f32(v23, v17, *v18.f32, 1);
  a6[6] = v24;
  a6[7] = vaddq_f32(vaddq_f32(vmulq_n_f32(v20, v19.f32[0]), vmulq_lane_f32(v21, *v19.f32, 1)), vmulq_laneq_f32(v18, v19, 2));
  v25 = sub_1AFD885CC;
  if (a7)
  {
    v25 = sub_1AFD88988;
  }

  a6[8].i64[0] = v25;
  a6[8].i64[1] = 0;
  return result;
}

uint64_t sub_1AF0FA290(uint64_t result, _OWORD *a2, _OWORD *a3, float a4)
{
  *(result + 16) = *a2;
  *(result + 32) = *a3;
  *(result + 48) = a4;
  *(result + 52) = 1;
  return result;
}

void sub_1AF0FA2B0()
{
  if (__cxa_guard_acquire(qword_1EB6C1FB0))
  {
    xmmword_1EB6C1FC0 = xmmword_1AFEAC090;
    unk_1EB6C1FD0 = xmmword_1AFEAC0A0;
    xmmword_1EB6C1FE0 = xmmword_1AFEAC0B0;
    unk_1EB6C1FF0 = xmmword_1AFEAC0C0;
    xmmword_1EB6C2000 = xmmword_1AFEAC0D0;
    unk_1EB6C2010 = xmmword_1AFEAC0E0;
    xmmword_1EB6C2020 = xmmword_1AFEAC0F0;
    unk_1EB6C2030 = xmmword_1AFEAC100;
    xmmword_1EB6C2040 = xmmword_1AFEAC110;
    unk_1EB6C2050 = xmmword_1AFEAC120;
    xmmword_1EB6C2060 = xmmword_1AFEAC130;
    unk_1EB6C2070 = xmmword_1AFEAC140;
    xmmword_1EB6C2080 = xmmword_1AFEAC150;
    unk_1EB6C2090 = xmmword_1AFEAC160;
    xmmword_1EB6C20A0 = xmmword_1AFEAC170;
    unk_1EB6C20B0 = xmmword_1AFEAC180;
    xmmword_1EB6C20C0 = xmmword_1AFEAC190;
    unk_1EB6C20D0 = xmmword_1AFEAC1A0;
    xmmword_1EB6C20E0 = xmmword_1AFEAC1B0;
    unk_1EB6C20F0 = xmmword_1AFEAC1C0;
    xmmword_1EB6C2100 = xmmword_1AFEAC1D0;
    unk_1EB6C2110 = xmmword_1AFEAC1E0;
    xmmword_1EB6C2120 = xmmword_1AFEAC1F0;
    unk_1EB6C2130 = xmmword_1AFEAC200;
    xmmword_1EB6C2140 = xmmword_1AFEAC210;
    unk_1EB6C2150 = xmmword_1AFE20B60;
    xmmword_1EB6C2160 = xmmword_1AFEAC220;
    unk_1EB6C2170 = xmmword_1AFEAC230;
    xmmword_1EB6C2180 = xmmword_1AFEAC240;
    unk_1EB6C2190 = xmmword_1AFEAC250;
    xmmword_1EB6C21A0 = xmmword_1AFE8B8F0;
    unk_1EB6C21B0 = xmmword_1AFEAC260;
    xmmword_1EB6C21C0 = xmmword_1AFEAC270;
    unk_1EB6C21D0 = xmmword_1AFEAC280;
    xmmword_1EB6C21E0 = xmmword_1AFEAC290;
    unk_1EB6C21F0 = xmmword_1AFEAC2A0;
    xmmword_1EB6C2200 = xmmword_1AFEAC2B0;
    unk_1EB6C2210 = xmmword_1AFEAC2C0;
    xmmword_1EB6C2220 = xmmword_1AFEAC2D0;
    unk_1EB6C2230 = xmmword_1AFEAC2E0;
    xmmword_1EB6C2240 = xmmword_1AFEAC2F0;
    unk_1EB6C2250 = xmmword_1AFEAC300;

    __cxa_guard_release(qword_1EB6C1FB0);
  }
}

uint64_t sub_1AF0FA4A4(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float *a6, float32x4_t *a7, float32x4_t *a8)
{
  v25 = 0;
  v24 = 0.0;
  v23 = 0.0;
  sub_1AFD87FAC(a1, a3, a5, &v25 + 1, &v25, &v22, &v21);
  sub_1AFD87FAC(a2, a4, a5, &v24, &v23, &v20, &v19);
  if (*&v25 < v24 || v23 < *(&v25 + 1))
  {
    return 0;
  }

  v15 = *&v25 - v24;
  v16 = (*&v25 - v24) < (v23 - *(&v25 + 1));
  if ((*&v25 - v24) >= (v23 - *(&v25 + 1)))
  {
    v15 = v23 - *(&v25 + 1);
  }

  *a6 = v15;
  v17 = &v22;
  if (v16)
  {
    v17 = &v21;
  }

  *a7 = *v17;
  v18 = &v19;
  if (v16)
  {
    v18 = &v20;
  }

  *a8 = *v18;
  return 1;
}

float32x2_t sub_1AF0FA59C(float32x4_t *a1, float32x2_t *a2, int a3)
{
  if (a1)
  {
    if ((a1[12].i32[0] & a3) != 0)
    {
      v3 = a1[1];
      v3.i32[3] = 0;
      v4 = a1[2];
      v4.i32[3] = 0;
      v5 = a1[3];
      v5.i32[3] = 0;
      v6 = vmulq_f32(a1[11], vaddq_f32(vaddq_f32(vmulq_n_f32(v3, COERCE_FLOAT(*a2->f32)), vmulq_lane_f32(v4, *a2, 1)), vmulq_laneq_f32(v5, *a2->f32, 2)));
      v7 = vmulq_f32(v6, a1[1]);
      v8 = vmulq_f32(v6, a1[2]);
      v9 = vmulq_f32(v6, a1[3]);
      v9.i32[3] = 0;
      *v7.i8 = vadd_f32(vpadd_f32(*v7.i8, *v8.i8), vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
      result = vpadd_f32(vpadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)), 0);
      v7.u64[1] = result;
      *a2->f32 = v7;
    }
  }

  return result;
}

void sub_1AF0FA62C()
{
  if (__cxa_guard_acquire(qword_1EB6C23B0))
  {
    v0[0] = 0;
    v0[1] = 0;
    sub_1AFDA66C4(&unk_1EB6C23C0, 0, 0, v0, 0.0);
    __cxa_atexit(sub_1AFDA1C6C, &unk_1EB6C23C0, &dword_1AF0CE000);
    __cxa_guard_release(qword_1EB6C23B0);
  }
}

uint64_t sub_1AF0FA6A8(uint64_t a1, int a2)
{
  v3 = off_1EE810968(a1 + a2 - 1 + 8);
  v4 = 0;
  if (v3)
  {
    v4 = (v3 + a2 + 7) & -a2;
    *(v4 - 8) = v3;
  }

  return v4;
}

void sub_1AF0FA700(uint64_t a1)
{
  if (a1)
  {
    off_1EE810970(*(a1 - 8));
  }
}

uint64_t sub_1AF0FA728(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(a2 + 4);
    v5 = *(a2 + 8);
    *(a1 + 120) = v2;
    v6 = v2;
    if (v2 == v5)
    {
      v7 = v2 ? 2 * v2 : 1;
      v6 = v2;
      if (v2 < v7)
      {
        if (v7)
        {
          v8 = sub_1AFDA7294(8 * v7, 16);
          v6 = *(a2 + 4);
        }

        else
        {
          v8 = 0;
          v6 = v2;
        }

        if (v6 >= 1)
        {
          v9 = 0;
          do
          {
            *(v8 + v9) = *(*(a2 + 16) + v9);
            v9 += 8;
          }

          while (8 * v6 != v9);
        }

        v10 = *(a2 + 16);
        if (v10 && *(a2 + 24) == 1)
        {
          sub_1AFDA72A0(v10);
          v6 = *(a2 + 4);
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v8;
        *(a2 + 8) = v7;
      }
    }

    *(*(a2 + 16) + 8 * v6) = a1;
    *(a2 + 4) = v6 + 1;
  }

  return v2;
}

uint64_t sub_1AF0FA81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((byte_1EB6C2688 & 1) == 0)
  {
    v11 = 0;
    v10 = 4;
    if (!sysctlbyname("hw.optional.neon_hpfp", &v11, &v10, 0, 0) && v11)
    {
      dword_1EB6C2684 |= 0x2000u;
    }

    byte_1EB6C2688 = 1;
  }

  v8 = sub_1AF0FA8FC;
  if (dword_1EB6C2684 < 0x2000)
  {
    v8 = sub_1AF0FAB14;
  }

  off_1EE810978 = v8;
  return (v8)(a1, a2, a3, a4);
}

uint64_t sub_1AF0FA8FC(uint64_t a1, int32x4_t *a2, unint64_t a3, _DWORD *a4)
{
  v4 = *a2;
  v5 = vdupq_lane_s64(a2->i64[0], 0);
  v6 = vdupq_laneq_s32(*a2, 2);
  v7 = xmmword_1AFE202E0;
  if (a3 >= 8)
  {
    v9.i64[0] = 0x7F0000007FLL;
    v9.i64[1] = 0x7F0000007FLL;
    v8.i64[0] = -1;
    v8.i64[1] = -1;
    v10 = 4;
    v11.i64[0] = 0x400000004;
    v11.i64[1] = 0x400000004;
    v12.i64[0] = 0x800000008;
    v12.i64[1] = 0x800000008;
    do
    {
      v13 = *(a1 + 16);
      v14 = *(a1 + 48);
      v15.i64[0] = *a1;
      v15.i64[1] = *(a1 + 16);
      v16.i64[0] = *(a1 + 32);
      v16.i64[1] = *(a1 + 48);
      v13.i32[0] = *(a1 + 8);
      v14.i32[0] = *(a1 + 40);
      v17 = vmlaq_f32(vpaddq_f32(vmulq_f32(v15, v5), vmulq_f32(v16, v5)), v6, vuzp1q_s32(v13, v14));
      v18 = vcgeq_f32(v9, v17);
      v19 = vmaxnmq_f32(v17, v9);
      v20 = vbslq_s8(v18, v8, v7);
      v21 = *(a1 + 64);
      v22 = *(a1 + 80);
      v23 = *(a1 + 96);
      v24 = *(a1 + 112);
      a1 += 128;
      v16.i64[0] = v21;
      v16.i64[1] = v22.i64[0];
      v25.i64[0] = v23;
      v25.i64[1] = v24.i64[0];
      v22.i32[0] = DWORD2(v21);
      v24.i32[0] = DWORD2(v23);
      v26 = vmlaq_f32(vpaddq_f32(vmulq_f32(v16, v5), vmulq_f32(v25, v5)), v6, vuzp1q_s32(v22, v24));
      v27 = vcgeq_f32(v19, v26);
      v9 = vmaxnmq_f32(v26, v19);
      v8 = vbslq_s8(v27, v20, vaddq_s32(v7, v11));
      v7 = vaddq_s32(v7, v12);
      v28 = v10 + 12;
      v10 += 8;
    }

    while (v28 <= a3);
  }

  else
  {
    v8.i64[0] = -1;
    v8.i64[1] = -1;
    v9.i64[0] = 0x7F0000007FLL;
    v9.i64[1] = 0x7F0000007FLL;
    v10 = 4;
  }

  if (v10 <= a3)
  {
    v29.i64[0] = 0x400000004;
    v29.i64[1] = 0x400000004;
    do
    {
      v30 = *(a1 + 16);
      v31 = *(a1 + 48);
      v32.i64[0] = *a1;
      v32.i64[1] = *(a1 + 16);
      v33.i64[0] = *(a1 + 32);
      v33.i64[1] = *(a1 + 48);
      v30.i32[0] = *(a1 + 8);
      v31.i32[0] = *(a1 + 40);
      a1 += 64;
      v34 = vmlaq_f32(vpaddq_f32(vmulq_f32(v32, v5), vmulq_f32(v33, v5)), v6, vuzp1q_s32(v30, v31));
      v35 = vcgeq_f32(v9, v34);
      v9 = vmaxnmq_f32(v34, v9);
      v8 = vbslq_s8(v35, v8, v7);
      v7 = vaddq_s32(v7, v29);
      v10 += 4;
    }

    while (v10 <= a3);
  }

  if ((a3 & 3) > 1)
  {
    if ((a3 & 3) != 2)
    {
      v42 = *(a1 + 16);
      v43.i64[0] = *a1;
      v43.i64[1] = *(a1 + 16);
      v42.i32[0] = *(a1 + 8);
      v44 = vmlaq_f32(vpaddq_f32(vmulq_f32(v43, v5), vdupq_lane_s64(vmulq_f32(*(a1 + 32), v4).i64[0], 0)), v6, vuzp1q_s32(v42, vdupq_laneq_s32(*(a1 + 32), 2)));
      v45 = vcgeq_f32(v9, v44);
      v9 = vmaxnmq_f32(v44, v9);
      v8 = vbslq_s8(v45, v8, v7);
      goto LABEL_15;
    }

    v38 = *a1;
    v39 = vuzp1q_s32(*a1, *(a1 + 16));
    v38.i64[1] = *(a1 + 16);
    v40 = vmulq_f32(v38, v5);
    v37 = vaddq_f32(vmlaq_f32(vuzp2q_s32(v40, v40), v6, vuzp2q_s32(v39, v39)), vuzp1q_s32(v40, v40));
    goto LABEL_13;
  }

  if ((a3 & 3) != 0)
  {
    v36 = vmulq_f32(*a1, v4);
    v37 = vaddq_f32(vaddq_f32(vdupq_lane_s32(*v36.i8, 0), vdupq_lane_s32(*v36.i8, 1)), vdupq_laneq_s32(v36, 2));
LABEL_13:
    v41 = vcgeq_f32(v9, v37);
    v9 = vmaxnmq_f32(v37, v9);
    v8 = vbslq_s8(v41, v8, v7);
  }

LABEL_15:
  v46 = vextq_s8(v9, v9, 8uLL).u64[0];
  v47 = vcge_f32(*v9.f32, v46);
  v48 = vmaxnm_f32(v46, *v9.f32);
  v49 = vbsl_s8(v47, *v8.i8, *&vextq_s8(v8, v8, 8uLL));
  v50 = vdup_lane_s32(v48, 1);
  *a4 = vmaxnm_f32(v50, v48).u32[0];
  return vbsl_s8(vcge_f32(v48, v50), v49, vdup_lane_s32(v49, 1)).u32[0];
}

float sub_1AF0FAB14(int8x16_t *a1, int32x4_t *a2, unint64_t a3, _DWORD *a4)
{
  v4 = *a2;
  v5 = vdup_laneq_s32(*a2, 2);
  if (a3 >= 8)
  {
    v11 = -1;
    v7 = 0x300000002;
    v6 = 0x100000000;
    v12 = 0x7F0000007FLL;
    v10 = 4;
    v9 = 0x7F0000007FLL;
    v8 = -1;
    do
    {
      v13 = a1[1];
      v14 = a1[2];
      v15 = a1[3];
      v16 = vmul_f32(*v13.i8, *v4.f32);
      v17 = vmul_f32(*v14.i8, *v4.f32);
      v18 = vzip1_s32(*&vextq_s8(*a1, *a1, 8uLL), *&vextq_s8(v13, v13, 8uLL));
      *v13.i8 = vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL));
      *v14.i8 = vmla_f32(vpadd_f32(vmul_f32(*a1->i8, *v4.f32), v16), v5, v18);
      *v15.i8 = vmla_f32(vpadd_f32(v17, vmul_f32(*v15.i8, *v4.f32)), v5, *v13.i8);
      v19 = vcge_f32(v12, *v14.i8);
      *v13.i8 = vcge_f32(v9, *v15.i8);
      v20 = vmaxnm_f32(*v14.i8, v12);
      v21 = vmaxnm_f32(*v15.i8, v9);
      v22 = a1[4];
      v23 = a1[5];
      v24 = a1[6];
      v25 = a1[7];
      a1 += 8;
      v26 = vmul_f32(*v22.i8, *v4.f32);
      v27 = vmul_f32(*v23.i8, *v4.f32);
      v28 = vmul_f32(*v24.i8, *v4.f32);
      *v22.i8 = vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL));
      *v23.i8 = vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL));
      *v24.i8 = vmla_f32(vpadd_f32(v26, v27), v5, *v22.i8);
      *v25.i8 = vmla_f32(vpadd_f32(v28, vmul_f32(*v25.i8, *v4.f32)), v5, *v23.i8);
      *v22.i8 = vcge_f32(v20, *v24.i8);
      *v23.i8 = vcge_f32(v21, *v25.i8);
      v12 = vmaxnm_f32(*v24.i8, v20);
      v9 = vmaxnm_f32(*v25.i8, v21);
      v11 = vbsl_s8(*v22.i8, vbsl_s8(v19, v11, v6), vadd_s32(v6, 0x400000004));
      v8 = vbsl_s8(*v23.i8, vbsl_s8(*v13.i8, v8, v7), vadd_s32(v7, 0x400000004));
      v6 = vadd_s32(v6, 0x800000008);
      v7 = vadd_s32(v7, 0x800000008);
      v29 = v10 + 12;
      v10 += 8;
    }

    while (v29 <= a3);
  }

  else
  {
    v6 = 0x100000000;
    v7 = 0x300000002;
    v8 = -1;
    v9 = 0x7F0000007FLL;
    v10 = 4;
    v11 = -1;
    v12 = 0x7F0000007FLL;
  }

  for (; v10 <= a3; v10 += 4)
  {
    v30 = *a1;
    v31 = a1[1];
    v32 = a1[2];
    v33 = a1[3];
    a1 += 4;
    v34 = vmul_f32(*v30.i8, *v4.f32);
    v35 = vmul_f32(*v31.i8, *v4.f32);
    v36 = vmul_f32(*v32.i8, *v4.f32);
    *v30.i8 = vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v31, v31, 8uLL));
    *v31.i8 = vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v33, v33, 8uLL));
    *v32.i8 = vmla_f32(vpadd_f32(v34, v35), v5, *v30.i8);
    *v33.i8 = vmla_f32(vpadd_f32(v36, vmul_f32(*v33.i8, *v4.f32)), v5, *v31.i8);
    *v30.i8 = vcge_f32(v12, *v32.i8);
    *v31.i8 = vcge_f32(v9, *v33.i8);
    v12 = vmaxnm_f32(*v32.i8, v12);
    v9 = vmaxnm_f32(*v33.i8, v9);
    v11 = vbsl_s8(*v30.i8, v11, v6);
    v8 = vbsl_s8(*v31.i8, v8, v7);
    v6 = vadd_s32(v6, 0x400000004);
    v7 = vadd_s32(v7, 0x400000004);
  }

  if ((a3 & 3) > 1)
  {
    if ((a3 & 3) == 2)
    {
      v39 = vmla_f32(vpadd_f32(vmul_f32(*a1->i8, *v4.f32), vmul_f32(*a1[1].i8, *v4.f32)), v5, vzip1_s32(*&vextq_s8(*a1, *a1, 8uLL), *&vextq_s8(a1[1], a1[1], 8uLL)));
      v40 = vcge_f32(v12, v39);
      v12 = vmaxnm_f32(v39, v12);
      v11 = vbsl_s8(v40, v11, v6);
    }

    else
    {
      v41 = a1[1];
      v42 = vmul_f32(*a1->i8, *v4.f32);
      v43 = vmul_f32(*v41.i8, *v4.f32);
      v44 = vmulq_f32(a1[2], v4);
      v45 = vmla_f32(vpadd_f32(v42, v43), v5, vzip1_s32(*&vextq_s8(*a1, *a1, 8uLL), *&vextq_s8(v41, v41, 8uLL)));
      v46 = vadd_f32(vpadd_f32(*v44.i8, *v44.i8), vdup_laneq_s32(v44, 2));
      *v44.i8 = vcge_f32(v12, v45);
      v47 = vcge_f32(v9, v46);
      v12 = vmaxnm_f32(v45, v12);
      v9 = vmaxnm_f32(v46, v9);
      v11 = vbsl_s8(*v44.i8, v11, v6);
      v8 = vbsl_s8(v47, v8, v7);
    }
  }

  else if ((a3 & 3) != 0)
  {
    v37 = vmulq_f32(*a1, v4);
    *v37.i8 = vadd_f32(vdup_laneq_s32(v37, 2), vpadd_f32(*v37.i8, *v37.i8));
    v38 = vcge_f32(v12, *v37.i8);
    v12 = vmaxnm_f32(*v37.i8, v12);
    v11 = vbsl_s8(v38, v11, v6);
  }

  v48 = vmaxnm_f32(v9, v12);
  v49 = vbsl_s8(vcge_f32(v12, v9), v11, v8);
  v50 = vdup_lane_s32(v48, 1);
  LODWORD(result) = vbsl_s8(vcge_f32(v48, v50), v49, vdup_lane_s32(v49, 1)).u32[0];
  *a4 = vmaxnm_f32(v50, v48).u32[0];
  return result;
}

void sub_1AF0FADA4()
{
  if ((atomic_load_explicit(&qword_1EB6C2690, memory_order_acquire) & 1) == 0)
  {
    sub_1AF0FADD4();
  }
}

void sub_1AF0FADD4()
{
  if (__cxa_guard_acquire(&qword_1EB6C2690))
  {
    qword_1EB6C2698 = "bilinear";
    xmmword_1EB6C26A0 = xmmword_1AFEAC510;
    qword_1EB6C26B0 = "catmark";
    unk_1EB6C26B8 = xmmword_1AFEAC520;
    qword_1EB6C26C8 = "loop";
    xmmword_1EB6C26D0 = xmmword_1AFEAC530;

    __cxa_guard_release(&qword_1EB6C2690);
  }
}

id sub_1AF0FAE6C(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_commandBuffer(a3[1], v7, v8, v9);
  v14 = objc_msgSend_blitCommandEncoder(v10, v11, v12, v13);
  v16 = objc_msgSend_newBufferWithBytes_length_options_(*a3, v15, a1, a2, 0);
  v18 = objc_msgSend_newBufferWithLength_options_(*a3, v17, a2, 32);
  objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v14, v19, v16, 0, v18, 0, a2);
  objc_msgSend_endEncoding(v14, v20, v21, v22);
  objc_msgSend_commit(v10, v23, v24, v25);
  objc_msgSend_waitUntilCompleted(v10, v26, v27, v28);

  objc_autoreleasePoolPop(v6);

  return v18;
}

void sub_1AF0FAF84(int a1, int a2, unint64_t a3, uint64_t *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21)
{
  v33 = a2;
  if (a2)
  {
    v24 = 0;
  }

  else
  {
    v24 = a3;
  }

  sub_1AF121C28(a5, (a4[1] - *a4) >> 2);
  v35 = a6;
  v38 = a7;
  sub_1AF121C28(a7, (a6[1] - *a6) >> 2);
  sub_1AF121C28(a9, (a8[1] - *a8) >> 2);
  sub_1AF121C28(a11, (a10[1] - *a10) >> 2);
  if (a13)
  {
    sub_1AF121C28(a13, (a12[1] - *a12) >> 2);
  }

  if (a15)
  {
    sub_1AF121C28(a15, (a14[1] - *a14) >> 2);
  }

  if (a17)
  {
    sub_1AF121C28(a17, (a16[1] - *a16) >> 2);
  }

  if (a19)
  {
    sub_1AF121C28(a19, (a18[1] - *a18) >> 2);
  }

  if (a21)
  {
    sub_1AF121C28(a21, (a20[1] - *a20) >> 2);
  }

  v25 = *a4;
  if (v24 >= (a4[1] - *a4) >> 2)
  {
    v28 = 0;
    v27 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      if (((v24 == a1) & v33) != 0)
      {
        v29 = a3;
      }

      else
      {
        v29 = v24;
      }

      v30 = *(*v35 + 4 * v29);
      v31 = *(v25 + 4 * v29);
      *(*a5 + 4 * v27) = v26;
      *(*v38 + 4 * v27) = v30;
      memcpy((*a9 + 4 * v26), (*a8 + 4 * v31), 4 * v30);
      memcpy((*a11 + 4 * v26), (*a10 + 4 * v31), 4 * v30);
      if (a13 && *a13 != a13[1])
      {
        memcpy((*a13 + 4 * v26), (*a12 + 4 * v31), 4 * v30);
      }

      if (a15 && *a15 != a15[1])
      {
        memcpy((*a15 + 4 * v26), (*a14 + 4 * v31), 4 * v30);
      }

      if (a17 && *a17 != a17[1])
      {
        memcpy((*a17 + 4 * v26), (*a16 + 4 * v31), 4 * v30);
      }

      if (a19 && *a19 != a19[1])
      {
        memcpy((*a19 + 4 * v26), (*a18 + 4 * v31), 4 * v30);
      }

      if (a21 && *a21 != a21[1])
      {
        memcpy((*a21 + 4 * v26), (*a20 + 4 * v31), 4 * v30);
      }

      v26 += v30;
      ++v27;
      v28 += v30;
      v24 = v29 + 1;
      v25 = *a4;
    }

    while (v29 + 1 < (a4[1] - *a4) >> 2);
  }

  sub_1AF121C28(a5, v27);
  sub_1AF121C28(v38, v27);
  sub_1AF121C28(a9, v28);
  if (a13 && *a13 != a13[1])
  {
    sub_1AF121C28(a13, v28);
  }

  if (a15 && *a15 != a15[1])
  {
    sub_1AF121C28(a15, v28);
  }

  if (a17 && *a17 != a17[1])
  {
    sub_1AF121C28(a17, v28);
  }

  if (a19 && *a19 != a19[1])
  {
    sub_1AF121C28(a19, v28);
  }

  if (a21 && *a21 != a21[1])
  {

    sub_1AF121C28(a21, v28);
  }
}

uint64_t sub_1AF0FB3A4(void *a1, int a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1[57] + 8 * a6);
  }

  v7 = 1;
  v8 = *(a1[3] + 4 * ((2 * a2) | 1));
  v9 = *(a1[6] + 4 * v8 + 4 * a3);
  v10 = 2 * v9;
  v11 = a1[42];
  v12 = a1[45] + 4 * *(v11 + 8 * v9 + 4);
  v13 = *(v11 + 4 * v10);
  if (v13 < 1)
  {
LABEL_8:
    LODWORD(v14) = -1;
  }

  else
  {
    v14 = 0;
    v15 = *(a1[9] + 4 * v8 + 4 * a3);
    while (*(v12 + 4 * v14) != v15)
    {
      if (v13 == ++v14)
      {
        goto LABEL_8;
      }
    }
  }

  v16 = (v14 + 1) % v13;
  *(a5 + 2) = 0;
  *a5 = 1;
  v17 = a1[30];
  v18 = v14;
  while (1)
  {
    result = *(v12 + 4 * v18);
    v20 = *(v17 + result);
    if (v6)
    {
      result = *(*(v6 + 48) + result);
      if (result)
      {
        v20 |= 6u;
      }
    }

    if ((v20 & a4) != 0)
    {
      break;
    }

    *a5 = ++v7;
    v18 = (v13 - 1 + v18) % v13;
    if (v18 == v16)
    {
      v18 = (v14 + 1) % v13;
      goto LABEL_16;
    }
  }

  do
  {
LABEL_16:
    v21 = *(v12 + 4 * v16);
    v22 = *(v17 + v21);
    if (v6)
    {
      result = v22 | 6u;
      if (*(*(v6 + 48) + v21))
      {
        v22 |= 6u;
      }
    }

    if ((v22 & a4) != 0)
    {
      break;
    }

    *a5 = ++v7;
    v16 = (v16 + 1) % v13;
  }

  while (v16 != v14);
  *(a5 + 2) = v18;
  return result;
}

uint64_t sub_1AF0FB4D8(int *a1)
{
  v2 = **(a1 + 1);
  v3 = *v2;
  LODWORD(v4) = *a1;
  if (*(a1 + 5))
  {
    if (v4 < 2)
    {
      v5 = 0;
      v8 = a1[1];
    }

    else
    {
      v5 = 0;
      v6 = v2 + 3;
      v7 = 1;
      do
      {
        *v6 = v3;
        v8 = a1[1];
        v4 = *a1;
        v5 |= v3 > v8 * v7;
        v3 += *(v6 - 1);
        ++v7;
        v6 += 2;
      }

      while (v7 < v4);
    }

    v12 = v5 | (v3 > v8 * v4);
    __p = 0;
    v27 = 0;
    v28 = 0;
    if (v5 & 1 | (v3 > v8 * v4))
    {
      p_p = &__p;
      sub_1AF121C28(&__p, v3);
      LODWORD(v4) = *a1;
      v8 = a1[1];
    }

    else
    {
      p_p = *(a1 + 2);
    }

    v25 = 0;
    if (v4 >= 1)
    {
      v14 = 0;
      do
      {
        v15 = **(a1 + 1);
        v16 = *(v15 + 8 * v14);
        v17 = *(v15 + 8 * v14 + 4);
        v18 = *p_p;
        v19 = a1[1];
        if (v16 <= v19)
        {
          v20 = (**(a1 + 2) + 4 * v19 * v14);
        }

        else
        {
          v29 = &v25;
          v20 = sub_1AFDBA9C4((a1 + 6), &v25)[5];
          if (v8 <= v16)
          {
            v8 = v16;
          }

          else
          {
            v8 = v8;
          }
        }

        memmove(&v18[4 * v17], v20, 4 * v16);
        v14 = v25 + 1;
        v25 = v14;
      }

      while (v14 < *a1);
    }

    v21 = *(a1 + 2);
    if (v12)
    {
      v22 = *v21;
      *v21 = __p;
      *(v21 + 8) = v27;
      v23 = *(v21 + 16);
      *(v21 + 16) = v28;
      __p = v22;
      v28 = v23;
      if (!v22)
      {
        return v8;
      }

      goto LABEL_29;
    }

    sub_1AF121C28(*(a1 + 2), v3);
    v22 = __p;
    if (__p)
    {
LABEL_29:
      v27 = v22;
      operator delete(v22);
    }
  }

  else
  {
    if (v4 < 2)
    {
      v8 = *v2;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      LODWORD(v8) = *v2;
      do
      {
        v11 = v2[v9 + 2];
        memmove((**(a1 + 2) + 4 * v3), (**(a1 + 2) + 4 * v2[v9 + 3]), 4 * v11);
        v2 = **(a1 + 1);
        v2[v9 + 3] = v3;
        v3 += v11;
        if (v8 <= v11)
        {
          v8 = v11;
        }

        else
        {
          v8 = v8;
        }

        ++v10;
        v9 += 2;
      }

      while (v10 < *a1);
    }

    sub_1AF121C28(*(a1 + 2), v3);
  }

  return v8;
}

_BYTE *sub_1AF0FB740@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 - 2) > 7)
  {
    v2 = "";
  }

  else
  {
    v2 = off_1E7A807A8[a1 - 2];
  }

  return sub_1AF13D250(a2, v2);
}

_BYTE *sub_1AF0FB770@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 - 6) > 3)
  {
    v2 = "";
  }

  else
  {
    v2 = off_1E7A807E8[a1 - 6];
  }

  return sub_1AF13D250(a2, v2);
}

uint64_t sub_1AF0FB7B0(void *a1, int a2, uint64_t a3, int a4)
{
  if (a4 < 0)
  {
    result = a1[6] + 4 * *(a1[3] + 4 * ((2 * a2) | 1));
  }

  else
  {
    result = sub_1AFDB8E20(a1, a2, a4);
  }

  v8 = 0;
  v9 = a1[36];
  v10 = a1[33];
  v11 = a1[42];
  do
  {
    v12 = *(result + 4 * v8);
    v13 = 2 * v12;
    v14 = *(v10 + 8 * v12);
    if (v14 < 1)
    {
LABEL_9:
      LODWORD(v15) = -1;
    }

    else
    {
      v15 = 0;
      v16 = v9 + 4 * *(v10 + 8 * v12 + 4);
      while (*(v16 + 4 * v15) != a2)
      {
        if (v14 == ++v15)
        {
          goto LABEL_9;
        }
      }
    }

    *(a3 + 4 * v8++) = v15 | (((v15 + 1) % *(v11 + 4 * v13)) << 8);
  }

  while (v8 != 4);
  return result;
}

uint64_t storeEnumTagSinglePayload for QueryHeader.Field(uint64_t result, int a2, int a3)
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

uint64_t storeEnumTagSinglePayload for ParticleSDFAttractor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1AF0FB8EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_1AF0FB9BC@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1AFE20150;
  a1[1] = xmmword_1AFE20160;
  result = 0.0;
  a1[2] = xmmword_1AFE20180;
  a1[3] = xmmword_1AFE201A0;
  return result;
}

__n128 sub_1AF0FBA1C@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.4S, #1.0 }

  *a1 = result;
  return result;
}

uint64_t sub_1AF0FBA54(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t assignWithTake for ScriptMarker(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_1AF0FBAE8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unsigned __int8 *sub_1AF0FBAFC@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *assignWithTake for Name(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_1AF0FBB58()
{
  v1 = *v0;

  return v1;
}

void sub_1AF0FBB9C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

uint64_t sub_1AF0FBBBC(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

BOOL sub_1AF0FBBD0(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

uint64_t sub_1AF0FBC14(uint64_t a1)
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

uint64_t sub_1AF0FBC2C(uint64_t result, unsigned int a2)
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

void *sub_1AF0FBC44()
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0;
  v1 = MEMORY[0x1E69E7CC0];
  result[4] = 0xE000000000000000;
  result[5] = v1;
  return result;
}

uint64_t sub_1AF0FBCD4()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1AF0FBD04(uint64_t result)
{
  if ((result & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1AF0FBD8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AF0FBE5C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF0FBBBC(*a1);
  *a2 = result;
  return result;
}

uint64_t destroy for Node.Typing()
{
}

uint64_t sub_1AF0FBEC4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF0FBD04(*a1);
  *a2 = result;
  return result;
}

void sub_1AF0FC05C(void *a1, unint64_t a2, __int128 *a3, __int128 *a4)
{
  v8 = a1[1];
  if (!a1[8])
  {
    a1[8] = sub_1AF1D534C(@"ManipulatorWireframe_vert", @"ManipulatorWireframe_frag");
  }

  v27 = 0uLL;
  if (a3)
  {
    v27 = *a3;
    if (!a4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1AF163FFC(&v27, 1.0, 1.0, 1.0, 1.0);
    if (!a4)
    {
      goto LABEL_11;
    }
  }

  v9 = sub_1AF13050C(v8, 1);
  v10 = sub_1AF13050C(v8, 0);
  v11 = 0;
  v12 = *v10;
  v13 = v10[1];
  v14 = v10[2];
  v15 = v10[3];
  v16 = v9[1];
  v17 = v9[2];
  v18 = v9[3];
  v28 = *v9;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  do
  {
    *(&v32 + v11) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v28 + v11))), v13, *(&v28 + v11), 1), v14, *(&v28 + v11), 2), v15, *(&v28 + v11), 3);
    v11 += 16;
  }

  while (v11 != 64);
  v19 = 0;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v24 = a4[1];
  v25 = a4[2];
  v26 = a4[3];
  v28 = *a4;
  v29 = v24;
  v30 = v25;
  v31 = v26;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  do
  {
    *(&v32 + v19) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(*(&v28 + v19))), v21, *(&v28 + v19), 1), v22, *(&v28 + v19), 2), v23, *(&v28 + v19), 3);
    v19 += 16;
  }

  while (v19 != 64);
LABEL_11:
  sub_1AF111FD0(a1[8247], a2);
}

uint64_t sub_1AF0FC1EC(uint64_t a1)
{
  v2 = [VFXAuthoringEnvironment alloc];

  return MEMORY[0x1EEE66B58](v2, sel__initWithEngineContext_, a1, v3);
}

uint64_t sub_1AF0FC634(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 1704);
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    *(a1 + 1704) = v6;
  }

  return objc_msgSend_addObject_(v6, a2, a2, a4);
}

void sub_1AF0FC694(uint64_t a1, uint64_t a2, unsigned int a3, __int16 *a4, unsigned int a5, uint64_t a6, int a7)
{
  if (*(a6 + 12) + a3 <= *(a6 + 20) && *(a6 + 8) + a5 <= *(a6 + 24))
  {
LABEL_6:
    if (!*(a6 + 64))
    {
      if (*(a6 + 61) == 1)
      {
        v13 = sub_1AF12E2AC(*(a1 + 8));
        if (objc_msgSend_count(*(a6 + 136), v14, v15, v16))
        {
          v20 = objc_msgSend_anyObject(*(a6 + 136), v17, v18, v19);
          objc_msgSend_addObject_(*(a6 + 128), v21, v20, v22);
          objc_msgSend_removeObject_(*(a6 + 136), v23, v20, v24);
        }

        else
        {
          v20 = sub_1AF1A2EB8();
          objc_msgSend_addObject_(*(a6 + 128), v27, v20, v28);
          CFRelease(v20);
          v31 = a1 + 88 == a6 || a1 + 248 == a6 || a1 + 1208 == a6;
          v32 = 1;
          v106 = v13;
          if (a1 + 408 != a6 && a1 + 568 != a6 && a1 + 888 != a6)
          {
            v32 = a1 + 728 == a6 || a1 + 1048 == a6;
          }

          v34 = v31;
          if (v31)
          {
            v35 = 2;
          }

          else
          {
            v35 = 3;
          }

          v36 = sub_1AF1B7164(0, v35, 1u);
          sub_1AF1A3F84(v20, v36, 0, 0);
          if (v36)
          {
            CFRelease(v36);
          }

          v37 = v34;
          if (v32 || v34 || a1 + 1368 == a6)
          {
            v38 = sub_1AF1B7164(2, 4, 0x14u);
            sub_1AF1A3F84(v20, v38, 0, 0);
            if (v38)
            {
              CFRelease(v38);
            }
          }

          v13 = v106;
          if (v37)
          {
            v39 = sub_1AF1B7164(3, 2, 1u);
            sub_1AF1A3F84(v20, v39, 0, 0);
            if (v39)
            {
              CFRelease(v39);
            }
          }

          *(a6 + 20) = 0x200000002000;
        }

        if (*(a6 + 56) == 1)
        {
          VolatileMeshElementOfType_primitiveCount_bytesPerIndex = objc_msgSend_createVolatileMeshElementOfType_primitiveCount_bytesPerIndex_(v13, v25, 2, 4096, 2);
        }

        else if (*(a6 + 56))
        {
          v42 = sub_1AF0D5194();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDCF798(v42, v43, v44, v45, v46, v47, v48, v49);
          }

          VolatileMeshElementOfType_primitiveCount_bytesPerIndex = objc_msgSend_createVolatileMeshElementOfType_primitiveCount_bytesPerIndex_(v13, v43, 0, 0x2000, 2);
        }

        else
        {
          VolatileMeshElementOfType_primitiveCount_bytesPerIndex = objc_msgSend_createVolatileMeshElementOfType_primitiveCount_bytesPerIndex_(v13, v25, 0, 2730, 2);
        }

        *(a6 + 64) = v20;
        *(a6 + 72) = VolatileMeshElementOfType_primitiveCount_bytesPerIndex;
        if (v13)
        {
          objc_msgSend_mapVolatileMesh_verticesCount_(v13, v41, v20, 0x2000);
        }

        if (*(a6 + 12))
        {
          v50 = sub_1AF0D5194();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDCF810(v50, v51, v52, v53, v54, v55, v56, v57);
          }
        }

        v58 = sub_1AF1A4604(*(a6 + 64), 0, 0, 1);
        v59 = sub_1AF1AF080(v58);
        *(a6 + 80) = sub_1AF121B74(v59);
        *(a6 + 104) = sub_1AF1CB064(v59, 0);
        v60 = sub_1AF1A4604(*(a6 + 64), 3, 0, 1);
        if (v60)
        {
          v61 = sub_1AF1AF080(v60);
          *(a6 + 96) = sub_1AF121B74(v61);
          v60 = sub_1AF1CB064(v61, 0);
        }

        else
        {
          *(a6 + 96) = 0;
        }

        *(a6 + 120) = v60;
        v62 = sub_1AF1A4604(*(a6 + 64), 2, 0, 1);
        if (v62)
        {
          v63 = sub_1AF1AF080(v62);
          *(a6 + 88) = sub_1AF121B74(v63);
          v62 = sub_1AF1CB064(v63, 0);
        }

        else
        {
          *(a6 + 88) = 0;
        }

        *(a6 + 112) = v62;
        if (*(a6 + 8))
        {
          v64 = sub_1AF0D5194();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDCF888(v64, v65, v66, v67, v68, v69, v70, v71);
          }
        }
      }

      if (!*(a6 + 64))
      {
        v72 = sub_1AF0D5194();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDCF900(v72, v73, v74, v75, v76, v77, v78, v79);
        }
      }
    }

    v80 = *(a6 + 80);
    v81 = *(a6 + 104);
    v83 = *(a6 + 12);
    v82 = *(a6 + 16);
    v84 = v80 * v83;
    if (v82 == 12)
    {
      if (a3)
      {
        v96 = a3;
        v97 = (a2 + 8);
        v98 = (v84 + v81 + 8);
        do
        {
          *(v98 - 2) = *(v97 - 2);
          *(v98 - 1) = *(v97 - 1);
          v99 = *v97;
          v97 += 3;
          *v98 = v99;
          v98 = (v98 + v80);
          --v96;
        }

        while (v96);
      }
    }

    else
    {
      v85 = *(a6 + 88);
      v86 = (*(a6 + 112) + v85 * v83);
      if (v82 == 16)
      {
        if (a3)
        {
          v93 = a3;
          v94 = (a2 + 8);
          v95 = (v84 + v81 + 8);
          do
          {
            *(v95 - 2) = *(v94 - 2);
            *(v95 - 1) = *(v94 - 1);
            *v95 = *v94;
            *v86 = v94[1];
            v94 += 4;
            v95 = (v95 + v80);
            v86 = (v86 + v85);
            --v93;
          }

          while (v93);
        }
      }

      else if (v82 == 20 && a3)
      {
        v87 = *(a6 + 96);
        v88 = v87 * v83;
        v89 = a3;
        v90 = (v84 + v81 + 4);
        v91 = (a2 + 8);
        v92 = (v88 + *(a6 + 120) + 4);
        do
        {
          *(v90 - 1) = *(v91 - 2);
          *v90 = *(v91 - 1);
          *v86 = v91[2];
          *(v92 - 1) = *v91;
          v90 = (v90 + v80);
          *v92 = v91[1];
          v86 = (v86 + v85);
          v91 += 5;
          v92 = (v92 + v87);
          --v89;
        }

        while (v89);
      }
    }

    v100 = sub_1AF1A8054(*(a6 + 72));
    v101 = *(a6 + 8);
    if (v100)
    {
      v102 = *(a6 + 12);
      if (a5)
      {
        v103 = (v100 + 2 * v101);
        v104 = a5;
        do
        {
          v105 = *a4++;
          *v103++ = v105 + v102;
          --v104;
        }

        while (v104);
      }
    }

    else
    {
      v102 = *(a6 + 12);
    }

    *(a6 + 8) = v101 + a5;
    *(a6 + 12) = v102 + a3;
    return;
  }

  if (a7)
  {
    if (*(a6 + 8))
    {
      sub_1AF0FCBF8(a1, a6);
    }

    goto LABEL_6;
  }

  v26 = sub_1AF0D5194();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDCF764();
  }
}

void sub_1AF0FCBF8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 8));
  if (v4)
  {
    v7 = v4;
    v8 = a2[8];
    if (v8)
    {
      objc_msgSend_unmapVolatileMesh_modifiedVerticesCount_(v4, v5, v8, *(a2 + 3));
    }

    v9 = a2[9];
    if (v9)
    {
      objc_msgSend_unmapVolatileMeshElement_(v7, v5, v9, v6);
    }
  }

  if (!a2[8])
  {
    goto LABEL_29;
  }

  if (*(a2 + 61) == 1)
  {
    if (!*(a2 + 3))
    {
      goto LABEL_29;
    }

    if (*(a2 + 56) == 1)
    {
      v10 = *(a2 + 2) >> 1;
      goto LABEL_13;
    }

    if (!*(a2 + 56))
    {
      v10 = *(a2 + 2) / 3u;
LABEL_13:
      sub_1AF1A73F8(a2[9], 0, v10);
    }
  }

  v11 = *(a1 + 8);
  v12 = sub_1AF12E2AC(v11);
  v13 = sub_1AF130864(v11);
  if (*(a2 + 57))
  {
    v14 = v13;
    v15 = sub_1AF130548(v11);
    v16 = v14 * (2.0 / v15.n128_f32[3]);
    v17 = vmulq_n_f32(xmmword_1AFE20150, v14 * (2.0 / v15.n128_f32[2]));
    v18 = vmulq_n_f32(xmmword_1AFE20160, v16);
    v19 = xmmword_1AFE20170;
    v20 = xmmword_1AFE20180;
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v21 = sub_1AF13050C(v11, 1);
    v39 = v21[1];
    v40 = *v21;
    v37 = v21[3];
    v38 = v21[2];
    v22 = sub_1AF13050C(v11, 0);
    v23 = 0;
    v24 = *v22;
    v25 = v22[1];
    v26 = v22[2];
    v27 = v22[3];
    v47[0] = v40;
    v47[1] = v39;
    v47[2] = v38;
    v47[3] = v37;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    do
    {
      *(&v41 + v23 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(v47[v23])), v25, *&v47[v23], 1), v26, v47[v23], 2), v27, v47[v23], 3);
      ++v23;
    }

    while (v23 != 4);
    v17 = v41;
    v18 = v42;
    v20 = v43;
    v19 = v44;
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  v28 = *a2;
  if (*a2)
  {
    v29 = 1688;
    if (*(a2 + 60))
    {
      v29 = 1672;
    }

    v30 = 1696;
    if (*(a2 + 60))
    {
      v30 = 1680;
    }

    if (*(a2 + 59))
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    v32 = *(a1 + v31);
    v41 = v17;
    v42 = v18;
    v43 = v20;
    v44 = v19;
    v45 = 0;
    v46 = 0;
    v33 = a2[8];
    v34 = a2[9];
    v35 = sub_1AF15BBC4();
    objc_msgSend_authoring_renderMesh_meshElement_withProgram_uniforms_uniformsLength_rasterizerStates_blendStates_texture_sampler_depthBias_(v12, v36, v33, v34, v28, &v41, 80, v32, v35, a2[4], a2[5], 0);
  }

LABEL_29:
  a2[1] = 0;
  a2[8] = 0;
  a2[9] = 0;
}

uint64_t sub_1AF0FCE5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 0x10000;
  if ((*(a1 + 65928) & 1) != 0 || sub_1AF103018(a1) || *(v4 + 424) == 1)
  {
    v6 = sub_1AF12DDCC(*(a1 + 8));
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v6, 0, 1u);
  }

  return MEMORY[0x1EEE66B58](a1, sel_worldDidChange_, a2, v5);
}

uint64_t sub_1AF0FCEEC(uint64_t a1)
{
  objc_sync_enter(a1);
  *(a1 + 65984) = 0;
  objc_msgSend_update(a1, v2, v3, v4);
  objc_msgSend_removeAllObjects(*(a1 + 1704), v5, v6, v7);

  return objc_sync_exit(a1);
}

void *sub_1AF0FCF54(uint64_t *a1)
{
  sub_1AF0FCBF8(a1, a1 + 11);
  sub_1AF0FCBF8(a1, a1 + 31);
  sub_1AF0FCBF8(a1, a1 + 51);
  sub_1AF0FCBF8(a1, a1 + 71);
  sub_1AF0FCBF8(a1, a1 + 91);
  sub_1AF0FCBF8(a1, a1 + 111);
  sub_1AF0FCBF8(a1, a1 + 131);
  sub_1AF0FCBF8(a1, a1 + 151);
  sub_1AF0FCBF8(a1, a1 + 171);
  sub_1AF0FD054(a1, (a1 + 11));
  sub_1AF0FD054(a1, (a1 + 31));
  sub_1AF0FD054(a1, (a1 + 51));
  sub_1AF0FD054(a1, (a1 + 71));
  sub_1AF0FD054(a1, (a1 + 91));
  sub_1AF0FD054(a1, (a1 + 111));
  sub_1AF0FD054(a1, (a1 + 131));
  sub_1AF0FD054(a1, (a1 + 151));

  return sub_1AF0FD054(a1, (a1 + 171));
}

void *sub_1AF0FD054(void *result, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a2 + 61) == 1)
  {
    v3 = result[1];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v4 = *(a2 + 128);
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, a2, &v31, v36, 16);
    if (v5)
    {
      v8 = v5;
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v4);
          }

          objc_msgSend_addObject_(*(a2 + 136), v6, *(*(&v31 + 1) + 8 * i), v7);
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v31, v36, 16);
      }

      while (v8);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = *(a2 + 144);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v6, &v27, v35, 16);
    if (v12)
    {
      v16 = v12;
      v17 = *v28;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v11);
          }

          objc_msgSend_addObject_(*(a2 + 152), v13, *(*(&v27 + 1) + 8 * j), v15);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v27, v35, 16);
      }

      while (v16);
    }

    objc_msgSend_removeAllObjects(*(a2 + 128), v13, v14, v15);
    objc_msgSend_removeAllObjects(*(a2 + 144), v19, v20, v21);
    result = sub_1AF12E2AC(v3);
    if (result)
    {
      v24 = result;
      v25 = *(a2 + 64);
      if (v25)
      {
        result = objc_msgSend_unmapVolatileMesh_modifiedVerticesCount_(result, v22, v25, *(a2 + 12));
      }

      v26 = *(a2 + 72);
      if (v26)
      {
        result = objc_msgSend_unmapVolatileMeshElement_(v24, v22, v26, v23);
      }
    }

    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
  }

  return result;
}

void sub_1AF0FD228(uint64_t *a1)
{
  if ((sub_1AF12EE68(a1[1]) & 0x8000) == 0)
  {
    return;
  }

  sub_1AF0FD32C(a1, (a1 + 51), v2, v3);
  for (i = 0; ; ++i)
  {
    v5 = &xmmword_1AFE20400;
    v6 = xmmword_1AFE20150;
    if (!i)
    {
      goto LABEL_6;
    }

    if (i != 1)
    {
      break;
    }

    v5 = &xmmword_1AFE20410;
    v6 = xmmword_1AFE20160;
LABEL_6:
    sub_1AF0FD5DC(a1, 0, v5, v5, (a1 + 51), 0, v6);
  }

  sub_1AF0FD5DC(a1, 0, &xmmword_1AFE20420, &xmmword_1AFE20420, (a1 + 51), 0, xmmword_1AFE20180);

  sub_1AF0FCBF8(a1, a1 + 91);
}

void sub_1AF0FD32C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    return;
  }

  v6 = a1 + 11 == a2 || a1 + 31 == a2;
  v7 = a1 + 51;
  v9 = v6 || a1 + 151 == a2;
  v10 = a1 + 71;
  v11 = a1 + 111;
  v12 = a1 + 131;
  v13 = a1 + 91;
  v18 = v7 == a2 || v10 == a2 || v11 == a2 || v13 == a2 || v12 == a2;
  if (!*(a2 + 128))
  {
    *(a2 + 128) = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3, a4);
  }

  if (!*(a2 + 136))
  {
    *(a2 + 136) = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3, a4);
  }

  if (!*(a2 + 144))
  {
    *(a2 + 144) = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3, a4);
  }

  if (!*(a2 + 152))
  {
    *(a2 + 152) = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3, a4);
  }

  v19 = a1 + 171;
  if (sub_1AF12E2AC(a1[1]))
  {
    if (v9)
    {
      v20 = a1[6];
      if (!v20)
      {
        v20 = sub_1AF1D534C(@"ManipulatorColorAndTexture_vert", @"ManipulatorColorAndTexture_frag");
        a1[6] = v20;
      }

      v21 = 20;
LABEL_51:
      *(a2 + 16) = v21;
      *a2 = v20;
      goto LABEL_52;
    }

    if (v18)
    {
      v20 = a1[5];
      if (!v20)
      {
        v20 = sub_1AF1D534C(@"ManipulatorColorOnly_vert", @"ManipulatorColorOnly_frag");
        a1[5] = v20;
      }

      v21 = 16;
      goto LABEL_51;
    }

    if (v19 == a2)
    {
      v20 = a1[7];
      if (!v20)
      {
        v20 = sub_1AF1D534C(@"ManipulatorLightProbe_vert", @"ManipulatorLightProbe_frag");
        a1[7] = v20;
      }

      v21 = 12;
      goto LABEL_51;
    }

    v30 = sub_1AF0D5194();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDCF978();
    }
  }

  else
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCF9AC(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

LABEL_52:
  if (v7 == a2)
  {
    *(a2 + 56) = 1;
LABEL_60:
    *(a2 + 59) = 1;
LABEL_62:
    *(a2 + 61) = 1;
    goto LABEL_65;
  }

  if (v10 == a2)
  {
    *(a2 + 56) = 1;
    *(a2 + 59) = 0;
    goto LABEL_62;
  }

  if (v11 == a2)
  {
    v31 = 257;
    goto LABEL_64;
  }

  if (v12 != a2)
  {
    if (v13 != a2)
    {
      if (v9)
      {
        goto LABEL_58;
      }

      if (v19 != a2)
      {
        v40 = sub_1AF0D5194();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDCF978();
        }

        goto LABEL_65;
      }
    }

    *(a2 + 56) = 0;
    goto LABEL_60;
  }

LABEL_58:
  v31 = 256;
LABEL_64:
  *(a2 + 56) = v31;
  *(a2 + 60) = 256;
LABEL_65:
  if (!*a2)
  {
    v32 = sub_1AF0D5194();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFA24(v32, v33, v34, v35, v36, v37, v38, v39);
    }
  }
}

void sub_1AF0FD5DC(uint64_t a1, float32x4_t *a2, float *a3, float *a4, uint64_t a5, float32x4_t a6, float32x4_t a7)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = a2[1];
    v8 = a2[2];
    a7 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a2[3], v8, a7, 2), v7, *a7.f32, 1), *a2, a7.f32[0]);
    a6 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a2[3], v8, a6, 2), v7, *a6.f32, 1), *a2, a6.f32[0]);
  }

  v18 = a6.i64[0];
  v19 = a6.u32[2];
  v9 = (a3[3] * 255.0);
  v10 = (fminf(fmaxf(a3[2], 0.0), 1.0) * 255.0);
  v11 = (fminf(fmaxf(a3[1], 0.0), 1.0) * 255.0);
  v12 = (fminf(fmaxf(*a3, 0.0), 1.0) * 255.0);
  v13 = (a4[3] * 255.0);
  v14 = (fminf(fmaxf(a4[2], 0.0), 1.0) * 255.0);
  v15 = *a4;
  v16 = fminf(fmaxf(a4[1], 0.0), 1.0) * 255.0;
  v22 = a7.u32[2];
  v21 = a7.i64[0];
  v20 = (v9 << 24) | (v10 << 16) | (v11 << 8) | v12;
  v23 = (v13 << 24) | (v14 << 16) | (v16 << 8) | (fminf(fmaxf(v15, 0.0), 1.0) * 255.0);
  v17 = 0x10000;
  sub_1AF0FC694(a1, &v18, 2u, &v17, 2u, a5, 1);
}

void sub_1AF0FD74C(uint64_t a1)
{
  if (*(a1 + 65960) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if ((sub_1AF12EE68(v2) & 0x20000) != 0 && *(a1 + 24) == 1)
      {
        v6 = *(a1 + 16);
        v7 = objc_msgSend_defaultCameraController(v6, v3, v4, v5);
        if (objc_msgSend_isTargetFromHitTest(v7, v8, v9, v10))
        {
          v14 = objc_msgSend_defaultCameraController(v6, v11, v12, v13);
          if ((objc_msgSend_interactionMode(v14, v15, v16, v17) - 1) <= 3)
          {
            v21 = objc_msgSend_defaultCameraController(v6, v18, v19, v20);
            objc_msgSend_simdTarget(v21, v22, v23, v24);
            v54 = v25;
            v26 = sub_1AF13050C(*(a1 + 8), 1);
            v27 = sub_1AF13050C(*(a1 + 8), 0);
            v28 = 0;
            v29 = *v27;
            v30 = v27[1];
            v31 = v27[2];
            v32 = v27[3];
            v33 = v26[1];
            v34 = v26[2];
            v35 = v26[3];
            v57[0] = *v26;
            v57[1] = v33;
            v57[2] = v34;
            v57[3] = v35;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            do
            {
              *(&v58 + v28 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(v57[v28])), v30, *&v57[v28], 1), v31, v57[v28], 2), v32, v57[v28], 3);
              ++v28;
            }

            while (v28 != 4);
            v36 = vaddq_f32(v61, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, v54.f32[0]), v59, *v54.f32, 1), v60, v54, 2));
            if (v36.f32[3] > 0.001)
            {
              v53 = v36;
              *v37.i32 = sub_1AF130864(*(a1 + 8));
              v55 = v37;
              v38 = sub_1AF130548(*(a1 + 8));
              __asm
              {
                FMOV            V2.2D, #1.0
                FMOV            V1.2D, #0.5
              }

              v45 = vmulq_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(vdiv_f32(*v53.i8, vdup_laneq_s32(v53, 3))), _Q2), vcvt_hight_f64_f32(v38)), _Q1);
              v46 = vdivq_f32(vrndmq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v45), v45)), vdupq_lane_s32(v55, 0));
              v56 = vaddq_f32(v46, xmmword_1AFE20190);
              v47 = v46.f32[0] + -5.0;
              v48 = v46.f32[1] + -1.0;
              v49 = v46.f32[0] + 5.0;
              v50 = v46.f32[1] + 1.0;
              sub_1AF0FD32C(a1, a1 + 1048, v51, v52);
              sub_1AF0FDA58(a1, 0x3F8000003F800000, 0x3F8000003F800000, 0, a1 + 1048, 1, v56.f32[0], v56.f32[1], v56.f32[2], v56.f32[3]);
              sub_1AF0FDA58(a1, 0x3F8000003F800000, 0x3F8000003F800000, 0, a1 + 1048, 1, v47, v48, v49, v50);
              sub_1AF0FDA58(a1, 0, 0x3F80000000000000, 0, a1 + 1048, 1, v56.f32[0] + 0.5, v56.f32[1] + 0.5, v56.f32[2] + -0.5, v56.f32[3] + -0.5);
              sub_1AF0FDA58(a1, 0, 0x3F80000000000000, 0, a1 + 1048, 1, v47 + 0.5, v48 + 0.5, v49 + -0.5, v50 + -0.5);

              sub_1AF0FCBF8(a1, (a1 + 1048));
            }
          }
        }
      }
    }
  }
}

void sub_1AF0FDA58(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, int a6, float a7, float a8, float a9, float a10)
{
  v59 = *MEMORY[0x1E69E9840];
  v19 = *(a5 + 32);
  if (a4)
  {
    if (!v19)
    {
      v21 = sub_1AF0D5194();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDCFA9C(v21, v22, v23, v24, v25, v26, v27, v28);
      }
    }

    v39 = a7;
    v40 = a8;
    v29 = a4[1];
    v41 = *a4;
    *&v42 = v29;
    v43 = ((*(&a3 + 1) * 255.0) << 24) | ((fminf(fmaxf(*&a3, 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(*(&a2 + 1), 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*&a2, 0.0), 1.0) * 255.0);
    v44 = a9;
    v45 = a8;
    v30 = a4[3];
    v46 = a4[2];
    v47 = v29;
    v48 = *&v43;
    v49 = a9;
    v50 = a10;
    v51 = v46;
    v52 = v30;
    v53 = v43;
    v54 = a7;
    v55 = a10;
    v56 = v41;
    v57 = v30;
    v58 = v43;
  }

  else
  {
    if (v19)
    {
      v31 = sub_1AF0D5194();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDCFB14(v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    v39 = a7;
    v40 = a8;
    v41 = 0.0;
    v42 = ((*(&a3 + 1) * 255.0) << 24) | ((fminf(fmaxf(*&a3, 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(*(&a2 + 1), 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*&a2, 0.0), 1.0) * 255.0);
    *&v43 = a9;
    v44 = a8;
    v45 = 0.0;
    v46 = *&v42;
    v47 = a9;
    v48 = a10;
    v49 = 0.0;
    v50 = *&v42;
    v51 = a7;
    v52 = a10;
    v53 = 0;
    v54 = *&v42;
  }

  sub_1AF0FC694(a1, &v39, 4u, word_1AFE204C0, 6u, a5, a6);
}

double sub_1AF0FDC90(uint64_t a1, float a2)
{
  if (*(a1 + 1864) != 0.0)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFB8C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = sub_1AF1302C4(*(a1 + 8)) + a2;
  *(a1 + 1864) = result;
  return result;
}

void sub_1AF0FDD04(uint64_t a1, int a2, void *__src, size_t __n)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a1 + 0x10000;
  v5 = (__n + 31) & 0xFFFFFFF0;
  v6 = *(a1 + 65876);
  v7 = v6 + v5;
  if ((v6 + v5) >> 9 >= 0x7D)
  {
    if (v7 == 64000)
    {
      v8 = 64000 - v6;
      v9 = *(a1 + 1864);
      v10 = a1 + v6;
      *(v10 + 1872) = -1;
      *(v10 + 1876) = v8;
      *(v10 + 1880) = v9;
    }

    LODWORD(v6) = 0;
    *(a1 + 65876) = 0;
    v7 = (__n + 31) & 0xFFFFFFF0;
  }

  v11 = *(a1 + 65872);
  if (v6 < v11 && v7 > v11)
  {
    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v4 + 336);
      v17 = *(v4 + 340);
      v18[0] = 67109376;
      v18[1] = v16;
      v19 = 1024;
      v20 = v17;
      _os_log_impl(&dword_1AF0CE000, v15, OS_LOG_TYPE_DEFAULT, "Warning: ring buffer is full [%d/%d]", v18, 0xEu);
    }
  }

  else
  {
    v13 = *(a1 + 1864);
    v14 = a1 + 1872 + v6;
    *v14 = a2;
    *(v14 + 4) = v5;
    *(v14 + 8) = v13;
    memcpy((a1 + 1872 + *(a1 + 65876) + 16), __src, __n);
    *(v4 + 340) = v7;
  }
}

void sub_1AF0FDE4C(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, unsigned int *a5, double a6)
{
  v9 = a2;
  if (a2 == a3)
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFC04(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    goto LABEL_5;
  }

  if (a2 >> 4 > 0xF9E)
  {
LABEL_5:
    v18 = a3;
    goto LABEL_6;
  }

  v22 = a1 + 1872;
  v18 = a3;
  v23 = a2;
  do
  {
    v24 = v22 + v23;
    v25 = *(v24 + 4);
    if (!v25)
    {
      break;
    }

    if (*(v24 + 8) <= a6)
    {
      v23 += v25;
    }

    else
    {
      v26 = *v24;
      if (*v24 == 3)
      {
        sub_1AF0FE168(a1, (v24 + 32), (v24 + 96), a4, *(v24 + 16));
      }

      else if (v26 == 1)
      {
        sub_1AF0FE080(a1, 0, (v24 + 48), 0, *(v24 + 16), *(v24 + 32));
      }

      else if (!v26)
      {
        sub_1AF0FDFAC(a1, 0, (v24 + 48), a4, *(v24 + 16), *(v24 + 32));
      }

      if (v18 >= v23)
      {
        v18 = v23;
      }

      v23 += *(v24 + 4);
      if (v9 <= v23)
      {
        v9 = v23;
      }
    }
  }

  while (v23 != a3 && v23 >> 4 < 0xF9F);
LABEL_6:
  *a4 = v18;
  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  *a5 = v19;
}

void sub_1AF0FDFAC(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, float32x4_t a5, float32x4_t a6)
{
  if (*(a1 + 1864) > 0.0)
  {
    __src = a5;
    v18 = a6;
    v19 = *a3;
    if (a2)
    {
      v9 = *(a2 + 16);
      v10 = *(a2 + 32);
      v11 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(a2 + 48), v10, a6, 2), v9, *a6.f32, 1), *a2, a6.f32[0]);
      __src = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(a2 + 48), v10, a5, 2), v9, *a5.f32, 1), *a2, a5.f32[0]);
      v18 = v11;
    }

    sub_1AF0FDD04(a1, 0, &__src, 0x30uLL);
  }

  sub_1AF0FD32C(a1, a1 + 408, a3, a4);

  sub_1AF0FEB30(a1, a2, a3, a3, a1 + 408, a5, a6, v12, v13, v14);
}

void sub_1AF0FE080(uint64_t a1, float32x4_t *a2, float *a3, uint64_t a4, float32x4_t a5, float32x4_t a6)
{
  v6 = a4;
  if (*(a1 + 1864) > 0.0)
  {
    __src = a5;
    v17 = a6;
    v18 = *a3;
    if (a2)
    {
      v10 = a2[1];
      v11 = a2[2];
      v12 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a2[3], v11, a6, 2), v10, *a6.f32, 1), *a2, a6.f32[0]);
      __src = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a2[3], v11, a5, 2), v10, *a5.f32, 1), *a2, a5.f32[0]);
      v17 = v12;
    }

    sub_1AF0FDD04(a1, 1, &__src, 0x30uLL);
  }

  if (v6)
  {
    v13 = 568;
  }

  else
  {
    v13 = 408;
  }

  sub_1AF0FD32C(a1, a1 + v13, a3, a4);

  sub_1AF0FD5DC(a1, a2, a3, a3, a1 + v13, a5, a6);
}

void sub_1AF0FE168(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, __n128 a5)
{
  if (*(a1 + 1864) > 0.0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    __src = a5;
    if (a2)
    {
      v8 = a2[1];
      v11 = *a2;
      v12 = v8;
      v9 = a2[3];
      v13 = a2[2];
      v14 = v9;
    }

    else
    {
      v11 = xmmword_1AFE20150;
      v12 = xmmword_1AFE20160;
      v13 = xmmword_1AFE20180;
      v14 = xmmword_1AFE201A0;
    }

    v15 = *a3;
    sub_1AF0FDD04(a1, 3, &__src, 0x60uLL);
  }

  sub_1AF0FD32C(a1, a1 + 408, a3, a4);

  sub_1AF10375C(a1, a2, a3, a1 + 408);
}

void sub_1AF0FE250(uint64_t a1, double a2)
{
  v2 = a1 + 0x10000;
  v3 = *(a1 + 65872);
  v4 = *(a1 + 65876);
  if (v3 != v4)
  {
    v7 = 0;
    if (v3 < v4)
    {
      sub_1AF0FDE4C(a1, v3, v4, &v7 + 1, &v7, a2);
      *(v2 + 336) = HIDWORD(v7);
LABEL_8:
      *(v2 + 340) = v7;
      return;
    }

    if (v3 >> 9 <= 0x7C)
    {
      sub_1AF0FDE4C(a1, v3, 0xFA00u, &v7 + 1, &v7, a2);
      *(v2 + 336) = HIDWORD(v7);
      v4 = *(v2 + 340);
    }

    if (v4)
    {
      sub_1AF0FDE4C(a1, 0, v4, &v7 + 1, &v7, a2);
      goto LABEL_8;
    }
  }
}

void sub_1AF0FE318(uint64_t a1)
{
  v140 = *MEMORY[0x1E69E9840];
  sub_1AF0FD228(a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    if (sub_1AF12EE68(v2))
    {
      v3 = sub_1AF12DDCC(*(a1 + 8));
      if (v3)
      {
        v6 = objc_msgSend_worldWithWorldRef_(VFXWorld, v4, v3, v5);
        v10 = objc_msgSend_physicsWorld(v6, v7, v8, v9);
        if (v10)
        {
          v11 = v10;
          v12 = v10;
          objc_msgSend__drawDebugInAuthoringEnvironment_(v11, v13, a1, v14);
        }
      }
    }
  }

  sub_1AF111FD4(*(a1 + 65976), *(a1 + 8), *(a1 + 64));
  v18 = objc_msgSend_manipulator(a1, v15, v16, v17);
  if (objc_msgSend_isDragging(v18, v19, v20, v21))
  {
    objc_msgSend_lockSnapGuides(v18, v22, v23, v24);
    sub_1AF0FD32C(a1, a1 + 408, v25, v26);
    objc_msgSend_transform(v18, v27, v28, v29);
    v119 = v30.i32[1];
    v120 = v30;
    v122 = v30.i32[2];
    v131[0] = xmmword_1AFE20150;
    v131[1] = xmmword_1AFE20160;
    v131[2] = xmmword_1AFE20180;
    v131[3] = xmmword_1AFE201A0;
    v33 = objc_msgSend_snapGuideIndexesOnAxis_(v18, v31, 1, v32);
    Index = objc_msgSend_firstIndex(v33, v34, v35, v36);
    if (Index != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = Index; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend_indexGreaterThanIndex_(v33, v55, i, v56))
      {
        v41 = objc_msgSend_snapInfoAtIndex_axis_(v18, v38, i, 1, *&v112);
        v43 = v41;
        if (*(v41 + 8))
        {
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v44 = sub_1AF1B9B04(*(v41 + 8));
          v45 = *(v44 + 16);
          v46 = *(v44 + 32);
          v114 = *(v44 + 48);
          v127 = *v44;
          v128 = v45;
          v129 = v46;
          v130 = v114;
          v125 = 0u;
          v126 = 0u;
          sub_1AF1B7A3C(*(v43 + 8), &v125);
          v47 = vaddq_f32(v126, v126);
          v48 = vdupq_laneq_s32(v47, 3);
          v48.i32[0] = v47.i32[0];
          v132 = vsubq_f32(v125, v126);
          v133 = vaddq_f32(v132, v48);
          v134 = vaddq_f32(v132, vextq_s8(v47, vuzp2q_s32(v47, v47), 0xCuLL));
          v135 = vaddq_f32(v48, v134);
          v49 = vzip2q_s32(v47, v47);
          v50 = vextq_s8(v49, v49, 8uLL);
          v136 = vaddq_f32(v132, v50);
          v137 = vaddq_f32(v50, v133);
          v138 = vaddq_f32(v50, v134);
          v139 = vaddq_f32(v50, v135);
          sub_1AF0FFCD0(a1, &v132, &v127, flt_1AFE20430, a1 + 408);
          v51 = v114;
          v52 = *v43;
        }

        else
        {
          v52 = *v41;
          v51.i32[1] = 0;
          v51.i32[2] = 0;
        }

        v42.f32[0] = v52 - *(v43 + 16);
        v53 = v42;
        v53.i32[1] = v51.i32[1];
        v53.i32[2] = v51.i32[2];
        v42.i32[1] = v119;
        v54 = v42;
        v54.i32[2] = v51.i32[2];
        v112 = v54;
        v42.i32[2] = v122;
        v115 = v42;
        sub_1AF0FD5DC(a1, v131, flt_1AFE20430, flt_1AFE20430, a1 + 408, v53, v54);
        sub_1AF0FD5DC(a1, v131, flt_1AFE20430, flt_1AFE20430, a1 + 408, v112, v115);
      }
    }

    v57 = objc_msgSend_snapGuideIndexesOnAxis_(v18, v38, 2, v39, *&v112);
    v61 = objc_msgSend_firstIndex(v57, v58, v59, v60);
    if (v61 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (j = v61; j != 0x7FFFFFFFFFFFFFFFLL; j = objc_msgSend_indexGreaterThanIndex_(v57, v80, j, v81))
      {
        v65 = objc_msgSend_snapInfoAtIndex_axis_(v18, v62, j, 2, *&v113);
        v66 = v65;
        if (*(v65 + 1))
        {
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v67 = sub_1AF1B9B04(*(v65 + 1));
          v68 = *(v67 + 16);
          v69 = *(v67 + 32);
          v116 = *(v67 + 48);
          v127 = *v67;
          v128 = v68;
          v129 = v69;
          v130 = v116;
          v125 = 0u;
          v126 = 0u;
          sub_1AF1B7A3C(*(v66 + 1), &v125);
          v70 = vaddq_f32(v126, v126);
          v71 = vdupq_laneq_s32(v70, 3);
          v71.i32[0] = v70.i32[0];
          v132 = vsubq_f32(v125, v126);
          v133 = vaddq_f32(v132, v71);
          v134 = vaddq_f32(v132, vextq_s8(v70, vuzp2q_s32(v70, v70), 0xCuLL));
          v135 = vaddq_f32(v71, v134);
          v72 = vzip2q_s32(v70, v70);
          v73 = vextq_s8(v72, v72, 8uLL);
          v136 = vaddq_f32(v132, v73);
          v137 = vaddq_f32(v73, v133);
          v138 = vaddq_f32(v73, v134);
          v139 = vaddq_f32(v73, v135);
          sub_1AF0FFCD0(a1, &v132, &v127, flt_1AFE20430, a1 + 408);
          v74 = v116;
          v75 = *v66;
        }

        else
        {
          v75 = *v65;
          v74.i32[0] = 0;
          v74.i32[3] = 0;
          *(v74.i64 + 4) = *v65;
        }

        v76 = v75 - *(v66 + 4);
        v77 = v74;
        v77.f32[1] = v76;
        v77.i32[2] = v74.i32[2];
        v78 = v120;
        v78.f32[1] = v76;
        v79 = v78;
        v79.i32[2] = v74.i32[2];
        v113 = v79;
        v78.i32[2] = v122;
        v117 = v78;
        sub_1AF0FD5DC(a1, v131, flt_1AFE20430, flt_1AFE20430, a1 + 408, v77, v79);
        sub_1AF0FD5DC(a1, v131, flt_1AFE20430, flt_1AFE20430, a1 + 408, v113, v117);
      }
    }

    v82 = objc_msgSend_snapGuideIndexesOnAxis_(v18, v62, 4, v63, *&v113);
    v86 = objc_msgSend_firstIndex(v82, v83, v84, v85);
    if (v86 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v88 = v86;
      v89 = v120;
      v89.i32[1] = v119;
      v121 = v89;
      do
      {
        v90 = objc_msgSend_snapInfoAtIndex_axis_(v18, v87, v88, 4);
        v91 = v90;
        if (*(v90 + 1))
        {
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v92 = sub_1AF1B9B04(*(v90 + 1));
          v93 = *(v92 + 16);
          v94 = *(v92 + 32);
          v95 = *(v92 + 48);
          v127 = *v92;
          v128 = v93;
          v129 = v94;
          v130 = v95;
          v126 = 0u;
          v123 = v95;
          v125 = 0u;
          sub_1AF1B7A3C(*(v91 + 1), &v125);
          v96 = vaddq_f32(v126, v126);
          v97 = vdupq_laneq_s32(v96, 3);
          v97.i32[0] = v96.i32[0];
          v132 = vsubq_f32(v125, v126);
          v133 = vaddq_f32(v132, v97);
          v134 = vaddq_f32(v132, vextq_s8(v96, vuzp2q_s32(v96, v96), 0xCuLL));
          v135 = vaddq_f32(v97, v134);
          v98 = vzip2q_s32(v96, v96);
          v99 = vextq_s8(v98, v98, 8uLL);
          v136 = vaddq_f32(v132, v99);
          v137 = vaddq_f32(v99, v133);
          v138 = vaddq_f32(v99, v134);
          v139 = vaddq_f32(v99, v135);
          sub_1AF0FFCD0(a1, &v132, &v127, flt_1AFE20430, a1 + 408);
          v100 = *v91;
        }

        else
        {
          v100 = *v90;
          v101.i64[0] = 0;
          v101.i64[1] = *v90;
          v123 = v101;
        }

        v102 = v100 - *(v91 + 4);
        v103 = v123;
        v104 = v123;
        v104.f32[2] = v102;
        v105 = v121;
        v103.i32[1] = v119;
        v103.f32[2] = v102;
        v124 = v103;
        v105.f32[2] = v102;
        v118 = v105;
        sub_1AF0FD5DC(a1, v131, flt_1AFE20430, flt_1AFE20430, a1 + 408, v104, v103);
        sub_1AF0FD5DC(a1, v131, flt_1AFE20430, flt_1AFE20430, a1 + 408, v124, v118);
        v88 = objc_msgSend_indexGreaterThanIndex_(v82, v106, v88, v107);
      }

      while (v88 != 0x7FFFFFFFFFFFFFFFLL);
    }

    sub_1AF0FCBF8(a1, (a1 + 408));
    objc_msgSend_unlockSnapGuides(v18, v108, v109, v110);
  }

  v111 = sub_1AF1302C4(*(a1 + 8));
  sub_1AF0FE250(a1, v111);
}

void sub_1AF0FE920(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 65928) == 1)
  {
    a2.n128_u64[0] = vadd_f32(vrndx_f32(*(a1 + 65912)), 0x3F0000003F000000);
    v16 = a2;
    a2.n128_u64[0] = vadd_f32(vrndx_f32(*(a1 + 65920)), 0x3F0000003F000000);
    v22 = a2;
    sub_1AF0FD32C(a1, a1 + 1048, a4, a5);
    sub_1AF0FDA58(a1, 0x3CCCCCCD3CCCCCCDLL, 0x3D4CCCCD3CCCCCCDLL, 0, a1 + 1048, 1, v16.n128_f32[0], v16.n128_f32[1], v22.n128_f32[0], v22.n128_f32[1]);
    sub_1AF0FD32C(a1, a1 + 888, v6, v7);
    v8 = v16;
    v8.n128_u32[2] = 0;
    v20 = v8;
    v9 = v8;
    v9.i32[1] = v16.n128_i32[1];
    v10 = v9;
    v15 = v9;
    v11 = v22;
    v11.n128_u32[2] = 0;
    v18 = v11;
    v12 = v11;
    v12.i32[1] = v16.n128_i32[1];
    v17 = v12;
    sub_1AF0FD5DC(a1, 0, &xmmword_1AFE204B0, &xmmword_1AFE204B0, a1 + 888, v10, v12);
    v13 = v18;
    v13.i32[1] = v22.n128_i32[1];
    v19 = v13;
    sub_1AF0FD5DC(a1, 0, &xmmword_1AFE204B0, &xmmword_1AFE204B0, a1 + 888, v17, v13);
    v14 = v20;
    v14.i32[1] = v22.n128_i32[1];
    v21 = v14;
    sub_1AF0FD5DC(a1, 0, &xmmword_1AFE204B0, &xmmword_1AFE204B0, a1 + 888, v19, v14);
    sub_1AF0FD5DC(a1, 0, &xmmword_1AFE204B0, &xmmword_1AFE204B0, a1 + 888, v21, v15);
  }

  sub_1AF0FD74C(a1);
}

void sub_1AF0FEAB4(uint64_t *a1)
{
  sub_1AF0FCBF8(a1, a1 + 171);
  sub_1AF0FCBF8(a1, a1 + 151);
  sub_1AF0FCBF8(a1, a1 + 51);
  sub_1AF0FCBF8(a1, a1 + 71);
  sub_1AF0FCBF8(a1, a1 + 91);
  sub_1AF0FCBF8(a1, a1 + 131);

  sub_1AF0FCBF8(a1, a1 + 111);
}

void sub_1AF0FEB30(uint64_t a1, uint64_t a2, float *a3, float *a4, uint64_t a5, float32x4_t a6, float32x4_t a7, int8x16_t a8, double a9, float32x4_t a10)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    a8 = *a2;
    v10 = *(a2 + 16);
    a10 = *(a2 + 32);
    a7 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(a2 + 48), a10, a7, 2), v10, *a7.f32, 1), *a2, a7.f32[0]);
    a6 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(a2 + 48), a10, a6, 2), v10, *a6.f32, 1), *a2, a6.f32[0]);
  }

  v11 = vsubq_f32(a7, a6);
  a10.i32[0] = v11.i32[2];
  a8.i32[0] = 1.0;
  v12.i64[0] = 0x8000000080000000;
  v12.i64[1] = 0x8000000080000000;
  v12.i32[0] = vbslq_s8(v12, a8, a10).i32[0];
  v13 = v11.f32[1] / (fabsf(v11.f32[2]) + 1.0);
  a10.f32[0] = v11.f32[2] + (*v12.i32 * vmuls_lane_f32(v13, *v11.f32, 1));
  a10.f32[1] = *v12.i32 * -(v11.f32[0] * v13);
  a10.f32[2] = -v11.f32[0];
  v14 = vmulq_f32(a10, vdupq_n_s32(0x3E4CCCCDu));
  v15 = vaddq_f32(a7, vmulq_f32(v11, vdupq_n_s32(0xBE99999A)));
  v16 = vaddq_f32(v15, v14);
  v17 = vsubq_f32(v15, v14);
  v18 = a6.i64[0];
  v19 = a6.u32[2];
  v22 = a7.u32[2];
  v21 = a7.i64[0];
  v25 = v16.i32[2];
  v24 = v16.i64[0];
  v26 = v17.i64[0];
  v27 = v17.i32[2];
  v20 = ((a3[3] * 255.0) << 24) | ((fminf(fmaxf(a3[2], 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(a3[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*a3, 0.0), 1.0) * 255.0);
  v23 = ((a4[3] * 255.0) << 24) | ((fminf(fmaxf(a4[2], 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(a4[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*a4, 0.0), 1.0) * 255.0);
  sub_1AF0FC694(a1, &v18, 4u, word_1AFE204CC, 6u, a5, 1);
}

void sub_1AF0FED1C(uint64_t *a1, float32x4_t *a2, float *a3, float *a4, int a5, float32x4_t a6, float32x4_t a7)
{
  if (a5)
  {
    v11 = 71;
  }

  else
  {
    v11 = 51;
  }

  sub_1AF0FD32C(a1, &a1[v11], a3, a4);

  sub_1AF0FD5DC(a1, a2, a3, a4, &a1[v11], a6, a7);
}

__n128 sub_1AF0FEDA4(uint64_t a1, float32x4_t *a2, uint64_t a3, float *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1864) > 0.0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = a2[1];
    v18 = *a2;
    v19 = v8;
    if (a3)
    {
      v9 = *(a3 + 16);
      v20 = *a3;
      v21 = v9;
      v10 = *(a3 + 48);
      v22 = *(a3 + 32);
      v23 = v10;
    }

    else
    {
      v20 = xmmword_1AFE20150;
      v21 = xmmword_1AFE20160;
      v22 = xmmword_1AFE20180;
      v23 = xmmword_1AFE201A0;
    }

    v24 = *a4;
    sub_1AF0FDD04(a1, 4, &v18, 0x70uLL);
  }

  sub_1AF0FD32C(a1, a1 + 408, a3, a4);
  v11 = a2[1];
  v12 = vsubq_f32(*a2, v11);
  v13 = vaddq_f32(v11, v11);
  v14 = vdupq_laneq_s32(v13, 3);
  v14.i32[0] = v13.i32[0];
  v18 = v12;
  v19 = vaddq_f32(v12, v14);
  v20 = vaddq_f32(v12, vextq_s8(v13, vuzp2q_s32(v13, v13), 0xCuLL));
  v21 = vaddq_f32(v14, v20);
  v15 = vzip2q_s32(v13, v13);
  v16 = vextq_s8(v15, v15, 8uLL);
  v22 = vaddq_f32(v12, v16);
  v23 = vaddq_f32(v16, v19);
  v24 = vaddq_f32(v16, v20);
  v25 = vaddq_f32(v16, v21);
  sub_1AF0FFCD0(a1, &v18, a3, a4, a1 + 408);
  return result;
}

void sub_1AF0FEF00(uint64_t *a1, uint64_t a2, float32x4_t *a3, float *a4)
{
  v192 = *MEMORY[0x1E69E9840];
  sub_1AF0FD32C(a1, (a1 + 51), a3, a4);
  if (a3)
  {
    v10 = 0;
    v11 = *a3;
    v12 = a3[1];
    v14 = a3[2];
    v13 = a3[3];
    v15 = *(a2 + 48);
    v186 = *(a2 + 32);
    v187 = v15;
    v16 = *(a2 + 80);
    v188 = *(a2 + 64);
    v189 = v16;
    v17 = *(a2 + 16);
    v184 = *a2;
    v185 = v17;
    v18 = vmulq_f32(v11, v11);
    v19 = vmulq_f32(v12, v12);
    v20 = vmulq_f32(v14, v14);
    v9 = vzip2q_s32(v18, v20);
    v21 = vzip1q_s32(vzip1q_s32(v18, v20), v19);
    v22 = vtrn2q_s32(v18, v19);
    v22.i32[2] = v20.i32[1];
    v23 = vaddq_f32(vzip1q_s32(v9, vdupq_laneq_s32(v19, 2)), vaddq_f32(v21, v22));
    __asm { FMOV            V5.4S, #1.0 }

    v29 = vceqzq_f32(v23);
    v29.i32[3] = 0;
    v30 = vbslq_s8(vcltzq_s32(v29), v23, vdivq_f32(_Q5, v23));
    v31 = vmulq_n_f32(v11, v30.f32[0]);
    v32 = vmulq_lane_f32(v12, *v30.f32, 1);
    v33 = vmulq_laneq_f32(v14, v30, 2);
    do
    {
      v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*(&v184 + v10))), v32, *&v184.f32[v10 / 4], 1), v33, *(&v184 + v10), 2), v13, *(&v184 + v10), 3);
      *(&v184 + v10) = v8;
      v10 += 16;
    }

    while (v10 != 96);
    v34 = v184;
    v35 = v185;
    v37 = v186;
    v36 = v187;
    v38 = v188;
    v39 = v189;
  }

  else
  {
    v34 = *a2;
    v35 = *(a2 + 16);
    v37 = *(a2 + 32);
    v36 = *(a2 + 48);
    v38 = *(a2 + 64);
    v39 = *(a2 + 80);
  }

  v40 = vextq_s8(vextq_s8(v37, v37, 0xCuLL), v37, 8uLL);
  v41 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
  v42 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
  v43 = vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL);
  v44 = vmlaq_f32(vmulq_f32(v43, vnegq_f32(v42)), v41, v40);
  v45 = vmulq_f32(v39, v44);
  v8.f32[0] = v45.f32[2] + vaddv_f32(*v45.f32);
  if (v8.f32[0] != 0.0)
  {
    v46 = v39;
    v46.f32[0] = -v39.f32[3];
    v47 = v37;
    *v47.i32 = -*&v37.i32[3];
    v48 = v35;
    *v48.i32 = -v35.f32[3];
    v49 = vmulq_f32(v46, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v48, v48, 0xCuLL), v48, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL))), vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL), vextq_s8(vextq_s8(v47, v47, 0xCuLL), v47, 8uLL)));
    v50 = v39;
    v50.f32[1] = -v39.f32[3];
    v51 = v37;
    *&v51.i32[1] = -*&v37.i32[3];
    v52 = v35;
    *&v52.i32[1] = -v35.f32[3];
    v49.f32[0] = v49.f32[2] + vaddv_f32(*v49.f32);
    v53 = vmulq_f32(v50, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v52, v52, 0xCuLL), v52, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL))), vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL), vextq_s8(vextq_s8(v51, v51, 0xCuLL), v51, 8uLL)));
    v54 = v39;
    v54.f32[2] = -v39.f32[3];
    v55 = v37;
    *&v55.i32[2] = -*&v37.i32[3];
    v56 = v35;
    *&v56.i32[2] = -v35.f32[3];
    v57 = vmulq_f32(v54, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v56, v56, 0xCuLL), v56, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL))), vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL), vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL)));
    v49.f32[1] = v53.f32[2] + vaddv_f32(*v53.f32);
    v49.f32[2] = v57.f32[2] + vaddv_f32(*v57.f32);
    v184 = vdivq_f32(v49, vdupq_lane_s32(*v8.f32, 0));
  }

  v58 = vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL);
  v59 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
  v60 = vmlaq_f32(vmulq_f32(v40, vnegq_f32(v59)), v42, v58);
  v61 = vmulq_f32(v39, v60);
  v42.f32[0] = v61.f32[2] + vaddv_f32(*v61.f32);
  if (v42.f32[0] != 0.0)
  {
    v62 = v39;
    v62.f32[0] = -v39.f32[3];
    v63 = v34;
    *v63.i32 = -v34.f32[3];
    v64 = v37;
    *v64.i32 = -*&v37.i32[3];
    v65 = vmulq_f32(v62, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v64, v64, 0xCuLL), v64, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL))), vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), vextq_s8(vextq_s8(v63, v63, 0xCuLL), v63, 8uLL)));
    v66 = v39;
    v66.f32[1] = -v39.f32[3];
    v67 = v34;
    *&v67.i32[1] = -v34.f32[3];
    v68 = v37;
    *&v68.i32[1] = -*&v37.i32[3];
    v65.f32[0] = v65.f32[2] + vaddv_f32(*v65.f32);
    v69 = vmulq_f32(v66, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v68, v68, 0xCuLL), v68, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL))), vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL), vextq_s8(vextq_s8(v67, v67, 0xCuLL), v67, 8uLL)));
    v70 = v39;
    v70.f32[2] = -v39.f32[3];
    v71 = v34;
    *&v71.i32[2] = -v34.f32[3];
    v72 = v37;
    *&v72.i32[2] = -*&v37.i32[3];
    v73 = vmulq_f32(v70, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v72, v72, 0xCuLL), v72, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL))), vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL), vextq_s8(vextq_s8(v71, v71, 0xCuLL), v71, 8uLL)));
    v65.f32[1] = v69.f32[2] + vaddv_f32(*v69.f32);
    v65.f32[2] = v73.f32[2] + vaddv_f32(*v73.f32);
    v185 = vdivq_f32(v65, vdupq_lane_s32(*v42.f32, 0));
  }

  v74 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
  v75 = vextq_s8(vextq_s8(v36, v36, 0xCuLL), v36, 8uLL);
  v76 = vmlaq_f32(vmulq_f32(v75, vnegq_f32(v41)), v74, v43);
  v77 = vmulq_f32(v39, v76);
  v43.f32[0] = v77.f32[2] + vaddv_f32(*v77.f32);
  if (v43.f32[0] != 0.0)
  {
    v78 = v39;
    v78.f32[0] = -v39.f32[3];
    v79 = v35;
    *v79.i32 = -v35.f32[3];
    v80 = v36;
    *v80.i32 = -v36.f32[3];
    v81 = vmulq_f32(v78, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v80, v80, 0xCuLL), v80, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL))), vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL), vextq_s8(vextq_s8(v79, v79, 0xCuLL), v79, 8uLL)));
    v82 = v39;
    v82.f32[1] = -v39.f32[3];
    v83 = v35;
    *&v83.i32[1] = -v35.f32[3];
    v84 = v36;
    *&v84.i32[1] = -v36.f32[3];
    v81.f32[0] = v81.f32[2] + vaddv_f32(*v81.f32);
    v85 = vmulq_f32(v82, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v84, v84, 0xCuLL), v84, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL))), vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL), vextq_s8(vextq_s8(v83, v83, 0xCuLL), v83, 8uLL)));
    v86 = v39;
    v86.f32[2] = -v39.f32[3];
    v87 = v35;
    *&v87.i32[2] = -v35.f32[3];
    v88 = v36;
    *&v88.i32[2] = -v36.f32[3];
    v89 = vmulq_f32(v86, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v88, v88, 0xCuLL), v88, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL))), vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL), vextq_s8(vextq_s8(v87, v87, 0xCuLL), v87, 8uLL)));
    v81.f32[1] = v85.f32[2] + vaddv_f32(*v85.f32);
    v81.f32[2] = v89.f32[2] + vaddv_f32(*v89.f32);
    v186 = vdivq_f32(v81, vdupq_lane_s32(*v43.f32, 0));
  }

  v90 = vmlaq_f32(vmulq_f32(v58, vnegq_f32(v74)), v59, v75);
  v91 = vmulq_f32(v39, v90);
  v91.f32[0] = v91.f32[2] + vaddv_f32(*v91.f32);
  if (v91.f32[0] != 0.0)
  {
    v92 = v39;
    v92.f32[0] = -v39.f32[3];
    v93 = v36;
    *v93.i32 = -v36.f32[3];
    v94 = v34;
    *v94.i32 = -v34.f32[3];
    v95 = vmulq_f32(v92, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v94, v94, 0xCuLL), v94, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL))), vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL), vextq_s8(vextq_s8(v93, v93, 0xCuLL), v93, 8uLL)));
    v96 = v39;
    v96.f32[1] = -v39.f32[3];
    v97 = v36;
    *&v97.i32[1] = -v36.f32[3];
    v98 = v34;
    *&v98.i32[1] = -v34.f32[3];
    v95.f32[0] = v95.f32[2] + vaddv_f32(*v95.f32);
    v99 = vmulq_f32(v96, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v98, v98, 0xCuLL), v98, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v97, v97), v97, 0xCuLL))), vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL), vextq_s8(vextq_s8(v97, v97, 0xCuLL), v97, 8uLL)));
    v100 = v39;
    v100.f32[2] = -v39.f32[3];
    v101 = v36;
    *&v101.i32[2] = -v36.f32[3];
    v102 = v34;
    *&v102.i32[2] = -v34.f32[3];
    v103 = vmulq_f32(v100, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v102, v102, 0xCuLL), v102, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL))), vextq_s8(vuzp1q_s32(v102, v102), v102, 0xCuLL), vextq_s8(vextq_s8(v101, v101, 0xCuLL), v101, 8uLL)));
    v95.f32[1] = v99.f32[2] + vaddv_f32(*v99.f32);
    v95.f32[2] = v103.f32[2] + vaddv_f32(*v103.f32);
    v9 = vdivq_f32(v95, vdupq_lane_s32(*v91.f32, 0));
    v187 = v9;
  }

  v104 = vmulq_f32(v38, v44);
  *v9.i32 = v104.f32[2] + vaddv_f32(*v104.f32);
  if (*v9.i32 != 0.0)
  {
    v105 = v38;
    v105.f32[0] = -v38.f32[3];
    v106 = v37;
    *v106.i32 = -*&v37.i32[3];
    v107 = v35;
    *v107.i32 = -v35.f32[3];
    v108 = vmulq_f32(v105, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v107, v107, 0xCuLL), v107, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL))), vextq_s8(vuzp1q_s32(v107, v107), v107, 0xCuLL), vextq_s8(vextq_s8(v106, v106, 0xCuLL), v106, 8uLL)));
    v109 = v38;
    v109.f32[1] = -v38.f32[3];
    v110 = v37;
    *&v110.i32[1] = -*&v37.i32[3];
    v111 = v35;
    *&v111.i32[1] = -v35.f32[3];
    v108.f32[0] = v108.f32[2] + vaddv_f32(*v108.f32);
    v112 = vmulq_f32(v109, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v111, v111, 0xCuLL), v111, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v110, v110), v110, 0xCuLL))), vextq_s8(vuzp1q_s32(v111, v111), v111, 0xCuLL), vextq_s8(vextq_s8(v110, v110, 0xCuLL), v110, 8uLL)));
    v113 = v38;
    v113.f32[2] = -v38.f32[3];
    v114 = v37;
    *&v114.i32[2] = -*&v37.i32[3];
    v115 = v35;
    *&v115.i32[2] = -v35.f32[3];
    v116 = vmulq_f32(v113, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v115, v115, 0xCuLL), v115, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL))), vextq_s8(vuzp1q_s32(v115, v115), v115, 0xCuLL), vextq_s8(vextq_s8(v114, v114, 0xCuLL), v114, 8uLL)));
    v108.f32[1] = v112.f32[2] + vaddv_f32(*v112.f32);
    v108.f32[2] = v116.f32[2] + vaddv_f32(*v116.f32);
    v188 = vdivq_f32(v108, vdupq_lane_s32(*v9.i8, 0));
  }

  v117 = vmulq_f32(v38, v60);
  v117.f32[0] = v117.f32[2] + vaddv_f32(*v117.f32);
  if (v117.f32[0] != 0.0)
  {
    v118 = v38;
    v118.f32[0] = -v38.f32[3];
    v119 = v34;
    *v119.i32 = -v34.f32[3];
    v120 = v37;
    *v120.i32 = -*&v37.i32[3];
    v121 = vmulq_f32(v118, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v120, v120, 0xCuLL), v120, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v119, v119), v119, 0xCuLL))), vextq_s8(vuzp1q_s32(v120, v120), v120, 0xCuLL), vextq_s8(vextq_s8(v119, v119, 0xCuLL), v119, 8uLL)));
    v122 = v38;
    v122.f32[1] = -v38.f32[3];
    v123 = v34;
    *&v123.i32[1] = -v34.f32[3];
    v124 = v37;
    *&v124.i32[1] = -*&v37.i32[3];
    v121.f32[0] = v121.f32[2] + vaddv_f32(*v121.f32);
    v125 = vmulq_f32(v122, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v124, v124, 0xCuLL), v124, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v123, v123), v123, 0xCuLL))), vextq_s8(vuzp1q_s32(v124, v124), v124, 0xCuLL), vextq_s8(vextq_s8(v123, v123, 0xCuLL), v123, 8uLL)));
    v126 = v38;
    v126.f32[2] = -v38.f32[3];
    v127 = v34;
    *&v127.i32[2] = -v34.f32[3];
    v128 = v37;
    *&v128.i32[2] = -*&v37.i32[3];
    v129 = vmulq_f32(v126, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v128, v128, 0xCuLL), v128, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v127, v127), v127, 0xCuLL))), vextq_s8(vuzp1q_s32(v128, v128), v128, 0xCuLL), vextq_s8(vextq_s8(v127, v127, 0xCuLL), v127, 8uLL)));
    v121.f32[1] = v125.f32[2] + vaddv_f32(*v125.f32);
    v121.f32[2] = v129.f32[2] + vaddv_f32(*v129.f32);
    v189 = vdivq_f32(v121, vdupq_lane_s32(*v117.f32, 0));
  }

  v130 = vmulq_f32(v38, v76);
  v130.f32[0] = v130.f32[2] + vaddv_f32(*v130.f32);
  if (v130.f32[0] != 0.0)
  {
    v131 = v38;
    v131.f32[0] = -v38.f32[3];
    v132 = v35;
    *v132.i32 = -v35.f32[3];
    v133 = v36;
    *v133.i32 = -v36.f32[3];
    v134 = vmulq_f32(v131, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v133, v133, 0xCuLL), v133, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v132, v132), v132, 0xCuLL))), vextq_s8(vuzp1q_s32(v133, v133), v133, 0xCuLL), vextq_s8(vextq_s8(v132, v132, 0xCuLL), v132, 8uLL)));
    v135 = v38;
    v135.f32[1] = -v38.f32[3];
    v136 = v35;
    *&v136.i32[1] = -v35.f32[3];
    v137 = v36;
    *&v137.i32[1] = -v36.f32[3];
    v134.f32[0] = v134.f32[2] + vaddv_f32(*v134.f32);
    v138 = vmulq_f32(v135, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v137, v137, 0xCuLL), v137, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v136, v136), v136, 0xCuLL))), vextq_s8(vuzp1q_s32(v137, v137), v137, 0xCuLL), vextq_s8(vextq_s8(v136, v136, 0xCuLL), v136, 8uLL)));
    v139 = v38;
    v139.f32[2] = -v38.f32[3];
    v140 = v35;
    *&v140.i32[2] = -v35.f32[3];
    v141 = v36;
    *&v141.i32[2] = -v36.f32[3];
    v142 = vmulq_f32(v139, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v141, v141, 0xCuLL), v141, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v140, v140), v140, 0xCuLL))), vextq_s8(vuzp1q_s32(v141, v141), v141, 0xCuLL), vextq_s8(vextq_s8(v140, v140, 0xCuLL), v140, 8uLL)));
    v134.f32[1] = v138.f32[2] + vaddv_f32(*v138.f32);
    v134.f32[2] = v142.f32[2] + vaddv_f32(*v142.f32);
    v190 = vdivq_f32(v134, vdupq_lane_s32(*v130.f32, 0));
  }

  v172 = v37;
  v143 = vmulq_f32(v38, v90);
  v143.f32[0] = v143.f32[2] + vaddv_f32(*v143.f32);
  if (v143.f32[0] != 0.0)
  {
    v144 = v38;
    v144.f32[0] = -v38.f32[3];
    v145 = v36;
    *v145.i32 = -v36.f32[3];
    v146 = v34;
    *v146.i32 = -v34.f32[3];
    v147 = vmulq_f32(v144, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v146, v146, 0xCuLL), v146, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v145, v145), v145, 0xCuLL))), vextq_s8(vuzp1q_s32(v146, v146), v146, 0xCuLL), vextq_s8(vextq_s8(v145, v145, 0xCuLL), v145, 8uLL)));
    v148 = v38;
    v148.f32[1] = -v38.f32[3];
    v149 = v36;
    *&v149.i32[1] = -v36.f32[3];
    v150 = v34;
    *&v150.i32[1] = -v34.f32[3];
    v147.f32[0] = v147.f32[2] + vaddv_f32(*v147.f32);
    v151 = vmulq_f32(v148, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v150, v150, 0xCuLL), v150, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v149, v149), v149, 0xCuLL))), vextq_s8(vuzp1q_s32(v150, v150), v150, 0xCuLL), vextq_s8(vextq_s8(v149, v149, 0xCuLL), v149, 8uLL)));
    v152 = v38;
    v152.f32[2] = -v38.f32[3];
    v153 = v36;
    *&v153.i32[2] = -v36.f32[3];
    v154 = v34;
    *&v154.i32[2] = -v34.f32[3];
    v155 = vmulq_f32(v152, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v154, v154, 0xCuLL), v154, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v153, v153), v153, 0xCuLL))), vextq_s8(vuzp1q_s32(v154, v154), v154, 0xCuLL), vextq_s8(vextq_s8(v153, v153, 0xCuLL), v153, 8uLL)));
    v147.f32[1] = v151.f32[2] + vaddv_f32(*v151.f32);
    v147.f32[2] = v155.f32[2] + vaddv_f32(*v155.f32);
    v191 = vdivq_f32(v147, vdupq_lane_s32(*v143.f32, 0));
  }

  sub_1AF0FFCD0(a1, &v184, 0, a4, (a1 + 51));
  v178 = v187;
  v180 = v184;
  v174 = v191;
  v175 = v188;
  v156 = vsubq_f32(v184, v191);
  v157 = vmulq_f32(v156, v156);
  *v158.i32 = sqrtf(v157.f32[2] + vaddv_f32(*v157.f32)) * 0.05;
  v183 = v158;
  v159.i64[0] = 0x3F0000003F000000;
  v159.i64[1] = 0x3F0000003F000000;
  v160 = vmulq_f32(vaddq_f32(v184, v187), v159);
  v173 = vmulq_f32(vaddq_f32(v191, v188), v159);
  sub_1AF0FEB30(a1, 0, a4, a4, (a1 + 51), v160, vmlaq_n_f32(v160, v39, *v158.i32), v39, *v158.i64, v187);
  sub_1AF0FEB30(a1, 0, a4, a4, (a1 + 51), v173, vmlaq_n_f32(v173, v38, *v183.i32), v38, *v173.i64, v161);
  v162.i64[0] = 0x3F0000003F000000;
  v162.i64[1] = 0x3F0000003F000000;
  v182 = vmulq_f32(vaddq_f32(v186, v190), v162);
  v177 = vmulq_f32(vaddq_f32(v180, v175), v162);
  v179 = vmulq_f32(vaddq_f32(v174, v178), v162);
  v163 = vmulq_f32(vaddq_f32(v177, v182), v162);
  v176 = vmulq_f32(vaddq_f32(v185, v189), v162);
  v181 = vmulq_f32(vaddq_f32(v179, v176), v162);
  sub_1AF0FEB30(a1, 0, a4, a4, (a1 + 51), v163, vmlaq_n_f32(v163, v35, *v183.i32), v35, *v183.i64, v177);
  sub_1AF0FEB30(a1, 0, a4, a4, (a1 + 51), v181, vmlaq_n_f32(v181, v34, *v183.i32), v183, *v181.i64, v164);
  v165.i64[0] = 0x3F0000003F000000;
  v165.i64[1] = 0x3F0000003F000000;
  v166 = vmulq_f32(vaddq_f32(v179, v182), v165);
  sub_1AF0FEB30(a1, 0, a4, a4, (a1 + 51), v166, vmlaq_n_f32(v166, v36, *v183.i32), v36, *v183.i64, v167);
  v169.i64[0] = 0x3F0000003F000000;
  v169.i64[1] = 0x3F0000003F000000;
  v170 = vmulq_f32(vaddq_f32(v177, v176), v169);
  v171 = vmlaq_n_f32(v170, v172, *v183.i32);

  sub_1AF0FEB30(a1, 0, a4, a4, (a1 + 51), v170, v171, v172, *v183.i64, v168);
}

void sub_1AF0FFC70(uint64_t *a1, uint64_t a2, float32x4_t *a3, float *a4)
{
  sub_1AF0FD32C(a1, (a1 + 51), a3, a4);

  sub_1AF0FFCD0(a1, a2, a3, a4, (a1 + 51));
}

void sub_1AF0FFCD0(uint64_t a1, uint64_t a2, float32x4_t *a3, float *a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    for (i = 0; i != 128; i += 16)
    {
      *(a2 + i) = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a3[3], a3[2], *(a2 + i), 2), a3[1], *(a2 + i), 1), *a3, COERCE_FLOAT(*(a2 + i)));
    }
  }

  for (j = 0; j != 128; j += 16)
  {
    v7 = *(a2 + j);
    *&v10[j] = v7;
    *&v10[j + 8] = DWORD2(v7);
  }

  v8 = ((a4[3] * 255.0) << 24) | ((fminf(fmaxf(a4[2], 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(a4[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*a4, 0.0), 1.0) * 255.0);
  for (k = 12; k != 140; k += 16)
  {
    *&v10[k] = v8;
  }

  sub_1AF0FC694(a1, v10, 8u, word_1AFE204D8, 0x18u, a5, 1);
}

void sub_1AF0FFE04(uint64_t *a1, uint64_t a2, float32x4_t *a3, float *a4)
{
  sub_1AF0FD32C(a1, (a1 + 51), a3, a4);
  if (sub_1AF121B4C(a2))
  {
    v8 = sub_1AF0FB884(a2);
    v9 = sub_1AF121B74(a2);
    v10 = sub_1AF121B5C(a2);
    if (v10 >= 1)
    {
      v11 = v10;
      v12 = (v9 + 4);
      do
      {
        sub_1AF0FD5DC(a1, a3, a4, a4, (a1 + 51), *(v8 + 16 * *(v12 - 1)), *(v8 + 16 * *v12));
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }
}

void sub_1AF0FFEB4(void *a1, float32x4_t *a2)
{
  v4 = sub_1AF12EE68(a1[1]);
  if ((v4 & 0x80) != 0)
  {
    v5 = sub_1AF1B92C8(a2);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1AF1B9B04(a2);
      LODWORD(v8) = 12.5;
      sub_1AF27F708(a1[1], v8, *v7, v7[1], v7[2], v7[3]);
      sub_1AF1CA100(v6, a1, a2, v9);
    }
  }

  if ((v4 & 0x100) != 0)
  {
    sub_1AF100028(a1, a2);
  }

  v10 = sub_1AF12E2AC(a1[1]);
  objc_msgSend_authoring_drawDeformersForNode_authoringEnvironment_(v10, v11, a2, a1);
  if ((v4 & 2) != 0)
  {
    v12 = sub_1AF1B92C8(a2);
    if (v12)
    {
      sub_1AF1CA30C(v12, a1, a2);
    }

    v13 = sub_1AF1B7B34(a2);
    memset(v20, 0, sizeof(v20));
    if (sub_1AF1B81E4(a2, 1, v20))
    {
      v14 = sub_1AF1B9B04(a2);
      v19[0] = 0;
      v19[1] = 0;
      v15 = 0.0;
      if (!v13)
      {
        v15 = 1.0;
      }

      sub_1AF163FFC(v19, 1.0, v15, 0.9, 1.0);
      sub_1AF0FEDA4(a1, v20, v14, v19);
    }
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = sub_1AF1B9B04(a2);
    v17 = sub_1AF1B75A0(a2);
    if (v17)
    {
      v18 = sub_1AF1B2C1C(v17);
      if (v18)
      {
        sub_1AF0FC05C(a1, v18, 0, v16);
      }
    }
  }
}

uint64_t sub_1AF100028(uint64_t a1, uint64_t a2)
{
  result = sub_1AF1B75A0(a2);
  if (result)
  {
    v5 = result;
    result = sub_1AF1B2C1C(result);
    if (result)
    {
      v6 = sub_1AF1A4604(result, 0, 0, 0);
      v7 = *(a1 + 8);
      v8 = sub_1AF1B9B04(a2);
      v38 = v8[1];
      v40 = *v8;
      v34 = v8[3];
      v36 = v8[2];
      v9 = sub_1AF1B92C8(a2);
      if (v9)
      {
        v11 = v9;
        v12 = sub_1AF1C9420(v9);
        v10.n128_f64[0] = sub_1AF1CA3E8(v11, v12, v40, v38, v36, v34);
        v13 = v10;
        v15 = v14;
        v17 = v16;
        v19 = v18;
      }

      else
      {
        v15 = v38;
        v13 = v40;
        v19 = v34;
        v17 = v36;
      }

      v39 = v15;
      v41 = v13;
      v35 = v19;
      v37 = v17;
      v10.n128_u32[0] = 6.25;
      sub_1AF27F708(v7, v10.n128_f64[0], v13, v15, v17, v19);
      v21 = v20;
      if (sub_1AF170998(v5))
      {
        v22 = sub_1AF13050C(v7, 1);
        v32 = v22[1];
        v33 = *v22;
        v30 = v22[3];
        v31 = v22[2];
        v23 = sub_1AF13050C(v7, 0);
        v24 = 0;
        v25 = *v23;
        v26 = v23[1];
        v27 = v23[2];
        v28 = v23[3];
        v57 = v41;
        v58 = v39;
        v59 = v37;
        v60 = v35;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        do
        {
          *(&v61 + v24) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v57 + v24))), v32, v57.n128_u64[v24 / 8], 1), v31, *(&v57 + v24), 2), v30, *(&v57 + v24), 3);
          v24 += 16;
        }

        while (v24 != 64);
        v29 = 0;
        v57 = v61;
        v58 = v62;
        v59 = v63;
        v60 = v64;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        do
        {
          *(&v61 + v29) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*(&v57 + v29))), v26, v57.n128_u64[v29 / 8], 1), v27, *(&v57 + v29), 2), v28, *(&v57 + v29), 3);
          v29 += 16;
        }

        while (v29 != 64);
        sub_1AF17757C(a1, v5, v61, v62, v63, v64);
      }

      else
      {
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = sub_1AF100444;
        v50[3] = &unk_1E7A79640;
        v55 = v6;
        v56 = a1;
        v51 = v41;
        v52 = v39;
        v53 = v37;
        v54 = v35;
        sub_1AF170D90(v5, v50);
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = sub_1AF1004C0;
      v42[3] = &unk_1E7A79660;
      v49 = v21;
      v47 = v6;
      v48 = a1;
      v43 = v41;
      v44 = v39;
      v45 = v37;
      v46 = v35;
      return sub_1AF171018(v5, v42);
    }
  }

  return result;
}

uint64_t sub_1AF1002D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_attributes(a2, a2, a3, a4);
  v8 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, 3, v7);
  if (objc_msgSend_format(v8, v9, v10, v11))
  {
    result = *(a1 + 40);
    if (!result)
    {
      result = sub_1AF1D534C(@"ManipulatorColorOnly_vert", @"ManipulatorColorOnly_frag");
      *(a1 + 40) = result;
    }
  }

  else
  {
    result = *(a1 + 32);
    if (!result)
    {
      result = sub_1AF1D534C(@"Manipulator_vert", @"Manipulator_frag");
      *(a1 + 32) = result;
    }
  }

  return result;
}

uint64_t sub_1AF100354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, char a14)
{
  v21 = sub_1AF12E2AC(*(a1 + 8));
  v24 = sub_1AF1002D8(a1, a8, v22, v23);
  if (a14)
  {
    v25 = *(a1 + 1680);
  }

  else
  {
    v25 = 0;
  }

  v35[0] = a9;
  v35[1] = a10;
  v35[2] = a11;
  v35[3] = a12;
  v35[4] = a13;
  v26 = sub_1AF15BBC4();
  return objc_msgSend_authoring_drawPrimitives_vertexCount_instanceCount_vertexBuffers_offsets_range_vertexDescriptor_withProgram_uniforms_uniformsLength_rasterizerStates_blendStates_(v21, v27, a2, a3, 1, a4, a5, a6, a7, a8, v24, v35, 80, v25, v26);
}

void sub_1AF100444(float32x4_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, float a5)
{
  v6 = a3;
  *v8.i64 = sub_1AF1AF084(a1[6].i64[0], a2, a3, a4);
  v14 = v8;
  *v11.i64 = sub_1AF1AF084(a1[6].i64[0], v6, v9, v10);
  v13 = v11;
  v15[0] = sub_1AF170D58(a5);
  v15[1] = v12;
  sub_1AF0FE080(a1[6].i64[1], a1 + 2, v15, 0, v14, v13);
}

void sub_1AF1004C0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, float a5)
{
  v7.n128_f64[0] = sub_1AF1AF084(*(a1 + 96), a2, a3, a4);
  v11 = v7;
  *&v12 = sub_1AF170D58(a5);
  *(&v12 + 1) = v8;
  v9 = v11;
  v9.n128_u32[3] = *(a1 + 112);
  sub_1AF0FE168(*(a1 + 104), (a1 + 32), &v12, v10, v9);
}

void sub_1AF10052C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6)
  {
    v11 = 71;
  }

  else
  {
    v11 = 51;
  }

  sub_1AF0FD32C(a1, &a1[v11], a3, a4);

  sub_1AF1005C4(a1, a2, a3, a4, a5, &a1[v11]);
}

void sub_1AF1005C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = *(a6 + 56);
  if (*(a6 + 56))
  {
    v9 = 51;
  }

  else
  {
    v9 = 52;
  }

  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v52.f32[-4 * v9];
  v19 = *v18;
  v20 = vmlaq_n_f32(*v10, *v18, *v13.i32);
  if (v11)
  {
    v13 = *v11;
    v15 = *(v11 + 16);
    v21 = *(v11 + 32);
    v22 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v21, v19, 2), v15, *v19.f32, 1), *v11, v19.f32[0]);
    v23 = vmulq_f32(v19, v19);
    v24 = vmulq_f32(v22, v22);
    v24.f32[0] = v24.f32[2] + vaddv_f32(*v24.f32);
    v25 = vdupq_lane_s32(*v24.f32, 0);
    v25.i32[3] = 0;
    v26 = vrsqrteq_f32(v25);
    v27 = vmulq_f32(v26, vrsqrtsq_f32(v25, vmulq_f32(v26, v26)));
    v28 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v24.f32[0] != 0.0)), 0x1FuLL));
    v28.i32[3] = 0;
    v19 = vbslq_s8(vcltzq_s32(v28), vmulq_f32(v22, vmulq_n_f32(vmulq_f32(v27, vrsqrtsq_f32(v25, vmulq_f32(v27, v27))), sqrtf(v23.f32[2] + vaddv_f32(*v23.f32)))), v22);
    v16 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v11 + 48), v21, v20, 2), v15, *v20.f32, 1), *v11, v20.f32[0]);
    v20 = v16;
    v52 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v11 + 48), v21, *v10, 2), v15, *v10->f32, 1), *v11, COERCE_FLOAT(*v10));
  }

  else
  {
    v52 = *v10;
  }

  v29 = 0;
  v15.i32[0] = v19.i32[2];
  v13.i32[0] = 1.0;
  v30.i64[0] = 0x8000000080000000;
  v30.i64[1] = 0x8000000080000000;
  v30.i32[0] = vbslq_s8(v30, v13, v15).i32[0];
  v16.f32[0] = v19.f32[1] / (fabsf(v19.f32[2]) + 1.0);
  v31 = vmuls_lane_f32(v16.f32[0], *v19.f32, 1);
  v16.f32[0] = -(v19.f32[0] * v16.f32[0]);
  v15.f32[0] = v19.f32[2] + (*v30.i32 * v31);
  v15.f32[1] = *v30.i32 * v16.f32[0];
  v15.f32[2] = -v19.f32[0];
  v32 = 0.0;
  v33 = ((v12[3] * 255.0) << 24) | ((fminf(fmaxf(v12[2], 0.0), 1.0) * 255.0) << 16);
  v16.f32[1] = 1.0 - v31;
  v16.i32[2] = vmuls_lane_f32(-*v30.i32, *v19.f32, 1);
  v53 = vmulq_n_f32(v16, v14);
  v54 = vmulq_n_f32(v15, v14);
  v34 = v33 | ((fminf(fmaxf(v12[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*v12, 0.0), 1.0) * 255.0);
  v55 = v20;
  do
  {
    v37 = __sincosf_stret(v32);
    v38 = v55;
    v39 = vmlaq_n_f32(vmlaq_n_f32(v55, v54, v37.__cosval), v53, v37.__sinval);
    v40 = &v17[v29];
    *v40 = v39.i64[0];
    DWORD2(v17[v29]) = v39.i32[2];
    *(v40 + 3) = v34;
    v32 = v32 + 0.12566;
    ++v29;
  }

  while (v29 != 50);
  v41 = v52.i32[2];
  *(v17 + 100) = v52.i64[0];
  *(v17 + 202) = v41;
  *(v17 + 203) = v34;
  if (!v8)
  {
    *(v17 + 102) = v38.i64[0];
    *(v17 + 206) = v38.i32[2];
    *(v17 + 207) = v34;
  }

  (MEMORY[0x1EEE9AC00])(v35, v36);
  v44 = (&v52 - v43);
  v45 = 0;
  v46 = v44;
  do
  {
    while (1)
    {
      v47 = v45 == 49 ? 0 : v45 + 1;
      if (!v8)
      {
        break;
      }

      v48 = v46 + 2;
      *v46 = v45;
      v46[1] = v47;
      ++v45;
      v46 += 2;
      if (v45 == 50)
      {
        *v48 = xmmword_1AFE201B0;
        goto LABEL_24;
      }
    }

    v49 = v46 + 3;
    v46[2] = v47;
    *v46 = 51;
    v46[1] = v45++;
    v46 += 3;
  }

  while (v45 != 50);
  for (i = 1; i != 51; ++i)
  {
    *v49 = 50;
    v49[1] = i - 1;
    if (i == 50)
    {
      v51 = 0;
    }

    else
    {
      v51 = i;
    }

    v49[2] = v51;
    v49 += 3;
  }

LABEL_24:
  sub_1AF0FC694(a1, (&v52 - v9), v9, v44, v42, a6, 1);
}

void sub_1AF100944(uint64_t *a1, float32x4_t *a2, float32x2_t *a3, uint64_t a4, float *a5, int a6, float a7, float a8)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v14 = 71;
  }

  else
  {
    v14 = 51;
  }

  sub_1AF0FD32C(a1, &a1[v14], a3, a4);
  *v15.i32 = COERCE_FLOAT(*&a3[1]);
  v16.i32[0] = 1.0;
  v17.i64[0] = 0x8000000080000000;
  v17.i64[1] = 0x8000000080000000;
  v17.i32[0] = vbslq_s8(v17, v16, v15).i32[0];
  v18 = COERCE_FLOAT(HIDWORD(*a3)) / (fabsf(*v15.i32) + 1.0);
  v19 = vmuls_lane_f32(v18, *a3, 1);
  v20.f32[0] = -(COERCE_FLOAT(*a3->f32) * v18);
  v21.f32[0] = *v15.i32 + (*v17.i32 * v19);
  v21.f32[1] = *v17.i32 * v20.f32[0];
  v21.f32[2] = -COERCE_FLOAT(*a3->f32);
  v20.f32[1] = 1.0 - v19;
  v20.i32[2] = vmuls_lane_f32(-*v17.i32, *a3, 1);
  v22 = vmulq_n_f32(*a3->f32, a7);
  v23 = vmlaq_n_f32(v22, vaddq_f32(v20, v21), a8 * 0.5);
  v24 = vmlaq_n_f32(v22, vsubq_f32(v21, v20), a8 * 0.5);
  v25 = vmlaq_n_f32(v22, vsubq_f32(vnegq_f32(v21), v20), a8 * 0.5);
  v26 = vmlaq_n_f32(v22, vsubq_f32(v20, v21), a8 * 0.5);
  v27 = *a2;
  if (a4)
  {
    v28 = *(a4 + 16);
    v29 = *(a4 + 32);
    v26 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(a4 + 48), v29, v26, 2), v28, *v26.f32, 1), *a4, v26.f32[0]);
    v25 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(a4 + 48), v29, v25, 2), v28, *v25.f32, 1), *a4, v25.f32[0]);
    v24 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(a4 + 48), v29, v24, 2), v28, *v24.f32, 1), *a4, v24.f32[0]);
    v23 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(a4 + 48), v29, v23, 2), v28, *v23.f32, 1), *a4, v23.f32[0]);
    v27 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(a4 + 48), v29, v27, 2), v28, *v27.f32, 1), *a4, v27.f32[0]);
  }

  v31 = v27.i64[0];
  v32 = v27.i32[2];
  v34 = v23.i64[0];
  v35 = v23.i32[2];
  v37 = v24.i64[0];
  v38 = v24.i32[2];
  v40 = v25.i64[0];
  v41 = v25.i32[2];
  v43 = v26.i64[0];
  v44 = v26.i32[2];
  v45 = ((a5[3] * 255.0) << 24) | ((fminf(fmaxf(a5[2], 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(a5[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*a5, 0.0), 1.0) * 255.0);
  v42 = v45;
  v39 = v45;
  v36 = v45;
  v33 = v45;
  sub_1AF0FC694(a1, &v31, 5u, word_1AFE20508, 0x10u, &a1[v14], 1);
}

void sub_1AF100BB8(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_1AF0FD32C(a1, a1 + 1208, a3, a4);
  sub_1AF100C94(a1, a1 + 1528, sub_1AF101170, 0, 0);
  v9 = *(a1 + 1240);
  v10 = *(a1 + 1528);
  if (v9 != v10)
  {
    if (v9)
    {
      CFRelease(*(a1 + 1240));
      *(a1 + 1240) = 0;
      v10 = *(a1 + 1528);
    }

    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *(a1 + 1240) = v10;
  }

  *(a1 + 1248) = *(a1 + 1536);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = &unk_1AFE204B0;
  }

  v12 = a5;
  sub_1AF103B5C(a1, &v12, v11, a2, a1 + 1208, a1 + 1528, 1, 1);
}

void sub_1AF100C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v9 = sub_1AF130864(*(a1 + 8));
  v10 = v9 > 1.0;
  if (*a2)
  {
    if (*(a2 + 32) == v10)
    {
      return;
    }

    CFRelease(*a2);
    *a2 = 0;
  }

  v58 = 0;
  v56 = *MEMORY[0x1E695F060];
  *v57 = v56;
  if (a4)
  {
    v11 = *(a2 + 64);
    if (v11)
    {
      free(v11);
    }

    (*(a4 + 16))(a4, &v58, v57, a2 + 64);
    if (!v58)
    {
      *(a2 + 64) = 0;
      *v57 = v56;
    }
  }

  v12 = a3();
  MEMORY[0x1EEE9AC00](Length, v14);
  v15 = (2 * Length + 15) & 0xFFFFFFFFFFFFFFF0;
  v62.location = 0;
  v62.length = Length;
  MEMORY[0x1EEE9AC00](v16, v17);
  GlyphsForCharacters = CTFontGetGlyphsForCharacters(v12, (&v57[-2] - v15), (&v57[-2] - v15), Length);
  MEMORY[0x1EEE9AC00](GlyphsForCharacters, v19);
  v20 = &v57[-2 * Length - 2];
  CTFontGetAdvancesForGlyphs(v12, kCTFontOrientationHorizontal, (&v57[-2] - v15), v20, Length);
  *(a2 + 48) = malloc_type_realloc(*(a2 + 48), 4 * Length, 0x100004052888210uLL);
  *(a2 + 44) = 0;
  BoundingBox = CTFontGetBoundingBox(v12);
  *(a2 + 56) = vcvtpd_s64_f64(BoundingBox.size.height);
  if (Length >= 1)
  {
    v21 = *(a2 + 48);
    LOWORD(v22) = *(a2 + 44);
    v23 = Length;
    do
    {
      width = v20->width;
      ++v20;
      v25 = width;
      *v21++ = v25;
      v26 = ceil(width);
      if (v26 <= v22)
      {
        v26 = v22;
      }

      v22 = v26;
      --v23;
    }

    while (v23);
    *(a2 + 44) = v22;
  }

  Descent = CTFontGetDescent(v12);
  Ascent = CTFontGetAscent(v12);
  v29 = Ascent + CTFontGetDescent(v12);
  v30 = v29 + CTFontGetLeading(v12);
  *(a2 + 40) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v33 = *(a2 + 44);
  if (Length > 0)
  {
    v34 = 0;
    v35 = Descent;
    v36 = v35;
    v37 = &v57[-2 * Length - 1];
    v38 = Length;
    do
    {
      *(v37 - 1) = v34;
      *v37 = v36;
      v37 += 2;
      v34 += v33;
      --v38;
    }

    while (v38);
  }

  v39 = ceil(v57[0]) + (v33 + (Length * v33));
  v40 = *(a2 + 56);
  v41 = ceil(v57[1]);
  if (v41 > v40)
  {
    v40 = v41;
  }

  v42 = v40;
  v43 = v42;
  *(a2 + 16) = v39;
  *(a2 + 24) = v42;
  *(a2 + 32) = v10;
  v44 = v9 * v42;
  v45 = vcvtms_u32_f32(v9 * v42);
  v46 = sub_1AF164458();
  v47 = CGBitmapContextCreate(0, vcvtms_u32_f32(v9 * v39), v45, 8uLL, vcvts_n_u32_f32(floorf(v9 * v39), 2uLL), v46, 0x4001u);
  if (v47)
  {
    v48 = v47;
    v49 = sub_1AF164458();
    CGContextSetFillColorSpace(v48, v49);
    *components = xmmword_1AFE20528;
    v60 = unk_1AFE20538;
    CGContextSetFillColor(v48, components);
    CGContextTranslateCTM(v48, 0.0, floorf(v44));
    CGContextScaleCTM(v48, v9, -v9);
    CTFontDrawGlyphs(v12, (&v57[-2] - v15), &v57[-2 * Length - 2], Length, v48);
    v50 = *(a2 + 44);
    v64.origin.x = (v39 - v50);
    v64.size.width = v50;
    v64.size.height = *(a2 + 56);
    v64.origin.y = 0.0;
    CGContextFillRect(v48, v64);
    if (a5)
    {
      v51 = v58;
      if (v58)
      {
        v52 = Length * *(a2 + 44);
        if (v58 >= 1)
        {
          v53 = *(a2 + 64);
          do
          {
            *v53 = *v53 + v52;
            v53 += 4;
            --v51;
          }

          while (v51);
        }

        CGContextTranslateCTM(v48, v52, 0.0);
        UIGraphicsPushContext(v48);
        (*(a5 + 16))(a5, v39, v43);
        UIGraphicsPopContext();
      }
    }

    Image = CGBitmapContextCreateImage(v48);
    *a2 = sub_1AF196CC4(Image);
    CFRelease(Image);
    *(a2 + 8) = sub_1AF1C4F78();
    CFRelease(v48);
  }

  else
  {
    v55 = sub_1AF0D5194();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDCFC7C();
    }
  }
}

void sub_1AF10118C(uint64_t a1, uint64_t *a2, const __CFString *a3, float64x2_t a4, float64_t a5, float a6)
{
  a4.f64[1] = a5;
  v18 = vcvt_f32_f64(vaddq_f64(a4, xmmword_1AFE201C0));
  v10 = nullsub_106();
  v20 = xmmword_1AFE20310;
  sub_1AF0FDA58(a1, *a2, a2[1], &v20, a1 + 88, 1, *&v10, v11, v12, v13);
  v21 = v18;
  sub_1AF103B5C(a1, &v21, &unk_1AFE204B0, a3, a1 + 88, a1 + 1528, 1, 1);
  if (a6 > 0.000001)
  {
    v16.i32[1] = v18.i32[1];
    v16.f32[0] = v18.f32[0] + 90.0;
    v19 = v16;
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%2.1fms", v15, (a6 * 1000.0));
    v21 = v19;
    sub_1AF103B5C(a1, &v21, &unk_1AFE204B0, v17, a1 + 88, a1 + 1528, 1, 1);
  }
}

void sub_1AF1012F0(uint64_t a1)
{
  v2 = sub_1AF12E2AC(*(a1 + 8));
  v158 = sub_1AF130548(*(a1 + 8));
  v3 = sub_1AF130864(*(a1 + 8));
  objc_msgSend_pushDebugGroup_(v2, v4, @"VFX - Draw Statistics", v5);
  v161 = sub_1AF1305E8(*(a1 + 8));
  sub_1AF0FD32C(a1, a1 + 88, v6, v7);
  sub_1AF0FD32C(a1, a1 + 248, v8, v9);
  v166[0] = 0;
  v166[1] = v166;
  v166[2] = 0x3052000000;
  v166[3] = sub_1AF102460;
  v166[4] = sub_1AF102470;
  v166[5] = 0;
  v165[0] = MEMORY[0x1E69E9820];
  v165[1] = 3221225472;
  v165[2] = sub_1AF10247C;
  v165[3] = &unk_1E7A79688;
  v165[4] = v166;
  v164[0] = MEMORY[0x1E69E9820];
  v164[1] = 3221225472;
  v164[2] = sub_1AF1025CC;
  v164[3] = &unk_1E7A796B0;
  v164[4] = v166;
  sub_1AF100C94(a1, a1 + 1600, sub_1AF102708, v165, v164);
  sub_1AF100C94(a1, a1 + 1528, sub_1AF101170, 0, 0);
  v10 = *(a1 + 120);
  v11 = *(a1 + 1528);
  if (v10 != v11)
  {
    if (v10)
    {
      CFRelease(*(a1 + 120));
      *(a1 + 120) = 0;
      v11 = *(a1 + 1528);
    }

    if (v11)
    {
      v11 = CFRetain(v11);
    }

    *(a1 + 120) = v11;
  }

  *(a1 + 128) = *(a1 + 1536);
  v12 = *(a1 + 136);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 136) = 0;
  }

  v13 = *(a1 + 280);
  v14 = *(a1 + 1600);
  if (v13 != v14)
  {
    if (v13)
    {
      CFRelease(*(a1 + 280));
      *(a1 + 280) = 0;
      v14 = *(a1 + 1600);
    }

    if (v14)
    {
      v14 = CFRetain(v14);
    }

    *(a1 + 280) = v14;
  }

  *(a1 + 288) = *(a1 + 1608);
  v15 = *(a1 + 296);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 296) = 0;
  }

  v16 = 0.0;
  if (*(a1 + 65993) == 1)
  {
    v16 = (*(a1 + 1568) * 7.0) + 14.0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = objc_msgSend_preferredFramesPerSecond(*(a1 + 16), v17, v18, v19);
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = 60;
    }
  }

  else
  {
    v21 = 60;
  }

  v22 = v161.n128_f32[1] + v16;
  v23 = v158.n128_f32[2] / v3;
  if (*(a1 + 65993) == 1)
  {
    v163 = xmmword_1AFE20310;
    if (v23 < 400.0)
    {
      v24 = 225.0;
    }

    else
    {
      v24 = 280.0;
    }

    v25 = *(a1 + 66176);
    v26 = *(a1 + 66264);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = objc_msgSend_preferredFramesPerSecond(*(a1 + 16), v27, v28, v29);
      if (v30)
      {
        v21 = v30;
      }

      else
      {
        v21 = 60;
      }
    }

    v31 = v25 - v26;
    if ((1.0 / v21) > v31)
    {
      v31 = 1.0 / v21;
    }

    v159 = v31;
    sub_1AF0FDA58(a1, 0x3E19999A3E19999ALL, 0x3F4000003E19999ALL, &v163, a1 + 88, 1, 0.0, 0.0, v23, v22);
    v152 = v16;
    v154 = v24;
    v32 = v23;
    v150 = vadd_f32(v161.n128_u64[0], vdup_n_s32(0x425C0000u));
    v33 = vcvtq_f64_f32(v150);
    v162 = xmmword_1AFE202F0;
    v34 = v33.f64[1];
    v35 = 0.0;
    v155 = v33.f64[0];
    sub_1AF102724(a1, &v162, a1 + 88, v33.f64[0], v33.f64[1], 0.0, 6.2832);
    v38 = v161.n128_f32[0] + 110.0;
    v39 = *(a1 + 66208);
    if (v39 >= 0.0)
    {
      v35 = v39 * 6.28318531 / v159 + 0.0;
      v162 = xmmword_1AFE201D0;
      sub_1AF102724(a1, &v162, a1 + 88, v155, v34, 0.0, v35);
      v41 = v39;
      if (v32 < 400.0)
      {
        v41 = 0.0;
      }

      v40.f64[0] = v38;
      sub_1AF10118C(a1, &v162, @"Animations", v40, (v161.n128_f32[1] + 80.0), v41);
    }

    v42 = *(a1 + 66192);
    if (v42 >= 0.0)
    {
      v43 = v42 * 6.28318531 / v159 + v35;
      v162 = xmmword_1AFE201E0;
      sub_1AF102724(a1, &v162, a1 + 88, v155, v34, v35, v43);
      v46 = v42;
      if (v32 < 400.0)
      {
        v46 = 0.0;
      }

      v45.f64[0] = v38;
      sub_1AF10118C(a1, &v162, @"Physics", v45, (v161.n128_f32[1] + 60.0), v46);
    }

    else
    {
      v43 = v35;
    }

    v47 = *(a1 + 66184);
    if (v47 >= 0.0)
    {
      v48 = v47 * 6.28318531 / v159 + v43;
      v162 = xmmword_1AFE201F0;
      sub_1AF102724(a1, &v162, a1 + 88, v155, v34, v43, v48);
      v50 = v47;
      if (v32 < 400.0)
      {
        v50 = 0.0;
      }

      v49.f64[0] = v38;
      sub_1AF10118C(a1, &v162, @"Constraints", v49, (v161.n128_f32[1] + 40.0), v50);
    }

    else
    {
      v48 = v43;
    }

    v51 = *(a1 + 66200);
    if (v51 >= 0.0)
    {
      v52 = v51 * 6.28318531 / v159 + v48;
      v162 = xmmword_1AFE20200;
      sub_1AF102724(a1, &v162, a1 + 88, v155, v34, v48, v52);
      v54 = v51;
      if (v32 < 400.0)
      {
        v54 = 0.0;
      }

      v53.f64[0] = v38;
      sub_1AF10118C(a1, &v162, @"Core", v53, (v161.n128_f32[1] + 20.0), v54);
    }

    else
    {
      v52 = v48;
    }

    v55 = v154 + v161.n128_f32[0];
    v56 = *(a1 + 66248);
    if (v56 >= 0.0)
    {
      v57 = v56 * 6.28318531 / v159 + v52;
      v162 = xmmword_1AFE20210;
      sub_1AF102724(a1, &v162, a1 + 88, v155, v34, v52, v57);
      v59 = v56;
      if (v32 < 400.0)
      {
        v59 = 0.0;
      }

      v58.f64[0] = v55;
      sub_1AF10118C(a1, &v162, @"Delegate", v58, (v161.n128_f32[1] + 80.0), v59);
    }

    else
    {
      v57 = v52;
    }

    v60 = *(a1 + 66232);
    if (v60 >= 0.0)
    {
      v61 = v60 * 6.28318531 / v159 + v57;
      v162 = xmmword_1AFE20220;
      sub_1AF102724(a1, &v162, a1 + 88, v155, v34, v57, v61);
      v63 = v60;
      if (v32 < 400.0)
      {
        v63 = 0.0;
      }

      v62.f64[0] = v55;
      sub_1AF10118C(a1, &v162, @"Rendering", v62, (v161.n128_f32[1] + 60.0), v63);
    }

    else
    {
      v61 = v57;
    }

    v64 = *(a1 + 66280);
    if (v64 >= 0.0)
    {
      v65.f64[1] = 0.00781250185;
      v162 = xmmword_1AFE20230;
      v66 = v64;
      if (v32 < 400.0)
      {
        v66 = 0.0;
      }

      v65.f64[0] = v55;
      sub_1AF10118C(a1, &v162, @"GPU", v65, (v161.n128_f32[1] + 40.0), v66);
    }

    v67 = *(a1 + 66240);
    if (v67 >= 0.0)
    {
      v68 = v67 * 6.28318531 / v159 + v61;
      v162 = xmmword_1AFE20240;
      sub_1AF102724(a1, &v162, a1 + 88, v155, v34, v61, v68);
      v70 = v67;
      if (v32 < 400.0)
      {
        v70 = 0.0;
      }

      v69.f64[0] = v55;
      sub_1AF10118C(a1, &v162, @"2D", v69, (v161.n128_f32[1] + 20.0), v70);
    }

    v71 = *(a1 + 66176) - fmax(*(a1 + 66264), 0.0);
    if (v71 < 0.0 || v71 >= 100.0)
    {
      v75 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v36, @"--- ms", v37);
      v16 = v152;
    }

    else
    {
      v72 = v71;
      v73 = v72;
      if (v71 >= 0.1)
      {
        v74 = @"%2.1f s";
      }

      else
      {
        v74 = @"%2.1f ms";
      }

      if (v71 >= 0.1)
      {
        v75 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v36, v74, v37, *&v73);
      }

      else
      {
        v75 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v36, v74, v37, v73 * 1000.0);
      }

      v16 = v152;
    }

    v79 = v75;
    v23 = v32;
    v80 = objc_msgSend_length(v75, v76, v77, v78);
    v81 = vadd_f32(v150, 0xC0C00000C1C80000);
    v82.i32[1] = v81.i32[1];
    *v82.i32 = *v81.i32 + 5.0;
    v167 = vbsl_s8(vcgtd_u64(7uLL, v80), v82, v81);
    sub_1AF103B5C(a1, &v167, &unk_1AFE204B0, v79, a1 + 248, a1 + 1600, 1, 1);
    v44 = *(a1 + 65993);
  }

  else
  {
    v44 = 0;
  }

  v83 = *(a1 + 1568) + 6.0;
  if (v44)
  {
    v84 = v22;
  }

  else
  {
    v84 = 0.0;
  }

  if (v44)
  {
    v85 = v22;
  }

  else
  {
    v85 = v161.n128_f32[1];
  }

  v86 = v83 + v85;
  v163 = xmmword_1AFE20310;
  sub_1AF0FDA58(a1, 0, 0x3F40000000000000, &v163, a1 + 248, 1, 0.0, v84, v23, v83 + v85);
  *&v162 = 0;
  sub_1AF103B5C(0, &v162, 0, @"$1$", 0, a1 + 1600, 0, 0);
  __asm { FMOV            V1.2S, #7.0 }

  _D1.f32[1] = v16 + 3.0;
  v92 = vadd_f32(v161.n128_u64[0], _D1);
  v156 = *&v162;
  v160 = v92;
  if (*(a1 + 65993))
  {
    v93 = @"$1$";
  }

  else
  {
    v93 = @"$0$";
  }

  if (*(a1 + 66008))
  {
    v94 = &unk_1AFE204B0;
  }

  else
  {
    v94 = &unk_1AFE20300;
  }

  *&v162 = v92;
  sub_1AF103B5C(a1, &v162, v94, v93, a1 + 248, a1 + 1600, 1, 1);
  if ((*(a1 + 65996) / v21) <= 1.0)
  {
    v95 = *(a1 + 65996) / v21;
  }

  else
  {
    v95 = 1.0;
  }

  if (*(a1 + 66000) * 60.0 <= 1.0)
  {
    v96 = *(a1 + 66000) * 60.0;
  }

  else
  {
    v96 = 1.0;
  }

  *&v97 = v95 * 0.33;
  v98 = sub_1AF16411C(v97 | 0x3F80000000000000, 1065353216);
  v100 = v98;
  v101 = v99;
  v148 = v96;
  v147 = v23;
  v102 = ceilf(v160.f32[0] + (v156 + 5.0));
  v103 = 0x3F8000003F000000;
  v104 = 0x3F0000003F000000;
  v105 = (v86 - v83) + (v83 + -10.0) * 0.5;
  v106 = *(a1 + 1664);
  v107 = v106[8];
  *&v162 = 0;
  DWORD2(v162) = 0;
  v108 = v106[10];
  v109 = v106[11] / *(a1 + 1624);
  *(&v162 + 3) = v109;
  v149 = v107;
  v110 = v107;
  v111 = *(a1 + 1616);
  v112 = v107 / v111;
  *&v162 = v112;
  v157 = v108;
  if (v95 >= 0.083333)
  {
    v114 = v108;
    v113 = v102;
    v118 = v98;
    v119 = v101;
  }

  else
  {
    v113 = v102 + (v95 * 60.0);
    v114 = v108;
    v115 = v110 + (v95 / 0.083333) * (v108 * 0.5);
    v116 = v115 / v111;
    *(&v162 + 2) = v116;
    sub_1AF0FDA58(a1, v98, v99, &v162, a1 + 248, 1, v102, v105, v113, v105 + 10.0);
    v111 = *(a1 + 1616);
    v117 = v115 / v111;
    *&v162 = v117;
    v118 = 0x3F0000003F000000;
    v119 = 0x3F8000003F000000;
  }

  v120 = (v110 + v114 * 0.5) / v111;
  *(&v162 + 2) = v120;
  sub_1AF0FDA58(a1, v118, v119, &v162, a1 + 248, 1, v113, v105, v102 + 5.0, v105 + 10.0);
  LODWORD(v162) = 1065351538;
  DWORD2(v162) = 1065353216;
  if (v95 <= 0.083333 || v95 >= 0.91667)
  {
    if (v95 >= 0.91667)
    {
      v103 = v101;
      v104 = v100;
    }

    v121 = v102 + 5.0;
  }

  else
  {
    v121 = (v102 + (v95 * 60.0)) + -5.0;
    sub_1AF0FDA58(a1, v100, v101, &v162, a1 + 248, 1, v102 + 5.0, v105, v121, v105 + 10.0);
  }

  v153 = v102 + 60.0;
  v151 = (v102 + 60.0) + -5.0;
  sub_1AF0FDA58(a1, v104, v103, &v162, a1 + 248, 1, v121, v105, v151, v105 + 10.0);
  if (v95 <= 0.91667)
  {
    v125 = v110 + v157 * 0.5;
    v122 = (v102 + 60.0) + -5.0;
  }

  else
  {
    v122 = v102 + (v95 * 60.0);
    v123 = *(a1 + 1616);
    v124 = (v110 + v157 * 0.5) / v123;
    v125 = v110 + ((v95 + -0.91667) / 0.0833333135 + 1.0) * v157 * 0.5;
    v126 = v125 / v123;
    *&v162 = v124;
    *(&v162 + 2) = v126;
    sub_1AF0FDA58(a1, v100, v101, &v162, a1 + 248, 1, v151, v105, v122, v105 + 10.0);
  }

  v127 = *(a1 + 1616);
  v128 = v125 / v127;
  *&v127 = (v149 + v157) / v127;
  *&v162 = v128;
  DWORD2(v162) = LODWORD(v127);
  sub_1AF0FDA58(a1, 0x3F0000003F000000, 0x3F8000003F000000, &v162, a1 + 248, 1, v122, v105, v153, v105 + 10.0);
  v129 = v148;
  v130 = *(a1 + 1616);
  v131 = v110 / v130;
  *(&v162 + 3) = *(&v162 + 3) * 0.25;
  *&v162 = v131;
  if (v129 >= 0.083333)
  {
    v133 = v110 + v157 * 0.5;
    v132 = v102 + 5.0;
  }

  else
  {
    v132 = v102 + (v129 * 60.0);
    v133 = v110 + (v129 / 0.083333) * (v157 * 0.5);
  }

  v134 = v133 / v130;
  *(&v162 + 2) = v134;
  sub_1AF0FDA58(a1, 0x3F00000000000000, 0x3F8000003F800000, &v162, a1 + 248, 1, v102, v105, v132, v105 + 2.5);
  if (v129 <= 0.083333 || v129 >= 0.91667)
  {
    v135 = v102 + 60.0;
    if (v129 <= 0.91667)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v135 = v102 + (v129 * 60.0);
  }

  LODWORD(v162) = 1065351538;
  DWORD2(v162) = 1065353216;
  sub_1AF0FDA58(a1, 0x3F00000000000000, 0x3F8000003F800000, &v162, a1 + 248, 1, v102 + 5.0, v105, v135 + -5.0, v105 + 2.5);
LABEL_121:
  if (v129 > 0.91667)
  {
    v136 = *(a1 + 1616);
    v137 = (v110 + v157 * 0.5) / v136;
    v138 = (v110 + ((v129 + -0.91667) / 0.0833333135 + 1.0) * v157 * 0.5) / v136;
    *&v162 = v137;
    *(&v162 + 2) = v138;
    sub_1AF0FDA58(a1, 0x3F00000000000000, 0x3F8000003F800000, &v162, a1 + 248, 1, v151, v105, v102 + (v129 * 60.0), v105 + 2.5);
  }

  v139.i32[1] = v160.i32[1];
  *v139.i32 = v153 + 7.0;
  v140 = *(a1 + 66016);
  v167 = v139;
  sub_1AF103B5C(a1, &v167, &unk_1AFE204B0, v140, a1 + 248, a1 + 1600, 1, 1);
  v141 = *(a1 + 66024);
  v167 = 0;
  sub_1AF103B5C(0, &v167, 0, v141, 0, a1 + 1600, 0, 0);
  v142.i32[1] = v160.i32[1];
  *v142.i32 = ceilf((v147 + -7.0) - *v167.i32) - v161.n128_f32[2];
  v143 = *(a1 + 66024);
  v167 = v142;
  sub_1AF103B5C(a1, &v167, &unk_1AFE204B0, v143, a1 + 248, a1 + 1600, 1, 1);
  sub_1AF0FCBF8(a1, (a1 + 248));
  sub_1AF0FCBF8(a1, (a1 + 88));
  *(a1 + 65992) = 1;
  if (v2)
  {
    objc_msgSend_popDebugGroup(v2, v144, v145, v146);
  }

  _Block_object_dispose(v166, 8);
}

double sub_1AF10247C(uint64_t a1, void *a2, _OWORD *a3, void *a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  *a2 = 7;
  v7 = malloc_type_malloc(0x70uLL, 0x1000040451B5BE8uLL);
  *a4 = v7;
  *v7 = xmmword_1AFE20250;
  v7[1] = xmmword_1AFE20260;
  v7[2] = xmmword_1AFE20270;
  v11 = objc_msgSend_monospacedSystemFontOfSize_weight_(MEMORY[0x1E69DB878], v8, v9, v10, 11.0, *MEMORY[0x1E69DB978]);
  v12 = *MEMORY[0x1E69DB650];
  v19[0] = *MEMORY[0x1E69DB648];
  v19[1] = v12;
  v20[0] = v11;
  v20[1] = objc_msgSend_whiteColor(MEMORY[0x1E69DC888], v13, v14, v15);
  *(*(*(a1 + 32) + 8) + 40) = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v20, v19, 2);
  v17 = *a4;
  v17[3] = xmmword_1AFE20280;
  v17[4] = xmmword_1AFE20290;
  v17[5] = xmmword_1AFE202A0;
  v17[6] = xmmword_1AFE202B0;
  result = 102.844727;
  *a3 = xmmword_1AFE202C0;
  return result;
}

void sub_1AF1025CC(uint64_t a1, double a2, double a3)
{
  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = objc_msgSend_initWithString_attributes_(v5, v6, @"+", *(*(*(a1 + 32) + 8) + 40));
  objc_msgSend_drawAtPoint_(v7, v8, v9, v10, 0.0, 0.0);

  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v13 = objc_msgSend_initWithString_attributes_(v11, v12, @"-", *(*(*(a1 + 32) + 8) + 40));
  objc_msgSend_drawAtPoint_(v13, v14, v15, v16, 16.0, 0.0);

  v20 = objc_msgSend_bezierPathWithOvalInRect_(MEMORY[0x1E69DC728], v17, v18, v19, 33.0, 0.0, 10.0, 10.0);
  objc_msgSend_fill(v20, v21, v22, v23);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, 4.0 - a3);
  v25 = objc_alloc(MEMORY[0x1E696AAB0]);
  v30 = objc_msgSend_initWithString_attributes_(v25, v26, @"◆▲.✸", *(*(*(a1 + 32) + 8) + 40));
  objc_msgSend_drawAtPoint_(v30, v27, v28, v29, 44.0, 0.0);
}

void sub_1AF102724(uint64_t a1, float *a2, uint64_t a3, float64_t a4, float64_t a5, float a6, float a7)
{
  v8 = a2[2];
  v9 = a2[3];
  v10 = *a2;
  v11 = a2[1];
  v12 = a7 - a6;
  v13 = fmax((a7 - a6) / 6.28318531 * 100.0, 1.0);
  v14 = 6 * v13;
  v38 = 2 * v13 + 2;
  v15 = malloc_type_malloc(20 * v38, 0x1000040A86A77D5uLL);
  v16 = malloc_type_malloc(12 * v13, 0x1000040BDFB0063uLL);
  v17 = v16;
  if ((v13 & 0x80000000) == 0)
  {
    v18 = 0;
    v19 = 0;
    v20 = ((v9 * 255.0) << 24) | ((fminf(fmaxf(v8, 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(v11, 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(v10, 0.0), 1.0) * 255.0);
    v21 = v12 / v13;
    v22 = 1.57079633 - a6;
    v23.f64[0] = a4;
    v23.f64[1] = a5;
    v42 = v23;
    v24 = 2 * v13;
    v25 = 2 * (v13 + 1);
    v26 = (v15 + 20);
    v27 = vdup_n_s32(0x42200000u);
    v28 = vdup_n_s32(0x3F7FBE77u);
    v29 = v16 + 3;
    __asm
    {
      FMOV            V12.2S, #1.0
      FMOV            V13.2S, #30.0
    }

    do
    {
      v36 = __sincosf_stret(v22 - (v18 * v21));
      *(v26 - 20) = vcvt_f32_f64(vaddq_f64(v42, vcvtq_f64_f32(vmul_f32(__PAIR64__(LODWORD(v36.__sinval), LODWORD(v36.__cosval)), v27))));
      v26[-1].i32[1] = v20;
      *(v26 - 12) = _D12;
      v26[2].i32[0] = v20;
      *v26 = vcvt_f32_f64(vaddq_f64(v42, vcvtq_f64_f32(vmul_f32(__PAIR64__(LODWORD(v36.__sinval), LODWORD(v36.__cosval)), _D13))));
      v26[1] = v28;
      if (v24 != v19)
      {
        *(v29 - 3) = v19;
        *(v29 - 2) = v19 + 2;
        *(v29 - 1) = v19 + 1;
        *v29 = v19 + 1;
        v29[1] = v19 + 2;
        v29[2] = v19 + 3;
      }

      v19 += 2;
      v26 += 5;
      v29 += 6;
      ++v18;
    }

    while (v25 != v19);
  }

  sub_1AF0FC694(a1, v15, v38, v17, v14, a3, 1);
  free(v17);

  free(v15);
}

char *sub_1AF102998(char *result, const void *a2, unsigned int a3)
{
  if (a3 <= 9)
  {
    return memcpy(result + 66040, a2, 4 * a3);
  }

  return result;
}

void sub_1AF1029B4(uint64_t a1, double *__src, uint64_t a3)
{
  if (a1)
  {
    v6 = a1 + 0x10000;
    v7 = *(a1 + 66032);
    if (v7)
    {
      CFRelease(v7);
      *(v6 + 496) = 0;
    }

    v8 = *(v6 + 488);
    if (v8)
    {
      CFRelease(v8);
      *(v6 + 488) = 0;
    }

    v9 = *(v6 + 480);
    if (v9)
    {
      CFRelease(v9);
      *(v6 + 480) = 0;
    }

    if (*(__src + 4))
    {
      memcpy((a1 + 66080), __src, 0x358uLL);
      if (a3)
      {
        v10 = *(a3 + 216);
        v11 = *(a3 + 248);
        *(a1 + 66312) = *(a3 + 232);
        *(a1 + 66328) = v11;
        *(a1 + 66296) = v10;
        v12 = *(a3 + 264);
        v13 = *(a3 + 280);
        v14 = *(a3 + 296);
        *(a1 + 66392) = *(a3 + 312);
        *(a1 + 66360) = v13;
        *(a1 + 66376) = v14;
        *(a1 + 66344) = v12;
      }

      v15 = __src[41];
      v16 = 0.0;
      if (v15 != 0.0)
      {
        v16 = 1.0 / v15;
      }

      *(v6 + 460) = v16;
      v17 = __src[23];
      *(v6 + 464) = v17;
      v18 = sub_1AF102B88(*(__src + 2));
      v19 = sub_1AF102B88(*(__src + 1));
      v20 = sub_1AF102B88(*__src);
      if (*(v6 + 504))
      {
        v21 = 1;
      }

      else
      {
        v22 = 0;
        do
        {
          v23 = v22;
          if (v22 == 8)
          {
            break;
          }
        }

        while (!*(a1 + 66044 + 4 * v22++));
        v21 = v23 < 8;
      }

      *(v6 + 344) = *(v6 + 344) & 0xFE | v21;
      v25 = *MEMORY[0x1E695E480];
      *(v6 + 488) = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"$3$%@ $4$%@", v18, v19);
      CFRelease(v18);
      CFRelease(v19);
      CFRelease(v20);
      LODWORD(v26) = llroundf(*(v6 + 460));
      *(v6 + 480) = CFStringCreateWithFormat(v25, 0, @"%dfps", v26);
    }
  }
}

__CFString *sub_1AF102B88(unint64_t a1)
{
  if (!a1)
  {
    return @"0";
  }

  if (a1 <= 0x3E7)
  {
    return CFStringCreateWithFormat(0, 0, @"%zu", a1);
  }

  v2 = a1;
  v3 = a1 / 1000.0;
  if (v3 < 1000.0)
  {
    return CFStringCreateWithFormat(0, 0, @"%.3gK", v3);
  }

  v4 = v2 / 1000000.0;
  if (v4 < 1000.0)
  {
    return CFStringCreateWithFormat(0, 0, @"%.3gM", v4);
  }

  v5 = v2 / 1000000000.0;
  return CFStringCreateWithFormat(0, 0, @"%.3gG", v5);
}

uint64_t sub_1AF102C88(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = result;
    v6 = sub_1AF1D00B0(a2);
    v7 = sub_1AF1CF8AC(a2);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
    if (result)
    {
      v12 = result;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v5);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          if (objc_msgSend_forceField(v15, v9, v10, v11))
          {
            v16 = objc_msgSend_nodeRef(v15, v9, v10, v11);
            v17 = sub_1AF13462C(v6, v16);
            if (v17)
            {
              sub_1AF14E508(v7, v17, a3);
            }
          }

          ++v14;
        }

        while (v12 != v14);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v9, &v18, v22, 16);
        v12 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_1AF102FA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (objc_msgSend_isAuthoring(a2, a2, a3, a4) && objc_msgSend_authoringTargetNode(v4, v6, v7, v8))
  {
    v4 = objc_msgSend_authoringTargetNode(v4, v6, v9, v8);
  }

  v11 = objc_msgSend_nodeManipulatorItemWithNode_screenSize_(VFXNodeManipulableItem, v6, v4, v8, 0.0);
  v13 = *(a1 + 32);

  return objc_msgSend_addObject_(v13, v10, v11, v12);
}

BOOL sub_1AF103018(void *a1)
{
  objc_sync_enter(a1);
  v5 = objc_msgSend_selectedNodes(a1, v2, v3, v4);
  v9 = objc_msgSend_count(v5, v6, v7, v8) != 0;
  objc_sync_exit(a1);
  return v9;
}

uint64_t sub_1AF103070(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  objc_sync_enter(a1);
  v9 = objc_msgSend_selectedNodes(a1, v6, v7, v8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AF103128;
  v13[3] = &unk_1E7A796D8;
  v13[4] = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(v9, v10, v13, v11);
  objc_sync_exit(a1);
  return v5;
}

uint64_t sub_1AF103128(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = objc_msgSend_authoringTargetNode(a2, a2, a3, a4);
  v10 = *(a1 + 32);
  if (v6)
  {
    v4 = objc_msgSend_authoringTargetNode(v4, v7, v8, v9);
  }

  v12 = objc_msgSend_nodeRef(v4, v7, v8, v9);

  return objc_msgSend_addObject_(v10, v11, v12, v13);
}

void sub_1AF103614(void *a1, uint64_t a2)
{
  sub_1AF0FD054(a1, a2);
  v3 = *(a2 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a2 + 32) = 0;
  }

  v4 = *(a2 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 48) = 0;
  }

  v5 = *(a2 + 152);
}

void sub_1AF10375C(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v62 = a1;
  *&v69[1908] = *MEMORY[0x1E69E9840];
  v63 = a4;
  v5 = *(a4 + 56);
  if (*(a4 + 56))
  {
    v6 = 288;
  }

  else
  {
    v6 = 432;
  }

  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = (&v62 - v8);
  v10 = 0;
  v12 = ((v11[3] * 255.0) << 24) | ((fminf(fmaxf(v11[2], 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(v11[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*v11, 0.0), 1.0) * 255.0);
  v66 = v7;
  v65 = vdupq_laneq_s32(v7, 3);
  v13 = &v67;
  v14 = v69;
  do
  {
    v15 = v14;
    v16 = ++v10 * 3.14159265 * 0.25;
    v18 = __sincosf_stret(v16);
    *&v17 = v18.__cosval;
    v64 = v17;
    v19 = 0;
    v20 = 0.0;
    do
    {
      v21 = __sincosf_stret(v20);
      v22.f32[0] = v18.__sinval * v21.__cosval;
      v22.i32[1] = v64;
      v22.f32[2] = v18.__sinval * v21.__sinval;
      v23 = &v13[v19];
      v24 = vmlaq_f32(v66, v22, v65);
      *v23 = v24.i64[0];
      LODWORD(v13[v19 + 1]) = v24.i32[2];
      *(v23 + 3) = v12;
      v20 = v20 + 0.2618;
      v19 += 2;
    }

    while (v19 != 48);
    v13 += 48;
    v14 = v15 + 384;
  }

  while (v10 != 3);
  v25 = 0;
  v26 = 0.0;
  do
  {
    v27 = v26 * 3.14159265 / 3.0;
    v28 = __sincosf_stret(v27);
    v29 = 0.0;
    v30 = 24;
    v31 = v15;
    do
    {
      v32 = __sincosf_stret(v29);
      v33.f32[0] = v28.__cosval * v32.__cosval;
      v33.i32[1] = LODWORD(v32.__sinval);
      v33.f32[2] = v28.__sinval * v32.__cosval;
      v34 = vmlaq_f32(v66, v33, v65);
      *(v31 - 3) = v34.i64[0];
      *(v31 - 1) = v34.i32[2];
      *v31 = v12;
      v31 += 4;
      v29 = v29 + 0.2618;
      --v30;
    }

    while (v30);
    v26 = v26 + 1.0;
    ++v25;
    v15 += 384;
  }

  while (v25 != 3);
  if (a2)
  {
    v35 = *a2;
    v36 = a2[1];
    v37 = a2[2];
    v38 = a2[3];
    v39 = &v68;
    v40 = 144;
    do
    {
      v41 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v38, v37, *v39), v36, *(v39 - 1)), v35, *(v39 - 2));
      *(v39 - 1) = v41.i64[0];
      *v39 = v41.f32[2];
      v39 += 4;
      --v40;
    }

    while (v40);
  }

  if (v5)
  {
    v42 = 0;
    v43.i64[0] = 0x100000001;
    v43.i64[1] = 0x100000001;
    v44.i64[0] = 0x1800000018;
    v44.i64[1] = 0x1800000018;
    v45.i64[0] = 0x800000008;
    v45.i64[1] = 0x800000008;
    v46 = v9;
    do
    {
      v47 = 0;
      v48 = vdupq_lane_s32(v42, 1);
      v49 = xmmword_1AFE202E0;
      v50 = xmmword_1AFE202D0;
      do
      {
        v51 = &v46[v47];
        v70.val[0] = vuzp1q_s16(vaddq_s32(v49, v48), vaddq_s32(v50, v48));
        v52 = vaddq_s32(v50, v43);
        v53 = vaddq_s32(v49, v43);
        v70.val[1] = vuzp1q_s16(vaddq_s32(vbicq_s8(v53, vceqq_s32(v53, v44)), v48), vaddq_s32(vbicq_s8(v52, vceqq_s32(v52, v44)), v48));
        vst2q_s16(v51, v70);
        v49 = vaddq_s32(v49, v45);
        v50 = vaddq_s32(v50, v45);
        v47 += 16;
      }

      while (v47 != 48);
      v42 = vadd_s32(v42, 0x1800000001);
      v46 += 48;
    }

    while (v42.i32[0] != 6);
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v56 = v9;
    do
    {
      for (i = 24; i != 48; ++i)
      {
        *v56 = v55 + i - 24;
        v58 = i - 23;
        if (i == 47)
        {
          v58 = 0;
        }

        v59 = v58 + v55;
        v56[1] = v59;
        v60 = v56 + 3;
        v56[2] = i + v55 - 144 * ((v55 + i) / 0x90u);
        if ((v55 + i - 24) > 0x8F || v59 > 0x8F)
        {
          ++v55;
        }

        v56 += 3;
      }

      v55 += 24;
      ++v54;
      v56 = v60;
    }

    while (v54 != 6);
  }

  sub_1AF0FC694(v62, &v67, 0x90u, v9, v6, v63, 1);
}

void sub_1AF103B5C(uint64_t a1, void *a2, uint64_t *a3, CFStringRef theString, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v48 = *MEMORY[0x1E69E9840];
  if (theString)
  {
    Length = CFStringGetLength(theString);
    v46 = v43;
    MEMORY[0x1EEE9AC00](Length, v17);
    v19 = &v43[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v49.location = 0;
    v49.length = Length;
    CFStringGetCharacters(theString, v49, v19);
    if (Length >= 1)
    {
      v21 = 1;
      v22 = v19;
      v23 = Length;
      do
      {
        v24 = *v22++;
        if (v24 == 10)
        {
          ++v21;
        }

        --v23;
      }

      while (v23);
      *&v20 = *a2;
      v44 = a7;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = *(&v20 + 1) + ((v21 - 1) * *(a6 + 40));
      while (1)
      {
        v30 = *v19++;
        v29 = v30;
        if (v30 == 32)
        {
          *&v20 = *&v20 + **(a6 + 48);
        }

        else if (v29 == 10)
        {
          *&v20 = *a2;
          v28 = v28 - *(a6 + 40);
        }

        else if (v27)
        {
          if (v29 == 36)
          {
            v31 = *(a6 + 16);
            if ((v26 & 1) == 0)
            {
              goto LABEL_21;
            }

            v47 = 0uLL;
            v32 = *(a6 + 64) + 16 * v25;
            v47 = *v32;
            v47 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v47.f32), v31)), vdivq_f64(vcvtq_f64_f32(vadd_f32(*v47.f32, *&v47.u32[2])), v31));
            v33 = *(v32 + 8);
            if (a8)
            {
              v34 = *&v20 + v33;
              sub_1AF0FDA58(a1, *a3, a3[1], v47.f32, a5, v44, roundf(*&v20), roundf(v28), roundf(*&v20 + v33), roundf(v28 + *(v32 + 12)));
              *&v20 = v34;
            }

            else
            {
              *&v20 = *&v20 + v33;
            }

            v27 = 0;
          }

          else
          {
            v25 = v29 + 10 * v25 - 48;
            v27 = 1;
          }

          v26 = 1;
        }

        else
        {
          if (v29 != 36)
          {
            v31 = *(a6 + 16);
LABEL_21:
            v35 = v29 - 32;
            v36 = (v35 * *(a6 + 44));
            v37 = *(a6 + 44);
            v38 = *(a6 + 56);
            v39.f64[0] = (v37 + v36);
            v39.f64[1] = v38;
            v47 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(COERCE_UNSIGNED_INT64(v36), v31)), vdivq_f64(v39, v31));
            v40 = *(*(a6 + 48) + 4 * v35);
            if (a8)
            {
              v41 = *a3;
              v42 = a3[1];
              v45 = v20;
              sub_1AF0FDA58(a1, v41, v42, v47.f32, a5, v44, roundf(*&v20), roundf(v28), roundf(*&v20 + v37), roundf(v28 + v38));
              v20 = v45;
            }

            v27 = 0;
            *&v20 = *&v20 + v40;
            goto LABEL_27;
          }

          v26 = 0;
          v25 = 0;
          v27 = 1;
        }

LABEL_27:
        if (!--Length)
        {
          goto LABEL_30;
        }
      }
    }

    *&v20 = *a2;
LABEL_30:
    *a2 = v20;
  }
}

void sub_1AF103E5C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_1AF103E78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_1AF104BA0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AF104BF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeRef(a2, a2, a3, a4);
  result = sub_1AF1C3FAC(v5);
  if (result == *(a1 + 40))
  {
    v8 = *(a1 + 32);

    return MEMORY[0x1EEE66B58](v8, sel_addedNode_, v5, v7);
  }

  return result;
}

uint64_t sub_1AF104E8C(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setIsAuthoring_(a1, a2, 1, a4);
  v6 = sub_1AF16CDEC(a2);
  objc_msgSend_setAuthoringTargetNode_(a1, v7, v6, v8);

  return sub_1AF1BC2C4(a2, 1);
}

void sub_1AF105074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1AF104BA0(va);
  _Unwind_Resume(a1);
}

void sub_1AF105914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1AF104BA0(&a11);
  sub_1AF104BA0(&a21);
  sub_1AF104BA0(&a31);
  sub_1AF104BA0(v31 - 144);
  _Unwind_Resume(a1);
}

void sub_1AF106860(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF19D8B8(*(a1 + 32));
  v7 = objc_msgSend_length(v3, v4, v5, v6);
  v8 = sub_1AF28A234(v7);
  v12 = objc_msgSend_bytes(v3, v9, v10, v11);
  if (v8 == 3)
  {
    v16 = v12;
    v17 = objc_msgSend_length(v3, v13, v14, v15);

    MEMORY[0x1EEE66B58](a2, sel_writeBytes_length_, v16, v17);
  }

  else
  {
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDCFD80(v8, v18);
    }
  }
}

uint64_t sub_1AF10737C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isAuthoring(a2, a2, a3, a4);
  if (result)
  {
    v7 = sub_1AF1B7348(*(a1 + 40));
    v11 = 304;
    if (v7)
    {
      v11 = 288;
    }

    v12 = 272;
    if (!*(a1 + 48))
    {
      v12 = v11;
    }

    v13 = *(*(a1 + 32) + v12);
    v14 = objc_msgSend_model(a2, v8, v9, v10);
    Material = objc_msgSend_firstMaterial(v14, v15, v16, v17);
    v22 = objc_msgSend_diffuse(Material, v19, v20, v21);

    return objc_msgSend_setColor_(v22, v23, v13, v24);
  }

  return result;
}

uint64_t sub_1AF107EBC(uint64_t a1, void *a2)
{
  v3 = sub_1AF1B9B04(a1);
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];

  return objc_msgSend_setWorldTransform_(a2, v4, v5, v6, *&v7, *&v8, *&v9, *&v10);
}

uint64_t sub_1AF107EFC(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4)
{
  v7 = objc_msgSend_pointOfView(*(a1 + 32), a2, a3, a4);
  result = objc_msgSend_node(a2, v8, v9, v10);
  if (v7 == result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1AF108308(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_worldWithWorldRef_(VFXWorld, a2, a1, a4);
  v5 = [VFXAuthoringEnvironment2 alloc];

  return objc_msgSend_initWithWorld_(v5, v6, v4, v7);
}

void sub_1AF1083F4(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_1AF10A1D0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1AF10A1E0(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1AF1084C8(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_1AF10A1D0();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1AF10A1E0(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1AF1085A0(uint64_t a1, __int16 a2)
{
  v3 = *(a1 + 72) + a2;
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v5 >= v4)
  {
    v7 = *(a1 + 48);
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 1;
    if (v9 <= -2)
    {
      sub_1AF10A1D0();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_1AF10A228(a1 + 48, v13);
    }

    v14 = (v5 - v7) >> 1;
    v15 = (2 * v9);
    v16 = (2 * v9 - 2 * v14);
    *v15 = v3;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = *(a1 + 48);
    *(a1 + 48) = v16;
    *(a1 + 56) = v6;
    *(a1 + 64) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 2;
  }

  *(a1 + 56) = v6;
}

void sub_1AF108680(void *a1, unsigned int a2)
{
  sub_1AF1086DC(a1, ((a1[1] - *a1) >> 4) + a2);
  v4 = ((a1[4] - a1[3]) >> 4) + a2;

  sub_1AF1086DC(a1 + 3, v4);
}

void sub_1AF1086DC(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_1AF10A26C(a1, a2 - v2);
  }
}