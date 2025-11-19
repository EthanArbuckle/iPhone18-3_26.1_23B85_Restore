_DWORD *_sSo31BMAppIntentInteractionDirectionVSYSCSY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t _s18PostSiriEngagement11TaskSuccessO23NotCalculatedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOs0H3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_25ECEDFDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_25ECEE070@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  a2[1] = BYTE1(result) & 1;
  a2[2] = BYTE2(result) & 1;
  a2[3] = BYTE3(result) & 1;
  return result;
}

uint64_t sub_25ECEE0D8(unsigned __int8 *a1, uint64_t a2)
{
  if (a1[3])
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (a1[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return (*(**a2 + 136))(v4 | *a1 | v3 | v2);
}

uint64_t sub_25ECEE15C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_25ECEE1F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEE23C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);

  return v4(v2, v3);
}

uint64_t sub_25ECEE2A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEE2F0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);

  return v4(v2, v3);
}

uint64_t sub_25ECEE358@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_25ECEE3A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 216);

  return v3(v4);
}

uint64_t sub_25ECEE3F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_25ECEE444(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 240);

  return v3(v4);
}

uint64_t sub_25ECEE498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  return result;
}

uint64_t sub_25ECEE4EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 264);

  return v3(v4);
}

uint64_t sub_25ECEE548@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEE59C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 288);

  return v4(v2, v3);
}

uint64_t sub_25ECEE60C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

uint64_t sub_25ECEE660(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 312);

  return v3(v4);
}

uint64_t sub_25ECEE6BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_25ECEE710(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 336);

  return v3(v4);
}

uint64_t sub_25ECEE80C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEE858(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

uint64_t sub_25ECEE8C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEE90C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 184);

  return v4(v2, v3);
}

uint64_t sub_25ECEE974@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEE9C0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t sub_25ECEEA28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEEA74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 232);

  return v4(v2, v3);
}

uint64_t sub_25ECEEADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEEB28(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 256);

  return v4(v2, v3);
}

uint64_t sub_25ECEEB98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEEBEC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 280);

  return v4(v2, v3);
}

uint64_t sub_25ECEEC5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEECB0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 304);

  return v4(v2, v3);
}

uint64_t sub_25ECEED20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEED74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 328);

  return v4(v2, v3);
}

uint64_t sub_25ECEEE4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

double sub_25ECEEEE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 120))(v7);
  v3 = v8;
  v4 = v9;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  return result;
}

uint64_t sub_25ECEEF4C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  return (*(*v4 + 128))(v7);
}

uint64_t sub_25ECEEFB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEF000(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 152);

  return v4(v2, v3);
}

uint64_t sub_25ECEF068@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEF0B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 176);

  return v4(v2, v3);
}

uint64_t sub_25ECEF11C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25ECEF1B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_25ECEF200(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 224);

  return v3(v4);
}

uint64_t sub_25ECEF254()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25ECEF28C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_25ECEF338(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25ECEF3D8()
{
  v1 = (type metadata accessor for SiriUISession(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 40);

  v7 = v0 + v3;
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v9(v7 + v1[7], v8);
  v9(v7 + v1[8], v8);
  v10 = *(v7 + v1[9] + 8);

  v11 = *(v7 + v1[10] + 8);

  v12 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_25ECEF538@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25ECEF588(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_25ECEF5CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25ECEF61C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 41) = v2;
  return result;
}

uint64_t sub_25ECEF660@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25ECEF6B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 42) = v2;
  return result;
}

uint64_t sub_25ECEF6F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25ECEF72C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25ECEF768()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25ECEF7BC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25ECEF7F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_25ECEF888()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25ECEF8C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25ECEF8F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25ECEF944@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEF990(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 136);

  return v4(v2, v3);
}

uint64_t sub_25ECEF9F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEFA44(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

uint64_t sub_25ECEFAAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEFAF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 184);

  return v4(v2, v3);
}

uint64_t sub_25ECEFB60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEFBAC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t sub_25ECEFC14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEFC60(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 232);

  return v4(v2, v3);
}

uint64_t sub_25ECEFD10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEFD5C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 136);

  return v4(v2, v3);
}

uint64_t sub_25ECEFDC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEFE10(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

uint64_t sub_25ECEFE78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25ECEFEC4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 184);

  return v4(v2, v3);
}

uint64_t sub_25ECEFF2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_25ECEFF78(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);

  return v3(v4);
}

uint64_t sub_25ECF0068()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25ECF00A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25ECF00D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25ECF0144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25ECF01BC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_25ECF0264()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25ECF02A4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_25ECF0390()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25ECF03C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25ECF0680()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25ECF06B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25ECF0754()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25ECF078C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25ECF07C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25ECF0800()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25ECF08B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_25ECF08FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

double sub_25ECF0950@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 160))(v7);
  v3 = v11;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *(a2 + 96) = v12;
  *(a2 + 112) = v13;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_25ECF09D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 96);
  v10[5] = *(a1 + 80);
  v10[6] = v3;
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v10[1] = v4;
  v10[2] = v5;
  v11 = *(a1 + 112);
  v10[3] = v6;
  v10[4] = v2;
  v7 = *(**a2 + 168);
  outlined init with copy of Date?(v10, v9, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMd, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMR);
  return v7(v10);
}

uint64_t sub_25ECF0A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25ECF0B38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25ECF0BF4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_280FEE450;
  *a1 = static PSEStruct.pseTriggerOrigin;
  a1[1] = v2;
}

