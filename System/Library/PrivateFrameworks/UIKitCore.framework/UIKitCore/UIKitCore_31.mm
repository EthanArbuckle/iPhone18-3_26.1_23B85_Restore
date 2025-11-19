uint64_t sub_188E679A4(uint64_t a1, void (*a2)(_BYTE *__return_ptr, _BYTE *), uint64_t a3, int a4, void *a5)
{
  LODWORD(v59) = a4;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (1)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v40 = (v13 - 1) & v13;
    v18 = __clz(__rbit64(v13)) | (v14 << 6);
    v19 = *(*(a1 + 48) + 8 * v18);
    v20 = *(a1 + 56) + 216 * v18;
    *&v55[168] = *(v20 + 160);
    *&v55[184] = *(v20 + 176);
    *&v55[200] = *(v20 + 192);
    *&v55[216] = *(v20 + 208);
    *&v55[104] = *(v20 + 96);
    *&v55[120] = *(v20 + 112);
    *&v55[136] = *(v20 + 128);
    *&v55[152] = *(v20 + 144);
    *&v55[40] = *(v20 + 32);
    *&v55[56] = *(v20 + 48);
    *&v55[72] = *(v20 + 64);
    *&v55[88] = *(v20 + 80);
    *&v55[8] = *v20;
    *&v55[24] = *(v20 + 16);
    *v55 = v19;
    a2(v57, v55);
    sub_188E67F4C(v57);
    v16 = v14;
LABEL_15:
    *&v55[192] = *&v57[192];
    *&v55[208] = *&v57[208];
    v56 = v58;
    *&v55[128] = *&v57[128];
    *&v55[144] = *&v57[144];
    *&v55[160] = *&v57[160];
    *&v55[176] = *&v57[176];
    *&v55[64] = *&v57[64];
    *&v55[80] = *&v57[80];
    *&v55[96] = *&v57[96];
    *&v55[112] = *&v57[112];
    *v55 = *v57;
    *&v55[16] = *&v57[16];
    *&v55[32] = *&v57[32];
    *&v55[48] = *&v57[48];
    if (sub_188E67F54(v55) == 1)
    {
      sub_188E036A4();
    }

    v21 = v16;
    v22 = *v57;
    v51 = *&v57[168];
    v52 = *&v57[184];
    v53 = *&v57[200];
    v54 = *&v57[216];
    v47 = *&v57[104];
    v48 = *&v57[120];
    v49 = *&v57[136];
    v50 = *&v57[152];
    v43 = *&v57[40];
    v44 = *&v57[56];
    v45 = *&v57[72];
    v46 = *&v57[88];
    v41 = *&v57[8];
    v42 = *&v57[24];
    v23 = *a5;
    v24 = sub_188B85570(*v57);
    v26 = v23[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_29;
    }

    v30 = v25;
    if (v23[3] >= v29)
    {
      if (v59)
      {
        goto LABEL_21;
      }

      v59 = v24;
      sub_188FA1728();
      v32 = v21;
      v24 = v59;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_22:
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v22;
      v34 = v33[7] + 216 * v24;
      *(v34 + 64) = v45;
      *(v34 + 80) = v46;
      *(v34 + 32) = v43;
      *(v34 + 48) = v44;
      *(v34 + 128) = v49;
      *(v34 + 144) = v50;
      *(v34 + 96) = v47;
      *(v34 + 112) = v48;
      *(v34 + 208) = v54;
      *(v34 + 176) = v52;
      *(v34 + 192) = v53;
      *(v34 + 160) = v51;
      *v34 = v41;
      *(v34 + 16) = v42;
      v35 = v33[2];
      v28 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v28)
      {
        goto LABEL_30;
      }

      v33[2] = v36;
      LODWORD(v59) = 1;
      v11 = v32;
      v9 = v40;
    }

    else
    {
      sub_1890BB7D4(v29, v59 & 1);
      v24 = sub_188B85570(v22);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_31;
      }

LABEL_21:
      v32 = v21;
      v33 = *a5;
      if ((v30 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_5:
      v12 = v33[7] + 216 * v24;
      *(v12 + 160) = v51;
      *(v12 + 176) = v52;
      *(v12 + 192) = v53;
      *(v12 + 208) = v54;
      *(v12 + 96) = v47;
      *(v12 + 112) = v48;
      *(v12 + 128) = v49;
      *(v12 + 144) = v50;
      *(v12 + 32) = v43;
      *(v12 + 48) = v44;
      *(v12 + 64) = v45;
      *(v12 + 80) = v46;
      LODWORD(v59) = 1;
      v11 = v32;
      v9 = v40;
      *v12 = v41;
      *(v12 + 16) = v42;
    }
  }

  if (v10 <= v11 + 1)
  {
    v15 = v11 + 1;
  }

  else
  {
    v15 = v10;
  }

  v16 = v15 - 1;
  v17 = v11;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_188E67F70(v55);
      v40 = 0;
      v58 = v56;
      *&v57[192] = *&v55[192];
      *&v57[208] = *&v55[208];
      *&v57[128] = *&v55[128];
      *&v57[144] = *&v55[144];
      *&v57[160] = *&v55[160];
      *&v57[176] = *&v55[176];
      *&v57[64] = *&v55[64];
      *&v57[80] = *&v55[80];
      *&v57[96] = *&v55[96];
      *&v57[112] = *&v55[112];
      *v57 = *v55;
      *&v57[16] = *&v55[16];
      *&v57[32] = *&v55[32];
      *&v57[48] = *&v55[48];
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v14);
    ++v17;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  type metadata accessor for Column(0);
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

double sub_188E67E20(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 2;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

uint64_t _UIRectEdgeFromDirectionalRectEdge(uint64_t a1, int a2)
{
  v2 = 2;
  if (a2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 2;
  }

  if (!a2)
  {
    v2 = 8;
  }

  return v3 & (a1 << 62 >> 63) | a1 & 5 | v2 & (a1 << 60 >> 63);
}

uint64_t sub_188E67F54(uint64_t a1)
{
  if (*(a1 + 224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_188E67F70(uint64_t a1)
{
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 224) = 1;
  return result;
}

double sub_188E67FD4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 2;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  return result;
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_188E68054(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 249))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_188E680A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 249) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 249) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_188E68180(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 216))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E681A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 216) = v3;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_188E6822C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_188E682AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_188E682F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188E68358(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 160))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_188E683AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_188E68464(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_188E684AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_188E68530()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901B9F8(&type metadata for GlassUserInterfaceStyleTrait, sub_188EB2D0C);
  os_unfair_lock_unlock(v1[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860);
  v2 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v3 = [v0 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_188E6867C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_18A4A56B8();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v5 = type metadata accessor for MaterialBackdropContext();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags] = 0;
  v7 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  v4(&v6[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy], 1, 1, v3);
  swift_beginAccess();
  sub_188E69B8C(v2, &v6[v7]);
  swift_endAccess();
  v11.receiver = v6;
  v11.super_class = v5;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  result = sub_188A3F5FC(v2, &qword_1EA935CD0);
  qword_1EA995060 = v8;
  return result;
}

id sub_188E687F4@<X0>(void *a1@<X8>)
{
  if (qword_1ED490180 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EA995060;
  *a1 = qword_1EA995060;

  return v2;
}

uint64_t *sub_188E688E0@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_188E68934()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0);
  __swift_allocate_value_buffer(v0, qword_1EA994F18);
  v1 = __swift_project_value_buffer(v0, qword_1EA994F18);
  v2 = sub_18A4A30C8();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

id sub_188E689D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_188E69938(a1);
  *a2 = result;
  return result;
}

uint64_t sub_188E689FC@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
    v5 = sub_18A4A30C8();
    v6 = *(v5 - 8);
    (*(v6 + 16))(a2, &v3[v4], v5);
    (*(v6 + 56))(a2, 0, 1, v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v7, 1, v8);
}

uint64_t sub_188E68B30@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED48FC48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0);
  v3 = __swift_project_value_buffer(v2, qword_1EA994F18);
  return sub_188A3F29C(v3, a1, &unk_1EA9334A0);
}

