uint64_t sub_1BCA9B1DC(uint64_t a1, uint64_t a2)
{
  if (sub_1BC99EE9C())
  {
    v4 = type metadata accessor for WeatherConditionGradientManager.GradientCacheKey();
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1BCA9B230()
{
  sub_1BCE199D0();
  sub_1BCA9C53C(&qword_1EDA1BEE8, MEMORY[0x1E6984D30]);
  sub_1BCE1D190();
  type metadata accessor for WeatherConditionGradientManager.GradientCacheKey();
  return sub_1BCE1E120();
}

uint64_t sub_1BCA9B2C0()
{
  sub_1BCE1E100();
  sub_1BCE199D0();
  sub_1BCA9C53C(&qword_1EDA1BEE8, MEMORY[0x1E6984D30]);
  sub_1BCE1D190();
  type metadata accessor for WeatherConditionGradientManager.GradientCacheKey();
  sub_1BCE1E120();
  return sub_1BCE1E150();
}

uint64_t sub_1BCA9B368()
{
  sub_1BCE1E100();
  sub_1BCE199D0();
  sub_1BCA9C53C(&qword_1EDA1BEE8, MEMORY[0x1E6984D30]);
  sub_1BCE1D190();
  sub_1BCE1E120();
  return sub_1BCE1E150();
}

uint64_t WeatherConditionGradientManager.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t WeatherConditionGradientManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t sub_1BCA9B494(uint64_t a1)
{
  sub_1BCE1E100();
  sub_1BCE199D0();
  sub_1BCA9C53C(&qword_1EDA1BEE8, MEMORY[0x1E6984D30]);
  sub_1BCE1D190();
  type metadata accessor for WeatherConditionGradientManager.GradientCacheKey();
  sub_1BCE1E120();
  v2 = sub_1BCE1E150();

  return sub_1BCA9BEB4(a1, v2);
}

unint64_t sub_1BCA9B560(uint64_t a1)
{
  sub_1BCE1E100();
  type metadata accessor for CFString(0);
  sub_1BCA9C53C(&unk_1EDA16C80, type metadata accessor for CFString);
  sub_1BCE1AB70();
  v2 = sub_1BCE1E150();

  return sub_1BCA9C10C(a1, v2);
}

unint64_t sub_1BCA9B614(char a1)
{
  v2 = sub_1BCBD37DC();

  return sub_1BCA9C210(a1 & 1, v2);
}

unint64_t sub_1BCA9B658(uint64_t a1)
{
  sub_1BCE199D0();
  sub_1BCA9C53C(&qword_1EDA1BEE8, MEMORY[0x1E6984D30]);
  v2 = sub_1BCE1D180();

  return sub_1BCA9C310(a1, v2);
}

void sub_1BCA9B6F0(const void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for WeatherConditionGradientManager.GradientCacheKey();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = sub_1BCA9B494(a2);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085F0);
  if ((sub_1BCE1DE10() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1BCA9B494(a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_1BCE1E0F0();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v3;
  if (v13)
  {
    v17 = (*(v16 + 56) + 104 * v12);

    memcpy(v17, a1, 0x68uLL);
  }

  else
  {
    sub_1BC967260(a2, v8, type metadata accessor for WeatherConditionGradientManager.GradientCacheKey);
    sub_1BCCD73D0(v12, v8, a1, v16);
  }
}

_OWORD *sub_1BCA9B940(_OWORD *a1, void *a2)
{
  sub_1BCA9B560(a2);
  OUTLINED_FUNCTION_0_24();
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085E8);
  if ((sub_1BCE1DE10() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = sub_1BCA9B560(a2);
  if ((v8 & 1) != (v10 & 1))
  {
LABEL_13:
    type metadata accessor for CFString(0);
    result = sub_1BCE1E0F0();
    __break(1u);
    return result;
  }

  v7 = v9;
LABEL_5:
  v11 = *v2;
  if (v8)
  {
    v12 = (*(v11 + 56) + 32 * v7);
    __swift_destroy_boxed_opaque_existential_1(v12);

    return sub_1BCA9C52C(a1, v12);
  }

  else
  {
    sub_1BCCD747C(v7, a2, a1, v11);

    return a2;
  }
}

uint64_t sub_1BCA9BA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BC95511C();
  OUTLINED_FUNCTION_0_24();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085C0);
  if ((OUTLINED_FUNCTION_3_21() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1BC95511C();
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_1BCE1E0F0();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    *(*(v14 + 56) + 8 * v10) = a1;
    OUTLINED_FUNCTION_18_8();
  }

  else
  {
    sub_1BCCD74D0(v10, a2, a3, a1, v14);
    OUTLINED_FUNCTION_18_8();
  }
}

uint64_t sub_1BCA9BB84(uint64_t a1, uint64_t a2, float a3, float a4)
{
  sub_1BC95511C();
  OUTLINED_FUNCTION_0_24();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085C8);
  result = sub_1BCE1DE10();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1BC95511C();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_1BCE1E0F0();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v16 = *v4;
  if (v13)
  {
    v17 = (*(v16 + 56) + 8 * v12);
    *v17 = a3;
    v17[1] = a4;
  }

  else
  {
    sub_1BCCD750C(v12, a1, a2, v16);
  }

  return result;
}

unint64_t sub_1BCA9BCB0(uint64_t a1, uint64_t a2, char a3)
{
  sub_1BCA9B614(a3 & 1);
  OUTLINED_FUNCTION_0_24();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1BCE1E0F0();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_16_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085E0);
  if (OUTLINED_FUNCTION_3_21())
  {
    sub_1BCA9B614(a3 & 1);
    OUTLINED_FUNCTION_5_15();
    if (!v11)
    {
      goto LABEL_14;
    }

    v4 = v10;
  }

  if (v5)
  {
    v12 = (*(*v3 + 56) + 16 * v4);
    *v12 = a1;
    v12[1] = a2;
    OUTLINED_FUNCTION_18_8();
  }

  else
  {
    OUTLINED_FUNCTION_18_8();

    return sub_1BCCD7558(v15, v16, v17, v18, v19);
  }
}

void sub_1BCA9BDB0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_14(a1, a2);
  sub_1BC95511C();
  OUTLINED_FUNCTION_0_24();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1BCE1E0F0();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_16_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085B8);
  if (OUTLINED_FUNCTION_3_21())
  {
    OUTLINED_FUNCTION_10_2();
    sub_1BC95511C();
    OUTLINED_FUNCTION_5_15();
    if (!v8)
    {
      goto LABEL_12;
    }

    v4 = v7;
  }

  if (v5)
  {
    v9 = *(*v3 + 56);
    v10 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetailsCacheEntry(0);
    sub_1BCA9C4CC(v2, v9 + *(*(v10 - 8) + 72) * v4, type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetailsCacheEntry);
    OUTLINED_FUNCTION_18_8();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_19();
    sub_1BCCD7598(v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_18_8();
  }
}

unint64_t sub_1BCA9BEB4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for WeatherConditionGradientManager.GradientCacheKey();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + 64;
  v19 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v6 + 72);
    while (1)
    {
      sub_1BC967260(*(v19 + 48) + v13 * v11, v8, type metadata accessor for WeatherConditionGradientManager.GradientCacheKey);
      sub_1BCE199D0();
      sub_1BCA9C53C(&qword_1EDA1EF20, MEMORY[0x1E6984D30]);
      sub_1BCE1D520();
      sub_1BCE1D520();
      if (v22 == v20 && v23 == v21)
      {
        break;
      }

      v15 = sub_1BCE1E090();

      if (v15)
      {
        goto LABEL_10;
      }

      sub_1BC967834(v8, type metadata accessor for WeatherConditionGradientManager.GradientCacheKey);
LABEL_11:
      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return v11;
      }
    }

LABEL_10:
    v16 = v8[*(v5 + 20)];
    sub_1BC967834(v8, type metadata accessor for WeatherConditionGradientManager.GradientCacheKey);
    if (v16 == *(a1 + *(v5 + 20)))
    {
      return v11;
    }

    goto LABEL_11;
  }

  return v11;
}

unint64_t sub_1BCA9C10C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    type metadata accessor for CFString(0);
    sub_1BCA9C53C(&unk_1EDA16C80, type metadata accessor for CFString);
    v8 = v7;
    v9 = sub_1BCE1AB60();

    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BCA9C210(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x426B6E696CLL;
    }

    else
    {
      v6 = 0x416B6E696CLL;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x426B6E696CLL : 0x416B6E696CLL;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_1BCE1E090();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_1BCA9C310(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1BCE199D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_1BCA9C53C(&qword_1EDA1EB78, MEMORY[0x1E6984D30]);
    v10 = sub_1BCE1D210();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1BCA9C4CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 40))(a2, a1);
  return a2;
}

_OWORD *sub_1BCA9C52C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BCA9C53C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BCA9C584(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA9872C();
  v4 = v3;
  sub_1BCA9872C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B449BA63F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3EB70;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F6666663E99999ALL;
  *(a1 + 720) = 0x41B000004180CCCDLL;
  *(a1 + 728) = 1065899077;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3EB80;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F19999A3E4CCCCDLL;
  *(a1 + 848) = 0x41B0000041800000;
  *(a1 + 856) = 1091608453;
  *(a1 + 864) = 1;
  *(a1 + 872) = 5;
  *(a1 + 880) = xmmword_1BCE44850;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x41D0000041900000;
  *(a1 + 984) = 1088611640;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3EBA0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 15;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x4140000041000000;
  *(a1 + 1112) = 1086324736;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 5;
  *(a1 + 1136) = xmmword_1BCE44860;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE49600;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0u;
  *(a1 + 1644) = 1;
  *(a1 + 1646) = 16843009;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 6;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3EBB0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1110704128;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107820544;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE403A0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x407333333FB33333;
  *(a1 + 2008) = 0x408000004019999ALL;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 7;
  *(a1 + 2208) = 0x419000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE42410;
  *(a1 + 2240) = xmmword_1BCE49610;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

uint64_t sub_1BCA9CD18()
{
  v1 = sub_1BCE1BC20();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1BCE1D8C0();
    v9 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FC4(v8, 0);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v8) = v11;
  }

  return v8 & 1;
}

uint64_t sub_1BCA9CE4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BCE1BC20();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085F8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for StatusBarPreservingModifier();
  sub_1BC9660CC(v1 + *(v10 + 20), v9, &qword_1EBD085F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1BC999734(v9, a1, &qword_1EBD08630);
  }

  sub_1BCE1D8C0();
  v12 = sub_1BCE1C1F0();
  sub_1BCE1AC20();

  sub_1BCE1BC10();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t StatusBarPreservingModifier.init(preferredColorScheme:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v4 = type metadata accessor for StatusBarPreservingModifier();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085F8);
  swift_storeEnumTagMultiPayload();
  return sub_1BC999734(a1, a2 + *(v4 + 24), &qword_1EBD08600);
}

uint64_t sub_1BCA9D0FC(uint64_t a1)
{
  sub_1BCE1B4E0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_1BCE1B970();
}

uint64_t sub_1BCA9D1B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCE1B4E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for StatusBarPreservingModifier();
  sub_1BC9660CC(a2 + *(v11 + 24), v10, &qword_1EBD08600);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v4);
  result = sub_1BC94C05C(v10, &qword_1EBD08600);
  if (EnumTagSinglePayload != 1)
  {
    (*(v5 + 8))(a1, v4);
    v14 = sub_1BCA9CD18();
    v15 = MEMORY[0x1E697DBB8];
    if ((v14 & 1) == 0)
    {
      v15 = MEMORY[0x1E697DBA8];
    }

    (*(v5 + 104))(v7, *v15, v4);
    return (*(v5 + 32))(a1, v7, v4);
  }

  return result;
}

uint64_t sub_1BCA9D388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08630);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BC9660CC(a1, &v5 - v3, &qword_1EBD08630);
  return sub_1BCE1BAA0();
}

uint64_t sub_1BCA9D430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusBarPreservingModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCA9D494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusBarPreservingModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCA9D4F8(uint64_t a1)
{
  v3 = *(type metadata accessor for StatusBarPreservingModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BCA9D1B0(a1, v4);
}

unint64_t sub_1BCA9D568()
{
  result = qword_1EBD08648;
  if (!qword_1EBD08648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08610);
    sub_1BCA9D620();
    sub_1BC957184(&qword_1EDA1B6F8, &qword_1EBD08640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08648);
  }

  return result;
}

unint64_t sub_1BCA9D620()
{
  result = qword_1EBD08650;
  if (!qword_1EBD08650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08608);
    sub_1BC957184(&qword_1EDA1B748, &qword_1EBD08638);
    sub_1BC957184(&qword_1EBD08658, &qword_1EBD08660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08650);
  }

  return result;
}

void sub_1BCA9D72C()
{
  if (!qword_1EBD08670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08630);
    v0 = sub_1BCE1B4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD08670);
    }
  }
}

unint64_t sub_1BCA9D790()
{
  result = qword_1EBD08678;
  if (!qword_1EBD08678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08680);
    sub_1BC9607AC();
    sub_1BCA9D568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08678);
  }

  return result;
}

uint64_t sub_1BCA9D81C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1BCA9D864@<D0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA9E01C();
  v4 = v3;
  sub_1BCA9E01C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B449BA63F4CCCCDLL;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3EB70;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE497C0;
  *(a1 + 640) = xmmword_1BCE497D0;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = xmmword_1BCE497E0;
  *(a1 + 704) = 1061997773;
  *(a1 + 712) = 0x3F6666663E99999ALL;
  *(a1 + 720) = 0x4198000041700000;
  *(a1 + 728) = 1066369312;
  *(a1 + 736) = 1;
  *(a1 + 744) = 6;
  *(a1 + 752) = xmmword_1BCE3EB80;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1061997773;
  *(a1 + 840) = 0x3F19999A3E4CCCCDLL;
  *(a1 + 848) = 0x41A0000041700000;
  *(a1 + 856) = 1092107296;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE44850;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79320;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79340;
  *(a1 + 928) = 9;
  *(a1 + 944) = xmmword_1BCE497F0;
  *(a1 + 960) = 1063675494;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4170000041200000;
  *(a1 + 984) = 1083393800;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3EBA0;
  *(a1 + 1024) = 0x2D20737572726943;
  *(a1 + 1032) = 0xEA00000000005320;
  strcpy((a1 + 1040), "Cirrus_SingleS");
  *(a1 + 1055) = -18;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = xmmword_1BCE49800;
  *(a1 + 1088) = 1082130432;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x4080000040400000;
  *(a1 + 1112) = 1085783552;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 6;
  *(a1 + 1136) = xmmword_1BCE44860;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE49810;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = xmmword_1BCE49820;
  *(a1 + 1392) = xmmword_1BCE49830;
  *(a1 + 1408) = xmmword_1BCE49840;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = _Q0;
  *(a1 + 1600) = _Q0;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0u;
  *(a1 + 1644) = 1;
  *(a1 + 1646) = 16843009;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 8;
  *(a1 + 1776) = xmmword_1BCE3EDA0;
  *(a1 + 1792) = xmmword_1BCE49850;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3EBB0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1110704128;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3EBC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE42410;
  *(a1 + 2240) = xmmword_1BCE44880;
  result = 0.00781250185;
  *(a1 + 2256) = xmmword_1BCE49860;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
  return result;
}