void PSEMediaSELFEmitter.emitPSEMedia(mediaSignals:appLaunchSignals:task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v213 = a3;
  v211 = a1;
  v5 = type metadata accessor for ReliabilityCategory();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v208 = &v187 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v207 = &v187 - v14;
  MEMORY[0x28223BE20](v13);
  v209 = &v187 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v205 = &v187 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v206 = &v187 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v187 - v22;
  v212 = type metadata accessor for UUID();
  v210 = *(v212 - 8);
  v24 = *(v210 + 64);
  v25 = MEMORY[0x28223BE20](v212);
  v204 = &v187 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v203 = &v187 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v187 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v187 - v32;
  v34 = &off_279A51000;
  v35 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (v35)
  {
    v36 = v35;
    v202 = v33;
    v37 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
    if (v37)
    {
      v38 = v37;
      v201 = [objc_allocWithZone(MEMORY[0x277D5A1E8]) init];
      if (v201)
      {
        v200 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
        if (v200)
        {
          v39 = [objc_allocWithZone(MEMORY[0x277D5A1D8]) init];
          if (v39)
          {
            v40 = v211;
            v41 = v211 >> 62;
            if (v211 >> 62)
            {
              v194 = v211 >> 62;
              v34 = v39;
              if (v211 < 0)
              {
                v78 = v211;
              }

              else
              {
                v78 = v211 & 0xFFFFFFFFFFFFFF8;
              }

              v79 = MEMORY[0x25F8CE500](v78);
              v40 = v211;
              v80 = v79;
              v39 = v34;
              v41 = v194;
              v42 = v80;
              if (v80)
              {
LABEL_8:
                v197 = v39;
                v198 = v3;
                v193 = v42;
                v192 = v40 & 0xC000000000000001;
                v194 = v41;
                if ((v40 & 0xC000000000000001) != 0)
                {
                  v44 = MEMORY[0x25F8CE460](0);
                  v43 = v44;
                }

                else
                {
                  if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_109;
                  }

                  v43 = *(v40 + 32);
                }

                v199 = v43;
                (*(*v43 + 120))(&v216, v44);
                v45 = v200;
                v46 = (*(*v43 + 144))([v200 setEventDonationTimeInSecondsSince2001_]);
                v47 = MEMORY[0x25F8CDFC0](v46);

                [v45 setDomain_];

                v48 = (*(*v199 + 168))();
                v49 = MEMORY[0x25F8CDFC0](v48);

                [v45 setAction_];

                v50 = (*v199 + 216);
                v196 = *v50;
                v195 = v50;
                v51 = v196();
                if (*(v51 + 16) && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v53 & 1) != 0))
                {
                  outlined init with copy of Any(*(v51 + 56) + 32 * v52, &v216);

                  if (swift_dynamicCast())
                  {
                    v54 = LOBYTE(v214);
                  }

                  else
                  {
                    v54 = 2;
                  }
                }

                else
                {

                  v54 = 2;
                }

                v57 = v197;
                v58 = (*(*v198 + 104))(v54);
                [v200 setIsDonatedBySiri_];
                if (a2 >> 62)
                {
                  if (a2 < 0)
                  {
                    v91 = a2;
                  }

                  else
                  {
                    v91 = a2 & 0xFFFFFFFFFFFFFF8;
                  }

                  if (MEMORY[0x25F8CE500](v91))
                  {
                    goto LABEL_21;
                  }
                }

                else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_21:
                  if ((a2 & 0xC000000000000001) != 0)
                  {
                    v60 = MEMORY[0x25F8CE460](0, a2);
                    v59 = v60;
                  }

                  else
                  {
                    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_112;
                    }

                    v59 = *(a2 + 32);
                  }

                  (*(*v59 + 120))(&v216, v60);
                  v61 = (*(*v59 + 216))([v200 setAppLaunchTimeInSecondsSince2001_]);
                  if (*(v61 + 16) && (v62 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v63 & 1) != 0))
                  {
                    outlined init with copy of Any(*(v61 + 56) + 32 * v62, &v216);

                    v64 = swift_dynamicCast();
                    v65 = v214;
                    if (!v64)
                    {
                      v65 = 0.0;
                    }

                    v188 = v65;
                    if (v64)
                    {
                      v66 = v215;
                    }

                    else
                    {
                      v66 = 0;
                    }
                  }

                  else
                  {

                    v188 = 0.0;
                    v66 = 0;
                  }

                  v190 = v5;
                  v67 = (*(*v213 + 256))();
                  v68 = v67[2];
                  v189 = v59;
                  if (v68)
                  {
                    v69 = v67[4];
                    v70 = v67[5];
                  }

                  else
                  {
                    v69 = 0;
                    v70 = 0;
                  }

                  v71 = v198;
                  v72 = (*(*v198 + 120))(COERCE_DOUBLE(*&v188), v66, v69, v70);

                  v73 = v200;
                  v74 = [v200 setAppFollowup_];
                  v75 = (*(*v189 + 168))(v74);
                  v76 = (*(*v71 + 136))(v75);
                  a2 = v73;

                  [v73 setAppLaunchReason_];

                  v57 = v197;
                  v5 = v190;
LABEL_56:
                  v92 = (v196)(v77);
                  if (*(v92 + 16) && (v93 = specialized __RawDictionaryStorage.find<A>(_:)(0x6172754479616C70, 0xEC0000006E6F6974), (v94 & 1) != 0))
                  {
                    outlined init with copy of Any(*(v92 + 56) + 32 * v93, &v216);

                    if (swift_dynamicCast())
                    {
                      v95 = v214;
LABEL_62:
                      v96 = [v57 setPlayDurationInSeconds_];
                      v97 = (v196)(v96);
                      if (*(v97 + 16) && (v98 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7E6B0), (v99 & 1) != 0))
                      {
                        outlined init with copy of Any(*(v97 + 56) + 32 * v98, &v216);

                        if (swift_dynamicCast())
                        {
                          v100.n128_f64[0] = v214;
                          goto LABEL_68;
                        }
                      }

                      else
                      {
                      }

                      v100.n128_u64[0] = 0;
LABEL_68:
                      [v57 setMediaContentDurationBucket_];
                      if (v194)
                      {
                        v103 = v211;
                        if (v211 < 0)
                        {
                          v104 = v211;
                        }

                        else
                        {
                          v104 = v211 & 0xFFFFFFFFFFFFFF8;
                        }

                        v102 = MEMORY[0x25F8CE500](v104);
                        v101 = v103;
                      }

                      else
                      {
                        v101 = v211;
                        v102 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      }

                      v211 = v38;
                      v38 = v202;
                      v191 = v31;
                      if (v102 < 2)
                      {
                        goto LABEL_83;
                      }

                      v105 = v193 - 1;
                      if (!__OFSUB__(v193, 1))
                      {
                        if (v192)
                        {
                          v106 = MEMORY[0x25F8CE460](v105);
LABEL_81:
                          (*(*v106 + 120))(&v216);
                          if (v217 <= 30.0)
                          {
                            [a2 setHasUserInitiatedFollowup_];
                            v107 = (*(*v198 + 160))(v199, v106);
                            [v57 setLastMediaUserFollowupAction_];

LABEL_85:
                            v108 = v201;
                            [v201 setCommonSignal_];
                            [v108 setMediaSignal_];
                            UUID.init()();
                            v109 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                            isa = UUID._bridgeToObjectiveC()().super.isa;
                            v111 = [v109 initWithNSUUID_];

                            v112 = v210;
                            v114 = (v210 + 8);
                            v113 = *(v210 + 8);
                            v115 = v38;
                            v38 = v212;
                            (v113)(v115, v212);
                            [v211 setPseId_];

                            (*(*v213 + 160))();
                            UUID.init(uuidString:)();

                            v116 = *(v112 + 48);
                            v194 = v112 + 48;
                            v193 = v116;
                            v117 = (v116)(v23, 1, v38);
                            v195 = v114;
                            v196 = v113;
                            if (v117 == 1)
                            {
                              v118 = outlined destroy of UUID?(v23);
                              v119 = v206;
                              v120 = 0x277D5A000;
                            }

                            else
                            {
                              v121 = v191;
                              (*(v112 + 32))(v191, v23, v38);
                              v122 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                              v123 = UUID._bridgeToObjectiveC()().super.isa;
                              v124 = [v122 initWithNSUUID_];

                              [v211 setUiSessionId_];
                              v118 = (v196)(v121, v38);
                              v119 = v206;
                              v120 = 0x277D5A000uLL;
                            }

                            v125 = ((*(*v213 + 208))(v118) + 16);
                            if (*v125)
                            {
                              v126 = &v125[2 * *v125];
                              v127 = *v126;
                              v128 = v126[1];

                              v38 = v212;

                              UUID.init(uuidString:)();

                              if ((v193)(v119, 1, v38) != 1)
                              {
                                v145 = v203;
                                (*(v210 + 32))(v203, v119, v38);
                                v146 = objc_allocWithZone(*(v120 + 3192));
                                v147 = UUID._bridgeToObjectiveC()().super.isa;
                                v139 = &off_279A51000;
                                v148 = [v146 initWithNSUUID_];

                                [v211 setOriginalLastRequestId_];
                                v144 = v196;
                                v143 = (v196)(v145, v38);
                                v138 = v205;
                                goto LABEL_98;
                              }

                              outlined destroy of UUID?(v119);
                            }

                            else
                            {
                            }

                            if (one-time initialization token for engagement != -1)
                            {
                              swift_once();
                            }

                            v129 = type metadata accessor for Logger();
                            __swift_project_value_buffer(v129, static Logger.engagement);
                            v130 = *MEMORY[0x277D615E0];
                            v131 = type metadata accessor for EngagementSignalCollectionError();
                            v132 = v209;
                            (*(*(v131 - 8) + 104))(v209, v130, v131);
                            (*(v6 + 104))(v132, *MEMORY[0x277D616A8], v5);
                            v133 = Logger.logObject.getter();
                            v134 = static os_log_type_t.debug.getter();
                            if (os_log_type_enabled(v133, v134))
                            {
                              v135 = swift_slowAlloc();
                              *&v136 = COERCE_DOUBLE(swift_slowAlloc());
                              v216 = *&v136;
                              *v135 = 136315138;
                              *(v135 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, &v216);
                              _os_log_impl(&dword_25ECEC000, v133, v134, "%s", v135, 0xCu);
                              __swift_destroy_boxed_opaque_existential_0(v136);
                              v137 = v136;
                              v38 = v212;
                              MEMORY[0x25F8CEE50](v137, -1, -1);
                              MEMORY[0x25F8CEE50](v135, -1, -1);
                            }

                            v138 = v205;
                            v139 = 0x1FB3D1000;
                            type metadata accessor for SiriTaskEngagementUtils();
                            v140 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                            v141 = v209;
                            MEMORY[0x25F8CDB30](v209, v140, v142);

                            v143 = (*(v6 + 8))(v141, v5);
                            v144 = v196;
LABEL_98:
                            (*(*v213 + 184))(v143);
                            UUID.init(uuidString:)();

                            if ((v193)(v138, 1, v38) != 1)
                            {
                              v163 = v139;
                              v164 = v204;
                              (*(v210 + 32))(v204, v138, v38);
                              v165 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                              v166 = UUID._bridgeToObjectiveC()().super.isa;
                              v167 = [v165 (v163 + 610)];

                              v162 = v211;
                              [v211 setTaskId_];

                              v161 = (v144)(v164, v38);
                              a2 = v208;
                              goto LABEL_104;
                            }

                            outlined destroy of UUID?(v138);
                            a2 = v208;
                            if (one-time initialization token for engagement == -1)
                            {
LABEL_100:
                              v149 = type metadata accessor for Logger();
                              __swift_project_value_buffer(v149, static Logger.engagement);
                              v150 = *MEMORY[0x277D615C8];
                              v151 = type metadata accessor for EngagementSignalCollectionError();
                              v152 = v207;
                              (*(*(v151 - 8) + 104))(v207, v150, v151);
                              (*(v6 + 104))(v152, *MEMORY[0x277D616A8], v5);
                              v153 = Logger.logObject.getter();
                              v154 = static os_log_type_t.debug.getter();
                              if (os_log_type_enabled(v153, v154))
                              {
                                v155 = swift_slowAlloc();
                                *&v156 = COERCE_DOUBLE(swift_slowAlloc());
                                v216 = *&v156;
                                *v155 = 136315138;
                                *(v155 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, &v216);
                                _os_log_impl(&dword_25ECEC000, v153, v154, "%s", v155, 0xCu);
                                __swift_destroy_boxed_opaque_existential_0(v156);
                                v157 = v156;
                                v38 = v212;
                                MEMORY[0x25F8CEE50](v157, -1, -1);
                                MEMORY[0x25F8CEE50](v155, -1, -1);
                              }

                              type metadata accessor for SiriTaskEngagementUtils();
                              v158 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                              v159 = v207;
                              MEMORY[0x25F8CDB30](v207, v158, v160);

                              v161 = (*(v6 + 8))(v159, v5);
                              v162 = v211;
LABEL_104:
                              v23 = 0xD000000000000024;
                              v168 = (*(*v213 + 328))(v161);
                              v169 = (*(*v168 + 104))(v168);

                              v170 = v198;
                              v171 = [v162 setSiriEngagementTaskSuccess_];
                              [v162 setTriggerOrigin_];
                              [v36 setEventMetadata_];
                              v34 = v201;
                              [v36 setMediaSignalGenerated_];
                              if (one-time initialization token for engagement == -1)
                              {
LABEL_105:
                                v172 = type metadata accessor for Logger();
                                __swift_project_value_buffer(v172, static Logger.engagement);
                                v173 = *MEMORY[0x277D61620];
                                v174 = type metadata accessor for SELFPSELogged();
                                (*(*(v174 - 8) + 104))(a2, v173, v174);
                                (*(v6 + 104))(a2, *MEMORY[0x277D61658], v5);
                                v175 = Logger.logObject.getter();
                                v176 = static os_log_type_t.debug.getter();
                                if (os_log_type_enabled(v175, v176))
                                {
                                  v177 = swift_slowAlloc();
                                  *&v178 = COERCE_DOUBLE(swift_slowAlloc());
                                  v216 = *&v178;
                                  *v177 = 136315138;
                                  *(v177 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)((v23 + 17), 0x800000025ED7E730, &v216);
                                  _os_log_impl(&dword_25ECEC000, v175, v176, "%s", v177, 0xCu);
                                  __swift_destroy_boxed_opaque_existential_0(v178);
                                  v179 = v178;
                                  v38 = v212;
                                  MEMORY[0x25F8CEE50](v179, -1, -1);
                                  v180 = v177;
                                  v34 = v201;
                                  MEMORY[0x25F8CEE50](v180, -1, -1);
                                }

                                type metadata accessor for SiriTaskEngagementUtils();
                                v181 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                                MEMORY[0x25F8CDB30](a2, v181, v182);

                                (*(v6 + 8))(a2, v5);
                                v183 = [objc_opt_self() sharedAnalytics];
                                v184 = [v183 defaultMessageStream];

                                v185 = v202;
                                UUID.init()();
                                v186 = UUID._bridgeToObjectiveC()().super.isa;
                                (v196)(v185, v38);
                                [v184 emitMessage:v36 isolatedStreamUUID:v186];

                                return;
                              }

LABEL_109:
                              swift_once();
                              goto LABEL_105;
                            }

LABEL_113:
                            swift_once();
                            goto LABEL_100;
                          }

LABEL_83:
                          [a2 setHasUserInitiatedFollowup_];
                          goto LABEL_85;
                        }

                        if ((v105 & 0x8000000000000000) != 0)
                        {
                          __break(1u);
                        }

                        else if (v105 < *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          v106 = *(v101 + 8 * v105 + 32);

                          goto LABEL_81;
                        }

                        __break(1u);
                        return;
                      }

LABEL_112:
                      __break(1u);
                      goto LABEL_113;
                    }
                  }

                  else
                  {
                  }

                  v95 = -1.0;
                  goto LABEL_62;
                }

                a2 = v200;
                v77 = [v200 setAppFollowup_];
                goto LABEL_56;
              }
            }

            else
            {
              v42 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v42)
              {
                goto LABEL_8;
              }
            }

            v81 = v39;

            v56 = v81;
            v36 = v200;
          }

          else
          {
            v56 = v36;
            v36 = v38;
            v38 = v200;
          }

          v55 = v38;

          v38 = v201;
        }

        else
        {
          v55 = v201;
        }

        v36 = v38;
        v38 = v55;
      }

      v36 = v38;
    }
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  __swift_project_value_buffer(v82, static Logger.engagement);
  v83 = *MEMORY[0x277D615B0];
  v84 = type metadata accessor for EngagementSignalCollectionError();
  (*(*(v84 - 8) + 104))(v10, v83, v84);
  (*(v6 + 104))(v10, *MEMORY[0x277D616A8], v5);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *&v88 = COERCE_DOUBLE(swift_slowAlloc());
    v216 = *&v88;
    *v87 = 136315138;
    *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000025ED7E650, &v216);
    _os_log_impl(&dword_25ECEC000, v85, v86, "%s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x25F8CEE50](v88, -1, -1);
    MEMORY[0x25F8CEE50](v87, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v89 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v10, v89, v90);

  (*(v6 + 8))(v10, v5);
}

id PSEMediaSELFEmitter.getLastMediaUserFollowupAction(firstMediaSignal:mediaUserFollowupSignal:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277D5A1F0]) init];
  if (v6)
  {
    v7 = (*(*a2 + 168))();
    v8 = (*(*v2 + 192))(v7);

    v9 = [v6 setState_];
    v10 = *(*a2 + 216);
    v11 = (v10)(v9);
    if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7E6B0), (v13 & 1) != 0))
    {
      outlined init with copy of Any(*(v11 + 56) + 32 * v12, v44);

      if (swift_dynamicCast())
      {
        v14.n128_u64[0] = v42;
LABEL_8:
        v15 = [v6 setMediaContentDurationBucket_];
        v41 = *(*a1 + 216);
        v16 = v41(v15);
        v17 = v10();
        v18 = (*(*v3 + 168))(v16, v17);

        v19 = (v10)([v6 setIsSameAppUsed_]);
        if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000025ED7E770), (v21 & 1) != 0))
        {
          outlined init with copy of Any(*(v19 + 56) + 32 * v20, v44);

          if (swift_dynamicCast())
          {
            v22 = v42;
LABEL_14:
            v23 = (v10)([v6 setIsFirstPartyAppUsedForFollowup_]);
            if (*(v23 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(0x616C507269417369, 0xE900000000000079), (v25 & 1) != 0))
            {
              outlined init with copy of Any(*(v23 + 56) + 32 * v24, v44);

              if (swift_dynamicCast())
              {
                v26 = v42;
LABEL_20:
                v27 = (v10)([v6 setIsAirPlay_]);
                if (*(v27 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED7E790), (v29 & 1) != 0))
                {
                  outlined init with copy of Any(*(v27 + 56) + 32 * v28, v44);

                  if (swift_dynamicCast())
                  {
                    v30 = v42;
LABEL_26:
                    v31 = v41([v6 setIsSubscriber_]);
                    v32 = v10();
                    v33 = (*(*v3 + 176))(v31, v32);

                    [v6 setMediaEntitySimilarity_];

                    v34 = v10();
                    if (*(v34 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(0x707954616964656DLL, 0xE900000000000065), (v36 & 1) != 0))
                    {
                      outlined init with copy of Any(*(v34 + 56) + 32 * v35, v44);

                      if (swift_dynamicCast())
                      {
                        v37 = v42;
                        v38 = v43;
LABEL_32:
                        v39 = (*(*v3 + 200))(v37, v38);

                        [v6 setMediaType_];
                        return v6;
                      }
                    }

                    else
                    {
                    }

                    v37 = 0;
                    v38 = 0xE000000000000000;
                    goto LABEL_32;
                  }
                }

                else
                {
                }

                v30 = 0;
                goto LABEL_26;
              }
            }

            else
            {
            }

            v26 = 0;
            goto LABEL_20;
          }
        }

        else
        {
        }

        v22 = 0;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v14.n128_u64[0] = 0;
    goto LABEL_8;
  }

  return v6;
}

Swift::Bool __swiftcall PSEMediaSELFEmitter.isSameAppUsed(firstMediaData:userFollowupData:)(Swift::OpaquePointer firstMediaData, Swift::OpaquePointer userFollowupData)
{
  if (*(firstMediaData._rawValue + 2))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x656372756F73, 0xE600000000000000);
    if (v5)
    {
      outlined init with copy of Any(*(firstMediaData._rawValue + 7) + 32 * v4, v12);
      if (swift_dynamicCast())
      {
        if (*(userFollowupData._rawValue + 2))
        {
          v6 = specialized __RawDictionaryStorage.find<A>(_:)(0x656372756F73, 0xE600000000000000);
          if (v7)
          {
            outlined init with copy of Any(*(userFollowupData._rawValue + 7) + 32 * v6, v12);
            if (swift_dynamicCast())
            {
              if ((v10 || v11 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v10 || v11 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {

                v8 = 1;
                return v8 & 1;
              }
            }
          }
        }
      }
    }
  }

  v8 = 0;
  return v8 & 1;
}

