uint64_t getEnumTagSinglePayload for ProDisplayFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProDisplayFeature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17ProDisplayLibrary05AppleB9HIDDeviceV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_25F7BF2BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F7BF304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_25F7BF348(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_25F7BF39C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 160))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_25F7BF3F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
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
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

__n128 __swift_memcpy242_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 240) = *(a2 + 120);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_25F7BF4B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 242))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 50);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25F7BF4FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 242) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 242) = 0;
    }

    if (a2)
    {
      *(result + 50) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25F7BF5C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 48))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25F7BF60C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F7BF680(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 64))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25F7BF6C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F7BF734(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25F7BF778(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
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
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_25F7BF818(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 192))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25F7BF85C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_25F7BF8E8()
{
  result = qword_27FDB0490;
  if (!qword_27FDB0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0490);
  }

  return result;
}

unint64_t sub_25F7BF93C()
{
  result = qword_27FDB04B8;
  if (!qword_27FDB04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB04B8);
  }

  return result;
}

uint64_t sub_25F7BF9E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x25F8E88D0);
  }

  return result;
}

void *sub_25F7BFA9C(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

unint64_t sub_25F7BFABC()
{
  result = qword_27FDB04F0;
  if (!qword_27FDB04F0)
  {
    sub_25F82207C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB04F0);
  }

  return result;
}

uint64_t sub_25F7BFB08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F7BFB70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F7BFBB8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double sub_25F7BFC4C(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_25F825AA0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  return result;
}

double sub_25F7BFCC4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0x20000;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 226) = 0u;
  return result;
}

uint64_t sub_25F7BFD0C(uint64_t a1)
{
  v1 = *(a1 + 10);
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

double sub_25F7BFD20(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_25F825AB0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  return result;
}

_OWORD *sub_25F7BFD48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleDisplayHIDDevice.PresetInterface.CurrentPresetReport(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 24))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleDisplayHIDDevice.PresetInterface.CurrentPresetReport(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_25F7BFE14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25F7BFE58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_25F7BFEB0()
{
  result = qword_27FDB0548;
  if (!qword_27FDB0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0548);
  }

  return result;
}

ProDisplayLibrary::PRC __swiftcall PRC.init(red:green:blue:)(Swift::OpaquePointer red, Swift::OpaquePointer green, Swift::OpaquePointer blue)
{
  v3->_rawValue = red._rawValue;
  v3[1]._rawValue = green._rawValue;
  v3[2]._rawValue = blue._rawValue;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

uint64_t static PRC.Unity.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25F7BFF80(0.0, 1.0, 0.0009765625);
  *a1 = v2;
  a1[1] = v2;
  a1[2] = v2;
  return swift_retain_n();
}

uint64_t sub_25F7BFF80(double a1, double a2, double a3)
{
  v6 = sub_25F7C02DC(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCF0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * (v10 >> 3);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v11 = *(v8 + 3);

  if (v7 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  v13 = v8 + 4;
  v14 = v11 >> 1;
  v15 = 0;
  v16 = 0;
  if (v7)
  {
    v14 -= v7;
    i = a1;
    while (1)
    {
      v18 = i;
      v19 = i <= a2;
      if (a3 > 0.0)
      {
        v19 = i >= a2;
      }

      if (v19)
      {
        if (v15 & 1 | (i != a2))
        {
          goto LABEL_50;
        }

        v15 = 1;
      }

      else
      {
        v20 = __OFADD__(v16++, 1);
        if (v20)
        {
          goto LABEL_51;
        }

        i = a1 + v16 * a3;
      }

      *v13++ = v18;
      if (!--v7)
      {
        goto LABEL_21;
      }
    }
  }

  for (i = a1; ; i = v22)
  {
LABEL_21:
    v21 = i <= a2;
    if (a3 > 0.0)
    {
      v21 = i >= a2;
    }

    if (!v21)
    {
      v20 = __OFADD__(v16++, 1);
      if (v20)
      {
        goto LABEL_48;
      }

      v22 = a1 + v16 * a3;
      if (v14)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }

    if ((i != a2) | v15 & 1)
    {
      break;
    }

    v15 = 1;
    v22 = i;
    if (v14)
    {
      v22 = i;
      goto LABEL_41;
    }

LABEL_29:
    v23 = *(v8 + 3);
    if (((v23 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_49;
    }

    v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCF0);
    v26 = swift_allocObject();
    v27 = _swift_stdlib_malloc_size(v26);
    v28 = v27 - 32;
    if (v27 < 32)
    {
      v28 = v27 - 25;
    }

    v29 = v28 >> 3;
    *(v26 + 2) = v25;
    *(v26 + 3) = 2 * (v28 >> 3);
    v30 = (v26 + 4);
    v31 = *(v8 + 3) >> 1;
    if (*(v8 + 2))
    {
      v32 = v8 + 4;
      if (v26 != v8 || v30 >= v32 + 8 * v31)
      {
        memmove(v26 + 4, v32, 8 * v31);
      }

      v8[2] = 0.0;
    }

    v13 = (v30 + 8 * v31);
    v14 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

    v8 = v26;
LABEL_41:
    v20 = __OFSUB__(v14--, 1);
    if (v20)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    *v13++ = i;
  }

  v33 = *(v8 + 3);
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v20 = __OFSUB__(v34, v14);
    v35 = v34 - v14;
    if (v20)
    {
      goto LABEL_53;
    }

    *(v8 + 2) = v35;
  }

  return v8;
}

uint64_t sub_25F7C0244(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25F7C028C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25F7C02DC(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t ProDisplayController.__allocating_init()()
{
  v0 = swift_allocObject();
  ProDisplayController.init()();
  return v0;
}

uint64_t ProDisplayController.init()()
{
  v73 = *v0;
  v64[1] = v73;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBA8);
  v80 = *(v1 - 8);
  v81 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v64 - v2;
  v4 = type metadata accessor for Preset(0);
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v6 - 8);
  v75 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v82 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v71 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = v64 - v11;
  v79 = type metadata accessor for FileDataStore(0);
  v12 = MEMORY[0x28223BE20](v79);
  v78 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = v64 - v14;
  v15 = sub_25F8226BC();
  v68 = *(v15 - 8);
  v69 = v15;
  MEMORY[0x28223BE20](v15);
  v67 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F82276C();
  MEMORY[0x28223BE20](v17);
  v18 = sub_25F82223C();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = qword_27FDB0550;
  v20 = sub_25F7C0F50();
  v65 = " Device.";
  v66 = v20;
  sub_25F82222C();
  v83[0] = MEMORY[0x277D84F90];
  sub_25F7C719C(&qword_27FDB0560, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0568);
  sub_25F76100C(&qword_27FDB0570, &qword_27FDB0568);
  sub_25F82288C();
  (*(v68 + 104))(v67, *MEMORY[0x277D85268], v69);
  v21 = sub_25F82277C();
  v65 = v19;
  *(v77 + v19) = v21;
  v64[0] = qword_27FDB0578;
  sub_25F8221DC();
  v22 = v73;
  v23 = *(v73 + 80);
  v24 = sub_25F821F4C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v22 + 88);
  (*(v28 + 8))(v23, v28);
  v29 = v76;
  (*(v28 + 16))(v23, v28);
  v66 = (*(v28 + 24))(v23, v28);
  v30 = (*(v28 + 32))(v23, v28);
  v31 = (*(v28 + 40))(v23, v28);
  v67 = v27;
  v68 = v25;
  v32 = *(v25 + 16);
  v33 = v78;
  v69 = v24;
  v32(v78, v27, v24);
  v34 = v79;
  *&v33[v79[5]] = 200;
  sub_25F76183C(v29, &v33[v34[6]], &qword_27FDAFBB0);
  *&v33[v34[7]] = v66;
  *&v33[v34[8]] = v30;
  v35 = *(v31 + 16);
  v73 = v31;
  if (v35)
  {
    v83[0] = MEMORY[0x277D84F90];
    sub_25F817C68(0, v35, 0);
    v36 = v83[0];
    v37 = v31 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v38 = *(v74 + 72);
    v39 = v35;
    do
    {
      v40 = *(v81 + 48);
      sub_25F7C7134(v37, &v3[v40], type metadata accessor for Preset);
      sub_25F76183C(&v3[v40], v3, &qword_27FDAFBB0);
      v83[0] = v36;
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_25F817C68(v41 > 1, v42 + 1, 1);
        v36 = v83[0];
      }

      *(v36 + 16) = v42 + 1;
      sub_25F760FA4(v3, v36 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v42, &qword_27FDAFBA8);
      v37 += v38;
      --v39;
    }

    while (v39);
    v43 = MEMORY[0x277D84F90];
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
    v36 = MEMORY[0x277D84F90];
  }

  v44 = v77;
  v46 = v74;
  v45 = v75;
  v47 = v71;
  if (*(v36 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBC8);
    v48 = sub_25F822A8C();
  }

  else
  {
    v48 = MEMORY[0x277D84F98];
  }

  v83[0] = v48;

  v50 = v70;
  sub_25F75D184(v49, 1, v83);
  v51 = v50;
  if (v50)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    *&v78[v79[9]] = v83[0];
    if (v35)
    {
      v81 = 0;
      v83[0] = v43;
      sub_25F817C48(0, v35, 0);
      v52 = v83[0];
      v53 = v73 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v54 = *(v46 + 72);
      do
      {
        v55 = v84;
        sub_25F7C7134(v53, v84, type metadata accessor for Preset);
        sub_25F76183C(v55, v47, &qword_27FDAFBB0);
        sub_25F7C71E4(v55, type metadata accessor for Preset);
        v83[0] = v52;
        v56 = v47;
        v58 = *(v52 + 16);
        v57 = *(v52 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_25F817C48(v57 > 1, v58 + 1, 1);
          v52 = v83[0];
        }

        *(v52 + 16) = v58 + 1;
        sub_25F760FA4(v56, v52 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v58, &qword_27FDAFBB0);
        v53 += v54;
        --v35;
        v47 = v56;
      }

      while (v35);

      sub_25F760F44(v76, &qword_27FDAFBB0);
      (*(v68 + 8))(v67, v69);
      v44 = v77;
      v45 = v75;
      v51 = v81;
    }

    else
    {

      sub_25F760F44(v76, &qword_27FDAFBB0);
      (*(v68 + 8))(v67, v69);
      v52 = MEMORY[0x277D84F90];
    }

    v59 = v78;
    *&v78[v79[10]] = v52;
    v60 = v72;
    sub_25F7C6E94(v59, v72, type metadata accessor for FileDataStore);
    v61 = qword_27FDB0580;
    sub_25F7C6E94(v60, v44 + qword_27FDB0580, type metadata accessor for FileDataStore);
    swift_beginAccess();
    sub_25F77A310(v45);
    swift_endAccess();
    if (v51)
    {
      sub_25F7C71E4(v44 + v61, type metadata accessor for FileDataStore);

      v62 = sub_25F8221EC();
      (*(*(v62 - 8) + 8))(v44 + v64[0], v62);
      swift_deallocPartialClassInstance();
    }

    else
    {
      sub_25F7C6E94(v45, v44 + qword_27FDB0588, type metadata accessor for ProData);
    }

    return v44;
  }

  return result;
}

unint64_t sub_25F7C0F50()
{
  result = qword_27FDB0558;
  if (!qword_27FDB0558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FDB0558);
  }

  return result;
}

uint64_t ProDisplayController.deinit()
{
  sub_25F7C71E4(v0 + qword_27FDB0588, type metadata accessor for ProData);
  sub_25F7C71E4(v0 + qword_27FDB0580, type metadata accessor for FileDataStore);

  v1 = qword_27FDB0578;
  v2 = sub_25F8221EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ProDisplayController.__deallocating_deinit()
{
  ProDisplayController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25F7C114C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + qword_27FDB0588;
  swift_beginAccess();
  v4 = type metadata accessor for ProData();
  return sub_25F76183C(v3 + *(v4 + 20), a2, &qword_27FDAFBB0);
}

uint64_t sub_25F7C11CC()
{
  v1 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Preset(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = v0 + qword_27FDB0588;
  v14 = swift_beginAccess();
  v15 = *(v13 + *(v1 + 28));
  v41 = v1;
  v42 = v3;
  v40 = v13;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = (*(v13 + *(v1 + 40)))(v14);
  }

  swift_endAccess();
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 64);
  v20 = (v17 + 63) >> 6;

  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v22;
    if (!v19)
    {
      break;
    }

LABEL_11:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = *(v5 + 72);
    sub_25F7C7134(*(v16 + 56) + v26 * (v25 | (v22 << 6)), v10, type metadata accessor for Preset);
    sub_25F7C6E94(v10, v12, type metadata accessor for Preset);
    if (v12[*(type metadata accessor for Preset.Info(0) + 28)])
    {
      sub_25F7C6E94(v12, v39, type metadata accessor for Preset);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25F817D08(0, *(v23 + 16) + 1, 1);
        v23 = v43;
      }

      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v37 = *(v23 + 16);
        v38 = v29 + 1;
        sub_25F817D08(v28 > 1, v29 + 1, 1);
        v29 = v37;
        v30 = v38;
        v23 = v43;
      }

      *(v23 + 16) = v30;
      result = sub_25F7C6E94(v39, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v29 * v26, type metadata accessor for Preset);
    }

    else
    {
      result = sub_25F7C71E4(v12, type metadata accessor for Preset);
    }
  }

  while (1)
  {
    v22 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *(v16 + 64 + 8 * v22);
    ++v24;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  v31 = *(v23 + 16);

  v32 = v42;
  v33 = sub_25F7C7134(v40, v42, type metadata accessor for ProData);
  v34 = v32 + *(v41 + 32);
  if (*(v34 + 8))
  {
    v35 = (*(v32 + *(v41 + 44)))(v33);
  }

  else
  {
    v35 = *v34;
  }

  sub_25F7C71E4(v32, type metadata accessor for ProData);
  result = v35 - v31;
  if (__OFSUB__(v35, v31))
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t ProDisplayController.presetList()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FDB0590);
  result = sub_25F8226DC();
  if (!v0)
  {
    return v2;
  }

  return result;
}

void sub_25F7C16AC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v61 = *a1;
  v62 = a2;
  v3 = type metadata accessor for Preset.Info(0);
  v67 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Preset(0);
  v66 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v69 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v58 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v58 - v19;
  v21 = type metadata accessor for FileDataStore(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = qword_27FDB0580;
  swift_beginAccess();
  sub_25F7C7134(a1 + v24, v23, type metadata accessor for FileDataStore);
  v25 = v65;
  v26 = FileDataStore.presetOrder()();
  if (v25)
  {
    sub_25F7C71E4(v23, type metadata accessor for FileDataStore);
    v27 = v25;
    v28 = sub_25F8221CC();
    v29 = sub_25F82268C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v25;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_25F74E000, v28, v29, "Failed to get preset order from data store with error %@", v30, 0xCu);
      sub_25F760F44(v31, &qword_27FDAFF60);
      MEMORY[0x25F8E88D0](v31, -1, -1);
      MEMORY[0x25F8E88D0](v30, -1, -1);
    }

    goto LABEL_5;
  }

  v59 = v15;
  v60 = v18;
  v65 = v26;
  sub_25F7C71E4(v23, type metadata accessor for FileDataStore);
  v34 = v65;
  v63 = v65[2];
  if (!v63)
  {

LABEL_5:
    *v62 = MEMORY[0x277D84F90];
    return;
  }

  v58[1] = 0;
  v58[2] = a1;
  v35 = 0;
  v36 = a1 + qword_27FDB0588;
  v37 = v69;
  v64 = v65 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
  v38 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v35 >= v34[2])
    {
      __break(1u);
      return;
    }

    sub_25F76183C(&v64[*(v37 + 72) * v35], v20, &qword_27FDAFBB0);
    swift_beginAccess();
    v39 = type metadata accessor for ProData();
    v40 = *(v39 + 28);
    v41 = *&v36[v40] ? *&v36[v40] : (*&v36[*(v39 + 40)])();
    v42 = *(v41 + 16);

    if (!v42)
    {
      break;
    }

    v43 = sub_25F75D8B4(v20);
    if ((v44 & 1) == 0)
    {
      break;
    }

    sub_25F7C7134(*(v41 + 56) + *(v66 + 72) * v43, v9, type metadata accessor for Preset);
    sub_25F7C6E94(v9, v11, type metadata accessor for Preset);
    swift_endAccess();

    sub_25F7C7134(v11, v5, type metadata accessor for Preset.Info);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_25F75C188(0, v38[2] + 1, 1, v38);
    }

    v46 = v38[2];
    v45 = v38[3];
    if (v46 >= v45 >> 1)
    {
      v38 = sub_25F75C188(v45 > 1, v46 + 1, 1, v38);
    }

    ++v35;
    sub_25F7C71E4(v11, type metadata accessor for Preset);
    sub_25F760F44(v20, &qword_27FDAFBB0);
    v38[2] = v46 + 1;
    sub_25F7C6E94(v5, v38 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v46, type metadata accessor for Preset.Info);
    v37 = v69;
    v34 = v65;
    if (v63 == v35)
    {

      *v62 = v38;
      return;
    }
  }

  swift_endAccess();

  v47 = v60;
  sub_25F76183C(v20, v60, &qword_27FDAFBB0);
  v48 = sub_25F8221CC();
  v49 = sub_25F82268C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v68[0] = v69;
    *v50 = 136315138;
    v51 = v59;
    sub_25F76183C(v47, v59, &qword_27FDAFBB0);
    v52 = sub_25F82212C();
    v54 = v53;
    sub_25F760F44(v51, &qword_27FDAFBB0);
    sub_25F760F44(v47, &qword_27FDAFBB0);
    v55 = sub_25F75CA94(v52, v54, v68);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_25F74E000, v48, v49, "Could not find ordered preset with id %s", v50, 0xCu);
    v56 = v69;
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    MEMORY[0x25F8E88D0](v56, -1, -1);
    MEMORY[0x25F8E88D0](v50, -1, -1);
  }

  else
  {

    sub_25F760F44(v47, &qword_27FDAFBB0);
  }

  type metadata accessor for ProDisplayController.Error();
  swift_getWitnessTable();
  swift_allocError();
  sub_25F76183C(v20, v57, &qword_27FDAFBB0);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_25F760F44(v20, &qword_27FDAFBB0);
}