__n128 sub_1BCA9E01C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 80) = xmmword_1BCE41330;
  *(v0 + 96) = xmmword_1BCE41340;
  *(v0 + 144) = xmmword_1BCE3EC10;
  *(v0 + 160) = xmmword_1BCE3EC20;
  __asm { FMOV            V0.2D, #0.5 }

  *(v0 + 304) = _Q0;
  *(v0 + 320) = xmmword_1BCE3EC60;
  *(v0 + 48) = xmmword_1BCE41320;
  *(v0 + 2512) = xmmword_1BCE44920;
  *(v0 + 2528) = xmmword_1BCE3EDB0;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 2736) = vdupq_n_s64(0x3FE0ECE8A0000000uLL);
  *(v0 + 2752) = xmmword_1BCE3EDF0;
  *(v0 + 4912) = xmmword_1BCE3EED0;
  *(v0 + 6128) = xmmword_1BCE3EED0;
  *(v0 + 4928) = 1147207680;
  *(v0 + 6144) = 1147207680;
  *(v0 + 4976) = xmmword_1BCE49930;
  *(v0 + 6192) = xmmword_1BCE49930;
  *(v0 + 4992) = xmmword_1BCE49940;
  *(v0 + 6208) = xmmword_1BCE49940;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5952) = xmmword_1BCE49950;
  *(v0 + 7168) = xmmword_1BCE49950;
  v6 = vdupq_n_s64(0x3FEBBBBBBBBBBBBCuLL);
  *(v0 + 5936) = v6;
  *(v0 + 5968) = v6;
  *(v0 + 7152) = v6;
  *(v0 + 7184) = v6;
  *(v0 + 5984) = xmmword_1BCE49960;
  *(v0 + 7200) = xmmword_1BCE49960;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1145569280;
  *(v0 + 7360) = 1145569280;
  *(v0 + 3728) = xmmword_1BCE498D0;
  *(v0 + 7376) = xmmword_1BCE498D0;
  *(v0 + 3744) = xmmword_1BCE498E0;
  *(v0 + 7392) = xmmword_1BCE498E0;
  *(v0 + 3760) = xmmword_1BCE498F0;
  *(v0 + 7408) = xmmword_1BCE498F0;
  *(v0 + 3776) = xmmword_1BCE49900;
  *(v0 + 7424) = xmmword_1BCE49900;
  *(v0 + 3792) = xmmword_1BCE3EE80;
  *(v0 + 7440) = xmmword_1BCE3EE80;
  *(v0 + 3808) = xmmword_1BCE49320;
  *(v0 + 7456) = xmmword_1BCE49320;
  *(v0 + 3840) = xmmword_1BCE449B0;
  *(v0 + 5056) = xmmword_1BCE449B0;
  *(v0 + 6272) = xmmword_1BCE449B0;
  *(v0 + 7488) = xmmword_1BCE449B0;
  *(v0 + 3872) = xmmword_1BCE3CCC0;
  *(v0 + 7520) = xmmword_1BCE3CCC0;
  *(v0 + 3904) = xmmword_1BCE3D4E0;
  *(v0 + 5120) = xmmword_1BCE3D4E0;
  *(v0 + 6336) = xmmword_1BCE3D4E0;
  *(v0 + 7552) = xmmword_1BCE3D4E0;
  *(v0 + 3968) = xmmword_1BCE3E1D0;
  *(v0 + 5184) = xmmword_1BCE3E1D0;
  *(v0 + 6400) = xmmword_1BCE3E1D0;
  *(v0 + 7616) = xmmword_1BCE3E1D0;
  *(v0 + 4016) = xmmword_1BCE49910;
  *(v0 + 5232) = xmmword_1BCE49910;
  *(v0 + 6448) = xmmword_1BCE49910;
  *(v0 + 7664) = xmmword_1BCE49910;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CF80;
  *(v0 + 7696) = xmmword_1BCE3CF80;
  v7 = vdupq_n_s64(0x3FEAFAFAFAFAFAFBuLL);
  *(v0 + 4720) = v7;
  *(v0 + 4752) = v7;
  *(v0 + 8368) = v7;
  *(v0 + 8400) = v7;
  *(v0 + 4736) = xmmword_1BCE49920;
  *(v0 + 4768) = xmmword_1BCE49920;
  *(v0 + 8384) = xmmword_1BCE49920;
  *(v0 + 8416) = xmmword_1BCE49920;
  *(v0 + 2480) = xmmword_1BCE3EDA0;
  *(v0 + 8560) = xmmword_1BCE3EDA0;
  *(v0 + 2496) = 1135542272;
  *(v0 + 8576) = 1135542272;
  *(v0 + 8592) = xmmword_1BCE3E140;
  *(v0 + 8608) = xmmword_1BCE3E150;
  *(v0 + 2544) = xmmword_1BCE41540;
  *(v0 + 8624) = xmmword_1BCE41540;
  *(v0 + 2560) = xmmword_1BCE3EDD0;
  *(v0 + 8640) = xmmword_1BCE3EDD0;
  *(v0 + 8656) = xmmword_1BCE49330;
  *(v0 + 8672) = xmmword_1BCE49340;
  *(v0 + 8704) = xmmword_1BCE3CBB0;
  *(v0 + 8720) = xmmword_1BCE49350;
  *(v0 + 2656) = xmmword_1BCE44950;
  *(v0 + 8736) = xmmword_1BCE44950;
  *(v0 + 2672) = xmmword_1BCE49890;
  *(v0 + 8752) = xmmword_1BCE49890;
  *(v0 + 2688) = xmmword_1BCE498A0;
  *(v0 + 8768) = xmmword_1BCE498A0;
  *(v0 + 8816) = vdupq_n_s64(0x3FE147AE20000000uLL);
  *(v0 + 8832) = xmmword_1BCE49360;
  *v7.i8 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v7.i64[0];
  *(v0 + 8896) = v7.i64[0];
  *(v0 + 3520) = xmmword_1BCE498B0;
  *(v0 + 9600) = xmmword_1BCE498B0;
  v8 = vdupq_n_s64(0x3FE5D5D5D5D5D5D6uLL);
  *(v0 + 3504) = v8;
  *(v0 + 3536) = v8;
  *(v0 + 9584) = v8;
  *(v0 + 9616) = v8;
  *(v0 + 3552) = xmmword_1BCE498C0;
  *(v0 + 9632) = xmmword_1BCE498C0;
  *(v0 + 1264) = xmmword_1BCE3EBE0;
  *(v0 + 9776) = xmmword_1BCE3EBE0;
  *(v0 + 1280) = 0x41C8000043480000;
  *(v0 + 9792) = 0x41C8000043480000;
  *(v0 + 1296) = xmmword_1BCE49870;
  *(v0 + 9808) = xmmword_1BCE49870;
  *(v0 + 1312) = xmmword_1BCE49880;
  *(v0 + 9824) = xmmword_1BCE49880;
  *(v0 + 1328) = xmmword_1BCE3ECE0;
  *(v0 + 9840) = xmmword_1BCE3ECE0;
  *(v0 + 1360) = xmmword_1BCE3ECF0;
  *(v0 + 9872) = xmmword_1BCE3ECF0;
  *(v0 + 1376) = xmmword_1BCE3ED00;
  *(v0 + 9888) = xmmword_1BCE3ED00;
  *(v0 + 1536) = xmmword_1BCE3ED40;
  *(v0 + 10048) = xmmword_1BCE3ED40;
  *(v0 + 64) = 0x41A0000042C80000;
  *(v0 + 10992) = xmmword_1BCE41320;
  *(v0 + 11008) = 0x41A0000042C80000;
  *(v0 + 11024) = xmmword_1BCE493A0;
  *(v0 + 11040) = xmmword_1BCE49380;
  *(v0 + 112) = xmmword_1BCE3EBF0;
  *(v0 + 128) = xmmword_1BCE3EC00;
  *(v0 + 11056) = xmmword_1BCE3EBF0;
  *(v0 + 192) = xmmword_1BCE40200;
  *(v0 + 1344) = xmmword_1BCE3EC00;
  *(v0 + 9856) = xmmword_1BCE3EC00;
  *(v0 + 11072) = xmmword_1BCE3EC00;
  *(v0 + 11088) = xmmword_1BCE493B0;
  *(v0 + 11104) = xmmword_1BCE3F570;
  *(v0 + 1408) = xmmword_1BCE40200;
  *(v0 + 9920) = xmmword_1BCE40200;
  *(v0 + 11136) = xmmword_1BCE40200;
  *(v0 + 11152) = xmmword_1BCE493C0;
  *(v0 + 1424) = xmmword_1BCE448B0;
  *(v0 + 2640) = xmmword_1BCE448B0;
  *(v0 + 9936) = xmmword_1BCE448B0;
  *(v0 + 208) = xmmword_1BCE448B0;
  *(v0 + 224) = xmmword_1BCE448C0;
  *(v0 + 1440) = xmmword_1BCE448C0;
  *(v0 + 9952) = xmmword_1BCE448C0;
  *(v0 + 11168) = xmmword_1BCE448C0;
  *(v0 + 11248) = vdupq_n_s64(0x3FDEB85200000000uLL);
  *(v0 + 11264) = xmmword_1BCE493D0;
  *(v0 + 368) = xmmword_1BCE44960;
  *(v0 + 1584) = xmmword_1BCE44960;
  *(v0 + 2800) = xmmword_1BCE44960;
  *(v0 + 8880) = xmmword_1BCE44960;
  *(v0 + 10096) = xmmword_1BCE44960;
  *(v0 + 11312) = xmmword_1BCE44960;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1088) = xmmword_1BCE44900;
  *(v0 + 2304) = xmmword_1BCE44900;
  *(v0 + 10816) = xmmword_1BCE44900;
  *(v0 + 12032) = xmmword_1BCE44900;
  v9 = vdupq_n_s64(0x3FDFDFDFDFDFDFE0uLL);
  *(v0 + 1072) = v9;
  *(v0 + 1104) = v9;
  *(v0 + 2288) = v9;
  *(v0 + 2320) = v9;
  *(v0 + 10800) = v9;
  *(v0 + 10832) = v9;
  *(v0 + 12016) = v9;
  *(v0 + 12048) = v9;
  *(v0 + 1120) = xmmword_1BCE44910;
  *(v0 + 2336) = xmmword_1BCE44910;
  *(v0 + 10848) = xmmword_1BCE44910;
  *(v0 + 12064) = xmmword_1BCE44910;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 176) = result;
  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 336) = result;
  *(v0 + 352) = result;
  *(v0 + 400) = result;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1136) = result;
  *(v0 + 8288) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 1152) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 1184) = result;
  *(v0 + 7688) = 0x3FED73E5C0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 7728) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 7600) = result;
  *(v0 + 7632) = result;
  *(v0 + 7648) = result;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 1257) = *v11;
  *(v0 + 1260) = *&v11[3];
  *(v0 + 7504) = result;
  *(v0 + 7536) = result;
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = result;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 7472) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1552) = result;
  *(v0 + 7368) = 1063675494;
  *(v0 + 1568) = result;
  *(v0 + 7337) = *v16;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1648) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 1664) = result;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 6384) = result;
  *(v0 + 6416) = result;
  *(v0 + 6432) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 6288) = result;
  *(v0 + 6320) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 6256) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 6160) = result;
  *(v0 + 6176) = result;
  *(v0 + 6064) = result;
  *(v0 + 6121) = *v15;
  *(v0 + 6152) = 1065353216;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 5152) = result;
  *(v0 + 5168) = result;
  *(v0 + 5200) = result;
  *(v0 + 5216) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 5072) = result;
  *(v0 + 5104) = result;
  *(v0 + 5136) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 4960) = result;
  *(v0 + 5040) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4944) = result;
  *(v0 + 4905) = *v14;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 4936) = 1065353216;
  *(v0 + 2160) = result;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 3984) = result;
  *(v0 + 4000) = result;
  *(v0 + 4040) = 0x3FED73E5C0000000;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 3888) = result;
  *(v0 + 3920) = result;
  *(v0 + 3936) = result;
  *(v0 + 3952) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 3824) = result;
  *(v0 + 3856) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v12;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 2504) = 1053609165;
  *(v0 + 2608) = result;
  *(v0 + 3689) = *v13;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 3720) = 1063675494;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3688) = 0;
  *(v0 + 2704) = result;
  *(v0 + 2720) = result;
  *(v0 + 2768) = result;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 2784) = result;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8688) = result;
  *(v0 + 8784) = result;
  *(v0 + 8800) = result;
  *(v0 + 8848) = result;
  *(v0 + 8864) = result;
  *(v0 + 8912) = result;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 9072) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 9152) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 9904) = result;
  *(v0 + 9968) = result;
  *(v0 + 9984) = result;
  *(v0 + 10000) = result;
  *(v0 + 10016) = result;
  *(v0 + 10032) = result;
  *(v0 + 10064) = result;
  *(v0 + 10080) = result;
  *(v0 + 10128) = result;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10336) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10432) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10528) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10720) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 11120) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 11280) = result;
  *(v0 + 11296) = result;
  *(v0 + 11344) = result;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 12000) = result;
  *(v0 + 12080) = result;
  *(v0 + 12096) = result;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8553) = *v17;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC032000000000004;
  *(v0 + 9769) = *v18;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v18[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v19;
  *(v0 + 10988) = *&v19[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

void sub_1BCA9F0B4(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA90994();
  v4 = v3;
  sub_1BCA90994();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC42F000000000000;
  *(a1 + 80) = xmmword_1BCE49980;
  *(a1 + 96) = xmmword_1BCE49990;
  *(a1 + 112) = 0x3EDC28F63E4CCCCDLL;
  *(a1 + 128) = xmmword_1BCE48400;
  *(a1 + 144) = xmmword_1BCE48410;
  *(a1 + 160) = xmmword_1BCE48420;
  *(a1 + 176) = 1169915904;
  *(a1 + 184) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 192) = xmmword_1BCE48430;
  *(a1 + 208) = xmmword_1BCE48440;
  *(a1 + 224) = xmmword_1BCE48450;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F0000003E99999ALL;
  *(a1 + 720) = 0x4182A3D74124CCCDLL;
  *(a1 + 728) = 3189922816;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3E0A0;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3FB333333F99999ALL;
  *(a1 + 848) = 0x4180000040E00000;
  *(a1 + 856) = 1080445584;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE40340;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F4CCCCDLL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 3221225472;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB0000000053202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF53656C676E6953;
  *(a1 + 1056) = 5;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3FD9999A3FCCCCCDLL;
  *(a1 + 1104) = 0x40A0000040800000;
  *(a1 + 1112) = 1090361200;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE499A0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE7A1D0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE7AD60;
  *(a1 + 1272) = 4;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1632) = 257;
  *(a1 + 1642) = 0;
  *(a1 + 1634) = 0;
  *(v2 + 208) = 0x10001010001;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1061980996;
  *(a1 + 1664) = 0x4104F5C240DB3333;
  *(a1 + 1672) = 4;
  *(a1 + 1680) = xmmword_1BCE499B0;
  *(a1 + 1696) = xmmword_1BCE48480;
  *(a1 + 1712) = xmmword_1BCE48490;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3EDEB85247927C00;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E110;
  *(a1 + 1984) = 0x3F80000040A00000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E28F5C33D851EB8;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1056964608;
  *(a1 + 2200) = 20;
  *(a1 + 2208) = 0x41F000003FC00000;
  *(a1 + 2224) = xmmword_1BCE46650;
  *(a1 + 2240) = xmmword_1BCE499C0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

void sub_1BCA9F884(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA0FF88();
  v4 = v3;
  sub_1BCA0FF88();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC348000000000000;
  *(a1 + 80) = xmmword_1BCE3EB50;
  *(a1 + 96) = xmmword_1BCE499E0;
  *(a1 + 112) = 0x3E23D70A3E19999ALL;
  *(a1 + 128) = xmmword_1BCE3E650;
  *(a1 + 144) = xmmword_1BCE3E660;
  *(a1 + 160) = xmmword_1BCE3E670;
  *(a1 + 176) = 1168891904;
  *(a1 + 184) = 0x3E1EB8523D8F5C29;
  *(a1 + 192) = xmmword_1BCE3E680;
  *(a1 + 208) = xmmword_1BCE3E690;
  *(a1 + 224) = xmmword_1BCE3E6A0;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F6666663F333333;
  *(a1 + 720) = 0x4179999A41780000;
  *(a1 + 728) = 1085800448;
  *(a1 + 736) = 1;
  *(a1 + 744) = 5;
  *(a1 + 752) = xmmword_1BCE499F0;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F8000003F666666;
  *(a1 + 848) = 0x40ECCCCD40E00000;
  *(a1 + 856) = 1074790400;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE49A00;
  *(a1 + 896) = 0x2073757461727453;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73757461727453;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F4CCCCDLL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 3221225472;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 1084503840;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE49A10;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE798A0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE798C0;
  *(a1 + 1272) = 6;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE49A20;
  *(a1 + 1568) = 0x42CFE66642A8E147;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3E6F0;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 16777472;
  *(a1 + 1638) = 0;
  *(a1 + 1632) = 0;
  *(v2 + 210) = 16843009;
  *(a1 + 1650) = 0;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x40C4CCCD40000000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E19999A3D4CCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4090000040800000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1051169383;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

__n128 sub_1BCAA0054@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA5FAC4();
  v4 = v3;
  sub_1BCA5FAC4();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3A2800000000000;
  *(a1 + 80) = xmmword_1BCE49A60;
  *(a1 + 96) = xmmword_1BCE44A30;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE44A40;
  *(a1 + 176) = 1157234688;
  *(a1 + 184) = 0x3E3851EC3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE44A50;
  *(a1 + 240) = 0x4248000040A00000;
  *(a1 + 248) = 1112014848;
  *(a1 + 256) = 0x3EB333333E99999ALL;
  *(a1 + 264) = 0x40A0000000000000;
  *(a1 + 272) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 1086324736;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = vdup_n_s32(0x3F333333u);
  *(a1 + 720) = vdup_n_s32(0x42200000u);
  *(a1 + 728) = 1104209392;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE44A60;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 840) = _D1;
  *(a1 + 848) = vdup_n_s32(0x419FEB85u);
  *(a1 + 856) = 1098936048;
  *(a1 + 864) = 1;
  *(a1 + 872) = 8;
  *(a1 + 880) = xmmword_1BCE44A70;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF4C202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE798E0;
  *(a1 + 928) = 9;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = vdup_n_s32(0x3FB33333u);
  *(a1 + 976) = 0x41311EB84120F5C2;
  *(a1 + 984) = 0xC1D936EE41700000;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 10;
  *(a1 + 1008) = xmmword_1BCE44A70;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF4C202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE798E0;
  *(a1 + 1056) = 9;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = vdup_n_s32(0x3F75C28Fu);
  *(a1 + 1104) = vdup_n_s32(0x40DF0A3Du);
  *(a1 + 1112) = 1094189056;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 7;
  *(a1 + 1136) = xmmword_1BCE44A80;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF4C202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE798E0;
  *(a1 + 1184) = 9;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE44A90;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 0;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE44AA0;
  *(a1 + 1568) = 0x4270000041F00000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 16843008;
  *(a1 + 1638) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1646) = 1;
  *(a1 + 1648) = 16843009;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 5;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE44AB0;
  *(a1 + 1984) = 0x3F80000041073D55;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3F500;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E19999A3D4CCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1052050425;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
  return result;
}

float sub_1BCAA0790@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void MicaConditionMedia.timeScale.setter(float a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  sub_1BCAA081C();
}

void sub_1BCAA081C()
{
  [*(v0 + 16) speed];
  v2 = v1;
  swift_beginAccess();
  v3 = *(v0 + 24);
  if (v2 != v3)
  {
    CALayer.updateSpeedInPlace(_:)(v3);
  }
}

void (*MicaConditionMedia.timeScale.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BCAA08DC;
}

void sub_1BCAA08DC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BCAA081C();
  }
}

uint64_t MicaConditionMedia.isFrozen.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 28) = a1;
  return result;
}

uint64_t sub_1BCAA09D4(void *a1)
{
  *(v1 + 16) = a1;
  [a1 speed];
  *(v1 + 24) = v2;
  *(v1 + 28) = 0;
  return v1;
}

uint64_t MicaConditionMedia.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 29, 7);
}

void (*sub_1BCAA0A64(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BCAA08DC;
}

void sub_1BCAA0B2C(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCAA12B4();
  v4 = v3;
  sub_1BCAA12B4();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE42AE0;
  *(a1 + 112) = 0x3EA3D70A3E428F5CLL;
  *(a1 + 128) = xmmword_1BCE44E30;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE42B00;
  *(a1 + 176) = 1165623296;
  *(a1 + 184) = 0x3E3851EC3E051EB8;
  *(a1 + 192) = xmmword_1BCE44E50;
  *(a1 + 208) = xmmword_1BCE44E60;
  *(a1 + 224) = xmmword_1BCE42B20;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x404000004019999ALL;
  *(a1 + 720) = 0x41B770A441900000;
  *(a1 + 728) = 1102579360;
  *(a1 + 736) = 1;
  *(a1 + 744) = 10;
  *(a1 + 752) = xmmword_1BCE3FB40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x4019999A3F99999ALL;
  *(a1 + 848) = 0x417C0000413CF5C2;
  *(a1 + 856) = 1094983344;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3F4C0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x4019999A3F19999ALL;
  *(a1 + 976) = 0x415A8F5C40E00000;
  *(a1 + 984) = 1100219216;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF4C202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE798E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V4.2S, #3.25 }

  *(a1 + 1104) = _D4;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3FB50;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE44E80;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 1;
  *(a1 + 1288) = 0x3F4CCCCD3F000000;
  *(a1 + 1296) = 0x4120000042700000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE44E90;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1630) = 0u;
  *(v2 + 210) = 65793;
  *(a1 + 1650) = 256;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 12;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1052770304;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1090519040;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E2E147B3D8F5C29;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1041865114;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

__n128 sub_1BCAA12B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x420C000043480000;
  *(v0 + 80) = xmmword_1BCE3E140;
  *(v0 + 96) = xmmword_1BCE3E150;
  *(v0 + 5888) = xmmword_1BCE3E350;
  *(v0 + 4912) = xmmword_1BCE3FD40;
  *(v0 + 6128) = xmmword_1BCE3FD40;
  *(v0 + 4928) = 1147207680;
  *(v0 + 6144) = 1147207680;
  *(v0 + 4976) = xmmword_1BCE3FD50;
  *(v0 + 6192) = xmmword_1BCE3FD50;
  *(v0 + 4992) = xmmword_1BCE3FD60;
  *(v0 + 6208) = xmmword_1BCE3FD60;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5264) = xmmword_1BCE3FD80;
  *(v0 + 6480) = xmmword_1BCE3FD80;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1142292480;
  *(v0 + 7360) = 1142292480;
  *(v0 + 3760) = xmmword_1BCE3FD00;
  *(v0 + 7408) = xmmword_1BCE3FD00;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 3968) = xmmword_1BCE3E2C0;
  *(v0 + 5184) = xmmword_1BCE3E2C0;
  *(v0 + 6400) = xmmword_1BCE3E2C0;
  *(v0 + 7616) = xmmword_1BCE3E2C0;
  *(v0 + 4016) = xmmword_1BCE44F80;
  *(v0 + 5232) = xmmword_1BCE44F80;
  *(v0 + 6448) = xmmword_1BCE44F80;
  *(v0 + 7664) = xmmword_1BCE44F80;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3E2F0;
  *(v0 + 7696) = xmmword_1BCE3E2F0;
  *(v0 + 4160) = xmmword_1BCE3E230;
  *(v0 + 5376) = xmmword_1BCE3E230;
  *(v0 + 6592) = xmmword_1BCE3E230;
  *(v0 + 7808) = xmmword_1BCE3E230;
  *(v0 + 4192) = xmmword_1BCE3CCC0;
  *(v0 + 7840) = xmmword_1BCE3CCC0;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1132068864;
  *(v0 + 8576) = 1132068864;
  *(v0 + 2512) = xmmword_1BCE44F10;
  *(v0 + 8592) = xmmword_1BCE44F10;
  *(v0 + 2528) = xmmword_1BCE43340;
  *(v0 + 8608) = xmmword_1BCE43340;
  *(v0 + 2544) = xmmword_1BCE44F20;
  *(v0 + 8624) = xmmword_1BCE44F20;
  *(v0 + 2560) = xmmword_1BCE43360;
  *(v0 + 8640) = xmmword_1BCE43360;
  *(v0 + 2576) = xmmword_1BCE3E270;
  *(v0 + 3792) = xmmword_1BCE3E270;
  *(v0 + 7440) = xmmword_1BCE3E270;
  *(v0 + 8656) = xmmword_1BCE3E270;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2752) = xmmword_1BCE44F30;
  *(v0 + 8832) = xmmword_1BCE44F30;
  *(v0 + 2768) = xmmword_1BCE44F40;
  *(v0 + 8848) = xmmword_1BCE44F40;
  *(v0 + 2784) = xmmword_1BCE3FD20;
  *(v0 + 4000) = xmmword_1BCE3FD20;
  *(v0 + 5216) = xmmword_1BCE3FD20;
  *(v0 + 6432) = xmmword_1BCE3FD20;
  *(v0 + 7648) = xmmword_1BCE3FD20;
  *(v0 + 8864) = xmmword_1BCE3FD20;
  v1 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1;
  *(v0 + 8896) = v1;
  *(v0 + 2928) = xmmword_1BCE489C0;
  *(v0 + 9008) = xmmword_1BCE489C0;
  *(v0 + 2960) = xmmword_1BCE489D0;
  *(v0 + 9040) = xmmword_1BCE489D0;
  *(v0 + 2992) = xmmword_1BCE489E0;
  *(v0 + 9072) = xmmword_1BCE489E0;
  *(v0 + 3024) = xmmword_1BCE489F0;
  *(v0 + 9104) = xmmword_1BCE489F0;
  *(v0 + 3296) = xmmword_1BCE45000;
  *(v0 + 4512) = xmmword_1BCE45000;
  *(v0 + 5728) = xmmword_1BCE45000;
  *(v0 + 6944) = xmmword_1BCE45000;
  *(v0 + 8160) = xmmword_1BCE45000;
  *(v0 + 9376) = xmmword_1BCE45000;
  *(v0 + 1264) = xmmword_1BCE3F510;
  *(v0 + 9776) = xmmword_1BCE3F510;
  *(v0 + 10992) = xmmword_1BCE3F510;
  *(v0 + 112) = xmmword_1BCE44EB0;
  *(v0 + 128) = xmmword_1BCE44EC0;
  *(v0 + 1280) = 0x420C000043480000;
  *(v0 + 9792) = 0x420C000043480000;
  *(v0 + 11008) = 0x420C000043480000;
  *(v0 + 1296) = xmmword_1BCE3E140;
  *(v0 + 3728) = xmmword_1BCE3E140;
  *(v0 + 4944) = xmmword_1BCE3E140;
  *(v0 + 6160) = xmmword_1BCE3E140;
  *(v0 + 7376) = xmmword_1BCE3E140;
  *(v0 + 9808) = xmmword_1BCE3E140;
  *(v0 + 11024) = xmmword_1BCE3E140;
  *(v0 + 144) = xmmword_1BCE43250;
  *(v0 + 160) = xmmword_1BCE43260;
  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 4960) = xmmword_1BCE3E150;
  *(v0 + 6176) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 1328) = xmmword_1BCE44EB0;
  *(v0 + 9840) = xmmword_1BCE44EB0;
  *(v0 + 11056) = xmmword_1BCE44EB0;
  *(v0 + 1344) = xmmword_1BCE44EC0;
  *(v0 + 9856) = xmmword_1BCE44EC0;
  *(v0 + 11072) = xmmword_1BCE44EC0;
  *(v0 + 1360) = xmmword_1BCE43250;
  *(v0 + 9872) = xmmword_1BCE43250;
  *(v0 + 11088) = xmmword_1BCE43250;
  *(v0 + 240) = xmmword_1BCE43270;
  *(v0 + 256) = xmmword_1BCE43280;
  *(v0 + 1376) = xmmword_1BCE43260;
  *(v0 + 9888) = xmmword_1BCE43260;
  *(v0 + 11104) = xmmword_1BCE43260;
  *(v0 + 1456) = xmmword_1BCE43270;
  *(v0 + 9968) = xmmword_1BCE43270;
  *(v0 + 11184) = xmmword_1BCE43270;
  *(v0 + 272) = xmmword_1BCE3FC60;
  *(v0 + 288) = xmmword_1BCE3FC70;
  *(v0 + 1472) = xmmword_1BCE43280;
  *(v0 + 9984) = xmmword_1BCE43280;
  *(v0 + 11200) = xmmword_1BCE43280;
  *(v0 + 1488) = xmmword_1BCE3FC60;
  *(v0 + 10000) = xmmword_1BCE3FC60;
  *(v0 + 11216) = xmmword_1BCE3FC60;
  *(v0 + 304) = xmmword_1BCE44ED0;
  *(v0 + 320) = xmmword_1BCE3E220;
  *(v0 + 1504) = xmmword_1BCE3FC70;
  *(v0 + 10016) = xmmword_1BCE3FC70;
  *(v0 + 11232) = xmmword_1BCE3FC70;
  *(v0 + 1520) = xmmword_1BCE44ED0;
  *(v0 + 10032) = xmmword_1BCE44ED0;
  *(v0 + 11248) = xmmword_1BCE44ED0;
  *(v0 + 336) = xmmword_1BCE3FC90;
  *(v0 + 352) = xmmword_1BCE3FC00;
  *(v0 + 1536) = xmmword_1BCE3E220;
  *(v0 + 4256) = xmmword_1BCE3E220;
  *(v0 + 4672) = xmmword_1BCE3E220;
  *(v0 + 5472) = xmmword_1BCE3E220;
  *(v0 + 6688) = xmmword_1BCE3E220;
  *(v0 + 7104) = xmmword_1BCE3E220;
  *(v0 + 7904) = xmmword_1BCE3E220;
  *(v0 + 8320) = xmmword_1BCE3E220;
  *(v0 + 10048) = xmmword_1BCE3E220;
  *(v0 + 11264) = xmmword_1BCE3E220;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 1552) = xmmword_1BCE3FC90;
  *(v0 + 10064) = xmmword_1BCE3FC90;
  *(v0 + 11280) = xmmword_1BCE3FC90;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1568) = xmmword_1BCE3FC00;
  *(v0 + 10080) = xmmword_1BCE3FC00;
  *(v0 + 11296) = xmmword_1BCE3FC00;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 2800) = xmmword_1BCE3FC10;
  *(v0 + 8880) = xmmword_1BCE3FC10;
  *(v0 + 10096) = xmmword_1BCE3FC10;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 496) = xmmword_1BCE48990;
  *(v0 + 512) = xmmword_1BCE3F6B0;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 1728) = xmmword_1BCE3F6B0;
  *(v0 + 2944) = xmmword_1BCE3F6B0;
  *(v0 + 9024) = xmmword_1BCE3F6B0;
  *(v0 + 10240) = xmmword_1BCE3F6B0;
  *(v0 + 11456) = xmmword_1BCE3F6B0;
  *(v0 + 528) = xmmword_1BCE489A0;
  *(v0 + 544) = xmmword_1BCE3DA70;
  *(v0 + 1744) = xmmword_1BCE489A0;
  *(v0 + 10256) = xmmword_1BCE489A0;
  *(v0 + 11472) = xmmword_1BCE489A0;
  *(v0 + 1760) = xmmword_1BCE3DA70;
  *(v0 + 2976) = xmmword_1BCE3DA70;
  *(v0 + 9056) = xmmword_1BCE3DA70;
  *(v0 + 10272) = xmmword_1BCE3DA70;
  *(v0 + 11488) = xmmword_1BCE3DA70;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 816) = xmmword_1BCE48990;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 592) = xmmword_1BCE489B0;
  *(v0 + 848) = xmmword_1BCE489B0;
  *(v0 + 1808) = xmmword_1BCE489B0;
  *(v0 + 2064) = xmmword_1BCE489B0;
  *(v0 + 10320) = xmmword_1BCE489B0;
  *(v0 + 10576) = xmmword_1BCE489B0;
  *(v0 + 11536) = xmmword_1BCE489B0;
  *(v0 + 11792) = xmmword_1BCE489B0;
  *(v0 + 1712) = xmmword_1BCE48990;
  *(v0 + 1776) = xmmword_1BCE48990;
  *(v0 + 2032) = xmmword_1BCE48990;
  *(v0 + 10224) = xmmword_1BCE48990;
  *(v0 + 10288) = xmmword_1BCE48990;
  *(v0 + 10544) = xmmword_1BCE48990;
  *(v0 + 11440) = xmmword_1BCE48990;
  *(v0 + 11504) = xmmword_1BCE48990;
  *(v0 + 11760) = xmmword_1BCE48990;
  *(v0 + 560) = xmmword_1BCE48990;
  *(v0 + 576) = xmmword_1BCE3A880;
  *(v0 + 8368) = result;
  *(v0 + 608) = xmmword_1BCE3EE20;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 8304) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = xmmword_1BCE3A880;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = result;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 832) = xmmword_1BCE3A880;
  *(v0 + 8112) = result;
  *(v0 + 8128) = xmmword_1BCE3A880;
  *(v0 + 8144) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 864) = xmmword_1BCE3EE20;
  *(v0 + 8016) = result;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 1824) = xmmword_1BCE3EE20;
  *(v0 + 7824) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = xmmword_1BCE3EE20;
  *(v0 + 7888) = result;
  *(v0 + 2080) = xmmword_1BCE3EE20;
  *(v0 + 3040) = xmmword_1BCE3EE20;
  *(v0 + 7760) = result;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 7792) = result;
  *(v0 + 4224) = xmmword_1BCE3EE20;
  *(v0 + 5440) = xmmword_1BCE3EE20;
  *(v0 + 6656) = xmmword_1BCE3EE20;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 7632) = result;
  *(v0 + 9120) = xmmword_1BCE3EE20;
  *(v0 + 10336) = xmmword_1BCE3EE20;
  *(v0 + 10592) = xmmword_1BCE3EE20;
  *(v0 + 11552) = xmmword_1BCE3EE20;
  *(v0 + 11808) = xmmword_1BCE3EE20;
  *(v0 + 7536) = result;
  *(v0 + 7552) = result;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 7600) = result;
  *(v0 + 1024) = xmmword_1BCE400A0;
  *(v0 + 1056) = xmmword_1BCE3A880;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 2240) = xmmword_1BCE400A0;
  *(v0 + 3456) = xmmword_1BCE400A0;
  *(v0 + 7337) = *v12;
  *(v0 + 7368) = 1058642330;
  *(v0 + 9536) = xmmword_1BCE400A0;
  *(v0 + 10752) = xmmword_1BCE400A0;
  *(v0 + 11968) = xmmword_1BCE400A0;
  *(v0 + 1792) = xmmword_1BCE3A880;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 7340) = *&v12[3];
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4018000000000010;
  *(v0 + 7336) = 1;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 7120) = result;
  *(v0 + 7136) = xmmword_1BCE3A880;
  *(v0 + 7152) = result;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = result;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7088) = result;
  *(v0 + 2048) = xmmword_1BCE3A880;
  *(v0 + 6912) = xmmword_1BCE3A880;
  *(v0 + 6928) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 2272) = xmmword_1BCE3A880;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6896) = result;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = result;
  *(v0 + 3008) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 6624) = xmmword_1BCE3C8C0;
  *(v0 + 6640) = result;
  *(v0 + 6672) = result;
  *(v0 + 6704) = result;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 3264) = xmmword_1BCE3A880;
  *(v0 + 6544) = result;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 6576) = result;
  *(v0 + 6608) = result;
  *(v0 + 3488) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 4480) = xmmword_1BCE3A880;
  *(v0 + 4704) = xmmword_1BCE3A880;
  *(v0 + 5488) = result;
  *(v0 + 6368) = result;
  *(v0 + 6384) = result;
  *(v0 + 6416) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 6256) = result;
  *(v0 + 5584) = result;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = result;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v11;
  *(v0 + 6124) = *&v11[3];
  *(v0 + 6152) = 1061997773;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4031FFFFFFFFFFF6;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = result;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 5632) = result;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5872) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = xmmword_1BCE3A880;
  *(v0 + 5936) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = result;
  *(v0 + 5648) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = xmmword_1BCE3A880;
  *(v0 + 5712) = result;
  *(v0 + 5744) = result;
  *(v0 + 9088) = xmmword_1BCE3A880;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 9344) = xmmword_1BCE3A880;
  *(v0 + 9568) = xmmword_1BCE3A880;
  *(v0 + 10304) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10560) = xmmword_1BCE3A880;
  *(v0 + 10784) = xmmword_1BCE3A880;
  *(v0 + 11520) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 11776) = xmmword_1BCE3A880;
  *(v0 + 12000) = xmmword_1BCE3A880;
  *(v0 + 5392) = result;
  *(v0 + 5408) = xmmword_1BCE3C8C0;
  *(v0 + 5424) = result;
  *(v0 + 5456) = result;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 5288) = 0;
  *(v0 + 5328) = result;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 5360) = result;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5168) = result;
  *(v0 + 5200) = result;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 5104) = result;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 4240) = result;
  *(v0 + 4272) = result;
  *(v0 + 4905) = *v10;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x4032000000000001;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v10[3];
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4304) = result;
  *(v0 + 4720) = result;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = result;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = result;
  *(v0 + 4320) = result;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = result;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4656) = result;
  *(v0 + 4688) = result;
  *(v0 + 4336) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4464) = result;
  *(v0 + 4496) = result;
  *(v0 + 4400) = result;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 9248) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 10464) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11680) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 4144) = result;
  *(v0 + 4176) = result;
  *(v0 + 4208) = result;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = result;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3984) = result;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3920) = result;
  *(v0 + 3936) = result;
  *(v0 + 3952) = result;
  *(v0 + 3536) = result;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = result;
  *(v0 + 3824) = result;
  *(v0 + 3840) = result;
  *(v0 + 3856) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3689) = *v9;
  *(v0 + 3692) = *&v9[3];
  *(v0 + 3720) = 1058642330;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 3688) = 0;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 3440) = result;
  *(v0 + 3472) = result;
  *(v0 + 3504) = result;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3248) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3408) = result;
  *(v0 + 3280) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 192) = result;
  *(v0 + 208) = result;
  *(v0 + 3152) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 464) = result;
  *(v0 + 624) = result;
  *(v0 + 3056) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 720) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 944) = result;
  *(v0 + 976) = result;
  *(v0 + 1008) = result;
  *(v0 + 176) = result;
  *(v0 + 400) = result;
  *(v0 + 2896) = result;
  *(v0 + 656) = result;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 752) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 2704) = result;
  *(v0 + 2720) = result;
  *(v0 + 2736) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 2640) = result;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 1040) = result;
  *(v0 + 1072) = result;
  *(v0 + 1104) = result;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 2464) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v8;
  *(v0 + 2476) = *&v8[3];
  *(v0 + 2504) = 1050253722;
  *(v0 + 1200) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v7;
  *(v0 + 2288) = result;
  *(v0 + 2320) = result;
  *(v0 + 1260) = *&v7[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 2192) = result;
  *(v0 + 2224) = result;
  *(v0 + 2256) = result;
  *(v0 + 1392) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 1408) = result;
  *(v0 + 1424) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 2000) = result;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = result;
  *(v0 + 1904) = result;
  *(v0 + 1936) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 1840) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 8400) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8688) = result;
  *(v0 + 8704) = result;
  *(v0 + 8720) = result;
  *(v0 + 8752) = result;
  *(v0 + 8768) = result;
  *(v0 + 8784) = result;
  *(v0 + 8800) = result;
  *(v0 + 8816) = result;
  *(v0 + 8912) = result;
  *(v0 + 8976) = result;
  *(v0 + 9136) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9232) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9328) = result;
  *(v0 + 9360) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9488) = result;
  *(v0 + 9520) = result;
  *(v0 + 9552) = result;
  *(v0 + 9584) = result;
  *(v0 + 9616) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 9936) = result;
  *(v0 + 10128) = result;
  *(v0 + 10192) = result;
  *(v0 + 10352) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10448) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10704) = result;
  *(v0 + 10736) = result;
  *(v0 + 10768) = result;
  *(v0 + 10800) = result;
  *(v0 + 10832) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11152) = result;
  *(v0 + 11344) = result;
  *(v0 + 11408) = result;
  *(v0 + 11568) = result;
  *(v0 + 11600) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11664) = result;
  *(v0 + 11696) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11920) = result;
  *(v0 + 11952) = result;
  *(v0 + 11984) = result;
  *(v0 + 12016) = result;
  *(v0 + 12048) = result;
  *(v0 + 12080) = result;
  *(v0 + 12096) = result;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8553) = *v13;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC032000000000004;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v13[3];
  *(v0 + 8584) = 1050253722;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC04E000000000002;
  *(v0 + 9769) = *v14;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v14[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v15;
  *(v0 + 10988) = *&v15[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

void sub_1BCAA22A4()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_22(qword_1EDA1EFB8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_1();
  sub_1BCE18B60();
  OUTLINED_FUNCTION_11_0();

  qword_1EBD2A140 = v0;
  *algn_1EBD2A148 = v1;
}

void sub_1BCAA234C()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  v0 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_3_1();
  sub_1BCE18B60();
  OUTLINED_FUNCTION_11_0();

  qword_1EBD2A150 = "ia";
  *algn_1EBD2A158 = 0x80000001BCE7B5A0;
}

void sub_1BCAA2404()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_22(qword_1EDA1EFB8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_1();
  sub_1BCE18B60();
  OUTLINED_FUNCTION_11_0();

  qword_1EBD2A160 = v0;
  *algn_1EBD2A168 = v1;
}

void sub_1BCAA24A4()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_22(qword_1EDA1EFB8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_1();
  sub_1BCE18B60();
  OUTLINED_FUNCTION_11_0();

  qword_1EBD2A170 = v0;
  *algn_1EBD2A178 = v1;
}

void sub_1BCAA2544()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_22(qword_1EDA1EFB8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_1();
  sub_1BCE18B60();
  OUTLINED_FUNCTION_11_0();

  qword_1EBD2A180 = v0;
  *algn_1EBD2A188 = v1;
}

void sub_1BCAA25F0()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_22(qword_1EDA1EFB8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_1();
  sub_1BCE18B60();
  OUTLINED_FUNCTION_11_0();

  qword_1EBD2A190 = v0;
  *algn_1EBD2A198 = v1;
}

uint64_t sub_1BCAA26A0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  v6 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8_15();
  v8 = *(type metadata accessor for ConditionsComplicationViewModel() + 40);
  static Set<>.full.getter();
  v9 = sub_1BCE19280();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1BC94C05C(v5, &qword_1EBD07890);
  sub_1BCE1A3E0();
  v10 = sub_1BCE1A3A0();
  sub_1BCB37580(v1, 0, v10, v0 + v8);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_1_15();
  sub_1BCAA38B0(v1, v11);
  v12 = sub_1BCE19930();
  v14 = v13;
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v15 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_7();
  sub_1BCE18B60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BCE3E030;
  v17 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1BC9804E0();
  *(v16 + 32) = &qword_1EBD07890;
  *(v16 + 40) = v5;
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  *(v16 + 64) = v18;
  *(v16 + 72) = v12;
  *(v16 + 80) = v14;
  v19 = sub_1BCE1D2B0();

  return v19;
}