id PSEMediaSELFEmitter.getMediaEntitySimilarity(firstMediaData:userFollowupData:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D5A1E0]) init];
  if (v4)
  {
    if (*(a1 + 16))
    {
      v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C746974, 0xE500000000000000);
      if (v6)
      {
        outlined init with copy of Any(*(a1 + 56) + 32 * v5, v36);
        if (swift_dynamicCast())
        {
          if (*(a2 + 16))
          {
            v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C746974, 0xE500000000000000);
            if (v8)
            {
              outlined init with copy of Any(*(a2 + 56) + 32 * v7, v36);
              if (swift_dynamicCast())
              {
                v9 = HIBYTE(v35) & 0xF;
                if ((v35 & 0x2000000000000000) == 0)
                {
                  v9 = *v34 & 0xFFFFFFFFFFFFLL;
                }

                if (v9)
                {
                  v10 = HIBYTE(v35) & 0xF;
                  if ((v35 & 0x2000000000000000) == 0)
                  {
                    v10 = *v34 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v10)
                  {

                    v11 = 1;
LABEL_17:
                    [v4 setIsSameMediaTitle_];
                    if (*(a1 + 16))
                    {
                      v12 = specialized __RawDictionaryStorage.find<A>(_:)(0x747369747261, 0xE600000000000000);
                      if (v13)
                      {
                        outlined init with copy of Any(*(a1 + 56) + 32 * v12, v36);
                        if (swift_dynamicCast())
                        {
                          if (*(a2 + 16))
                          {
                            v14 = specialized __RawDictionaryStorage.find<A>(_:)(0x747369747261, 0xE600000000000000);
                            if (v15)
                            {
                              outlined init with copy of Any(*(a2 + 56) + 32 * v14, v36);
                              if (swift_dynamicCast())
                              {
                                v16 = HIBYTE(v35) & 0xF;
                                if ((v35 & 0x2000000000000000) == 0)
                                {
                                  v16 = *v34 & 0xFFFFFFFFFFFFLL;
                                }

                                if (v16)
                                {
                                  v17 = HIBYTE(v35) & 0xF;
                                  if ((v35 & 0x2000000000000000) == 0)
                                  {
                                    v17 = *v34 & 0xFFFFFFFFFFFFLL;
                                  }

                                  if (v17)
                                  {

                                    v18 = 1;
LABEL_32:
                                    [v4 setIsSameMediaArtist_];
                                    if (*(a1 + 16))
                                    {
                                      v19 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D75626C61, 0xE500000000000000);
                                      if (v20)
                                      {
                                        outlined init with copy of Any(*(a1 + 56) + 32 * v19, v36);
                                        if (swift_dynamicCast())
                                        {
                                          if (*(a2 + 16))
                                          {
                                            v21 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D75626C61, 0xE500000000000000);
                                            if (v22)
                                            {
                                              outlined init with copy of Any(*(a2 + 56) + 32 * v21, v36);
                                              if (swift_dynamicCast())
                                              {
                                                v23 = HIBYTE(v35) & 0xF;
                                                if ((v35 & 0x2000000000000000) == 0)
                                                {
                                                  v23 = *v34 & 0xFFFFFFFFFFFFLL;
                                                }

                                                if (v23)
                                                {
                                                  v24 = HIBYTE(v35) & 0xF;
                                                  if ((v35 & 0x2000000000000000) == 0)
                                                  {
                                                    v24 = *v34 & 0xFFFFFFFFFFFFLL;
                                                  }

                                                  if (v24)
                                                  {

                                                    v25 = 1;
LABEL_47:
                                                    [v4 setIsSameMediaAlbum_];
                                                    if (*(a1 + 16))
                                                    {
                                                      v26 = specialized __RawDictionaryStorage.find<A>(_:)(0x745373656E755469, 0xED0000644965726FLL);
                                                      if (v27)
                                                      {
                                                        outlined init with copy of Any(*(a1 + 56) + 32 * v26, v36);
                                                        if (swift_dynamicCast())
                                                        {
                                                          if (*(a2 + 16))
                                                          {
                                                            v28 = specialized __RawDictionaryStorage.find<A>(_:)(0x745373656E755469, 0xED0000644965726FLL);
                                                            if (v29)
                                                            {
                                                              outlined init with copy of Any(*(a2 + 56) + 32 * v28, v36);
                                                              if (swift_dynamicCast())
                                                              {
                                                                v30 = HIBYTE(v35) & 0xF;
                                                                if ((v35 & 0x2000000000000000) == 0)
                                                                {
                                                                  v30 = *v34 & 0xFFFFFFFFFFFFLL;
                                                                }

                                                                if (v30)
                                                                {
                                                                  v31 = HIBYTE(v35) & 0xF;
                                                                  if ((v35 & 0x2000000000000000) == 0)
                                                                  {
                                                                    v31 = *v34 & 0xFFFFFFFFFFFFLL;
                                                                  }

                                                                  if (v31)
                                                                  {

                                                                    v32 = 1;
LABEL_62:
                                                                    [v4 setIsSameMediaItem_];
                                                                    return v4;
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }

                                                    v32 = 0;
                                                    goto LABEL_62;
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    v25 = 0;
                                    goto LABEL_47;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v18 = 0;
                    goto LABEL_32;
                  }
                }
              }
            }
          }
        }
      }
    }

    v11 = 0;
    goto LABEL_17;
  }

  return v4;
}

uint64_t PSEMediaSELFEmitter.getMediaContentDurationBucket(mediaContentDuration:)(double a1)
{
  if (a1 >= 1.0 && a1 < 5.0)
  {
    return 1;
  }

  if (a1 >= 5.0 && a1 < 10.0)
  {
    return 2;
  }

  if (a1 >= 10.0 && a1 < 15.0)
  {
    return 3;
  }

  if (a1 >= 15.0 && a1 < 20.0)
  {
    return 4;
  }

  if (a1 >= 20.0 && a1 < 25.0)
  {
    return 5;
  }

  if (a1 >= 25.0 && a1 < 30.0)
  {
    return 6;
  }

  if (a1 >= 30.0 && a1 < 40.0)
  {
    return 7;
  }

  if (a1 >= 40.0 && a1 < 50.0)
  {
    return 8;
  }

  if (a1 >= 50.0 && a1 < 60.0)
  {
    return 9;
  }

  if (a1 >= 60.0 && a1 < 120.0)
  {
    return 10;
  }

  if (a1 >= 120.0 && a1 < 180.0)
  {
    return 11;
  }

  if (a1 >= 180.0 && a1 < 240.0)
  {
    return 12;
  }

  if (a1 >= 240.0 && a1 < 300.0)
  {
    return 13;
  }

  if (a1 >= 300.0 && a1 < 600.0)
  {
    return 14;
  }

  if (a1 >= 600.0 && a1 < 1800.0)
  {
    return 15;
  }

  if (a1 >= 1800.0 && a1 <= 7200.0)
  {
    return 16;
  }

  if (a1 <= 7200.0)
  {
    return 0;
  }

  return 17;
}

uint64_t PSEMediaSELFEmitter.getMediaPlayBackState(mediaPlayBackState:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676E6979616C50 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x646573756150 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x646570706F7453 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x7075727265746E49 && a2 == 0xEB00000000646574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  result = 5;
  if (a1 != 0x676E696B656553 || a2 != 0xE700000000000000)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t PSEMediaSELFEmitter.getMediaType(mediaType:)()
{
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {
    return 1;
  }

  if (StringProtocol.contains<A>(_:)())
  {
    return 2;
  }

  if (StringProtocol.contains<A>(_:)())
  {
    return 3;
  }

  if (StringProtocol.contains<A>(_:)())
  {
    return 4;
  }

  if (StringProtocol.contains<A>(_:)())
  {
    return 5;
  }

  if (StringProtocol.contains<A>(_:)())
  {
    return 6;
  }

  if (StringProtocol.contains<A>(_:)())
  {
    return 7;
  }

  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MRPlaybackState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MRPlaybackState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18PostSiriEngagement7PSETaskVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement7PSETaskVGMR);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt32 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
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

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F8CE460](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

void type metadata accessor for BMAppIntentInteractionDirection(uint64_t a1, unint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type MRPlaybackState and conformance MRPlaybackState()
{
  result = lazy protocol witness table cache variable for type MRPlaybackState and conformance MRPlaybackState;
  if (!lazy protocol witness table cache variable for type MRPlaybackState and conformance MRPlaybackState)
  {
    type metadata accessor for MRPlaybackState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MRPlaybackState and conformance MRPlaybackState);
  }

  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F8CE460](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t key path setter for NowPlayingSignalFactory.postEndDate : NowPlayingSignalFactory(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (*(**a2 + 104))(v7);
}

uint64_t NowPlayingSignalFactory.postEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement23NowPlayingSignalFactory_postEndDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t NowPlayingSignalFactory.postEndDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement23NowPlayingSignalFactory_postEndDate;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t NowPlayingSignalFactory.createMediaDataFromNowPlayingEvent(bundleId:deltaT:bmEvent:)(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v100 = a2;
  v6 = type metadata accessor for ReliabilityCategory();
  v97 = *(v6 - 8);
  v98 = v6;
  v7 = *(v97 + 64);
  MEMORY[0x28223BE20](v6);
  v99 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a4 duration];
  v10 = &off_279A51000;
  if (!v9)
  {
    v11 = [a4 title];
    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = v11;
    v13 = a1;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == 0x754D20656C707041 && v16 == 0xED00003120636973)
    {

      a1 = v13;
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a1 = v13;
      if ((v18 & 1) == 0)
      {
LABEL_8:
        if ([a4 playbackState] == 3 || objc_msgSend(a4, sel_playbackState) == 1)
        {
          if (one-time initialization token for engagement != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          __swift_project_value_buffer(v19, static Logger.engagement);
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            _os_log_impl(&dword_25ECEC000, v20, v21, "Biome Event - media content duration is too short. Ignore other noises.", v22, 2u);
            MEMORY[0x25F8CEE50](v22, -1, -1);
          }

          return 0;
        }

        if (one-time initialization token for engagement != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, static Logger.engagement);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();
        v10 = &off_279A51000;
        if (!os_log_type_enabled(v25, v26))
        {
          goto LABEL_25;
        }

        v27 = swift_slowAlloc();
        *v27 = 0;
        v28 = "Media content duration is 0 for Apple Music 1 (Radio Station) donations pause/interupted.";
        goto LABEL_24;
      }
    }

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.engagement);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    v10 = &off_279A51000;
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_25;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Media content duration is 0 for Apple Music 1 (Radio Station) donations playing.";
LABEL_24:
    _os_log_impl(&dword_25ECEC000, v25, v26, v28, v27, 2u);
    MEMORY[0x25F8CEE50](v27, -1, -1);
LABEL_25:
  }

  v30 = [a4 iTunesStoreIdentifier];
  if (!v30)
  {
    if (a1 != 0x6C7070612E6D6F63 || v100 != 0xEF636973754D2E65)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v35 = 0;
    v33 = 0;
    goto LABEL_35;
  }

  v31 = v10;
  v32 = v30;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (a1 == 0x6C7070612E6D6F63 && v100 == 0xEF636973754D2E65)
  {
    v10 = v31;
    if (!v35)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v10 = v31;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !v35)
    {
      goto LABEL_35;
    }
  }

  if ((v33 || v35 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25ED7ACB0;
    *(inited + 32) = 0x656372756F73;
    v98 = inited + 32;
    v37 = a1;
    v38 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v37;
    v99 = v37;
    *(inited + 56) = v100;
    *(inited + 72) = v38;
    *(inited + 80) = 0x745373656E755469;
    v39 = 0xE000000000000000;
    if (v35)
    {
      v39 = v35;
      v40 = v33;
    }

    else
    {
      v40 = 0;
    }

    *(inited + 88) = 0xED0000644965726FLL;
    *(inited + 96) = v40;
    *(inited + 104) = v39;
    *(inited + 120) = v38;
    *(inited + 128) = 0xD000000000000014;
    *(inited + 136) = 0x800000025ED7E6B0;
    v41 = MEMORY[0x277D839F8];
    *(inited + 144) = v9;
    *(inited + 168) = v41;
    *(inited + 176) = 0x656C746974;
    *(inited + 184) = 0xE500000000000000;

    v42 = [a4 v10[475]];
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = (inited + 192);
      *(inited + 216) = v38;
      if (v46)
      {
        *v47 = v44;
        goto LABEL_53;
      }
    }

    else
    {
      v47 = (inited + 192);
      *(inited + 216) = v38;
    }

    *v47 = 0;
    v46 = 0xE000000000000000;
LABEL_53:
    *(inited + 200) = v46;
    *(inited + 224) = 0x747369747261;
    *(inited + 232) = 0xE600000000000000;
    v60 = [a4 artist];
    if (v60)
    {
      v61 = v60;
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = (inited + 240);
      *(inited + 264) = v38;
      if (v64)
      {
        *v65 = v62;
        goto LABEL_58;
      }
    }

    else
    {
      v65 = (inited + 240);
      *(inited + 264) = v38;
    }

    *v65 = 0;
    v64 = 0xE000000000000000;
LABEL_58:
    *(inited + 248) = v64;
    *(inited + 272) = 0x6D75626C61;
    *(inited + 280) = 0xE500000000000000;
    v66 = [a4 album];
    if (v66)
    {
      v67 = v66;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v71 = (inited + 288);
      *(inited + 312) = v38;
      if (v70)
      {
        *v71 = v68;
        goto LABEL_63;
      }
    }

    else
    {
      v71 = (inited + 288);
      *(inited + 312) = v38;
    }

    *v71 = 0;
    v70 = 0xE000000000000000;
LABEL_63:
    *(inited + 296) = v70;
    *(inited + 320) = 0x65726E6567;
    *(inited + 328) = 0xE500000000000000;
    v72 = [a4 genre];
    if (v72)
    {
      v73 = v72;
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = (inited + 336);
      *(inited + 360) = v38;
      if (v76)
      {
        *v77 = v74;
        goto LABEL_68;
      }
    }

    else
    {
      v77 = (inited + 336);
      *(inited + 360) = v38;
    }

    *v77 = 0;
    v76 = 0xE000000000000000;
LABEL_68:
    *(inited + 344) = v76;
    *(inited + 368) = 0x64657370616C65;
    *(inited + 376) = 0xE700000000000000;
    *(inited + 384) = [a4 elapsed];
    *(inited + 408) = v41;
    *(inited + 416) = 0x707954616964656DLL;
    *(inited + 424) = 0xE900000000000065;
    v78 = [a4 mediaType];
    if (v78)
    {
      v79 = v78;
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v83 = (inited + 432);
      *(inited + 456) = v38;
      if (v82)
      {
        *v83 = v80;
        v84 = v99;
        goto LABEL_74;
      }

      v84 = v99;
    }

    else
    {
      v83 = (inited + 432);
      *(inited + 456) = v38;
      v84 = v99;
    }

    *v83 = 0;
    v82 = 0xE000000000000000;
LABEL_74:
    *(inited + 440) = v82;
    *(inited + 464) = 0xD000000000000016;
    *(inited + 472) = 0x800000025ED7E770;
    v103[0] = v84;
    v103[1] = v100;
    v101 = 0x6C7070612E6D6F63;
    v102 = 0xEA00000000002E65;
    lazy protocol witness table accessor for type String and conformance String();
    v85 = StringProtocol.contains<A>(_:)();
    v86 = MEMORY[0x277D839B0];
    *(inited + 480) = v85 & 1;
    *(inited + 504) = v86;
    *(inited + 512) = 0xD000000000000012;
    *(inited + 520) = 0x800000025ED7E790;
    v87 = [a4 iTunesSubscriptionIdentifier];
    if (v87)
    {
      v88 = v87;
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;

      if (!v89 && v91 == 0xE000000000000000)
      {

LABEL_79:
        v93 = 1;
LABEL_81:
        *(inited + 552) = v86;
        *(inited + 528) = v93;
        *(inited + 560) = 0x616C507269417369;
        *(inited + 568) = 0xE900000000000079;
        v94 = [a4 isAirPlayVideo];
        *(inited + 600) = v86;
        *(inited + 576) = v94;
        v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
        swift_arrayDestroy();
        return v23;
      }

      v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v92)
      {
        goto LABEL_79;
      }
    }

    v93 = 0;
    goto LABEL_81;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static Logger.engagement);
  v49 = *MEMORY[0x277D61708];
  v50 = type metadata accessor for NowPlayingEventDataIssues();
  v51 = v99;
  (*(*(v50 - 8) + 104))(v99, v49, v50);
  v52 = v97;
  (*(v97 + 104))(v51, *MEMORY[0x277D61688], v98);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v103[0] = v56;
    *v55 = 136315138;
    *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x800000025ED7E850, v103);
    _os_log_impl(&dword_25ECEC000, v53, v54, "%s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x25F8CEE50](v56, -1, -1);
    MEMORY[0x25F8CEE50](v55, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v57 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  v58 = v99;
  MEMORY[0x25F8CDB30](v99, v57, v59);

  (*(v52 + 8))(v58, v98);
  return 0;
}

uint64_t NowPlayingSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v85 = a2;
  v6 = type metadata accessor for Date();
  v87 = *(v6 - 8);
  v7 = *(v87 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v77[-v12];
  MEMORY[0x28223BE20](v11);
  v86 = &v77[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v77[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v77[-v20];
  v22 = [a1 playbackState];
  if ((v22 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v88 = a1;
  v23 = *(v4 + 16);
  if (!*(v23 + 16) || (v24 = v22, v25 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v26 & 1) == 0))
  {
LABEL_8:
    if (one-time initialization token for engagement == -1)
    {
LABEL_9:
      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.engagement);
      v36 = v88;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v89[0] = v40;
        *v39 = 136315138;
        v41 = v36;
        v42 = [v41 description];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v89);

        *(v39 + 4) = v46;
        _os_log_impl(&dword_25ECEC000, v37, v38, "This biome event %s is not supported for PSE Now Playing.", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x25F8CEE50](v40, -1, -1);
        MEMORY[0x25F8CEE50](v39, -1, -1);
      }

      return 0;
    }

LABEL_27:
    swift_once();
    goto LABEL_9;
  }

  v27 = (*(v23 + 56) + 16 * v25);
  v28 = v27[1];
  v83 = *v27;
  v84 = v4;

  v29 = v88;
  v30 = [v88 bundleID];
  if (!v30)
  {

    goto LABEL_8;
  }

  v79 = v28;
  v31 = v30;
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v32;

  v33 = [v29 absoluteTimestamp];
  v80 = v3;
  if (v33)
  {
    v34 = v33;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v88;
    (*(v87 + 56))(v21, 0, 1, v6);
  }

  else
  {
    (*(v87 + 56))(v21, 1, 1, v6);
  }

  v78 = [v29 duration];
  v48 = *(v87 + 16);
  v49 = v85;
  v48(v86, v85, v6);
  v50 = type metadata accessor for SiriUISession(0);
  v48(v13, v49 + *(v50 + 20), v6);
  v51 = v87;
  outlined init with copy of Date?(v21, v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v52 = (*(v51 + 48))(v19, 1, v6);
  if (v52 == 1)
  {
    v68 = *(v51 + 8);
    v68(v13, v6);
    v68(v86, v6);
    outlined destroy of Date?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v66 = 0x3FF0000000000000;
    v55 = 0;
    v59 = 0.0;
    v67 = 0.0;
    v53 = 0.0;
  }

  else
  {
    v53 = v78;
    (*(v51 + 32))(v10, v19, v6);
    Date.timeIntervalSinceReferenceDate.getter();
    v55 = v54;
    Date.timeIntervalSinceReferenceDate.getter();
    v57 = v56;
    Date.timeIntervalSinceReferenceDate.getter();
    v59 = v57 - v58;
    Date.timeIntervalSinceReferenceDate.getter();
    v61 = v60;
    v62 = v86;
    Date.timeIntervalSinceReferenceDate.getter();
    v64 = v63;
    v65 = *(v51 + 8);
    v65(v10, v6);
    v65(v13, v6);
    v65(v62, v6);
    outlined destroy of Date?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v66 = 0;
    v67 = v61 - v64;
  }

  v69 = v84;
  v70 = v88;
  v72 = v81;
  v71 = v82;
  if (v81 || v82 != 0xE000000000000000)
  {
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (!v24 && (v73 & 1) != 0)
    {
      goto LABEL_22;
    }
  }

  else if (!v24)
  {
LABEL_22:

    type metadata accessor for Signal();
    result = swift_allocObject();
    *(result + 16) = v55;
    *(result + 24) = v59;
    *(result + 32) = v67;
    *(result + 40) = v53;
    *(result + 48) = v66;
    *(result + 56) = v52 != 1;
    *(result + 64) = 0x636973754DLL;
    *(result + 72) = 0xE500000000000000;
    v74 = v79;
    *(result + 80) = v83;
    *(result + 88) = v74;
    *(result + 96) = 1;
    *(result + 104) = MEMORY[0x277D84F98];
    return result;
  }

  v89[0] = v55;
  *&v89[1] = v59;
  *&v89[2] = v67;
  *&v89[3] = v53;
  v89[4] = v66;
  v90 = v52 != 1;
  v75 = (*(*v69 + 128))(v72, v71, v89, v70);

  if (v75)
  {
    type metadata accessor for Signal();
    result = swift_allocObject();
    *(result + 16) = v55;
    *(result + 24) = v59;
    *(result + 32) = v67;
    *(result + 40) = v53;
    *(result + 48) = v66;
    *(result + 56) = v52 != 1;
    *(result + 64) = 0x636973754DLL;
    *(result + 72) = 0xE500000000000000;
    v76 = v79;
    *(result + 80) = v83;
    *(result + 88) = v76;
    *(result + 96) = 1;
    *(result + 104) = v75;
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t NowPlayingSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v26 - v8;
  v32 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = &v26 - v8;
    v28 = a3;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_18:
    v29 = MEMORY[0x277D84F90];
LABEL_19:
    v17 = *(type metadata accessor for SiriUISession(0) + 24);
    v18 = type metadata accessor for Date();
    v19 = *(v18 - 8);
    v20 = v27;
    (*(v19 + 16))(v27, v30 + v17, v18);
    (*(v19 + 56))(v20, 0, 1, v18);
    v21 = v31;
    (*(*v31 + 104))(v20);
    v22 = v29;
    v23 = (*(*v21 + 168))(v29);
    v24 = (*(*v21 + 152))(v22);

    v25 = v28;
    *v28 = v23;
    v25[1] = v24;
    return result;
  }

  if (a1 < 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x25F8CE500](v16);
  v10 = result;
  v27 = v9;
  v28 = a3;
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(*v31 + 136);
    v29 = MEMORY[0x277D84F90];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x25F8CE460](v11, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v11 + 32);
      }

      v14 = v13;
      if (v12(v13, v30))
      {

        MEMORY[0x25F8CE160](v15);
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v29 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v29 = v32;
      }

      else
      {
      }

      ++v11;
    }

    while (v10 != v11);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *NowPlayingSignalFactory.transformSignalsToFeatures(signals:)(uint64_t a1)
{
  v4 = type metadata accessor for ProtoPlayMediaTaskFeatureSet();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v137 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for ProtoTaskEngagementType();
  v7 = *(v139 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v139);
  v138 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v140 = *(v10 - 8);
  v11 = *(v140 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v120 - v15;
  v123 = type metadata accessor for ReliabilityCategory();
  v122 = *(v123 - 8);
  v17 = *(v122 + 64);
  v18 = MEMORY[0x28223BE20](a1);
  v19 = MEMORY[0x28223BE20](v18);
  v22 = &v120 - v21;
  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_58:
    if (one-time initialization token for engagement == -1)
    {
LABEL_59:
      v98 = type metadata accessor for Logger();
      __swift_project_value_buffer(v98, static Logger.engagement);
      v99 = *MEMORY[0x277D61700];
      v100 = type metadata accessor for NowPlayingEventDataIssues();
      (*(*(v100 - 8) + 104))(v22, v99, v100);
      (*(v122 + 104))(v22, *MEMORY[0x277D61688], v123);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v148 = *&v104;
        *v103 = 136315138;
        *(v103 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000025ED7E8C0, &v148);
        _os_log_impl(&dword_25ECEC000, v101, v102, "%s", v103, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v104);
        MEMORY[0x25F8CEE50](v104, -1, -1);
        MEMORY[0x25F8CEE50](v103, -1, -1);
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v105 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      MEMORY[0x25F8CDB30](v22, v105, v106);

      (*(v122 + 8))(v22, v123);
      return MEMORY[0x277D84F90];
    }

LABEL_75:
    swift_once();
    goto LABEL_59;
  }

LABEL_55:
  v95 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 < 0)
  {
    v95 = v19;
  }

  v96 = v20;
  v97 = MEMORY[0x25F8CE500](v95);
  v20 = v96;
  if (!v97)
  {
    goto LABEL_58;
  }

LABEL_3:
  v121 = v20;
  v23 = (*(*v1 + 160))();
  v24 = v23;
  if (v23 >> 62)
  {
    if (v23 >= 0)
    {
      v23 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v107 = v24;
    v25 = MEMORY[0x25F8CE500](v23);
    v24 = v107;
    if (v25)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_5:
      if (v25 < 1)
      {
        __break(1u);
        goto LABEL_73;
      }

      v125 = "appLaunchBundleId";
      v136 = v24 & 0xC000000000000001;
      v135 = *MEMORY[0x277D61530];
      v134 = (v7 + 104);
      v129 = (v140 + 16);
      v128 = v140 + 8;
      v127 = v140 + 32;
      v2 = MEMORY[0x277D84F90];
      v26 = 0.0;
      v124 = 0xD000000000000014;
      v133 = v10;
      v10 = 0;
      v132 = v14;
      v131 = v24;
      v130 = v25;
      v126 = v16;
      do
      {
        if (v136)
        {
          v27 = MEMORY[0x25F8CE460](v10);
        }

        else
        {
          v27 = *(v24 + 8 * v10 + 32);
        }

        ProtoTaskEngagementFeatureSet.init()();
        (*v134)(v138, v135, v139);
        v28 = ProtoTaskEngagementFeatureSet.engagementType.setter();
        v29 = *(*v27 + 120);
        v1 = v27;
        v144 = *v27 + 120;
        v19 = v29(&v148, v28);
        if ((*&v148 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        if (v148 <= -1.0)
        {
          goto LABEL_53;
        }

        if (v148 >= 1.84467441e19)
        {
          goto LABEL_54;
        }

        v142 = v10;
        ProtoTaskEngagementFeatureSet.startTimestampMs.setter();
        ProtoPlayMediaTaskFeatureSet.init()();
        v30 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        ProtoTaskFeatureSet.playMediaFeatureSet.setter();
        v31 = v30(&v148, 0);
        v32 = *(*v27 + 216);
        v33 = v32(v31);
        v34 = *(v33 + 16);
        v143 = v2;
        v141 = v29;
        if (v34 && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(0x656372756F73, 0xE600000000000000), (v36 & 1) != 0))
        {
          outlined init with copy of Any(*(v33 + 56) + 32 * v35, &v148);

          swift_dynamicCast();
        }

        else
        {
        }

        v37 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v38 = ProtoTaskFeatureSet.playMediaFeatureSet.modify();
        ProtoPlayMediaTaskFeatureSet.appBundleID.setter();
        v38(&v146, 0);
        v37(&v148, 0);
        v39 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v40 = ProtoTaskFeatureSet.playMediaFeatureSet.modify();
        ProtoPlayMediaTaskFeatureSet.playDurationInSec.setter();
        v40(&v146, 0);
        v41 = v39(&v148, 0);
        v42 = v32(v41);
        if (*(v42 + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C746974, 0xE500000000000000), (v44 & 1) != 0))
        {
          outlined init with copy of Any(*(v42 + 56) + 32 * v43, &v148);

          swift_dynamicCast();
        }

        else
        {
        }

        v45 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v46 = ProtoTaskFeatureSet.playMediaFeatureSet.modify();
        v47 = ProtoPlayMediaTaskFeatureSet.mediaEntity.modify();
        ProtoMediaEntitySignal.title.setter();
        v47(v145, 0);
        v46(&v146, 0);
        v48 = v45(&v148, 0);
        v49 = v32(v48);
        if (*(v49 + 16) && (v50 = specialized __RawDictionaryStorage.find<A>(_:)(0x747369747261, 0xE600000000000000), (v51 & 1) != 0))
        {
          outlined init with copy of Any(*(v49 + 56) + 32 * v50, &v148);

          swift_dynamicCast();
        }

        else
        {
        }

        v52 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v53 = ProtoTaskFeatureSet.playMediaFeatureSet.modify();
        v54 = ProtoPlayMediaTaskFeatureSet.mediaEntity.modify();
        ProtoMediaEntitySignal.artist.setter();
        v54(v145, 0);
        v53(&v146, 0);
        v55 = v52(&v148, 0);
        v56 = v32(v55);
        if (*(v56 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(0x745373656E755469, 0xED0000644965726FLL), (v58 & 1) != 0))
        {
          outlined init with copy of Any(*(v56 + 56) + 32 * v57, &v148);

          swift_dynamicCast();
        }

        else
        {
        }

        v59 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v60 = ProtoTaskFeatureSet.playMediaFeatureSet.modify();
        v61 = ProtoPlayMediaTaskFeatureSet.mediaEntity.modify();
        ProtoMediaEntitySignal.adamIdentifier.setter();
        v61(v145, 0);
        v60(&v146, 0);
        v62 = v59(&v148, 0);
        v63 = v32(v62);
        if (*(v63 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D75626C61, 0xE500000000000000), (v65 & 1) != 0))
        {
          outlined init with copy of Any(*(v63 + 56) + 32 * v64, &v148);

          swift_dynamicCast();
        }

        else
        {
        }

        v66 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v67 = ProtoTaskFeatureSet.playMediaFeatureSet.modify();
        v68 = ProtoPlayMediaTaskFeatureSet.mediaEntity.modify();
        ProtoMediaEntitySignal.album.setter();
        v68(v145, 0);
        v67(&v146, 0);
        v69 = v66(&v148, 0);
        v70 = v32(v69);
        if (*(v70 + 16) && (v71 = specialized __RawDictionaryStorage.find<A>(_:)(v124, v125 | 0x8000000000000000), (v72 & 1) != 0))
        {
          outlined init with copy of Any(*(v70 + 56) + 32 * v71, &v148);

          swift_dynamicCast();
        }

        else
        {
        }

        v73 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v74 = ProtoTaskFeatureSet.playMediaFeatureSet.modify();
        ProtoPlayMediaTaskFeatureSet.mediaContentLengthInSec.setter();
        v74(&v146, 0);
        v75 = v73(&v148, 0);
        v76 = *(*v27 + 168);
        v76(v75);
        v77 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v78 = ProtoTaskFeatureSet.playMediaFeatureSet.modify();
        ProtoPlayMediaTaskFeatureSet.actionState.setter();
        v78(&v146, 0);
        v79 = v77(&v148, 0);
        v148 = COERCE_DOUBLE((v76)(v79));
        v149 = v80;
        v146 = 2036427856;
        v147 = 0xE400000000000000;
        v14 = lazy protocol witness table accessor for type String and conformance String();
        v81 = StringProtocol.contains<A>(_:)();

        if (v81)
        {
          v83 = v133;
          v84 = v132;
          v85 = v141;
          if (v26 == 0.0)
          {
            v82 = (v141)(&v148, v82);
            v26 = v148;
          }
        }

        else
        {
          v83 = v133;
          v84 = v132;
          v85 = v141;
        }

        v148 = COERCE_DOUBLE((v76)(v82));
        v149 = v86;
        v146 = 2036427856;
        v147 = 0xE400000000000000;
        v87 = StringProtocol.contains<A>(_:)();

        v16 = v126;
        if ((v87 & 1) == 0)
        {
          v85(&v148, v88);
        }

        (*v129)(v84, v16, v83);
        v2 = v143;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v142;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement05ProtoeF10FeatureSetVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement05ProtoeF10FeatureSetVGMR, MEMORY[0x277D614D0]);
        }

        v22 = v2[2];
        v91 = v2[3];
        if (v22 >= v91 >> 1)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v91 > 1, (v22 + 1), 1, v2, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement05ProtoeF10FeatureSetVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement05ProtoeF10FeatureSetVGMR, MEMORY[0x277D614D0]);
        }

        v10 = v90 + 1;

        v7 = v140;
        (*(v140 + 8))(v16, v83);
        v2[2] = v22 + 1;
        (*(v7 + 32))(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22, v84, v83);
        v24 = v131;
      }

      while (v130 != v10);

      if (!v2[2])
      {
        goto LABEL_66;
      }

LABEL_49:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v2[2])
        {
LABEL_51:
          v92 = v2 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
          v93 = ProtoTaskEngagementFeatureSet.featureSet.modify();
          v94 = ProtoTaskFeatureSet.playMediaFeatureSet.modify();
          ProtoPlayMediaTaskFeatureSet.playDurationInSec.setter();
          v94(&v146, 0);
          v93(&v148, 0);
          return v2;
        }

        goto LABEL_74;
      }

LABEL_73:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      if (v2[2])
      {
        goto LABEL_51;
      }

LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }

  v2 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_49;
  }

LABEL_66:
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  __swift_project_value_buffer(v108, static Logger.engagement);
  v109 = *MEMORY[0x277D61700];
  v110 = type metadata accessor for NowPlayingEventDataIssues();
  v111 = v121;
  (*(*(v110 - 8) + 104))(v121, v109, v110);
  (*(v122 + 104))(v111, *MEMORY[0x277D61688], v123);
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v148 = *&v115;
    *v114 = 136315138;
    *(v114 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000025ED7E890, &v148);
    _os_log_impl(&dword_25ECEC000, v112, v113, "%s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v115);
    MEMORY[0x25F8CEE50](v115, -1, -1);
    MEMORY[0x25F8CEE50](v114, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v116 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  v117 = v121;
  MEMORY[0x25F8CDB30](v121, v116, v118);

  (*(v122 + 8))(v117, v123);
  return v2;
}

uint64_t NowPlayingSignalFactory.normalizeSignalsForFeature(signals:)()
{

  v22[0] = specialized Array._copyToContiguousArray()(v0, specialized Array._copyContents(initializing:));
  specialized MutableCollection<>.sort(by:)(v22);
  v1 = v22[0];
  v2 = (v22[0] >> 62) & 1;
  if (v22[0] < 0)
  {
    LODWORD(v2) = 1;
  }

  v21 = v2;
  if (v2 == 1)
  {
LABEL_41:
    v3 = MEMORY[0x25F8CE500](v1);
  }

  else
  {
    v3 = *(v22[0] + 16);
  }

  v4 = v1 & 0xC000000000000001;

  v5 = 0;
  v6 = MEMORY[0x277D837D0];
  while (1)
  {
    if (v3 == v5)
    {

      return v1;
    }

    if (v4)
    {
      v8 = MEMORY[0x25F8CE460](v5, v1);
      v7 = v8;
    }

    else
    {
      if (v5 >= *(v1 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v7 = *(v1 + 8 * v5 + 32);
    }

    v22[0] = (*(*v7 + 168))(v8);
    v22[1] = v9;
    lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.contains<A>(_:)();

    if (v10)
    {
      break;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_40;
    }
  }

  if (v3 < v5)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v21)
  {
    if (MEMORY[0x25F8CE500](v1) >= v5)
    {
      v10 = MEMORY[0x25F8CE500](v1);
      goto LABEL_21;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v10 = *(v1 + 16);
  if (v10 < v5)
  {
    goto LABEL_43;
  }

LABEL_21:

  if (v10 < v3)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v4)
  {
    type metadata accessor for Signal();

    v12 = v5;
    do
    {
      v13 = v12 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v12);
      v12 = v13;
    }

    while (v3 != v13);
  }

  else
  {
  }

  v6 = v1 + 32;
  if (!v21)
  {
    v3 = (2 * v3) | 1;
    v10 = v1;
    if (v3)
    {
      goto LABEL_32;
    }

LABEL_31:
    specialized _copyCollectionToContiguousArray<A>(_:)(v10, v6, v5, v3);
    v1 = v17;
    swift_unknownObjectRelease();
    return v1;
  }

  v10 = _CocoaArrayWrapper.subscript.getter();
  v6 = v14;
  v5 = v15;
  v3 = v16;

  if ((v3 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_32:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = MEMORY[0x277D84F90];
  }

  v19 = *(v18 + 16);

  if (__OFSUB__(v3 >> 1, v5))
  {
    goto LABEL_45;
  }

  if (v19 != (v3 >> 1) - v5)
  {
LABEL_46:
    swift_unknownObjectRelease_n();
    goto LABEL_31;
  }

  v1 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v1)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t NowPlayingSignalFactory.transformSignalsToBiomePSE(signals:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v164 = v149 - v2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  *&v173 = COERCE_DOUBLE(specialized Array._copyToContiguousArray()(v8, specialized Array._copyContents(initializing:)));
  v9 = 0;
  specialized MutableCollection<>.sort(by:)(&v173);
  v10 = v173;
  v11 = (v173 >> 62) & 1;
  if ((v173 & 0x8000000000000000) != 0)
  {
    LODWORD(v11) = 1;
  }

  v163 = v3;
  v162 = v7;
  v169 = v4;
  v168 = 0;
  LODWORD(v170) = v11;
  if (v11 == 1)
  {
    goto LABEL_22;
  }

  for (i = *(v173 + 16); i; i = MEMORY[0x25F8CE500](v10))
  {
    v13 = 0;
    v9 = v10 & 0xC000000000000001;
    while (1)
    {
      v16 = v10 + 8 * v13;
      if (!v9)
      {
        break;
      }

      v17 = MEMORY[0x25F8CE460](v13, v10);
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_19;
      }

LABEL_12:
      *&v173 = COERCE_DOUBLE((*(*v17 + 168))());
      v174 = v19;
      *&v171 = 1.35580621e-306;
      v172 = 0xE700000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v20 = StringProtocol.contains<A>(_:)();

      if ((v20 & 1) != 0 && v13)
      {
        if (v9)
        {
          v14 = MEMORY[0x25F8CE460](v13 - 1, v10);
        }

        else
        {
          if (v13 > *(v10 + 16))
          {
            goto LABEL_21;
          }

          v14 = *(v16 + 24);
        }

        v15 = (*(*v14 + 216))();
        (*(*v17 + 224))(v15);
      }

      ++v13;
      if (v18 == i)
      {
        goto LABEL_23;
      }
    }

    if (v13 >= *(v10 + 16))
    {
      goto LABEL_20;
    }

    v17 = *(v16 + 32);

    v18 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_12;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:
  v176 = MEMORY[0x277D84F90];
  if (v170)
  {
    v21 = MEMORY[0x25F8CE500](v10);
  }

  else
  {
    v21 = *(v10 + 16);
  }

  v22 = MEMORY[0x277D84F90];
  if (!v21)
  {
    goto LABEL_46;
  }

  v23 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x25F8CE460](v23, v10);
    v9 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_44;
    }

LABEL_34:
    v26 = (*(*v25 + 216))();
    if (*(v26 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(0x745373656E755469, 0xED0000644965726FLL), (v28 & 1) != 0))
    {
      outlined init with copy of Any(*(v26 + 56) + 32 * v27, &v173);

      if (swift_dynamicCast())
      {
        if (*&v171 == 0.0 && v172 == 0xE000000000000000)
        {

          goto LABEL_30;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v29)
        {

          goto LABEL_30;
        }
      }
    }

    else
    {
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v24 = *(v176 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_30:
    ++v23;
    if (v9 == v21)
    {
      goto LABEL_45;
    }
  }

  if (v23 >= *(v10 + 16))
  {
    goto LABEL_217;
  }

  v25 = *(v10 + 8 * v23 + 32);

  v9 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    goto LABEL_34;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  v22 = v176;
LABEL_46:

  v9 = v168;
  v31 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say18PostSiriEngagement6SignalCGTt1g504_s18de22Engagement23NowPlayingG69FactoryC26transformSignalsToBiomePSE7signalsSayAA0F0CGAH_tFSSAGXEfU1_Tf1nc_nTf4g_n(v30);
  v170 = v22;

  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 64);
  v167 = (v33 + 63) >> 6;
  v160 = (v169 + 48);
  v159 = (v169 + 32);
  v158 = (v169 + 8);

  v36 = 0;
LABEL_49:
  while (2)
  {
    if (v35)
    {
LABEL_55:
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v40 = (*(v31 + 48) + ((v36 << 10) | (16 * v39)));
      v42 = *v40;
      v41 = v40[1];
      v43 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v43 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (!v43)
      {
        continue;
      }

      if (!*(v31 + 16))
      {
        continue;
      }

      v44 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v41);
      v9 = v45;

      if ((v9 & 1) == 0)
      {
        continue;
      }

      v166 = *(*(v31 + 56) + 8 * v44);
      v46 = v166;
      v169 = v166 >> 62;
      v156 = v31;
      v47 = v166 & 0xFFFFFFFFFFFFFF8;
      if (v166 >> 62)
      {
        if (v166 < 0)
        {
          v146 = v166;
        }

        else
        {
          v146 = v166 & 0xFFFFFFFFFFFFFF8;
        }

        v48 = MEMORY[0x25F8CE500](v146);
        v46 = v166;
      }

      else
      {
        v48 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v46 & 0xC000000000000001;

      v50 = v166;
      v51 = 0;
      v52 = v47;
      while (1)
      {
        if (v48 == v51)
        {
          goto LABEL_98;
        }

        if (v49)
        {
          v9 = v32;
          v54 = MEMORY[0x25F8CE460](v51, v50);
          v53 = v54;
        }

        else
        {
          if (v51 >= *(v47 + 16))
          {
            goto LABEL_222;
          }

          v9 = v32;
          v53 = *(v50 + 8 * v51 + 32);
        }

        *&v173 = COERCE_DOUBLE((*(*v53 + 168))(v54));
        v174 = v55;
        v171 = 2036427856;
        v172 = 0xE400000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v56 = StringProtocol.contains<A>(_:)();

        if (v56)
        {
          break;
        }

        v57 = __OFADD__(v51++, 1);
        v32 = v9;
        v50 = v166;
        v47 = v52;
        if (v57)
        {
          goto LABEL_223;
        }
      }

      if (v48 < v51)
      {
        goto LABEL_229;
      }

      v32 = v9;
      v9 = v52;
      if (v169)
      {
        if (v166 < 0)
        {
          v59 = v166;
        }

        else
        {
          v59 = v52;
        }

        if (MEMORY[0x25F8CE500](v59) < v51)
        {
          goto LABEL_230;
        }

        v58 = MEMORY[0x25F8CE500](v59);
      }

      else
      {
        v58 = *(v52 + 16);
        if (v58 < v51)
        {
          goto LABEL_230;
        }
      }

      if (v58 < v48)
      {
        goto LABEL_231;
      }

      if (v49)
      {
        type metadata accessor for Signal();

        v60 = v51;
        do
        {
          v61 = v60 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v60);
          v60 = v61;
        }

        while (v48 != v61);
      }

      else
      {
      }

      if (v169)
      {
        v9 = _CocoaArrayWrapper.subscript.getter();
        v62 = v64;
        v51 = v65;
        v63 = v66;
      }

      else
      {
        v62 = v52 + 32;
        v63 = (2 * v48) | 1;
      }

      if (v63)
      {
        v69 = v32;
        v70 = v9;
        v9 = type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v71 = v70;
        v72 = swift_dynamicCastClass();
        if (!v72)
        {
          swift_unknownObjectRelease();
          v72 = MEMORY[0x277D84F90];
        }

        v73 = *(v72 + 16);

        if (__OFSUB__(v63 >> 1, v51))
        {
          goto LABEL_232;
        }

        if (v73 == (v63 >> 1) - v51)
        {
          v9 = v71;
          v74 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          v32 = v69;
          if (v74)
          {
            v50 = v74;
LABEL_98:
            v75 = v170;
            v31 = v156;
            goto LABEL_101;
          }

          v68 = MEMORY[0x277D84F90];
LABEL_100:
          v75 = v170;
          v31 = v156;
          swift_unknownObjectRelease();
          v50 = v68;
LABEL_101:
          v157 = v50 & 0xC000000000000001;
          if ((v50 & 0xC000000000000001) != 0)
          {
            v76 = v50;
            v151 = MEMORY[0x25F8CE460](0);
          }

          else
          {
            if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_228;
            }

            v76 = v50;
            v151 = *(v50 + 32);
          }

          v77 = v76;
          if (v76 >> 62)
          {
            if (v76 >= 0)
            {
              v77 = v76 & 0xFFFFFFFFFFFFFF8;
            }

            v9 = MEMORY[0x25F8CE500](v77);
            v77 = v76;
            if (!v9)
            {
LABEL_210:

              v145 = -1.0;
              goto LABEL_211;
            }
          }

          else
          {
            v9 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v9)
            {
              goto LABEL_210;
            }
          }

          v169 = 0;
          v78 = 0;
          v153 = v77 & 0xFFFFFFFFFFFFFF8;
          v166 = v77;
          v152 = v77 + 32;
          v79 = 0.0;
          v80 = 0.0;
          v81 = 0.0;
          v82 = 0.0;
          v83 = 0.0;
          v155 = v32;
          v154 = v9;
          while (1)
          {
            while (1)
            {
              if (v157)
              {
                v84 = MEMORY[0x25F8CE460](v78, v166);
                v57 = __OFADD__(v78, 1);
                v85 = v78 + 1;
                if (v57)
                {
                  goto LABEL_224;
                }
              }

              else
              {
                if (v78 >= *(v153 + 16))
                {
                  goto LABEL_225;
                }

                v86 = *(v152 + 8 * v78);

                v57 = __OFADD__(v78, 1);
                v85 = v78 + 1;
                if (v57)
                {
                  goto LABEL_224;
                }
              }

              v161 = v85;
              v170 = v75;
              v87 = *(*v84 + 168);
              v168 = v84;
              *&v173 = COERCE_DOUBLE(v87());
              v174 = v88;
              v171 = 2036427856;
              v172 = 0xE400000000000000;
              lazy protocol witness table accessor for type String and conformance String();
              v89 = StringProtocol.contains<A>(_:)();

              if (v89)
              {
                v82 = v83;
                if (v83 == 0.0)
                {

                  v103 = v168;
                  v104 = *(*v168 + 120);

                  v104(&v173, v105);

                  v80 = *&v173;
                  v81 = *&v173;
                  v82 = *&v173;
                  v83 = *&v173;
                  v151 = v103;
                  v75 = v170;
LABEL_134:
                  v32 = v155;
                  goto LABEL_147;
                }
              }

              *&v173 = COERCE_DOUBLE((v87)(v90));
              v174 = v91;
              v171 = 2036427856;
              v172 = 0xE400000000000000;
              v92 = StringProtocol.contains<A>(_:)();

              if (v92)
              {
                break;
              }

              if (v89)
              {
                v81 = v83;
                v80 = v83;
              }

LABEL_139:
              v106 = v168;
              *&v173 = COERCE_DOUBLE((v87)(v93));
              v174 = v107;
              v171 = 1886352467;
              v172 = 0xE400000000000000;
              v108 = StringProtocol.contains<A>(_:)();

              if (v108)
              {
                v80 = v81;
                if (v81 != 0.0)
                {
                  v110 = (*v106 + 120);
                  v150 = *v110;
                  v149[1] = v110;
                  v109 = v150(&v173, v109);
                  v80 = v81;
                  if (vabdd_f64(*&v173, v81) < 2.0)
                  {
                    v176 = MEMORY[0x277D84F90];
                    v9 = v170;
                    if (v170 >> 62)
                    {
                      if (v170 < 0)
                      {
                        v136 = v170;
                      }

                      else
                      {
                        v136 = v170 & 0xFFFFFFFFFFFFFF8;
                      }

                      v111 = MEMORY[0x25F8CE500](v136);
                      if (v111)
                      {
LABEL_144:
                        v112 = 0;
                        v113 = v9 & 0xC000000000000001;
                        v114 = v9 & 0xFFFFFFFFFFFFFF8;
                        do
                        {
                          if (v113)
                          {
                            v118 = MEMORY[0x25F8CE460](v112, v9);
                            v119 = v112 + 1;
                            if (__OFADD__(v112, 1))
                            {
                              goto LABEL_226;
                            }
                          }

                          else
                          {
                            if (v112 >= *(v114 + 16))
                            {
                              goto LABEL_227;
                            }

                            v118 = *(v9 + 8 * v112 + 32);

                            v119 = v112 + 1;
                            if (__OFADD__(v112, 1))
                            {
                              goto LABEL_226;
                            }
                          }

                          v120 = (*(*v118 + 120))(&v173);
                          v121 = *&v173;
                          v150(&v171, v120);
                          if (v121 == *&v171)
                          {
                          }

                          else
                          {
                            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                            v117 = *(v176 + 16);
                            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                            v9 = v170;
                            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                            specialized ContiguousArray._endMutation()();
                          }

                          ++v112;
                        }

                        while (v119 != v111);
                      }
                    }

                    else
                    {
                      v111 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v111)
                      {
                        goto LABEL_144;
                      }
                    }

                    v75 = v176;
                    v80 = v81;
                    v31 = v156;
                    goto LABEL_134;
                  }
                }
              }

              *&v173 = COERCE_DOUBLE((v87)(v109));
              v174 = v115;
              v171 = 2036427856;
              v172 = 0xE400000000000000;
              v116 = StringProtocol.contains<A>(_:)();

              v32 = v155;
              if ((v116 & 1) == 0)
              {

                v122 = *(*v106 + 120);

                v122(&v173, v123);

                v79 = *&v173;
                v169 = v106;
                v75 = v170;
                v9 = v154;
                v78 = v161;
                if (v80 == 0.0)
                {
                  goto LABEL_198;
                }

                goto LABEL_159;
              }

              v75 = v170;
LABEL_147:
              v9 = v154;
              v78 = v161;
LABEL_159:
              if (v78 == v9)
              {
LABEL_198:

                v145 = -1.0;
                v170 = v75;
                if (v80 == 0.0)
                {
                  goto LABEL_211;
                }

                if (v79 != 0.0)
                {
                  v145 = v79 - v80;
                  goto LABEL_211;
                }

                v82 = v80;
LABEL_190:
                v138 = v164;
                (*(*v165 + 96))(v137);
                v139 = v163;
                if ((*v160)(v138, 1, v163) == 1)
                {
                  outlined destroy of Date?(v138, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                }

                else
                {
                  v140 = v162;
                  (*v159)(v162, v138, v139);
                  Date.timeIntervalSinceReferenceDate.getter();
                  if (v82 < v141)
                  {
                    Date.timeIntervalSinceReferenceDate.getter();
                    if (v142 - v82 < 30.0)
                    {
                      Date.timeIntervalSinceReferenceDate.getter();
                      v144 = v143;
                      (*v158)(v140, v139);
                      v145 = v144 - v82;
                      goto LABEL_211;
                    }
                  }

                  (*v158)(v140, v139);
                }

                v145 = 30.0;
LABEL_211:
                if (v145 < 0.0)
                {
                  v145 = -1.0;
                }

                v175 = MEMORY[0x277D839F8];
                *&v173 = v145;
                v9 = v151;
                v147 = (*(*v151 + 232))(&v171);
                specialized Dictionary.subscript.setter(&v173, 0x6172754479616C70, 0xEC0000006E6F6974);
                v147(&v171, 0);

                goto LABEL_49;
              }
            }

            if (v82 == 0.0)
            {
              v80 = v82;
              v81 = v82;
              goto LABEL_139;
            }

            if (v169)
            {
              v176 = MEMORY[0x277D84F90];
              v9 = v170;
              if (v170 >> 62)
              {
                if (v170 < 0)
                {
                  v124 = v170;
                }

                else
                {
                  v124 = v170 & 0xFFFFFFFFFFFFFF8;
                }

                v94 = MEMORY[0x25F8CE500](v124);

                if (v94)
                {
LABEL_121:
                  v95 = 0;
                  v96 = v9 & 0xC000000000000001;
                  v97 = v9 & 0xFFFFFFFFFFFFFF8;
                  do
                  {
                    if (v96)
                    {
                      v99 = MEMORY[0x25F8CE460](v95, v9);
                      v100 = v95 + 1;
                      if (__OFADD__(v95, 1))
                      {
                        goto LABEL_220;
                      }
                    }

                    else
                    {
                      if (v95 >= *(v97 + 16))
                      {
                        goto LABEL_221;
                      }

                      v99 = *(v9 + 8 * v95 + 32);

                      v100 = v95 + 1;
                      if (__OFADD__(v95, 1))
                      {
                        goto LABEL_220;
                      }
                    }

                    v101 = (*(*v99 + 120))(&v173);
                    v102 = *&v173;
                    (*(*v169 + 120))(&v171, v101);
                    if (v102 == *&v171)
                    {
                    }

                    else
                    {
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      v98 = *(v176 + 16);
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      v9 = v170;
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                    }

                    ++v95;
                  }

                  while (v100 != v94);
                }
              }

              else
              {
                v94 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);

                if (v94)
                {
                  goto LABEL_121;
                }
              }

              v9 = v176;
            }

            else
            {
              v9 = v170;
            }

            v125 = v168;
            v176 = MEMORY[0x277D84F90];
            if (v9 >> 62)
            {
              if (v9 < 0)
              {
                v135 = v9;
              }

              else
              {
                v135 = v9 & 0xFFFFFFFFFFFFFF8;
              }

              v126 = MEMORY[0x25F8CE500](v135);
              if (v126)
              {
LABEL_168:
                v127 = 0;
                v170 = v9 & 0xC000000000000001;
                v128 = v9 & 0xFFFFFFFFFFFFFF8;
                do
                {
                  if (v170)
                  {
                    v131 = MEMORY[0x25F8CE460](v127, v9);
                    v132 = v127 + 1;
                    if (__OFADD__(v127, 1))
                    {
                      goto LABEL_218;
                    }
                  }

                  else
                  {
                    if (v127 >= *(v128 + 16))
                    {
                      goto LABEL_219;
                    }

                    v131 = *(v9 + 8 * v127 + 32);

                    v132 = v127 + 1;
                    if (__OFADD__(v127, 1))
                    {
                      goto LABEL_218;
                    }
                  }

                  v133 = (*(*v131 + 120))(&v173);
                  v134 = *&v173;
                  (*(*v125 + 120))(&v171, v133);
                  if (v134 == *&v171)
                  {
                  }

                  else
                  {
                    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                    v129 = v9;
                    v130 = *(v176 + 16);
                    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                    v9 = v129;
                    v125 = v168;
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    specialized ContiguousArray._endMutation()();
                  }

                  ++v127;
                }

                while (v132 != v126);
              }
            }

            else
            {
              v126 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v126)
              {
                goto LABEL_168;
              }
            }

            v75 = v176;
            v79 = 0.0;
            v80 = v82;
            v81 = v82;
            v9 = v154;
            v78 = v161;
            v31 = v156;
            v32 = v155;
            if (v161 == v154)
            {
              v170 = v176;

              goto LABEL_190;
            }
          }
        }

        v9 = v71;
        swift_unknownObjectRelease_n();
        v32 = v69;
      }

      specialized _copyCollectionToContiguousArray<A>(_:)(v9, v62, v51, v63);
      v68 = v67;
      goto LABEL_100;
    }

    break;
  }

  v37 = v170;
  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v167)
    {

      return v37;
    }

    v35 = *(v32 + 8 * v38);
    ++v36;
    if (v35)
    {
      v36 = v38;
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    outlined destroy of Date?(a1, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of Date?(v10, &_sypSgMd, &_sypSgMR);
  }

  return result;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    outlined destroy of Date?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of Date?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t NowPlayingSignalFactory.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement23NowPlayingSignalFactory_postEndDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v0;
}

uint64_t NowPlayingSignalFactory.__deallocating_deinit()
{
  v1 = v0[2];

  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement23NowPlayingSignalFactory_postEndDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t NowPlayingSignalFactory.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15MRPlaybackStateV_SSTt0g5Tf4g_n(&outlined read-only object #0 of NowPlayingSignalFactory.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15MRPlaybackStateV_SStMd, &_sSo15MRPlaybackStateV_SStMR);
  swift_arrayDestroy();
  *(v3 + 16) = v4;
  v5 = OBJC_IVAR____TtC18PostSiriEngagement23NowPlayingSignalFactory_postEndDate;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v3 + v5, 1, 1, v6);
  return v3;
}

uint64_t NowPlayingSignalFactory.init()()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15MRPlaybackStateV_SSTt0g5Tf4g_n(&outlined read-only object #0 of NowPlayingSignalFactory.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15MRPlaybackStateV_SStMd, &_sSo15MRPlaybackStateV_SStMR);
  swift_arrayDestroy();
  *(v0 + 16) = v1;
  v2 = OBJC_IVAR____TtC18PostSiriEngagement23NowPlayingSignalFactory_postEndDate;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  return v0;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement05ProtoeF10FeatureSetVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement05ProtoeF10FeatureSetVGMR, MEMORY[0x277D614D0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement0E9UISessionVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement0E9UISessionVGMR, type metadata accessor for SiriUISession);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement30ExtendedBMPhotosMemoriesSharedVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement30ExtendedBMPhotosMemoriesSharedVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement30ExtendedBMPhotosMemoriesViewedVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement30ExtendedBMPhotosMemoriesViewedVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosDeleteVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosDeleteVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosPickerVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosPickerVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement21ExtendedBMPhotosShareVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement21ExtendedBMPhotosShareVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement24ExtendedBMPhotosFavoriteVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement24ExtendedBMPhotosFavoriteVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosSearchVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosSearchVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMPhotosEditVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMPhotosEditVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement016ExtendedBMPhotosF0VGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement016ExtendedBMPhotosF0VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement19ExtendedBMAppIntentVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement19ExtendedBMAppIntentVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement29ExtendedBMAppIntentInvocationVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement29ExtendedBMAppIntentInvocationVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMClockAlarmVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMClockAlarmVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement25ExtendedBMMediaNowPlayingVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement25ExtendedBMMediaNowPlayingVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMAppInFocusVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMAppInFocusVGMR);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18PostSiriEngagement16EntitySimilarity_pGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement16EntitySimilarity_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement16EntitySimilarity_pMd, &_s18PostSiriEngagement16EntitySimilarity_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC18PostSiriEngagement6SignalC_Tt1g5Tm(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
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

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for Signal();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement0E9UISessionVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement0E9UISessionVGMR, type metadata accessor for SiriUISession);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement05ProtoeF10FeatureSetVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement05ProtoeF10FeatureSetVGMR, MEMORY[0x277D614D0]);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  NewAByxGyF18PostSiriEngagement6SignalC_Tg5_0 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = NewAByxGyF18PostSiriEngagement6SignalC_Tg5_0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    NewAByxGyF18PostSiriEngagement6SignalC_Tg5_0 = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF18PostSiriEngagement6SignalC_Tg5_0(NewAByxGyF18PostSiriEngagement6SignalC_Tg5_0);
    *a1 = NewAByxGyF18PostSiriEngagement6SignalC_Tg5_0;
  }

  v4 = *(NewAByxGyF18PostSiriEngagement6SignalC_Tg5_0 + 16);
  v6[0] = NewAByxGyF18PostSiriEngagement6SignalC_Tg5_0 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        type metadata accessor for Signal();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        type metadata accessor for SiriUISession(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SiriUISession(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        type metadata accessor for TranscriptTask(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        type metadata accessor for ProtoTaskEngagementFeatureSet();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ProtoTaskEngagementFeatureSet() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v18 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = *(*v8 + 120);

      v13 = v11(v20, v12);
      v14 = v20[0];
      (*(*v10 + 120))(v19, v13);

      if (v14 >= v19[0])
      {
LABEL_4:
        ++v4;
        v6 = v18 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v15;
      --v6;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3;
  v101 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_89:
    v6 = *v101;
    if (!*v101)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v25 = v104;
    if ((result & 1) == 0)
    {
LABEL_121:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v109 = v7;
    v93 = *(v7 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v4;
        if (!*v4)
        {
          goto LABEL_125;
        }

        v4 = (v93 - 1);
        v95 = *&v7[16 * v93];
        v96 = *&v7[16 * v93 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((v94 + 8 * v95), (v94 + 8 * *&v7[16 * v93 + 16]), (v94 + 8 * v96), v6);
        if (v25)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v93 - 2 >= *(v7 + 2))
        {
          goto LABEL_115;
        }

        v97 = &v7[16 * v93];
        *v97 = v95;
        *(v97 + 1) = v96;
        v109 = v7;
        result = specialized Array.remove(at:)(v4);
        v7 = v109;
        v93 = *(v109 + 2);
        v4 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    v102 = v8;
    if (v6 >= v5)
    {
      v25 = v104;
    }

    else
    {
      v99 = v7;
      v9 = *(*v4 + 8 * v6);
      v7 = (8 * v8);
      v10 = (*v4 + 8 * v8);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*v9 + 120);
      v14 = v8;

      v16 = v13(v108, v15);
      v17 = *v108;
      (*(*v12 + 120))(v107, v16);

      v18 = v107[0];
      v19 = v14 + 2;
      while (v5 != v19)
      {
        v20 = *(v11 - 1);
        v21 = *(**v11 + 120);

        v23 = v21(v108, v22);
        v24 = *v108;
        (*(*v20 + 120))(v107, v23);

        ++v19;
        ++v11;
        if (v17 < v18 == v24 >= v107[0])
        {
          v6 = v19 - 1;
          goto LABEL_11;
        }
      }

      v6 = v5;
LABEL_11:
      v8 = v102;
      v4 = a3;
      v25 = v104;
      if (v17 < v18)
      {
        if (v6 < v102)
        {
          goto LABEL_118;
        }

        if (v102 < v6)
        {
          v26 = 8 * v6 - 8;
          v27 = v6;
          v28 = v102;
          do
          {
            if (v28 != --v27)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v29 = *&v7[v30];
              *&v7[v30] = *(v30 + v26);
              *(v30 + v26) = v29;
            }

            ++v28;
            v26 -= 8;
            v7 += 8;
          }

          while (v28 < v27);
        }
      }

      v7 = v99;
    }

    v31 = v4[1];
    if (v6 < v31)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_117;
      }

      if (v6 - v8 < a4)
      {
        v32 = (v8 + a4);
        if (__OFADD__(v8, a4))
        {
          goto LABEL_119;
        }

        if (v32 >= v31)
        {
          v32 = v4[1];
        }

        if (v32 < v8)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v6 != v32)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v6 < v8)
    {
      goto LABEL_116;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v47 = *(v7 + 2);
    v46 = *(v7 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v48;
    v49 = &v7[16 * v47];
    *(v49 + 4) = v102;
    *(v49 + 5) = v6;
    v50 = *v101;
    if (!*v101)
    {
      goto LABEL_126;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v7 + 4);
          v53 = *(v7 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_58:
          if (v55)
          {
            goto LABEL_105;
          }

          v68 = &v7[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_108;
          }

          v74 = &v7[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_112;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v78 = &v7[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_72:
        if (v73)
        {
          goto LABEL_107;
        }

        v81 = &v7[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_110;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_79:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v4)
        {
          goto LABEL_123;
        }

        v90 = *&v7[16 * v89 + 32];
        v91 = *&v7[16 * v51 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v4 + 8 * v90), (*v4 + 8 * *&v7[16 * v51 + 32]), (*v4 + 8 * v91), v50);
        if (v25)
        {
        }

        if (v91 < v90)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v89 >= *(v7 + 2))
        {
          goto LABEL_102;
        }

        v92 = &v7[16 * v89];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        v109 = v7;
        result = specialized Array.remove(at:)(v51);
        v7 = v109;
        v48 = *(v109 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v7[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_103;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_104;
      }

      v63 = &v7[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_106;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_109;
      }

      if (v67 >= v59)
      {
        v85 = &v7[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_113;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v104 = v25;
    v5 = v4[1];
    if (v6 >= v5)
    {
      goto LABEL_89;
    }
  }

  v100 = v7;
  v105 = v32;
  v33 = *v4;
  v34 = v33 + 8 * v6 - 8;
  v35 = v8 - v6;
LABEL_31:
  v106 = v6;
  v36 = *(v33 + 8 * v6);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = *v38;
    v40 = *(*v36 + 120);

    v42 = v40(v108, v41);
    v43 = *v108;
    (*(*v39 + 120))(v107, v42);

    if (v43 >= v107[0])
    {
LABEL_30:
      v6 = v106 + 1;
      v34 += 8;
      --v35;
      if ((v106 + 1) != v105)
      {
        goto LABEL_31;
      }

      v6 = v105;
      v4 = a3;
      v7 = v100;
      v8 = v102;
      goto LABEL_38;
    }

    if (!v33)
    {
      break;
    }

    v44 = *v38;
    v36 = v38[1];
    *v38 = v36;
    v38[1] = v44;
    --v38;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v4;
      v19 = *(**v13 + 120);

      v21 = v19(v41, v20);
      v22 = *v41;
      (*(*v18 + 120))(v40, v21);

      if (v22 < v40[0])
      {
        break;
      }

      v16 = v4;
      v17 = v6 == v4;
      v4 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v13;
    v17 = v6 == v13;
    v13 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[8 * v12] <= a4)
  {
    v23 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v23;
  }

  v15 = a2;
  v14 = &v4[8 * v12];
  if (v10 >= 8 && a2 > v6)
  {
    v39 = v4;
    v37 = v6;
LABEL_25:
    __dst = v15;
    v24 = v15 - 8;
    v5 -= 8;
    v25 = v14;
    v26 = v14;
    do
    {
      v27 = *(v26 - 1);
      v26 -= 8;
      v28 = v5 + 8;
      v29 = v24;
      v30 = *v24;
      v31 = *(*v27 + 120);

      v33 = v31(v41, v32);
      v34 = *v41;
      (*(*v30 + 120))(v40, v33);

      if (v34 < v40[0])
      {
        v35 = v29;
        if (v28 != __dst)
        {
          *v5 = *v29;
        }

        v4 = v39;
        v14 = v25;
        if (v25 <= v39 || (v15 = v35, v35 <= v37))
        {
          v15 = v35;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v28 != v25)
      {
        *v5 = *v26;
      }

      v5 -= 8;
      v25 = v26;
      v24 = v29;
    }

    while (v26 > v39);
    v14 = v26;
    v4 = v39;
    v15 = __dst;
  }

LABEL_36:
  if (v15 != v4 || v15 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v15, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t specialized Array._copyToContiguousArray()(uint64_t a1)
{
  return specialized Array._copyToContiguousArray()(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, specialized Array._copyContents(initializing:));
}

uint64_t specialized Array._copyToContiguousArray()(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v4 = a1;
  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v5 = MEMORY[0x25F8CE500](a1);
  if (!v5)
  {
LABEL_9:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC18PostSiriEngagement6SignalC_Tt1g5Tm(v5, 0);
  a2(v7 + 4, v6, v4);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15MRPlaybackStateV_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo15MRPlaybackStateVSSGMd, &_ss18_DictionaryStorageCySo15MRPlaybackStateVSSGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say18PostSiriEngagement6SignalCGTt1g504_s18de22Engagement23NowPlayingG69FactoryC26transformSignalsToBiomePSE7signalsSayAA0F0CGAH_tFSSAGXEfU1_Tf1nc_nTf4g_n(uint64_t a1)
{
  v35 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_30:
    if (a1 < 0)
    {
      v29 = a1;
    }

    else
    {
      v29 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x25F8CE500](v29);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      v31 = v2;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x25F8CE460](v3, a1);
          v9 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v8 = *(a1 + 8 * v3 + 32);

          v9 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        v10 = (*(*v8 + 216))();
        if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(0x745373656E755469, 0xED0000644965726FLL), (v12 & 1) != 0))
        {
          outlined init with copy of Any(*(v10 + 56) + 32 * v11, v34);

          if (swift_dynamicCast())
          {
            v14 = v32;
            v13 = v33;
            goto LABEL_17;
          }
        }

        else
        {
        }

        v14 = 0;
        v13 = 0xE000000000000000;
LABEL_17:
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
        v17 = v4[2];
        v18 = (v15 & 1) == 0;
        v19 = v17 + v18;
        if (__OFADD__(v17, v18))
        {
          goto LABEL_28;
        }

        v20 = v15;
        if (v4[3] < v19)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, 1);
          v4 = v35;
          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
          if ((v20 & 1) != (v22 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v16 = v21;
        }

        if (v20)
        {

          v6 = (v4[7] + 8 * v16);
          MEMORY[0x25F8CE160](v5);
          v7 = v31;
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v28 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_25ED7ACC0;
          *(v23 + 32) = v8;
          v4[(v16 >> 6) + 8] |= 1 << v16;
          v24 = (v4[6] + 16 * v16);
          *v24 = v14;
          v24[1] = v13;
          *(v4[7] + 8 * v16) = v23;
          v25 = v4[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_29;
          }

          v4[2] = v27;
          v7 = v31;
        }

        ++v3;
        if (v9 == v7)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t type metadata accessor for NowPlayingSignalFactory()
{
  result = type metadata singleton initialization cache for NowPlayingSignalFactory;
  if (!type metadata singleton initialization cache for NowPlayingSignalFactory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for NowPlayingSignalFactory()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t AbstractActivityCollector.__allocating_init(parameters:)()
{

  return swift_allocObject();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TaskSuccess.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x75636C6143746F6ELL;
  v4 = 0x6673736563637573;
  if (v1 != 3)
  {
    v4 = 0x7365636375736E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696C707041746F6ELL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TaskSuccess.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TaskSuccess.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskSuccess.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskSuccess.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskSuccess.NotApplicableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskSuccess.NotApplicableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskSuccess.NotCalculatedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskSuccess.NotCalculatedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskSuccess.SuccessfulCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskSuccess.SuccessfulCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskSuccess.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskSuccess.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskSuccess.UnsuccessfulCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskSuccess.UnsuccessfulCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TaskSuccess.encode(to:)(void *a1, int a2)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement11TaskSuccessO22UnsuccessfulCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement11TaskSuccessO22UnsuccessfulCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement11TaskSuccessO20SuccessfulCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement11TaskSuccessO20SuccessfulCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement11TaskSuccessO23NotCalculatedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement11TaskSuccessO23NotCalculatedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v36 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement11TaskSuccessO23NotApplicableCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement11TaskSuccessO23NotApplicableCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement11TaskSuccessO17UnknownCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement11TaskSuccessO17UnknownCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement11TaskSuccessO10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement11TaskSuccessO10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v48);
  v23 = &v36 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = (v20 + 8);
  if (v47 <= 1u)
  {
    v31 = v45;
    v30 = v46;
    if (v47)
    {
      v50 = 1;
      lazy protocol witness table accessor for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys();
      v35 = v48;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v30 + 8))(v15, v12);
      return (*v25)(v23, v35);
    }

    v49 = 0;
    lazy protocol witness table accessor for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys();
    v32 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v31 + 8))(v19, v16);
    return (*v25)(v23, v32);
  }

  if (v47 == 2)
  {
    v51 = 2;
    lazy protocol witness table accessor for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys();
    v33 = v36;
    v32 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v37 + 8))(v33, v38);
    return (*v25)(v23, v32);
  }

  if (v47 == 3)
  {
    v52 = 3;
    lazy protocol witness table accessor for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys();
    v26 = v39;
    v27 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v40;
    v28 = v41;
  }

  else
  {
    v53 = 4;
    lazy protocol witness table accessor for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys();
    v26 = v42;
    v27 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v43;
    v28 = v44;
  }

  (*(v29 + 8))(v26, v28);
  return (*v25)(v23, v27);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.CodingKeys and conformance TaskSuccess.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.UnsuccessfulCodingKeys and conformance TaskSuccess.UnsuccessfulCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.SuccessfulCodingKeys and conformance TaskSuccess.SuccessfulCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.NotCalculatedCodingKeys and conformance TaskSuccess.NotCalculatedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.NotApplicableCodingKeys and conformance TaskSuccess.NotApplicableCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskSuccess.UnknownCodingKeys and conformance TaskSuccess.UnknownCodingKeys);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance TaskSuccess@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TaskSuccess.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskCompletionType.AbandonedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskCompletionType.AbandonedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskCompletionType.CancelledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskCompletionType.CancelledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TaskCompletionType.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x656C6C65636E6163;
  v4 = 0x64656C696166;
  if (v1 != 3)
  {
    v4 = 0x6574656C706D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E6F646E616261;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TaskCompletionType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TaskCompletionType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskCompletionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskCompletionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskCompletionType.CompletedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskCompletionType.CompletedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskCompletionType.FailedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskCompletionType.FailedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskCompletionType.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskCompletionType.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TaskCompletionType.encode(to:)(void *a1, int a2)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19CompletedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19CompletedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement18TaskCompletionTypeO16FailedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement18TaskCompletionTypeO16FailedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19CancelledCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19CancelledCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v36 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19AbandonedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement18TaskCompletionTypeO19AbandonedCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement18TaskCompletionTypeO17UnknownCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement18TaskCompletionTypeO17UnknownCodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement18TaskCompletionTypeO10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement18TaskCompletionTypeO10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v48);
  v23 = &v36 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TaskCompletionType.CodingKeys and conformance TaskCompletionType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = (v20 + 8);
  if (v47 <= 1u)
  {
    v31 = v45;
    v30 = v46;
    if (v47)
    {
      v50 = 1;
      lazy protocol witness table accessor for type TaskCompletionType.AbandonedCodingKeys and conformance TaskCompletionType.AbandonedCodingKeys();
      v35 = v48;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v30 + 8))(v15, v12);
      return (*v25)(v23, v35);
    }

    v49 = 0;
    lazy protocol witness table accessor for type TaskCompletionType.UnknownCodingKeys and conformance TaskCompletionType.UnknownCodingKeys();
    v32 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v31 + 8))(v19, v16);
    return (*v25)(v23, v32);
  }

  if (v47 == 2)
  {
    v51 = 2;
    lazy protocol witness table accessor for type TaskCompletionType.CancelledCodingKeys and conformance TaskCompletionType.CancelledCodingKeys();
    v33 = v36;
    v32 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v37 + 8))(v33, v38);
    return (*v25)(v23, v32);
  }

  if (v47 == 3)
  {
    v52 = 3;
    lazy protocol witness table accessor for type TaskCompletionType.FailedCodingKeys and conformance TaskCompletionType.FailedCodingKeys();
    v26 = v39;
    v27 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v40;
    v28 = v41;
  }

  else
  {
    v53 = 4;
    lazy protocol witness table accessor for type TaskCompletionType.CompletedCodingKeys and conformance TaskCompletionType.CompletedCodingKeys();
    v26 = v42;
    v27 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v43;
    v28 = v44;
  }

  (*(v29 + 8))(v26, v28);
  return (*v25)(v23, v27);
}