uint64_t sub_25F7C1FAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34[-1] - v11;
  v13 = a1 + qword_27FDB0588;
  swift_beginAccess();
  v14 = type metadata accessor for ProData();
  v15 = *(v14 + 28);
  if (*&v13[v15])
  {
    v16 = *&v13[v15];
  }

  else
  {
    v16 = (*&v13[*(v14 + 40)])();
  }

  v17 = *(v16 + 16);

  if (v17 && (v18 = sub_25F75D8B4(a2), (v19 & 1) != 0))
  {
    v20 = v18;
    v21 = *(v16 + 56);
    v22 = type metadata accessor for Preset(0);
    sub_25F7C7134(v21 + *(*(v22 - 8) + 72) * v20, a3, type metadata accessor for Preset);
    swift_endAccess();
  }

  else
  {
    v34[4] = v6;

    swift_endAccess();
    sub_25F76183C(a2, v12, &qword_27FDAFBB0);
    v24 = sub_25F8221CC();
    v25 = sub_25F82268C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136315138;
      v33 = a2;
      v34[0] = v27;
      sub_25F76183C(v12, v10, &qword_27FDAFBB0);
      v28 = sub_25F82212C();
      v30 = v29;
      sub_25F760F44(v10, &qword_27FDAFBB0);
      a2 = v33;
      sub_25F760F44(v12, &qword_27FDAFBB0);
      v31 = sub_25F75CA94(v28, v30, v34);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_25F74E000, v24, v25, "Could not find preset with id %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x25F8E88D0](v27, -1, -1);
      MEMORY[0x25F8E88D0](v26, -1, -1);
    }

    else
    {

      sub_25F760F44(v12, &qword_27FDAFBB0);
    }

    type metadata accessor for ProDisplayController.Error();
    swift_getWitnessTable();
    swift_allocError();
    sub_25F76183C(a2, v32, &qword_27FDAFBB0);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_25F7C23BC(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = type metadata accessor for ProDataOnDisk();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v6);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FileDataStore(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + qword_27FDB0588;
  v12 = swift_beginAccess();
  v13 = v6[7];
  if (*(v11 + v13))
  {
    v14 = *(v11 + v13);
  }

  else
  {
    v14 = (*(v11 + v6[10]))(v12);
  }

  swift_endAccess();
  v15 = *(v14 + 16);

  if (!v15)
  {

    goto LABEL_9;
  }

  sub_25F75D8B4(v42);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ProDisplayController.Error();
    swift_getWitnessTable();
    swift_allocError();
    sub_25F76183C(v42, v24, &qword_27FDAFBB0);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v18 = qword_27FDB0580;
  swift_beginAccess();
  sub_25F7C7134(a1 + v18, v10, type metadata accessor for FileDataStore);
  v19 = v40;
  v20 = v41;
  v21 = sub_25F77A310(v41);
  if (v19)
  {
    v22 = type metadata accessor for FileDataStore;
    v23 = v10;
  }

  else
  {
    v26 = v6[7];
    if (*(v20 + v26))
    {
      v27 = *(v20 + v26);
    }

    else
    {
      v27 = (*(v20 + v6[10]))(v21);
    }

    v28 = v42;
    v29 = *(v27 + 16);

    if (v29)
    {
      sub_25F75D8B4(v28);
      v31 = v30;

      if (v31)
      {
        v32 = v28;
        v33 = v41;
        sub_25F75D978(v32, v41 + v6[5]);
        sub_25F821EFC();
        swift_allocObject();
        sub_25F821EEC();
        sub_25F821ECC();
        sub_25F77E284(v33, v5);
        v35 = sub_25F7AF590(v5, 2, 0);
        v37 = v36;
        sub_25F7C71E4(v5, type metadata accessor for ProDataOnDisk);
        sub_25F82203C();
        sub_25F7C71E4(v10, type metadata accessor for FileDataStore);
        v38 = v37;
        v39 = v41;
        sub_25F76D178(v35, v38);

        sub_25F7C71E4(v39, type metadata accessor for ProData);
        swift_beginAccess();
        sub_25F75D978(v42, v11 + v6[5]);
        return swift_endAccess();
      }
    }

    else
    {
    }

    type metadata accessor for FileDataStore.FileDataStoreError(0);
    sub_25F7C719C(&qword_27FDB0108, type metadata accessor for FileDataStore.FileDataStoreError);
    swift_allocError();
    sub_25F76183C(v28, v34, &qword_27FDAFBB0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_25F7C71E4(v10, type metadata accessor for FileDataStore);
    v22 = type metadata accessor for ProData;
    v23 = v41;
  }

  return sub_25F7C71E4(v23, v22);
}

uint64_t sub_25F7C29AC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Preset(0);
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v24 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  if (sub_25F7C11CC() < 1)
  {
    type metadata accessor for ProDisplayController.Error();
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    FileDataStore.addPreset(_:)(a2);
    result = swift_endAccess();
    if (!v2)
    {
      sub_25F76183C(a2, v15, &qword_27FDAFBB0);
      sub_25F7C7134(a2, v12, type metadata accessor for Preset);
      (*(v25 + 56))(v12, 0, 1, v5);
      v17 = a1 + qword_27FDB0588;
      swift_beginAccess();
      v18 = type metadata accessor for ProData();
      v19 = *(v18 + 28);
      if (*(v17 + v19))
      {
        v20 = *(v17 + v19);
      }

      else
      {
        v20 = (*(v17 + *(v18 + 40)))();
      }

      v27 = v20;
      if ((*(v25 + 48))(v12, 1, v5) == 1)
      {

        sub_25F760F44(v12, &qword_27FDAFBE0);
        sub_25F761908(v15);
        sub_25F760F44(v10, &qword_27FDAFBE0);
        sub_25F760F44(v15, &qword_27FDAFBB0);
        v21 = v27;
      }

      else
      {
        v22 = v24;
        sub_25F7C6E94(v12, v24, type metadata accessor for Preset);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v20;
        sub_25F76074C(v22, v15, isUniquelyReferenced_nonNull_native);
        sub_25F760F44(v15, &qword_27FDAFBB0);
        v21 = v26;
      }

      *(v17 + v19) = v21;
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_25F7C2E34(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v54 = &v52 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - v10;
  v12 = type metadata accessor for Preset(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v52 - v17;
  v18 = a1 + qword_27FDB0588;
  swift_beginAccess();
  v19 = type metadata accessor for ProData();
  v20 = v19;
  v21 = *(v19 + 28);
  if (*(v18 + v21))
  {
    v22 = *(v18 + v21);
  }

  else
  {
    v22 = (*(v18 + *(v19 + 40)))();
  }

  v23 = *(v22 + 16);

  v24 = v58;
  if (v23 && (v25 = sub_25F75D8B4(v58), (v26 & 1) != 0))
  {
    sub_25F7C7134(*(v22 + 56) + *(v13 + 72) * v25, v16, type metadata accessor for Preset);
    v27 = v57;
    sub_25F7C6E94(v16, v57, type metadata accessor for Preset);
    swift_endAccess();

    if (*(v27 + *(type metadata accessor for Preset.Info(0) + 28)))
    {
      sub_25F76183C(v18 + v20[5], v11, &qword_27FDAFBB0);
      v28 = v24;
      v29 = sub_25F82213C();
      sub_25F760F44(v11, &qword_27FDAFBB0);
      if (v29)
      {
        type metadata accessor for ProDisplayController.Error();
        swift_getWitnessTable();
        swift_allocError();
        *v30 = 0xD00000000000001BLL;
        v30[1] = 0x800000025F82C750;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        swift_beginAccess();
        v35 = v56;
        v36 = FileDataStore.removePreset(_:)(v28);
        swift_endAccess();
        if (!v35)
        {
          v37 = swift_beginAccess();
          v38 = v20[7];
          if (*(v18 + v38))
          {
            v39 = *(v18 + v38);
          }

          else
          {
            v39 = (*(v18 + v20[10]))(v37);
          }

          v60 = v39;

          v40 = v55;
          v41 = v58;
          sub_25F761908(v58);
          *(v18 + v38) = v60;
          swift_endAccess();

          sub_25F760F44(v40, &qword_27FDAFBE0);
          if ((v36 & 1) == 0)
          {
            v42 = v54;
            sub_25F76183C(v41, v54, &qword_27FDAFBB0);
            v43 = sub_25F8221CC();
            v44 = sub_25F82268C();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v59[0] = v58;
              *v45 = 136315138;
              v46 = v53;
              sub_25F76183C(v42, v53, &qword_27FDAFBB0);
              v47 = sub_25F82212C();
              v49 = v48;
              sub_25F760F44(v46, &qword_27FDAFBB0);
              sub_25F760F44(v42, &qword_27FDAFBB0);
              v50 = sub_25F75CA94(v47, v49, v59);

              *(v45 + 4) = v50;
              _os_log_impl(&dword_25F74E000, v43, v44, "data store did not remove id %s", v45, 0xCu);
              v51 = v58;
              __swift_destroy_boxed_opaque_existential_0Tm(v58);
              MEMORY[0x25F8E88D0](v51, -1, -1);
              MEMORY[0x25F8E88D0](v45, -1, -1);
            }

            else
            {

              sub_25F760F44(v42, &qword_27FDAFBB0);
            }
          }
        }
      }

      v34 = v57;
    }

    else
    {
      type metadata accessor for ProDisplayController.Error();
      swift_getWitnessTable();
      swift_allocError();
      *v33 = 0xD000000000000023;
      v33[1] = 0x800000025F82C770;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v34 = v27;
    }

    return sub_25F7C71E4(v34, type metadata accessor for Preset);
  }

  else
  {

    swift_endAccess();
    type metadata accessor for ProDisplayController.Error();
    swift_getWitnessTable();
    swift_allocError();
    sub_25F76183C(v24, v31, &qword_27FDAFBB0);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

unint64_t sub_25F7C35B4(uint64_t *a1)
{
  v3 = *a1;
  v4 = type metadata accessor for Preset(0);
  v65 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v54 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v58 = &v54 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v56 = &v54 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v61 = a1;
  v19 = a1 + qword_27FDB0588;
  swift_beginAccess();
  v20 = type metadata accessor for ProData();
  v21 = sub_25F76183C(&v19[v20[5]], v18, &qword_27FDAFBB0);
  v22 = v20[7];
  v23 = *&v19[v22];
  if (v23)
  {
    v24 = *&v19[v22];
    if (*(v23 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    v57 = v3;
    v59 = v23;
    v29 = swift_beginAccess();
    v30 = v55[7];
    if (*&v19[v30])
    {
      v31 = *&v19[v30];
    }

    else
    {
      v31 = (*&v19[v55[10]])(v29);
    }

    v33 = v58;
    v32 = v59;
    swift_endAccess();
    v58 = v31;
    v34 = v31 + 64;
    v35 = 1 << *(v31 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v31 + 64);
    v38 = (v35 + 63) >> 6;

    v39 = 0;
    v60 = MEMORY[0x277D84F90];
    v40 = v56;
    while (1)
    {
      v41 = v39;
      if (!v37)
      {
        break;
      }

LABEL_18:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      sub_25F7C7134(*(v58 + 7) + (v42 | (v39 << 6)) * v32, v33, type metadata accessor for Preset);
      sub_25F7C6E94(v33, v40, type metadata accessor for Preset);
      if (*(v40 + *(v57 + 28)))
      {
        sub_25F7C6E94(v40, v54, type metadata accessor for Preset);
        v43 = v60;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v43;
        v62 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25F817D08(0, *(v43 + 16) + 1, 1);
          v40 = v56;
          v45 = v62;
        }

        v47 = *(v45 + 16);
        v46 = *(v45 + 24);
        v48 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v60 = v47 + 1;
          sub_25F817D08(v46 > 1, v47 + 1, 1);
          v48 = v60;
          v40 = v56;
          v45 = v62;
        }

        *(v45 + 16) = v48;
        v49 = *(v65 + 80);
        v60 = v45;
        v50 = v45 + ((v49 + 32) & ~v49) + v47 * v59;
        v32 = v59;
        result = sub_25F7C6E94(v54, v50, type metadata accessor for Preset);
      }

      else
      {
        result = sub_25F7C71E4(v40, type metadata accessor for Preset);
      }
    }

    while (1)
    {
      v39 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v39 >= v38)
      {
        break;
      }

      v37 = *(v34 + 8 * v39);
      ++v41;
      if (v37)
      {
        goto LABEL_18;
      }
    }

    result = v60;
    v51 = *(v60 + 16);
    if (!v51)
    {
    }

    v52 = 0;
    v53 = v60;
    while (v52 < *(result + 16))
    {
      sub_25F76183C(v53 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v16, &qword_27FDAFBB0);
      v63 = v61;
      v64 = v16;
      sub_25F8226DC();
      if (v1)
      {
        sub_25F760F44(v16, &qword_27FDAFBB0);
      }

      ++v52;
      sub_25F760F44(v16, &qword_27FDAFBB0);
      result = v60;
      v53 += v59;
      if (v51 == v52)
      {
      }
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v24 = (*&v19[v20[10]])(v21);
  if (!*(v24 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:

  result = sub_25F75D8B4(v18);
  if (v26)
  {
    v55 = v20;
    v60 = v3;
    v23 = *(v65 + 72);
    sub_25F7C7134(*(v24 + 56) + v23 * result, v12, type metadata accessor for Preset);
    v3 = type metadata accessor for Preset.Info(0);
    v27 = v12[*(v3 + 28)];
    swift_endAccess();

    sub_25F760F44(v18, &qword_27FDAFBB0);
    sub_25F7C71E4(v12, type metadata accessor for Preset);
    if (v27)
    {
      type metadata accessor for ProDisplayController.Error();
      swift_getWitnessTable();
      swift_allocError();
      *v28 = 0xD00000000000001BLL;
      v28[1] = 0x800000025F82C750;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    goto LABEL_8;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t ProDisplayController.addUserAdjustment(_:for:headroom:)(uint64_t a1, uint64_t a2, double a3)
{
  v167 = a1;
  v4 = v3;
  v6 = *v3;
  v170 = a2;
  v171 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v150 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v153 = &v140 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v152 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v151 = &v140 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v157 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v147 = &v140 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v154 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v162 = &v140 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v155 = *(v23 - 8);
  v156 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v148 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v158 = &v140 - v26;
  v168 = type metadata accessor for UserAdjustment();
  v164 = *(v168 - 1);
  v27 = MEMORY[0x28223BE20](v168);
  v160 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v163 = &v140 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v165 = &v140 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v161 = &v140 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v140 - v35;
  v159 = type metadata accessor for Preset(0);
  v169 = *(v159 - 8);
  v37 = MEMORY[0x28223BE20](v159);
  v149 = &v140 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v140 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v140 - v42;
  v44 = *(v6 + 80);
  v45 = *(v6 + 96);
  v46 = (*(v45 + 32))(v44, v45);
  v47 = sub_25F761900(3, v46);

  if ((v47 & 1) == 0)
  {
    type metadata accessor for ProDisplayController.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v52 = 3;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v145 = v44;
  v146 = v45;
  v144 = v4;
  v48 = v4 + qword_27FDB0588;
  swift_beginAccess();
  v49 = type metadata accessor for ProData();
  v50 = *&v48[*(v49 + 28)];
  v143 = v49;
  if (v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = (*&v48[*(v49 + 40)])();
  }

  v53 = v169;
  v54 = *(v51 + 16);

  v55 = v170;
  if (!v54 || (v56 = sub_25F75D8B4(v170), (v57 & 1) == 0))
  {

    swift_endAccess();
    type metadata accessor for ProDisplayController.Error();
    swift_getWitnessTable();
    swift_allocError();
    sub_25F76183C(v55, v73, &qword_27FDAFBB0);
    goto LABEL_11;
  }

  v141 = v48;
  sub_25F7C7134(*(v51 + 56) + *(v53 + 72) * v56, v41, type metadata accessor for Preset);
  sub_25F7C6E94(v41, v43, type metadata accessor for Preset);
  swift_endAccess();

  v58 = v167;
  sub_25F7C7134(v167, v36, type metadata accessor for UserAdjustment);
  v59 = v168[8];
  v60 = &v36[v168[7]];
  v181[0] = 0;
  v61 = *v60;
  v62 = *(v60 + 1);
  LOBYTE(v174) = 0;
  v63 = *&v36[v59];
  LOBYTE(v182) = 0;
  v64 = v168[10];
  v65 = &v36[v168[9]];
  LOBYTE(v173[0]) = 0;
  v67 = *v65;
  v66 = *(v65 + 1);
  LOBYTE(v172[0]) = 0;
  v142 = v43;
  v68 = *&v36[v64];
  sub_25F7C71E4(v36, type metadata accessor for UserAdjustment);
  LOBYTE(v180) = 0;
  v69 = v182;
  v182 = v61;
  v183 = v181[0];
  v184 = v62;
  v185 = v174;
  v186 = v63;
  v70 = v170;
  v187 = v69;
  v188 = v67;
  v189 = v173[0];
  v190 = v66;
  v191 = v172[0];
  v192 = v68;
  v193 = 0;
  v71 = v166;
  ProDisplayController.userAdjustmentRange(of:with:headroom:)(v170, &v182, v194, a3);
  if (v71)
  {
    return sub_25F7C71E4(v142, type metadata accessor for Preset);
  }

  *&v181[64] = v194[4];
  *&v181[80] = v194[5];
  *&v181[96] = v195;
  *v181 = v194[0];
  *&v181[16] = v194[1];
  *&v181[32] = v194[2];
  *&v181[48] = v194[3];
  v74 = v58;
  if (!UserAdjustment.Ranges.contains(_:)(v58))
  {
    v78 = v58;
    v79 = v161;
    sub_25F7C7134(v78, v161, type metadata accessor for UserAdjustment);
    v80 = sub_25F8221CC();
    v81 = sub_25F82268C();
    v82 = os_log_type_enabled(v80, v81);
    v83 = v142;
    if (v82)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v181 = v85;
      *v84 = 136315138;
      v86 = v158;
      sub_25F76183C(v79, v158, &qword_27FDAFC18);
      v87 = sub_25F82212C();
      v89 = v88;
      v90 = v86;
      v74 = v167;
      sub_25F760F44(v90, &qword_27FDAFC18);
      sub_25F7C71E4(v79, type metadata accessor for UserAdjustment);
      v91 = sub_25F75CA94(v87, v89, v181);

      *(v84 + 4) = v91;
      _os_log_impl(&dword_25F74E000, v80, v81, "user adjustment (%s) is not within allowed ranges", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v85);
      MEMORY[0x25F8E88D0](v85, -1, -1);
      v92 = v84;
      v83 = v142;
      MEMORY[0x25F8E88D0](v92, -1, -1);
    }

    else
    {

      sub_25F7C71E4(v79, type metadata accessor for UserAdjustment);
    }

    type metadata accessor for ProDisplayController.Error();
    swift_getWitnessTable();
    swift_allocError();
    sub_25F76183C(v74, v103, &qword_27FDAFC18);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_25F7C71E4(v83, type metadata accessor for Preset);
  }

  v75 = v162;
  ProDisplayController.userAdjustment(of:)(v70, v162);
  if ((*(v164 + 48))(v75, 1, v168) == 1)
  {
    sub_25F760F44(v75, &qword_27FDAFC28);
    v76 = v165;
    v77 = sub_25F7C7134(v74, v165, type metadata accessor for UserAdjustment);
LABEL_29:
    v115 = *&v141[v143[6]];
    MEMORY[0x28223BE20](v77);
    *(&v140 - 2) = v76;

    v116 = sub_25F75ABB8(sub_25F760F14, (&v140 - 4), v115);

    if (v116)
    {
      type metadata accessor for ProDisplayController.Error();
      swift_getWitnessTable();
      swift_allocError();
      sub_25F76183C(v76, v117, &qword_27FDAFC18);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_25F7C71E4(v76, type metadata accessor for UserAdjustment);
      return sub_25F7C71E4(v142, type metadata accessor for Preset);
    }

    swift_beginAccess();
    FileDataStore.addUA(_:to:live:)(v76, v170, 0);
    v83 = v142;
    swift_endAccess();
    swift_beginAccess();
    v118 = type metadata accessor for Preset.Info(0);
    v119 = v151;
    sub_25F76183C(v83 + *(v118 + 36), v151, &qword_27FDAFC10);
    if ((*(v155 + 48))(v119, 1, v156) == 1)
    {
      sub_25F760F44(v119, &qword_27FDAFC10);
      v120 = v153;
      v121 = v154;
      v122 = v141;
    }

    else
    {
      v123 = v148;
      sub_25F760FA4(v119, v148, &qword_27FDAFC18);
      v122 = v141;
      swift_beginAccess();
      v121 = v154;
      sub_25F754174(v123, v154);
      swift_endAccess();
      sub_25F760F44(v121, &qword_27FDAFC28);
      v124 = v123;
      v83 = v142;
      sub_25F760F44(v124, &qword_27FDAFC18);
      v120 = v153;
    }

    v125 = v152;
    sub_25F76183C(v76, v152, &qword_27FDAFC18);
    (*(v155 + 56))(v125, 0, 1, v156);
    sub_25F781EF4(v125, v83 + *(v118 + 36));
    sub_25F76183C(v170, v157, &qword_27FDAFBB0);
    sub_25F7C7134(v83, v120, type metadata accessor for Preset);
    (*(v169 + 56))(v120, 0, 1, v159);
    v126 = swift_beginAccess();
    v127 = v143[7];
    if (*&v122[v127])
    {
      v128 = *&v122[v127];
    }

    else
    {
      v128 = (*&v122[v143[10]])(v126);
    }

    *&v172[0] = v128;
    if ((*(v169 + 48))(v120, 1, v159) == 1)
    {

      sub_25F760F44(v120, &qword_27FDAFBE0);
      v129 = v150;
      v130 = v157;
      sub_25F761908(v157);
      v131 = v129;
      v83 = v142;
      sub_25F760F44(v131, &qword_27FDAFBE0);
      sub_25F760F44(v130, &qword_27FDAFBB0);
      v132 = *&v172[0];
    }

    else
    {
      v133 = v120;
      v134 = v149;
      sub_25F7C6E94(v133, v149, type metadata accessor for Preset);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v180 = v128;
      v136 = v134;
      v137 = v157;
      sub_25F76074C(v136, v157, isUniquelyReferenced_nonNull_native);
      sub_25F760F44(v137, &qword_27FDAFBB0);
      v132 = v180;
    }

    *&v141[v127] = v132;

    v138 = v165;
    v139 = v158;
    sub_25F76183C(v165, v158, &qword_27FDAFC18);
    sub_25F7C7134(v138, v121, type metadata accessor for UserAdjustment);
    (*(v164 + 56))(v121, 0, 1, v168);
    sub_25F7537A0(v121, v139);
    swift_endAccess();
    sub_25F7C71E4(v138, type metadata accessor for UserAdjustment);
    return sub_25F7C71E4(v83, type metadata accessor for Preset);
  }

  sub_25F7C6E94(v75, v163, type metadata accessor for UserAdjustment);
  v93 = v74;
  v94 = v142;
  v95 = &v142[*(v159 + 20)];
  v96 = v95[48];
  v97 = *(v95 + 1);
  *v181 = *v95;
  *&v181[16] = v97;
  *&v181[32] = *(v95 + 2);
  v181[48] = v96;
  ColorSpace.primaries.getter(v173, *&v181[32]);
  v172[0] = v173[0];
  v172[1] = v173[1];
  v172[2] = v173[2];
  v98 = v160;
  sub_25F7D5BD0(v93, v172, v160);
  (*(v146 + 120))(v181, v94);
  v176 = *&v181[40];
  v177 = *&v181[56];
  v178 = *&v181[72];
  v179 = *&v181[88];
  v174 = *&v181[8];
  v175 = *&v181[24];
  v76 = v165;
  if (v181[0] != 2)
  {
    *&v181[40] = v176;
    *&v181[56] = v177;
    *&v181[72] = v178;
    *&v181[88] = v179;
    *&v181[8] = v174;
    *&v181[24] = v175;
    sub_25F7FA660(v181, v165);
    if (!UserAdjustment.isNumericallyEqual(to:)(v98))
    {
      v104 = sub_25F8221CC();
      v105 = sub_25F82268C();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *v181 = v107;
        *v106 = 136315138;
        v108 = v142;
        swift_beginAccess();
        v109 = v147;
        sub_25F76183C(v108, v147, &qword_27FDAFBB0);
        v110 = sub_25F82212C();
        v112 = v111;
        sub_25F760F44(v109, &qword_27FDAFBB0);
        v113 = sub_25F75CA94(v110, v112, v181);
        v76 = v165;

        *(v106 + 4) = v113;
        _os_log_impl(&dword_25F74E000, v104, v105, "User adjusted about to be added to preset '%s' got clamped", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v107);
        MEMORY[0x25F8E88D0](v107, -1, -1);
        MEMORY[0x25F8E88D0](v106, -1, -1);

        v114 = v160;
LABEL_28:
        sub_25F7C71E4(v114, type metadata accessor for UserAdjustment);
        v77 = sub_25F7C71E4(v163, type metadata accessor for UserAdjustment);
        goto LABEL_29;
      }
    }

    v114 = v98;
    goto LABEL_28;
  }

  v99 = sub_25F8221CC();
  v100 = sub_25F82268C();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&dword_25F74E000, v99, v100, "rules for per-preset UA returned nil for display, is it implemented?", v101, 2u);
    MEMORY[0x25F8E88D0](v101, -1, -1);
  }

  type metadata accessor for ProDisplayController.Error();
  swift_getWitnessTable();
  swift_allocError();
  *v102 = 3;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_25F7C71E4(v160, type metadata accessor for UserAdjustment);
  sub_25F7C71E4(v163, type metadata accessor for UserAdjustment);
  return sub_25F7C71E4(v94, type metadata accessor for Preset);
}

uint64_t ProDisplayController.userAdjustmentRange(of:with:headroom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float64_t *a3@<X8>, double a4@<D0>)
{
  *&v46 = a2;
  v48 = a3;
  *&v49 = a1;
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v44 - v8;
  v45 = type metadata accessor for Preset(0);
  v9 = *(v45 - 8);
  v10 = MEMORY[0x28223BE20](v45);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = v4 + qword_27FDB0588;
  swift_beginAccess();
  v19 = type metadata accessor for ProData();
  v20 = *(v19 + 28);
  if (*&v18[v20])
  {
    v21 = *&v18[v20];
  }

  else
  {
    v21 = (*&v18[*(v19 + 40)])();
  }

  v22 = *(v21 + 16);

  if (v22 && (v23 = sub_25F75D8B4(v49), (v24 & 1) != 0))
  {
    sub_25F7C7134(*(v21 + 56) + *(v9 + 72) * v23, v15, type metadata accessor for Preset);
    sub_25F7C6E94(v15, v17, type metadata accessor for Preset);
    swift_endAccess();

    v25 = *(v6 + 80);
    v26 = *(v6 + 96);
    (*(v26 + 120))(v58, v17, v25, v26);
    v27 = *v58;
    v64 = *&v58[40];
    v65 = v59;
    v66 = v60;
    v67 = v61;
    v62 = *&v58[8];
    v63 = *&v58[24];
    if (v58[0] == 2)
    {
      type metadata accessor for ProDisplayController.Error();
      swift_getWitnessTable();
      swift_allocError();
      *v28 = 3;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_25F7C71E4(v17, type metadata accessor for Preset);
    }

    else
    {
      (*(v26 + 88))(v58, v25, v26, a4);
      v31 = *v58;
      v32 = *&v58[8];
      v33 = v47;
      ProDisplayController.userAdjustment(of:)(v49, v47);
      v34 = *(v46 + 48);
      v56[2] = *(v46 + 32);
      v56[3] = v34;
      v57[0] = *(v46 + 64);
      *(v57 + 9) = *(v46 + 73);
      v35 = *(v46 + 16);
      v56[0] = *v46;
      v56[1] = v35;
      sub_25F7C7134(v17, v12, type metadata accessor for Preset);
      v36 = &v12[*(v45 + 20)];
      v37 = v36[48];
      v38 = *(v36 + 1);
      *v58 = *v36;
      *&v58[16] = v38;
      *&v58[32] = *(v36 + 2);
      v58[48] = v37;
      ColorSpace.primaries.getter(&v51, *&v58[32]);
      v39 = v53;
      v40 = v54;
      v49 = v51;
      v46 = v52;
      v42 = *(v36 + 20);
      v41 = *(v36 + 21);
      sub_25F7C71E4(v12, type metadata accessor for Preset);
      if (v41 > v42)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      v52 = v46;
      v51 = v49;
      v53 = v39;
      v54 = v40;
      v55 = v43;
      *v58 = v27;
      *&v58[40] = v64;
      v59 = v65;
      v60 = v66;
      v61 = v67;
      *&v58[8] = v62;
      *&v58[24] = v63;
      v50[0] = v31;
      v50[1] = v32;
      static UserAdjustment.computeRanges(userInputs:displayAttributes:validationRules:luminanceLimits:existingAdjustment:)(v56, &v51, v58, v50, v33, v48);
      sub_25F760F44(v33, &qword_27FDAFC28);
      return sub_25F7C71E4(v17, type metadata accessor for Preset);
    }
  }

  else
  {

    swift_endAccess();
    type metadata accessor for ProDisplayController.Error();
    swift_getWitnessTable();
    swift_allocError();
    sub_25F76183C(v49, v30, &qword_27FDAFBB0);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t ProDisplayController.userAdjustment(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v106 = a1;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v102 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v10 - 8);
  v104 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v103 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v100 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v101 = &v94 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v94 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v94 - v20;
  v22 = type metadata accessor for Preset.Info(0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v94 - v26;
  v28 = (*(*(v5 + 96) + 32))();
  v29 = sub_25F761900(3, v28);

  if (v29)
  {
    v30 = v3 + qword_27FDB0588;
    swift_beginAccess();
    v31 = type metadata accessor for ProData();
    v32 = *&v30[*(v31 + 28)];
    v96 = v31;
    v97 = v30;
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = (*&v30[*(v31 + 40)])();
    }

    v40 = *(v33 + 16);
    v98 = v27;
    v99 = v12;
    if (v40)
    {

      v41 = sub_25F75D8B4(v106);
      if (v42)
      {
        v43 = v41;
        v95 = a2;
        v44 = *(v33 + 56);
        v45 = type metadata accessor for Preset(0);
        v46 = *(v45 - 8);
        v94 = v18;
        v47 = v46;
        v48 = v44 + *(v46 + 72) * v43;
        a2 = v95;
        sub_25F7C7134(v48, v21, type metadata accessor for Preset);
        (*(v47 + 56))(v21, 0, 1, v45);
        v18 = v94;
      }

      else
      {
        v45 = type metadata accessor for Preset(0);
        (*(*(v45 - 8) + 56))(v21, 1, 1, v45);
      }
    }

    else
    {
      v45 = type metadata accessor for Preset(0);
      (*(*(v45 - 8) + 56))(v21, 1, 1, v45);
    }

    type metadata accessor for Preset(0);
    if ((*(*(v45 - 8) + 48))(v21, 1, v45))
    {

      sub_25F760F44(v21, &qword_27FDAFBE0);
      swift_endAccess();
      v49 = v105;
      sub_25F76183C(v106, v105, &qword_27FDAFBB0);
      v50 = sub_25F8221CC();
      v51 = sub_25F82268C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v107[0] = v53;
        *v52 = 136315138;
        v54 = v102;
        sub_25F76183C(v49, v102, &qword_27FDAFBB0);
        v55 = a2;
        v56 = sub_25F82212C();
        v58 = v57;
        sub_25F760F44(v54, &qword_27FDAFBB0);
        sub_25F760F44(v49, &qword_27FDAFBB0);
        v59 = v56;
        a2 = v55;
        v60 = sub_25F75CA94(v59, v58, v107);

        *(v52 + 4) = v60;
        _os_log_impl(&dword_25F74E000, v50, v51, "attempted to get UA for invalid preset id %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        MEMORY[0x25F8E88D0](v53, -1, -1);
        MEMORY[0x25F8E88D0](v52, -1, -1);

LABEL_22:
        v65 = type metadata accessor for UserAdjustment();
        return (*(*(v65 - 8) + 56))(a2, 1, 1, v65);
      }

      v63 = &qword_27FDAFBB0;
      v64 = v49;
LABEL_21:
      sub_25F760F44(v64, v63);
      goto LABEL_22;
    }

    sub_25F7C7134(v21, v25, type metadata accessor for Preset.Info);
    sub_25F760F44(v21, &qword_27FDAFBE0);
    swift_endAccess();

    v61 = v98;
    sub_25F7C6E94(v25, v98, type metadata accessor for Preset.Info);
    v62 = v104;
    sub_25F76183C(v61 + *(v22 + 36), v104, &qword_27FDAFC10);
    if ((*(v103 + 48))(v62, 1, v99) == 1)
    {
      sub_25F7C71E4(v61, type metadata accessor for Preset.Info);
      v63 = &qword_27FDAFC10;
      v64 = v62;
      goto LABEL_21;
    }

    sub_25F760FA4(v62, v18, &qword_27FDAFC18);
    v66 = v97;
    swift_beginAccess();
    v67 = *&v66[*(v96 + 24)];
    if (*(v67 + 16) && (v68 = sub_25F75DA30(v18), (v69 & 1) != 0))
    {
      v70 = v68;
      v71 = *(v67 + 56);
      v72 = type metadata accessor for UserAdjustment();
      v73 = v18;
      v74 = *(v72 - 8);
      sub_25F7C7134(v71 + *(v74 + 72) * v70, a2, type metadata accessor for UserAdjustment);
      swift_endAccess();
      sub_25F760F44(v73, &qword_27FDAFC18);
      sub_25F7C71E4(v61, type metadata accessor for Preset.Info);
      return (*(v74 + 56))(a2, 0, 1, v72);
    }

    else
    {
      v95 = a2;
      swift_endAccess();
      v75 = v101;
      sub_25F76183C(v18, v101, &qword_27FDAFC18);
      swift_retain_n();
      v76 = sub_25F8221CC();
      v94 = v18;
      v77 = v76;
      v78 = sub_25F82268C();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v107[0] = v106;
        *v79 = 136315394;
        v80 = v100;
        sub_25F76183C(v75, v100, &qword_27FDAFC18);
        v81 = sub_25F82212C();
        LODWORD(v105) = v78;
        v82 = v81;
        v84 = v83;
        sub_25F760F44(v80, &qword_27FDAFC18);
        sub_25F760F44(v75, &qword_27FDAFC18);
        v85 = sub_25F75CA94(v82, v84, v107);

        *(v79 + 4) = v85;
        *(v79 + 12) = 2080;

        type metadata accessor for UserAdjustment();
        sub_25F76100C(&qword_27FDAFC48, &qword_27FDAFC18);
        v86 = sub_25F82229C();
        v87 = v61;
        v89 = v88;

        v90 = sub_25F75CA94(v86, v89, v107);

        *(v79 + 14) = v90;
        _os_log_impl(&dword_25F74E000, v77, v105, "preset had a UA id (%s) not in the list of valid UAs (%s))", v79, 0x16u);
        v91 = v106;
        swift_arrayDestroy();
        MEMORY[0x25F8E88D0](v91, -1, -1);
        MEMORY[0x25F8E88D0](v79, -1, -1);

        sub_25F760F44(v94, &qword_27FDAFC18);
        v92 = v87;
      }

      else
      {

        sub_25F760F44(v75, &qword_27FDAFC18);
        sub_25F760F44(v94, &qword_27FDAFC18);
        v92 = v61;
      }

      sub_25F7C71E4(v92, type metadata accessor for Preset.Info);
      v93 = type metadata accessor for UserAdjustment();
      return (*(*(v93 - 8) + 56))(v95, 1, 1, v93);
    }
  }

  else
  {
    v34 = sub_25F8221CC();
    v35 = sub_25F82268C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_25F74E000, v34, v35, "per preset UA functionality not supported", v36, 2u);
      MEMORY[0x25F8E88D0](v36, -1, -1);
    }

    v37 = type metadata accessor for UserAdjustment();
    v38 = *(*(v37 - 8) + 56);

    return v38(a2, 1, 1, v37);
  }
}

uint64_t ProDisplayController.removeUserAdjustment(for:)(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v69[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v75 = &v69[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v79 = &v69[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v77 = &v69[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v72 = &v69[-v14];
  MEMORY[0x28223BE20](v13);
  v73 = &v69[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v69[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v83 = *(v19 - 8);
  v84 = v19;
  MEMORY[0x28223BE20](v19);
  v80 = &v69[-v20];
  v76 = type metadata accessor for Preset(0);
  v85 = *(v76 - 8);
  v21 = MEMORY[0x28223BE20](v76);
  v74 = &v69[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v69[-v24];
  MEMORY[0x28223BE20](v23);
  v81 = &v69[-v26];
  v27 = (*(*(v3 + 96) + 32))(*(v3 + 80), *(v3 + 96));
  v28 = sub_25F761900(3, v27);

  if ((v28 & 1) == 0)
  {
    type metadata accessor for ProDisplayController.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v33 = 3;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v29 = v2 + qword_27FDB0588;
  swift_beginAccess();
  v30 = type metadata accessor for ProData();
  v31 = *(v29 + *(v30 + 28));
  v71 = v30;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = (*(v29 + *(v30 + 40)))();
  }

  v34 = *(v32 + 16);

  v35 = v86;
  if (!v34 || (v36 = sub_25F75D8B4(v86), (v37 & 1) == 0))
  {

    swift_endAccess();
    type metadata accessor for ProDisplayController.Error();
    swift_getWitnessTable();
    swift_allocError();
    sub_25F76183C(v35, v40, &qword_27FDAFBB0);
    goto LABEL_11;
  }

  sub_25F7C7134(*(v32 + 56) + *(v85 + 72) * v36, v25, type metadata accessor for Preset);
  v38 = v81;
  sub_25F7C6E94(v25, v81, type metadata accessor for Preset);
  swift_endAccess();

  v39 = *(type metadata accessor for Preset.Info(0) + 36);
  sub_25F76183C(&v38[v39], v18, &qword_27FDAFC10);
  if ((*(v83 + 48))(v18, 1, v84) == 1)
  {
    sub_25F760F44(v18, &qword_27FDAFC10);
  }

  else
  {
    v42 = v35;
    v43 = v80;
    sub_25F760FA4(v18, v80, &qword_27FDAFC18);
    swift_beginAccess();
    v44 = v82;
    v45 = FileDataStore.removeUA(from:live:)(v42, 0);
    swift_endAccess();
    if (!v44)
    {
      if ((v45 & 1) == 0)
      {
        v46 = v73;
        sub_25F76183C(v86, v73, &qword_27FDAFBB0);
        v47 = sub_25F8221CC();
        v48 = sub_25F82268C();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v86 = v29;
          v82 = 0;
          v51 = v50;
          v88[0] = v50;
          *v49 = 136315138;
          v70 = v48;
          v52 = v72;
          sub_25F76183C(v46, v72, &qword_27FDAFBB0);
          v53 = sub_25F82212C();
          v55 = v54;
          sub_25F760F44(v52, &qword_27FDAFBB0);
          v43 = v80;
          sub_25F760F44(v46, &qword_27FDAFBB0);
          v56 = sub_25F75CA94(v53, v55, v88);
          v38 = v81;

          *(v49 + 4) = v56;
          _os_log_impl(&dword_25F74E000, v47, v70, "data store didn't have a preset ID (%s) we expected it to", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v51);
          v29 = v86;
          MEMORY[0x25F8E88D0](v51, -1, -1);
          MEMORY[0x25F8E88D0](v49, -1, -1);
        }

        else
        {

          sub_25F760F44(v46, &qword_27FDAFBB0);
        }
      }

      sub_25F760F44(&v38[v39], &qword_27FDAFC10);
      (*(v83 + 56))(&v38[v39], 1, 1, v84);
      v57 = v77;
      sub_25F76183C(v38, v77, &qword_27FDAFBB0);
      v58 = v79;
      sub_25F7C7134(v38, v79, type metadata accessor for Preset);
      v59 = v76;
      (*(v85 + 56))(v58, 0, 1, v76);
      v60 = swift_beginAccess();
      v61 = *(v71 + 28);
      v86 = v61;
      if (*(v29 + v61))
      {
        v62 = *(v29 + v61);
      }

      else
      {
        v63 = (*(v29 + *(v71 + 40)))(v60);
        v58 = v79;
        v62 = v63;
      }

      v89 = v62;
      if ((*(v85 + 48))(v58, 1, v59) == 1)
      {

        sub_25F760F44(v58, &qword_27FDAFBE0);
        v64 = v75;
        sub_25F761908(v57);
        sub_25F760F44(v64, &qword_27FDAFBE0);
        sub_25F760F44(v57, &qword_27FDAFBB0);
        v65 = v89;
      }

      else
      {
        v66 = v74;
        sub_25F7C6E94(v58, v74, type metadata accessor for Preset);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = v62;
        sub_25F76074C(v66, v57, isUniquelyReferenced_nonNull_native);
        sub_25F760F44(v57, &qword_27FDAFBB0);
        v65 = v87;
      }

      *(v29 + v86) = v65;

      v68 = v78;
      sub_25F754174(v43, v78);
      swift_endAccess();
      sub_25F760F44(v68, &qword_27FDAFC28);
    }

    sub_25F760F44(v43, &qword_27FDAFC18);
  }

  return sub_25F7C71E4(v38, type metadata accessor for Preset);
}

uint64_t sub_25F7C6D18@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27FDB0588;
  swift_beginAccess();
  return sub_25F76183C(v1 + v3, a1, &qword_27FDAFBB0);
}

uint64_t sub_25F7C6DA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F7C11CC();
  *a1 = result;
  return result;
}

uint64_t sub_25F7C6E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F7C6F00()
{
  result = type metadata accessor for ProData();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FileDataStore(319);
    if (v2 <= 0x3F)
    {
      result = sub_25F8221EC();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void sub_25F7C7070()
{
  sub_25F76144C(319, &qword_27FDAFC88, type metadata accessor for Preset);
  if (v0 <= 0x3F)
  {
    sub_25F76144C(319, &qword_27FDAFC90, type metadata accessor for UserAdjustment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_25F7C7134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F7C719C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F7C71E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ProData.presets.getter()
{
  v1 = type metadata accessor for ProData();
  v2 = *(v1 + 28);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    v3 = (*(v0 + *(v1 + 40)))();
  }

  return v3;
}

uint64_t type metadata accessor for ProData()
{
  result = qword_27FDB06B0;
  if (!qword_27FDB06B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProData.userPresetCapacity.getter()
{
  v1 = type metadata accessor for ProData();
  v2 = (v0 + *(v1 + 32));
  if (v2[8] == 1)
  {
    return (*(v0 + *(v1 + 44)))();
  }

  else
  {
    return *v2;
  }
}

uint64_t ProData.presets.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProData() + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ProData.init(defaultPresetID:activePresetID:userAdjustments:loadPresets:loadUserCapacity:loadAppleCapacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = type metadata accessor for ProData();
  v16 = v15[6];
  sub_25F7C9F08(MEMORY[0x277D84F90]);
  *(a9 + v15[7]) = 0;
  v17 = a9 + v15[8];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a9 + v15[9];
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_25F760FA4(a1, a9, &qword_27FDAFBB0);
  sub_25F760FA4(a2, a9 + v15[5], &qword_27FDAFBB0);

  *(a9 + v16) = a3;
  v20 = (a9 + v15[10]);
  *v20 = a4;
  v20[1] = a5;
  v21 = (a9 + v15[11]);
  *v21 = a6;
  v21[1] = a7;
  v22 = (a9 + v15[12]);
  *v22 = a8;
  v22[1] = a10;
  return result;
}

uint64_t ProData.init(defaultPresetID:activePresetID:userAdjustments:presets:userPresetCapacity:applePresetCapacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = type metadata accessor for ProData();
  v18 = v10[6];
  sub_25F7C9F08(MEMORY[0x277D84F90]);
  v11 = v10[7];
  *(a7 + v11) = 0;
  v12 = a7 + v10[8];
  v13 = a7 + v10[9];
  sub_25F760FA4(a1, a7, &qword_27FDAFBB0);
  sub_25F760FA4(a2, a7 + v10[5], &qword_27FDAFBB0);

  *(a7 + v18) = a3;
  v15 = (a7 + v10[10]);
  *v15 = sub_25F7CAA30;
  v15[1] = 0;
  v16 = (a7 + v10[11]);
  *v16 = sub_25F7C7A4C;
  v16[1] = 0;
  v17 = (a7 + v10[12]);
  *v17 = sub_25F7C7A4C;
  v17[1] = 0;
  *v12 = a5;
  *(v12 + 8) = 0;
  *v13 = a6;
  *(v13 + 8) = 0;
  *(a7 + v11) = a4;
  return result;
}

uint64_t ProData.activePresetID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProData() + 20);

  return sub_25F7CA130(a1, v3);
}

uint64_t ProData.userAdjustments.getter()
{
  type metadata accessor for ProData();
}

uint64_t ProData.userAdjustments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProData() + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25F7C7820@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ProData();
  v5 = *(v4 + 28);
  if (*(a1 + v5))
  {
    v6 = *(a1 + v5);
  }

  else
  {
    v6 = (*(a1 + *(v4 + 40)))();
  }

  *a2 = v6;
}

uint64_t sub_25F7C7894(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for ProData() + 28);

  *(a2 + v4) = v3;
  return result;
}

uint64_t (*ProData.presets.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = type metadata accessor for ProData();
  v4 = *(v3 + 28);
  *(a1 + 24) = v4;
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = *(v1 + v4);
  }

  else
  {
    v6 = (*(v1 + *(v3 + 40)))();
    v5 = 0;
  }

  *(a1 + 16) = v5;
  *a1 = v6;

  return sub_25F7C7974;
}

uint64_t sub_25F7C7974(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(a1 + 6);
  v4 = *a1;
  if (a2)
  {

    *(v2 + v3) = v4;
  }

  else
  {

    *(v2 + v3) = v4;
  }

  return result;
}

uint64_t ProData.applePresetCapacity.getter()
{
  v1 = type metadata accessor for ProData();
  v2 = (v0 + *(v1 + 36));
  if (v2[8] == 1)
  {
    return (*(v0 + *(v1 + 48)))();
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_25F7C7A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAdjustment();
  v83 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v68 - v9;
  MEMORY[0x28223BE20](v8);
  v78 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v77 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v79 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v76 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC38);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17);
  v80 = &v68 - v21;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v74 = v4;
  v75 = v10;
  v22 = 0;
  v23 = *(a1 + 64);
  v70 = a1 + 64;
  v71 = a1;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v69 = (v24 + 63) >> 6;
  v82 = v19;
  v72 = v7;
  v73 = a2;
  while (v26)
  {
    v81 = (v26 - 1) & v26;
    v27 = __clz(__rbit64(v26)) | (v22 << 6);
LABEL_16:
    v32 = v76;
    sub_25F76183C(*(a1 + 48) + *(v77 + 72) * v27, v76, &qword_27FDAFC18);
    v33 = *(a1 + 56) + *(v83 + 72) * v27;
    v34 = v78;
    sub_25F7CA968(v33, v78, type metadata accessor for UserAdjustment);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC40);
    v36 = *(v35 + 48);
    v37 = v32;
    v19 = v82;
    sub_25F760FA4(v37, v82, &qword_27FDAFC18);
    sub_25F76E298(v34, &v19[v36], type metadata accessor for UserAdjustment);
    (*(*(v35 - 8) + 56))(v19, 0, 1, v35);
    v7 = v72;
    a2 = v73;
LABEL_17:
    v38 = v19;
    v39 = v80;
    sub_25F760FA4(v38, v80, &qword_27FDAFC38);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC40);
    v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
    v42 = v41 == 1;
    if (v41 == 1)
    {
      return v42;
    }

    v43 = *(v40 + 48);
    v44 = v39;
    v45 = v39;
    v46 = v79;
    sub_25F760FA4(v44, v79, &qword_27FDAFC18);
    v47 = v75;
    sub_25F76E298(v45 + v43, v75, type metadata accessor for UserAdjustment);
    v48 = sub_25F75DA30(v46);
    LOBYTE(v43) = v49;
    sub_25F760F44(v46, &qword_27FDAFC18);
    if ((v43 & 1) == 0)
    {
      goto LABEL_34;
    }

    sub_25F7CA968(*(a2 + 56) + *(v83 + 72) * v48, v7, type metadata accessor for UserAdjustment);
    v50 = sub_25F82213C();
    v51 = v74;
    if ((v50 & 1) == 0 || (sub_25F8220EC() & 1) == 0 || ((v52 = v51[6], v53 = *&v7[v52], v54 = *&v7[v52 + 8], v55 = (v47 + v52), v53 != *v55) || v54 != v55[1]) && (sub_25F822CBC() & 1) == 0 || (v56 = v51[7], v57 = &v7[v56], v58 = *&v7[v56], v59 = (v47 + v56), v58 != *v59) || *(v57 + 1) != v59[1] || *&v7[v51[8]] != *(v47 + v51[8]) || (v60 = v51[9], v61 = &v7[v60], v62 = *&v7[v60], v63 = (v47 + v60), v62 != *v63) || *(v61 + 1) != v63[1])
    {
      sub_25F7CA9D0(v7, type metadata accessor for UserAdjustment);
LABEL_34:
      sub_25F7CA9D0(v47, type metadata accessor for UserAdjustment);
      return 0;
    }

    v64 = v51[10];
    v65 = *&v7[v64];
    v66 = *(v47 + v64);
    sub_25F7CA9D0(v7, type metadata accessor for UserAdjustment);
    result = sub_25F7CA9D0(v47, type metadata accessor for UserAdjustment);
    a1 = v71;
    v26 = v81;
    v19 = v82;
    if (v65 != v66)
    {
      return v42;
    }
  }

  if (v69 <= v22 + 1)
  {
    v28 = v22 + 1;
  }

  else
  {
    v28 = v69;
  }

  v29 = v28 - 1;
  while (1)
  {
    v30 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v30 >= v69)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC40);
      (*(*(v67 - 8) + 56))(v19, 1, 1, v67);
      v81 = 0;
      v22 = v29;
      goto LABEL_17;
    }

    v31 = *(v70 + 8 * v30);
    ++v22;
    if (v31)
    {
      v81 = (v31 - 1) & v31;
      v27 = __clz(__rbit64(v31)) | (v30 << 6);
      v22 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7C8120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Preset(0);
  v114 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v116 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v101 - v8;
  MEMORY[0x28223BE20](v7);
  v109 = &v101 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v108 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v110 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v107 = &v101 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0180);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v115 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v20 = &v101 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v106 = a2;
  v104 = v4;
  v105 = v9;
  v21 = 0;
  v102 = a1;
  v22 = *(a1 + 64);
  v101 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v27 = v115;
  v111 = &v101 - v19;
  v103 = v26;
  while (v25)
  {
    v113 = (v25 - 1) & v25;
    v28 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_16:
    v33 = v102;
    v34 = v107;
    sub_25F76183C(*(v102 + 48) + *(v108 + 72) * v28, v107, &qword_27FDAFBB0);
    v35 = v109;
    sub_25F7CA968(*(v33 + 56) + *(v114 + 72) * v28, v109, type metadata accessor for Preset);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0150);
    v37 = *(v36 + 48);
    v38 = v34;
    v27 = v115;
    sub_25F760FA4(v38, v115, &qword_27FDAFBB0);
    sub_25F76E298(v35, v27 + v37, type metadata accessor for Preset);
    (*(*(v36 - 8) + 56))(v27, 0, 1, v36);
    v20 = v111;
LABEL_17:
    sub_25F760FA4(v27, v20, &qword_27FDB0180);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0150);
    v40 = (*(*(v39 - 8) + 48))(v20, 1, v39) == 1;
    result = v40;
    if (v40)
    {
      return result;
    }

    v112 = v40;
    v41 = v105;
    v42 = v116;
    v43 = *(v39 + 48);
    v44 = v110;
    sub_25F760FA4(v20, v110, &qword_27FDAFBB0);
    sub_25F76E298(&v20[v43], v41, type metadata accessor for Preset);
    v45 = v106;
    v46 = sub_25F75D8B4(v44);
    v48 = v47;
    sub_25F760F44(v44, &qword_27FDAFBB0);
    if ((v48 & 1) == 0)
    {
      v100 = v41;
      goto LABEL_27;
    }

    sub_25F7CA968(*(v45 + 56) + *(v114 + 72) * v46, v42, type metadata accessor for Preset);
    v49 = v41;
    if (!_s17ProDisplayLibrary6PresetV4InfoV2eeoiySbAE_AEtFZ_0(v42, v41) || (v50 = v104, v51 = v116 + *(v104 + 20), v52 = *(v51 + 176), v53 = *(v51 + 208), v184 = *(v51 + 192), v185 = v53, v54 = *(v51 + 208), v186 = *(v51 + 224), v187 = *(v51 + 240), v55 = *(v51 + 112), v56 = *(v51 + 144), v180 = *(v51 + 128), v181 = v56, v57 = *(v51 + 176), v58 = *(v51 + 144), v182 = *(v51 + 160), v183 = v57, v59 = *(v51 + 48), v60 = *(v51 + 80), v176 = *(v51 + 64), v177 = v60, v61 = *(v51 + 112), v62 = *(v51 + 80), v178 = *(v51 + 96), v179 = v61, v63 = *(v51 + 16), v173[0] = *v51, v173[1] = v63, v64 = *(v51 + 48), v174 = *(v51 + 32), v175 = v64, v161 = v59, v160 = v174, v164[1] = v55, v164[0] = v178, v163 = v62, v162 = v176, v168 = v52, v167 = v182, v166 = v58, v165 = v180, v172 = *(v51 + 240), v171 = *(v51 + 224), v170 = v54, v169 = v184, v159 = v63, v158 = v173[0], v65 = v41 + *(v104 + 20), v66 = *(v65 + 208), v67 = *(v65 + 176), v199 = *(v65 + 192), v200 = v66, v68 = *(v65 + 208), v201 = *(v65 + 224), v69 = *(v65 + 144), v70 = *(v65 + 112), v195 = *(v65 + 128), v196 = v69, v71 = *(v65 + 144), v72 = *(v65 + 176), v197 = *(v65 + 160), v198 = v72, v73 = *(v65 + 80), v74 = *(v65 + 48), v191 = *(v65 + 64), v192 = v73, v75 = *(v65 + 80), v76 = *(v65 + 112), v193 = *(v65 + 96), v194 = v76, v77 = *(v65 + 16), v188[0] = *v65, v188[1] = v77, v78 = *(v65 + 48), v80 = *v65, v79 = *(v65 + 16), v189 = *(v65 + 32), v190 = v78, v154 = v199, v155 = v68, v156 = *(v65 + 224), v150 = v195, v151 = v71, v152 = v197, v153 = v67, v147 = v191, v148 = v75, v149[0] = v193, v149[1] = v70, v143 = v80, v144 = v79, v202 = *(v65 + 240), v157 = *(v65 + 240), v145 = v189, v146 = v74, sub_25F7A223C(v173, v137), sub_25F7A223C(v188, v137), v81 = _s17ProDisplayLibrary6PresetV14SpecificationsV2eeoiySbAE_AEtFZ_0(&v158, &v143), v203[12] = v154, v203[13] = v155, v203[14] = v156, v204 = v157, v203[8] = v150, v203[9] = v151, v203[10] = v152, v203[11] = v153, v203[4] = v147, v203[5] = v148, v203[6] = v149[0], v203[7] = v149[1], v203[0] = v143, v203[1] = v144, v203[2] = v145, v203[3] = v146, sub_25F777E5C(v203), v205[12] = v169, v205[13] = v170, v205[14] = v171, v206 = v172, v205[8] = v165, v205[9] = v166, v205[10] = v167, v205[11] = v168, v205[4] = v162, v205[5] = v163, v205[6] = v164[0], v205[7] = v164[1], v205[0] = v158, v205[1] = v159, v205[2] = v160, v205[3] = v161, sub_25F777E5C(v205), (v81 & 1) == 0))
    {
      sub_25F7CA9D0(v116, type metadata accessor for Preset);
      v100 = v41;
LABEL_27:
      sub_25F7CA9D0(v100, type metadata accessor for Preset);
      return 0;
    }

    v82 = v116;
    v83 = (v116 + *(v50 + 24));
    v84 = v83[5];
    v85 = v83[3];
    v134 = v83[4];
    v135 = v84;
    v86 = v83[5];
    v136[0] = v83[6];
    *(v136 + 12) = *(v83 + 108);
    v87 = v83[1];
    v131[0] = *v83;
    v131[1] = v87;
    v88 = v83[3];
    v90 = *v83;
    v89 = v83[1];
    v132 = v83[2];
    v133 = v88;
    v128 = v134;
    v129 = v86;
    v130[0] = v83[6];
    *(v130 + 12) = *(v83 + 108);
    v126 = v132;
    v127 = v85;
    v124 = v90;
    v125 = v89;
    v91 = (v49 + *(v50 + 24));
    v92 = v91[5];
    v93 = v91[3];
    v140 = v91[4];
    v141 = v92;
    v94 = v91[5];
    v142[0] = v91[6];
    *(v142 + 12) = *(v91 + 108);
    v95 = v91[1];
    v96 = v91[3];
    v138 = v91[2];
    v139 = v96;
    v97 = v91[1];
    v137[0] = *v91;
    v137[1] = v97;
    v121 = v140;
    v122 = v94;
    v123[0] = v91[6];
    *(v123 + 12) = *(v91 + 108);
    v117 = v137[0];
    v118 = v95;
    v119 = v138;
    v120 = v93;
    v98 = _s17ProDisplayLibrary6PresetV12HostSettingsV2eeoiySbAE_AEtFZ_0(&v124, &v117);
    sub_25F7A2298(v131, &v158);
    sub_25F7A2298(v137, &v158);
    sub_25F7CA9D0(v82, type metadata accessor for Preset);
    sub_25F7CA9D0(v49, type metadata accessor for Preset);
    v147 = v121;
    v148 = v122;
    v149[0] = v123[0];
    *(v149 + 12) = *(v123 + 12);
    v143 = v117;
    v144 = v118;
    v145 = v119;
    v146 = v120;
    sub_25F7CA914(&v143);
    v162 = v128;
    v163 = v129;
    v164[0] = v130[0];
    *(v164 + 12) = *(v130 + 12);
    v158 = v124;
    v159 = v125;
    v160 = v126;
    v161 = v127;
    sub_25F7CA914(&v158);
    v20 = v111;
    v26 = v103;
    v25 = v113;
    v27 = v115;
    result = v112;
    if ((v98 & 1) == 0)
    {
      return result;
    }
  }

  if (v26 <= v21 + 1)
  {
    v29 = v21 + 1;
  }

  else
  {
    v29 = v26;
  }

  v30 = v29 - 1;
  while (1)
  {
    v31 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v31 >= v26)
    {
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0150);
      (*(*(v99 - 8) + 56))(v27, 1, 1, v99);
      v113 = 0;
      v21 = v30;
      goto LABEL_17;
    }

    v32 = *(v101 + 8 * v31);
    ++v21;
    if (v32)
    {
      v113 = (v32 - 1) & v32;
      v28 = __clz(__rbit64(v32)) | (v31 << 6);
      v21 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7C8B64()
{
  sub_25F8222DC();
}

uint64_t sub_25F7C8C84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25F7CA8C8();
  *a1 = result;
  return result;
}

void sub_25F7C8CB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF44497465736572;
  v4 = 0x50746C7561666564;
  v5 = 0xE700000000000000;
  v6 = 0x73746573657270;
  v7 = 0xD000000000000012;
  v8 = 0x800000025F82C460;
  if (v2 != 4)
  {
    v7 = 0xD000000000000013;
    v8 = 0x800000025F82C480;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEE00444974657365;
  v10 = 0x7250657669746361;
  if (v2 != 1)
  {
    v10 = 0x756A644172657375;
    v9 = 0xEF73746E656D7473;
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

uint64_t sub_25F7C8D9C()
{
  v1 = *v0;
  v2 = 0x50746C7561666564;
  v3 = 0x73746573657270;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7250657669746361;
  if (v1 != 1)
  {
    v5 = 0x756A644172657375;
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

uint64_t sub_25F7C8E80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25F7CA8C8();
  *a1 = result;
  return result;
}

uint64_t sub_25F7C8EB4(uint64_t a1)
{
  v2 = sub_25F7CA1A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7C8EF0(uint64_t a1)
{
  v2 = sub_25F7CA1A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0698);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7CA1A0();
  sub_25F822E5C();
  LOBYTE(v17) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  sub_25F76100C(&qword_27FDAFE38, &qword_27FDAFBB0);
  sub_25F822C4C();
  if (!v2)
  {
    v9 = type metadata accessor for ProData();
    LOBYTE(v17) = 1;
    sub_25F822C4C();
    v17 = *(v3 + v9[6]);
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFDF8);
    sub_25F763E4C();
    sub_25F822C4C();
    v10 = v9[7];
    if (*(v3 + v10))
    {
      v11 = *(v3 + v10);
    }

    else
    {
      v11 = (*(v3 + v9[10]))();
    }

    v17 = v11;
    v16 = 3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFDE0);
    sub_25F763D64();
    sub_25F822C4C();

    if (*(v3 + v9[8] + 8) == 1)
    {
      (*(v3 + v9[11]))(v12);
    }

    LOBYTE(v17) = 4;
    v13 = sub_25F822C2C();
    if (*(v3 + v9[9] + 8) == 1)
    {
      (*(v3 + v9[12]))(v13);
    }

    LOBYTE(v17) = 5;
    sub_25F822C2C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ProData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v3 = MEMORY[0x28223BE20](v33);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB06A8);
  v31 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = &v26 - v6;
  v8 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_25F7C9F08(MEMORY[0x277D84F90]);
  v38 = a1;
  v11 = v8[7];
  *(v11 + v10) = 0;
  v12 = &v10[v8[8]];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v10[v8[9]];
  *v13 = 0;
  v13[8] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7CA1A0();
  v35 = v7;
  v14 = v36;
  sub_25F822E3C();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
  }

  else
  {
    v36 = v11;
    v27 = v13;
    v28 = v12;
    v15 = v31;
    LOBYTE(v40) = 0;
    sub_25F76100C(&qword_27FDAFDD8, &qword_27FDAFBB0);
    v16 = v32;
    sub_25F822B6C();
    sub_25F760FA4(v16, v10, &qword_27FDAFBB0);
    LOBYTE(v40) = 1;
    v17 = v30;
    sub_25F822B6C();
    sub_25F760FA4(v17, &v10[v8[5]], &qword_27FDAFBB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFDF8);
    v39 = 2;
    sub_25F763B90();
    sub_25F822B6C();

    *&v10[v8[6]] = v40;
    v18 = &v10[v8[10]];
    *v18 = sub_25F7CAA30;
    *(v18 + 1) = 0;
    v19 = &v10[v8[11]];
    *v19 = sub_25F7C7A4C;
    v19[1] = 0;
    v20 = &v10[v8[12]];
    *v20 = sub_25F7C7A4C;
    v20[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFDE0);
    v39 = 3;
    sub_25F763AA8();
    sub_25F822B6C();
    *v36 = v40;
    LOBYTE(v40) = 4;
    v21 = sub_25F822B4C();
    v22 = v28;
    *v28 = v21;
    *(v22 + 8) = 0;
    LOBYTE(v40) = 5;
    v23 = sub_25F822B4C();
    (*(v15 + 8))(v35, v34);
    v24 = v27;
    *v27 = v23;
    *(v24 + 8) = 0;
    sub_25F7CA968(0, v29, type metadata accessor for ProData);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    return sub_25F7CA9D0(0, type metadata accessor for ProData);
  }
}

BOOL _s17ProDisplayLibrary0A4DataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_25F82213C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ProData();
  if ((sub_25F82213C() & 1) == 0 || (sub_25F7C7A58(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  if (*(a1 + v5))
  {
    v6 = *(a1 + v5);
    v7 = *(a2 + v5);
    if (v7)
    {
LABEL_6:

      v8 = v7;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = (*(a1 + v4[10]))();
    v7 = *(a2 + v4[7]);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v9 = *(a2 + v4[10]);

  v8 = v9(v10);
LABEL_9:

  v11 = sub_25F7C8120(v6, v8);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v13 = v4[8];
  if (*(a1 + v13 + 8) == 1)
  {
    v14 = (*(a1 + v4[11]))(v12);
    v13 = v4[8];
  }

  else
  {
    v14 = *(a1 + v13);
  }

  v15 = a2 + v13;
  if (*(v15 + 8) == 1)
  {
    if (v14 != (*(a2 + v4[11]))())
    {
      return 0;
    }
  }

  else if (v14 != *v15)
  {
    return 0;
  }

  v17 = v4[9];
  if (*(a1 + v17 + 8) == 1)
  {
    v18 = (*(a1 + v4[12]))();
    v17 = v4[9];
  }

  else
  {
    v18 = *(a1 + v17);
  }

  v19 = a2 + v17;
  if (*(v19 + 8) == 1)
  {
    v20 = (*(a2 + v4[12]))();
  }

  else
  {
    v20 = *v19;
  }

  return v18 == v20;
}

unint64_t sub_25F7C9AA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCD0);
    v7 = sub_25F822A8C();
    v19 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_25F76183C(v8, v5, &qword_27FDB0700);
      result = sub_25F75D8B4(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
      result = sub_25F760FA4(v5, v13 + *(*(v14 - 8) + 72) * v12, &qword_27FDAFBB0);
      *(v7[7] + 4 * v12) = *&v5[v19];
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_25F7C9C9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0530);
    v3 = sub_25F822A8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F76183C(v4, v13, &qword_27FDB0008);
      result = sub_25F75DAEC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_25F7BFD48(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_25F7C9DD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB06F0);
    v3 = sub_25F822A8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F76183C(v4, &v13, &qword_27FDAFF38);
      v5 = v13;
      v6 = v14;
      result = sub_25F75DB30(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25F7BFD48(&v15, (v3[7] + 32 * result));
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

unint64_t sub_25F7C9F08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB06F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFCD8);
    v7 = sub_25F822A8C();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_25F76183C(v8, v5, &qword_27FDB06F8);
      result = sub_25F75DA30(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
      sub_25F760FA4(v5, v13 + *(*(v14 - 8) + 72) * v12, &qword_27FDAFC18);
      v15 = v7[7];
      v16 = type metadata accessor for UserAdjustment();
      result = sub_25F76E298(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, type metadata accessor for UserAdjustment);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_25F7CA130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F7CA1A0()
{
  result = qword_27FDB06A0;
  if (!qword_27FDB06A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB06A0);
  }

  return result;
}

uint64_t sub_25F7CA210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
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

uint64_t sub_25F7CA2EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
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

void sub_25F7CA3B0()
{
  sub_25F761BC0();
  if (v0 <= 0x3F)
  {
    sub_25F761CD4();
    if (v1 <= 0x3F)
    {
      sub_25F7CA484();
      if (v2 <= 0x3F)
      {
        sub_25F7CA4E8();
        if (v3 <= 0x3F)
        {
          sub_25F7CA538();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25F7CA484()
{
  if (!qword_27FDB06C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFDE0);
    v0 = sub_25F82279C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDB06C0);
    }
  }
}

void sub_25F7CA4E8()
{
  if (!qword_27FDB06C8)
  {
    v0 = sub_25F82279C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDB06C8);
    }
  }
}

unint64_t sub_25F7CA538()
{
  result = qword_27FDB06D0;
  if (!qword_27FDB06D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FDB06D0);
  }

  return result;
}

unint64_t sub_25F7CA59C()
{
  result = qword_27FDB06D8;
  if (!qword_27FDB06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB06D8);
  }

  return result;
}

unint64_t sub_25F7CA5F4()
{
  result = qword_27FDB06E0;
  if (!qword_27FDB06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB06E0);
  }

  return result;
}

unint64_t sub_25F7CA64C()
{
  result = qword_27FDB06E8;
  if (!qword_27FDB06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB06E8);
  }

  return result;
}

unint64_t sub_25F7CA6A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBC8);
    v7 = sub_25F822A8C();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_25F76183C(v8, v5, &qword_27FDAFBA8);
      result = sub_25F75D8B4(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
      sub_25F760FA4(v5, v13 + *(*(v14 - 8) + 72) * v12, &qword_27FDAFBB0);
      v15 = v7[7];
      v16 = type metadata accessor for Preset(0);
      result = sub_25F76E298(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, type metadata accessor for Preset);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_25F7CA8C8()
{
  v0 = sub_25F822A9C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F7CA968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F7CA9D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F7CAA34(void (*a1)(_OWORD *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v31 = MEMORY[0x277D84F90];
  sub_25F817CE8(0, v5, 0);
  v6 = v31;
  for (i = (a3 + 60); ; i += 32)
  {
    v10 = *(i - 20);
    v11 = *(i - 3);
    v12 = *(i - 8);
    v13 = *(i - 1);
    v14 = *i;
    v24[0] = *(i - 28);
    v25 = v10;
    v26 = v11;
    v27 = v12;
    v28 = v13;
    v29 = v14;

    a1(v30, v24);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v30[3];
    v23 = v30[4];
    v20 = v30[1];
    v21 = v30[2];
    v19 = v30[0];
    v31 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_25F817CE8((v15 > 1), v16 + 1, 1);
      v6 = v31;
    }

    *(v6 + 16) = v16 + 1;
    v17 = (v6 + 80 * v16);
    v17[2] = v19;
    v17[5] = v22;
    v17[6] = v23;
    v17[3] = v20;
    v17[4] = v21;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t Preset.Info.init(name:description:origin:uuid:creationDate:userAdjustment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a5;
  v16 = type metadata accessor for Preset.Info(0);
  v17 = v16[8];
  v18 = sub_25F82210C();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = v16[9];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = sub_25F82217C();
  (*(*(v21 - 8) + 32))(a9, a6, v21);
  v22 = (a9 + v16[5]);
  *v22 = a1;
  v22[1] = a2;
  v23 = (a9 + v16[6]);
  *v23 = a3;
  v23[1] = a4;
  *(a9 + v16[7]) = v15;
  sub_25F760E58(a7, a9 + v17, &qword_27FDAFC20);
  return sub_25F760E58(a8, a9 + v19, &qword_27FDAFC10);
}

uint64_t sub_25F7CAD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v83 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v83 - v7;
  *&v105 = type metadata accessor for Preset.Info(0);
  MEMORY[0x28223BE20](v105);
  v108 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v106 = type metadata accessor for PresetV1(0);
  v10 = *(v106 + 24);
  v109 = a1;
  v11 = (a1 + v10);
  v96 = *(a1 + v10 + 40) == 1 && v11[11] > 0.0;
  v12 = type metadata accessor for PresetV1.Info(0);
  v13 = v12[7];
  v14 = v109;
  v15 = (v109 + v12[6]);
  v17 = *v15;
  v16 = v15[1];
  v101 = v17;
  v100 = v16;
  v18 = *(v109 + v13 + 8);
  v104 = *(v109 + v13);
  v102 = v18;
  LODWORD(v103) = *(v109 + v12[8]);
  sub_25F76183C(v109, v8, &qword_27FDAFBB0);
  v19 = sub_25F82217C();
  v20 = v108;
  (*(*(v19 - 8) + 32))(v108, v8, v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  v99 = &v83;
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v83 - v22;
  v24 = v12[9];
  v25 = sub_25F82210C();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v23, v14 + v24, v25);
  v27 = *(v26 + 56);
  v27(v23, 0, 1, v25);
  v28 = v14 + v12[10];
  v98 = v5;
  sub_25F76183C(v28, v5, &qword_27FDAFC10);
  v29 = v105;
  v30 = *(v105 + 32);
  v27((v20 + v30), 1, 1, v25);
  v31 = v29[9];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  (*(*(v32 - 8) + 56))(v20 + v31, 1, 1, v32);
  v33 = (v20 + v29[5]);
  v34 = v100;
  *v33 = v101;
  v33[1] = v34;
  v35 = (v20 + v29[6]);
  v36 = v102;
  *v35 = v104;
  v35[1] = v36;
  *(v20 + v29[7]) = v103;

  sub_25F760E58(v23, v20 + v30, &qword_27FDAFC20);
  v37 = sub_25F760E58(v98, v20 + v31, &qword_27FDAFC10);
  v38 = v14 + *(v106 + 20);
  v39 = *v38;
  v105 = *(v38 + 16);
  v106 = v39;
  v40 = *(v38 + 32);
  v104 = *(v38 + 40);
  v41 = *(v38 + 48);
  v42 = *(v38 + 56);
  v43 = *(v38 + 64);
  v44 = *(v38 + 72);
  v45 = *(v38 + 76);
  v46 = *(v38 + 80);
  v47 = *(v38 + 84);
  MEMORY[0x28223BE20](v37);
  *(&v83 - 2) = v14;
  v48 = v107;
  result = sub_25F7CAA34(sub_25F7D5598, (&v83 - 4), v49);
  v51 = *(v38 + 120);
  v52 = *(v38 + 124);
  if (v51 > v52)
  {
    __break(1u);
  }

  else
  {
    v99 = result;
    v100 = v40;
    v101 = v43;
    v102 = v42;
    v107 = v48;
    v93 = *(v38 + 96);
    v95 = *(v38 + 106);
    v92 = *(v38 + 104);
    v53 = *(v38 + 100);
    v103 = *(v38 + 128);
    v94 = *(v38 + 136);
    v54 = *(v38 + 137);
    v117 = 1;
    v116 = v41;
    v55 = v44;
    v115 = v44;
    v118 = 1;
    v91 = *v11;
    v90 = *(v11 + 1);
    v56 = *(v11 + 2);
    v89 = *(v11 + 3);
    LODWORD(v98) = *(v11 + 6);
    v57 = 0.0;
    v58 = *(v11 + 4);
    if ((v58 & 1) == 0)
    {
      v57 = v11[2];
    }

    v88 = v57;
    v87 = fmax((v45 / v46), 16.0);
    v85 = v54 != 0;
    v59 = v53;
    v60 = v47;
    v61 = v46;
    v62 = v45;
    v63 = v52;
    v64 = v51;
    v65 = *(v11 + 16);
    v66 = v11[3];
    if (v65)
    {
      v66 = 0.0;
    }

    v86 = v66;
    v67 = *(v11 + 24);
    v68 = v11[5];
    if (v67)
    {
      v68 = 0.0;
    }

    v84 = v68;
    v69 = v11[8];
    v83 = v11[7];
    v70 = v11[9];
    v71 = *(v38 + 105);
    v114 = v56;
    v72 = v69;
    v73 = v70;
    v113 = 0;
    v112 = v58;
    if (v56)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v69;
    }

    v111 = v65;
    v110 = v67;
    v75 = v97;
    sub_25F7750B8(v108, v97);
    v76 = type metadata accessor for Preset(0);
    v77 = v75 + *(v76 + 20);
    v78 = v105;
    *v77 = v106;
    *(v77 + 16) = v78;
    v79 = v104;
    *(v77 + 32) = v100;
    *(v77 + 40) = v79;
    *(v77 + 48) = v41;
    *(v77 + 56) = 0u;
    *(v77 + 72) = 0u;
    *(v77 + 88) = 0u;
    *(v77 + 104) = 0;
    *(v77 + 105) = 1;
    v80 = v101;
    *(v77 + 112) = v102;
    *(v77 + 120) = v80;
    *(v77 + 128) = v55;
    *(v77 + 136) = 0;
    *(v77 + 144) = 0;
    *(v77 + 152) = 0;
    *(v77 + 153) = 1;
    *(v77 + 160) = v62;
    *(v77 + 168) = v61;
    *(v77 + 176) = v60;
    *(v77 + 184) = v99;
    *(v77 + 192) = v93;
    *(v77 + 200) = v59;
    *(v77 + 208) = v92;
    *(v77 + 209) = v95;
    *(v77 + 216) = v64;
    *(v77 + 224) = v63;
    *(v77 + 232) = v103;
    *(v77 + 240) = v94;
    *(v77 + 241) = 257;
    *(v77 + 243) = v85;
    v81 = v75 + *(v76 + 24);
    *v81 = v91;
    *(v81 + 1) = v90;
    *(v81 + 2) = v56;
    *(v81 + 3) = v89;
    *(v81 + 8) = v74;
    *(v81 + 16) = v56;
    *(v81 + 17) = 1;
    *(v81 + 24) = v87;
    *(v81 + 32) = 0;
    *(v81 + 33) = v98;
    *(v81 + 40) = 0;
    *(v81 + 48) = v88;
    *(v81 + 56) = v58;
    *(v81 + 64) = v86;
    *(v81 + 72) = v65;
    *(v81 + 80) = v84;
    *(v81 + 88) = v67;
    *(v81 + 96) = v83;
    *(v81 + 104) = v72;
    *(v81 + 112) = v73;
    *(v81 + 120) = v71;
    v82 = v96;
    *(v81 + 121) = v96;
    *(v81 + 122) = 1;
    *(v81 + 123) = v82;

    return sub_25F7D20FC(v109, type metadata accessor for PresetV1);
  }

  return result;
}

uint64_t Preset.Specifications.init(primaries:perceptualPrimaries:whitepoint:perceptualWhitepoint:maxHDRLuminance:maxSDRLuminance:minLuminance:transferFunction:defaultTransferFunction:advertisedGamma:enableBT2020:enableGlobalBacklight:contrastEnhancementFactorLimits:supportedLatencyModes:defaultLatencyMode:calibrationSpace:useUserCalibrationsIfAvailable:perceptualOptimization:)@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, char *a17, char *a18, char a19, char *a20)
{
  v20 = *(result + 48);
  v21 = *(a3 + 16);
  v22 = *(a4 + 16);
  v23 = *(a4 + 17);
  v24 = *a6;
  v25 = *a17;
  v26 = *a18;
  v27 = *a20;
  v28 = *(result + 16);
  *a9 = *result;
  *(a9 + 16) = v28;
  *(a9 + 32) = *(result + 32);
  *(a9 + 48) = v20;
  v29 = *a2;
  v30 = a2[1];
  v31 = a2[2];
  *(a9 + 104) = *(a2 + 24);
  *(a9 + 88) = v31;
  *(a9 + 72) = v30;
  *(a9 + 56) = v29;
  *(a9 + 112) = *a3;
  *(a9 + 128) = v21;
  *(a9 + 136) = *a4;
  *(a9 + 152) = v22;
  *(a9 + 153) = v23;
  *(a9 + 160) = a10;
  *(a9 + 168) = a11;
  *(a9 + 176) = a12;
  *(a9 + 184) = a5;
  *(a9 + 192) = v24;
  *(a9 + 200) = a13;
  *(a9 + 208) = a7;
  *(a9 + 209) = a8;
  *(a9 + 216) = a14;
  *(a9 + 224) = a15;
  *(a9 + 232) = a16;
  *(a9 + 240) = v25;
  *(a9 + 241) = v26;
  *(a9 + 242) = a19;
  *(a9 + 243) = v27;
  return result;
}

uint64_t Preset.HostSettings.init(disableHarmony:disableNightShift:disableAutoBrightness:disableAutoBlackLevel:maxAutoBrightness:disableHDRToneMapping:maxPotentialEDRHeadroom:disableUserAdjustment:disableUserAdjustmentInterfaces:systemGammaValue:targetAmbientBrightness:targetAmbientBrightnessExcursion:minBrightnessForSlider:maxBrightnessForSlider:defaultBrightnessForSlider:allowAppleLook:highPrecision:visibleByDefault:allowNotifications:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, char a22, char a23, char a24, char a25)
{
  *(a9 + 96) = a10;
  *(a9 + 104) = a11;
  if (a6)
  {
    a5 = a11;
  }

  if (a3)
  {
    a5 = 0.0;
  }

  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 8) = a5;
  *(a9 + 16) = a3;
  *(a9 + 17) = a7;
  *(a9 + 24) = a8;
  *(a9 + 32) = a13 & 1;
  *(a9 + 33) = a14;
  *(a9 + 40) = a15;
  *(a9 + 48) = a16;
  *(a9 + 56) = a17 & 1;
  *(a9 + 64) = a18;
  *(a9 + 72) = a19 & 1;
  *(a9 + 80) = a20;
  *(a9 + 88) = a21 & 1;
  *(a9 + 112) = a12;
  *(a9 + 120) = a22;
  *(a9 + 121) = a23;
  *(a9 + 122) = a24;
  *(a9 + 123) = a25;
  return result;
}

__n128 Preset.init(info:specifications:hostSettings:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_25F7750B8(a1, a4);
  v7 = type metadata accessor for Preset(0);
  v8 = a4 + *(v7 + 20);
  v9 = *(a2 + 208);
  *(v8 + 192) = *(a2 + 192);
  *(v8 + 208) = v9;
  *(v8 + 224) = *(a2 + 224);
  *(v8 + 240) = *(a2 + 240);
  v10 = *(a2 + 144);
  *(v8 + 128) = *(a2 + 128);
  *(v8 + 144) = v10;
  v11 = *(a2 + 176);
  *(v8 + 160) = *(a2 + 160);
  *(v8 + 176) = v11;
  v12 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v12;
  v13 = *(a2 + 112);
  *(v8 + 96) = *(a2 + 96);
  *(v8 + 112) = v13;
  v14 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v14;
  v15 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v15;
  v16 = a4 + *(v7 + 24);
  v17 = *(a3 + 80);
  *(v16 + 64) = *(a3 + 64);
  *(v16 + 80) = v17;
  *(v16 + 96) = *(a3 + 96);
  *(v16 + 108) = *(a3 + 108);
  v18 = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 16) = v18;
  result = *(a3 + 32);
  v20 = *(a3 + 48);
  *(v16 + 32) = result;
  *(v16 + 48) = v20;
  return result;
}

uint64_t Preset.PerceptualOptimization.subtypeVal.getter()
{
  if (*v0)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

ProDisplayLibrary::Preset::PerceptualOptimization_optional __swiftcall Preset.PerceptualOptimization.init(TCLubSubtype:)(ProDisplayLibrary::Preset::PerceptualOptimization_optional TCLubSubtype)
{
  if (TCLubSubtype.value == ProDisplayLibrary_Preset_PerceptualOptimization_Contrast)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (TCLubSubtype.value == (ProDisplayLibrary_Preset_PerceptualOptimization_unknownDefault|ProDisplayLibrary_Preset_PerceptualOptimization_Contrast))
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *v1 = v3;
  return TCLubSubtype;
}

uint64_t Preset.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25F821EBC();
  swift_allocObject();
  sub_25F821EAC();
  sub_25F7AECF8(a3);

  return sub_25F76D178(a1, a2);
}

uint64_t Data.init(from:)(uint64_t a1)
{
  sub_25F821EFC();
  swift_allocObject();
  sub_25F821EEC();
  sub_25F821ECC();
  v2 = sub_25F7AF5BC(a1, 2, 0);
  sub_25F7D20FC(a1, type metadata accessor for Preset);

  return v2;
}

{
  sub_25F821EFC();
  swift_allocObject();
  sub_25F821EEC();
  sub_25F821ECC();
  v2 = sub_25F7AF70C(a1, 2, 0);
  sub_25F7D8544(a1, type metadata accessor for UserAdjustment);

  return v2;
}

uint64_t Preset.specifications.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Preset(0) + 20);
  v4 = *(v3 + 208);
  v5 = *(v3 + 176);
  v37 = *(v3 + 192);
  v38 = v4;
  v6 = *(v3 + 208);
  v39 = *(v3 + 224);
  v7 = *(v3 + 144);
  v9 = *(v3 + 112);
  v33 = *(v3 + 128);
  v8 = v33;
  v34 = v7;
  v10 = *(v3 + 144);
  v11 = *(v3 + 176);
  v35 = *(v3 + 160);
  v12 = v35;
  v36 = v11;
  v13 = *(v3 + 80);
  v15 = *(v3 + 48);
  v29 = *(v3 + 64);
  v14 = v29;
  v30 = v13;
  v16 = *(v3 + 80);
  v17 = *(v3 + 112);
  v31 = *(v3 + 96);
  v18 = v31;
  v32 = v17;
  v19 = *(v3 + 16);
  v20 = *(v3 + 48);
  v27 = *(v3 + 32);
  v21 = v27;
  v28 = v20;
  v22 = *(v3 + 16);
  v26[0] = *v3;
  v23 = v26[0];
  v26[1] = v22;
  *(a1 + 192) = v37;
  *(a1 + 208) = v6;
  *(a1 + 224) = *(v3 + 224);
  *(a1 + 128) = v8;
  *(a1 + 144) = v10;
  *(a1 + 160) = v12;
  *(a1 + 176) = v5;
  *(a1 + 64) = v14;
  *(a1 + 80) = v16;
  *(a1 + 96) = v18;
  *(a1 + 112) = v9;
  *a1 = v23;
  *(a1 + 16) = v19;
  v40 = *(v3 + 240);
  *(a1 + 240) = *(v3 + 240);
  *(a1 + 32) = v21;
  *(a1 + 48) = v15;
  return sub_25F7A223C(v26, v25);
}