uint64_t sub_1BCAA2924()
{
  v2 = type metadata accessor for ConditionsComplicationHourlyViewModel();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v0 + *(OUTLINED_FUNCTION_16_14() + 52));

  result = sub_1BCAE5F44(1, v3);
  v8 = v7 >> 1;
  v9 = (v7 >> 1) - v6;
  if (__OFSUB__(v7 >> 1, v6))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v9)
  {
LABEL_8:
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
    sub_1BCA090F8();
    v18 = sub_1BCE1D1D0();
    v20 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BCE3E030;
    v22 = sub_1BCAA26A0();
    v24 = v23;
    v25 = MEMORY[0x1E69E6158];
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v26 = sub_1BC9804E0();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    *(v21 + 96) = v25;
    *(v21 + 104) = v26;
    *(v21 + 64) = v26;
    *(v21 + 72) = v18;
    *(v21 + 80) = v20;
    return sub_1BCE1D2B0();
  }

  v10 = v5;
  v11 = v6;
  v28 = MEMORY[0x1E69E7CC0];
  result = sub_1BCA151C4(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    while (v11 < v8)
    {
      sub_1BCAA384C(v10 + *(v27 + 72) * v11, v1);
      v12 = sub_1BCAA2BB8();
      v14 = v13;
      result = sub_1BCAA38B0(v1, type metadata accessor for ConditionsComplicationHourlyViewModel);
      v16 = *(v28 + 16);
      v15 = *(v28 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1BCA151C4((v15 > 1), v16 + 1, 1);
      }

      *(v28 + 16) = v16 + 1;
      v17 = v28 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      if (v8 == ++v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1BCAA2BB8()
{
  v1 = v0;
  sub_1BCE18E90();
  OUTLINED_FUNCTION_2();
  v88 = v3;
  v89 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  v87 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07888);
  OUTLINED_FUNCTION_14(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v81 - v8;
  v94 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v85 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v93 = v12 - v11;
  v13 = sub_1BCE1D230();
  v14 = OUTLINED_FUNCTION_14(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v92 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v17);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v81 - v19;
  v20 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v21 = OUTLINED_FUNCTION_14(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  v91 = (v23 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
  OUTLINED_FUNCTION_14(v24);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v81 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08690);
  OUTLINED_FUNCTION_14(v28);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v81 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v34 = v33;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v81 - v36;
  v38 = type metadata accessor for ConditionsComplicationHourlyViewModel();
  v39 = v1;
  sub_1BC952ABC(v1 + v38[5], v31, &qword_1EBD08690);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_1BC94C05C(v31, &qword_1EBD08690);
    return 0;
  }

  (*(v34 + 32))(v37, v31, v32);
  sub_1BC952ABC(v1 + v38[6], v27, &qword_1EBD08688);
  v40 = sub_1BCE199D0();
  if (__swift_getEnumTagSinglePayload(v27, 1, v40) == 1)
  {
    sub_1BC94C05C(v27, &qword_1EBD08688);
    (*(v34 + 8))(v37, v32);
    return 0;
  }

  v83 = sub_1BCE19930();
  v84 = v42;
  (*(*(v40 - 8) + 8))(v27, v40);
  static Set<>.full.getter();
  v43 = v90;
  v44 = OUTLINED_FUNCTION_9_13();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v94);
  v47 = v91;
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1BC94C05C(v43, &qword_1EBD07890);
  sub_1BCE1A3E0();
  sub_1BCE1A3A0();
  v48 = OUTLINED_FUNCTION_7_20();
  v82 = sub_1BCB37580(v48, v49, v50, v37);
  v90 = v51;

  OUTLINED_FUNCTION_1_15();
  sub_1BCAA38B0(v47, v52);
  if (*(v39 + v38[8]) == 1)
  {
    sub_1BCE1D220();
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v53 = qword_1EDA1EFB8;
    sub_1BCE191B0();
    OUTLINED_FUNCTION_23_4();
    sub_1BCE1D2C0();
    OUTLINED_FUNCTION_11_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1BCE3E030;
    v55 = MEMORY[0x1E69E6158];
    *(v54 + 56) = MEMORY[0x1E69E6158];
    v56 = sub_1BC9804E0();
    v57 = v90;
    *(v54 + 32) = v82;
    *(v54 + 40) = v57;
    *(v54 + 96) = v55;
    *(v54 + 104) = v56;
    v59 = v83;
    v58 = v84;
    *(v54 + 64) = v56;
    *(v54 + 72) = v59;
    *(v54 + 80) = v58;
    OUTLINED_FUNCTION_25_0();
    v41 = sub_1BCE1D250();

    (*(v34 + 8))(v37, v32);
  }

  else
  {
    v91 = v37;
    if (qword_1EBD07170 != -1)
    {
      swift_once();
    }

    v60 = v38[9];
    v61 = v38[10];
    v62 = sub_1BCE19470();
    OUTLINED_FUNCTION_4();
    v64 = v86;
    (*(v63 + 16))(v86, v39 + v61, v62);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v62);
    v65 = v93;
    sub_1BCE191B0();
    v66 = sub_1BCBA01D4(v39 + v60, v65, v64);
    v68 = v67;
    (*(v85 + 8))(v65, v94);
    sub_1BC94C05C(v64, &qword_1EBD07888);
    v69 = v87;
    sub_1BCE18500();
    sub_1BCA091FC();
    v70 = v89;
    sub_1BCE19040();
    (*(v88 + 8))(v69, v70);
    v71 = v95;
    sub_1BCE1D220();
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v72 = qword_1EDA1EFB8;
    sub_1BCE191B0();
    OUTLINED_FUNCTION_23_4();
    sub_1BCE1D2C0();
    OUTLINED_FUNCTION_11_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1BCE3E040;
    v74 = MEMORY[0x1E69E65A8];
    *(v73 + 56) = MEMORY[0x1E69E6530];
    *(v73 + 64) = v74;
    *(v73 + 32) = v71;
    v75 = MEMORY[0x1E69E6158];
    *(v73 + 96) = MEMORY[0x1E69E6158];
    v76 = sub_1BC9804E0();
    v77 = v90;
    *(v73 + 72) = v82;
    *(v73 + 80) = v77;
    *(v73 + 136) = v75;
    *(v73 + 144) = v76;
    v79 = v83;
    v78 = v84;
    *(v73 + 104) = v76;
    *(v73 + 112) = v79;
    *(v73 + 120) = v78;
    *(v73 + 176) = v75;
    *(v73 + 184) = v76;
    *(v73 + 152) = v66;
    *(v73 + 160) = v68;
    OUTLINED_FUNCTION_25_0();
    v41 = sub_1BCE1D250();

    (*(v34 + 8))(v91, v32);
  }

  return v41;
}

uint64_t sub_1BCAA3450()
{
  v1 = OUTLINED_FUNCTION_25_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_8_15();
  v5 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(v4);
  v6 = OUTLINED_FUNCTION_14(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_16_14();
  sub_1BCE19280();
  v7 = OUTLINED_FUNCTION_9_13();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  static Set<>.full.getter();
  OUTLINED_FUNCTION_20_6();

  OUTLINED_FUNCTION_21_6();
  sub_1BCE1A3E0();
  sub_1BCE1A3A0();
  v11 = OUTLINED_FUNCTION_7_20();
  sub_1BCB37580(v11, v12, v13, v14);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_1_15();
  sub_1BCAA38B0(v0, v15);
  return OUTLINED_FUNCTION_7_12();
}

uint64_t sub_1BCAA355C()
{
  v1 = OUTLINED_FUNCTION_25_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_8_15();
  v5 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(v4);
  v6 = OUTLINED_FUNCTION_14(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_16_14();
  sub_1BCE19280();
  v7 = OUTLINED_FUNCTION_9_13();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  static Set<>.full.getter();
  OUTLINED_FUNCTION_20_6();

  OUTLINED_FUNCTION_21_6();
  sub_1BCE1A3E0();
  sub_1BCE1A3A0();
  v11 = OUTLINED_FUNCTION_7_20();
  sub_1BCB37580(v11, v12, v13, v14);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_1_15();
  sub_1BCAA38B0(v0, v15);
  return OUTLINED_FUNCTION_7_12();
}

uint64_t sub_1BCAA3668()
{
  v1 = OUTLINED_FUNCTION_25_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_8_15();
  v5 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(v4);
  v6 = OUTLINED_FUNCTION_14(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_16_14();
  sub_1BCE19280();
  v7 = OUTLINED_FUNCTION_9_13();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  static Set<>.full.getter();
  OUTLINED_FUNCTION_20_6();

  OUTLINED_FUNCTION_21_6();
  sub_1BCE1A3E0();
  sub_1BCE1A3A0();
  v11 = OUTLINED_FUNCTION_7_20();
  sub_1BCB37580(v11, v12, v13, v14);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_1_15();
  sub_1BCAA38B0(v0, v15);
  return OUTLINED_FUNCTION_7_12();
}

void sub_1BCAA3780(uint64_t a1, uint64_t *a2, void *a3)
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v5 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_7();
  v6 = sub_1BCE18B60();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

uint64_t sub_1BCAA384C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionsComplicationHourlyViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCAA38B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SunriseSunsetBackgroundStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetBackgroundStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1BCAA3A80(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA95544();
  v4 = v3;
  sub_1BCAA4210();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3BB800000000000;
  *(a1 + 80) = xmmword_1BCE3F410;
  *(a1 + 96) = xmmword_1BCE49BB0;
  *(a1 + 112) = 0x3E3D70A43E051EB8;
  *(a1 + 128) = xmmword_1BCE44E30;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE49BC0;
  *(a1 + 176) = 1136525312;
  *(a1 + 184) = 0x3DE147AE3D75C28FLL;
  *(a1 + 192) = xmmword_1BCE44E50;
  *(a1 + 208) = xmmword_1BCE44E60;
  *(a1 + 224) = xmmword_1BCE44E70;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = vdup_n_s32(0x3ECCCCCDu);
  *(a1 + 720) = 0x41AAC290418C0000;
  *(a1 + 728) = 1094713344;
  *(a1 + 736) = 1;
  *(a1 + 744) = 12;
  *(a1 + 752) = xmmword_1BCE48B20;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = vdup_n_s32(0x3F19999Au);
  *(a1 + 848) = 0x419C0000418C0000;
  *(a1 + 856) = 1097859072;
  *(a1 + 864) = 1;
  *(a1 + 872) = 12;
  *(a1 + 880) = xmmword_1BCE48B30;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF53202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE792E0;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x415A8F5C40E00000;
  *(a1 + 984) = 1076315424;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF4C202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE798E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 1084503840;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE49BD0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3F3333333ECCCCCDLL;
  *(a1 + 1296) = 0x40E0000042340000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE44E90;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1634) = 0;
  *(a1 + 1630) = 0;
  *(a1 + 1636) = 1;
  *(v2 + 201) = 0;
  *(a1 + 1645) = 16843009;
  *(a1 + 1649) = 1;
  *(a1 + 1650) = 0;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 9;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE49BE0;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1082130432;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3F500;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3DB851EC3D0F5C29;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4059999A40400000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

double sub_1BCAA4210()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x420C000043FA0000;
  *(v0 + 80) = xmmword_1BCE48B60;
  *(v0 + 96) = xmmword_1BCE3E150;
  *(v0 + 112) = xmmword_1BCE44EB0;
  *(v0 + 128) = xmmword_1BCE44EC0;
  *(v0 + 144) = xmmword_1BCE43250;
  *(v0 + 160) = xmmword_1BCE43260;
  *(v0 + 2928) = xmmword_1BCE49BF0;
  *(v0 + 2944) = xmmword_1BCE49C00;
  *(v0 + 2960) = xmmword_1BCE49C10;
  *(v0 + 2976) = xmmword_1BCE49C20;
  *(v0 + 3024) = xmmword_1BCE49C30;
  *(v0 + 3040) = xmmword_1BCE49C40;
  *(v0 + 3792) = xmmword_1BCE3E270;
  *(v0 + 3920) = xmmword_1BCE48E30;
  *(v0 + 4144) = xmmword_1BCE49C50;
  *(v0 + 4160) = xmmword_1BCE49C60;
  *(v0 + 4176) = xmmword_1BCE49C70;
  *(v0 + 4192) = xmmword_1BCE49C80;
  *(v0 + 4208) = xmmword_1BCE49080;
  *(v0 + 4256) = xmmword_1BCE490B0;
  *(v0 + 5360) = xmmword_1BCE49C90;
  *(v0 + 5376) = xmmword_1BCE49CA0;
  *(v0 + 5392) = xmmword_1BCE49CB0;
  *(v0 + 5408) = xmmword_1BCE49CC0;
  *(v0 + 5424) = xmmword_1BCE49CD0;
  *(v0 + 5440) = xmmword_1BCE49CE0;
  *(v0 + 5456) = xmmword_1BCE49CF0;
  *(v0 + 5472) = xmmword_1BCE49D00;
  *(v0 + 4912) = xmmword_1BCE3FD40;
  *(v0 + 6128) = xmmword_1BCE3FD40;
  *(v0 + 4944) = xmmword_1BCE48F00;
  *(v0 + 6160) = xmmword_1BCE48F00;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5184) = xmmword_1BCE40200;
  *(v0 + 6400) = xmmword_1BCE40200;
  *(v0 + 5232) = xmmword_1BCE48A00;
  *(v0 + 6448) = xmmword_1BCE48A00;
  *(v0 + 4032) = 1065353216;
  *(v0 + 5248) = 1065353216;
  *(v0 + 6464) = 1065353216;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 6576) = xmmword_1BCE49D10;
  *(v0 + 6592) = xmmword_1BCE49D20;
  *(v0 + 6608) = xmmword_1BCE49D30;
  *(v0 + 6624) = xmmword_1BCE49D40;
  *(v0 + 6640) = xmmword_1BCE490E0;
  *(v0 + 6656) = xmmword_1BCE49D50;
  *(v0 + 6672) = xmmword_1BCE49D60;
  *(v0 + 6688) = xmmword_1BCE49D70;
  *(v0 + 5920) = xmmword_1BCE48FE0;
  *(v0 + 7136) = xmmword_1BCE48FE0;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1150681088;
  *(v0 + 4928) = 1150681088;
  *(v0 + 6144) = 1150681088;
  *(v0 + 7360) = 1150681088;
  *(v0 + 3728) = xmmword_1BCE48E20;
  *(v0 + 7376) = xmmword_1BCE48E20;
  *(v0 + 7440) = xmmword_1BCE43370;
  *(v0 + 7568) = xmmword_1BCE49D80;
  *(v0 + 3968) = xmmword_1BCE48E40;
  *(v0 + 7616) = xmmword_1BCE48E40;
  *(v0 + 4016) = xmmword_1BCE48E50;
  *(v0 + 7664) = xmmword_1BCE48E50;
  *(v0 + 7680) = 0x268888893F800000;
  *(v0 + 4048) = xmmword_1BCE3E2F0;
  *(v0 + 7696) = xmmword_1BCE3E2F0;
  *(v0 + 5872) = xmmword_1BCE48FD0;
  *(v0 + 7088) = xmmword_1BCE48FD0;
  *(v0 + 7792) = xmmword_1BCE48FD0;
  *(v0 + 7824) = xmmword_1BCE49D90;
  *(v0 + 7840) = xmmword_1BCE49DA0;
  *(v0 + 7856) = xmmword_1BCE49DB0;
  *(v0 + 4224) = xmmword_1BCE49090;
  *(v0 + 7872) = xmmword_1BCE49090;
  *(v0 + 4240) = xmmword_1BCE490A0;
  *(v0 + 7888) = xmmword_1BCE490A0;
  *(v0 + 7904) = xmmword_1BCE49DC0;
  *(v0 + 4656) = xmmword_1BCE48EE0;
  *(v0 + 8304) = xmmword_1BCE48EE0;
  *(v0 + 4672) = xmmword_1BCE48EF0;
  *(v0 + 8320) = xmmword_1BCE48EF0;
  v1 = vdupq_n_s64(0x3FECCCCCC0000000uLL);
  *(v0 + 4688) = v1;
  *(v0 + 8336) = v1;
  *(v0 + 4704) = xmmword_1BCE3CD20;
  *(v0 + 8352) = xmmword_1BCE3CD20;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1143930880;
  *(v0 + 8576) = 1143930880;
  *(v0 + 2512) = xmmword_1BCE48D20;
  *(v0 + 8592) = xmmword_1BCE48D20;
  *(v0 + 2544) = xmmword_1BCE48D30;
  *(v0 + 3760) = xmmword_1BCE48D30;
  *(v0 + 4976) = xmmword_1BCE48D30;
  *(v0 + 6192) = xmmword_1BCE48D30;
  *(v0 + 7408) = xmmword_1BCE48D30;
  *(v0 + 8624) = xmmword_1BCE48D30;
  *(v0 + 2560) = xmmword_1BCE3F930;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 4992) = xmmword_1BCE3F930;
  *(v0 + 6208) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 8640) = xmmword_1BCE3F930;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 8656) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2704) = xmmword_1BCE48D40;
  *(v0 + 8784) = xmmword_1BCE48D40;
  *(v0 + 2736) = xmmword_1BCE48D50;
  *(v0 + 8816) = xmmword_1BCE48D50;
  *(v0 + 2752) = xmmword_1BCE48D60;
  *(v0 + 8832) = xmmword_1BCE48D60;
  *(v0 + 2768) = xmmword_1BCE44F40;
  *(v0 + 8848) = xmmword_1BCE44F40;
  *(v0 + 2800) = xmmword_1BCE48D70;
  *(v0 + 8880) = xmmword_1BCE48D70;
  *(v0 + 9008) = xmmword_1BCE48D80;
  *(v0 + 9040) = xmmword_1BCE48D80;
  *(v0 + 7808) = xmmword_1BCE40020;
  *(v0 + 9056) = xmmword_1BCE40020;
  *(v0 + 2992) = xmmword_1BCE48D90;
  *(v0 + 9072) = xmmword_1BCE48D90;
  *(v0 + 9104) = xmmword_1BCE48DA0;
  *(v0 + 9120) = xmmword_1BCE48DB0;
  *(v0 + 3440) = xmmword_1BCE48E00;
  *(v0 + 9520) = xmmword_1BCE48E00;
  *(v0 + 3456) = xmmword_1BCE3ECB0;
  *(v0 + 9536) = xmmword_1BCE3ECB0;
  *(v0 + 3472) = xmmword_1BCE48E10;
  *(v0 + 9552) = xmmword_1BCE48E10;
  *(v0 + 3488) = xmmword_1BCE3DA70;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5888) = xmmword_1BCE3DA70;
  *(v0 + 6304) = xmmword_1BCE3DA70;
  *(v0 + 7104) = xmmword_1BCE3DA70;
  *(v0 + 9024) = xmmword_1BCE3DA70;
  *(v0 + 9568) = xmmword_1BCE3DA70;
  *(v0 + 1264) = xmmword_1BCE3F6C0;
  *(v0 + 9776) = xmmword_1BCE3F6C0;
  *(v0 + 1280) = 0x41200000442F0000;
  *(v0 + 9792) = 0x41200000442F0000;
  *(v0 + 1328) = xmmword_1BCE48C40;
  *(v0 + 9840) = xmmword_1BCE48C40;
  *(v0 + 1344) = xmmword_1BCE48C50;
  *(v0 + 9856) = xmmword_1BCE48C50;
  *(v0 + 1360) = xmmword_1BCE432E0;
  *(v0 + 9872) = xmmword_1BCE432E0;
  *(v0 + 1376) = xmmword_1BCE432F0;
  *(v0 + 9888) = xmmword_1BCE432F0;
  *(v0 + 1440) = xmmword_1BCE3DCB0;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 8736) = xmmword_1BCE3DCB0;
  *(v0 + 9952) = xmmword_1BCE3DCB0;
  *(v0 + 1488) = xmmword_1BCE48C60;
  *(v0 + 10000) = xmmword_1BCE48C60;
  *(v0 + 1520) = xmmword_1BCE48C70;
  *(v0 + 10032) = xmmword_1BCE48C70;
  *(v0 + 1536) = xmmword_1BCE3ED10;
  *(v0 + 10048) = xmmword_1BCE3ED10;
  *(v0 + 1552) = xmmword_1BCE48C80;
  *(v0 + 10064) = xmmword_1BCE48C80;
  *(v0 + 1568) = xmmword_1BCE48C90;
  *(v0 + 10080) = xmmword_1BCE48C90;
  *(v0 + 1584) = xmmword_1BCE3CA10;
  *(v0 + 10096) = xmmword_1BCE3CA10;
  *(v0 + 1728) = xmmword_1BCE49060;
  *(v0 + 10240) = xmmword_1BCE49060;
  *(v0 + 1744) = xmmword_1BCE48CC0;
  *(v0 + 10256) = xmmword_1BCE48CC0;
  *(v0 + 1760) = xmmword_1BCE48CD0;
  *(v0 + 10272) = xmmword_1BCE48CD0;
  *(v0 + 1792) = xmmword_1BCE49070;
  *(v0 + 10304) = xmmword_1BCE49070;
  *(v0 + 1824) = xmmword_1BCE41640;
  *(v0 + 10336) = xmmword_1BCE41640;
  *(v0 + 1712) = xmmword_1BCE48D00;
  *(v0 + 2224) = xmmword_1BCE48D00;
  *(v0 + 10224) = xmmword_1BCE48D00;
  *(v0 + 10736) = xmmword_1BCE48D00;
  *(v0 + 2256) = xmmword_1BCE48D10;
  *(v0 + 10768) = xmmword_1BCE48D10;
  __asm { FMOV            V16.2D, #1.0 }

  *(v0 + 10992) = xmmword_1BCE3F510;
  __asm { FMOV            V6.2D, #0.5 }

  *(v0 + 11008) = 0x420C000043FA0000;
  *(v0 + 208) = _Q6;
  *(v0 + 224) = xmmword_1BCE3D910;
  *(v0 + 1296) = xmmword_1BCE48B60;
  *(v0 + 9808) = xmmword_1BCE48B60;
  *(v0 + 11024) = xmmword_1BCE48B60;
  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 2528) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 4960) = xmmword_1BCE3E150;
  *(v0 + 6176) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 8608) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  *(v0 + 240) = xmmword_1BCE43270;
  *(v0 + 256) = xmmword_1BCE43280;
  *(v0 + 11056) = xmmword_1BCE44EB0;
  *(v0 + 11072) = xmmword_1BCE44EC0;
  *(v0 + 272) = xmmword_1BCE48B70;
  *(v0 + 288) = xmmword_1BCE3FC70;
  *(v0 + 11088) = xmmword_1BCE43250;
  *(v0 + 11104) = xmmword_1BCE43260;
  *(v0 + 304) = xmmword_1BCE48B80;
  *(v0 + 320) = xmmword_1BCE3E220;
  *(v0 + 1424) = _Q6;
  *(v0 + 2640) = _Q6;
  *(v0 + 8720) = _Q6;
  *(v0 + 9936) = _Q6;
  *(v0 + 11152) = _Q6;
  *(v0 + 11168) = xmmword_1BCE3D910;
  *(v0 + 336) = xmmword_1BCE3FC90;
  *(v0 + 352) = xmmword_1BCE3CEE0;
  *(v0 + 1456) = xmmword_1BCE43270;
  *(v0 + 9968) = xmmword_1BCE43270;
  *(v0 + 11184) = xmmword_1BCE43270;
  v8 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 368) = v8;
  *(v0 + 1472) = xmmword_1BCE43280;
  *(v0 + 9984) = xmmword_1BCE43280;
  *(v0 + 11200) = xmmword_1BCE43280;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11216) = xmmword_1BCE48B70;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 11232) = xmmword_1BCE3FC70;
  result = 1.0;
  *(v0 + 11248) = xmmword_1BCE48B80;
  *(v0 + 11264) = xmmword_1BCE3E220;
  *(v0 + 11280) = xmmword_1BCE3FC90;
  *(v0 + 2784) = xmmword_1BCE3CEE0;
  *(v0 + 5216) = xmmword_1BCE3CEE0;
  *(v0 + 6432) = xmmword_1BCE3CEE0;
  *(v0 + 8368) = _Q16;
  *(v0 + 8864) = xmmword_1BCE3CEE0;
  *(v0 + 11296) = xmmword_1BCE3CEE0;
  *(v0 + 8272) = _Q16;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 2816) = v8.i64[0];
  *(v0 + 8208) = _Q16;
  *(v0 + 8224) = _Q16;
  *(v0 + 8240) = _Q16;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8896) = v8.i64[0];
  *(v0 + 11312) = v8;
  *(v0 + 8144) = _Q16;
  *(v0 + 8160) = xmmword_1BCE45000;
  *(v0 + 8176) = _Q16;
  *(v0 + 0x2000) = _Q16;
  *(v0 + 8048) = _Q16;
  *(v0 + 8064) = _Q16;
  *(v0 + 8080) = _Q16;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8112) = _Q16;
  *(v0 + 8128) = xmmword_1BCE3A880;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7968) = _Q16;
  *(v0 + 7984) = _Q16;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = _Q16;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7920) = _Q16;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q16;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 4096) = 0u;
  *(v0 + 7720) = 0;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = _Q16;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 7648) = xmmword_1BCE3DD90;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 7552) = _Q16;
  *(v0 + 7584) = _Q16;
  *(v0 + 7600) = _Q16;
  *(v0 + 7632) = _Q16;
  *(v0 + 7472) = _Q16;
  *(v0 + 7488) = _Q16;
  *(v0 + 7504) = _Q16;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q16;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 496) = xmmword_1BCE49010;
  *(v0 + 512) = xmmword_1BCE42F00;
  *(v0 + 11440) = xmmword_1BCE49010;
  *(v0 + 560) = xmmword_1BCE49020;
  *(v0 + 576) = xmmword_1BCE49030;
  *(v0 + 7368) = 1065353216;
  *(v0 + 11456) = xmmword_1BCE42F00;
  *(v0 + 7296) = _Q16;
  *(v0 + 7337) = *v15;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4031FFFFFFFFFFF6;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v15[3];
  *(v0 + 7216) = _Q16;
  *(v0 + 7232) = _Q16;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q16;
  *(v0 + 7280) = _Q16;
  *(v0 + 7120) = _Q16;
  *(v0 + 7152) = _Q16;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q16;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 1776) = xmmword_1BCE49020;
  *(v0 + 6752) = _Q16;
  *(v0 + 7024) = _Q16;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q16;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 6928) = _Q16;
  *(v0 + 6944) = xmmword_1BCE45000;
  *(v0 + 6960) = _Q16;
  *(v0 + 6976) = _Q16;
  *(v0 + 6992) = _Q16;
  *(v0 + 7008) = _Q16;
  *(v0 + 6832) = _Q16;
  *(v0 + 6848) = _Q16;
  *(v0 + 6864) = _Q16;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 6896) = _Q16;
  *(v0 + 6912) = xmmword_1BCE3A880;
  *(v0 + 6768) = _Q16;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q16;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 10288) = xmmword_1BCE49020;
  *(v0 + 11504) = xmmword_1BCE49020;
  *(v0 + 6704) = _Q16;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = _Q16;
  *(v0 + 11520) = xmmword_1BCE49030;
  *(v0 + 1808) = xmmword_1BCE48BE0;
  *(v0 + 10320) = xmmword_1BCE48BE0;
  *(v0 + 11536) = xmmword_1BCE48BE0;
  *(v0 + 592) = xmmword_1BCE48BE0;
  *(v0 + 608) = xmmword_1BCE48BF0;
  *(v0 + 11552) = xmmword_1BCE48BF0;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 6544) = _Q16;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 4000) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6352) = _Q16;
  *(v0 + 6368) = _Q16;
  *(v0 + 6384) = _Q16;
  *(v0 + 6416) = _Q16;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 6256) = _Q16;
  *(v0 + 6272) = _Q16;
  *(v0 + 6288) = _Q16;
  *(v0 + 6320) = _Q16;
  *(v0 + 6336) = _Q16;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 832) = xmmword_1BCE3A880;
  *(v0 + 864) = xmmword_1BCE45000;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 6112) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v14;
  *(v0 + 6124) = *&v14[3];
  *(v0 + 6152) = 1065353216;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = _Q16;
  *(v0 + 6064) = _Q16;
  *(v0 + 6080) = _Q16;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 5936) = _Q16;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = _Q16;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q16;
  *(v0 + 6016) = _Q16;
  *(v0 + 2048) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 5840) = _Q16;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5904) = _Q16;
  *(v0 + 5744) = _Q16;
  *(v0 + 5760) = _Q16;
  *(v0 + 5776) = _Q16;
  *(v0 + 5792) = _Q16;
  *(v0 + 5808) = _Q16;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 3264) = xmmword_1BCE3A880;
  *(v0 + 5648) = _Q16;
  *(v0 + 5680) = _Q16;
  *(v0 + 5696) = xmmword_1BCE3A880;
  *(v0 + 5712) = _Q16;
  *(v0 + 5728) = xmmword_1BCE45000;
  *(v0 + 5552) = _Q16;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5584) = _Q16;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q16;
  *(v0 + 5632) = _Q16;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5488) = _Q16;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = _Q16;
  *(v0 + 5536) = _Q16;
  *(v0 + 4480) = xmmword_1BCE3A880;
  *(v0 + 5288) = 0;
  *(v0 + 5328) = _Q16;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 9344) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10560) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 11776) = xmmword_1BCE3A880;
  *(v0 + 2080) = xmmword_1BCE45000;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 3296) = xmmword_1BCE45000;
  *(v0 + 4512) = xmmword_1BCE45000;
  *(v0 + 5136) = _Q16;
  *(v0 + 5152) = _Q16;
  *(v0 + 5168) = _Q16;
  *(v0 + 5200) = _Q16;
  *(v0 + 9376) = xmmword_1BCE45000;
  *(v0 + 10592) = xmmword_1BCE45000;
  *(v0 + 11808) = xmmword_1BCE45000;
  *(v0 + 5104) = _Q16;
  *(v0 + 5120) = _Q16;
  *(v0 + 11952) = xmmword_1BCE48C10;
  *(v0 + 1008) = xmmword_1BCE48C10;
  *(v0 + 1024) = xmmword_1BCE48C20;
  *(v0 + 5040) = _Q16;
  *(v0 + 5056) = _Q16;
  *(v0 + 5072) = _Q16;
  *(v0 + 2240) = xmmword_1BCE48C20;
  *(v0 + 3008) = xmmword_1BCE48C20;
  *(v0 + 4905) = *v13;
  *(v0 + 4908) = *&v13[3];
  *(v0 + 4936) = 1065353216;
  *(v0 + 4832) = _Q16;
  *(v0 + 4848) = _Q16;
  *(v0 + 4864) = _Q16;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 4904) = 0;
  *(v0 + 4784) = _Q16;
  *(v0 + 4800) = _Q16;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 9088) = xmmword_1BCE48C20;
  *(v0 + 10752) = xmmword_1BCE48C20;
  *(v0 + 11968) = xmmword_1BCE48C20;
  *(v0 + 1040) = xmmword_1BCE48C30;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q16;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 11984) = xmmword_1BCE48C30;
  *(v0 + 11472) = xmmword_1BCE48BA0;
  *(v0 + 528) = xmmword_1BCE48BA0;
  *(v0 + 544) = xmmword_1BCE48BB0;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4720) = _Q16;
  *(v0 + 4544) = _Q16;
  *(v0 + 4560) = _Q16;
  *(v0 + 4576) = _Q16;
  *(v0 + 4592) = _Q16;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q16;
  *(v0 + 1056) = xmmword_1BCE48BB0;
  *(v0 + 2272) = xmmword_1BCE48BB0;
  *(v0 + 4464) = _Q16;
  *(v0 + 4496) = _Q16;
  *(v0 + 4528) = _Q16;
  *(v0 + 4368) = _Q16;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q16;
  *(v0 + 4416) = _Q16;
  *(v0 + 4432) = _Q16;
  *(v0 + 10784) = xmmword_1BCE48BB0;
  *(v0 + 11488) = xmmword_1BCE48BB0;
  *(v0 + 12000) = xmmword_1BCE48BB0;
  *(v0 + 4272) = _Q16;
  *(v0 + 4304) = _Q16;
  *(v0 + 4320) = _Q16;
  *(v0 + 4336) = _Q16;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = _Q16;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 3824) = _Q16;
  *(v0 + 3840) = _Q16;
  *(v0 + 3856) = _Q16;
  *(v0 + 3872) = xmmword_1BCE3DAE0;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 3888) = _Q16;
  *(v0 + 3904) = _Q16;
  *(v0 + 3936) = _Q16;
  *(v0 + 3952) = _Q16;
  *(v0 + 3984) = _Q16;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 9248) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 10464) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11680) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 3648) = _Q16;
  *(v0 + 3689) = *v12;
  *(v0 + 3720) = 1065353216;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4032000000000001;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v12[3];
  *(v0 + 3568) = _Q16;
  *(v0 + 3584) = _Q16;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q16;
  *(v0 + 3632) = _Q16;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3504) = _Q16;
  *(v0 + 3536) = _Q16;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3088) = _Q16;
  *(v0 + 3104) = _Q16;
  *(v0 + 3120) = _Q16;
  *(v0 + 3376) = _Q16;
  *(v0 + 3408) = _Q16;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3152) = _Q16;
  *(v0 + 3280) = _Q16;
  *(v0 + 3312) = _Q16;
  *(v0 + 3328) = _Q16;
  *(v0 + 3344) = _Q16;
  *(v0 + 3360) = _Q16;
  *(v0 + 3184) = _Q16;
  *(v0 + 3200) = _Q16;
  *(v0 + 3216) = _Q16;
  *(v0 + 3248) = _Q16;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3056) = _Q16;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 464) = _Q16;
  *(v0 + 624) = _Q16;
  *(v0 + 2896) = _Q16;
  *(v0 + 688) = _Q16;
  *(v0 + 720) = _Q16;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q16;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 768) = _Q16;
  *(v0 + 784) = _Q16;
  *(v0 + 816) = _Q16;
  *(v0 + 848) = _Q16;
  *(v0 + 944) = _Q16;
  *(v0 + 976) = _Q16;
  *(v0 + 176) = _Q16;
  *(v0 + 192) = _Q16;
  *(v0 + 400) = _Q16;
  *(v0 + 2672) = _Q16;
  *(v0 + 2688) = _Q16;
  *(v0 + 2720) = _Q16;
  *(v0 + 424) = 0;
  *(v0 + 656) = _Q16;
  *(v0 + 672) = _Q16;
  *(v0 + 2608) = _Q16;
  *(v0 + 2624) = _Q16;
  *(v0 + 752) = _Q16;
  *(v0 + 880) = _Q16;
  *(v0 + 896) = _Q16;
  *(v0 + 2400) = _Q16;
  *(v0 + 2416) = _Q16;
  *(v0 + 2473) = *v11;
  *(v0 + 2476) = *&v11[3];
  *(v0 + 2504) = 1053609165;
  *(v0 + 2432) = _Q16;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 912) = _Q16;
  *(v0 + 928) = _Q16;
  *(v0 + 1072) = _Q16;
  *(v0 + 2320) = _Q16;
  *(v0 + 2352) = _Q16;
  *(v0 + 2368) = _Q16;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 1104) = _Q16;
  *(v0 + 1136) = _Q16;
  *(v0 + 1152) = _Q16;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q16;
  *(v0 + 2288) = _Q16;
  *(v0 + 1200) = _Q16;
  *(v0 + 1216) = _Q16;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 2144) = _Q16;
  *(v0 + 2160) = _Q16;
  *(v0 + 2192) = _Q16;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 2096) = _Q16;
  *(v0 + 2112) = _Q16;
  *(v0 + 2128) = _Q16;
  *(v0 + 1257) = *v10;
  *(v0 + 2032) = _Q16;
  *(v0 + 2064) = _Q16;
  *(v0 + 1260) = *&v10[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 1936) = _Q16;
  *(v0 + 1968) = _Q16;
  *(v0 + 1984) = _Q16;
  *(v0 + 2000) = _Q16;
  *(v0 + 1392) = _Q16;
  *(v0 + 1408) = _Q16;
  *(v0 + 1840) = _Q16;
  *(v0 + 1872) = _Q16;
  *(v0 + 1888) = _Q16;
  *(v0 + 1904) = _Q16;
  *(v0 + 1504) = _Q16;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q16;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = _Q16;
  *(v0 + 8400) = _Q16;
  *(v0 + 8432) = _Q16;
  *(v0 + 8448) = _Q16;
  *(v0 + 8480) = _Q16;
  *(v0 + 8496) = _Q16;
  *(v0 + 8512) = _Q16;
  *(v0 + 8688) = _Q16;
  *(v0 + 8704) = _Q16;
  *(v0 + 8752) = _Q16;
  *(v0 + 8768) = _Q16;
  *(v0 + 8800) = _Q16;
  *(v0 + 8912) = _Q16;
  *(v0 + 8976) = _Q16;
  *(v0 + 9136) = _Q16;
  *(v0 + 9168) = _Q16;
  *(v0 + 9184) = _Q16;
  *(v0 + 9200) = _Q16;
  *(v0 + 9232) = _Q16;
  *(v0 + 9264) = _Q16;
  *(v0 + 9280) = _Q16;
  *(v0 + 9296) = _Q16;
  *(v0 + 9328) = _Q16;
  *(v0 + 9360) = _Q16;
  *(v0 + 9392) = _Q16;
  *(v0 + 9408) = _Q16;
  *(v0 + 9424) = _Q16;
  *(v0 + 9440) = _Q16;
  *(v0 + 9456) = _Q16;
  *(v0 + 9488) = _Q16;
  *(v0 + 9584) = _Q16;
  *(v0 + 9616) = _Q16;
  *(v0 + 9648) = _Q16;
  *(v0 + 9664) = _Q16;
  *(v0 + 9696) = _Q16;
  *(v0 + 9712) = _Q16;
  *(v0 + 9728) = _Q16;
  *(v0 + 9904) = _Q16;
  *(v0 + 9920) = _Q16;
  *(v0 + 10016) = _Q16;
  *(v0 + 10128) = _Q16;
  *(v0 + 10192) = _Q16;
  *(v0 + 10352) = _Q16;
  *(v0 + 10384) = _Q16;
  *(v0 + 10400) = _Q16;
  *(v0 + 10416) = _Q16;
  *(v0 + 10448) = _Q16;
  *(v0 + 10480) = _Q16;
  *(v0 + 10496) = _Q16;
  *(v0 + 10512) = _Q16;
  *(v0 + 10544) = _Q16;
  *(v0 + 10576) = _Q16;
  *(v0 + 10608) = _Q16;
  *(v0 + 10624) = _Q16;
  *(v0 + 10640) = _Q16;
  *(v0 + 10656) = _Q16;
  *(v0 + 10672) = _Q16;
  *(v0 + 10704) = _Q16;
  *(v0 + 10800) = _Q16;
  *(v0 + 10832) = _Q16;
  *(v0 + 10864) = _Q16;
  *(v0 + 10880) = _Q16;
  *(v0 + 10912) = _Q16;
  *(v0 + 10928) = _Q16;
  *(v0 + 10944) = _Q16;
  *(v0 + 11120) = _Q16;
  *(v0 + 11136) = _Q16;
  *(v0 + 11344) = _Q16;
  *(v0 + 11408) = _Q16;
  *(v0 + 11568) = _Q16;
  *(v0 + 11600) = _Q16;
  *(v0 + 11616) = _Q16;
  *(v0 + 11632) = _Q16;
  *(v0 + 11664) = _Q16;
  *(v0 + 11696) = _Q16;
  *(v0 + 11712) = _Q16;
  *(v0 + 11728) = _Q16;
  *(v0 + 11760) = _Q16;
  *(v0 + 11792) = _Q16;
  *(v0 + 11824) = _Q16;
  *(v0 + 11840) = _Q16;
  *(v0 + 11856) = _Q16;
  *(v0 + 11872) = _Q16;
  *(v0 + 11888) = _Q16;
  *(v0 + 11920) = _Q16;
  *(v0 + 12016) = _Q16;
  *(v0 + 12048) = _Q16;
  *(v0 + 12080) = _Q16;
  *(v0 + 12096) = _Q16;
  *(v0 + 12128) = _Q16;
  *(v0 + 12144) = _Q16;
  *(v0 + 12160) = _Q16;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC018000000000000;
  *(v0 + 8552) = 1;
  *(v0 + 8553) = *v16;
  *(v0 + 8556) = *&v16[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 9769) = *v17;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v17[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v18;
  *(v0 + 10988) = *&v18[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

void (*sub_1BCAA5428(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1BCE1AE70();
  return sub_1BCAA54EC;
}

void (*sub_1BCAA548C(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1BCE1AE20();
  return sub_1BCAA54E8;
}

uint64_t sub_1BCAA54F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v363 = sub_1BCE199B0();
  OUTLINED_FUNCTION_2();
  v360 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_0();
  v362 = v13;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v14);
  v361 = &v336 - v15;
  OUTLINED_FUNCTION_13();
  v388 = sub_1BCE199D0();
  OUTLINED_FUNCTION_2();
  v393 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_0();
  v353 = v18;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v19);
  v385 = &v336 - v20;
  OUTLINED_FUNCTION_13();
  v381 = sub_1BCE18EE0();
  OUTLINED_FUNCTION_2();
  v389 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v380 = v23;
  OUTLINED_FUNCTION_13();
  v378 = sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v387 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_1();
  v377 = v26;
  OUTLINED_FUNCTION_13();
  v376 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v386 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_1();
  v375 = v29;
  OUTLINED_FUNCTION_13();
  v390 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v373 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_0();
  v354 = v32;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6_1();
  v359 = v34;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_6_1();
  v350 = v36;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6_1();
  v349 = v38;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_6_1();
  v379 = v40;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08698);
  MEMORY[0x1EEE9AC00](v42 - 8);
  OUTLINED_FUNCTION_3_0();
  v358 = v43;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_6_1();
  v366 = v45;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_6_1();
  v367 = v47;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_6_1();
  v351 = v49;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_6_1();
  v357 = v51;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_6_1();
  v384 = v53;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v336 - v55;
  v57 = sub_1BCE195D0();
  OUTLINED_FUNCTION_2();
  v383 = v58;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_3_0();
  v382 = v60;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_6_1();
  v352 = v62;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_6_1();
  v356 = v64;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v65);
  v392 = &v336 - v66;
  v67 = *a3;
  v374 = a3[1];
  v68 = a3[2];
  v69 = a3[3];
  v364 = v67;
  v365 = v68;
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v372 = a2;
  v391 = a4;
  v398[0] = sub_1BC981768(a1, a2);

  sub_1BCAA8364(v398);

  v70 = v398[0];
  sub_1BCA13FA4(v398[0], v56);
  OUTLINED_FUNCTION_41_0(v56, 1);
  if (v71)
  {

    result = sub_1BCAA840C(v56);
    *a5 = 0u;
    *(a5 + 1) = 0u;
    return result;
  }

  v342 = v69;
  v73 = *(v383 + 32);
  v74 = v392;
  v370 = v57;
  v343 = v73;
  v344 = v383 + 32;
  v75 = (v73)(v392, v56, v57);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_28();
  *(v76 - 16) = v74;
  sub_1BCA14764(sub_1BCAA8474, v77, v70);
  v79 = v78;
  sub_1BCE195A0();
  v80 = static Date.uses24HourTime()();
  v347 = v79;
  v348 = a5;
  if (v80)
  {
    v81 = v373;
    if (qword_1EDA1EBE8 != -1)
    {
      OUTLINED_FUNCTION_1_16();
    }

    v82 = &qword_1EDA2F018;
  }

  else
  {
    v81 = v373;
    if (qword_1EDA1EF50 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v82 = &qword_1EDA2F040;
  }

  v83 = *v82;

  OUTLINED_FUNCTION_34_0();
  v84 = v377;
  sub_1BCE19270();
  v85 = *(v386 + 8);
  v386 += 8;
  v340 = v85;
  v85(v74, v376);
  v86 = sub_1BCE19240();
  v87 = *(v387 + 8);
  v387 += 8;
  v341 = v87;
  v87(v84, v378);
  OUTLINED_FUNCTION_33_0();
  v88 = sub_1BC9600B0();
  v90 = v89;
  if (v86)
  {
    v398[0] = v88;
    v398[1] = v89;
    v396 = 11501794;
    v397 = 0xA300000000000000;
    v394 = 0;
    v395 = 0xE000000000000000;
    sub_1BC970820();
    OUTLINED_FUNCTION_5_17();
    v368 = sub_1BCE1DB90();
    v92 = v91;

    v93 = OUTLINED_FUNCTION_31_1();
    v94(v93);

    v90 = v92;
  }

  else
  {
    v368 = v88;

    v96 = OUTLINED_FUNCTION_31_1();
    v95 = v97(v96);
  }

  v371 = v90;
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_28();
  v98 = v392;
  *(v99 - 16) = v392;
  sub_1BCAD0F84();
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v100 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_9_3();
  sub_1BCE18B60();

  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BCE43610;
  v102 = v379;
  sub_1BCE195A0();
  v103 = v380;
  sub_1BCB12BA8();
  v104 = sub_1BCE18F30();
  v105 = *(v389 + 8);
  v389 += 8;
  v346 = v105;
  v105(v103, v381);
  v355 = (v81 + 8);
  (v373)(v102, v390);
  *(inited + 32) = v104;
  *(inited + 40) = 0;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  OUTLINED_FUNCTION_32_1();
  sub_1BCE195C0();
  sub_1BCE19550();
  OUTLINED_FUNCTION_24_4();
  String.beginsWithFirstArgument.getter();
  OUTLINED_FUNCTION_8_16();
  sub_1BCE19970();
  OUTLINED_FUNCTION_26_3();
  v106 = *(v393 + 8);
  v393 += 8;
  v369 = v106;
  v106(v102, v388);
  *(inited + 72) = v102;
  *(inited + 80) = v103;
  *(inited + 88) = 0;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  v107 = v371;
  *(inited + 112) = v368;
  *(inited + 120) = v107;
  *(inited + 128) = 0;
  *(inited + 136) = 0;
  *(inited + 144) = 3;
  swift_bridgeObjectRetain_n();
  v108 = OUTLINED_FUNCTION_24_4();
  v110 = sub_1BC97FC70(v108, v109, inited);
  v112 = v111;
  v113 = OUTLINED_FUNCTION_24_4();
  v338 = sub_1BC9807F0(v113, v114, inited);
  v116 = v115;
  swift_setDeallocating();
  sub_1BC9811E0();

  v118 = v347;
  if (!*(v347 + 16))
  {

    if (!v374)
    {
      v337 = v110;

      v225 = v384;
      v226 = v357;
      sub_1BCAA8518(v384, v357);
      v227 = v370;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v226, 1, v370);
      v229 = v392;
      if (EnumTagSinglePayload == 1)
      {

        sub_1BCAA840C(v225);
        sub_1BCAA840C(v226);
        v230 = *(v383 + 8);
        v231 = v348;
      }

      else
      {
        v339 = v112;
        v237 = v356;
        v238 = v343;
        v239 = (v343)(v356, v226, v227);
        MEMORY[0x1EEE9AC00](v239);
        v240 = v351;
        sub_1BCAD0F84();
        v241 = v240;
        v242 = __swift_getEnumTagSinglePayload(v240, 1, v227);
        v231 = v348;
        if (v242 == 1)
        {

          sub_1BCAA840C(v225);
          sub_1BCAA840C(v241);
          v230 = *(v383 + 8);
          v230(v237, v227);
        }

        else
        {
          v293 = v352;
          v238(v352, v241, v227);
          OUTLINED_FUNCTION_32_1();
          sub_1BCE195C0();
          v294 = sub_1BCE19910();
          v369(&v336, v388);
          if (v294)
          {

            v295 = qword_1EDA1EFB8;
            OUTLINED_FUNCTION_9_3();
            v296 = sub_1BCE18B60();
            v298 = v297;

            v299 = swift_allocObject();
            *(v299 + 16) = xmmword_1BCE44180;
            v300 = v379;
            sub_1BCE195A0();
            sub_1BCB12BA8();
            sub_1BCE18F30();
            OUTLINED_FUNCTION_11_14();
            v301();
            v302 = v373;
            (v373)(v300, v390);
            OUTLINED_FUNCTION_15_10();
            sub_1BCE195C0();
            sub_1BCE19550();
            v389 = v296;
            String.beginsWithFirstArgument.getter();
            OUTLINED_FUNCTION_8_16();
            sub_1BCE19970();
            OUTLINED_FUNCTION_26_3();
            OUTLINED_FUNCTION_10_14();
            v303();
            OUTLINED_FUNCTION_7_21();
            v304 = v371;
            *(v299 + 112) = v368;
            *(v299 + 120) = v304;
            OUTLINED_FUNCTION_22_4();
            sub_1BCE195A0();
            v305 = static Date.uses24HourTime()();
            v382 = v298;
            if (v305)
            {
              if (qword_1EDA1EBE8 != -1)
              {
                OUTLINED_FUNCTION_1_16();
              }

              v306 = &qword_1EDA2F018;
            }

            else
            {
              if (qword_1EDA1EF50 != -1)
              {
                OUTLINED_FUNCTION_0_0();
              }

              v306 = &qword_1EDA2F040;
            }

            v308 = *v306;

            OUTLINED_FUNCTION_34_0();
            sub_1BCE19270();
            v309 = OUTLINED_FUNCTION_13_13();
            v310(v309);
            v311 = sub_1BCE19240();
            OUTLINED_FUNCTION_23_5();
            v312();
            v313 = v349;
            OUTLINED_FUNCTION_33_0();
            v314 = sub_1BC9600B0();
            v316 = v314;
            v317 = v315;
            if (v311)
            {
              v396 = v314;
              v397 = v315;
              v394 = 11501794;
              OUTLINED_FUNCTION_40_2(0xA300000000000000);
              OUTLINED_FUNCTION_3_22();
              v336 = MEMORY[0x1E69E6158];
              OUTLINED_FUNCTION_5_17();
              sub_1BCE1DB90();
              OUTLINED_FUNCTION_39();

              v318 = OUTLINED_FUNCTION_35_3();
              v302(v318);

              v317 = v311;
            }

            else
            {

              v319 = OUTLINED_FUNCTION_35_3();
              v302(v319);
            }

            *(v299 + 152) = v316;
            *(v299 + 160) = v317;
            *(v299 + 168) = 0;
            *(v299 + 176) = 0;
            *(v299 + 184) = 3;
            sub_1BCE195A0();
            if (static Date.uses24HourTime()())
            {
              if (qword_1EDA1EBE8 != -1)
              {
                OUTLINED_FUNCTION_1_16();
              }

              v320 = &qword_1EDA2F018;
            }

            else
            {
              if (qword_1EDA1EF50 != -1)
              {
                OUTLINED_FUNCTION_0_0();
              }

              v320 = &qword_1EDA2F040;
            }

            v321 = v320[1];
            v322 = *v320;

            OUTLINED_FUNCTION_34_0();
            sub_1BCE19270();
            v323 = OUTLINED_FUNCTION_13_13();
            v324(v323);
            v325 = sub_1BCE19240();
            OUTLINED_FUNCTION_23_5();
            v326();
            v327 = v350;
            OUTLINED_FUNCTION_33_0();
            v328 = sub_1BC9600B0();
            v330 = v328;
            v331 = v329;
            if (v325)
            {
              v396 = v328;
              v397 = v329;
              v394 = 11501794;
              OUTLINED_FUNCTION_40_2(0xA300000000000000);
              OUTLINED_FUNCTION_3_22();
              v336 = MEMORY[0x1E69E6158];
              OUTLINED_FUNCTION_5_17();
              sub_1BCE1DB90();
              OUTLINED_FUNCTION_39();

              v313(v327, v390);

              v331 = v325;
            }

            else
            {

              v313(v327, v390);
            }

            v332 = v356;
            *(v299 + 192) = v330;
            *(v299 + 200) = v331;
            *(v299 + 208) = 0;
            *(v299 + 216) = 0;
            *(v299 + 224) = 3;
            v333 = v389;
            v334 = v382;
            sub_1BC97FC70(v389, v382, v299);
            OUTLINED_FUNCTION_16_4();
            sub_1BC9807F0(v333, v334, v299);
            OUTLINED_FUNCTION_27_3();
            sub_1BC9811E0();

            v213 = *(v383 + 8);
            v214 = v370;
            v213(v352, v370);
            sub_1BCAA840C(v384);
            v335 = v348;
            *v348 = v322;
            v335[1] = v321;
            v335[2] = v327;
            v335[3] = v331;
            v213(v332, v214);
            return (v213)(v392, v214);
          }

          v230 = *(v383 + 8);
          v230(v293, v227);
          sub_1BCAA840C(v225);
          v230(v356, v227);
        }

        v112 = v339;
        v229 = v392;
      }

      v307 = v338;
      *v231 = v337;
      v231[1] = v112;
      v231[2] = v307;
      v231[3] = v116;
      return (v230)(v229, v227);
    }

    v122 = v385;
    v123 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_19_7();
    OUTLINED_FUNCTION_6_17();

    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_1BCE3E040;
    v125 = v392;
    sub_1BCE195A0();
    sub_1BCB12BA8();
    sub_1BCE18F30();
    OUTLINED_FUNCTION_11_14();
    v126();
    OUTLINED_FUNCTION_18_9();
    v127();
    OUTLINED_FUNCTION_15_10();
    sub_1BCE195C0();
    sub_1BCE19550();
    OUTLINED_FUNCTION_10_2();
    String.beginsWithFirstArgument.getter();
    OUTLINED_FUNCTION_8_16();
    sub_1BCE19970();
    OUTLINED_FUNCTION_26_3();
    v369(v122, v388);
    OUTLINED_FUNCTION_7_21();
    *(v124 + 112) = v368;
    *(v124 + 120) = v107;
    OUTLINED_FUNCTION_22_4();
    v128 = v364;
    v129 = v374;
    *(v124 + 152) = v364;
    *(v124 + 160) = v129;
    OUTLINED_FUNCTION_21_7();

    sub_1BCAA84D4(v128, v129);
    v130 = OUTLINED_FUNCTION_12_14();
    sub_1BC97FC70(v130, v131, v132);
    OUTLINED_FUNCTION_16_4();
    v133 = OUTLINED_FUNCTION_12_14();
    sub_1BC9807F0(v133, v134, v135);
    OUTLINED_FUNCTION_27_3();
    sub_1BC9811E0();

    sub_1BCAA840C(v384);
    OUTLINED_FUNCTION_29_5();
    v136 = *(v383 + 8);
    v137 = v125;
    goto LABEL_27;
  }

  v337 = v110;
  v339 = v112;
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_28();
  *(v119 - 16) = v98;
  v120 = v366;
  sub_1BCAD1274();
  v121 = v370;
  OUTLINED_FUNCTION_41_0(v120, 1);
  if (v71)
  {
    v138 = v367;
    sub_1BCA13FA4(v118, v367);

    OUTLINED_FUNCTION_41_0(v120, 1);
    v140 = v382;
    v139 = v343;
    if (!v71)
    {
      sub_1BCAA840C(v120);
    }
  }

  else
  {

    v138 = v367;
    v139 = v343;
    v343(v367, v120, v121);
    __swift_storeEnumTagSinglePayload(v138, 0, 1, v121);
    v140 = v382;
  }

  OUTLINED_FUNCTION_41_0(v138, 1);
  if (v71)
  {

    sub_1BCAA840C(v138);
    if (!v374)
    {
      sub_1BCAA840C(v384);

      v232 = v348;
      v233 = v338;
      v234 = v339;
      *v348 = v337;
      v232[1] = v234;
      v232[2] = v233;
      v232[3] = v116;
      v136 = *(v383 + 8);
      v137 = v392;
      v156 = v121;
      return v136(v137, v156);
    }

    v141 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_19_7();
    OUTLINED_FUNCTION_6_17();

    v142 = swift_initStackObject();
    *(v142 + 16) = xmmword_1BCE3E040;
    v143 = v392;
    sub_1BCE195A0();
    sub_1BCB12BA8();
    sub_1BCE18F30();
    OUTLINED_FUNCTION_11_14();
    v144();
    OUTLINED_FUNCTION_18_9();
    v145();
    OUTLINED_FUNCTION_15_10();
    sub_1BCE195C0();
    sub_1BCE19550();
    OUTLINED_FUNCTION_10_2();
    String.beginsWithFirstArgument.getter();
    OUTLINED_FUNCTION_8_16();
    sub_1BCE19970();
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_10_14();
    v146();
    OUTLINED_FUNCTION_7_21();
    v147 = v371;
    *(v142 + 112) = v368;
    *(v142 + 120) = v147;
    OUTLINED_FUNCTION_22_4();
    v148 = v364;
    v149 = v374;
    *(v142 + 152) = v364;
    *(v142 + 160) = v149;
    OUTLINED_FUNCTION_21_7();

    sub_1BCAA84D4(v148, v149);
    v150 = OUTLINED_FUNCTION_12_14();
    sub_1BC97FC70(v150, v151, v152);
    v153 = OUTLINED_FUNCTION_12_14();
    sub_1BC9807F0(v153, v154, v155);
    OUTLINED_FUNCTION_27_3();
    sub_1BC9811E0();

    sub_1BCAA840C(v384);
    OUTLINED_FUNCTION_29_5();
    v136 = *(v383 + 8);
    v137 = v143;
LABEL_27:
    v156 = v370;
    return v136(v137, v156);
  }

  v139(v140, v138, v121);
  sub_1BCE195A0();
  v157 = static Date.uses24HourTime()();
  if (v157)
  {
    v158 = v373;
    if (qword_1EDA1EBE8 != -1)
    {
      OUTLINED_FUNCTION_1_16();
    }

    v159 = &qword_1EDA2F018;
  }

  else
  {
    v158 = v373;
    if (qword_1EDA1EF50 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v159 = &qword_1EDA2F040;
  }

  v160 = *v159;

  OUTLINED_FUNCTION_34_0();
  sub_1BCE19270();
  v161 = OUTLINED_FUNCTION_13_13();
  v162(v161);
  v163 = sub_1BCE19240();
  OUTLINED_FUNCTION_23_5();
  v164();
  OUTLINED_FUNCTION_33_0();
  v165 = sub_1BC9600B0();
  v372 = v166;
  if (v163)
  {
    v396 = v165;
    v397 = v372;
    OUTLINED_FUNCTION_25_3();
    OUTLINED_FUNCTION_3_22();
    v336 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_5_17();
    v367 = sub_1BCE1DB90();
    v168 = v167;

    v169 = OUTLINED_FUNCTION_24_4();
    v158(v169);

    v372 = v168;
  }

  else
  {
    v367 = v165;

    v170 = OUTLINED_FUNCTION_24_4();
    v158(v170);
  }

  OUTLINED_FUNCTION_32_1();
  sub_1BCE195C0();
  v171 = v361;
  sub_1BCE199C0();
  v172 = OUTLINED_FUNCTION_10_2();
  (v369)(v172);
  v173 = *MEMORY[0x1E6984CF0];
  v174 = v360;
  v366 = *(v360 + 104);
  v175 = v362;
  v176 = v363;
  v366(v362, v173, v363);
  v177 = sub_1BCAA85AC(&qword_1EDA1BEF0, MEMORY[0x1E6984D00]);
  OUTLINED_FUNCTION_38_3();
  LODWORD(v359) = sub_1BCE1D1E0();
  v178 = *(v174 + 8);
  v178(v175, v176);
  v178(v171, v176);
  sub_1BCE195C0();
  sub_1BCE199C0();
  OUTLINED_FUNCTION_10_14();
  v179();
  v366(v175, *MEMORY[0x1E6984CF8], v176);
  OUTLINED_FUNCTION_38_3();
  v366 = v177;
  v180 = sub_1BCE1D1E0();
  v178(v175, v176);
  v178(v171, v176);
  if (v359 & 1) != 0 || (v180)
  {

    if (!v374)
    {
      goto LABEL_44;
    }

    v181 = v385;
    sub_1BCE195C0();
    v182 = v361;
    sub_1BCE199C0();
    v183 = v388;
    v184 = v369;
    v369(v181, v388);
    v185 = v353;
    sub_1BCE195C0();
    sub_1BCE199C0();
    v184(v185, v183);
    v186 = v363;
    v187 = sub_1BCE1D1E0();
    v188 = OUTLINED_FUNCTION_10_2();
    (v178)(v188);
    v178(v182, v186);
    if ((v187 & 1) == 0)
    {

      v276 = qword_1EDA1EFB8;
      OUTLINED_FUNCTION_19_7();
      OUTLINED_FUNCTION_6_17();
      v277 = v371;

      v278 = swift_initStackObject();
      *(v278 + 16) = xmmword_1BCE3E040;
      v279 = v392;
      sub_1BCE195A0();
      sub_1BCB12BA8();
      sub_1BCE18F30();
      OUTLINED_FUNCTION_11_14();
      v280();
      OUTLINED_FUNCTION_18_9();
      v281();
      OUTLINED_FUNCTION_15_10();
      sub_1BCE195C0();
      sub_1BCE19550();
      OUTLINED_FUNCTION_10_2();
      String.beginsWithFirstArgument.getter();
      OUTLINED_FUNCTION_8_16();
      sub_1BCE19970();
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_10_14();
      v282();
      OUTLINED_FUNCTION_7_21();
      *(v278 + 112) = v368;
      *(v278 + 120) = v277;
      OUTLINED_FUNCTION_22_4();
      v283 = v364;
      v284 = v374;
      *(v278 + 152) = v364;
      *(v278 + 160) = v284;
      OUTLINED_FUNCTION_21_7();

      sub_1BCAA84D4(v283, v284);
      v285 = OUTLINED_FUNCTION_12_14();
      sub_1BC97FC70(v285, v286, v287);
      OUTLINED_FUNCTION_16_4();
      v288 = OUTLINED_FUNCTION_12_14();
      sub_1BC9807F0(v288, v289, v290);
      OUTLINED_FUNCTION_27_3();
      sub_1BC9811E0();

      v291 = *(v383 + 8);
      v292 = v370;
      v291(v382, v370);
      sub_1BCAA840C(v384);
      OUTLINED_FUNCTION_29_5();
      return (v291)(v279, v292);
    }

    v189 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_19_7();
    v190 = OUTLINED_FUNCTION_6_17();
    v192 = v191;

    v193 = swift_allocObject();
    *(v193 + 16) = xmmword_1BCE3E040;
    v194 = v382;
    sub_1BCE195A0();
    sub_1BCB12BA8();
    v195 = sub_1BCE18F30();
    OUTLINED_FUNCTION_11_14();
    v196();
    OUTLINED_FUNCTION_18_9();
    v197();
    *(v193 + 32) = v195;
    *(v193 + 40) = 0;
    *(v193 + 48) = 0;
    *(v193 + 56) = 0;
    *(v193 + 64) = 0;
    sub_1BCE195C0();
    sub_1BCE19550();
    String.beginsWithFirstArgument.getter();
    OUTLINED_FUNCTION_8_16();
    v198 = sub_1BCE19970();
    v200 = v199;
    OUTLINED_FUNCTION_10_14();
    v201();
    *(v193 + 72) = v198;
    *(v193 + 80) = v200;
    *(v193 + 88) = 0;
    *(v193 + 96) = 0;
    *(v193 + 104) = 1;
    v202 = v372;
    *(v193 + 112) = v367;
    *(v193 + 120) = v202;
    *(v193 + 128) = 0;
    *(v193 + 136) = 0;
    *(v193 + 144) = 3;
    v203 = v364;
    v204 = v365;
    v205 = v374;
    *(v193 + 152) = v364;
    *(v193 + 160) = v205;
    v206 = v342;
    *(v193 + 168) = v204;
    *(v193 + 176) = v206;
    *(v193 + 184) = 5;
    sub_1BCAA84D4(v203, v205);

    v207 = sub_1BC97FC70(v190, v192, v193);
    v209 = v208;
    v210 = sub_1BC9807F0(v190, v192, v193);
    v212 = v211;
    swift_setDeallocating();
    sub_1BC9811E0();

    v213 = *(v383 + 8);
    v214 = v370;
    v213(v194, v370);
    sub_1BCAA840C(v384);
    v215 = v348;
    *v348 = v207;
    v215[1] = v209;
    v215[2] = v210;
    v215[3] = v212;
    return (v213)(v392, v214);
  }

LABEL_44:
  OUTLINED_FUNCTION_32_1();
  sub_1BCE195C0();
  sub_1BCE19550();
  v216 = sub_1BCE19960();
  v218 = v217;
  OUTLINED_FUNCTION_10_14();
  v219();
  v220 = v358;
  sub_1BCAA8518(v384, v358);
  v221 = v370;
  v222 = __swift_getEnumTagSinglePayload(v220, 1, v370);
  v374 = v216;
  v366 = v218;
  if (v222 == 1)
  {
    sub_1BCAA840C(v220);

    v387 = v367;
    v223 = v390;
    v224 = v373;
    v218 = v355;
  }

  else
  {
    sub_1BCE195A0();
    (*(v383 + 8))(v220, v221);
    v235 = static Date.uses24HourTime()();
    v223 = v390;
    if (v235)
    {
      if (qword_1EDA1EBE8 != -1)
      {
        OUTLINED_FUNCTION_1_16();
      }

      v236 = &qword_1EDA2F018;
    }

    else
    {
      if (qword_1EDA1EF50 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v236 = &qword_1EDA2F040;
    }

    v243 = *v236;

    OUTLINED_FUNCTION_34_0();
    v224 = v377;
    sub_1BCE19270();
    v244 = OUTLINED_FUNCTION_13_13();
    v245(v244);
    v246 = sub_1BCE19240();
    OUTLINED_FUNCTION_23_5();
    v247();
    OUTLINED_FUNCTION_33_0();
    v248 = sub_1BC9600B0();
    v250 = v249;
    if (v246)
    {
      v396 = v248;
      v397 = v249;
      OUTLINED_FUNCTION_25_3();
      OUTLINED_FUNCTION_3_22();
      v336 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_5_17();
      v251 = sub_1BCE1DB90();
      v386 = v252;
      v387 = v251;

      v253 = OUTLINED_FUNCTION_36_2();
      v224(v253);
    }

    else
    {
      v387 = v248;

      v254 = OUTLINED_FUNCTION_36_2();
      v224(v254);
      v386 = v250;
    }
  }

  v255 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_9_3();
  sub_1BCE18B60();

  v256 = swift_allocObject();
  *(v256 + 16) = xmmword_1BCE3E120;
  v257 = v379;
  sub_1BCE195A0();
  v258 = v380;
  sub_1BCB12BA8();
  sub_1BCE18F30();
  OUTLINED_FUNCTION_11_14();
  v259();
  (v224)(v257, v223);
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_32_1();
  v260 = v392;
  sub_1BCE195C0();
  sub_1BCE19550();
  OUTLINED_FUNCTION_24_4();
  String.beginsWithFirstArgument.getter();
  OUTLINED_FUNCTION_8_16();
  sub_1BCE19950();
  OUTLINED_FUNCTION_26_3();
  v369(v223, v388);
  OUTLINED_FUNCTION_7_21();
  v261 = v371;
  *(v256 + 112) = v368;
  *(v256 + 120) = v261;
  *(v256 + 128) = 0;
  *(v256 + 136) = 0;
  *(v256 + 144) = 3;
  v262 = v386;
  *(v256 + 152) = v387;
  *(v256 + 160) = v262;
  *(v256 + 168) = 0;
  *(v256 + 176) = 0;
  *(v256 + 184) = 3;
  v263 = v366;
  *(v256 + 192) = v374;
  *(v256 + 200) = v263;
  *(v256 + 208) = 0;
  *(v256 + 216) = 0;
  *(v256 + 224) = v264;
  v265 = v372;
  *(v256 + 232) = v367;
  *(v256 + 240) = v265;
  *(v256 + 248) = 0;
  *(v256 + 256) = 0;
  *(v256 + 264) = 3;
  v266 = OUTLINED_FUNCTION_24_4();
  v268 = sub_1BC97FC70(v266, v267, v256);
  v270 = v269;
  v271 = OUTLINED_FUNCTION_24_4();
  sub_1BC9807F0(v271, v272, v256);
  OUTLINED_FUNCTION_16_4();
  swift_setDeallocating();
  sub_1BC9811E0();

  v273 = *(v383 + 8);
  v274 = v370;
  v273(v382, v370);
  sub_1BCAA840C(v384);
  v275 = v348;
  *v348 = v268;
  v275[1] = v270;
  v275[2] = v258;
  v275[3] = v218;
  return (v273)(v260, v274);
}

BOOL sub_1BCAA7710(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v2 = sub_1BCE198D0();
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = sub_1BCE199D0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  sub_1BCE195C0();
  sub_1BCE19980();
  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_1BCE195C0();
  sub_1BCE19980();
  v15(v11, v8);
  sub_1BCAA85AC(&qword_1EDA1EB80, MEMORY[0x1E6984BF0]);
  v16 = sub_1BCE1D210();
  v17 = *(v20 + 8);
  v17(v4, v2);
  v17(v7, v2);
  return (v16 & 1) == 0;
}

uint64_t sub_1BCAA7974(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BCE198D0();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v31 - v6;
  v7 = sub_1BCE199D0();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = sub_1BCE19060();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  sub_1BCE195A0();
  v34 = a2;
  sub_1BCE195A0();
  v20 = sub_1BCE18FC0();
  v21 = *(v14 + 8);
  v21(v16, v13);
  v21(v19, v13);
  if (v20)
  {
    sub_1BCE195C0();
    v22 = v35;
    sub_1BCE19980();
    v23 = *(v32 + 8);
    v24 = v12;
    v25 = v33;
    v23(v24, v33);
    sub_1BCE195C0();
    v26 = v36;
    sub_1BCE19980();
    v23(v9, v25);
    sub_1BCAA85AC(&qword_1EDA1EB80, MEMORY[0x1E6984BF0]);
    v27 = v38;
    LOBYTE(v25) = sub_1BCE1D210();
    v28 = *(v37 + 8);
    v28(v26, v27);
    v28(v22, v27);
    v29 = v25 ^ 1;
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_1BCAA7CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v47 = a3;
  v49 = a2;
  v5 = sub_1BCE193E0();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BCE198D0();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v10;
  v43 = sub_1BCE199D0();
  v11 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = sub_1BCE19060();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  v48 = a1;
  sub_1BCE195A0();
  sub_1BCE195A0();
  LOBYTE(a1) = sub_1BCE18FC0();
  v24 = *(v18 + 8);
  v24(v20, v17);
  v49 = v17;
  v37 = v24;
  v24(v23, v17);
  if (a1 & 1) != 0 && (sub_1BCE195C0(), v25 = v42, sub_1BCE19980(), v26 = *(v11 + 8), v27 = v16, v28 = v43, v26(v27, v43), sub_1BCE195C0(), v29 = v44, sub_1BCE19980(), v26(v13, v28), v30 = sub_1BCE198C0(), v31 = v46, v32 = *(v45 + 8), v32(v29, v46), v32(v25, v31), (v30))
  {
    v33 = v38;
    sub_1BCE192A0();
    sub_1BCE195A0();
    v34 = sub_1BCE192B0();
    v37(v23, v49);
    (*(v40 + 8))(v33, v41);
  }

  else
  {
    v34 = 0;
  }

  return v34 & 1;
}

BOOL sub_1BCAA80FC(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v23 = sub_1BCE199B0();
  v2 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = sub_1BCE199D0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  sub_1BCE195C0();
  sub_1BCE199C0();
  v15 = *(v9 + 8);
  v15(v14, v8);
  v22 = sub_1BCE199A0();
  v16 = *(v2 + 8);
  v17 = v7;
  v18 = v23;
  v16(v17, v23);
  sub_1BCE195C0();
  sub_1BCE199C0();
  v15(v11, v8);
  v19 = sub_1BCE199A0();
  v16(v4, v18);
  return v19 < v22;
}

uint64_t sub_1BCAA832C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void sub_1BCAA8364(uint64_t *a1)
{
  v2 = *(sub_1BCE195D0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BCBED224();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1BCAA85F4(v6);
  *a1 = v3;
}

uint64_t sub_1BCAA840C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCAA84D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BCAA8518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCAA85AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BCAA85F4(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BCE1E040();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BCE195D0();
        v6 = sub_1BCE1D5A0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1BCE195D0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BCAA8ABC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BCAA8724(0, v2, 1, a1);
  }
}

void sub_1BCAA8724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_1BCE19060();
  v8 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v41 - v11;
  v12 = sub_1BCE195D0();
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v41 - v15;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v61 = v25;
      do
      {
        v28 = v56;
        v29 = v54;
        (v54)(v56, v26, v12, v18);
        v30 = v12;
        v31 = v57;
        v29(v57, v24, v30);
        sub_1BCE195A0();
        v32 = v59;
        sub_1BCE195A0();
        v62 = sub_1BCE18FD0();
        v33 = *v53;
        v34 = v32;
        v35 = v60;
        (*v53)(v34, v60);
        v33(v27, v35);
        v36 = *v52;
        v37 = v31;
        v12 = v30;
        (*v52)(v37, v30);
        v36(v28, v30);
        if ((v62 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v26, v30);
        swift_arrayInitWithTakeFrontToBack();
        v38(v24, v39, v30);
        v24 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v47 + 1;
      v24 = &v46[v42];
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1BCAA8ABC(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v163 = sub_1BCE19060();
  v8 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v161 = &v136 - v11;
  v12 = sub_1BCE195D0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v142 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v153 = &v136 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v160 = &v136 - v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v164 = &v136 - v21;
  v148 = a3;
  v22 = a3[1];
  v143 = v13;
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v165 = *v139;
    if (!v165)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v128 = v24 + 16;
      v129 = *(v24 + 2);
      while (v129 >= 2)
      {
        if (!*v148)
        {
          goto LABEL_139;
        }

        v130 = v24;
        v131 = &v24[16 * v129];
        v132 = *v131;
        v133 = &v128[2 * v129];
        v134 = *(v133 + 1);
        sub_1BCAA96A8(*v148 + *(v143 + 9) * *v131, *v148 + *(v143 + 9) * *v133, *v148 + *(v143 + 9) * v134, v165);
        if (v5)
        {
          break;
        }

        if (v134 < v132)
        {
          goto LABEL_127;
        }

        if (v129 - 2 >= *v128)
        {
          goto LABEL_128;
        }

        *v131 = v132;
        *(v131 + 1) = v134;
        v135 = *v128 - v129;
        if (*v128 < v129)
        {
          goto LABEL_129;
        }

        v129 = *v128 - 1;
        sub_1BCBECE14(v133 + 16, v135, v133);
        *v128 = v129;
        v24 = v130;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v24 = sub_1BCBECBBC();
    goto LABEL_103;
  }

  v137 = a4;
  v23 = 0;
  v157 = (v8 + 8);
  v158 = v13 + 16;
  v155 = (v13 + 32);
  v156 = (v13 + 8);
  v24 = MEMORY[0x1E69E7CC0];
  v159 = v12;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    if (v23 + 1 < v22)
    {
      v138 = v24;
      v27 = v23;
      v140 = v23;
      v149 = v5;
      v150 = v23 + 1;
      v28 = *v148;
      v165 = v28;
      v29 = v13;
      v30 = *(v13 + 9);
      v151 = v22;
      v152 = v30;
      v31 = v28 + v30 * v26;
      v32 = v12;
      v33 = *(v29 + 2);
      v33(v164, v31, v12, v20);
      v34 = v160;
      v146 = v33;
      (v33)(v160, v28 + v30 * v27, v32);
      v5 = v161;
      v35 = v164;
      sub_1BCE195A0();
      v36 = v162;
      sub_1BCE195A0();
      LODWORD(v147) = sub_1BCE18FD0();
      v37 = *v157;
      v38 = v163;
      (*v157)(v36, v163);
      v145 = v37;
      (v37)(v5, v38);
      v39 = *(v143 + 1);
      v39(v34, v32);
      v144 = v39;
      v39(v35, v32);
      v40 = v151;
      v41 = v140 + 2;
      v42 = v165 + v152 * (v140 + 2);
      while (1)
      {
        v43 = v41;
        if (++v150 >= v40)
        {
          break;
        }

        v5 = v164;
        v44 = v159;
        v45 = v146;
        v165 = v41;
        (v146)(v164, v42, v159);
        v46 = v160;
        v45(v160, v31, v44);
        v47 = v161;
        sub_1BCE195A0();
        v48 = v162;
        sub_1BCE195A0();
        LOBYTE(v154) = sub_1BCE18FD0() & 1;
        LODWORD(v154) = v154;
        v49 = v48;
        v50 = v163;
        v51 = v145;
        (v145)(v49, v163);
        v51(v47, v50);
        v52 = v144;
        v144(v46, v44);
        v52(v5, v44);
        v43 = v165;
        v40 = v151;
        v42 += v152;
        v31 += v152;
        v41 = v165 + 1;
        if ((v147 & 1) != v154)
        {
          goto LABEL_9;
        }
      }

      v150 = v40;
LABEL_9:
      if (v147)
      {
        v26 = v150;
        v25 = v140;
        v12 = v159;
        if (v150 < v140)
        {
          goto LABEL_133;
        }

        if (v140 >= v150)
        {
          v5 = v149;
          v13 = v143;
          v24 = v138;
          goto LABEL_32;
        }

        if (v40 >= v43)
        {
          v53 = v43;
        }

        else
        {
          v53 = v40;
        }

        v54 = v152 * (v53 - 1);
        v55 = v152 * v53;
        v56 = v140;
        v57 = v140 * v152;
        v5 = v149;
        v13 = v143;
        do
        {
          if (v56 != --v26)
          {
            v58 = v5;
            v59 = *v148;
            if (!*v148)
            {
              goto LABEL_140;
            }

            v165 = *v155;
            (v165)(v142, v59 + v57, v12);
            v60 = v57 < v54 || v59 + v57 >= v59 + v55;
            if (v60)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v165)(v59 + v54, v142, v12);
            v5 = v58;
            v13 = v143;
          }

          ++v56;
          v54 -= v152;
          v55 -= v152;
          v57 += v152;
        }

        while (v56 < v26);
        v24 = v138;
      }

      else
      {
        v5 = v149;
        v13 = v143;
        v24 = v138;
        v12 = v159;
      }

      v26 = v150;
      v25 = v140;
    }

LABEL_32:
    v61 = v148[1];
    if (v26 < v61)
    {
      if (__OFSUB__(v26, v25))
      {
        goto LABEL_132;
      }

      if (v26 - v25 < v137)
      {
        break;
      }
    }

LABEL_48:
    if (v26 < v25)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BCB65134(0, *(v24 + 2) + 1, 1, v24);
      v24 = v126;
    }

    v82 = *(v24 + 2);
    v81 = *(v24 + 3);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      sub_1BCB65134(v81 > 1, v82 + 1, 1, v24);
      v24 = v127;
    }

    *(v24 + 2) = v83;
    v84 = v24 + 32;
    v85 = &v24[16 * v82 + 32];
    *v85 = v25;
    *(v85 + 1) = v26;
    v165 = *v139;
    if (!v165)
    {
      goto LABEL_141;
    }

    v150 = v26;
    if (v82)
    {
      v154 = v24 + 32;
      while (1)
      {
        v86 = v83 - 1;
        v87 = &v84[16 * v83 - 16];
        v88 = &v24[16 * v83];
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v89 = *(v24 + 4);
          v90 = *(v24 + 5);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_69:
          if (v92)
          {
            goto LABEL_118;
          }

          v104 = *v88;
          v103 = *(v88 + 1);
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_121;
          }

          v108 = *(v87 + 1);
          v109 = v108 - *v87;
          if (__OFSUB__(v108, *v87))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v106, v109))
          {
            goto LABEL_126;
          }

          if (v106 + v109 >= v91)
          {
            if (v91 < v109)
            {
              v86 = v83 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v83 < 2)
        {
          goto LABEL_120;
        }

        v111 = *v88;
        v110 = *(v88 + 1);
        v99 = __OFSUB__(v110, v111);
        v106 = v110 - v111;
        v107 = v99;
LABEL_84:
        if (v107)
        {
          goto LABEL_123;
        }

        v113 = *v87;
        v112 = *(v87 + 1);
        v99 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v99)
        {
          goto LABEL_125;
        }

        if (v114 < v106)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v86 - 1 >= v83)
        {
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
          goto LABEL_135;
        }

        if (!*v148)
        {
          goto LABEL_138;
        }

        v118 = &v84[16 * v86 - 16];
        v119 = *v118;
        v120 = v86;
        v121 = &v84[16 * v86];
        v122 = *(v121 + 1);
        sub_1BCAA96A8(*v148 + *(v13 + 9) * *v118, *v148 + *(v13 + 9) * *v121, *v148 + *(v13 + 9) * v122, v165);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v122 < v119)
        {
          goto LABEL_113;
        }

        v149 = 0;
        v5 = v13;
        v123 = v24;
        v124 = *(v24 + 2);
        if (v120 > v124)
        {
          goto LABEL_114;
        }

        *v118 = v119;
        *(v118 + 1) = v122;
        if (v120 >= v124)
        {
          goto LABEL_115;
        }

        v83 = v124 - 1;
        sub_1BCBECE14(v121 + 16, v124 - 1 - v120, v121);
        *(v123 + 2) = v124 - 1;
        v125 = v124 > 2;
        v24 = v123;
        v13 = v5;
        v5 = v149;
        v84 = v154;
        if (!v125)
        {
          goto LABEL_98;
        }
      }

      v93 = &v84[16 * v83];
      v94 = *(v93 - 8);
      v95 = *(v93 - 7);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_116;
      }

      v98 = *(v93 - 6);
      v97 = *(v93 - 5);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_117;
      }

      v100 = *(v88 + 1);
      v101 = v100 - *v88;
      if (__OFSUB__(v100, *v88))
      {
        goto LABEL_119;
      }

      v99 = __OFADD__(v91, v101);
      v102 = v91 + v101;
      if (v99)
      {
        goto LABEL_122;
      }

      if (v102 >= v96)
      {
        v116 = *v87;
        v115 = *(v87 + 1);
        v99 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v99)
        {
          goto LABEL_130;
        }

        if (v91 < v117)
        {
          v86 = v83 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v22 = v148[1];
    v23 = v150;
    if (v150 >= v22)
    {
      goto LABEL_101;
    }
  }

  v62 = (v25 + v137);
  if (__OFADD__(v25, v137))
  {
    goto LABEL_134;
  }

  if (v62 >= v61)
  {
    v62 = v148[1];
  }

  if (v62 < v25)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v26 == v62)
  {
    goto LABEL_48;
  }

  v138 = v24;
  v149 = v5;
  v63 = *v148;
  v64 = *(v13 + 9);
  v154 = *(v13 + 2);
  v65 = v63 + v64 * (v26 - 1);
  v151 = -v64;
  v140 = v25;
  v66 = (v25 - v26);
  v152 = v63;
  v141 = v64;
  v67 = (v63 + v26 * v64);
  v144 = v62;