Swift::Int TaskSuccess.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance TaskCompletionType@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TaskCompletionType.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TaskInteractionType.CodingKeys()
{
  v1 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000019;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x736564756C636E69;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TaskInteractionType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TaskInteractionType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskInteractionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskInteractionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TaskInteractionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement19TaskInteractionTypeV10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement19TaskInteractionTypeV10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TaskInteractionType.CodingKeys and conformance TaskInteractionType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v10[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

PostSiriEngagement::TaskInteractionType __swiftcall TaskInteractionType.init(includesPrompt:includesConfirm:includesDisambiguate:includesUnsupportedPrompt:)(Swift::Bool includesPrompt, Swift::Bool includesConfirm, Swift::Bool includesDisambiguate, Swift::Bool includesUnsupportedPrompt)
{
  if (includesUnsupportedPrompt)
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  if (includesDisambiguate)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (includesConfirm)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 0xFFFFFFFE | includesPrompt | v5 | v4);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TaskInteractionType@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TaskInteractionType.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
    a2[2] = BYTE2(result) & 1;
    a2[3] = BYTE3(result) & 1;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TaskInteractionType(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v1[3];
  return TaskInteractionType.encode(to:)(a1);
}

uint64_t EngagementUnderstandingFeatures.taskSuccess.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t EngagementUnderstandingFeatures.taskInteractionType.getter()
{
  swift_beginAccess();
  if (v0[20])
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[19])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v0[18])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return v3 | v0[17] | v2 | v1;
}