__n128 Preset.specifications.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Preset(0) + 20);
  v4 = *(v3 + 208);
  v19[12] = *(v3 + 192);
  v19[13] = v4;
  v19[14] = *(v3 + 224);
  v20 = *(v3 + 240);
  v5 = *(v3 + 144);
  v19[8] = *(v3 + 128);
  v19[9] = v5;
  v6 = *(v3 + 176);
  v19[10] = *(v3 + 160);
  v19[11] = v6;
  v7 = *(v3 + 80);
  v19[4] = *(v3 + 64);
  v19[5] = v7;
  v8 = *(v3 + 112);
  v19[6] = *(v3 + 96);
  v19[7] = v8;
  v9 = *(v3 + 48);
  v19[2] = *(v3 + 32);
  v19[3] = v9;
  v10 = *(v3 + 16);
  v19[0] = *v3;
  v19[1] = v10;
  sub_25F777E5C(v19);
  v11 = *(a1 + 208);
  *(v3 + 192) = *(a1 + 192);
  *(v3 + 208) = v11;
  *(v3 + 224) = *(a1 + 224);
  *(v3 + 240) = *(a1 + 240);
  v12 = *(a1 + 144);
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 144) = v12;
  v13 = *(a1 + 176);
  *(v3 + 160) = *(a1 + 160);
  *(v3 + 176) = v13;
  v14 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v14;
  v15 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v15;
  v16 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v16;
  result = *(a1 + 32);
  v18 = *(a1 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v18;
  return result;
}