uint64_t sub_188E68D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_188A3F29C(a1, &v10 - v7, &unk_1EA9334A0);
  (*(a3 + 208))(v8, &type metadata for GlassPocketContainerTrait, &type metadata for GlassPocketContainerTrait, &off_1EE43A6C0, a2, a3);
  return sub_188A3F5FC(a1, &unk_1EA9334A0);
}

uint64_t sub_188E68E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188E69BFC(&unk_1ED4910B0, type metadata accessor for UIUserInterfaceStyle);
  return v5(&v8, &type metadata for GlassUserInterfaceStyleTrait, &type metadata for GlassUserInterfaceStyleTrait, &off_1EE439CE8, v6, a2, a3);
}

BOOL sub_188E68F78(_BYTE *a1, unsigned __int8 *a2)
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

unsigned __int8 *sub_188E68FA8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_188E68FD4@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_188E690B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_1891FB60C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_188E690F0(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_18A4A56B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934850);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  sub_188A3F29C(a1, v33, &qword_1EA934050);
  if (!v34)
  {
    v23 = &qword_1EA934050;
    v24 = v33;
LABEL_8:
    sub_188A3F5FC(v24, v23);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  v31 = v5;
  v17 = v32;
  if (v32[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags] != *(v2 + OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags))
  {

    goto LABEL_10;
  }

  v18 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  sub_188A3F29C(v17 + v18, v16, &qword_1EA935CD0);
  v19 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  v20 = *(v8 + 48);
  sub_188A3F29C(v16, v10, &qword_1EA935CD0);
  v30 = v20;
  sub_188A3F29C(v2 + v19, &v10[v20], &qword_1EA935CD0);
  v21 = *(v31 + 48);
  if (v21(v10, 1, v4) != 1)
  {
    sub_188A3F29C(v10, v13, &qword_1EA935CD0);
    v26 = v30;
    if (v21(&v10[v30], 1, v4) != 1)
    {
      v27 = v31;
      (*(v31 + 32))(v7, &v10[v26], v4);
      sub_188E69BFC(&qword_1EA930AA0, MEMORY[0x1E697FC78]);
      v22 = sub_18A4A7248();

      v28 = *(v27 + 8);
      v28(v7, v4);
      sub_188A3F5FC(v16, &qword_1EA935CD0);
      v28(v13, v4);
      sub_188A3F5FC(v10, &qword_1EA935CD0);
      return v22 & 1;
    }

    sub_188A3F5FC(v16, &qword_1EA935CD0);
    (*(v31 + 8))(v13, v4);
    goto LABEL_14;
  }

  sub_188A3F5FC(v16, &qword_1EA935CD0);
  if (v21(&v10[v30], 1, v4) != 1)
  {
LABEL_14:
    v23 = &unk_1EA934850;
    v24 = v10;
    goto LABEL_8;
  }

  sub_188A3F5FC(v10, &qword_1EA935CD0);
  v22 = 1;
  return v22 & 1;
}

uint64_t type metadata accessor for MaterialBackdropContext()
{
  result = qword_1EA934800;
  if (!qword_1EA934800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_188E696D0()
{
  sub_188E69770();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_188E69770()
{
  if (!qword_1ED490240)
  {
    sub_18A4A56B8();
    v0 = sub_18A4A7D38();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED490240);
    }
  }
}

unint64_t sub_188E697DC()
{
  result = qword_1EA934818;
  if (!qword_1EA934818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934818);
  }

  return result;
}

unint64_t sub_188E69834()
{
  result = qword_1EA934820;
  if (!qword_1EA934820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934820);
  }

  return result;
}

unint64_t sub_188E6988C()
{
  result = qword_1EA934828;
  if (!qword_1EA934828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934828);
  }

  return result;
}

unint64_t sub_188E698E4()
{
  result = qword_1EA934830;
  if (!qword_1EA934830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934830);
  }

  return result;
}

id sub_188E69938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  sub_188A3F29C(a1, &v19 - v3, &unk_1EA9334A0);
  v5 = sub_18A4A30C8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  result = 0;
  if (v7 != 1)
  {
    v9 = *(v6 + 64);
    v10 = MEMORY[0x1EEE9AC00](0);
    v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = (*(v6 + 32))(v11, v4, v5, v10);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = *(v6 + 16);
    v14(v11, v11, v5, v13);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934840);
    v16 = objc_allocWithZone(v15);
    (v14)(v16 + *((*MEMORY[0x1E69E7D40] & *v16) + 0x60), v11, v5);
    v19.receiver = v16;
    v19.super_class = v15;
    v17 = objc_msgSendSuper2(&v19, sel_init);
    v18 = *(v6 + 8);
    v18(v11, v5);
    v18(v11, v5);
    return v17;
  }

  return result;
}

uint64_t sub_188E69B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_188E69BFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188E69C9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_188E69DEC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
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

uint64_t sub_188E6A004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(_s15InstantlyStableVMa() + 36);

  return v9(v7, a2, a3);
}

uint64_t static UICornerRadius.containerConcentric(minimum:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  *a3 = v3;
  *(a3 + 8) = 1;
  return result;
}

double UICornerRadius.init(integerLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = a1;
  *a2 = a1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_188E6A11C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x18CFE37E0](a3 & 1);
  return MEMORY[0x18CFE3810](v3);
}

uint64_t sub_188E6A154(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) != 0 && v2 == v3)
    {
      return 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_188E6A1A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A8888();
  sub_188E6A11C(v4, v1, v2);
  return sub_18A4A88E8();
}

uint64_t sub_188E6A204()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A8888();
  sub_188E6A11C(v4, v1, v2);
  return sub_18A4A88E8();
}

uint64_t UICornerRadius.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A80E8();

  v3 = sub_188E6B000(v1, v2);
  MEMORY[0x18CFE22D0](v3);

  return 0x72656E726F434955;
}

{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68C720);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0x20656C797473203BLL, 0xEA0000000000203DLL);
  v1 = sub_188E6B000(*(v0 + OBJC_IVAR___UICornerRadius_impl), *(v0 + OBJC_IVAR___UICornerRadius_impl + 8));
  MEMORY[0x18CFE22D0](v1);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

uint64_t static UICornerRadius.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*a1 != *a2)
    {
      v2 = 0;
    }

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t UICornerRadius.hash(into:)()
{
  if ((*v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  MEMORY[0x18CFE37E0](*(v0 + 8));
  return MEMORY[0x18CFE3810](v1);
}

uint64_t UICornerRadius.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A8888();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  MEMORY[0x18CFE37E0](v2);
  MEMORY[0x18CFE3810](v1);
  return sub_18A4A88E8();
}

uint64_t sub_188E6A3D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*a1 != *a2)
    {
      v2 = 0;
    }

    if (v2 == 1)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v2) = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_188E6A40C()
{
  sub_18A4A8888();
  UICornerRadius.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_188E6A464()
{
  sub_18A4A8888();
  UICornerRadius.hash(into:)();
  return sub_18A4A88E8();
}

double sub_188E6A4B4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_188E6A4C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A80E8();

  v3 = sub_188E6B000(v1, v2);
  MEMORY[0x18CFE22D0](v3);

  return 0x72656E726F434955;
}

id sub_188E6A5AC()
{
  v0 = [swift_getObjCClassFromMetadata() containerConcentricRadiusWithMinimum_];

  return v0;
}

uint64_t sub_188E6A624(char a1, double a2)
{
  v4 = [objc_allocWithZone(UICornerRadius) init];
  v5 = &v4[OBJC_IVAR___UICornerRadius_impl];
  *v5 = a2;
  *(v5 + 8) = a1;

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_188E6A79C(void *a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR___UICornerRadius_impl;
  *v4 = 0;
  *(v4 + 8) = 0;
  sub_188A34624(0, &qword_1ED48F7A0);
  v5 = sub_18A4A7C18();
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v6 = v5;
    sub_18A4A7278();
  }

  type metadata accessor for UICornerRadius(v7);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_188E6A958(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___UICornerRadius_impl);
  v4 = sub_18A4A7258();
  v5 = sub_18A4A7258();
  [a1 encodeObject:v4 forKey:v5];

  v6 = sub_18A4A7258();
  [a1 encodeDouble:v3 forKey:?];
}