uint64_t EngagementUnderstandingFeatures.taskInteractionType.setter(int a1)
{
  result = swift_beginAccess();
  v1[17] = a1 & 1;
  v1[18] = BYTE1(a1) & 1;
  v1[19] = BYTE2(a1) & 1;
  v1[20] = HIBYTE(a1) & 1;
  return result;
}

uint64_t EngagementUnderstandingFeatures.taskCompletionType.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 21) = a1;
  return result;
}

_BYTE *EngagementUnderstandingFeatures.__allocating_init(taskSuccess:taskCompletionType:taskInteractionType:)(char a1, char a2, int a3)
{
  result = swift_allocObject();
  result[16] = a1;
  result[17] = a3 & 1;
  result[18] = BYTE1(a3) & 1;
  result[19] = BYTE2(a3) & 1;
  result[20] = HIBYTE(a3) & 1;
  result[21] = a2;
  return result;
}

_BYTE *EngagementUnderstandingFeatures.init(taskSuccess:taskCompletionType:taskInteractionType:)(char a1, char a2, int a3)
{
  v3[16] = a1;
  v3[17] = a3 & 1;
  v3[18] = BYTE1(a3) & 1;
  v3[19] = BYTE2(a3) & 1;
  v3[20] = HIBYTE(a3) & 1;
  v3[21] = a2;
  return v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance EngagementUnderstandingFeatures.CodingKeys()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636375536B736174;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EngagementUnderstandingFeatures.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized EngagementUnderstandingFeatures.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EngagementUnderstandingFeatures.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EngagementUnderstandingFeatures.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementUnderstandingFeatures.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement0F21UnderstandingFeaturesC10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement0F21UnderstandingFeaturesC10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EngagementUnderstandingFeatures.CodingKeys and conformance EngagementUnderstandingFeatures.CodingKeys();
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = (*(*v3 + 104))(v11);
  v20 = 0;
  lazy protocol witness table accessor for type TaskSuccess and conformance TaskSuccess();
  v12 = KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = (*(*v3 + 128))(v12);
    v17 = v13 & 0x101;
    v18 = BYTE2(v13) & 1;
    v19 = HIBYTE(v13) & 1;
    v16[9] = 1;
    lazy protocol witness table accessor for type TaskInteractionType and conformance TaskInteractionType();
    v14 = KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[8] = (*(*v3 + 152))(v14);
    v16[7] = 2;
    lazy protocol witness table accessor for type TaskCompletionType and conformance TaskCompletionType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SiriExecutionTask.uiSessionId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SiriExecutionTask.uiSessionId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SiriExecutionTask.taskId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SiriExecutionTask.taskId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t SiriExecutionTask.requestIds.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t SiriExecutionTask.requestIds.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t SiriExecutionTask.rootInteractionIds.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t SiriExecutionTask.rootInteractionIds.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t SiriExecutionTask.appPattern.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t SiriExecutionTask.appPattern.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t SiriExecutionTask.taskType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t SiriExecutionTask.taskType.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t SiriExecutionTask.conversationPath.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t SiriExecutionTask.conversationPath.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t SiriExecutionTask.engagementFeatures.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t SiriExecutionTask.engagementFeatures.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t key path setter for SiriExecutionTask.startTime : SiriExecutionTask(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 360))(v7);
}