uint64_t Preset.hostSettings.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Preset(0) + 24));
  v4 = v3[5];
  v6 = v3[3];
  v19 = v3[4];
  v5 = v19;
  v20 = v4;
  v7 = v3[5];
  v21[0] = v3[6];
  *(v21 + 12) = *(v3 + 108);
  v8 = v3[3];
  v10 = v3[1];
  v17 = v3[2];
  v9 = v17;
  v18 = v8;
  v11 = v3[1];
  v16[0] = *v3;
  v12 = v16[0];
  v16[1] = v11;
  *(a1 + 108) = *(v3 + 108);
  v13 = v3[6];
  a1[5] = v7;
  a1[6] = v13;
  a1[3] = v6;
  a1[4] = v5;
  a1[1] = v10;
  a1[2] = v9;
  *a1 = v12;
  return sub_25F7A2298(v16, &v15);
}

__n128 Preset.hostSettings.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for Preset(0) + 24));
  v4 = v3[5];
  v11[4] = v3[4];
  v11[5] = v4;
  v12[0] = v3[6];
  *(v12 + 12) = *(v3 + 108);
  v5 = v3[3];
  v11[2] = v3[2];
  v11[3] = v5;
  v6 = v3[1];
  v11[0] = *v3;
  v11[1] = v6;
  sub_25F7CA914(v11);
  v7 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v7;
  v3[6] = *(a1 + 96);
  *(v3 + 108) = *(a1 + 108);
  v8 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v10;
  return result;
}