uint64_t UICornerRadius.hash.getter()
{
  v1 = v0 + OBJC_IVAR___UICornerRadius_impl;
  v2 = *(v0 + OBJC_IVAR___UICornerRadius_impl);
  v3 = *(v1 + 8);
  sub_18A4A8888();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x18CFE37E0](v3);
  MEMORY[0x18CFE3810](v4);
  return sub_18A4A88E8();
}

BOOL UICornerRadius.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_188C85D28(a1, v11);
  if (!v12)
  {
    sub_188A553EC(v11);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR___UICornerRadius_impl);
  v4 = *(v1 + OBJC_IVAR___UICornerRadius_impl + 8);
  v5 = *&v10[OBJC_IVAR___UICornerRadius_impl];
  v6 = v10[OBJC_IVAR___UICornerRadius_impl + 8];

  if ((v4 & 1) == 0)
  {
    if (v3 == v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    return (v9 & 1) == 0;
  }

  if (v3 == v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return (v7 & 1) != 0;
}

unint64_t sub_188E6AEB4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a1 >> 62;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v8 = *a1;
LABEL_16:
      sub_188A79914(v8);
      result = sub_188A74020(v3);
      v10 = 0;
      v7 = 0x7FEFFFFFFFFFFFFFLL;
      goto LABEL_17;
    }

    if (v4 == 0xC000000000000000)
    {
      v8 = 0xC000000000000000;
      goto LABEL_16;
    }

    if (v4 != 0xC000000000000008)
    {
      v8 = 0xC000000000000010;
      goto LABEL_16;
    }

    if ((~v3 & 0xF000000000000007) != 0)
    {
      if (v3 >> 62 == 1)
      {
        v7 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        goto LABEL_20;
      }

      if (!(v3 >> 62))
      {
        v7 = *(v3 + 16);
LABEL_20:
        sub_188A79914(0xC000000000000008);
        result = sub_188A74020(v3);
        v10 = 1;
        goto LABEL_17;
      }
    }

    sub_188A79914(0xC000000000000008);
    result = sub_188A74020(v3);
    v7 = 0;
    v10 = 1;
    goto LABEL_17;
  }

  if (v5)
  {

    sub_188A79914(v4);
    sub_188A74020(v3);
    v7 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {

    sub_188A79914(v6);
    sub_188A74020(v3);
    v7 = *(v4 + 16);
  }

  result = sub_188A79914(v4);
  v10 = 0;
LABEL_17:
  *a2 = v7;
  *(a2 + 8) = v10;
  return result;
}

uint64_t sub_188E6B000(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_18A4A80E8();
    v2 = 0x800000018A68C790;
    v3 = 0xD000000000000023;
  }

  else
  {
    if (*&a1 == 1.79769313e308)
    {
      return 0x656C7573706163;
    }

    sub_18A4A80E8();
    v3 = 0x6172286465786966;
    v2 = 0xEE00203A73756964;
  }

  MEMORY[0x18CFE22D0](v3, v2);
  sub_18A4A7718();
  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_188E6B11C()
{
  result = qword_1EA934880;
  if (!qword_1EA934880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934880);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _UILatencyLightView.Duration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for _UILatencyLightView.Duration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_188E6B268()
{
  result = qword_1EA9348F8;
  if (!qword_1EA9348F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9348F8);
  }

  return result;
}

void (*UICollectionViewListCell.accessories.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = UICollectionViewListCell.accessories.getter();
  return sub_188E6B310;
}

void sub_188E6B310(uint64_t *a1, char a2)
{
  if (a2)
  {

    UICollectionViewListCell.accessories.setter(v2);
  }

  else
  {
    UICollectionViewListCell.accessories.setter(*a1);
  }
}

void UICellAccessory.DetailOptions.reservedLayoutWidth.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t UICellAccessory.DetailOptions.reservedLayoutWidth.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void *UICellAccessory.DetailOptions.tintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_188E6B5F4()
{
  result = [objc_allocWithZone(UICellAccessoryCheckmark) init];
  qword_1EA934900 = result;
  return result;
}

void UICellAccessory.DeleteOptions.reservedLayoutWidth.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t UICellAccessory.DeleteOptions.reservedLayoutWidth.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void *UICellAccessory.DeleteOptions.tintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *UICellAccessory.DeleteOptions.backgroundColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_188E6B894()
{
  result = [objc_allocWithZone(UICellAccessoryInsert) init];
  qword_1EA92ED88 = result;
  return result;
}

void UICellAccessory.ReorderOptions.reservedLayoutWidth.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t UICellAccessory.ReorderOptions.reservedLayoutWidth.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void *UICellAccessory.ReorderOptions.tintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t (*UICellAccessory.OutlineDisclosureOptions._customImage.modify(void *a1))()
{
  v2 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return sub_188E6F100;
}

void sub_188E6BC90()
{
  v0 = objc_allocWithZone(UIMenu);
  v1 = sub_18A4A7258();
  sub_188A34624(0, &qword_1ED48FC30);
  v2 = sub_18A4A7518();
  v3 = [v0 initWithTitle:v1 image:0 imageName:0 identifier:0 options:0 children:v2];

  v4 = v3;
  [v4 setSubtitle_];

  [v4 setPreferredElementSize_];
  v5 = [objc_allocWithZone(UICellAccessoryPopUpMenu) initWithMenu_];

  qword_1EA934908 = v5;
}

id static UICellAccessory.popUpMenu(_:displayed:options:selectedElementDidChangeHandler:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = a3[16];
  v13 = *(a3 + 3);
  v14 = a3[32];
  v15 = [objc_allocWithZone(UICellAccessoryPopUpMenu) initWithMenu_];
  if (a4)
  {
    v21 = a4;
    v22 = a5;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_188BFF280;
    v20 = &block_descriptor_16;
    a4 = _Block_copy(&aBlock);
  }

  [v15 setSelectedElementDidChangeHandler_];
  _Block_release(a4);
  LOBYTE(aBlock) = v10;
  v18 = v11;
  LOBYTE(v19) = v12;
  v20 = v13;
  LOBYTE(v21) = v14;
  v23 = v9;
  result = sub_188CDA188(&aBlock, &v23);
  *a6 = 9;
  a6[1] = v15;
  return result;
}

void UICellAccessory.LabelOptions.reservedLayoutWidth.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t UICellAccessory.LabelOptions.reservedLayoutWidth.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void *UICellAccessory.LabelOptions.tintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *UICellAccessory.LabelOptions.backgroundColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t (*UICellAccessory.LabelOptions.backgroundColor.modify(void *a1))()
{
  v2 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return sub_188E6C0A0;
}

void sub_188E6C0A4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *(v2 + 32) = v4;
  }

  else
  {

    *(v2 + 32) = v4;
  }
}

uint64_t (*static UICellAccessory.Placement.position(before:)(uint64_t a1))(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_188CF9DE4(v1);
  v4 = v2;
  return sub_188E6D194;
}