uint64_t key path setter for SiriExecutionTask.endTime : SiriExecutionTask(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 384))(v7);
}

uint64_t SiriExecutionTask.__allocating_init(uiSessionId:taskId:requestIds:rootInteractionIds:appPattern:taskType:conversationPath:engagementFeatures:startTime:endTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21 = *(v12 + 48);
  v22 = *(v12 + 52);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  *(v23 + 32) = a3;
  *(v23 + 40) = a4;
  *(v23 + 48) = a5;
  *(v23 + 56) = a6;
  *(v23 + 64) = a7;
  *(v23 + 72) = a8;
  *(v23 + 80) = a9;
  *(v23 + 96) = a10;
  v24 = OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_startTime;
  v25 = type metadata accessor for Date();
  v26 = *(*(v25 - 8) + 32);
  v26(v23 + v24, a11, v25);
  v26(v23 + OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_endTime, a12, v25);
  return v23;
}

uint64_t SiriExecutionTask.init(uiSessionId:taskId:requestIds:rootInteractionIds:appPattern:taskType:conversationPath:engagementFeatures:startTime:endTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 64) = a7;
  *(v12 + 72) = a8;
  *(v12 + 80) = a9;
  *(v12 + 96) = a10;
  v13 = OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_startTime;
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 32);
  v15(v12 + v13, a11, v14);
  v15(v12 + OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_endTime, a12, v14);
  return v12;
}