uint64_t Preset.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25F821EBC();
  swift_allocObject();
  sub_25F821EAC();
  v5 = sub_25F821F6C();
  if (v2)
  {
    v7 = sub_25F821F4C();
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  else
  {
    v8 = v5;
    v9 = v6;
    sub_25F7AECF8(a2);
    v10 = sub_25F821F4C();
    (*(*(v10 - 8) + 8))(a1, v10);
    sub_25F76D178(v8, v9);
  }
}

uint64_t Preset.save(to:)()
{
  sub_25F821EFC();
  swift_allocObject();
  sub_25F821EEC();
  v2 = sub_25F7AF5BC(v0, 2, 0);
  v4 = v3;

  if (!v1)
  {
    sub_25F82203C();
    return sub_25F76D178(v2, v4);
  }

  return result;
}

uint64_t Preset.Info.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for Preset.Info(0) + 20));

  return v1;
}

uint64_t Preset.Info.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Preset.Info(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Preset.Info.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for Preset.Info(0) + 24));

  return v1;
}

uint64_t Preset.Info.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Preset.Info(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Preset.Info.origin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Preset.Info(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t Preset.Info.origin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Preset.Info(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t sub_25F7CC35C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E696769726FLL;
  v4 = 0x6E6F697461657263;
  if (v1 != 4)
  {
    v4 = 0x756A644172657375;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x7470697263736564;
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

uint64_t sub_25F7CC41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F7D4698(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F7CC444(uint64_t a1)
{
  v2 = sub_25F7D2000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7CC480(uint64_t a1)
{
  v2 = sub_25F7D2000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Preset.Info.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0708);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7D2000();
  sub_25F822E5C();
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  sub_25F76100C(&qword_27FDAFE38, &qword_27FDAFBB0);
  sub_25F822C4C();
  if (!v2)
  {
    v9 = type metadata accessor for Preset.Info(0);
    v17 = 1;
    sub_25F822BEC();
    v16 = 2;
    sub_25F822BEC();
    v15 = *(v3 + *(v9 + 28));
    v14 = 3;
    sub_25F7D2054();
    sub_25F822C4C();
    v13 = 4;
    sub_25F82210C();
    sub_25F7D5554(&qword_27FDB0720);
    sub_25F822BDC();
    v12 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
    sub_25F76100C(&qword_27FDAFE58, &qword_27FDAFC18);
    sub_25F822BDC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Preset.Info.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v32 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v35);
  v36 = (&v32 - v5);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0728);
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = type metadata accessor for Preset.Info(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 32);
  v13 = sub_25F82210C();
  v14 = *(*(v13 - 8) + 56);
  v40 = v12;
  v14(&v11[v12], 1, 1, v13);
  v15 = v8[9];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v17 = *(*(v16 - 8) + 56);
  v41 = v15;
  v17(&v11[v15], 1, 1, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7D2000();
  v38 = v7;
  v18 = v39;
  sub_25F822E3C();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_25F760F44(&v11[v40], &qword_27FDAFC20);
    return sub_25F760F44(&v11[v41], &qword_27FDAFC10);
  }

  else
  {
    v39 = v16;
    v19 = v34;
    v48 = 0;
    sub_25F76100C(&qword_27FDAFDD8, &qword_27FDAFBB0);
    v20 = v36;
    sub_25F822B6C();
    sub_25F760FA4(v20, v11, &qword_27FDAFBB0);
    v47 = 1;
    v21 = sub_25F822B0C();
    v22 = v8[5];
    *v22 = v21;
    v22[1] = v23;
    v46 = 2;
    v24 = sub_25F822B0C();
    v25 = v8[6];
    *v25 = v24;
    v25[1] = v26;
    v44 = 3;
    sub_25F7D20A8();
    sub_25F822B6C();
    v35 = 0;
    v11[v8[7]] = v45;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
    v36 = &v32;
    MEMORY[0x28223BE20](v27 - 8);
    v29 = &v32 - v28;
    v43 = 4;
    sub_25F7D5554(&qword_27FDB0738);
    sub_25F822AFC();
    sub_25F760E58(v29, &v11[v40], &qword_27FDAFC20);
    v42 = 5;
    sub_25F76100C(&qword_27FDAFE08, &qword_27FDAFC18);
    v30 = v33;
    sub_25F822AFC();
    (*(v19 + 8))(v38, v37);
    sub_25F760E58(v30, &v11[v41], &qword_27FDAFC10);
    sub_25F7A22F4(v11, v32, type metadata accessor for Preset.Info);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_25F7D20FC(v11, type metadata accessor for Preset.Info);
  }
}

__n128 Preset.Specifications.primaries.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 Preset.Specifications.primaries.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = v2;
  return result;
}

__n128 Preset.Specifications.perceptualPrimaries.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
  result = *(v1 + 88);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 104);
  return result;
}

__n128 Preset.Specifications.perceptualPrimaries.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v2;
  result = *(a1 + 32);
  *(v1 + 88) = result;
  *(v1 + 104) = *(a1 + 48);
  return result;
}