LABEL_41:
  v150 = v26;
  v145 = v67;
  v146 = v66;
  v147 = v65;
  v68 = v65;
  while (1)
  {
    v69 = v164;
    v70 = v154;
    (v154)(v164, v67, v12);
    v71 = v160;
    (v70)(v160, v68, v12);
    v72 = v161;
    sub_1BCE195A0();
    v73 = v162;
    sub_1BCE195A0();
    LODWORD(v165) = sub_1BCE18FD0();
    v74 = *v157;
    v75 = v73;
    v76 = v163;
    (*v157)(v75, v163);
    v77 = v72;
    v12 = v159;
    v74(v77, v76);
    v78 = *v156;
    (*v156)(v71, v12);
    v78(v69, v12);
    if ((v165 & 1) == 0)
    {
LABEL_46:
      v26 = v150 + 1;
      v65 = v147 + v141;
      v66 = v146 - 1;
      v67 = &v145[v141];
      if ((v150 + 1) == v144)
      {
        v26 = v144;
        v5 = v149;
        v13 = v143;
        v24 = v138;
        v25 = v140;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v152)
    {
      break;
    }

    v79 = *v155;
    v80 = v153;
    (*v155)(v153, v67, v12);
    swift_arrayInitWithTakeFrontToBack();
    v79(v68, v80, v12);
    v68 += v151;
    v67 += v151;
    v60 = __CFADD__(v66++, 1);
    if (v60)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_1BCAA96A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v83 = a4;
  v78 = sub_1BCE19060();
  v7 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v66 - v10;
  v82 = sub_1BCE195D0();
  MEMORY[0x1EEE9AC00](v82);
  v75 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v66 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_60;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v20 = (a2 - a1) / v16;
  v86 = a1;
  v85 = v83;
  v73 = (v7 + 8);
  v74 = (v13 + 16);
  v72 = (v13 + 8);
  v21 = v18 / v16;
  if (v20 >= v18 / v16)
  {
    v41 = v83;
    sub_1BC9791E8(a2, v18 / v16, v83);
    v42 = v41 + v21 * v16;
    v43 = -v16;
    v44 = v42;
    v81 = a1;
    v68 = v43;
LABEL_36:
    v45 = a2 + v43;
    v46 = a3;
    v66 = v44;
    v47 = v44;
    v69 = a2 + v43;
    v70 = a2;
    while (1)
    {
      if (v42 <= v83)
      {
        v86 = a2;
        v84 = v47;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v67 = v47;
      v79 = v46 + v43;
      v48 = v42 + v43;
      v49 = v42;
      v50 = *v74;
      v51 = v45;
      v52 = v82;
      v53 = v46;
      (*v74)(v80, v42 + v43, v82);
      v54 = v75;
      v50(v75, v51, v52);
      v55 = v76;
      sub_1BCE195A0();
      v56 = v77;
      sub_1BCE195A0();
      LODWORD(v71) = sub_1BCE18FD0();
      v57 = *v73;
      v58 = v56;
      v59 = v78;
      (*v73)(v58, v78);
      v57(v55, v59);
      v60 = *v72;
      (*v72)(v54, v52);
      v60(v80, v52);
      if (v71)
      {
        v42 = v49;
        a3 = v79;
        if (v53 < v70 || v79 >= v70)
        {
          a2 = v69;
          swift_arrayInitWithTakeFrontToBack();
          v44 = v67;
          v43 = v68;
          a1 = v81;
        }

        else
        {
          v64 = v67;
          v43 = v68;
          v44 = v67;
          v17 = v53 == v70;
          v65 = v69;
          a2 = v69;
          a1 = v81;
          if (!v17)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v65;
            v44 = v64;
          }
        }

        goto LABEL_36;
      }

      v61 = v79;
      if (v53 < v49 || v79 >= v49)
      {
        swift_arrayInitWithTakeFrontToBack();
        v46 = v61;
        v42 = v48;
        v47 = v48;
        v45 = v69;
        a2 = v70;
        a1 = v81;
        v43 = v68;
      }

      else
      {
        v47 = v48;
        v17 = v49 == v53;
        v46 = v79;
        v42 = v48;
        v45 = v69;
        a2 = v70;
        a1 = v81;
        v43 = v68;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v46 = v61;
          v42 = v48;
          v47 = v48;
        }
      }
    }

    v86 = a2;
    v84 = v66;
  }

  else
  {
    v22 = v83;
    sub_1BC9791E8(a1, (a2 - a1) / v16, v83);
    v70 = v16;
    v71 = v22 + v20 * v16;
    v84 = v71;
    v79 = a3;
    while (v83 < v71 && a2 < a3)
    {
      v81 = a1;
      v24 = *v74;
      v25 = v80;
      v26 = v82;
      (*v74)(v80, a2, v82);
      v27 = v75;
      v24(v75, v83, v26);
      v28 = v76;
      sub_1BCE195A0();
      v29 = v77;
      sub_1BCE195A0();
      v30 = sub_1BCE18FD0();
      v31 = a2;
      v32 = *v73;
      v33 = v29;
      v34 = v78;
      (*v73)(v33, v78);
      v32(v28, v34);
      v35 = *v72;
      (*v72)(v27, v26);
      v35(v25, v26);
      if (v30)
      {
        v36 = v70;
        a2 = v31 + v70;
        v37 = v81;
        if (v81 < v31 || v81 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v79;
        }

        else
        {
          a3 = v79;
          if (v81 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v36 = v70;
        v39 = v83 + v70;
        v37 = v81;
        if (v81 < v83 || v81 >= v39)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v79;
          a2 = v31;
        }

        else
        {
          a3 = v79;
          a2 = v31;
          if (v81 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v85 = v39;
        v83 = v39;
      }

      a1 = v37 + v36;
      v86 = a1;
    }
  }

LABEL_58:
  sub_1BCBECCE4(&v86, &v85, &v84);
}

uint64_t UltravioletRectangularContentView.status.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UltravioletRectangularContentView(0);
  v3 = OUTLINED_FUNCTION_1_17(v2);
  return sub_1BCAAD684(v3, a1, v4);
}

uint64_t UltravioletRectangularContentView.init(status:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD079D0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for UltravioletRectangularContentView(0);
  return sub_1BCAAD624(a1, a2 + *(v4 + 20), type metadata accessor for UltravioletComplicationDataStatus);
}

uint64_t UltravioletRectangularContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD086A0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v36 - v3;
  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD086A8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v36 - v6;
  v8 = type metadata accessor for UltravioletRectangularContentView.Content(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for UltravioletComplicationDataStatus();
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = type metadata accessor for UltravioletComplicationViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = type metadata accessor for UltravioletRectangularContentView(0);
  v23 = OUTLINED_FUNCTION_1_17(v22);
  sub_1BCAAD684(v23, v16, v24);
  if (__swift_getEnumTagSinglePayload(v16, 2, v17))
  {
    sub_1BCAAD6E4(v16, type metadata accessor for UltravioletComplicationDataStatus);
    KeyPath = swift_getKeyPath();
    v26 = swift_getKeyPath();
    v39 = 0;
    v38 = 0;
    if (qword_1EBD07188 != -1)
    {
      OUTLINED_FUNCTION_5_4();
    }

    __src[0] = KeyPath;
    LOBYTE(__src[1]) = v39;
    __src[2] = v26;
    memset(&__src[3], 0, 24);
    LOWORD(__src[6]) = v38;
    *&__src[7] = xmmword_1EBD0A568;
    __src[9] = qword_1EBD0A578;
    v27 = sub_1BCAAD5A0();
    sub_1BCE1C7E0();
    memcpy(__dst, __src, 0x50uLL);
    sub_1BCAAD5F4(__dst);
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_23();
    sub_1BCAADB18(v28, v29);
    __src[0] = &type metadata for UltravioletRectangularContentView.Placeholder;
    __src[1] = v27;
    OUTLINED_FUNCTION_3_7();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_7_1();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_1BCAAD624(v16, v21, type metadata accessor for UltravioletComplicationViewModel);
    sub_1BCAAD684(v21, v12 + *(v8 + 24), type metadata accessor for UltravioletComplicationViewModel);
    *v12 = swift_getKeyPath();
    *(v12 + 8) = 0;
    *(v12 + 16) = swift_getKeyPath();
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    v31 = v12 + *(v8 + 28);
    if (qword_1EBD07188 != -1)
    {
      OUTLINED_FUNCTION_5_4();
    }

    v32 = qword_1EBD0A578;
    *v31 = xmmword_1EBD0A568;
    *(v31 + 16) = v32;
    sub_1BCAAD684(v12, v7, type metadata accessor for UltravioletRectangularContentView.Content);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_23();
    sub_1BCAADB18(v33, v34);
    v35 = sub_1BCAAD5A0();
    __dst[0] = &type metadata for UltravioletRectangularContentView.Placeholder;
    __dst[1] = v35;
    OUTLINED_FUNCTION_3_7();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_7_1();
    sub_1BCAAD6E4(v12, type metadata accessor for UltravioletRectangularContentView.Content);
    return sub_1BCAAD6E4(v21, type metadata accessor for UltravioletComplicationViewModel);
  }
}

uint64_t sub_1BCAAA2C0()
{
  v1 = sub_1BCE1BC20();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1BCE1D8C0();
    v6 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FC4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1BCAAA40C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v31 = sub_1BCE1C100();
  v2 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08798);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD087A0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD087A8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v29 - v12;
  v14 = sub_1BCE1BE00();
  v30 = type metadata accessor for UltravioletRectangularContentView.Content(0);
  v15 = *(v1 + *(v30 + 28) + 8);
  *v7 = v14;
  *(v7 + 1) = v15;
  v7[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD087B0);
  sub_1BCAAA7E4(v1, &v7[*(v16 + 44)]);
  v33 = v1;
  v17 = sub_1BCAABAD8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_1BCE1C250();
  v25 = &v7[*(v5 + 36)];
  *v25 = v24;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
  sub_1BCE1C0D0();
  v26 = sub_1BCAADBD0();
  sub_1BCE1C930();
  (*(v2 + 8))(v4, v31);
  sub_1BC94C05C(v7, &qword_1EBD08798);
  if (qword_1EDA17928 != -1)
  {
    swift_once();
  }

  v37 = qword_1EDA2EE90;
  v38 = *algn_1EDA2EE98;
  v35 = v5;
  v36 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  sub_1BCE1C8E0();
  (*(v9 + 8))(v11, v8);
  v37 = sub_1BCA44ED4();
  v38 = v27;
  sub_1BCE1B880();

  return sub_1BC94C05C(v13, &qword_1EBD087A8);
}

uint64_t sub_1BCAAA7E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD087D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for UltravioletRectangularContentView.Content(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + *(v13 + 32));
  sub_1BCAAD684(a1, v12, type metadata accessor for UltravioletRectangularContentView.Content);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v29 = swift_allocObject();
  sub_1BCAAD624(v12, v29 + v14, type metadata accessor for UltravioletRectangularContentView.Content);
  type metadata accessor for UltravioletComplicationViewModel();
  if (qword_1EDA1BEA0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDA1BEA8;
  v16 = sub_1BCE1A060();
  v33 = v15;
  v17._rawValue = v15;
  v18 = ColorSpectrum.color(for:in:)(v17, v16);
  v27 = v18;
  sub_1BCAAD684(a1, &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UltravioletRectangularContentView.Content);
  v19 = swift_allocObject();
  sub_1BCAAD624(v12, v19 + v14, type metadata accessor for UltravioletRectangularContentView.Content);
  KeyPath = swift_getKeyPath();
  v28 = KeyPath;
  LOBYTE(v33) = 0;
  *v8 = sub_1BCE1BC90();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD087D8);
  sub_1BCAAB09C(a1, &v8[*(v21 + 44)]);
  sub_1BC952ABC(v8, v5, &qword_1EBD087D0);
  __src[0] = KeyPath;
  LOBYTE(__src[1]) = 0;
  v22 = v30;
  *(&__src[1] + 1) = v30;
  v23 = v29;
  __src[2] = sub_1BCAADC88;
  __src[3] = v29;
  __src[4] = v18;
  __src[5] = sub_1BCAADE48;
  __src[6] = v19;
  LOBYTE(__src[7]) = 0;
  __src[8] = 0;
  v24 = v31;
  memcpy(v31, __src, 0x48uLL);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD087E0);
  sub_1BC952ABC(v5, v24 + *(v25 + 48), &qword_1EBD087D0);
  sub_1BC952ABC(__src, &v33, &qword_1EBD087E8);
  sub_1BC94C05C(v8, &qword_1EBD087D0);
  sub_1BC94C05C(v5, &qword_1EBD087D0);
  v33 = v28;
  v34 = 0;
  v35 = v22;
  v36 = 0;
  v37 = sub_1BCAADC88;
  v38 = v23;
  v39 = v27;
  v40 = sub_1BCAADE48;
  v41 = v19;
  v42 = 0;
  v43 = 0;
  return sub_1BC94C05C(&v33, &qword_1EBD087E8);
}