uint64_t sub_188E6C244(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      if (v6 > 4)
      {
        if (v6 <= 6)
        {
          if (v6 == 5)
          {
            if (a2 == 5)
            {
              return v4;
            }
          }

          else if (a2 == 6)
          {
            return v4;
          }

          goto LABEL_4;
        }

        switch(v6)
        {
          case 7:
            if (a2 == 7)
            {
              return v4;
            }

            goto LABEL_4;
          case 8:
            if (a2 == 8)
            {
              return v4;
            }

            goto LABEL_4;
          case 9:
            if (a2 == 9)
            {
              return v4;
            }

            goto LABEL_4;
        }
      }

      else
      {
        if (v6 > 1)
        {
          if (v6 == 2)
          {
            if (a2 == 2)
            {
              return v4;
            }
          }

          else if (v6 == 3)
          {
            if (a2 == 3)
            {
              return v4;
            }
          }

          else if (a2 == 4)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (!v6)
        {
          if (!a2)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (v6 == 1)
        {
          if (a2 == 1)
          {
            return v4;
          }

          goto LABEL_4;
        }
      }

      if (a2 >= 0xA)
      {
        sub_188A34624(0, &qword_1ED490230);
        sub_188CF9DE4(v6);
        v8 = v7;
        sub_188CF9DE4(v6);
        sub_188CF9DE4(a2);
        v9 = sub_18A4A7C88();
        sub_188E6F008(v6);
        sub_188E6F008(v6);

        sub_188E6F008(a2);
        if (v9)
        {
          return v4;
        }
      }

LABEL_4:
      ++v4;
      v5 += 2;
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t (*static UICellAccessory.Placement.position(after:)(uint64_t a1))(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_188CF9DE4(v1);
  v4 = v2;
  return sub_188E6E8B8;
}

uint64_t sub_188E6C478(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 16 * v2 + 24);
    v5 = *(a1 + 16);
    while (1)
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      if (v6 > 4)
      {
        if (v6 <= 6)
        {
          if (v6 == 5)
          {
            if (a2 == 5)
            {
              return v5;
            }
          }

          else if (a2 == 6)
          {
            return v5;
          }
        }

        else
        {
          switch(v6)
          {
            case 7:
              if (a2 == 7)
              {
                return v5;
              }

              break;
            case 8:
              if (a2 == 8)
              {
                return v5;
              }

              break;
            case 9:
              if (a2 == 9)
              {
                return v5;
              }

              break;
            default:
              goto LABEL_34;
          }
        }
      }

      else if (v6 <= 1)
      {
        if (v6)
        {
          if (v6 != 1)
          {
LABEL_34:
            if (a2 >= 0xA)
            {
              sub_188A34624(0, &qword_1ED490230);
              sub_188CF9DE4(v6);
              v8 = v7;
              sub_188CF9DE4(v6);
              sub_188CF9DE4(a2);
              v9 = sub_18A4A7C88();
              sub_188E6F008(v6);
              sub_188E6F008(v6);

              sub_188E6F008(a2);
              if (v9)
              {
                return v5;
              }
            }

            goto LABEL_4;
          }

          if (a2 == 1)
          {
            return v5;
          }
        }

        else if (!a2)
        {
          return v5;
        }
      }

      else if (v6 == 2)
      {
        if (a2 == 2)
        {
          return v5;
        }
      }

      else if (v6 == 3)
      {
        if (a2 == 3)
        {
          return v5;
        }
      }

      else if (a2 == 4)
      {
        return v5;
      }

LABEL_4:
      v4 -= 2;
      if (!--v5)
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t UICellAccessory.CustomViewConfiguration.placement.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  return sub_188E6E8C0();
}

void UICellAccessory.CustomViewConfiguration.reservedLayoutWidth.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t UICellAccessory.CustomViewConfiguration.reservedLayoutWidth.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

void *UICellAccessory.CustomViewConfiguration.tintColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, unsigned __int8 a6@<W5>, uint64_t a7@<X8>)
{
  v9 = a3;
  v12 = a3;
  v13 = *a2;
  v26 = a2[2];
  v27 = a2[1];
  v14 = *a4;
  v15 = *(a4 + 8);
  v16 = *(a4 + 9);
  v17 = [objc_allocWithZone(UICellAccessoryCustomView) initWithCustomView:a1 placement:*a2 >> 63];
  v18 = v17;
  if (v12 == 2)
  {
    v9 = [v17 isHidden];
  }

  if (v16)
  {
    [v18 reservedLayoutWidth];
    if (v19 == 0.0)
    {
      v15 = 1;
      v14 = 0.0;
    }

    else
    {
      if (v19 == -1.79769313e308)
      {
        v14 = COERCE_DOUBLE(1);
      }

      else
      {
        v14 = v19;
      }

      v15 = v19 == -1.79769313e308;
    }
  }

  v28 = v15 & 1;
  if (a5)
  {
    v20 = a5;
    if (a6 == 2)
    {
LABEL_12:
      v21 = a5;
      a6 = [v18 maintainsFixedSize];
      goto LABEL_15;
    }
  }

  else
  {
    v20 = [v18 tintColor];
    if (a6 == 2)
    {
      goto LABEL_12;
    }
  }

  v21 = a5;
LABEL_15:
  v22 = v9 & 1;
  v23 = a6 & 1;
  v24 = [v18 _monochromaticTreatment];

  v25 = v24 == 0;
  if (v24 == 1)
  {
    v25 = 2;
  }

  *a7 = a1;
  *(a7 + 8) = v13;
  *(a7 + 16) = v27;
  *(a7 + 24) = v26;
  *(a7 + 32) = v22;
  *(a7 + 40) = v14;
  *(a7 + 48) = v28;
  *(a7 + 56) = v20;
  *(a7 + 64) = v23;
  *(a7 + 65) = v25;
}

id static UICellAccessory.customView(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v11 = *(a1 + 16);
  v12 = v5;
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  v6 = objc_allocWithZone(UICellAccessoryCustomView);
  v7 = v3;
  v8 = [v6 initWithCustomView:v7 placement:v4 >> 63];
  v10[0] = v7;
  v10[1] = v4;
  result = sub_188E6CA2C(v10);
  *a2 = v7;
  a2[1] = v8;
  return result;
}

id sub_188E6CA2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v14 = *(a1 + 65);
  [v1 setDisplayedState_];
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v3;
  aBlock[4] = sub_188E6F000;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188E6CD70;
  aBlock[3] = &block_descriptor_131;
  v9 = _Block_copy(aBlock);
  sub_188E6E8C0();

  [v1 setPosition_];
  _Block_release(v9);
  [v1 setTintColor_];
  [v1 setMaintainsFixedSize_];
  [v1 setHidden_];
  v10 = v5;
  v11 = -1.79769313e308;
  if (v5 == 0.0)
  {
    v11 = 0.0;
  }

  if (v13)
  {
    v10 = v11;
  }

  [v1 setReservedLayoutWidth_];
  return [v1 _setMonochromaticTreatment_];
}

uint64_t UICellAccessory.AccessoryType.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  if (v1 <= 4)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v2 = 2;
      }

      else if (v1 == 3)
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }

      goto LABEL_22;
    }

    if (!v1)
    {
      v2 = 0;
      goto LABEL_22;
    }

    if (v1 == 1)
    {
      v2 = 1;
      goto LABEL_22;
    }

LABEL_24:
    MEMORY[0x18CFE37E0](8);
    sub_18A4A7C98();
    return sub_18A4A88E8();
  }

  if (v1 <= 6)
  {
    if (v1 == 5)
    {
      v2 = 5;
    }

    else
    {
      v2 = 6;
    }

    goto LABEL_22;
  }

  if (v1 == 7)
  {
    v2 = 7;
    goto LABEL_22;
  }

  if (v1 == 8)
  {
    v2 = 9;
    goto LABEL_22;
  }

  if (v1 != 9)
  {
    goto LABEL_24;
  }

  v2 = 10;
LABEL_22:
  MEMORY[0x18CFE37E0](v2);
  return sub_18A4A88E8();
}