__n128 Preset.Specifications.whitepoint.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[8].n128_u8[0];
  result = v1[7];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 Preset.Specifications.whitepoint.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u8[0] = v2;
  return result;
}

__n128 Preset.Specifications.perceptualWhitepoint.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 153);
  result = *(v1 + 136);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  return result;
}

__n128 Preset.Specifications.perceptualWhitepoint.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  v3 = a1[1].n128_u8[1];
  result = *a1;
  *(v1 + 136) = *a1;
  *(v1 + 152) = v2;
  *(v1 + 153) = v3;
  return result;
}

uint64_t Preset.Specifications.transferFunction.setter(uint64_t a1)
{

  *(v1 + 184) = a1;
  return result;
}

uint64_t Preset.Specifications.supportedLatencyModes.setter(uint64_t a1)
{

  *(v1 + 232) = a1;
  return result;
}

uint64_t sub_25F7CD34C(char a1)
{
  result = 0x656972616D697270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x696F706574696877;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      v3 = 1215848813;
      goto LABEL_15;
    case 5:
      v3 = 1400398189;
LABEL_15:
      result = v3 | 0x754C524400000000;
      break;
    case 6:
      result = 0x6E696D754C6E696DLL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0x7369747265766461;
      break;
    case 10:
      result = 0x5442656C62616E65;
      break;
    case 11:
    case 13:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD00000000000001ELL;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25F7CD5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F7D4898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F7CD608(uint64_t a1)
{
  v2 = sub_25F7D215C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7CD644(uint64_t a1)
{
  v2 = sub_25F7D215C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Preset.Specifications.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0740);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = *(v2 + 48);
  v11 = *(v2 + 15);
  v39 = *(v2 + 14);
  v40 = v8;
  v46 = *(v2 + 128);
  v12 = *(v2 + 18);
  v37 = *(v2 + 17);
  v38 = v11;
  LODWORD(v6) = *(v2 + 153);
  v35 = *(v2 + 152);
  v36 = v6;
  v33 = *(v2 + 23);
  v34 = v12;
  v32 = *(v2 + 192);
  v31 = *(v2 + 208);
  v30 = *(v2 + 209);
  v13 = *(v2 + 27);
  v14 = *(v2 + 28);
  v29 = *(v2 + 29);
  v28 = *(v2 + 240);
  v27 = *(v2 + 241);
  v26 = *(v2 + 242);
  v25 = *(v2 + 243);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7D215C();
  sub_25F822E5C();
  v15 = v2[1];
  v42 = *v2;
  v43 = v15;
  *&v44 = v9;
  *(&v44 + 1) = v40;
  v16 = v7;
  LOBYTE(v45) = v10;
  v47 = 0;
  sub_25F7D21B0();
  v17 = v41;
  sub_25F822C4C();
  if (v17)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v18 = v46;
  v19 = v38;
  v20 = v39;
  v21 = v37;
  v22 = *(v2 + 72);
  v42 = *(v2 + 56);
  v43 = v22;
  v44 = *(v2 + 88);
  v45 = *(v2 + 52);
  v47 = 1;
  sub_25F822BDC();
  *&v42 = v20;
  *(&v42 + 1) = v19;
  LOBYTE(v43) = v18;
  v47 = 2;
  sub_25F7D2204();
  sub_25F822C4C();
  *&v42 = v21;
  *(&v42 + 1) = v34;
  LOBYTE(v43) = v35;
  BYTE1(v43) = v36;
  v47 = 3;
  sub_25F822BDC();
  LOBYTE(v42) = 4;
  sub_25F822C0C();
  LOBYTE(v42) = 5;
  sub_25F822C0C();
  LOBYTE(v42) = 6;
  sub_25F822C0C();
  *&v42 = v33;
  v47 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0760);
  sub_25F7D2258();
  sub_25F822C4C();
  LOBYTE(v42) = v32;
  v47 = 8;
  sub_25F7D2330();
  sub_25F822C4C();
  LOBYTE(v42) = 9;
  sub_25F822C0C();
  LOBYTE(v42) = 10;
  sub_25F822BFC();
  LOBYTE(v42) = 11;
  sub_25F822BFC();
  *&v42 = v13;
  *(&v42 + 1) = v14;
  v47 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0780);
  sub_25F7D26D8(&qword_27FDB0788);
  sub_25F822C4C();
  *&v42 = v29;
  v47 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0790);
  sub_25F7D2384();
  sub_25F822C4C();
  LOBYTE(v42) = v28;
  v47 = 14;
  sub_25F7D2408();
  sub_25F822C4C();
  LOBYTE(v42) = v27;
  v47 = 15;
  sub_25F7D245C();
  sub_25F822C4C();
  LOBYTE(v42) = 16;
  sub_25F822BFC();
  LOBYTE(v42) = v25;
  v47 = 17;
  sub_25F7D24B0();
  sub_25F822C4C();
  return (*(v5 + 8))(v16, v4);
}

uint64_t Preset.Specifications.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB07B8);
  v5 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v7 = &v42 - v6;
  v148 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7D215C();
  sub_25F822E3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v68 = a2;
  v69 = v5;
  LOBYTE(v70) = 0;
  sub_25F7D2504();
  sub_25F822B6C();
  v66 = v87;
  v67 = v86;
  v64 = v89;
  v65 = v88;
  v8 = v90;
  v9 = v91;
  v154 = v92;
  v134 = 1;
  sub_25F822AFC();
  v62 = v9;
  v63 = v8;
  v56 = v135;
  v57 = v136;
  v60 = v138;
  v61 = v137;
  v58 = v140;
  v59 = v139;
  LODWORD(v9) = v141;
  LODWORD(v8) = v142;
  LOBYTE(v70) = 2;
  sub_25F7D2558();
  sub_25F822B6C();
  v54 = v8;
  v55 = v9;
  v10 = v86;
  v11 = v87;
  v150 = v88;
  LOBYTE(v70) = 3;
  sub_25F822AFC();
  v52 = v11;
  v53 = v10;
  v12 = v86;
  v13 = v87;
  LODWORD(v11) = v88;
  v148 = BYTE1(v88);
  LOBYTE(v86) = 4;
  sub_25F822B2C();
  v49 = v11;
  v50 = v12;
  v51 = v13;
  v15 = v14;
  LOBYTE(v86) = 5;
  sub_25F822B2C();
  v17 = v16;
  LOBYTE(v86) = 6;
  sub_25F822B2C();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0760);
  LOBYTE(v70) = 7;
  sub_25F7D25AC();
  sub_25F822B6C();
  v20 = v52;
  v21 = v53;
  v48 = v86;
  LOBYTE(v70) = 8;
  sub_25F7D2684();
  sub_25F822B6C();
  LOBYTE(v13) = v86;
  LOBYTE(v86) = 9;
  sub_25F822B2C();
  v23 = v22;
  LOBYTE(v86) = 10;
  v47 = sub_25F822B1C();
  LOBYTE(v86) = 11;
  v46 = sub_25F822B1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0780);
  LOBYTE(v70) = 12;
  sub_25F7D26D8(&qword_27FDB07E8);
  sub_25F822B6C();
  v24 = v86;
  v25 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0790);
  LOBYTE(v70) = 13;
  sub_25F7D2744();
  sub_25F822B6C();
  v26 = v86;
  LOBYTE(v70) = 14;
  sub_25F7D27C8();
  sub_25F822B6C();
  v45 = v86;
  LOBYTE(v70) = 15;
  sub_25F7D281C();
  sub_25F822B6C();
  v44 = v86;
  LOBYTE(v86) = 16;
  v43 = sub_25F822B1C();
  v132 = 17;
  sub_25F7D2870();
  sub_25F822B6C();
  v42 = v47 & 1;
  v46 &= 1u;
  v47 = v43 & 1;
  (*(v69 + 8))(v7, v155);
  LODWORD(v69) = v133;
  *&v70 = v67;
  *(&v70 + 1) = v66;
  *&v71 = v65;
  *(&v71 + 1) = v64;
  *&v72 = v63;
  *(&v72 + 1) = v62;
  LODWORD(v155) = v154;
  LOBYTE(v73) = v154;
  *(&v73 + 1) = v153[0];
  DWORD1(v73) = *(v153 + 3);
  *(&v73 + 1) = v56;
  *&v74 = v57;
  *(&v74 + 1) = v61;
  *&v75 = v60;
  *(&v75 + 1) = v59;
  *&v76 = v58;
  BYTE8(v76) = v55;
  BYTE9(v76) = v54;
  *(&v76 + 10) = v151;
  HIWORD(v76) = v152;
  *&v77 = v21;
  *(&v77 + 1) = v20;
  *(&v78 + 1) = *v149;
  *(&v79 + 10) = v146;
  DWORD1(v82) = *&v145[3];
  *(&v82 + 1) = *v145;
  *(&v83 + 2) = v143;
  v43 = v150;
  LOBYTE(v78) = v150;
  DWORD1(v78) = *&v149[3];
  *(&v78 + 1) = v50;
  *&v79 = v51;
  BYTE8(v79) = v49;
  HIWORD(v79) = v147;
  WORD3(v83) = v144;
  LOBYTE(v85) = v45;
  BYTE1(v85) = v44;
  BYTE2(v85) = v47;
  HIBYTE(v85) = v133;
  v27 = v68;
  *(v68 + 240) = v85;
  LOBYTE(v20) = v148;
  BYTE9(v79) = v148;
  *&v80 = v15;
  *(&v80 + 1) = v17;
  *&v81 = v19;
  v28 = v48;
  *(&v81 + 1) = v48;
  LOBYTE(v82) = v13;
  *(&v82 + 1) = v23;
  v29 = v42;
  LOBYTE(v83) = v42;
  BYTE1(v83) = v46;
  *(&v83 + 1) = v24;
  *&v84 = v25;
  *(&v84 + 1) = v26;
  v30 = v70;
  v31 = v71;
  v32 = v73;
  v27[2] = v72;
  v27[3] = v32;
  *v27 = v30;
  v27[1] = v31;
  v33 = v74;
  v34 = v75;
  v35 = v77;
  v27[6] = v76;
  v27[7] = v35;
  v27[4] = v33;
  v27[5] = v34;
  v36 = v78;
  v37 = v79;
  v38 = v81;
  v27[10] = v80;
  v27[11] = v38;
  v27[8] = v36;
  v27[9] = v37;
  v39 = v82;
  v40 = v84;
  v27[13] = v83;
  v27[14] = v40;
  v27[12] = v39;
  sub_25F7A223C(&v70, &v86);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v86 = v67;
  v87 = v66;
  v88 = v65;
  v89 = v64;
  v90 = v63;
  v91 = v62;
  v92 = v155;
  *v93 = v153[0];
  *&v93[3] = *(v153 + 3);
  v94 = v56;
  v95 = v57;
  v96 = v61;
  v97 = v60;
  v98 = v59;
  v99 = v58;
  v100 = v55;
  v101 = v54;
  v102 = v151;
  v103 = v152;
  v104 = v53;
  v105 = v52;
  v106 = v43;
  *v107 = *v149;
  *&v107[3] = *&v149[3];
  v108 = v50;
  v109 = v51;
  v110 = v49;
  v111 = v20;
  v113 = v147;
  v112 = v146;
  v114 = v15;
  v115 = v17;
  v116 = v19;
  v117 = v28;
  v118 = v13;
  *&v119[3] = *&v145[3];
  *v119 = *v145;
  v120 = v23;
  v121 = v29;
  v122 = v46;
  v124 = v144;
  v123 = v143;
  v125 = v24;
  v126 = v25;
  v127 = v26;
  v128 = v45;
  v129 = v44;
  v130 = v47;
  v131 = v69;
  return sub_25F777E5C(&v86);
}

uint64_t Preset.HostSettings.maxAutoBrightness.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t Preset.HostSettings.maxPotentialEDRHeadroom.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t Preset.HostSettings.disableUserAdjustmentInterfaces.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Preset.HostSettings.systemGammaValue.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t Preset.HostSettings.targetAmbientBrightness.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t Preset.HostSettings.targetAmbientBrightnessExcursion.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

unint64_t sub_25F7CEAC8(char a1)
{
  result = 0x48656C6261736964;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
    case 10:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD00000000000001FLL;
      break;
    case 9:
    case 17:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0x707041776F6C6C61;
      break;
    case 16:
      result = 0x6365725068676968;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25F7CED38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F7D4E40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F7CED6C(uint64_t a1)
{
  v2 = sub_25F7D28C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7CEDA8(uint64_t a1)
{
  v2 = sub_25F7D28C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Preset.HostSettings.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0810);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = *(v1 + 1);
  v30 = *(v1 + 2);
  LODWORD(v31) = v7;
  v29 = *(v1 + 3);
  v28 = *(v1 + 8);
  v8 = *(v1 + 16);
  v26 = *(v1 + 17);
  v27 = v8;
  v24 = *(v1 + 24);
  v25 = *(v1 + 32);
  v23 = *(v1 + 33);
  v9 = *(v1 + 48);
  v22 = *(v1 + 40);
  v20 = v9;
  v21 = *(v1 + 56);
  v18 = *(v1 + 64);
  v19 = *(v1 + 72);
  v16 = *(v1 + 80);
  v17 = *(v1 + 88);
  v10 = *(v1 + 120);
  v15[2] = *(v1 + 121);
  v15[3] = v10;
  v15[1] = *(v1 + 122);
  v11 = *(v1 + 123);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7D28C4();
  sub_25F822E5C();
  LOBYTE(v34) = 0;
  v12 = v32;
  sub_25F822BFC();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  LODWORD(v32) = v11;
  LOBYTE(v34) = 1;
  sub_25F822BFC();
  LOBYTE(v34) = 2;
  sub_25F822BFC();
  LOBYTE(v34) = 3;
  sub_25F822BFC();
  LOBYTE(v34) = 4;
  sub_25F822BAC();
  LOBYTE(v34) = 5;
  sub_25F822BFC();
  LOBYTE(v34) = 6;
  sub_25F822BAC();
  LOBYTE(v34) = 7;
  sub_25F822BFC();
  v34 = v22;
  v33 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0820);
  sub_25F7D2918();
  sub_25F822BDC();
  LOBYTE(v34) = 9;
  sub_25F822BAC();
  LOBYTE(v34) = 10;
  v31 = v3;
  sub_25F822BAC();
  LOBYTE(v34) = 11;
  sub_25F822BAC();
  LOBYTE(v34) = 12;
  sub_25F822C0C();
  LOBYTE(v34) = 13;
  sub_25F822C0C();
  LOBYTE(v34) = 14;
  sub_25F822C0C();
  LOBYTE(v34) = 15;
  sub_25F822BFC();
  LOBYTE(v34) = 16;
  sub_25F822BFC();
  LOBYTE(v34) = 17;
  sub_25F822BFC();
  LOBYTE(v34) = 18;
  v14 = v31;
  sub_25F822BFC();
  return (*(v4 + 8))(v6, v14);
}