void *sub_1BCAAABD4@<X0>(void *a1@<X8>)
{
  if (qword_1EBD06FF8 != -1)
  {
    swift_once();
  }

  if (byte_1EBD2A139 == 1)
  {
    sub_1BCE1BC90();
    sub_1BCAAAEEC(__src);
  }

  else
  {
    type metadata accessor for UltravioletRectangularContentView.Content(0);
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = qword_1EDA1EFB8;
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1BCE3E050;
    type metadata accessor for UltravioletComplicationViewModel();
    v4 = sub_1BCA45518();
    v6 = v5;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = sub_1BC9804E0();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    sub_1BCE1D2B0();

    sub_1BC970820();
    v7 = sub_1BCE1DB60();
    v9 = v8;

    __src[0] = v7;
    __src[1] = v9;
    sub_1BCE1C6A0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08810);
  sub_1BC957184(&qword_1EBD08818, &qword_1EBD08810);
  sub_1BCE1BF60();
  return memcpy(a1, __src, 0x41uLL);
}

uint64_t sub_1BCAAAEEC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UltravioletRectangularContentView.Content(0);
  type metadata accessor for UltravioletComplicationViewModel();
  sub_1BCE1A070();
  sub_1BCE1A030();
  v2 = sub_1BCE1CBA0();
  sub_1BCA45518();
  sub_1BC970820();
  v3 = sub_1BCE1C6A0();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_1BCA81D10(v3, v5, v7);

  sub_1BC998CF4(v3, v5, v7);
}