uint64_t sub_188E6CD20()
{
  sub_18A4A8888();
  UICellAccessory.AccessoryType.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_188E6CD70(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_188A34624(0, &qword_1ED48BEB8);
  v2 = sub_18A4A7548();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_188E6CDF0(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_37:
      v14 = (a2)(v5);

      return v14;
    }

    v17 = MEMORY[0x1E69E7CC0];
    sub_188CFB090(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v16 = a2;
    v6 = 0;
    v5 = v17;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_188E49A80(v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v10 = 0;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v10 = 8;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v10 = 2;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v10 = 3;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v10 = 4;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v10 = 5;
                }

                else
                {
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v10 = 6;
                  }

                  else
                  {
                    objc_opt_self();
                    if (swift_dynamicCastObjCClass())
                    {
                      v10 = 7;
                    }

                    else
                    {
                      objc_opt_self();
                      v11 = swift_dynamicCastObjCClass();
                      if (v11)
                      {
                        v10 = [v11 customView];
                      }

                      else
                      {
                        objc_opt_self();
                        if (swift_dynamicCastObjCClass())
                        {
                          v10 = 1;
                        }

                        else
                        {
                          objc_opt_self();
                          if (!swift_dynamicCastObjCClass())
                          {
                            goto LABEL_42;
                          }

                          v10 = 9;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      a2 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (a2 >= v12 >> 1)
      {
        sub_188CFB090((v12 > 1), a2 + 1, 1);
      }

      *(v17 + 16) = a2 + 1;
      v13 = v17 + 16 * a2;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      ++v6;
      if (v7 == i)
      {
        a2 = v16;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  __break(1u);
LABEL_42:
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

char *sub_188E6D154(char *a1, int64_t a2, char a3)
{
  result = sub_188E6D500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_188E6D174(void *a1, int64_t a2, char a3)
{
  result = sub_188E6D60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_188E6D19C(void *a1, int64_t a2, char a3)
{
  result = sub_188E6DFEC(a1, a2, a3, *v3, &qword_1EA934440, &unk_18A6521F0, &qword_1EA934448);
  *v3 = result;
  return result;
}

char *sub_188E6D1DC(char *a1, int64_t a2, char a3)
{
  result = sub_188E6D854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188E6D1FC(char *a1, int64_t a2, char a3)
{
  result = sub_188E6D958(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188E6D21C(char *a1, int64_t a2, char a3)
{
  result = sub_188E6DA74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188E6D23C(char *a1, int64_t a2, char a3)
{
  result = sub_188E6DB94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_188E6D25C(void *a1, int64_t a2, char a3)
{
  result = sub_188E6DCA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188E6D27C(char *a1, int64_t a2, char a3)
{
  result = sub_188E6DDD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_188E6D29C(size_t a1, int64_t a2, char a3)
{
  result = sub_188E6E4CC(a1, a2, a3, *v3, &qword_1EA934418, &unk_18A64D4C0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

size_t sub_188E6D2E0(size_t a1, int64_t a2, char a3)
{
  result = sub_188E6E4CC(a1, a2, a3, *v3, &unk_1EA934420, &unk_18A64BF40, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
  *v3 = result;
  return result;
}

char *sub_188E6D324(char *a1, int64_t a2, char a3)
{
  result = sub_188E6DEE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_188E6D344(void *a1, int64_t a2, char a3)
{
  result = sub_188E6DFEC(a1, a2, a3, *v3, &qword_1EA934968, &unk_18A64D478, &qword_1EA934970);
  *v3 = result;
  return result;
}

void *sub_188E6D384(void *a1, int64_t a2, char a3)
{
  result = sub_188E6E134(a1, a2, a3, *v3, &qword_1EA934990, &unk_18A64D4B8, type metadata accessor for MarkerFormat);
  *v3 = result;
  return result;
}

void *sub_188E6D3C8(void *a1, int64_t a2, char a3)
{
  result = sub_188E6E134(a1, a2, a3, *v3, &qword_1EA934378, &unk_18A64D4B0, type metadata accessor for TextList);
  *v3 = result;
  return result;
}

char *sub_188E6D40C(char *a1, int64_t a2, char a3)
{
  result = sub_188E6E264(a1, a2, a3, *v3, &qword_1EA934988);
  *v3 = result;
  return result;
}

char *sub_188E6D444(char *a1, int64_t a2, char a3)
{
  result = sub_188E6E264(a1, a2, a3, *v3, &qword_1EA934980);
  *v3 = result;
  return result;
}

size_t sub_188E6D47C(size_t a1, int64_t a2, char a3)
{
  result = sub_188E6E4CC(a1, a2, a3, *v3, &qword_1EA934930, &unk_18A64D3D0, MEMORY[0x1E69DBD08]);
  *v3 = result;
  return result;
}

char *sub_188E6D4C0(char *a1, int64_t a2, char a3)
{
  result = sub_188E6E6A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188E6D4E0(char *a1, int64_t a2, char a3)
{
  result = sub_188E6E7B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188E6D500(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939660);
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

void *sub_188E6D60C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934938);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934940);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E6D750(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9347E0);
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

char *sub_188E6D854(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934130);
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

char *sub_188E6D958(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934128);
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
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_188E6DA74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934950);
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

char *sub_188E6DB94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9342B0);
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

void *sub_188E6DCA0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349A0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E6DDD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934998);
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

char *sub_188E6DEE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934290);
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

void *sub_188E6DFEC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

void *sub_188E6E134(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, void (*a7)(void))
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
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_188E6E264(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_188E6E398(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934978);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_188E6E4CC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

char *sub_188E6E6A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934310);
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

char *sub_188E6E7B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934960);
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

unint64_t sub_188E6E8CC()
{
  result = qword_1EA934910;
  if (!qword_1EA934910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934910);
  }

  return result;
}

unint64_t sub_188E6E924()
{
  result = qword_1EA934918;
  if (!qword_1EA934918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934918);
  }

  return result;
}

unint64_t sub_188E6E97C()
{
  result = qword_1EA934920;
  if (!qword_1EA934920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934920);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UICellAccessory.LayoutDimension(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E6E9F0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E6EA0C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_188E6EA88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
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

uint64_t sub_188E6EAE4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_188E6EB3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_188E6EB98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_188E6EBF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_188E6EC54(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_188E6ECD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188E6ED20(uint64_t result, int a2, int a3)
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
      *(result + 50) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188E6ED7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_188E6EDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 4 * -a2;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_188E6EE6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_188E6EEB4(uint64_t result, int a2, int a3)
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
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188E6EF18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 8))
  {
    return (*a1 + 2147483638);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 >= 0xB)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E6EF70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

void *sub_188E6EFC0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_188E6F008(id a1)
{
  if (a1 >= 0xA)
  {
  }
}

id UISplitViewController._intelligenceCollectSubelements(in:using:transformToRoot:)(uint64_t a1, void (*a2)(void *, double, double, double, double), uint64_t a3, double a4, double a5, double a6, double a7)
{
  v141 = a3;
  v13 = sub_18A4A3BA8();
  v136 = *(v13 - 8);
  v137 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v135 = v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18A4A3CC8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v138 = v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18A4A3908();
  v129 = *(v18 - 8);
  v130 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v128 = v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v127 = v126 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v126 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v126 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v126 - v32;
  v34 = sub_18A4A3938();
  v133 = *(v34 - 8);
  v134 = v34;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v16;
  v38 = *(v16 + 56);
  v38(v33, 1, 1, v15, v35);
  (v38)(v30, 1, 1, v15);
  (v38)(v27, 1, 1, v15);
  v132 = v15;
  (v38)(v24, 1, 1, v15);
  v39 = a1;
  v40 = a2;
  v140 = v37;
  v126[1] = v33;
  v41 = v139;
  sub_18A4A3918();
  v42 = [v41 isCollapsed];
  v43 = &selRef_verticalMenuCornerRadius;
  if (v42)
  {
    goto LABEL_32;
  }

  v44 = [(UISplitViewController *)v41 _topLevelViewControllerForColumn:?];
  v45 = &selRef_verticalMenuCornerRadius;
  if (v44)
  {
    v46 = v44;
    v47 = [v44 viewIfLoaded];
    if (v47)
    {
      v48 = v47;
      result = [v41 view];
      if (!result)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v50 = result;
      v51 = [(UIView *)result _containsView:v48];

      if (v51)
      {
        MEMORY[0x1EEE9AC00](v52);
        v126[-10] = v41;
        v126[-9] = v48;
        *&v126[-8] = a4;
        *&v126[-7] = a5;
        *&v126[-6] = a6;
        *&v126[-5] = a7;
        v126[-4] = v39;
        v126[-3] = a2;
        v126[-2] = v141;
        sub_18A4A33C8();
        sub_18A4A38E8();
        v54 = v129;
        v53 = v130;
        v55 = v128;
        (*(v129 + 104))(v128, *MEMORY[0x1E69DBAD8], v130);
        v56 = v39;
        v57 = sub_18A4A3928();
        v58 = v127;
        sub_188E70AC4(v127, v55);
        v59 = v54;
        v45 = &selRef_verticalMenuCornerRadius;
        v60 = v53;
        v43 = &selRef_verticalMenuCornerRadius;
        (*(v59 + 8))(v58, v60);
        v57(v142, 0);
        v39 = v56;
        v40 = a2;
      }
    }

    else
    {
      v48 = v46;
    }
  }

  v61 = [(UISplitViewController *)v41 _topLevelViewControllerForColumn:?];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 v45[105]];
    if (v63)
    {
      v64 = v63;
      result = [v41 v43[41]];
      if (!result)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v65 = result;
      v66 = [(UIView *)result _containsView:v64];

      if (v66)
      {
        MEMORY[0x1EEE9AC00](v67);
        v126[-10] = v41;
        v126[-9] = v64;
        *&v126[-8] = a4;
        *&v126[-7] = a5;
        *&v126[-6] = a6;
        *&v126[-5] = a7;
        v126[-4] = v39;
        v126[-3] = v40;
        v126[-2] = v141;
        sub_18A4A33C8();
        sub_18A4A38D8();
        v68 = v129;
        v69 = v128;
        v70 = v43;
        v71 = v130;
        (*(v129 + 104))(v128, *MEMORY[0x1E69DBAD0], v130);
        v126[0] = v40;
        v72 = v39;
        v73 = sub_18A4A3928();
        v74 = v127;
        sub_188E70AC4(v127, v69);
        v75 = v68;
        v45 = &selRef_verticalMenuCornerRadius;
        v76 = v71;
        v43 = v70;
        (*(v75 + 8))(v74, v76);
        v73(v142, 0);
        v39 = v72;
        v40 = v126[0];
      }
    }

    else
    {
      v64 = v62;
    }
  }

  v77 = [(UISplitViewController *)v41 _topLevelViewControllerForColumn:?];
  if (v77)
  {
    v78 = v77;
    v79 = [v77 v45[105]];
    if (v79)
    {
      v80 = v79;
      result = [v41 v43[41]];
      if (!result)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v81 = result;
      v82 = [(UIView *)result _containsView:v80];

      if (v82)
      {
        MEMORY[0x1EEE9AC00](v83);
        v126[-10] = v41;
        v126[-9] = v80;
        *&v126[-8] = a4;
        *&v126[-7] = a5;
        *&v126[-6] = a6;
        *&v126[-5] = a7;
        v126[-4] = v39;
        v126[-3] = v40;
        v126[-2] = v141;
        sub_18A4A33C8();
        sub_18A4A38C8();
        v84 = v129;
        v85 = v128;
        v86 = v43;
        v87 = v130;
        (*(v129 + 104))(v128, *MEMORY[0x1E69DBAC8], v130);
        v126[0] = v40;
        v88 = v39;
        v89 = sub_18A4A3928();
        v90 = v127;
        sub_188E70AC4(v127, v85);
        v91 = v84;
        v45 = &selRef_verticalMenuCornerRadius;
        v92 = v87;
        v43 = v86;
        (*(v91 + 8))(v90, v92);
        v89(v142, 0);
        v39 = v88;
        v40 = v126[0];
      }
    }

    else
    {
      v80 = v78;
    }
  }

  if (qword_1EA930920 != -1)
  {
    swift_once();
  }

  v42 = [(UISplitViewController *)v41 _topLevelViewControllerForColumn:?];
  if (!v42)
  {
LABEL_32:
    MEMORY[0x1EEE9AC00](v42);
    v126[-8] = v41;
    *&v126[-7] = a4;
    *&v126[-6] = a5;
    *&v126[-5] = a6;
    *&v126[-4] = a7;
    v126[-3] = v39;
    v126[-2] = v40;
    v126[-1] = v141;
    sub_18A4A33D8();
    result = [v41 v43[41]];
    if (result)
    {
      v107 = result;
      result = [v41 v43[41]];
      if (result)
      {
        v108 = result;
        [result bounds];
        v110 = v109;
        v112 = v111;
        v114 = v113;
        v116 = v115;

        v40(v107, v110, v112, v114, v116);
        v118 = v133;
        v117 = v134;
        v119 = v135;
        v120 = v140;
        (*(v133 + 16))(v135, v140, v134);
        (*(v136 + 104))(v119, *MEMORY[0x1E69DBBB8], v137);
        v121 = v138;
        sub_18A4A3748();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150);
        v122 = v131;
        v123 = (*(v131 + 80) + 32) & ~*(v131 + 80);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_18A64BFB0;
        v125 = v132;
        (*(v122 + 16))(v124 + v123, v121, v132);
        sub_18A4A3438();

        (*(v122 + 8))(v121, v125);
        return (*(v118 + 8))(v120, v117);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  v93 = v42;
  v94 = [v42 v45[105]];
  if (!v94)
  {
    v95 = v93;
LABEL_31:

    goto LABEL_32;
  }

  v95 = v94;
  result = [v41 v43[41]];
  if (result)
  {
    v96 = result;
    v97 = [(UIView *)result _containsView:v95];

    if (v97)
    {
      MEMORY[0x1EEE9AC00](v98);
      v126[-10] = v41;
      v126[-9] = v95;
      *&v126[-8] = a4;
      *&v126[-7] = a5;
      *&v126[-6] = a6;
      *&v126[-5] = a7;
      v126[-4] = v39;
      v126[-3] = v40;
      v126[-2] = v141;
      sub_18A4A33C8();
      sub_18A4A38F8();
      v99 = v129;
      v100 = v128;
      v101 = v43;
      v102 = v130;
      (*(v129 + 104))(v128, *MEMORY[0x1E69DBAE0], v130);
      v126[0] = v40;
      v103 = v39;
      v104 = sub_18A4A3928();
      v105 = v127;
      sub_188E70AC4(v127, v100);
      v106 = v102;
      v43 = v101;
      (*(v99 + 8))(v105, v106);
      v104(v142, 0);
      v39 = v103;
      v40 = v126[0];
    }

    goto LABEL_31;
  }

LABEL_40:
  __break(1u);
  return result;
}

id sub_188E6FDE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  result = [a1 view];
  if (result)
  {
    v18 = result;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v22[4] = sub_188DFA1F8;
    v22[5] = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_188DFA16C;
    v22[3] = &block_descriptor_6;
    v20 = _Block_copy(v22);

    [v18 _intelligenceCollectElementFor_in_using_transformToRoot_];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_188E6FF68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  result = [a1 view];
  if (result)
  {
    v18 = result;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v22[4] = sub_188DFA228;
    v22[5] = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_188DFA16C;
    v22[3] = &block_descriptor_12_0;
    v20 = _Block_copy(v22);

    [v18 _intelligenceCollectElementFor_in_using_transformToRoot_];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_188E700EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  result = [a1 view];
  if (result)
  {
    v18 = result;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v22[4] = sub_188DFA228;
    v22[5] = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_188DFA16C;
    v22[3] = &block_descriptor_19;
    v20 = _Block_copy(v22);

    [v18 _intelligenceCollectElementFor_in_using_transformToRoot_];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_188E70270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  result = [a1 view];
  if (result)
  {
    v18 = result;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v22[4] = sub_188DFA228;
    v22[5] = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_188DFA16C;
    v22[3] = &block_descriptor_26;
    v20 = _Block_copy(v22);

    [v18 _intelligenceCollectElementFor_in_using_transformToRoot_];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_188E703F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  result = [a1 view];
  if (result)
  {
    v16 = result;
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v20[4] = sub_188DFA228;
    v20[5] = v17;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_188DFA16C;
    v20[3] = &block_descriptor_33_0;
    v18 = _Block_copy(v20);

    [v16 _intelligenceCollectSubelementsIn_using_transformToRoot_];

    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_188E70648(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_18A4A7F88();

    if (v9)
    {

      type metadata accessor for PlatterItemView();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_18A4A7F68();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_188E72EFC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_188E764A4(v20 + 1, &qword_1EA934A00);
    }

    v18 = v8;
    sub_188E7706C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for PlatterItemView();
  v11 = sub_18A4A7C78();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_188E77194(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_18A4A7C88();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_188E70870(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = ~a4;
  v9 = *v4;
  sub_18A4A8888();
  sub_18A4A88A8();
  if (v8)
  {
    sub_188C18FD0(v27, a2, a3, a4);
  }

  v10 = sub_18A4A88E8();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *v25;
    sub_188C46860(a2, a3, a4);
    sub_188E77324(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v25 = v27[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v13 = ~v11;
  v14 = *(v9 + 48);
  while (1)
  {
    v15 = (v14 + 24 * v12);
    v16 = *(v15 + 16);
    if (v16 == 255)
    {
      if (a4 == 0xFF)
      {
        goto LABEL_32;
      }

      goto LABEL_6;
    }

    if (a4 == 0xFF)
    {
      goto LABEL_6;
    }

    v17 = *v15;
    if (*(v15 + 16) <= 2u)
    {
      if (*(v15 + 16))
      {
        if (v16 == 1)
        {
          if (a4 != 1)
          {
            goto LABEL_6;
          }
        }

        else if (a4 != 2)
        {
          goto LABEL_6;
        }

LABEL_30:
        if (v17 == a2)
        {
          goto LABEL_31;
        }

        goto LABEL_6;
      }

      if (!a4)
      {
        goto LABEL_21;
      }

      goto LABEL_6;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 != 4)
    {
      if (a4 != 5)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }

    if (a4 == 4)
    {
      goto LABEL_21;
    }

LABEL_6:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if (a4 != 3)
  {
    goto LABEL_6;
  }

LABEL_21:
  v18 = v17 == a2 && v15[1] == a3;
  if (!v18 && (sub_18A4A86C8() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_31:
  sub_188C46874(a2, a3, v16);
LABEL_32:
  v19 = *(v9 + 48) + 24 * v12;
  v20 = *v19;
  v21 = *(v19 + 8);
  *a1 = *v19;
  *(a1 + 8) = v21;
  v22 = *(v19 + 16);
  *(a1 + 16) = v22;
  sub_188C46860(v20, v21, v22);
  return 0;
}

uint64_t sub_188E70AC4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_18A4A3908();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_188E7EBE8(&qword_1EA934B00, MEMORY[0x1E69DBAE8]);
  v33 = a2;
  v11 = sub_18A4A7198();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_188E7EBE8(&qword_1EA934B08, MEMORY[0x1E69DBAE8]);
      v21 = sub_18A4A7248();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_188E77598(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_188E70E54(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *v4;
  sub_18A4A8888();
  sub_18A4A7348();
  v10 = 0.0;
  if (a4 != 0.0)
  {
    v10 = a4;
  }

  MEMORY[0x18CFE3810](*&v10);
  v11 = sub_18A4A88E8();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v9 + 48);
    while (1)
    {
      v16 = v15 + 24 * v13;
      v17 = *(v16 + 16);
      v18 = *v16 == a2 && *(v16 + 8) == a3;
      if (v18 || (sub_18A4A86C8()) && v17 == a4)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v21 = (*(v9 + 48) + 24 * v13);
    v22 = v21[1];
    v23 = v21[2];
    *a1 = *v21;
    a1[1] = v22;
    a1[2] = v23;

    return 0;
  }

  else
  {
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;

    sub_188E779F0(a2, a3, v13, isUniquelyReferenced_nonNull_native, a4);
    *v4 = v24;
    *a1 = a2;
    a1[1] = a3;
    *(a1 + 2) = a4;
    return 1;
  }
}

uint64_t sub_188E70FFC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_18A4A7F88();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0);
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_18A4A7F68();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_188E73320(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_188E74244();
    }

    sub_188E76FB4(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0);
  v10 = sub_18A4A7198();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_188E77BB4(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while ((sub_18A4A7248() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_188E71278(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_18A4A8888();
  MEMORY[0x18CFE3810](a2);
  v6 = sub_18A4A88E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_188E77D58(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_188E71370(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_18A4A29D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_188E7EBE8(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  v33 = a2;
  v11 = sub_18A4A7198();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_188E7EBE8(&qword_1EA930B00, MEMORY[0x1E69695A8]);
      v21 = sub_18A4A7248();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_188E77EA4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_188E71698(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a2);
  v6 = sub_18A4A88E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_188E7816C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_188E71794(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_18A4A7F88();

    if (v9)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_18A4A7F68();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_188E7352C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_188E764A4(v20 + 1, &qword_1EA934AC8);
    }

    v18 = v8;
    sub_188E7706C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);
  v11 = sub_18A4A7C78();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_188E782CC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_18A4A7C88();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_188E719F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_18A4A8888();
  sub_18A4A7348();
  v8 = sub_18A4A88E8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_18A4A86C8() & 1) != 0)
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

    sub_188E78470(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_188E71BC0(void *a1, void *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v6 = v5;
  v9 = *v5;
  sub_18A4A7288();
  sub_18A4A8888();
  sub_18A4A7348();
  v10 = sub_18A4A88E8();

  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = sub_18A4A7288();
      v16 = v15;
      if (v14 == sub_18A4A7288() && v16 == v17)
      {

        goto LABEL_12;
      }

      v19 = sub_18A4A86C8();

      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v9 + 48) + 8 * v12);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    v21 = a2;
    sub_188E785F0(v21, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v28;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_188E71DA4(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_18A4A8878();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_188E787FC(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_188E71E98(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a2);
  v6 = sub_18A4A88E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_188E78928(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_188E71FEC(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v9 = *v5;
  sub_18A4A8888();
  sub_18A4A7C98();
  v10 = sub_18A4A88E8();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (([*(*(*(v9 + 48) + 8 * v12) + 16) isEqual_] & 1) == 0)
    {
      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v9 + 48) + 8 * v12);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;

    sub_188E78A98(v15, v12, isUniquelyReferenced_nonNull_native, a3);
    *v5 = v18;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_188E72160(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = sub_18A4A7F88();

    if (v16)
    {

      sub_188A34624(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_18A4A7F68();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_188E73120(v14, result + 1, a5, a6, a3);
        v27 = *(v26 + 16);
        if (*(v26 + 24) <= v27)
        {
          sub_188E764A4(v27 + 1, a5);
        }

        v28 = v15;
        sub_188E7706C(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_188A34624(0, a3);
    v18 = sub_18A4A7C78();
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = sub_18A4A7C88();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_188E77860(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

uint64_t sub_188E723D4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_18A4A2B48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_188E7EBE8(&qword_1EA92F720, MEMORY[0x1E6969C28]);
  v33 = a2;
  v11 = sub_18A4A7198();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_188E7EBE8(&qword_1EA92F710, MEMORY[0x1E6969C28]);
      v21 = sub_18A4A7248();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_188E78C1C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_188E726B4(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v4 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v28 - v9;
  v30 = v2;
  v10 = *v2;
  sub_18A4A8888();
  v33 = *(a2 + 32);
  sub_18A4A7C98();
  v38 = 0;
  v39 = 0xE000000000000000;
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v34 = *a2;
  v35 = v12;
  v36 = v13;
  v37 = v14;
  type metadata accessor for CGRect(0);
  sub_18A4A82D8();
  sub_18A4A7348();

  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v31 = a2;
  sub_18A4A7348();
  v17 = sub_18A4A88E8();
  v18 = -1 << *(v10 + 32);
  v19 = v17 & ~v18;
  if (((*(v10 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
LABEL_11:
    v23 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v31;
    v26 = v29;
    sub_188E7EAB8(v31, v29, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    v40 = *v23;
    sub_188E78EE4(v26, v19, isUniquelyReferenced_nonNull_native);
    *v23 = v40;
    sub_188E7EB80(v25, v32, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    return 1;
  }

  v20 = ~v18;
  v21 = *(v5 + 72);
  while (1)
  {
    sub_188E7EAB8(*(v10 + 48) + v21 * v19, v7, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    v41.origin.x = v11;
    v41.origin.y = v12;
    v41.size.width = v13;
    v41.size.height = v14;
    if (!CGRectEqualToRect(*v7, v41) || ![v7[4] isEqualToTextRange_])
    {
      sub_188E7EB20(v7, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      goto LABEL_4;
    }

    if (v7[5] == v15 && v7[6] == v16)
    {
      break;
    }

    v22 = sub_18A4A86C8();
    sub_188E7EB20(v7, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_4:
    v19 = (v19 + 1) & v20;
    if (((*(v10 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_188E7EB20(v7, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
LABEL_13:
  sub_188E7EB20(v31, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
  sub_188E7EAB8(*(v10 + 48) + v21 * v19, v32, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
  return 0;
}

uint64_t sub_188E72A40(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v22 = &v22 - v9;
  v23 = v2;
  v10 = *v2;
  sub_18A4A8888();
  sub_18A4A29D8();
  sub_188E7EBE8(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  sub_18A4A71A8();
  v11 = sub_18A4A88E8();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    while (1)
    {
      sub_188E7EAB8(*(v10 + 48) + v15 * v13, v7, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      v16 = _s5UIKit16UITextEffectViewC0C2IDV2eeoiySbAE_AEtFZ_0();
      sub_188E7EB20(v7, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_188E7EB20(a2, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    sub_188E7EAB8(*(v10 + 48) + v15 * v13, v24, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    return 0;
  }

  else
  {
LABEL_5:
    v17 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v22;
    sub_188E7EAB8(a2, v22, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    v25 = *v17;
    sub_188E79284(v19, v13, isUniquelyReferenced_nonNull_native);
    v20 = v24;
    *v17 = v25;
    sub_188E7EB80(a2, v20, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    return 1;
  }
}

uint64_t sub_188E72CCC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_18A4A8878();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_188E79544(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_188E72DAC(uint64_t a1, void *a2)
{
  v5 = *v2;
  sub_18A4A8888();
  v6 = *a2;
  MEMORY[0x18CFE37E0](*a2);
  v7 = sub_18A4A88E8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_188E7DC94(*(v5 + 48) + 16 * v9, v15);
      v11 = v15[0];
      sub_188E7DD4C(v15);
      if (v11 == v6)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_188E7DD4C(a2);
    sub_188E7DC94(*(v5 + 48) + 16 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_188E7DC94(a2, v15);
    v14 = *v2;
    sub_188E79678(v15, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    sub_188E7DCF0(a2, a1);
    return 1;
  }
}

uint64_t sub_188E72EFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A00);
    v2 = sub_18A4A8078();
    v15 = v2;
    sub_18A4A7F18();
    if (sub_18A4A7FB8())
    {
      type metadata accessor for PlatterItemView();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_188E764A4(v9 + 1, &qword_1EA934A00);
        }

        v2 = v15;
        result = sub_18A4A7C78();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_18A4A7FB8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_188E73120(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_18A4A8078();
    v20 = v7;
    sub_18A4A7F18();
    if (sub_18A4A7FB8())
    {
      sub_188A34624(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_188E764A4(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_18A4A7C78();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_18A4A7FB8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v7;
}

uint64_t sub_188E73320(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF8);
    v2 = sub_18A4A8078();
    v14 = v2;
    sub_18A4A7F18();
    for (; sub_18A4A7FB8(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_188E74244();
        v2 = v14;
      }

      result = sub_18A4A7198();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v9 = 0;
        v10 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v10 && (v9 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v11 = v7 == v10;
          if (v7 == v10)
          {
            v7 = 0;
          }

          v9 |= v11;
          v12 = *(v4 + 8 * v7);
        }

        while (v12 == -1);
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v13;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_188E7352C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC8);
    v2 = sub_18A4A8078();
    v15 = v2;
    sub_18A4A7F18();
    for (; sub_18A4A7FB8(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_188E764A4(v9 + 1, &qword_1EA934AC8);
        v2 = v15;
      }

      result = sub_18A4A7C78();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_188E7375C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349C8);
    v2 = sub_18A4A8078();
    v14 = v2;
    sub_18A4A7F18();
    if (sub_18A4A7FB8())
    {
      type metadata accessor for InProcessAnimationManager();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_188E76D64();
        }

        v2 = v14;
        sub_18A4A8888();
        MEMORY[0x18CFE37E0]();
        result = sub_18A4A88E8();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_18A4A7FB8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_188E7395C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A08);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v31 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (1)
    {
      if (!v9)
      {
        v15 = v5;
        while (1)
        {
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v5 >= v10)
          {
            break;
          }

          v16 = v6[v5];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v9 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v30 = 1 << *(v2 + 32);
        if (v30 >= 64)
        {
          bzero(v6, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v30;
        }

        v1 = v0;
        *(v2 + 16) = 0;
        break;
      }

      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_18A4A8888();
      if (v20 == 255)
      {
        sub_18A4A88A8();
        goto LABEL_30;
      }

      sub_18A4A88A8();
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          v22 = 3;
          goto LABEL_26;
        }

        if (v20 == 4)
        {
          v22 = 4;
LABEL_26:
          MEMORY[0x18CFE37E0](v22);
          sub_18A4A7348();
          goto LABEL_30;
        }

        v21 = 5;
      }

      else
      {
        if (!v20)
        {
          v22 = 0;
          goto LABEL_26;
        }

        if (v20 == 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }
      }

      MEMORY[0x18CFE37E0](v21);
      MEMORY[0x18CFE37E0](v18);
LABEL_30:
      result = sub_18A4A88E8();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v31;
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_188E73C58()
{
  v1 = v0;
  v35 = sub_18A4A3908();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934B10);
  result = sub_18A4A8068();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_188E7EBE8(&qword_1EA934B00, MEMORY[0x1E69DBAE8]);
      result = sub_18A4A7198();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_188E73FB4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A18);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_18A4A8888();
      sub_18A4A7348();
      if (v20 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v20;
      }

      MEMORY[0x18CFE3810](*&v21);
      result = sub_18A4A88E8();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v2 + 32);
    if (v29 >= 64)
    {
      bzero((v2 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v29;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_188E74244()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF8);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0);
      result = sub_18A4A7198();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_188E744AC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AE0);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE3810](v16);
      result = sub_18A4A88E8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_188E746FC()
{
  v1 = v0;
  v35 = sub_18A4A29D8();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AD8);
  result = sub_18A4A8068();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_188E7EBE8(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      result = sub_18A4A7198();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_188E74A58()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A28);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v16);
      result = sub_18A4A88E8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_188E74CA8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349F0);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_18A4A8888();
      sub_18A4A7348();
      result = sub_18A4A88E8();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_188E74F08(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_18A4A8068();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_18A4A7288();
      sub_18A4A8888();
      sub_18A4A7348();
      v19 = sub_18A4A88E8();

      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v3 = v28;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_188E7517C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_18A4A8068();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v18);
      result = sub_18A4A88E8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_188E753C4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AA8);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_18A4A8878();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_188E755F8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AA0);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v16);
      result = sub_18A4A88E8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_188E75848(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_18A4A8068();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_18A4A8888();
      sub_18A4A7C98();
      result = sub_18A4A88E8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_188E75A90()
{
  v1 = v0;
  v35 = sub_18A4A2B48();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A68);
  result = sub_18A4A8068();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_188E7EBE8(&qword_1EA92F720, MEMORY[0x1E6969C28]);
      result = sub_18A4A7198();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_188E75DEC()
{
  v1 = v0;
  v2 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A60);
  result = sub_18A4A8068();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_188E7EB80(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      sub_18A4A8888();
      sub_18A4A7C98();
      v33 = 0;
      v34 = 0xE000000000000000;
      v20 = v4[1];
      v31 = *v4;
      v32 = v20;
      type metadata accessor for CGRect(0);
      sub_18A4A82D8();
      sub_18A4A7348();

      sub_18A4A7348();
      result = sub_18A4A88E8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_188E7EB80(v4, *(v7 + 48) + v15 * v19, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_188E76150()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A58);
  result = sub_18A4A8068();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_188E7EB80(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      sub_18A4A8888();
      sub_18A4A29D8();
      sub_188E7EBE8(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      sub_18A4A71A8();
      result = sub_18A4A88E8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_188E7EB80(v4, *(v7 + 48) + v15 * v20, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_188E764A4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_18A4A8068();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_18A4A7C78();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_188E766C4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A50);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_18A4A8878();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_188E768E8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349D8);
  result = sub_18A4A8068();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_188E7DCF0(*(v1 + 48) + 16 * (v12 | (v4 << 6)), v23);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v23[0]);
      result = sub_18A4A88E8();
      v15 = -1 << *(v3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v10 + 8 * v17);
          if (v21 != -1)
          {
            v11 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      result = sub_188E7DCF0(v23, *(v3 + 48) + 16 * v11);
      ++*(v3 + 16);
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v4 >= v9)
      {
        break;
      }

      v14 = v5[v4];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    v22 = 1 << *(v1 + 32);
    if (v22 >= 64)
    {
      bzero((v1 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v22;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_188E76B40()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349B8);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_18A4A8878();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_188E76D64()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349C8);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v16);
      result = sub_18A4A88E8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}