uint64_t Preset.HostSettings.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0838);
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v7 = &v35 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7D28C4();
  sub_25F822E3C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v8 = v5;
    LOBYTE(v63[0]) = 0;
    v9 = sub_25F822B1C();
    LOBYTE(v63[0]) = 1;
    v54 = sub_25F822B1C();
    LOBYTE(v63[0]) = 2;
    v53 = sub_25F822B1C();
    LOBYTE(v63[0]) = 3;
    v52 = sub_25F822B1C();
    LOBYTE(v63[0]) = 4;
    v51 = sub_25F822ACC();
    v102 = v10 & 1;
    LOBYTE(v63[0]) = 5;
    v11 = sub_25F822B1C();
    LOBYTE(v63[0]) = 6;
    v12 = sub_25F822ACC();
    v49 = v11;
    v50 = v12;
    v99 = v13 & 1;
    LOBYTE(v63[0]) = 7;
    v48 = sub_25F822B1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0820);
    LOBYTE(v56) = 8;
    sub_25F7D29F0();
    sub_25F822AFC();
    v47 = v63[0];
    LOBYTE(v63[0]) = 9;
    v14 = sub_25F822ACC();
    v96 = v15 & 1;
    LOBYTE(v63[0]) = 10;
    v46 = sub_25F822ACC();
    v94 = v16 & 1;
    LOBYTE(v63[0]) = 11;
    v45 = sub_25F822ACC();
    v92 = v17 & 1;
    LOBYTE(v63[0]) = 12;
    sub_25F822B2C();
    v19 = v18;
    LOBYTE(v63[0]) = 13;
    sub_25F822B2C();
    v21 = v20;
    LOBYTE(v63[0]) = 14;
    sub_25F822B2C();
    v23 = v22;
    LOBYTE(v63[0]) = 15;
    v44 = sub_25F822B1C();
    LOBYTE(v63[0]) = 16;
    v43 = sub_25F822B1C();
    LOBYTE(v63[0]) = 17;
    v42 = sub_25F822B1C();
    v90 = 18;
    v41 = sub_25F822B1C();
    v40 = v54 & 1;
    v38 = v9 & 1;
    v39 = v53 & 1;
    v24 = v52 & 1;
    v37 = v52 & 1;
    v49 &= 1u;
    v52 = v48 & 1;
    v53 = v44 & 1;
    HIDWORD(v35) = v43 & 1;
    v54 = v42 & 1;
    (*(v8 + 8))(v7, v55);
    v42 = v41 & 1;
    LOBYTE(v56) = v38;
    BYTE1(v56) = v40;
    BYTE2(v56) = v39;
    BYTE3(v56) = v24;
    *(&v56 + 1) = v51;
    LODWORD(v55) = v102;
    LOBYTE(v57) = v102;
    BYTE1(v57) = v49;
    *(&v57 + 2) = v100;
    WORD3(v57) = v101;
    *(&v57 + 1) = v50;
    v48 = v99;
    LOBYTE(v58) = v99;
    BYTE1(v58) = v52;
    *(&v58 + 2) = v97;
    WORD3(v58) = v98;
    v25 = v46;
    *(&v58 + 1) = v47;
    *&v59 = v14;
    v36 = v14;
    v44 = v96;
    BYTE8(v59) = v96;
    *(&v59 + 9) = *v95;
    HIDWORD(v59) = *&v95[3];
    *&v60 = v46;
    v43 = v94;
    BYTE8(v60) = v94;
    *(&v60 + 9) = *v93;
    HIDWORD(v60) = *&v93[3];
    v26 = v45;
    *&v61 = v45;
    LOBYTE(v14) = v92;
    BYTE8(v61) = v92;
    HIDWORD(v61) = *&v91[3];
    *(&v61 + 9) = *v91;
    *&v62[0] = v19;
    *(&v62[0] + 1) = v21;
    *&v62[1] = v23;
    BYTE8(v62[1]) = v53;
    v27 = BYTE4(v35);
    BYTE9(v62[1]) = BYTE4(v35);
    BYTE10(v62[1]) = v54;
    BYTE11(v62[1]) = v41 & 1;
    v28 = v56;
    v29 = v57;
    v30 = v59;
    a2[2] = v58;
    a2[3] = v30;
    *a2 = v28;
    a2[1] = v29;
    v31 = v60;
    v32 = v61;
    v33 = v62[0];
    *(a2 + 108) = *(v62 + 12);
    a2[5] = v32;
    a2[6] = v33;
    a2[4] = v31;
    sub_25F7A2298(&v56, v63);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    LOBYTE(v63[0]) = v38;
    BYTE1(v63[0]) = v40;
    BYTE2(v63[0]) = v39;
    BYTE3(v63[0]) = v37;
    v63[1] = v51;
    v64 = v55;
    v65 = v49;
    v66 = v100;
    v67 = v101;
    v68 = v50;
    v69 = v48;
    v70 = v52;
    v71 = v97;
    v72 = v98;
    v73 = v47;
    v74 = v36;
    v75 = v44;
    *v76 = *v95;
    *&v76[3] = *&v95[3];
    v77 = v25;
    v78 = v43;
    *v79 = *v93;
    *&v79[3] = *&v93[3];
    v80 = v26;
    v81 = v14;
    *v82 = *v91;
    *&v82[3] = *&v91[3];
    v83 = v19;
    v84 = v21;
    v85 = v23;
    v86 = v53;
    v87 = v27;
    v88 = v54;
    v89 = v42;
    return sub_25F7CA914(v63);
  }
}

uint64_t Preset.Origin.hashValue.getter()
{
  v1 = *v0;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](v1);
  return sub_25F822E0C();
}

uint64_t sub_25F7CFB78()
{
  v1 = 0x6369666963657073;
  if (*v0 != 1)
  {
    v1 = 0x7474655374736F68;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1868983913;
  }
}

uint64_t sub_25F7CFBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F7D5430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F7CFC14(uint64_t a1)
{
  v2 = sub_25F7D2AC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7CFC50(uint64_t a1)
{
  v2 = sub_25F7D2AC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Preset.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0850);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v33 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7D2AC8();
  sub_25F822E5C();
  v83 = 0;
  type metadata accessor for Preset.Info(0);
  sub_25F7D2BC4(&qword_27FDB0860, type metadata accessor for Preset.Info);
  sub_25F822C4C();
  if (!v2)
  {
    v9 = type metadata accessor for Preset(0);
    v10 = v3 + *(v9 + 20);
    v11 = *(v10 + 208);
    v12 = *(v10 + 176);
    v79 = *(v10 + 192);
    v80 = v11;
    v13 = *(v10 + 208);
    v81 = *(v10 + 224);
    v14 = *(v10 + 144);
    v15 = *(v10 + 112);
    v75 = *(v10 + 128);
    v76 = v14;
    v16 = *(v10 + 144);
    v17 = *(v10 + 176);
    v77 = *(v10 + 160);
    v78 = v17;
    v18 = *(v10 + 80);
    v19 = *(v10 + 48);
    v71 = *(v10 + 64);
    v72 = v18;
    v20 = *(v10 + 80);
    v21 = *(v10 + 112);
    v73 = *(v10 + 96);
    v74 = v21;
    v22 = *(v10 + 16);
    v23 = *(v10 + 48);
    v69 = *(v10 + 32);
    v70 = v23;
    v24 = *(v10 + 16);
    v68[0] = *v10;
    v68[1] = v24;
    v64 = v79;
    v65 = v13;
    v66 = *(v10 + 224);
    v60 = v75;
    v61 = v16;
    v62 = v77;
    v63 = v12;
    v56 = v71;
    v57 = v20;
    v58 = v73;
    v59 = v15;
    v52 = v68[0];
    v53 = v22;
    v82 = *(v10 + 240);
    v67 = *(v10 + 240);
    v54 = v69;
    v55 = v19;
    v51 = 1;
    sub_25F7A223C(v68, v49);
    sub_25F7D2B1C();
    sub_25F822C4C();
    v49[12] = v64;
    v49[13] = v65;
    v49[14] = v66;
    v50 = v67;
    v49[8] = v60;
    v49[9] = v61;
    v49[10] = v62;
    v49[11] = v63;
    v49[4] = v56;
    v49[5] = v57;
    v49[6] = v58;
    v49[7] = v59;
    v49[0] = v52;
    v49[1] = v53;
    v49[2] = v54;
    v49[3] = v55;
    sub_25F777E5C(v49);
    v25 = (v3 + *(v9 + 24));
    v26 = v25[5];
    v27 = v25[3];
    v46 = v25[4];
    v47 = v26;
    v28 = v25[5];
    v48[0] = v25[6];
    *(v48 + 12) = *(v25 + 108);
    v29 = v25[1];
    v30 = v25[3];
    v44 = v25[2];
    v45 = v30;
    v31 = v25[1];
    v43[0] = *v25;
    v43[1] = v31;
    v40 = v46;
    v41 = v28;
    v42[0] = v25[6];
    *(v42 + 12) = *(v25 + 108);
    v36 = v43[0];
    v37 = v29;
    v38 = v44;
    v39 = v27;
    v35 = 2;
    sub_25F7A2298(v43, v33);
    sub_25F7D2B70();
    sub_25F822C4C();
    v33[4] = v40;
    v33[5] = v41;
    *v34 = v42[0];
    *&v34[12] = *(v42 + 12);
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v33[3] = v39;
    sub_25F7CA914(v33);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Preset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for Preset.Info(0);
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0878);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v29 - v6;
  v8 = type metadata accessor for Preset(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_25F7D2AC8();
  v33 = v7;
  sub_25F822E3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  v12 = v30;
  v13 = v10;
  LOBYTE(v43) = 0;
  sub_25F7D2BC4(&qword_27FDB0880, type metadata accessor for Preset.Info);
  v15 = v31;
  v14 = v32;
  sub_25F822B6C();
  sub_25F7750B8(v15, v13);
  v42 = 1;
  sub_25F7D2C0C();
  sub_25F822B6C();
  v16 = v13 + *(v8 + 20);
  v17 = v56;
  *(v16 + 192) = v55;
  *(v16 + 208) = v17;
  *(v16 + 224) = v57;
  *(v16 + 240) = v58;
  v18 = v52;
  *(v16 + 128) = v51;
  *(v16 + 144) = v18;
  v19 = v54;
  *(v16 + 160) = v53;
  *(v16 + 176) = v19;
  v20 = v48;
  *(v16 + 64) = v47;
  *(v16 + 80) = v20;
  v21 = v50;
  *(v16 + 96) = v49;
  *(v16 + 112) = v21;
  v22 = v44;
  *v16 = v43;
  *(v16 + 16) = v22;
  v23 = v46;
  *(v16 + 32) = v45;
  *(v16 + 48) = v23;
  v34 = 2;
  sub_25F7D2C60();
  sub_25F822B6C();
  (*(v12 + 8))(v33, v14);
  v24 = (v13 + *(v8 + 24));
  v25 = v40;
  v24[4] = v39;
  v24[5] = v25;
  v24[6] = *v41;
  *(v24 + 108) = *&v41[12];
  v26 = v36;
  *v24 = v35;
  v24[1] = v26;
  v27 = v38;
  v24[2] = v37;
  v24[3] = v27;
  sub_25F7A22F4(v13, v29, type metadata accessor for Preset);
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  return sub_25F7D20FC(v13, type metadata accessor for Preset);
}

uint64_t sub_25F7D054C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  v11[0] = *a1;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v9 = *(a2 + *(type metadata accessor for PresetV1(0) + 20) + 76);

  return sub_25F814F7C(v11, a3, v9);
}

uint64_t sub_25F7D05F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Preset.Info(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Preset.Origin.description.getter()
{
  v1 = 0x7473754372657355;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x697542656C707041;
  }
}

uint64_t sub_25F7D06DC()
{
  v1 = 0x7473754372657355;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x697542656C707041;
  }
}

uint64_t Preset.LatencyMode.description.getter()
{
  if (*v0)
  {
    return 0x7563634168676948;
  }

  else
  {
    return 0x6E6574614C776F4CLL;
  }
}

uint64_t sub_25F7D07E0()
{
  if (*v0)
  {
    return 0x7563634168676948;
  }

  else
  {
    return 0x6E6574614C776F4CLL;
  }
}

uint64_t sub_25F7D0840(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E4C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_25F822CEC();

  return __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

uint64_t Preset.CalibrationSpace.description.getter()
{
  if (*v0)
  {
    return 0x31333931454943;
  }

  else
  {
    return 0x65766974614ELL;
  }
}

uint64_t sub_25F7D0978()
{
  if (*v0)
  {
    return 0x31333931454943;
  }

  else
  {
    return 0x65766974614ELL;
  }
}

uint64_t sub_25F7D09C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E4C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_25F822CEC();

  return __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

uint64_t Preset.PerceptualOptimization.description.getter()
{
  if (*v0)
  {
    return 0x74736172746E6F43;
  }

  else
  {
    return 0x726F6C6F43;
  }
}

uint64_t sub_25F7D0AF0()
{
  if (*v0)
  {
    return 0x74736172746E6F43;
  }

  else
  {
    return 0x726F6C6F43;
  }
}

uint64_t sub_25F7D0B40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E4C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_25F822CEC();

  return __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

uint64_t Preset.UserAdjustmentInterface.description.getter()
{
  if (*v0)
  {
    return 0x6C6175736956;
  }

  else
  {
    return 0x6C61756E614DLL;
  }
}

uint64_t sub_25F7D0C5C()
{
  if (*v0)
  {
    return 0x6C6175736956;
  }

  else
  {
    return 0x6C61756E614DLL;
  }
}

uint64_t sub_25F7D0CA0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E4C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_25F822CEC();

  return __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

uint64_t _s17ProDisplayLibrary6PresetV12HostSettingsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0 && ((a1[3] ^ a2[3]) & 1) == 0)
  {
    v5 = *(a1 + 6);
    v6 = a1[56];
    v7 = *(a1 + 8);
    v8 = a1[72];
    v9.f64[0] = *(a1 + 10);
    v10 = a1[88];
    v11 = *(a1 + 12);
    v12 = *(a1 + 104);
    v13 = a1[120];
    v14 = a1[121];
    v15 = a1[122];
    v16 = a1[123];
    v17 = a2[16];
    v18 = a2[17];
    v19 = *(a2 + 3);
    v20 = a2[32];
    v21 = a2[33];
    v22 = *(a2 + 5);
    v23 = *(a2 + 6);
    v24 = a2[56];
    v25 = *(a2 + 8);
    v26 = a2[72];
    v27.f64[0] = *(a2 + 10);
    v28 = a2[88];
    v29 = *(a2 + 12);
    v30 = *(a2 + 104);
    v31 = a2[120];
    v32 = a2[121];
    v33 = a2[122];
    v34 = a2[123];
    if (a1[16])
    {
      result = 0;
      if (!v17)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if ((v17 & 1) != 0 || *(a1 + 1) != *(a2 + 1))
      {
        return result;
      }
    }

    if ((a1[17] ^ v18))
    {
      return result;
    }

    result = 0;
    if (a1[32])
    {
      if (!v20)
      {
        return result;
      }
    }

    else if ((v20 & 1) != 0 || *(a1 + 3) != v19)
    {
      return result;
    }

    if ((a1[33] ^ v21))
    {
      return result;
    }

    if (*(a1 + 5))
    {
      if (!v22)
      {
        return 0;
      }

      v47 = a1[122];
      v48 = a1[123];
      v45 = a2[123];
      v46 = a1[121];
      v43 = *(a1 + 10);
      v44 = *(a1 + 104);
      v41 = *(a2 + 104);
      v42 = *(a1 + 12);
      v39 = *(a2 + 10);
      v40 = *(a2 + 12);
      v35 = sub_25F805C40(*(a1 + 5), v22);
      v27.f64[0] = v39;
      v29 = v40;
      v30 = v41;
      v11 = v42;
      v9.f64[0] = v43;
      v12 = v44;
      v34 = v45;
      v14 = v46;
      v15 = v47;
      v16 = v48;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v22)
    {
      return 0;
    }

    if (v6)
    {
      if (!v24)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == v23)
      {
        v36 = v24;
      }

      else
      {
        v36 = 1;
      }

      if (v36)
      {
        return 0;
      }
    }

    if (v8)
    {
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      if (v7 == v25)
      {
        v37 = v26;
      }

      else
      {
        v37 = 1;
      }

      if (v37)
      {
        return 0;
      }
    }

    result = 0;
    if (v10)
    {
      if (!v28)
      {
        return result;
      }

      if (v11 != v29)
      {
        return result;
      }

      v38 = vmovn_s64(vmvnq_s8(vceqq_f64(v12, v30)));
      if (v38.i8[0] & 1) != 0 || (v38.i8[4])
      {
        return result;
      }
    }

    else
    {
      if (v28)
      {
        return result;
      }

      v9.f64[1] = v11;
      v27.f64[1] = v29;
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v9, v27), vceqq_f64(v12, v30))))))
      {
        return result;
      }
    }

    if (((v13 ^ v31) & 1) == 0 && ((v14 ^ v32) & 1) == 0 && ((v15 ^ v33) & 1) == 0)
    {
      return v16 ^ v34 ^ 1u;
    }
  }

  return result;
}

uint64_t _s17ProDisplayLibrary6PresetV14SpecificationsV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v5 = *(a1 + 14);
  v4 = *(a1 + 15);
  v6 = *(a1 + 128);
  v43 = *(a1 + 136);
  v47 = *(a1 + 152);
  v58 = *(a1 + 153);
  v57 = *(a1 + 20);
  v7 = *(a1 + 22);
  v55 = *(a1 + 21);
  v53 = *(a1 + 23);
  v51 = *(a1 + 192);
  v8 = *(a1 + 25);
  v49 = *(a1 + 208);
  v10 = *(a1 + 27);
  v9 = *(a1 + 28);
  v41 = *(a1 + 29);
  v39 = *(a1 + 240);
  v37 = *(a1 + 241);
  v35 = *(a1 + 242);
  v33 = *(a1 + 243);
  v11 = *(a2 + 48);
  v13 = *(a2 + 14);
  v12 = *(a2 + 15);
  v14 = *(a2 + 128);
  v42 = *(a2 + 136);
  v45 = *(a1 + 209);
  v46 = *(a2 + 152);
  v15 = *(a2 + 153);
  v56 = *(a2 + 20);
  v16 = *(a2 + 22);
  v54 = *(a2 + 21);
  v52 = *(a2 + 23);
  v50 = *(a2 + 192);
  v17 = *(a2 + 25);
  v48 = *(a2 + 208);
  v44 = *(a2 + 209);
  v19 = *(a2 + 27);
  v18 = *(a2 + 28);
  v40 = *(a2 + 29);
  v38 = *(a2 + 240);
  v36 = *(a2 + 241);
  LOBYTE(v66) = *(a1 + 48);
  v34 = *(a2 + 242);
  LOBYTE(v62) = v11;
  v32 = *(a2 + 243);
  v20 = a1[1];
  v63 = *a1;
  v64 = v20;
  v65 = a1[2];
  v21 = a2[1];
  v59 = *a2;
  v60 = v21;
  v61 = a2[2];
  if (!_s17ProDisplayLibrary10ColorSpaceO2eeoiySbAC_ACtFZ_0(&v63, &v59))
  {
    return 0;
  }

  v66 = *(a1 + 52);
  v22 = *(a1 + 72);
  v63 = *(a1 + 56);
  v64 = v22;
  v65 = *(a1 + 88);
  v67[0] = *(a2 + 56);
  v67[1] = *(a2 + 72);
  v67[2] = *(a2 + 88);
  v68 = *(a2 + 52);
  if ((v66 & 0x100) != 0)
  {
    if ((v68 & 0x100) == 0)
    {
      return 0;
    }
  }

  else
  {
    v23 = *(a1 + 72);
    v59 = *(a1 + 56);
    v60 = v23;
    v61 = *(a1 + 88);
    v62 = *(a1 + 52);
    if ((v68 & 0x100) != 0 || !_s17ProDisplayLibrary10ColorSpaceO2eeoiySbAC_ACtFZ_0(&v59, v67))
    {
      return 0;
    }
  }

  if (v6)
  {
    if (*&v5 > 2uLL)
    {
      if (*&v5 ^ 3 | *&v4)
      {
        if (*&v5 ^ 4 | *&v4)
        {
          if (!v14 || __PAIR128__(*&v12, *&v13) < 5)
          {
            return 0;
          }
        }

        else if (!v14 || *&v13 ^ 4 | *&v12)
        {
          return 0;
        }
      }

      else if (!v14 || *&v13 ^ 3 | *&v12)
      {
        return 0;
      }
    }

    else if (*&v5 | *&v4)
    {
      if (*&v5 ^ 1 | *&v4)
      {
        if (!v14 || *&v13 ^ 2 | *&v12)
        {
          return 0;
        }
      }

      else if (!v14 || *&v13 ^ 1 | *&v12)
      {
        return 0;
      }
    }

    else if (!v14 || *&v13 | *&v12)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v14 & 1) != 0 || v5 != v13 || v4 != v12)
    {
      return result;
    }
  }

  if ((v58 & 1) == 0)
  {
    if (v15)
    {
      return 0;
    }

    if ((v47 & 1) == 0)
    {
      if ((v46 & 1) == 0)
      {
        result = 0;
        v30.f64[0] = v57;
        v30.f64[1] = v55;
        v31.f64[0] = v56;
        v31.f64[1] = v54;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v43, v42), vceqq_f64(v30, v31)))) & 1) == 0)
        {
          return result;
        }

        goto LABEL_23;
      }

      return 0;
    }

    if (*&v43.f64[0] > 2uLL)
    {
      if (*&v43.f64[0] ^ 3 | *&v43.f64[1])
      {
        if (*&v43.f64[0] ^ 4 | *&v43.f64[1])
        {
          if (v46)
          {
            result = 0;
            if (*&v42 < 5uLL)
            {
              return result;
            }

            goto LABEL_76;
          }

          return 0;
        }

        if ((v46 & 1) == 0)
        {
          return 0;
        }

        result = 0;
        v28 = v42.f64[1];
        v29 = *&v42.f64[0] ^ 4;
      }

      else
      {
        if ((v46 & 1) == 0)
        {
          return 0;
        }

        result = 0;
        v28 = v42.f64[1];
        v29 = *&v42.f64[0] ^ 3;
      }
    }

    else if (*&v43 == 0)
    {
      if ((v46 & 1) == 0)
      {
        return 0;
      }

      result = 0;
      v28 = v42.f64[1];
      v29 = *&v42.f64[0];
    }

    else
    {
      if (!(*&v43.f64[0] ^ 1 | *&v43.f64[1]))
      {
        if (v46)
        {
          result = 0;
          v28 = v42.f64[1];
          v29 = *&v42.f64[0] ^ 1;
          goto LABEL_75;
        }

        return 0;
      }

      if ((v46 & 1) == 0)
      {
        return 0;
      }

      result = 0;
      v28 = v42.f64[1];
      v29 = *&v42.f64[0] ^ 2;
    }

LABEL_75:
    if (v29 | *&v28)
    {
      return result;
    }