uint64_t sub_1BCAAB014@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UltravioletRectangularContentView.Content(0);
  type metadata accessor for UltravioletComplicationViewModel();
  sub_1BCE1A070();
  sub_1BCE1A020();
  sub_1BC970820();
  result = sub_1BCE1C6A0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1BCAAB09C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD087F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  sub_1BCC74DE8(v13);
  *v9 = sub_1BCE1BC90();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD087F8);
  sub_1BCAAB26C(a1, &v9[*(v10 + 44)]);
  sub_1BC952ABC(v9, v6, &qword_1EBD087F0);
  memcpy(v14, v13, 0x60uLL);
  v14[12] = 0x3FF0000000000000;
  memcpy(a2, v14, 0x68uLL);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08800);
  sub_1BC952ABC(v6, a2 + *(v11 + 48), &qword_1EBD087F0);
  sub_1BC952ABC(v14, __dst, &qword_1EBD08778);
  sub_1BC94C05C(v9, &qword_1EBD087F0);
  sub_1BC94C05C(v6, &qword_1EBD087F0);
  memcpy(__dst, v13, sizeof(__dst));
  v16 = 0x3FF0000000000000;
  return sub_1BC94C05C(__dst, &qword_1EBD08778);
}

uint64_t sub_1BCAAB26C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08740);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = a1 + *(type metadata accessor for UltravioletRectangularContentView.Content(0) + 24);
  v21 = *(v9 + *(type metadata accessor for UltravioletComplicationViewModel() + 28));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08748);
  sub_1BCE19090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08750);
  sub_1BC957184(&qword_1EBD08758, &qword_1EBD08748);
  sub_1BC957184(&qword_1EBD08760, &qword_1EBD08750);
  sub_1BCAADB18(&qword_1EBD08768, type metadata accessor for UltravioletComplicationDailyViewModel);
  sub_1BCE1CE20();
  if (qword_1EBD07190 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBD2A238;
  if (qword_1EBD07198 != -1)
  {
    swift_once();
  }

  v11 = qword_1EBD2A240;
  v12 = *(v4 + 16);
  v13 = v19;
  v12(v19, v8, v3);
  v14 = v20;
  v12(v20, v13, v3);
  v15 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08808) + 48)];
  *v15 = v10;
  v15[1] = v11;
  v16 = *(v4 + 8);
  swift_retain_n();
  v16(v8, v3);

  return (v16)(v13, v3);
}