unint64_t SiriExecutionTask.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6D69547472617473;
    if (a1 != 8)
    {
      v5 = 0x656D6954646E65;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000010;
    if (a1 == 5)
    {
      v6 = 0x657079546B736174;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6F69737365536975;
    v2 = 0x4974736575716572;
    v3 = 0xD000000000000012;
    if (a1 != 3)
    {
      v3 = 0x6574746150707061;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x64496B736174;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriExecutionTask.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SiriExecutionTask.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriExecutionTask.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriExecutionTask.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *SiriExecutionTask.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 6);

  v4 = *(v0 + 7);

  v5 = *(v0 + 8);

  v6 = *(v0 + 10);

  v7 = *(v0 + 11);

  v8 = *(v0 + 12);

  v9 = OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_startTime;
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 8);
  v11(&v0[v9], v10);
  v11(&v0[OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_endTime], v10);
  return v0;
}

uint64_t SiriExecutionTask.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement0E13ExecutionTaskC10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement0E13ExecutionTaskC10CodingKeys33_C39A21EAB020D4CF367C935C99331005LLOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriExecutionTask.CodingKeys and conformance SiriExecutionTask.CodingKeys();
  v17 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v2 + 160))(v17);
  LOBYTE(v44) = 0;
  v18 = v11;
  v19 = v42;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v19)
  {
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v38 = v10;
    v42 = v12;

    (*(*v2 + 184))(v20);
    LOBYTE(v44) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    v44 = (*(*v2 + 208))(v22);
    v43 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v23 = lazy protocol witness table accessor for type [String] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v44 = (*(*v2 + 232))(v24);
    v43 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v44 = (*(*v2 + 256))(v25);
    v43 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v37 = v23;

    (*(*v2 + 280))(v26);
    LOBYTE(v44) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();

    v44 = (*(*v2 + 304))(v27);
    v43 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v44 = (*(*v2 + 328))(v28);
    v43 = 7;
    type metadata accessor for EngagementUnderstandingFeatures();
    lazy protocol witness table accessor for type EngagementUnderstandingFeatures and conformance EngagementUnderstandingFeatures(&lazy protocol witness table cache variable for type EngagementUnderstandingFeatures and conformance EngagementUnderstandingFeatures, v29, type metadata accessor for EngagementUnderstandingFeatures);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v31 = v38;
    (*(*v2 + 352))(v30);
    LOBYTE(v44) = 8;
    lazy protocol witness table accessor for type EngagementUnderstandingFeatures and conformance EngagementUnderstandingFeatures(&lazy protocol witness table cache variable for type Date and conformance Date, 255, MEMORY[0x277CC9578]);
    v32 = v40;
    v37 = v15;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v36 = v11;
    v33 = *(v41 + 8);
    v34 = v33(v31, v32);
    v35 = v39;
    (*(*v2 + 376))(v34);
    LOBYTE(v44) = 9;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v33(v35, v32);
    return (*(v42 + 8))(v37, v18);
  }
}

uint64_t SiriExecutionStep.appBundleId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SiriExecutionStep.appBundleId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SiriExecutionStep.intentName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SiriExecutionStep.intentName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t SiriExecutionStep.interactionId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}