LABEL_76:
    if (v57 != v56)
    {
      return result;
    }

    goto LABEL_22;
  }

  result = 0;
  if (v57 == v56)
  {
    v25 = v15;
  }

  else
  {
    v25 = 0;
  }

  if (v25 == 1)
  {
LABEL_22:
    if (v55 != v54)
    {
      return result;
    }

LABEL_23:
    if (v7 == v16)
    {
      v26 = sub_25F80598C(v53, v52);
      result = 0;
      if ((v26 & 1) != 0 && v51 == v50 && v8 == v17 && ((v49 ^ v48) & 1) == 0 && ((v45 ^ v44) & 1) == 0)
      {
        result = 0;
        if (v10 == v19 && v9 == v18)
        {
          v27 = sub_25F80B428(v41, v40);
          result = 0;
          if ((v27 & 1) != 0 && ((v39 ^ v38) & 1) == 0 && ((v37 ^ v36) & 1) == 0 && ((v35 ^ v34) & 1) == 0)
          {
            return v33 ^ v32 ^ 1u;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _s17ProDisplayLibrary6PresetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s17ProDisplayLibrary6PresetV4InfoV2eeoiySbAE_AEtFZ_0(a1, a2) && (v4 = type metadata accessor for Preset(0), v5 = a1 + *(v4 + 20), v6 = *(v5 + 176), v7 = *(v5 + 208), v122 = *(v5 + 192), v123 = v7, v8 = *(v5 + 208), v124 = *(v5 + 224), v125 = *(v5 + 240), v9 = *(v5 + 112), v10 = *(v5 + 144), v118 = *(v5 + 128), v119 = v10, v11 = *(v5 + 176), v12 = *(v5 + 144), v120 = *(v5 + 160), v121 = v11, v13 = *(v5 + 48), v14 = *(v5 + 80), v114 = *(v5 + 64), v115 = v14, v15 = *(v5 + 112), v16 = *(v5 + 80), v116 = *(v5 + 96), v117 = v15, v17 = *(v5 + 48), v18 = *(v5 + 16), v112 = *(v5 + 32), v113 = v17, v19 = *v5, v20 = *v5, v111[1] = *(v5 + 16), v111[0] = v19, v98 = v112, v99 = v13, *v102 = v116, *&v102[16] = v9, v100 = v114, v101 = v16, v106 = v6, v105 = v120, v104 = v12, v103 = v118, v110 = *(v5 + 240), v109 = *(v5 + 224), v108 = v8, v107 = v122, v96 = v20, v97 = v18, v21 = a2 + *(v4 + 20), v22 = *(v21 + 208), v23 = *(v21 + 176), v137 = *(v21 + 192), v138 = v22, v24 = *(v21 + 208), v139 = *(v21 + 224), v25 = *(v21 + 144), v26 = *(v21 + 112), v133 = *(v21 + 128), v134 = v25, v27 = *(v21 + 144), v28 = *(v21 + 176), v135 = *(v21 + 160), v136 = v28, v29 = *(v21 + 80), v30 = *(v21 + 48), v129 = *(v21 + 64), v130 = v29, v31 = *(v21 + 80), v32 = *(v21 + 112), v131 = *(v21 + 96), v132 = v32, v33 = *(v21 + 16), v126[0] = *v21, v126[1] = v33, v34 = *(v21 + 48), v36 = *v21, v35 = *(v21 + 16), v127 = *(v21 + 32), v128 = v34, v92 = v137, v93 = v24, v94 = *(v21 + 224), v88 = v133, v89 = v27, v90 = v135, v91 = v23, v85 = v129, v86 = v31, *v87 = v131, *&v87[16] = v26, v81 = v36, v82 = v35, v140 = *(v21 + 240), v95 = *(v21 + 240), v83 = v127, v84 = v30, sub_25F7A223C(v111, v75), sub_25F7A223C(v126, v75), v37 = _s17ProDisplayLibrary6PresetV14SpecificationsV2eeoiySbAE_AEtFZ_0(&v96, &v81), v141[12] = v92, v141[13] = v93, v141[14] = v94, v142 = v95, v141[8] = v88, v141[9] = v89, v141[10] = v90, v141[11] = v91, v141[4] = v85, v141[5] = v86, v141[6] = *v87, v141[7] = *&v87[16], v141[0] = v81, v141[1] = v82, v141[2] = v83, v141[3] = v84, sub_25F777E5C(v141), v143[12] = v107, v143[13] = v108, v143[14] = v109, v144 = v110, v143[8] = v103, v143[9] = v104, v143[10] = v105, v143[11] = v106, v143[4] = v100, v143[5] = v101, v143[6] = *v102, v143[7] = *&v102[16], v143[0] = v96, v143[1] = v97, v143[2] = v98, v143[3] = v99, sub_25F777E5C(v143), (v37 & 1) != 0))
  {
    v38 = (a1 + *(v4 + 24));
    v39 = v38[5];
    v40 = v38[3];
    v72 = v38[4];
    v73 = v39;
    v41 = v38[5];
    v74[0] = v38[6];
    *(v74 + 12) = *(v38 + 108);
    v42 = v38[1];
    v69[0] = *v38;
    v69[1] = v42;
    v43 = v38[3];
    v45 = *v38;
    v44 = v38[1];
    v70 = v38[2];
    v71 = v43;
    v66 = v72;
    v67 = v41;
    v68[0] = v38[6];
    *(v68 + 12) = *(v38 + 108);
    v64 = v70;
    v65 = v40;
    v62 = v45;
    v63 = v44;
    v46 = (a2 + *(v4 + 24));
    v47 = v46[5];
    v48 = v46[3];
    v78 = v46[4];
    v79 = v47;
    v49 = v46[5];
    v80[0] = v46[6];
    *(v80 + 12) = *(v46 + 108);
    v50 = v46[1];
    v51 = v46[3];
    v76 = v46[2];
    v77 = v51;
    v52 = v46[1];
    v75[0] = *v46;
    v75[1] = v52;
    v59 = v78;
    v60 = v49;
    v61[0] = v46[6];
    *(v61 + 12) = *(v46 + 108);
    v55 = v75[0];
    v56 = v50;
    v57 = v76;
    v58 = v48;
    v53 = _s17ProDisplayLibrary6PresetV12HostSettingsV2eeoiySbAE_AEtFZ_0(&v62, &v55);
    v85 = v59;
    v86 = v60;
    *v87 = v61[0];
    *&v87[12] = *(v61 + 12);
    v81 = v55;
    v82 = v56;
    v83 = v57;
    v84 = v58;
    sub_25F7A2298(v69, &v96);
    sub_25F7A2298(v75, &v96);
    sub_25F7CA914(&v81);
    v100 = v66;
    v101 = v67;
    *v102 = v68[0];
    *&v102[12] = *(v68 + 12);
    v96 = v62;
    v97 = v63;
    v98 = v64;
    v99 = v65;
    sub_25F7CA914(&v96);
  }

  else
  {
    v53 = 0;
  }

  return v53 & 1;
}

BOOL _s17ProDisplayLibrary6PresetV4InfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB09E8);
  MEMORY[0x28223BE20](v11);
  v13 = v48 - v12;
  if ((sub_25F82213C() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for Preset.Info(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_25F822CBC() & 1) == 0)
  {
    return 0;
  }

  v20 = v14[6];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_25F822CBC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v14[7]) != *(a2 + v14[7]))
  {
    return 0;
  }

  v50 = v10;
  v51 = v4;
  v52 = v5;
  v49 = v7;
  v24 = v14[8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB09F0);
  v54 = v48;
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = v48 - v27;
  v29 = *(v26 + 56);
  sub_25F76183C(a1 + v24, v48 - v27, &qword_27FDAFC20);
  v55 = v29;
  sub_25F76183C(a2 + v24, &v28[v29], &qword_27FDAFC20);
  v30 = sub_25F82210C();
  v53 = *(v30 - 8);
  v31 = *(v53 + 48);
  if (v31(v28, 1, v30) != 1)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
    v48[2] = v48;
    MEMORY[0x28223BE20](v32 - 8);
    v34 = v48 - v33;
    sub_25F76183C(v28, v48 - v33, &qword_27FDAFC20);
    v35 = v31(&v28[v55], 1, v30);
    if (v35 != 1)
    {
      v48[1] = v48;
      v36 = v53;
      MEMORY[0x28223BE20](v35);
      v38 = *(v36 + 32);
      v48[0] = v48 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      v38(v48[0], &v28[v55], v30);
      sub_25F7D5554(&qword_27FDB09F8);
      LODWORD(v55) = sub_25F82231C();
      v39 = *(v36 + 8);
      v39(v48[0], v30);
      v39(v34, v30);
      sub_25F760F44(v28, &qword_27FDAFC20);
      if ((v55 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    (*(v53 + 8))(v34, v30);
LABEL_16:
    sub_25F760F44(v28, &qword_27FDB09F0);
    return 0;
  }

  if (v31(&v28[v55], 1, v30) != 1)
  {
    goto LABEL_16;
  }

  sub_25F760F44(v28, &qword_27FDAFC20);
LABEL_18:
  v40 = v14[9];
  v41 = *(v11 + 48);
  sub_25F76183C(a1 + v40, v13, &qword_27FDAFC10);
  sub_25F76183C(a2 + v40, &v13[v41], &qword_27FDAFC10);
  v42 = v51;
  v43 = *(v52 + 48);
  if (v43(v13, 1, v51) == 1)
  {
    if (v43(&v13[v41], 1, v42) == 1)
    {
      sub_25F760F44(v13, &qword_27FDAFC10);
      return 1;
    }

    goto LABEL_23;
  }

  v44 = v50;
  sub_25F76183C(v13, v50, &qword_27FDAFC10);
  if (v43(&v13[v41], 1, v42) == 1)
  {
    sub_25F760F44(v44, &qword_27FDAFC18);
LABEL_23:
    sub_25F760F44(v13, &qword_27FDB09E8);
    return 0;
  }

  v46 = v49;
  sub_25F760FA4(&v13[v41], v49, &qword_27FDAFC18);
  v47 = sub_25F82213C();
  sub_25F760F44(v46, &qword_27FDAFC18);
  sub_25F760F44(v44, &qword_27FDAFC18);
  sub_25F760F44(v13, &qword_27FDAFC10);
  return (v47 & 1) != 0;
}

unint64_t sub_25F7D2000()
{
  result = qword_27FDB0710;
  if (!qword_27FDB0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0710);
  }

  return result;
}

unint64_t sub_25F7D2054()
{
  result = qword_27FDB0718;
  if (!qword_27FDB0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0718);
  }

  return result;
}

unint64_t sub_25F7D20A8()
{
  result = qword_27FDB0730;
  if (!qword_27FDB0730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0730);
  }

  return result;
}

uint64_t sub_25F7D20FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25F7D215C()
{
  result = qword_27FDB0748;
  if (!qword_27FDB0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0748);
  }

  return result;
}

unint64_t sub_25F7D21B0()
{
  result = qword_27FDB0750;
  if (!qword_27FDB0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0750);
  }

  return result;
}

unint64_t sub_25F7D2204()
{
  result = qword_27FDB0758;
  if (!qword_27FDB0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0758);
  }

  return result;
}

unint64_t sub_25F7D2258()
{
  result = qword_27FDB0768;
  if (!qword_27FDB0768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0760);
    sub_25F7D22DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0768);
  }

  return result;
}

unint64_t sub_25F7D22DC()
{
  result = qword_27FDB0770;
  if (!qword_27FDB0770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0770);
  }

  return result;
}

unint64_t sub_25F7D2330()
{
  result = qword_27FDB0778;
  if (!qword_27FDB0778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0778);
  }

  return result;
}

unint64_t sub_25F7D2384()
{
  result = qword_27FDB0798;
  if (!qword_27FDB0798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0790);
    sub_25F7D2408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0798);
  }

  return result;
}

unint64_t sub_25F7D2408()
{
  result = qword_27FDB07A0;
  if (!qword_27FDB07A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB07A0);
  }

  return result;
}

unint64_t sub_25F7D245C()
{
  result = qword_27FDB07A8;
  if (!qword_27FDB07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB07A8);
  }

  return result;
}

unint64_t sub_25F7D24B0()
{
  result = qword_27FDB07B0;
  if (!qword_27FDB07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB07B0);
  }

  return result;
}

unint64_t sub_25F7D2504()
{
  result = qword_27FDB07C0;
  if (!qword_27FDB07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB07C0);
  }

  return result;
}

unint64_t sub_25F7D2558()
{
  result = qword_27FDB07C8;
  if (!qword_27FDB07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB07C8);
  }

  return result;
}

unint64_t sub_25F7D25AC()
{
  result = qword_27FDB07D0;
  if (!qword_27FDB07D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0760);
    sub_25F7D2630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB07D0);
  }

  return result;
}

unint64_t sub_25F7D2630()
{
  result = qword_27FDB07D8;
  if (!qword_27FDB07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB07D8);
  }

  return result;
}

unint64_t sub_25F7D2684()
{
  result = qword_27FDB07E0;
  if (!qword_27FDB07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB07E0);
  }

  return result;
}

uint64_t sub_25F7D26D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0780);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25F7D2744()
{
  result = qword_27FDB07F0;
  if (!qword_27FDB07F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0790);
    sub_25F7D27C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB07F0);
  }

  return result;
}

unint64_t sub_25F7D27C8()
{
  result = qword_27FDB07F8;
  if (!qword_27FDB07F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB07F8);
  }

  return result;
}

unint64_t sub_25F7D281C()
{
  result = qword_27FDB0800;
  if (!qword_27FDB0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0800);
  }

  return result;
}

unint64_t sub_25F7D2870()
{
  result = qword_27FDB0808;
  if (!qword_27FDB0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0808);
  }

  return result;
}

unint64_t sub_25F7D28C4()
{
  result = qword_27FDB0818;
  if (!qword_27FDB0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0818);
  }

  return result;
}

unint64_t sub_25F7D2918()
{
  result = qword_27FDB0828;
  if (!qword_27FDB0828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0820);
    sub_25F7D299C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0828);
  }

  return result;
}

unint64_t sub_25F7D299C()
{
  result = qword_27FDB0830;
  if (!qword_27FDB0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0830);
  }

  return result;
}

unint64_t sub_25F7D29F0()
{
  result = qword_27FDB0840;
  if (!qword_27FDB0840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0820);
    sub_25F7D2A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0840);
  }

  return result;
}

unint64_t sub_25F7D2A74()
{
  result = qword_27FDB0848;
  if (!qword_27FDB0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0848);
  }

  return result;
}

unint64_t sub_25F7D2AC8()
{
  result = qword_27FDB0858;
  if (!qword_27FDB0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0858);
  }

  return result;
}

unint64_t sub_25F7D2B1C()
{
  result = qword_27FDB0868;
  if (!qword_27FDB0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0868);
  }

  return result;
}

unint64_t sub_25F7D2B70()
{
  result = qword_27FDB0870;
  if (!qword_27FDB0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0870);
  }

  return result;
}

uint64_t sub_25F7D2BC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F7D2C0C()
{
  result = qword_27FDB0888;
  if (!qword_27FDB0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0888);
  }

  return result;
}

unint64_t sub_25F7D2C60()
{
  result = qword_27FDB0890;
  if (!qword_27FDB0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0890);
  }

  return result;
}

unint64_t sub_25F7D2CB8()
{
  result = qword_27FDB0898;
  if (!qword_27FDB0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0898);
  }

  return result;
}

unint64_t sub_25F7D2D10()
{
  result = qword_27FDB08A0;
  if (!qword_27FDB08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB08A0);
  }

  return result;
}

unint64_t sub_25F7D2D68()
{
  result = qword_27FDB08A8;
  if (!qword_27FDB08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB08A8);
  }

  return result;
}

unint64_t sub_25F7D2DC0()
{
  result = qword_27FDB08B0;
  if (!qword_27FDB08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB08B0);
  }

  return result;
}

unint64_t sub_25F7D2E18()
{
  result = qword_27FDB08B8;
  if (!qword_27FDB08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB08B8);
  }

  return result;
}

uint64_t sub_25F7D2EB4(uint64_t a1)
{
  *(a1 + 8) = sub_25F7D2BC4(&qword_27FDAFDF0, type metadata accessor for Preset);
  result = sub_25F7D2BC4(&qword_27FDAFE48, type metadata accessor for Preset);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F7D2F8C()
{
  result = qword_27FDB08C0;
  if (!qword_27FDB08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB08C0);
  }

  return result;
}

unint64_t sub_25F7D2FE0()
{
  result = qword_27FDB08C8;
  if (!qword_27FDB08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB08C8);
  }

  return result;
}

unint64_t sub_25F7D30CC()
{
  result = qword_27FDB08E0;
  if (!qword_27FDB08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB08E0);
  }

  return result;
}

unint64_t sub_25F7D3120()
{
  result = qword_27FDB08E8;
  if (!qword_27FDB08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB08E8);
  }

  return result;
}

unint64_t sub_25F7D320C()
{
  result = qword_27FDB0900;
  if (!qword_27FDB0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0900);
  }

  return result;
}

unint64_t sub_25F7D3260()
{
  result = qword_27FDB0908;
  if (!qword_27FDB0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0908);
  }

  return result;
}

unint64_t sub_25F7D334C()
{
  result = qword_27FDB0920;
  if (!qword_27FDB0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0920);
  }

  return result;
}

unint64_t sub_25F7D33A0()
{
  result = qword_27FDB0928;
  if (!qword_27FDB0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0928);
  }

  return result;
}

uint64_t sub_25F7D348C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_25F7D34F0()
{
  result = qword_27FDB0940;
  if (!qword_27FDB0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0940);
  }

  return result;
}

unint64_t sub_25F7D3544()
{
  result = qword_27FDB0948;
  if (!qword_27FDB0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0948);
  }

  return result;
}

uint64_t sub_25F7D35F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Preset.Info(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 184);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F7D36C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Preset.Info(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 184) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25F7D3780()
{
  result = type metadata accessor for Preset.Info(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F7D3818(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_25F7D39C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_25F7D3B64()
{
  sub_25F7D3C68(319, &qword_27FDAFC88, type metadata accessor for Preset, type metadata accessor for Identifier);
  if (v0 <= 0x3F)
  {
    sub_25F7D3C68(319, &qword_27FDB0978, MEMORY[0x28220BFB0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25F7D3CCC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F7D3C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25F7D3CCC()
{
  if (!qword_27FDB0980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFC18);
    v0 = sub_25F82279C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDB0980);
    }
  }
}

__n128 __swift_memcpy244_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 240) = *(a2 + 60);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_25F7D3D7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 244))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 184);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F7D3DC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 244) = 1;
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
      *(result + 184) = (a2 - 1);
      return result;
    }

    *(result + 244) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy124_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_25F7D3E80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 124))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_25F7D3EDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 124) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 124) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Preset.HostSettings.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Preset.HostSettings.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Preset.Specifications.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Preset.Specifications.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F7D427C()
{
  result = qword_27FDB0988;
  if (!qword_27FDB0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0988);
  }

  return result;
}

unint64_t sub_25F7D42D4()
{
  result = qword_27FDB0990;
  if (!qword_27FDB0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0990);
  }

  return result;
}

unint64_t sub_25F7D432C()
{
  result = qword_27FDB0998;
  if (!qword_27FDB0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0998);
  }

  return result;
}

unint64_t sub_25F7D4384()
{
  result = qword_27FDB09A0;
  if (!qword_27FDB09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB09A0);
  }

  return result;
}

unint64_t sub_25F7D43DC()
{
  result = qword_27FDB09A8;
  if (!qword_27FDB09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB09A8);
  }

  return result;
}

unint64_t sub_25F7D4434()
{
  result = qword_27FDB09B0;
  if (!qword_27FDB09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB09B0);
  }

  return result;
}

unint64_t sub_25F7D448C()
{
  result = qword_27FDB09B8;
  if (!qword_27FDB09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB09B8);
  }

  return result;
}

unint64_t sub_25F7D44E4()
{
  result = qword_27FDB09C0;
  if (!qword_27FDB09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB09C0);
  }

  return result;
}

unint64_t sub_25F7D453C()
{
  result = qword_27FDB09C8;
  if (!qword_27FDB09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB09C8);
  }

  return result;
}

unint64_t sub_25F7D4594()
{
  result = qword_27FDB09D0;
  if (!qword_27FDB09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB09D0);
  }

  return result;
}

unint64_t sub_25F7D45EC()
{
  result = qword_27FDB09D8;
  if (!qword_27FDB09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB09D8);
  }

  return result;
}

unint64_t sub_25F7D4644()
{
  result = qword_27FDB09E0;
  if (!qword_27FDB09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB09E0);
  }

  return result;
}

uint64_t sub_25F7D4698(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_25F822CBC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756A644172657375 && a2 == 0xEE00746E656D7473)
  {

    return 5;
  }

  else
  {
    v6 = sub_25F822CBC();

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

uint64_t sub_25F7D4898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656972616D697270 && a2 == 0xE900000000000073;
  if (v4 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025F82F6F0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696F706574696877 && a2 == 0xEA0000000000746ELL || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025F82F710 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754C52444878616DLL && a2 == 0xEF65636E616E696DLL || (sub_25F822CBC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x754C52445378616DLL && a2 == 0xEF65636E616E696DLL || (sub_25F822CBC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E696D754C6E696DLL && a2 == 0xEC00000065636E61 || (sub_25F822CBC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F82F730 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025F82F750 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7369747265766461 && a2 == 0xEF616D6D61476465 || (sub_25F822CBC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5442656C62616E65 && a2 == 0xEC00000030323032 || (sub_25F822CBC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F82F770 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000025F82F790 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F82F7B0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025F82F7D0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F82F7F0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000025F82F810 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025F82F830 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_25F822CBC();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}