uint64_t sub_1BCAAB5BC@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08780);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for ComplicationDailyGaugeViewModel();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DailyGaugeView();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08788);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  if (qword_1EBD07190 != -1)
  {
    swift_once();
  }

  v17 = qword_1EBD2A238;
  if (qword_1EBD07198 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBD2A240;

  sub_1BCD17E88(v6);
  v19 = v9 + v7[8];
  *v19 = xmmword_1BCE49E90;
  *(v19 + 2) = 0x4008000000000000;
  v20 = v7[9];
  if (qword_1EBD07220 != -1)
  {
    swift_once();
  }

  v21 = v9 + v20;
  v22 = unk_1EBD2A2D0;
  *v21 = qword_1EBD2A2C8;
  *(v21 + 1) = v22;
  sub_1BCAAD684(v6, v9 + v7[6], type metadata accessor for ComplicationDailyGaugeViewModel);
  *(v9 + v7[7]) = 0;
  v23 = objc_opt_self();
  v24 = *MEMORY[0x1E69DB980];

  v25 = [v23 systemFontOfSize:9.0 weight:v24];
  [v25 descender];
  v9[1] = fabs(v26);
  sub_1BCE1C3C0();
  v27 = *MEMORY[0x1E6980E28];
  v28 = sub_1BCE1C350();
  (*(*(v28 - 8) + 104))(v3, v27, v28);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v28);
  v29 = sub_1BCE1C3D0();

  sub_1BC94C05C(v3, &qword_1EBD08780);
  sub_1BCAAD6E4(v6, type metadata accessor for ComplicationDailyGaugeViewModel);
  *v9 = v29;
  sub_1BCE1CEE0();
  sub_1BCE1B910();
  sub_1BCAAD624(v9, v13, type metadata accessor for DailyGaugeView);
  memcpy(&v13[*(v34 + 36)], __src, 0x70uLL);
  sub_1BCAADB60(v13, v16);
  v30 = v35;
  sub_1BC952ABC(v16, v35, &qword_1EBD08788);
  v31 = v36;
  *v36 = v17;
  v31[1] = v18;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08790);
  sub_1BC952ABC(v30, v31 + *(v32 + 48), &qword_1EBD08788);

  sub_1BC94C05C(v16, &qword_1EBD08788);
  sub_1BC94C05C(v30, &qword_1EBD08788);
}

double sub_1BCAABAD8()
{
  v1 = sub_1BCE1BC20();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1BCAAA2C0())
  {
    v5 = *(v0 + *(type metadata accessor for UltravioletRectangularContentView.Content(0) + 28) + 16);
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = *(v0 + 40);
    if (*(v0 + 48) != 1)
    {
      v12 = *(v0 + 16);

      sub_1BCE1D8C0();
      v13 = sub_1BCE1C1F0();
      sub_1BCE1AC20();

      sub_1BCE1BC10();
      swift_getAtKeyPath();
      sub_1BCA21FD0(v12, v7, v6, v8, 0);
      v14 = *(v2 + 8);
      v14(v4, v1);

      sub_1BCE1D8C0();
      v15 = sub_1BCE1C1F0();
      sub_1BCE1AC20();

      sub_1BCE1BC10();
      swift_getAtKeyPath();
      sub_1BCA21FD0(v12, v7, v6, v8, 0);
      v14(v4, v1);

      sub_1BCE1D8C0();
      v16 = sub_1BCE1C1F0();
      sub_1BCE1AC20();

      sub_1BCE1BC10();
      swift_getAtKeyPath();
      sub_1BCA21FD0(v12, v7, v6, v8, 0);
      v14(v4, v1);
    }
  }

  else
  {
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = *(v0 + 40);
    if (*(v0 + 48) != 1)
    {
      v17 = *(v0 + 16);

      sub_1BCE1D8C0();
      v18 = sub_1BCE1C1F0();
      sub_1BCE1AC20();

      sub_1BCE1BC10();
      swift_getAtKeyPath();
      sub_1BCA21FD0(v17, v10, v9, v11, 0);
      v19 = *(v2 + 8);
      v19(v4, v1);

      sub_1BCE1D8C0();
      v20 = sub_1BCE1C1F0();
      sub_1BCE1AC20();

      sub_1BCE1BC10();
      swift_getAtKeyPath();
      sub_1BCA21FD0(v17, v10, v9, v11, 0);
      v19(v4, v1);

      sub_1BCE1D8C0();
      v21 = sub_1BCE1C1F0();
      sub_1BCE1AC20();

      sub_1BCE1BC10();
      swift_getAtKeyPath();
      sub_1BCA21FD0(v17, v10, v9, v11, 0);
      v19(v4, v1);
    }

    return 0.0;
  }

  return v5;
}

uint64_t sub_1BCAABF90@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v28 = sub_1BCE1C100();
  v2 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD086F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD086F8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08700);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v28 - v12;
  memcpy(__dst, v1, 0x50uLL);
  v14 = sub_1BCE1BE00();
  v15 = __dst[8];
  *v7 = v14;
  *(v7 + 1) = v15;
  v7[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08708);
  sub_1BCAAC378(__dst, &v7[*(v16 + 44)]);
  v17 = sub_1BCAAD00C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_1BCE1C250();
  v25 = &v7[*(v5 + 36)];
  *v25 = v24;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
  sub_1BCE1C0D0();
  v26 = sub_1BCAADA20();
  sub_1BCE1C930();
  (*(v2 + 8))(v4, v28);
  sub_1BC94C05C(v7, &qword_1EBD086F0);
  if (qword_1EDA17928 != -1)
  {
    swift_once();
  }

  v33 = qword_1EDA2EE90;
  v34 = *algn_1EDA2EE98;
  v31 = v5;
  v32 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  sub_1BCE1C8E0();
  (*(v9 + 8))(v11, v8);
  if (qword_1EDA17920 != -1)
  {
    swift_once();
  }

  v33 = qword_1EDA2EE80;
  v34 = *algn_1EDA2EE88;
  sub_1BCE1B880();
  return sub_1BC94C05C(v13, &qword_1EBD08700);
}

uint64_t sub_1BCAAC378@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08728);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  if (a1[49])
  {
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = qword_1EDA1EFB8;
    v11 = sub_1BCE18B60();
    v13 = v12;

    v20[1] = v11;
    v20[2] = v13;
    sub_1BC970820();
    v14 = sub_1BCE1DB60();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *v9 = sub_1BCE1BC90();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08730);
  sub_1BCAAC5E8(a1, &v9[*(v17 + 44)]);
  sub_1BC952ABC(v9, v6, &qword_1EBD08728);
  *a2 = v14;
  a2[1] = v16;
  a2[2] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08738);
  sub_1BC952ABC(v6, a2 + *(v18 + 48), &qword_1EBD08728);

  sub_1BC94C05C(v9, &qword_1EBD08728);
  sub_1BC94C05C(v6, &qword_1EBD08728);
}

uint64_t sub_1BCAAC5E8@<X0>(_BYTE *a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = sub_1BCE19470();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08740);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v30 - v10;
  v11 = a1[49];
  if (qword_1EBD07280 != -1)
  {
    swift_once();
  }

  v13 = qword_1EBD2A350;
  v12 = *algn_1EBD2A358;
  v14 = qword_1EBD2A360;
  v15 = unk_1EBD2A368;

  sub_1BCC74FB8(v13, v12, v14, v15, v11, v35);
  sub_1BCE19460();
  v16 = sub_1BCD17C08();
  (*(v4 + 8))(v6, v3);
  v36[0] = v16;
  v17 = swift_allocObject();
  memcpy((v17 + 16), a1, 0x50uLL);
  sub_1BCAADAE0(a1, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08748);
  sub_1BCE19090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08750);
  sub_1BC957184(&qword_1EBD08758, &qword_1EBD08748);
  sub_1BC957184(&qword_1EBD08760, &qword_1EBD08750);
  sub_1BCAADB18(&qword_1EBD08768, type metadata accessor for UltravioletComplicationDailyViewModel);
  v18 = v30;
  sub_1BCE1CE20();
  if (qword_1EBD07190 != -1)
  {
    swift_once();
  }

  v19 = qword_1EBD2A238;
  if (qword_1EBD07198 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBD2A240;
  v22 = v31;
  v21 = v32;
  v23 = *(v32 + 16);
  v24 = v33;
  v23(v31, v18, v33);
  memcpy(v36, v35, 0x60uLL);
  v36[12] = 0x3FF0000000000000;
  v25 = v34;
  memcpy(v34, v36, 0x68uLL);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08770);
  v23(&v25[*(v26 + 48)], v22, v24);
  v27 = &v25[*(v26 + 64)];
  *v27 = v19;
  v27[1] = v20;

  sub_1BC952ABC(v36, __dst, &qword_1EBD08778);
  v28 = *(v21 + 8);

  v28(v18, v24);

  v28(v22, v24);
  memcpy(__dst, v35, sizeof(__dst));
  v38 = 0x3FF0000000000000;
  return sub_1BC94C05C(__dst, &qword_1EBD08778);
}

uint64_t sub_1BCAACAE8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - v4;
  v6 = type metadata accessor for ComplicationDailyGaugeViewModel();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DailyGaugeView();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08788);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  if (qword_1EBD07190 != -1)
  {
    swift_once();
  }

  v19 = qword_1EBD2A238;
  if (qword_1EBD07198 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBD2A240;

  sub_1BCD17E88(v8);
  v21 = *(a1 + 49);
  v22 = v11 + v9[8];
  *v22 = xmmword_1BCE49E90;
  *(v22 + 2) = 0x4008000000000000;
  v23 = v9[9];
  if (qword_1EBD07220 != -1)
  {
    swift_once();
  }

  v24 = v11 + v23;
  v25 = unk_1EBD2A2D0;
  *v24 = qword_1EBD2A2C8;
  *(v24 + 1) = v25;
  sub_1BCAAD684(v8, v11 + v9[6], type metadata accessor for ComplicationDailyGaugeViewModel);
  *(v11 + v9[7]) = v21;
  v26 = objc_opt_self();
  v27 = *MEMORY[0x1E69DB980];

  v28 = [v26 systemFontOfSize:9.0 weight:v27];
  [v28 descender];
  v11[1] = fabs(v29);
  sub_1BCE1C3C0();
  v30 = *MEMORY[0x1E6980E28];
  v31 = sub_1BCE1C350();
  (*(*(v31 - 8) + 104))(v5, v30, v31);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v31);
  v32 = sub_1BCE1C3D0();

  sub_1BC94C05C(v5, &qword_1EBD08780);
  sub_1BCAAD6E4(v8, type metadata accessor for ComplicationDailyGaugeViewModel);
  *v11 = v32;
  sub_1BCE1CEE0();
  sub_1BCE1B910();
  sub_1BCAAD624(v11, v15, type metadata accessor for DailyGaugeView);
  memcpy(&v15[*(v37 + 36)], __src, 0x70uLL);
  sub_1BCAADB60(v15, v18);
  v33 = v38;
  sub_1BC952ABC(v18, v38, &qword_1EBD08788);
  v34 = v39;
  *v39 = v19;
  v34[1] = v20;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08790);
  sub_1BC952ABC(v33, v34 + *(v35 + 48), &qword_1EBD08788);

  sub_1BC94C05C(v18, &qword_1EBD08788);
  sub_1BC94C05C(v33, &qword_1EBD08788);
}

double sub_1BCAAD00C()
{
  v1 = sub_1BCE1BC20();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 72);
  if (*(v0 + 8) == 1)
  {
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if (!v10)
      {

        sub_1BCE1D8C0();
        v20 = sub_1BCE1C1F0();
        sub_1BCE1AC20();

        sub_1BCE1BC10();
        swift_getAtKeyPath();
        sub_1BCA21FD0(v7, v6, v8, v9, 0);
        v21 = *(v2 + 8);
        v21(v4, v1);

        sub_1BCE1D8C0();
        v22 = sub_1BCE1C1F0();
        sub_1BCE1AC20();

        sub_1BCE1BC10();
        swift_getAtKeyPath();
        sub_1BCA21FD0(v7, v6, v8, v9, 0);
        v21(v4, v1);

        sub_1BCE1D8C0();
        v23 = sub_1BCE1C1F0();
        sub_1BCE1AC20();

        sub_1BCE1BC10();
        swift_getAtKeyPath();
        sub_1BCA21FD0(v7, v6, v8, v9, 0);
        v21(v4, v1);
      }

      return 0.0;
    }
  }

  else
  {
    v30 = *(v0 + 48);

    sub_1BCE1D8C0();
    v12 = v4;
    v13 = v7;
    v14 = v2;
    v15 = v1;
    v16 = v6;
    v17 = v8;
    v18 = v9;
    v19 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    v9 = v18;
    v8 = v17;
    v6 = v16;
    v1 = v15;
    v2 = v14;
    v7 = v13;
    v4 = v12;
    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FC4(v5, 0);
    (*(v2 + 8))(v12, v1);
    v10 = v30;
    if (v31 != 1)
    {
      goto LABEL_3;
    }
  }

  if (!v10)
  {

    sub_1BCE1D8C0();
    v24 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FD0(v7, v6, v8, v9, 0);
    v25 = *(v2 + 8);
    v25(v4, v1);

    sub_1BCE1D8C0();
    v26 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FD0(v7, v6, v8, v9, 0);
    v25(v4, v1);

    sub_1BCE1D8C0();
    v27 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FD0(v7, v6, v8, v9, 0);
    v25(v4, v1);
  }

  return v11;
}

unint64_t sub_1BCAAD5A0()
{
  result = qword_1EBD086B0;
  if (!qword_1EBD086B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD086B0);
  }

  return result;
}

uint64_t sub_1BCAAD624(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1BCAAD684(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BCAAD6E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1BCAAD780()
{
  sub_1BCA21B40();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UltravioletComplicationDataStatus();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BCAAD804()
{
  result = qword_1EBD086D0;
  if (!qword_1EBD086D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD086D8);
    sub_1BCAADB18(&qword_1EBD086B8, type metadata accessor for UltravioletRectangularContentView.Content);
    sub_1BCAAD5A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD086D0);
  }

  return result;
}

void sub_1BCAAD914()
{
  sub_1BCA21D6C(319, &qword_1EDA1EA38);
  if (v0 <= 0x3F)
  {
    sub_1BCA21D6C(319, &qword_1EBD07A30);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UltravioletComplicationViewModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BCAADA20()
{
  result = qword_1EBD08710;
  if (!qword_1EBD08710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD086F0);
    sub_1BC957184(&qword_1EBD08718, &qword_1EBD08720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08710);
  }

  return result;
}

uint64_t sub_1BCAADB18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BCAADB60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BCAADBD0()
{
  result = qword_1EBD087B8;
  if (!qword_1EBD087B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08798);
    sub_1BC957184(&qword_1EBD087C0, &qword_1EBD087C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD087B8);
  }

  return result;
}

void *sub_1BCAADC88()
{
  v0 = *(type metadata accessor for UltravioletRectangularContentView.Content(0) - 8);
  OUTLINED_FUNCTION_7_22(*(v0 + 80));

  return sub_1BCAAABD4(v1);
}

uint64_t objectdestroy_26Tm()
{
  v1 = (type metadata accessor for UltravioletRectangularContentView.Content(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_1BCA21FC4(*(v0 + v3), *(v0 + v3 + 8));
  sub_1BCA21FD0(*(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40), *(v0 + v3 + 48));
  v5 = v0 + v3 + v1[8];
  v6 = type metadata accessor for UltravioletComplicationViewModel();
  v7 = *(v6 + 20);
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v5 + v7);
  v9 = *(v6 + 24);
  sub_1BCE1A080();
  OUTLINED_FUNCTION_4();
  (*(v10 + 8))(v5 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BCAADE48()
{
  v0 = *(type metadata accessor for UltravioletRectangularContentView.Content(0) - 8);
  OUTLINED_FUNCTION_7_22(*(v0 + 80));

  return sub_1BCAAB014(v1);
}

unint64_t sub_1BCAADEAC()
{
  result = qword_1EBD08820;
  if (!qword_1EBD08820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD086F0);
    sub_1BCAADA20();
    swift_getOpaqueTypeConformance2();
    sub_1BCAADB18(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08820);
  }

  return result;
}

unint64_t sub_1BCAADFA4()
{
  result = qword_1EBD08828;
  if (!qword_1EBD08828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD087A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08798);
    sub_1BCAADBD0();
    swift_getOpaqueTypeConformance2();
    sub_1BCAADB18(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08828);
  }

  return result;
}

__n128 sub_1BCAAE09C@<Q0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCAAE838();
  v4 = v3;
  sub_1BCAAE838();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3D4800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3AC49BA63F800000;
  *(a1 + 400) = xmmword_1BCE423E0;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 15;
  *(a1 + 432) = xmmword_1BCE3C680;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3E4CCCCD3E3851ECLL;
  *(a1 + 720) = 0x4228000042080000;
  *(a1 + 728) = 1102104730;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3C6C0;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79320;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79340;
  *(a1 + 800) = 9;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3E99999A3E800000;
  *(a1 + 848) = 0x4208000041E00000;
  *(a1 + 856) = 0xBFFCEC20412B960ALL;
  *(a1 + 864) = 1;
  *(a1 + 872) = 3;
  *(a1 + 880) = xmmword_1BCE3C6E0;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF4C202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE798E0;
  *(a1 + 928) = 9;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E99999ALL;
  *(a1 + 976) = 0x4210000041F00000;
  *(a1 + 984) = 1077007862;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 3;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF53202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE792E0;
  *(a1 + 1056) = 9;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x406E76C93FDCCCCDLL;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x2073756C756D7543;
  *(a1 + 1160) = 0xEB0000000053202DLL;
  *(a1 + 1168) = 0x5F73756C756D7543;
  *(a1 + 1176) = 0xEF53656C676E6953;
  *(a1 + 1184) = 5;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE4A250;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(v2 + 198) = 16842753;
  *(a1 + 1638) = 1;
  *(a1 + 1639) = 0;
  *(a1 + 1643) = 0;
  *(v2 + 208) = 0x1010100010001;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 1;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE42400;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1107820544;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE4A260;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x4019999A3F800000;
  *(a1 + 2008) = 0x404000004019999ALL;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 7;
  *(a1 + 2208) = 0x418800003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE3C7F0;
  *(a1 + 2240) = xmmword_1BCE4A270;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

__n128 sub_1BCAAE838()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000042480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE45B80;
  *(v0 + 96) = xmmword_1BCE3D340;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V19.2D, #0.5 }

  *(v0 + 208) = _Q19;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = result;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v10;
  *(v0 + 1260) = *&v10[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000042480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = _Q19;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = result;
  *(v0 + 1664) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v11;
  *(v0 + 2476) = *&v11[3];
  *(v0 + 2480) = xmmword_1BCE3C780;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = result;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = _Q19;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2816) = 0x3F3333333F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v12;
  *(v0 + 3692) = *&v12[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 4848) = result;
  *(v0 + 4905) = *v13;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v13[3];
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4704) = result;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3936) = result;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFBFBFC0000000;
  *(v0 + 4048) = xmmword_1BCE3CAF0;
  *(v0 + 3952) = result;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3920) = result;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = result;
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3840) = xmmword_1BCE3CAC0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE3CAB0;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE45B90;
  *(v0 + 5024) = xmmword_1BCE45BA0;
  *(v0 + 5040) = result;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5232) = xmmword_1BCE3CC00;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6448) = xmmword_1BCE3CCF0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE45BB0;
  *(v0 + 7440) = xmmword_1BCE45BC0;
  *(v0 + 7552) = result;
  *(v0 + 7456) = xmmword_1BCE3DEF0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1148846080;
  *(v0 + 11008) = 1148846080;
  *(v0 + 8624) = xmmword_1BCE44780;
  *(v0 + 9840) = xmmword_1BCE44780;
  *(v0 + 11056) = xmmword_1BCE44780;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 9856) = xmmword_1BCE3C9D0;
  *(v0 + 11072) = xmmword_1BCE3C9D0;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  v7 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v7;
  *(v0 + 10096) = v7;
  *(v0 + 11312) = v7;
  *(v0 + 10816) = xmmword_1BCE447D0;
  *(v0 + 12032) = xmmword_1BCE447D0;
  *(v0 + 10800) = xmmword_1BCE447C0;
  *(v0 + 10832) = xmmword_1BCE447C0;
  *(v0 + 12016) = xmmword_1BCE447C0;
  *(v0 + 12048) = xmmword_1BCE447C0;
  *(v0 + 10848) = xmmword_1BCE447E0;
  *(v0 + 12064) = xmmword_1BCE447E0;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A00000447A0000;
  *(v0 + 12224) = 0x41A00000447A0000;
  v8 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v8;
  *(v0 + 8592) = v8;
  *(v0 + 9808) = v8;
  *(v0 + 11024) = v8;
  *(v0 + 12240) = v8;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 9600) = xmmword_1BCE447A0;
  *(v0 + 13248) = xmmword_1BCE447A0;
  *(v0 + 9584) = xmmword_1BCE44790;
  *(v0 + 9616) = xmmword_1BCE44790;
  *(v0 + 13232) = xmmword_1BCE44790;
  *(v0 + 13264) = xmmword_1BCE44790;
  *(v0 + 9632) = xmmword_1BCE447B0;
  *(v0 + 13280) = xmmword_1BCE447B0;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 6400) = xmmword_1BCE3CCC0;
  *(v0 + 7616) = xmmword_1BCE3CCC0;
  *(v0 + 8832) = xmmword_1BCE3CCC0;
  *(v0 + 10048) = xmmword_1BCE3CCC0;
  *(v0 + 12480) = xmmword_1BCE3CCC0;
  *(v0 + 13696) = xmmword_1BCE3CCC0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 5056) = xmmword_1BCE3CBA0;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = result;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6121) = *v14;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6124) = *&v14[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 6384) = xmmword_1BCE3CCB0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7337) = *v15;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7340) = *&v15[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = result;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14896) = xmmword_1BCE3D020;
  *(v0 + 14912) = xmmword_1BCE3D030;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14960) = xmmword_1BCE3D050;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 16000) = xmmword_1BCE3CBA0;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 7600) = xmmword_1BCE3CCB0;
  *(v0 + 8816) = xmmword_1BCE3CCB0;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 12464) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16112) = xmmword_1BCE3D120;
  *(v0 + 16128) = xmmword_1BCE3D130;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 16176) = xmmword_1BCE3D140;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D445C8321;
  *(v0 + 17104) = xmmword_1BCE3D1A0;
  *(v0 + 17120) = xmmword_1BCE3D1B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE3D200;
  *(v0 + 17216) = xmmword_1BCE3CAC0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE3D210;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3C780;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3D270;
  *(v0 + 18352) = xmmword_1BCE3D280;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE3D2A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3D2D0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3F3333333F4CCCCDLL;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19632) = xmmword_1BCE3E590;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000042480000;
  *(v0 + 20736) = 0x432A000042480000;
  *(v0 + 19536) = xmmword_1BCE3C840;
  *(v0 + 20752) = xmmword_1BCE3C840;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 18448) = _Q19;
  *(v0 + 19664) = _Q19;
  *(v0 + 20880) = _Q19;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 19840) = 0x3F3333333F800000;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 21056) = 0x3F3333333F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 13328) = 0x4170000042480000;
  *(v0 + 14544) = 0x4170000042480000;
  *(v0 + 15760) = 0x4170000042480000;
  *(v0 + 16976) = 0x4170000042480000;
  *(v0 + 18192) = 0x4170000042480000;
  *(v0 + 19408) = 0x4170000042480000;
  *(v0 + 20624) = 0x4170000042480000;
  *(v0 + 21840) = 0x4170000042480000;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 7728) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 18080) = result;
  *(v0 + 17984) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 17888) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17792) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17696) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17600) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 17504) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 17296) = result;
  *(v0 + 17312) = result;
  *(v0 + 17328) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 8048) = result;
  *(v0 + 17264) = result;
  *(v0 + 17280) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 16992) = result;
  *(v0 + 17065) = *v23;
  *(v0 + 17068) = *&v23[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16800) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16704) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16608) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16512) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 16416) = result;
  *(v0 + 8272) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 16320) = result;
  *(v0 + 8288) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8432) = result;
  *(v0 + 16096) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8480) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 15984) = result;
  *(v0 + 8552) = 0;
  *(v0 + 8553) = *v16;
  *(v0 + 8556) = *&v16[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = result;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v22;
  *(v0 + 15852) = *&v22[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 8704) = result;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 8720) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 8752) = result;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 8768) = result;
  *(v0 + 8784) = result;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 8800) = result;
  *(v0 + 8864) = result;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 14880) = result;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = result;
  *(v0 + 14784) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 14848) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 14768) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14633) = *v21;
  *(v0 + 14636) = *&v21[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 9072) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 14512) = result;
  *(v0 + 14528) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14432) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14336) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14240) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 14144) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 14048) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 13952) = result;
  *(v0 + 9152) = result;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 13856) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13664) = result;
  *(v0 + 13680) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 13552) = result;
  *(v0 + 13568) = result;
  *(v0 + 13584) = result;
  *(v0 + 13616) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v20;
  *(v0 + 13420) = *&v20[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 9472) = result;
  *(v0 + 13152) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13056) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 13136) = result;
  *(v0 + 12960) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 13040) = result;
  *(v0 + 12864) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12944) = result;
  *(v0 + 12768) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12848) = result;
  *(v0 + 12672) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 12752) = result;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 12656) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 12512) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 12416) = result;
  *(v0 + 12432) = result;
  *(v0 + 12448) = result;
  *(v0 + 12496) = result;
  *(v0 + 9568) = result;
  *(v0 + 12320) = result;
  *(v0 + 12336) = result;
  *(v0 + 12352) = result;
  *(v0 + 12368) = result;
  *(v0 + 12400) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9696) = result;
  *(v0 + 12288) = result;
  *(v0 + 12304) = result;
  *(v0 + 9712) = result;
  *(v0 + 12201) = *v19;
  *(v0 + 12232) = 1061158912;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v19[3];
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 12096) = result;
  *(v0 + 9769) = *v17;
  *(v0 + 9772) = *&v17[3];
  *(v0 + 12000) = result;
  *(v0 + 12080) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 9800) = 1061997773;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
  *(v0 + 11296) = result;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 9984) = result;
  *(v0 + 10000) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 10016) = result;
  *(v0 + 10080) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11152) = result;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10985) = *v18;
  *(v0 + 10988) = *&v18[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10720) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10528) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10432) = result;
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10336) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18480) = result;
  *(v0 + 18496) = result;
  *(v0 + 18640) = result;
  *(v0 + 18672) = result;
  *(v0 + 18688) = result;
  *(v0 + 18704) = result;
  *(v0 + 18720) = result;
  *(v0 + 18736) = result;
  *(v0 + 18752) = result;
  *(v0 + 18768) = result;
  *(v0 + 18784) = result;
  *(v0 + 18800) = result;
  *(v0 + 18816) = result;
  *(v0 + 18832) = result;
  *(v0 + 18848) = result;
  *(v0 + 18864) = result;
  *(v0 + 18880) = result;
  *(v0 + 18896) = result;
  *(v0 + 18912) = result;
  *(v0 + 18928) = result;
  *(v0 + 18944) = result;
  *(v0 + 18960) = result;
  *(v0 + 18976) = result;
  *(v0 + 18992) = result;
  *(v0 + 19008) = result;
  *(v0 + 19024) = result;
  *(v0 + 19040) = result;
  *(v0 + 19056) = result;
  *(v0 + 19072) = result;
  *(v0 + 19088) = result;
  *(v0 + 19104) = result;
  *(v0 + 19120) = result;
  *(v0 + 19136) = result;
  *(v0 + 19152) = result;
  *(v0 + 19168) = result;
  *(v0 + 19184) = result;
  *(v0 + 19200) = result;
  *(v0 + 19216) = result;
  *(v0 + 19232) = result;
  *(v0 + 19248) = result;
  *(v0 + 19264) = result;
  *(v0 + 19280) = result;
  *(v0 + 19296) = result;
  *(v0 + 19376) = result;
  *(v0 + 19392) = result;
  *(v0 + 19424) = result;
  *(v0 + 19440) = result;
  *(v0 + 19456) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19808) = result;
  *(v0 + 19856) = result;
  *(v0 + 19888) = result;
  *(v0 + 19904) = result;
  *(v0 + 19920) = result;
  *(v0 + 19936) = result;
  *(v0 + 19952) = result;
  *(v0 + 19968) = result;
  *(v0 + 19984) = result;
  *(v0 + 20000) = result;
  *(v0 + 20016) = result;
  *(v0 + 20032) = result;
  *(v0 + 20048) = result;
  *(v0 + 20064) = result;
  *(v0 + 20080) = result;
  *(v0 + 20096) = result;
  *(v0 + 20112) = result;
  *(v0 + 20128) = result;
  *(v0 + 20144) = result;
  *(v0 + 20160) = result;
  *(v0 + 20176) = result;
  *(v0 + 20192) = result;
  *(v0 + 20208) = result;
  *(v0 + 20224) = result;
  *(v0 + 20240) = result;
  *(v0 + 20256) = result;
  *(v0 + 20272) = result;
  *(v0 + 20288) = result;
  *(v0 + 20304) = result;
  *(v0 + 20320) = result;
  *(v0 + 20336) = result;
  *(v0 + 20352) = result;
  *(v0 + 20368) = result;
  *(v0 + 20384) = result;
  *(v0 + 20400) = result;
  *(v0 + 20416) = result;
  *(v0 + 20432) = result;
  *(v0 + 20448) = result;
  *(v0 + 20464) = result;
  *(v0 + 20480) = result;
  *(v0 + 20496) = result;
  *(v0 + 20512) = result;
  *(v0 + 20592) = result;
  *(v0 + 20608) = result;
  *(v0 + 20640) = result;
  *(v0 + 20656) = result;
  *(v0 + 20672) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 21024) = result;
  *(v0 + 21072) = result;
  *(v0 + 21104) = result;
  *(v0 + 21120) = result;
  *(v0 + 21136) = result;
  *(v0 + 21152) = result;
  *(v0 + 21168) = result;
  *(v0 + 21184) = result;
  *(v0 + 21200) = result;
  *(v0 + 21216) = result;
  *(v0 + 21232) = result;
  *(v0 + 21248) = result;
  *(v0 + 21264) = result;
  *(v0 + 21280) = result;
  *(v0 + 21296) = result;
  *(v0 + 21312) = result;
  *(v0 + 21328) = result;
  *(v0 + 21344) = result;
  *(v0 + 21360) = result;
  *(v0 + 21376) = result;
  *(v0 + 21392) = result;
  *(v0 + 21408) = result;
  *(v0 + 21424) = result;
  *(v0 + 21440) = result;
  *(v0 + 21456) = result;
  *(v0 + 21472) = result;
  *(v0 + 21488) = result;
  *(v0 + 21504) = result;
  *(v0 + 21520) = result;
  *(v0 + 21536) = result;
  *(v0 + 21552) = result;
  *(v0 + 21568) = result;
  *(v0 + 21584) = result;
  *(v0 + 21600) = result;
  *(v0 + 21616) = result;
  *(v0 + 21632) = result;
  *(v0 + 21648) = result;
  *(v0 + 21664) = result;
  *(v0 + 21680) = result;
  *(v0 + 21696) = result;
  *(v0 + 21712) = result;
  *(v0 + 21728) = result;
  *(v0 + 21808) = result;
  *(v0 + 21824) = result;
  *(v0 + 21856) = result;
  *(v0 + 21872) = result;
  *(v0 + 21888) = result;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v24;
  *(v0 + 18284) = *&v24[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v25;
  *(v0 + 19500) = *&v25[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v26;
  *(v0 + 20716) = *&v26[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}