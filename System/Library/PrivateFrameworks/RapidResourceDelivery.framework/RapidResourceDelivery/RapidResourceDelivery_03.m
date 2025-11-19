unint64_t sub_227EFD3E4()
{
  result = qword_27D80EBC0;
  if (!qword_27D80EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBC0);
  }

  return result;
}

unint64_t sub_227EFD438()
{
  result = qword_27D80EBC8;
  if (!qword_27D80EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBC8);
  }

  return result;
}

unint64_t sub_227EFD4C4()
{
  result = qword_27D80EBD0;
  if (!qword_27D80EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBD0);
  }

  return result;
}

unint64_t sub_227EFD548()
{
  result = qword_27D80EBE0;
  if (!qword_27D80EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBE0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_227EFD5C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_227EFD610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227EFD680(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 288))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_227EFD6E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_227EFD794(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_227EFD7DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_227EFD830()
{
  result = qword_27D80EBE8;
  if (!qword_27D80EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBE8);
  }

  return result;
}

unint64_t sub_227EFD888()
{
  result = qword_27D80EBF0;
  if (!qword_27D80EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBF0);
  }

  return result;
}

unint64_t sub_227EFD8E0()
{
  result = qword_27D80EBF8;
  if (!qword_27D80EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBF8);
  }

  return result;
}

uint64_t sub_227EFD934(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x525565746F6D6572 && a2 == 0xE90000000000004CLL;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747365676964 && a2 == 0xE600000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1734440037 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_227F2BC64();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_227EFDAF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657474417473616CLL && a2 == 0xEB0000000074706DLL;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F666E49656C6966 && a2 == 0xE800000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000227F34080 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636375537473616CLL && a2 == 0xEB00000000737365 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453)
  {

    return 4;
  }

  else
  {
    v6 = sub_227F2BC64();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_227EFDCB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747365676964 && a2 == 0xE600000000000000;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616D69747365 && a2 == 0xEE00657A69735F64 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000227F33760 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574726F70707573 && a2 == 0xE900000000000064 || (sub_227F2BC64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5F64657461647075 && a2 == 0xEA00000000007461 || (sub_227F2BC64() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5F73657461647075 && a2 == 0xEB000000006C7275)
  {

    return 6;
  }

  else
  {
    v6 = sub_227F2BC64();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_227EFDF28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F7473 && a2 == 0xE500000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000227F342E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_227F2BC64();

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

unint64_t sub_227EFE040()
{
  result = qword_27D80EC08;
  if (!qword_27D80EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC08);
  }

  return result;
}

unint64_t sub_227EFE094()
{
  result = qword_27D80EC18;
  if (!qword_27D80EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC18);
  }

  return result;
}

unint64_t sub_227EFE0E8()
{
  result = qword_27D80EC28;
  if (!qword_27D80EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC28);
  }

  return result;
}

unint64_t sub_227EFE13C()
{
  result = qword_27D80EC38;
  if (!qword_27D80EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC38);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_227EFE1EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
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

uint64_t sub_227EFE248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_227EFE2D4()
{
  result = qword_27D80EC40;
  if (!qword_27D80EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC40);
  }

  return result;
}

unint64_t sub_227EFE32C()
{
  result = qword_27D80EC48;
  if (!qword_27D80EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC48);
  }

  return result;
}

unint64_t sub_227EFE384()
{
  result = qword_27D80EC50;
  if (!qword_27D80EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC50);
  }

  return result;
}

unint64_t sub_227EFE3DC()
{
  result = qword_27D80EC58;
  if (!qword_27D80EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC58);
  }

  return result;
}

unint64_t sub_227EFE434()
{
  result = qword_27D80EC60;
  if (!qword_27D80EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC60);
  }

  return result;
}

unint64_t sub_227EFE48C()
{
  result = qword_27D80EC68;
  if (!qword_27D80EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC68);
  }

  return result;
}

unint64_t sub_227EFE4E4()
{
  result = qword_27D80EC70;
  if (!qword_27D80EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC70);
  }

  return result;
}

unint64_t sub_227EFE53C()
{
  result = qword_27D80EC78;
  if (!qword_27D80EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC78);
  }

  return result;
}

unint64_t sub_227EFE594()
{
  result = qword_27D80EC80;
  if (!qword_27D80EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC80);
  }

  return result;
}

unint64_t sub_227EFE5E8()
{
  result = qword_27D80EC90;
  if (!qword_27D80EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC90);
  }

  return result;
}

unint64_t sub_227EFE63C()
{
  result = qword_27D80ECA0;
  if (!qword_27D80ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECA0);
  }

  return result;
}

unint64_t sub_227EFE690()
{
  result = qword_27D80ECA8;
  if (!qword_27D80ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECA8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_227EFE708(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_227EFE750(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_227EFE7C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_227EFE80C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_227EFE870()
{
  result = qword_27D80ECB0;
  if (!qword_27D80ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECB0);
  }

  return result;
}

unint64_t sub_227EFE8C8()
{
  result = qword_27D80ECB8;
  if (!qword_27D80ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECB8);
  }

  return result;
}

unint64_t sub_227EFE920()
{
  result = qword_27D80ECC0;
  if (!qword_27D80ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECC0);
  }

  return result;
}

unint64_t sub_227EFE974()
{
  result = qword_27D80ECD0;
  if (!qword_27D80ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECD0);
  }

  return result;
}

unint64_t sub_227EFE9C8()
{
  result = qword_27D80ECE0;
  if (!qword_27D80ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECE0);
  }

  return result;
}

uint64_t sub_227EFEA2C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_227EFEABC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227EFEB80()
{
  result = qword_27D80ECE8;
  if (!qword_27D80ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECE8);
  }

  return result;
}

unint64_t sub_227EFEBD8()
{
  result = qword_27D80ECF0;
  if (!qword_27D80ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECF0);
  }

  return result;
}

unint64_t sub_227EFEC30()
{
  result = qword_27D80ECF8;
  if (!qword_27D80ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECF8);
  }

  return result;
}

unint64_t sub_227EFEC88()
{
  result = qword_27D80ED00;
  if (!qword_27D80ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ED00);
  }

  return result;
}

unint64_t sub_227EFECE0()
{
  result = qword_27D80ED08;
  if (!qword_27D80ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ED08);
  }

  return result;
}

unint64_t sub_227EFED38()
{
  result = qword_27D80ED10;
  if (!qword_27D80ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ED10);
  }

  return result;
}

uint64_t sub_227EFEDA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF8, &qword_227F31260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_227F2B274();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED18, &qword_227F31268);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_227F2BE14();
  qword_27D81B1C0 = result;
  return result;
}

double sub_227EFEE84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v96 = *v2;
  v97 = v2;
  v106 = sub_227F2B4C4();
  v95 = *(v106 - 8);
  v4 = *(v95 + 64);
  MEMORY[0x28223BE20](v106);
  v94 = v5;
  v104 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v105 = &v86 - v8;
  v110 = sub_227F2B274();
  v103 = *(v110 - 8);
  v9 = v103[8];
  v10 = MEMORY[0x28223BE20](v110);
  v102 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v99 = &v86 - v13;
  v91 = v14;
  MEMORY[0x28223BE20](v12);
  v108 = &v86 - v15;
  v107 = type metadata accessor for RRDResponse(0);
  v16 = *(*(v107 - 1) + 64);
  MEMORY[0x28223BE20](v107);
  v88 = (&v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_227F2B474();
  v89 = *(v90 - 8);
  v18 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RRDRequest(0);
  v93 = *(v21 - 8);
  v22 = *(v93 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v98 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v109 = &v86 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v86 - v27;
  MEMORY[0x28223BE20](v26);
  v114 = &v86 - v29;
  v30 = sub_227F2B334();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v101 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v86 - v35;
  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v30, qword_2813CE070);
  v111 = v31;
  v38 = *(v31 + 16);
  v113 = v30;
  v38(v36, v37, v30);
  sub_227F09940(&qword_27D80ED80, 255, type metadata accessor for RRDRequest);
  sub_227F2B4B4();
  v86 = v38;
  v87 = a1;
  v100 = v36;
  v39 = v114;
  sub_227F09988(v28, v114, type metadata accessor for RRDRequest);
  v40 = v109;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v39) = sub_227F10750(v39, v40);
  sub_227F09C50(v40, type metadata accessor for RRDRequest);
  v41 = v110;
  v42 = v98;
  v43 = v99;
  if ((v39 & 1) == 0)
  {
    goto LABEL_7;
  }

  v44 = sub_227F2B304();
  v45 = sub_227F2B8C4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_227EB2000, v44, v45, "Got config request", v46, 2u);
    MEMORY[0x22AAAD240](v46, -1, -1);
  }

  sub_227F2B464();
  v47 = sub_227F2B494();
  (*(v89 + 8))(v20, v90);
  if ((v47 & 1) == 0)
  {
    v78 = v100;
    v79 = sub_227F2B304();
    v80 = sub_227F2B8E4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_227EB2000, v79, v80, "rejecting config request from unentitled peer", v81, 2u);
      v82 = v81;
      v78 = v100;
      MEMORY[0x22AAAD240](v82, -1, -1);
    }

    v83 = v88;
    *v88 = xmmword_227F303D0;
    *(v83 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    sub_227F09940(&qword_27D80ED88, 255, type metadata accessor for RRDResponse);
    sub_227F2B4A4();
    sub_227F09C50(v83, type metadata accessor for RRDResponse);
    sub_227F09C50(v114, type metadata accessor for RRDRequest);
    (*(v111 + 8))(v78, v113);
  }

  else
  {
LABEL_7:
    v48 = v108;
    sub_227F2B264();
    v49 = v103;
    v89 = v103[2];
    (v89)(v43, v48, v41);
    sub_227F09D78(v114, v42, type metadata accessor for RRDRequest);
    v50 = sub_227F2B304();
    v51 = sub_227F2B8F4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v115[0] = v88;
      *v52 = 136446466;
      sub_227F09940(&qword_27D80E5E8, 255, MEMORY[0x277CC95F0]);
      v53 = sub_227F2BC24();
      v54 = v43;
      v56 = v55;
      v57 = v103[1];
      v90 = (v103 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v107 = v57;
      v57(v54, v41);
      v58 = sub_227ECAC40(v53, v56, v115);

      *(v52 + 4) = v58;
      *(v52 + 12) = 2082;
      v59 = sub_227F0A1C4();
      v61 = v60;
      sub_227F09C50(v42, type metadata accessor for RRDRequest);
      v62 = sub_227ECAC40(v59, v61, v115);

      *(v52 + 14) = v62;
      _os_log_impl(&dword_227EB2000, v50, v51, "[%{public}s] Request: %{public}s", v52, 0x16u);
      v63 = v88;
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v63, -1, -1);
      v64 = v52;
      v49 = v103;
      MEMORY[0x22AAAD240](v64, -1, -1);
    }

    else
    {

      sub_227F09C50(v42, type metadata accessor for RRDRequest);
      v65 = v49[1];
      v90 = (v49 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v107 = v65;
      v65(v43, v41);
    }

    v66 = v87;
    sub_227F2B484();
    v67 = sub_227F2B854();
    (*(*(v67 - 8) + 56))(v105, 1, 1, v67);
    (v89)(v102, v108, v41);
    sub_227F09D78(v114, v109, type metadata accessor for RRDRequest);
    v68 = v95;
    (*(v95 + 16))(v104, v66, v106);
    v86(v101, v100, v113);
    v69 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v70 = (v91 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = (*(v93 + 80) + v70 + 8) & ~*(v93 + 80);
    v72 = (v22 + *(v68 + 80) + v71) & ~*(v68 + 80);
    v73 = v111;
    v74 = (v94 + *(v111 + 80) + v72) & ~*(v111 + 80);
    v75 = (v92 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
    (v49[4])(v76 + v69, v102, v110);
    *(v76 + v70) = v97;
    sub_227F09988(v109, v76 + v71, type metadata accessor for RRDRequest);
    (*(v68 + 32))(v76 + v72, v104, v106);
    v77 = v113;
    (*(v73 + 32))(v76 + v74, v101, v113);
    *(v76 + v75) = v96;

    sub_227F13F90(0, 0, v105, &unk_227F313A0, v76);

    v107(v108, v110);
    sub_227F09C50(v114, type metadata accessor for RRDRequest);
    (*(v73 + 8))(v100, v77);
  }

  v84 = v112;
  *(v112 + 32) = 0;
  result = 0.0;
  *v84 = 0u;
  v84[1] = 0u;
  return result;
}

uint64_t sub_227EFFCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF8, &qword_227F31260) - 8) + 64) + 15;
  v8[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227EFFD64, 0, 0);
}

uint64_t sub_227EFFD64()
{
  if (qword_27D80DF18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = sub_227F2B274();
  v4 = *(v3 - 8);
  v11 = *(v0 + 48);
  v12 = *(v0 + 32);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v12;
  *(v5 + 32) = v11;
  *(v5 + 48) = v2;
  v6 = *(MEMORY[0x277D85A70] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_227EFFF38;
  v8 = *(v0 + 64);
  v9 = *(v0 + 16);

  return MEMORY[0x282200908](v9, v8, &unk_227F313B0, v5, 0, 0, 0xD00000000000002ALL, 0x8000000227F343E0);
}

void sub_227EFFF38()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 72);
    sub_227EB8430(*(v2 + 64), &qword_27D80DFF8, &qword_227F31260);

    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t sub_227F00080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_227F2B274();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();
  v11 = type metadata accessor for RRDResponse(0);
  v6[8] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[10] = v13;
  v14 = swift_task_alloc();
  v6[11] = v14;
  *v14 = v6;
  v14[1] = sub_227F001CC;

  return sub_227F005F0(v13, a3);
}

uint64_t sub_227F001CC()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_227F002C8, 0, 0);
}

uint64_t sub_227F002C8()
{
  v36 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
  sub_227F09940(&qword_27D80ED88, 255, type metadata accessor for RRDResponse);
  sub_227F2B4A4();
  (*(v6 + 16))(v3, v7, v5);
  sub_227F09D78(v1, v2, type metadata accessor for RRDResponse);
  v10 = sub_227F2B304();
  v11 = sub_227F2B8F4();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[9];
  v13 = v0[10];
  v16 = v0[6];
  v15 = v0[7];
  v17 = v0[5];
  if (v12)
  {
    v34 = v0[10];
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v18 = 136446466;
    sub_227F09940(&qword_27D80E5E8, 255, MEMORY[0x277CC95F0]);
    v19 = sub_227F2BC24();
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    v22 = sub_227ECAC40(v19, v21, &v35);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = sub_227F0E118();
    v25 = v24;
    sub_227F09C50(v14, type metadata accessor for RRDResponse);
    v26 = sub_227ECAC40(v23, v25, &v35);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_227EB2000, v10, v11, "[%{public}s] Response: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAAD240](v33, -1, -1);
    MEMORY[0x22AAAD240](v18, -1, -1);

    v27 = v34;
  }

  else
  {

    sub_227F09C50(v14, type metadata accessor for RRDResponse);
    (*(v16 + 8))(v15, v17);
    v27 = v13;
  }

  sub_227F09C50(v27, type metadata accessor for RRDResponse);
  v29 = v0[9];
  v28 = v0[10];
  v30 = v0[7];

  v31 = v0[1];

  return v31();
}

uint64_t sub_227F005F0(uint64_t a1, uint64_t a2)
{
  v3[59] = a2;
  v3[60] = v2;
  v3[58] = a1;
  v4 = *(*(type metadata accessor for ResourceUpdatesRequest(0) - 8) + 64) + 15;
  v3[61] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990) - 8) + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v6 = type metadata accessor for RRDRequest(0);
  v3[64] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[65] = swift_task_alloc();
  v8 = sub_227F2B114();
  v3[66] = v8;
  v9 = *(v8 - 8);
  v3[67] = v9;
  v10 = *(v9 + 64) + 15;
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F00784, v2, 0);
}

uint64_t sub_227F00784()
{
  v74 = v0;
  v1 = v0[64];
  sub_227F09D78(v0[59], v0[65], type metadata accessor for RRDRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (qword_2813CD578 != -1)
      {
        swift_once();
      }

      v32 = v0[60];
      v33 = sub_227F2B334();
      __swift_project_value_buffer(v33, qword_2813CE070);

      v34 = sub_227F2B304();
      v35 = sub_227F2B8E4();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v73 = v37;
        *v36 = 136315138;
        v38 = sub_227F08A48();
        v40 = sub_227ECAC40(v38, v39, &v73);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_227EB2000, v34, v35, "%s used deprecated resourceUpdatesFolder RRDRequest", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x22AAAD240](v37, -1, -1);
        MEMORY[0x22AAAD240](v36, -1, -1);
      }

      (*(v0[67] + 56))(v0[63], 1, 1, v0[66]);
      v41 = swift_task_alloc();
      v0[73] = v41;
      *v41 = v0;
      v41[1] = sub_227F010A0;
      v42 = v0[71];
      v43 = v0[63];
      goto LABEL_19;
    }

    v49 = *(*(v0[60] + 112) + 32);

    sub_227EFC98C(v50, v0 + 2);
    v56 = sub_227EFA0D0();
    v58 = v57;
    v59 = v0[58];
    sub_227F098EC((v0 + 2));

    *v59 = v56;
    v59[1] = v58;
    type metadata accessor for RRDResponse(0);
    swift_storeEnumTagMultiPayload();
    v60 = v0[72];
    v61 = v0[71];
    v62 = v0[70];
    v63 = v0[69];
    v64 = v0[68];
    v65 = v0[65];
    v67 = v0[62];
    v66 = v0[63];
    v68 = v0[61];

    v69 = v0[1];

    return v69();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v3 = v0[70];
      v4 = v0[67];
      v5 = v0[66];
      v6 = v0[65];
      v7 = *(v4 + 32);
      v0[75] = v7;
      v0[76] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v7(v3, v6, v5);
      if (qword_2813CD578 != -1)
      {
        swift_once();
      }

      v8 = v0[70];
      v9 = v0[69];
      v10 = v0[67];
      v11 = v0[66];
      v12 = v0[60];
      v13 = sub_227F2B334();
      __swift_project_value_buffer(v13, qword_2813CE070);
      v14 = *(v10 + 16);
      v14(v9, v8, v11);

      v15 = sub_227F2B304();
      v16 = sub_227F2B8E4();

      v17 = os_log_type_enabled(v15, v16);
      v18 = v0[69];
      v19 = v0[67];
      v20 = v0[66];
      if (v17)
      {
        v21 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v73 = v71;
        *v21 = 136315394;
        v22 = sub_227F08A48();
        v72 = v14;
        v24 = sub_227ECAC40(v22, v23, &v73);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2080;
        sub_227F09940(&qword_27D80E008, 255, MEMORY[0x277CC9260]);
        v25 = sub_227F2BC24();
        v27 = v26;
        log = v15;
        v28 = v16;
        v29 = *(v19 + 8);
        v29(v18, v20);
        v30 = v25;
        v14 = v72;
        v31 = sub_227ECAC40(v30, v27, &v73);

        *(v21 + 14) = v31;
        _os_log_impl(&dword_227EB2000, log, v28, "%s used deprecated resourceUpdatesFolderForAssets RRDRequest, using assets URL: %s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAAD240](v71, -1, -1);
        MEMORY[0x22AAAD240](v21, -1, -1);
      }

      else
      {

        v29 = *(v19 + 8);
        v29(v18, v20);
      }

      v0[77] = v29;
      v51 = v0[67];
      v52 = v0[66];
      v53 = v0[62];
      v14(v53, v0[70], v52);
      (*(v51 + 56))(v53, 0, 1, v52);
      v54 = swift_task_alloc();
      v0[78] = v54;
      *v54 = v0;
      v54[1] = sub_227F01320;
      v42 = v0[68];
      v43 = v0[62];
LABEL_19:
      v55 = v0[60];

      return sub_227F02140(v42, v43);
    }

    sub_227F09988(v0[65], v0[61], type metadata accessor for ResourceUpdatesRequest);
    v44 = swift_task_alloc();
    v0[80] = v44;
    *v44 = v0;
    v44[1] = sub_227F015B8;
    v46 = v0[60];
    v45 = v0[61];
    v47 = v0[58];

    return sub_227F03254(v47, v45);
  }
}

uint64_t sub_227F010A0()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = v0;

  v5 = *(v2 + 504);
  v6 = *(v2 + 480);
  sub_227EB8430(v5, &qword_27D80E310, &unk_227F2D990);
  if (v0)
  {
    v7 = sub_227F017D4;
  }

  else
  {
    v7 = sub_227F011F8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_227F011F8()
{
  v1 = v0[67];
  v2 = v0[72];
  v3 = v0[66];
  v4 = v0[58];
  (*(v1 + 32))(v2, v0[71], v3);
  sub_227F030B0(v4);
  (*(v1 + 8))(v2, v3);
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[65];
  v12 = v0[62];
  v11 = v0[63];
  v13 = v0[61];

  v14 = v0[1];

  return v14();
}

uint64_t sub_227F01320()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;
  *(*v1 + 632) = v0;

  v5 = *(v2 + 496);
  v6 = *(v2 + 480);
  sub_227EB8430(v5, &qword_27D80E310, &unk_227F2D990);
  if (v0)
  {
    v7 = sub_227F01AE4;
  }

  else
  {
    v7 = sub_227F01478;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_227F01478()
{
  v1 = *(v0 + 536) + 8;
  (*(v0 + 616))(*(v0 + 560), *(v0 + 528));
  v2 = *(v0 + 608);
  v3 = *(v0 + 576);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 464);
  (*(v0 + 600))(v3, *(v0 + 544), v5);
  sub_227F030B0(v6);
  (*(v4 + 8))(v3, v5);
  v7 = *(v0 + 576);
  v8 = *(v0 + 568);
  v9 = *(v0 + 560);
  v10 = *(v0 + 552);
  v11 = *(v0 + 544);
  v12 = *(v0 + 520);
  v14 = *(v0 + 496);
  v13 = *(v0 + 504);
  v15 = *(v0 + 488);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_227F015B8()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v4 = *v1;
  *(*v1 + 648) = v0;

  v5 = *(v2 + 480);
  if (v0)
  {
    v6 = sub_227F01E14;
  }

  else
  {
    v6 = sub_227F016E4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227F016E4()
{
  sub_227F09C50(v0[61], type metadata accessor for ResourceUpdatesRequest);
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[65];
  v8 = v0[62];
  v7 = v0[63];
  v9 = v0[61];

  v10 = v0[1];

  return v10();
}

uint64_t sub_227F017D4()
{
  v33 = v0;
  v1 = v0[74];
  swift_getErrorValue();
  v2 = v0[54];
  v3 = v0[56];
  sub_227EBAEA0(v0[55], v31);
  v4 = v31[0];
  v5 = v31[1];
  v6 = v32;
  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v7 = v0[60];
  v8 = sub_227F2B334();
  __swift_project_value_buffer(v8, qword_2813CE070);

  sub_227EC1714(v4, v5, v6);
  v9 = sub_227F2B304();
  v10 = sub_227F2B8E4();

  sub_227EC172C(v4, v5, v6);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31[0] = v30;
    *v11 = 136446466;
    v13 = sub_227F08A48();
    v15 = sub_227ECAC40(v13, v14, v31);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2114;
    sub_227EBFEF4();
    swift_allocError();
    *v16 = v4;
    *(v16 + 8) = v5;
    *(v16 + 16) = v6;
    sub_227EC1714(v4, v5, v6);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&dword_227EB2000, v9, v10, "%{public}s Request failed: %{public}@", v11, 0x16u);
    sub_227EB8430(v12, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AAAD240](v30, -1, -1);
    MEMORY[0x22AAAD240](v11, -1, -1);
  }

  else
  {
  }

  v18 = v0[58];
  *v18 = v4;
  *(v18 + 8) = v5;
  *(v18 + 16) = v6;
  type metadata accessor for RRDResponse(0);
  swift_storeEnumTagMultiPayload();
  v19 = v0[72];
  v20 = v0[71];
  v21 = v0[70];
  v22 = v0[69];
  v23 = v0[68];
  v24 = v0[65];
  v26 = v0[62];
  v25 = v0[63];
  v27 = v0[61];

  v28 = v0[1];

  return v28();
}

uint64_t sub_227F01AE4()
{
  v34 = v0;
  v1 = *(v0 + 536) + 8;
  (*(v0 + 616))(*(v0 + 560), *(v0 + 528));
  v2 = *(v0 + 632);
  swift_getErrorValue();
  v3 = *(v0 + 432);
  v4 = *(v0 + 448);
  sub_227EBAEA0(*(v0 + 440), v32);
  v5 = v32[0];
  v6 = v32[1];
  v7 = v33;
  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 480);
  v9 = sub_227F2B334();
  __swift_project_value_buffer(v9, qword_2813CE070);

  sub_227EC1714(v5, v6, v7);
  v10 = sub_227F2B304();
  v11 = sub_227F2B8E4();

  sub_227EC172C(v5, v6, v7);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v12 = 136446466;
    v14 = sub_227F08A48();
    v16 = sub_227ECAC40(v14, v15, v32);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2114;
    sub_227EBFEF4();
    swift_allocError();
    *v17 = v5;
    *(v17 + 8) = v6;
    *(v17 + 16) = v7;
    sub_227EC1714(v5, v6, v7);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&dword_227EB2000, v10, v11, "%{public}s Request failed: %{public}@", v12, 0x16u);
    sub_227EB8430(v13, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAAD240](v31, -1, -1);
    MEMORY[0x22AAAD240](v12, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 464);
  *v19 = v5;
  *(v19 + 8) = v6;
  *(v19 + 16) = v7;
  type metadata accessor for RRDResponse(0);
  swift_storeEnumTagMultiPayload();
  v20 = *(v0 + 576);
  v21 = *(v0 + 568);
  v22 = *(v0 + 560);
  v23 = *(v0 + 552);
  v24 = *(v0 + 544);
  v25 = *(v0 + 520);
  v27 = *(v0 + 496);
  v26 = *(v0 + 504);
  v28 = *(v0 + 488);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_227F01E14()
{
  v33 = v0;
  sub_227F09C50(v0[61], type metadata accessor for ResourceUpdatesRequest);
  v1 = v0[81];
  swift_getErrorValue();
  v2 = v0[54];
  v3 = v0[56];
  sub_227EBAEA0(v0[55], v31);
  v4 = v31[0];
  v5 = v31[1];
  v6 = v32;
  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v7 = v0[60];
  v8 = sub_227F2B334();
  __swift_project_value_buffer(v8, qword_2813CE070);

  sub_227EC1714(v4, v5, v6);
  v9 = sub_227F2B304();
  v10 = sub_227F2B8E4();

  sub_227EC172C(v4, v5, v6);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31[0] = v30;
    *v11 = 136446466;
    v13 = sub_227F08A48();
    v15 = sub_227ECAC40(v13, v14, v31);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2114;
    sub_227EBFEF4();
    swift_allocError();
    *v16 = v4;
    *(v16 + 8) = v5;
    *(v16 + 16) = v6;
    sub_227EC1714(v4, v5, v6);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&dword_227EB2000, v9, v10, "%{public}s Request failed: %{public}@", v11, 0x16u);
    sub_227EB8430(v12, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AAAD240](v30, -1, -1);
    MEMORY[0x22AAAD240](v11, -1, -1);
  }

  else
  {
  }

  v18 = v0[58];
  *v18 = v4;
  *(v18 + 8) = v5;
  *(v18 + 16) = v6;
  type metadata accessor for RRDResponse(0);
  swift_storeEnumTagMultiPayload();
  v19 = v0[72];
  v20 = v0[71];
  v21 = v0[70];
  v22 = v0[69];
  v23 = v0[68];
  v24 = v0[65];
  v26 = v0[62];
  v25 = v0[63];
  v27 = v0[61];

  v28 = v0[1];

  return v28();
}

uint64_t sub_227F02140(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_227F2B2E4();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED60, &qword_227F31308);
  v3[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v9 = sub_227F2BA34();
  v3[17] = v9;
  v10 = *(v9 - 8);
  v3[18] = v10;
  v11 = *(v10 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v12 = sub_227F2BA54();
  v3[21] = v12;
  v13 = *(v12 - 8);
  v3[22] = v13;
  v14 = *(v13 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F02310, v2, 0);
}

uint64_t sub_227F02310(uint64_t a1, uint64_t a2)
{
  v4 = v2[9];
  v3 = v2[10];
  v2[24] = sub_227F09940(&qword_27D80ED30, a2, type metadata accessor for RRDPeerHandler);
  v5 = swift_task_alloc();
  v2[25] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  if (v3)
  {
    v6 = v2[10];
    swift_getObjectType();
    v7 = sub_227F2B7B4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v2[26] = v7;
  v2[27] = v9;

  return MEMORY[0x2822009F8](sub_227F023F4, v7, v9);
}

uint64_t sub_227F023F4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v8 = *(v0 + 80);
  sub_227F2BA44();
  sub_227F2BA14();
  sub_227F2BA24();
  v9 = *(v7 + 8);
  *(v0 + 224) = v9;
  *(v0 + 232) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v6);
  v10 = swift_allocObject();
  *(v0 + 240) = v10;
  *(v10 + 16) = &unk_227F31318;
  *(v10 + 24) = v2;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED68, &qword_227F31330);
  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  v12[2] = &unk_227F31328;
  v12[3] = v10;
  v12[4] = v4;
  v12[5] = v0 + 16;
  v12[6] = v3;
  v13 = *(MEMORY[0x277D858E8] + 4);
  v14 = swift_task_alloc();
  *(v0 + 256) = v14;
  *v14 = v0;
  v14[1] = sub_227F025D0;
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);

  return MEMORY[0x282200600](v15, v11);
}

uint64_t sub_227F025D0()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v7 = *v0;

  v4 = *(v1 + 216);
  v5 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_227F02714, v5, v4);
}

uint64_t sub_227F02714()
{
  v1 = v0[30];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v6 = v0[14];
  sub_227EC2180(v0[16], v0[15], &qword_27D80ED60, &qword_227F31308);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = v0[28];
  v8 = v0[29];
  v26 = v0[25];
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[20];
  v13 = v0[21];
  if (EnumCaseMultiPayload == 1)
  {
    v15 = v0[16];
    v14 = v0[17];
    v16 = v0[10];
    v17 = *v0[15];
    v0[33] = v17;
    v0[5] = v17;
    v0[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E378, &qword_227F2FE20);
    swift_willThrowTypedImpl();
    sub_227EB8430(v15, &qword_27D80ED60, &qword_227F31308);
    v9(v12, v14);
    (*(v11 + 8))(v10, v13);

    v3 = sub_227F029AC;
    v4 = v16;
    v5 = 0;

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v23 = v0[17];
  v24 = v0[19];
  v18 = v0[15];
  v25 = v0[13];
  v19 = v0[8];
  sub_227EB8430(v0[16], &qword_27D80ED60, &qword_227F31308);
  v20 = sub_227F2B114();
  (*(*(v20 - 8) + 32))(v19, v18, v20);
  v9(v12, v23);
  (*(v11 + 8))(v10, v13);

  v21 = v0[1];

  return v21();
}

uint64_t sub_227F029AC()
{
  v1 = *(v0 + 264);
  *(v0 + 48) = v1;
  v2 = *(v0 + 272);
  v3 = v1;
  v4 = v1;
  if (swift_dynamicCast())
  {
  }

  else
  {
    v5 = *(v0 + 272);
    v6 = *(v0 + 104);
    v7 = *(v0 + 88);
    *(v0 + 56) = *(v0 + 264);
    if (!swift_dynamicCast())
    {
      v20 = *(v0 + 264);
      goto LABEL_11;
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  if (qword_2813CD570 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 264);
  v9 = sub_227F2B334();
  __swift_project_value_buffer(v9, qword_2813CE058);
  v10 = v8;
  v11 = sub_227F2B304();
  v12 = sub_227F2B8E4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 264);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_227EB2000, v11, v12, "Error fetching resource updates: %@", v14, 0xCu);
    sub_227EB8430(v15, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v15, -1, -1);
    MEMORY[0x22AAAD240](v14, -1, -1);
  }

  v18 = *(v0 + 264);

  sub_227EBFEF4();
  swift_allocError();
  *v19 = xmmword_227F30400;
  *(v19 + 16) = 2;
  swift_willThrow();

LABEL_11:
  v21 = *(v0 + 184);
  v23 = *(v0 + 152);
  v22 = *(v0 + 160);
  v25 = *(v0 + 120);
  v24 = *(v0 + 128);
  v26 = *(v0 + 104);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_227F02C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for ContainerizableURL(0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_227F2B114();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for FileInfo(0);
  v3[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F02D6C, 0, 0);
}

uint64_t sub_227F02D6C()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_227F02E0C;
  v3 = v0[10];
  v4 = v0[4];

  return sub_227F14290(v3, v4);
}

uint64_t sub_227F02E0C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_227F03034;
  }

  else
  {
    v3 = sub_227F02F20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227F02F20()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[2];
  sub_227F09D78(v1 + *(v0[9] + 20), v5, type metadata accessor for ContainerizableURL);
  sub_227F09C50(v1, type metadata accessor for FileInfo);
  (*(v3 + 32))(v2, v5, v4);
  sub_227F2B064();
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_227F03034()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_227F030B0@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAC90]);
  v3 = sub_227F2B044();
  v4 = [v2 initWithURL:v3 readonly:1];

  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v5 = sub_227F2B334();
  __swift_project_value_buffer(v5, qword_2813CE070);
  v6 = v4;
  v7 = sub_227F2B304();
  v8 = sub_227F2B8D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_227EB2000, v7, v8, "Made security scoped wrapper: %@", v9, 0xCu);
    sub_227EB8430(v10, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v10, -1, -1);
    MEMORY[0x22AAAD240](v9, -1, -1);
  }

  *a1 = v6;
  type metadata accessor for RRDResponse(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_227F03254(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_227F2B2E4();
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = sub_227F2B454();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = *(*(type metadata accessor for ContainerizableURL(0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED20, &qword_227F31270) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v12 = type metadata accessor for ResourceUpdatesResponse(0);
  v3[20] = v12;
  v13 = *(v12 - 8);
  v3[21] = v13;
  v14 = *(v13 + 64) + 15;
  v3[22] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v17 = type metadata accessor for Manifest();
  v3[25] = v17;
  v18 = *(v17 - 8);
  v3[26] = v18;
  v19 = *(v18 + 64) + 15;
  v3[27] = swift_task_alloc();
  v20 = *(*(type metadata accessor for ResourceInfo(0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED28, &qword_227F31278);
  v3[29] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v23 = sub_227F2BA34();
  v3[32] = v23;
  v24 = *(v23 - 8);
  v3[33] = v24;
  v25 = *(v24 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v26 = sub_227F2BA54();
  v3[36] = v26;
  v27 = *(v26 - 8);
  v3[37] = v27;
  v28 = *(v27 + 64) + 15;
  v3[38] = swift_task_alloc();
  v29 = type metadata accessor for FileInfo(0);
  v3[39] = v29;
  v30 = *(v29 - 8);
  v3[40] = v30;
  v31 = *(v30 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v32 = sub_227F2B114();
  v3[44] = v32;
  v33 = *(v32 - 8);
  v3[45] = v33;
  v34 = *(v33 + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F0372C, v2, 0);
}

uint64_t sub_227F0372C()
{
  v1 = v0[49];
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[10];
  v5 = v0[11];
  v6 = *(v3 + 16);
  v0[50] = v6;
  v0[51] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v0[52] = sub_227F09940(&qword_27D80ED30, v7, type metadata accessor for RRDPeerHandler);
  v8 = swift_task_alloc();
  v0[53] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v1;
  if (v5)
  {
    v9 = v0[11];
    swift_getObjectType();
    v10 = sub_227F2B7B4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v0[54] = v10;
  v0[55] = v12;

  return MEMORY[0x2822009F8](sub_227F03838, v10, v12);
}

uint64_t sub_227F03838()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 304);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 88);
  sub_227F2BA44();
  sub_227F2BA14();
  sub_227F2BA24();
  v9 = *(v7 + 8);
  *(v0 + 448) = v9;
  *(v0 + 456) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v6);
  v10 = swift_allocObject();
  *(v0 + 464) = v10;
  *(v10 + 16) = &unk_227F31288;
  *(v10 + 24) = v2;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED38, &qword_227F312A0);
  v12 = swift_task_alloc();
  *(v0 + 472) = v12;
  v12[2] = &unk_227F31298;
  v12[3] = v10;
  v12[4] = v4;
  v12[5] = v0 + 16;
  v12[6] = v3;
  v13 = *(MEMORY[0x277D858E8] + 4);
  v14 = swift_task_alloc();
  *(v0 + 480) = v14;
  *v14 = v0;
  v14[1] = sub_227F03A14;
  v15 = *(v0 + 248);
  v18 = *(v0 + 232);

  return MEMORY[0x282200600](v15, v11);
}

uint64_t sub_227F03A14()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 472);
  v7 = *v0;

  v4 = *(v1 + 440);
  v5 = *(v1 + 432);

  return MEMORY[0x2822009F8](sub_227F03B58, v5, v4);
}

uint64_t sub_227F03B58()
{
  v1 = v0[58];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[29];
    sub_227EC2180(v0[31], v0[30], &qword_27D80ED28, &qword_227F31278);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = v0[56];
    v9 = v0[57];
    v27 = v0[53];
    if (EnumCaseMultiPayload == 1)
    {
      v11 = v0[37];
      v10 = v0[38];
      v13 = v0[35];
      v12 = v0[36];
      v15 = v0[31];
      v14 = v0[32];
      v16 = v0[11];
      v17 = *v0[30];
      v0[61] = v17;
      v0[5] = v17;
      v0[62] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E378, &qword_227F2FE20);
      swift_willThrowTypedImpl();
      sub_227EB8430(v15, &qword_27D80ED28, &qword_227F31278);
      v8(v13, v14);
      (*(v11 + 8))(v10, v12);

      v3 = sub_227F04C4C;
      v4 = v16;
    }

    else
    {
      v18 = v0[42];
      v19 = v0[37];
      v20 = v0[38];
      v22 = v0[35];
      v21 = v0[36];
      v23 = v0[32];
      v24 = v0[30];
      v26 = v0[11];
      sub_227EB8430(v0[31], &qword_27D80ED28, &qword_227F31278);
      sub_227F09988(v24, v18, type metadata accessor for FileInfo);
      v8(v22, v23);
      (*(v19 + 8))(v20, v21);

      v3 = sub_227F03D74;
      v4 = v26;
    }

    v5 = 0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227F03D74()
{
  v163 = v0;
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[11];
  sub_227F09988(v0[42], v0[43], type metadata accessor for FileInfo);
  v4 = *(*(v3 + 112) + 32);
  v5 = (v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);

  os_unfair_lock_lock(v5);
  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v7 = type metadata accessor for PersistenceState();
  sub_227F09D78(v6 + *(v7 + 20), v1, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v5);
  os_unfair_lock_lock(v5);
  v8 = (v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  sub_227EF34BC(v8 + *(v9 + 28), v6, v0 + 8, v2);
  v10 = v0[25];
  v11 = v0[26];
  v12 = v0[24];
  os_unfair_lock_unlock(v8);
  os_unfair_lock_unlock(v5);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    v13 = v0[24];
    v14 = &qword_27D80EB28;
    v15 = &qword_227F30440;
LABEL_3:
    sub_227EB8430(v13, v14, v15);
    if (qword_2813CD578 != -1)
    {
      swift_once();
    }

    v16 = sub_227F2B334();
    __swift_project_value_buffer(v16, qword_2813CE070);
    v17 = sub_227F2B304();
    v18 = sub_227F2B8E4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_227EB2000, v17, v18, "Missing manifest.", v19, 2u);
      MEMORY[0x22AAAD240](v19, -1, -1);
    }

    v20 = v0[43];
    v21 = v0[28];

    sub_227EBFEF4();
    swift_allocError();
    *v22 = xmmword_227F311A0;
    *(v22 + 16) = 2;
    swift_willThrow();

    goto LABEL_8;
  }

  v34 = v0[39];
  v35 = v0[40];
  v36 = v0[28];
  v37 = v0[23];
  sub_227F09988(v0[24], v0[27], type metadata accessor for Manifest);
  sub_227EC2180(v36, v37, &qword_27D80E8F0, &unk_227F2F4B0);
  if ((*(v35 + 48))(v37, 1, v34) == 1)
  {
    v38 = v0[23];
    sub_227F09C50(v0[27], type metadata accessor for Manifest);
    v14 = &qword_27D80E8F0;
    v15 = &unk_227F2F4B0;
    v13 = v38;
    goto LABEL_3;
  }

  v39 = v0[27];
  v40 = sub_227F09988(v0[23], v0[41], type metadata accessor for FileInfo);
  if (*(v39 + 16) != 1)
  {
    if (qword_2813CD578 != -1)
    {
      swift_once();
    }

    v57 = sub_227F2B334();
    __swift_project_value_buffer(v57, qword_2813CE070);
    v58 = sub_227F2B304();
    v59 = sub_227F2B8E4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_227EB2000, v58, v59, "Manifest is unsupported.", v60, 2u);
      MEMORY[0x22AAAD240](v60, -1, -1);
    }

    v20 = v0[43];
    v61 = v0[41];
    v62 = v0[27];
    v21 = v0[28];

    sub_227EBFEF4();
    swift_allocError();
    *v63 = xmmword_227F303E0;
    *(v63 + 16) = 2;
    swift_willThrow();

    sub_227F09C50(v61, type metadata accessor for FileInfo);
    v64 = v62;
    goto LABEL_22;
  }

  v41 = v0[43];
  v42 = v0[27];
  v43 = v0[20];
  v44 = v0[21];
  v45 = v0[19];
  v47 = v0[10];
  v46 = v0[11];
  sub_227F052E0(v40, v42, v0[41], v41);
  v48 = type metadata accessor for ResourceUpdatesRequest(0);
  sub_227F0598C(v42, v41, *(v47 + *(v48 + 20) + 8), *(v47 + *(v48 + 20) + 16), *(v47 + *(v48 + 20) + 24), v45);
  if ((*(v44 + 48))(v45, 1, v43) == 1)
  {
    v157 = v0[50];
    v159 = v0[51];
    v50 = v0[47];
    v49 = v0[48];
    v51 = v0[44];
    v52 = v0[45];
    v53 = v0[43];
    v54 = v0[39];
    v55 = v0[18];
    sub_227EB8430(v0[19], &qword_27D80ED20, &qword_227F31270);
    sub_227F09D78(v53 + *(v54 + 20), v55, type metadata accessor for ContainerizableURL);
    (*(v52 + 32))(v49, v55, v51);
    sub_227EC14F8();
    v157(v50, v49, v51);
    v56 = sub_227F05188(v50);
    v83 = qword_2813CD578;
    v84 = v56;
    v85 = v84;
    if (v83 != -1)
    {
      swift_once();
    }

    v87 = v0[50];
    v86 = v0[51];
    v88 = v0[48];
    v89 = v0[46];
    v90 = v0[44];
    v91 = sub_227F2B334();
    __swift_project_value_buffer(v91, qword_2813CE070);
    v87(v89, v88, v90);
    v92 = sub_227F2B304();
    v93 = sub_227F2B8D4();
    v94 = os_log_type_enabled(v92, v93);
    v96 = v0[45];
    v95 = v0[46];
    v97 = v0[44];
    if (v94)
    {
      v153 = v85;
      v98 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v162 = v149;
      *v98 = 136315138;
      sub_227F09940(&qword_27D80E008, 255, MEMORY[0x277CC9260]);
      v99 = sub_227F2BC24();
      v101 = v100;
      v158 = *(v96 + 8);
      v158(v95, v97);
      v102 = sub_227ECAC40(v99, v101, &v162);

      *(v98 + 4) = v102;
      _os_log_impl(&dword_227EB2000, v92, v93, "Opened FileHandle to %s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v149);
      MEMORY[0x22AAAD240](v149, -1, -1);
      v103 = v98;
      v85 = v153;
      MEMORY[0x22AAAD240](v103, -1, -1);
    }

    else
    {

      v158 = *(v96 + 8);
      v158(v95, v97);
    }

    if (xpc_fd_create([v85 fileDescriptor]))
    {
      v104 = v0[48];
      v128 = v0[45];
      v131 = v0[44];
      v137 = v0[41];
      v140 = v0[28];
      v161 = v0[27];
      v105 = v0[16];
      v143 = v0[17];
      v146 = v0[43];
      v150 = v0[15];
      v154 = v0[25];
      v106 = v0[9];
      sub_227F2B444();

      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
      v134 = *(v107 + 48);
      v108 = (v106 + *(v107 + 64));
      v109 = sub_227F2B024();
      v111 = v110;

      v158(v104, v131);
      sub_227F09C50(v137, type metadata accessor for FileInfo);
      sub_227F09C50(v140, type metadata accessor for ResourceInfo);
      sub_227F09C50(v146, type metadata accessor for FileInfo);
      *v106 = v109;
      v106[1] = v111;
      (*(v105 + 32))(v106 + v134, v143, v150);
      v112 = (v161 + *(v154 + 36));
      v113 = *v112;
      v114 = v112[1];

      sub_227F09C50(v161, type metadata accessor for Manifest);
      *v108 = v113;
      v108[1] = v114;
      (*(*(v107 - 8) + 56))(v106, 0, 2, v107);
      type metadata accessor for RRDResponse(0);
      swift_storeEnumTagMultiPayload();
      v73 = v158;
      goto LABEL_24;
    }

    v155 = v85;

    v115 = sub_227F2B304();
    v116 = sub_227F2B8E4();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_227EB2000, v115, v116, "Couldn't send file handle to client.", v117, 2u);
      MEMORY[0x22AAAD240](v117, -1, -1);
    }

    v118 = v0[48];
    v119 = v0[44];
    v120 = v0[45];
    v20 = v0[43];
    v121 = v0[41];
    v21 = v0[28];
    v151 = v0[27];

    sub_227EBFEF4();
    swift_allocError();
    *v122 = xmmword_227F2CBE0;
    *(v122 + 16) = 2;
    swift_willThrow();

    v158(v118, v119);
    sub_227F09C50(v121, type metadata accessor for FileInfo);
    v64 = v151;
LABEL_22:
    sub_227F09C50(v64, type metadata accessor for Manifest);
LABEL_8:
    sub_227F09C50(v21, type metadata accessor for ResourceInfo);
    sub_227F09C50(v20, type metadata accessor for FileInfo);
    v23 = v0[48];
    v25 = v0[46];
    v24 = v0[47];
    v27 = v0[42];
    v26 = v0[43];
    v28 = v0[41];
    v29 = v0[38];
    v30 = v0[35];
    v123 = v0[34];
    v124 = v0[31];
    v126 = v0[30];
    v129 = v0[28];
    v132 = v0[27];
    v135 = v0[24];
    v138 = v0[23];
    v141 = v0[22];
    v144 = v0[19];
    v147 = v0[18];
    v31 = v0[17];
    v156 = v0[14];
    (*(v0[45] + 8))(v0[49], v0[44]);

    v32 = v0[1];
    goto LABEL_9;
  }

  v65 = v0[45];
  v66 = v0[43];
  v67 = v0[41];
  v69 = v0[27];
  v68 = v0[28];
  v70 = v0[22];
  v71 = v0[19];
  v72 = v0[9];

  sub_227F09C50(v67, type metadata accessor for FileInfo);
  sub_227F09C50(v69, type metadata accessor for Manifest);
  sub_227F09C50(v68, type metadata accessor for ResourceInfo);
  sub_227F09C50(v66, type metadata accessor for FileInfo);
  sub_227F09988(v71, v70, type metadata accessor for ResourceUpdatesResponse);
  sub_227F09988(v70, v72, type metadata accessor for ResourceUpdatesResponse);
  type metadata accessor for RRDResponse(0);
  swift_storeEnumTagMultiPayload();
  v73 = *(v65 + 8);
LABEL_24:
  v74 = v0[48];
  v76 = v0[46];
  v75 = v0[47];
  v77 = v0[43];
  v79 = v0[41];
  v78 = v0[42];
  v80 = v0[38];
  v81 = v0[35];
  v125 = v0[34];
  v127 = v0[31];
  v130 = v0[30];
  v133 = v0[28];
  v136 = v0[27];
  v139 = v0[24];
  v142 = v0[23];
  v145 = v0[22];
  v148 = v0[19];
  v152 = v0[18];
  v82 = v0[17];
  v160 = v0[14];
  v73(v0[49], v0[44]);

  v32 = v0[1];
LABEL_9:

  return v32();
}

uint64_t sub_227F04C4C()
{
  v1 = *(v0 + 488);
  *(v0 + 48) = v1;
  v2 = *(v0 + 496);
  v3 = v1;
  v4 = v1;
  if (swift_dynamicCast())
  {
  }

  else
  {
    v5 = *(v0 + 496);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    *(v0 + 56) = *(v0 + 488);
    if (!swift_dynamicCast())
    {
      v42 = *(v0 + 488);
      goto LABEL_11;
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 488);
  v9 = sub_227F2B334();
  __swift_project_value_buffer(v9, qword_2813CE070);
  v10 = v8;
  v11 = sub_227F2B304();
  v12 = sub_227F2B8E4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 488);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_227EB2000, v11, v12, "Error fetching resource updates: %@", v14, 0xCu);
    sub_227EB8430(v15, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v15, -1, -1);
    MEMORY[0x22AAAD240](v14, -1, -1);
  }

  v18 = *(v0 + 488);

  sub_227EBFEF4();
  swift_allocError();
  *v19 = xmmword_227F30400;
  *(v19 + 16) = 2;
  swift_willThrow();

LABEL_11:
  v20 = *(v0 + 384);
  v22 = *(v0 + 368);
  v21 = *(v0 + 376);
  v24 = *(v0 + 336);
  v23 = *(v0 + 344);
  v25 = *(v0 + 328);
  v26 = *(v0 + 304);
  v27 = *(v0 + 280);
  v31 = *(v0 + 272);
  v32 = *(v0 + 248);
  v33 = *(v0 + 240);
  v34 = *(v0 + 224);
  v35 = *(v0 + 216);
  v36 = *(v0 + 192);
  v37 = *(v0 + 184);
  v38 = *(v0 + 176);
  v39 = *(v0 + 152);
  v40 = *(v0 + 144);
  v28 = *(v0 + 136);
  v41 = *(v0 + 112);
  (*(*(v0 + 360) + 8))(*(v0 + 392), *(v0 + 352));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_227F04FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_227F04FF4, 0, 0);
}

uint64_t sub_227F04FF4()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_227F05094;
  v3 = v0[4];
  v4 = v0[2];

  return sub_227F15758(v4, v3);
}

uint64_t sub_227F05094()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_227F05188(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_227F2B044();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_227F2B114();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_227F2AFC4();

    swift_willThrow();
    v9 = sub_227F2B114();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_227F052E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a2;
  v6 = type metadata accessor for ContainerizableURL(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_227F2B114();
  v69 = *(v71 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v67 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Manifest();
  v11 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for FileInfo(0);
  v14 = *(*(v66 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v66);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v61 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v61 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - v24;
  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v26 = sub_227F2B334();
  __swift_project_value_buffer(v26, qword_2813CE070);
  sub_227F09D78(a3, v25, type metadata accessor for FileInfo);
  sub_227F09D78(v70, v13, type metadata accessor for Manifest);
  sub_227F09D78(a4, v23, type metadata accessor for FileInfo);
  sub_227F09D78(a4, v20, type metadata accessor for FileInfo);
  sub_227F09D78(a4, v17, type metadata accessor for FileInfo);

  v27 = sub_227F2B304();
  v28 = sub_227F2B8F4();

  if (os_log_type_enabled(v27, v28))
  {
    v63 = v28;
    v64 = v27;
    v70 = v17;
    v29 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v72 = v62;
    *v29 = 136447490;
    v30 = sub_227F08A48();
    v32 = sub_227ECAC40(v30, v31, &v72);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    sub_227F09940(&qword_27D80E008, 255, MEMORY[0x277CC9260]);
    v33 = sub_227F2BC24();
    v35 = v34;
    sub_227F09C50(v25, type metadata accessor for FileInfo);
    v36 = sub_227ECAC40(v33, v35, &v72);

    *(v29 + 14) = v36;
    *(v29 + 22) = 2082;
    v37 = &v13[*(v65 + 36)];
    v38 = *v37;
    v39 = v37[1];

    sub_227F09C50(v13, type metadata accessor for Manifest);
    v40 = sub_227ECAC40(v38, v39, &v72);

    *(v29 + 24) = v40;
    *(v29 + 32) = 2082;
    v41 = sub_227F2BC24();
    v43 = v42;
    sub_227F09C50(v23, type metadata accessor for FileInfo);
    v44 = sub_227ECAC40(v41, v43, &v72);

    *(v29 + 34) = v44;
    *(v29 + 42) = 2082;
    v45 = v66;
    v46 = &v20[*(v66 + 32)];
    if (v46[1])
    {
      v47 = *v46;
      v48 = v46[1];
    }

    else
    {
      v48 = 0xE700000000000000;
      v47 = 0x676E697373696DLL;
    }

    sub_227F09C50(v20, type metadata accessor for FileInfo);
    v49 = sub_227ECAC40(v47, v48, &v72);

    *(v29 + 44) = v49;
    *(v29 + 52) = 2080;
    v50 = v70;
    v51 = v68;
    sub_227F09D78(&v70[*(v45 + 20)], v68, type metadata accessor for ContainerizableURL);
    v52 = v69;
    v53 = v67;
    v54 = v71;
    (*(v69 + 32))(v67, v51, v71);
    v55 = sub_227F2BC24();
    v57 = v56;
    (*(v52 + 8))(v53, v54);
    sub_227F09C50(v50, type metadata accessor for FileInfo);
    v58 = sub_227ECAC40(v55, v57, &v72);

    *(v29 + 54) = v58;
    v59 = v64;
    _os_log_impl(&dword_227EB2000, v64, v63, "%{public}s Response context: Manifest (URL: %{public}s, digest: %{public}s), Updates (URL: %{public}s, digest: %{public}s, path: %s)", v29, 0x3Eu);
    v60 = v62;
    swift_arrayDestroy();
    MEMORY[0x22AAAD240](v60, -1, -1);
    MEMORY[0x22AAAD240](v29, -1, -1);
  }

  else
  {

    sub_227F09C50(v17, type metadata accessor for FileInfo);
    sub_227F09C50(v20, type metadata accessor for FileInfo);
    sub_227F09C50(v23, type metadata accessor for FileInfo);
    sub_227F09C50(v13, type metadata accessor for Manifest);
    sub_227F09C50(v25, type metadata accessor for FileInfo);
  }
}

uint64_t sub_227F0598C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = (a2 + *(type metadata accessor for FileInfo(0) + 32));
  v12 = v11[1];
  if (!v12)
  {
    if (qword_2813CD570 != -1)
    {
      swift_once();
    }

    v22 = sub_227F2B334();
    __swift_project_value_buffer(v22, qword_2813CE058);
    v23 = sub_227F2B304();
    v24 = sub_227F2B8D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_227EB2000, v23, v24, "Upgrading from a store with no updates digest.", v25, 2u);
      MEMORY[0x22AAAD240](v25, -1, -1);
    }

    goto LABEL_23;
  }

  if (!a3 || (*v11 == a4 ? (v13 = v12 == a5) : (v13 = 0), !v13 && (sub_227F2BC64() & 1) == 0))
  {
LABEL_23:
    v26 = 1;
    goto LABEL_30;
  }

  v14 = (a1 + *(type metadata accessor for Manifest() + 36));
  v15 = *v14 == a4 && v14[1] == a5;
  if (v15 || (sub_227F2BC64() & 1) != 0)
  {
    if (qword_2813CD570 != -1)
    {
      swift_once();
    }

    v16 = sub_227F2B334();
    __swift_project_value_buffer(v16, qword_2813CE058);

    v17 = sub_227F2B304();
    v18 = sub_227F2B8F4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_227ECAC40(a4, a5, &v36);
      _os_log_impl(&dword_227EB2000, v17, v18, "Updates cached are still current. (digest: %s)", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAAD240](v20, -1, -1);
      MEMORY[0x22AAAD240](v19, -1, -1);
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
    (*(*(v21 - 8) + 56))(a6, 1, 2, v21);
  }

  else
  {
    if (qword_2813CD570 != -1)
    {
      swift_once();
    }

    v27 = sub_227F2B334();
    __swift_project_value_buffer(v27, qword_2813CE058);

    v28 = sub_227F2B304();
    v29 = sub_227F2B8F4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_227ECAC40(a4, a5, &v36);
      _os_log_impl(&dword_227EB2000, v28, v29, "Updates cached are not the latest, but we're still in the grace period window. (digest: %s)", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAAD240](v31, -1, -1);
      MEMORY[0x22AAAD240](v30, -1, -1);
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
    (*(*(v32 - 8) + 56))(a6, 2, 2, v32);
  }

  v26 = 0;
LABEL_30:
  v33 = type metadata accessor for ResourceUpdatesResponse(0);
  v34 = *(*(v33 - 8) + 56);

  return v34(a6, v26, 1, v33);
}

uint64_t sub_227F05E04()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227F05E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RRDPeerHandler();

  return MEMORY[0x282200168](a1, v5, a3);
}

uint64_t sub_227F05EDC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227ED03CC;

  return v7(a1);
}

uint64_t sub_227F05FD4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227EFA0C4;

  return v7(a1);
}

uint64_t sub_227F060CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 224) = a8;
  *(v8 + 64) = a7;
  *(v8 + 72) = v23;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED68, &qword_227F31330);
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED70, &qword_227F31350) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED78, &qword_227F31358);
  *(v8 + 112) = v13;
  v14 = *(v13 - 8);
  *(v8 + 120) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v16 = sub_227F2BA54();
  *(v8 + 136) = v16;
  v17 = *(v16 - 8);
  *(v8 + 144) = v17;
  *(v8 + 152) = *(v17 + 64);
  *(v8 + 160) = swift_task_alloc();
  v18 = sub_227F2BA34();
  *(v8 + 168) = v18;
  v19 = *(v18 - 8);
  *(v8 + 176) = v19;
  *(v8 + 184) = *(v19 + 64);
  *(v8 + 192) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0) - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F06350, 0, 0);
}

uint64_t sub_227F06350()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v27 = *(v0 + 160);
  v28 = *(v0 + 184);
  v29 = *(v0 + 152);
  v23 = *(v0 + 192);
  v24 = *(v0 + 144);
  v26 = *(v0 + 136);
  v32 = *(v0 + 128);
  v33 = *(v0 + 80);
  v25 = *(v0 + 72);
  v20 = *(v0 + 224);
  v31 = *(v0 + 64);
  v30 = *(v0 + 56);
  v4 = *(v0 + 40);
  v19 = *(v0 + 48);
  v21 = *(v0 + 24);
  v22 = *(v0 + 32);
  v5 = sub_227F2B854();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v22;
  v7[5] = v4;

  sub_227F07C78(v1, &unk_227F31368, v7, &unk_283B50D40, &qword_27D80ED68, &qword_227F31330, &unk_227F31388);
  sub_227EB8430(v1, &qword_27D80EB88, &qword_227F312D0);
  v6(v1, 1, 1, v5);
  (*(v2 + 16))(v23, v19, v3);
  (*(v24 + 16))(v27, v25, v26);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = (v28 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(v24 + 80) + v9 + 17) & ~*(v24 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v2 + 32))(v11 + v8, v23, v3);
  v12 = v11 + v9;
  *v12 = v30;
  *(v12 + 8) = v31;
  *(v12 + 16) = v20 & 1;
  (*(v24 + 32))(v11 + v10, v27, v26);
  sub_227F07C78(v1, &unk_227F31378, v11, &unk_283B50D40, &qword_27D80ED68, &qword_227F31330, &unk_227F31388);
  sub_227EB8430(v1, &qword_27D80EB88, &qword_227F312D0);
  *(v0 + 208) = *v21;
  sub_227F2B804();
  v13 = *(MEMORY[0x277D856B0] + 4);
  v14 = swift_task_alloc();
  *(v0 + 216) = v14;
  *v14 = v0;
  v14[1] = sub_227F066C8;
  v15 = *(v0 + 128);
  v16 = *(v0 + 104);
  v17 = *(v0 + 112);

  return MEMORY[0x2822002E8](v16, 0, 0, v17);
}

uint64_t sub_227F066C8()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_227F067C4, 0, 0);
}

uint64_t sub_227F067C4()
{
  v1 = v0[13];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    return sub_227F2BA74();
  }

  sub_227EE7808(v1, v0[12], &qword_27D80ED68, &qword_227F31330);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v4 = v0[12];
      v5 = v0[2];
      (*(v0[15] + 8))(v0[16], v0[14]);
      sub_227EE7808(v4, v5, &qword_27D80ED60, &qword_227F31308);
LABEL_10:
      v14 = v0[25];
      v13 = v0[26];
      v15 = v0[24];
      v16 = v0[20];
      v17 = v0[16];
      v19 = v0[12];
      v18 = v0[13];
      v20 = v0[10];
      sub_227F2B824();

      v21 = v0[1];

      return v21();
    }

    v11 = v0[12];
    v12 = v0[2];
    (*(v0[15] + 8))(v0[16], v0[14]);
    *v12 = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED60, &qword_227F31308);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    v9 = v0[2];
    sub_227F09110();
    v10 = swift_allocError();
    (*(v7 + 8))(v6, v8);
    *v9 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED60, &qword_227F31308);
    goto LABEL_9;
  }

  v22 = *(MEMORY[0x277D856B0] + 4);
  v23 = swift_task_alloc();
  v0[27] = v23;
  *v23 = v0;
  v23[1] = sub_227F066C8;
  v24 = v0[16];
  v25 = v0[13];
  v26 = v0[14];

  return MEMORY[0x2822002E8](v25, 0, 0, v26);
}

uint64_t sub_227F06ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 224) = a8;
  *(v8 + 64) = a7;
  *(v8 + 72) = v23;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED38, &qword_227F312A0);
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED40, &qword_227F312C0) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED48, &qword_227F312C8);
  *(v8 + 112) = v13;
  v14 = *(v13 - 8);
  *(v8 + 120) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v16 = sub_227F2BA54();
  *(v8 + 136) = v16;
  v17 = *(v16 - 8);
  *(v8 + 144) = v17;
  *(v8 + 152) = *(v17 + 64);
  *(v8 + 160) = swift_task_alloc();
  v18 = sub_227F2BA34();
  *(v8 + 168) = v18;
  v19 = *(v18 - 8);
  *(v8 + 176) = v19;
  *(v8 + 184) = *(v19 + 64);
  *(v8 + 192) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0) - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F06D50, 0, 0);
}

uint64_t sub_227F06D50()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v27 = *(v0 + 160);
  v28 = *(v0 + 184);
  v29 = *(v0 + 152);
  v23 = *(v0 + 192);
  v24 = *(v0 + 144);
  v26 = *(v0 + 136);
  v32 = *(v0 + 128);
  v33 = *(v0 + 80);
  v25 = *(v0 + 72);
  v20 = *(v0 + 224);
  v31 = *(v0 + 64);
  v30 = *(v0 + 56);
  v4 = *(v0 + 40);
  v19 = *(v0 + 48);
  v21 = *(v0 + 24);
  v22 = *(v0 + 32);
  v5 = sub_227F2B854();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v22;
  v7[5] = v4;

  sub_227F07C78(v1, &unk_227F312E0, v7, &unk_283B50CA0, &qword_27D80ED38, &qword_227F312A0, &unk_227F31300);
  sub_227EB8430(v1, &qword_27D80EB88, &qword_227F312D0);
  v6(v1, 1, 1, v5);
  (*(v2 + 16))(v23, v19, v3);
  (*(v24 + 16))(v27, v25, v26);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = (v28 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(v24 + 80) + v9 + 17) & ~*(v24 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v2 + 32))(v11 + v8, v23, v3);
  v12 = v11 + v9;
  *v12 = v30;
  *(v12 + 8) = v31;
  *(v12 + 16) = v20 & 1;
  (*(v24 + 32))(v11 + v10, v27, v26);
  sub_227F07C78(v1, &unk_227F312F0, v11, &unk_283B50CA0, &qword_27D80ED38, &qword_227F312A0, &unk_227F31300);
  sub_227EB8430(v1, &qword_27D80EB88, &qword_227F312D0);
  *(v0 + 208) = *v21;
  sub_227F2B804();
  v13 = *(MEMORY[0x277D856B0] + 4);
  v14 = swift_task_alloc();
  *(v0 + 216) = v14;
  *v14 = v0;
  v14[1] = sub_227F070C8;
  v15 = *(v0 + 128);
  v16 = *(v0 + 104);
  v17 = *(v0 + 112);

  return MEMORY[0x2822002E8](v16, 0, 0, v17);
}

uint64_t sub_227F070C8()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_227F071C4, 0, 0);
}

uint64_t sub_227F071C4()
{
  v1 = v0[13];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    return sub_227F2BA74();
  }

  sub_227EE7808(v1, v0[12], &qword_27D80ED38, &qword_227F312A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v4 = v0[12];
      v5 = v0[2];
      (*(v0[15] + 8))(v0[16], v0[14]);
      sub_227EE7808(v4, v5, &qword_27D80ED28, &qword_227F31278);
LABEL_10:
      v14 = v0[25];
      v13 = v0[26];
      v15 = v0[24];
      v16 = v0[20];
      v17 = v0[16];
      v19 = v0[12];
      v18 = v0[13];
      v20 = v0[10];
      sub_227F2B824();

      v21 = v0[1];

      return v21();
    }

    v11 = v0[12];
    v12 = v0[2];
    (*(v0[15] + 8))(v0[16], v0[14]);
    *v12 = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED28, &qword_227F31278);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    v9 = v0[2];
    sub_227F09110();
    v10 = swift_allocError();
    (*(v7 + 8))(v6, v8);
    *v9 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED28, &qword_227F31278);
    goto LABEL_9;
  }

  v22 = *(MEMORY[0x277D856B0] + 4);
  v23 = swift_task_alloc();
  v0[27] = v23;
  *v23 = v0;
  v23[1] = sub_227F070C8;
  v24 = v0[16];
  v25 = v0[13];
  v26 = v0[14];

  return MEMORY[0x2822002E8](v25, 0, 0, v26);
}

uint64_t sub_227F074CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = a1;
  v6 = sub_227F2B114();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v4[5] = v9;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_227F0762C;

  return v13(v9);
}

uint64_t sub_227F0762C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_227F07804;
  }

  else
  {
    v3 = sub_227F07740;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227F07740()
{
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED60, &qword_227F31308);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED68, &qword_227F31330);
  swift_storeEnumTagMultiPayload();
  v1 = v0[5];

  v2 = v0[1];

  return v2();
}

uint64_t sub_227F07804()
{
  **(v0 + 16) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED60, &qword_227F31308);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED68, &qword_227F31330);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_227F078B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = a1;
  v6 = *(*(type metadata accessor for FileInfo(0) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[3] = v7;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_227F079E8;

  return v11(v7);
}

uint64_t sub_227F079E8()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_227F07BC4;
  }

  else
  {
    v3 = sub_227F07AFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227F07AFC()
{
  sub_227F09988(v0[3], v0[2], type metadata accessor for FileInfo);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED28, &qword_227F31278);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED38, &qword_227F312A0);
  swift_storeEnumTagMultiPayload();
  v1 = v0[3];

  v2 = v0[1];

  return v2();
}

uint64_t sub_227F07BC4()
{
  **(v0 + 16) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED28, &qword_227F31278);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED38, &qword_227F312A0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_227F07C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v28[0] = a7;
  v10 = v7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v28 - v16;
  sub_227EC2180(a1, v28 - v16, &qword_27D80EB88, &qword_227F312D0);
  v18 = sub_227F2B854();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_227EB8430(v17, &qword_27D80EB88, &qword_227F312D0);
    if (*(a3 + 16))
    {
LABEL_3:
      v20 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v21 = sub_227F2B7B4();
      v23 = v22;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_227F2B844();
    (*(v19 + 8))(v17, v18);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
  v23 = 0;
LABEL_6:
  v24 = *v10;
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v26 = (v23 | v21);
  if (v23 | v21)
  {
    v29[0] = 0;
    v29[1] = 0;
    v26 = v29;
    v29[2] = v21;
    v29[3] = v23;
  }

  v28[1] = 1;
  v28[2] = v26;
  v28[3] = v24;
  swift_task_create();
}

uint64_t sub_227F07E98(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227F07F90;

  return v7(a1);
}

uint64_t sub_227F07F90()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_227F08088(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227F09DE0;

  return v7(a1);
}

uint64_t sub_227F08180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a6;
  v13 = *(a6 + 8);
  v14 = *(a6 + 16);
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_227ED03CC;

  return sub_227F060CC(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_227F08278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a1;
  v9 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v9;
  v10 = *(MEMORY[0x277D857F0] + 4);
  v11 = swift_task_alloc();
  *(v6 + 48) = v11;
  v12 = sub_227F2BA54();
  v13 = sub_227F09940(&qword_27D80ED58, 255, MEMORY[0x277D85928]);
  *v11 = v6;
  v11[1] = sub_227F08394;

  return MEMORY[0x282200488](a4, v6 + 16, a6, v12, v13);
}

uint64_t sub_227F08394()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_227F08528;
  }

  else
  {
    v3 = sub_227F084A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227F084A8()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED68, &qword_227F31330);
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_227F08528()
{
  v1 = sub_227F2B864();
  v2 = *(v0 + 56);
  if (v1)
  {
  }

  else
  {
    **(v0 + 40) = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED68, &qword_227F31330);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227F085E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a6;
  v13 = *(a6 + 8);
  v14 = *(a6 + 16);
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_227EFA0C4;

  return sub_227F06ACC(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_227F086DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a1;
  v9 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v9;
  v10 = *(MEMORY[0x277D857F0] + 4);
  v11 = swift_task_alloc();
  *(v6 + 48) = v11;
  v12 = sub_227F2BA54();
  v13 = sub_227F09940(&qword_27D80ED58, 255, MEMORY[0x277D85928]);
  *v11 = v6;
  v11[1] = sub_227F087F8;

  return MEMORY[0x282200488](a4, v6 + 16, a6, v12, v13);
}

uint64_t sub_227F087F8()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_227F0898C;
  }

  else
  {
    v3 = sub_227F0890C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227F0890C()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED38, &qword_227F312A0);
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_227F0898C()
{
  v1 = sub_227F2B864();
  v2 = *(v0 + 56);
  if (v1)
  {
  }

  else
  {
    **(v0 + 40) = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED38, &qword_227F312A0);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227F08A48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF8, &qword_227F31260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v12 - v2;
  v4 = sub_227F2B274();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D80DF18 != -1)
  {
    swift_once();
  }

  sub_227F2BE24();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_227EB8430(v3, &qword_27D80DFF8, &qword_227F31260);
    return 0x676E697373696D5BLL;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v12[0] = 91;
    v12[1] = 0xE100000000000000;
    sub_227F09940(&qword_27D80E5E8, 255, MEMORY[0x277CC95F0]);
    v10 = sub_227F2BC24();
    MEMORY[0x22AAAC3E0](v10);

    MEMORY[0x22AAAC3E0](93, 0xE100000000000000);
    v9 = v12[0];
    (*(v5 + 8))(v8, v4);
  }

  return v9;
}

uint64_t sub_227F08C94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_227EFA0C4;

  return sub_227F04FD0(a1, v5, v4);
}

uint64_t sub_227F08D40(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_227EFA0C4;

  return sub_227F05FD4(a1, v5);
}

uint64_t sub_227F08DF8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_227EFA0C4;

  return sub_227F085E4(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_227F08EDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_227EFA0C4;

  return sub_227F078B8(a1, v4, v5, v7);
}

uint64_t sub_227F08F9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_227F2BA34() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_227F2BA54() - 8);
  v9 = (v7 + *(v8 + 80) + 17) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_227EFA0C4;

  return sub_227F086DC(a1, v10, v11, v1 + v6, v1 + v7, v1 + v9);
}

unint64_t sub_227F09110()
{
  result = qword_27D80ED50;
  if (!qword_27D80ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ED50);
  }

  return result;
}

uint64_t sub_227F09164(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_227EFA0C4;

  return sub_227F08088(a1, v5);
}

uint64_t sub_227F0921C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_227ED03CC;

  return sub_227F02C4C(a1, v5, v4);
}

uint64_t sub_227F092C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_227EFA0C4;

  return sub_227F05EDC(a1, v5);
}

uint64_t sub_227F09380(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_227ED03CC;

  return sub_227F08180(a1, a2, v6, v7, v8, v9);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227F094A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_227EFA0C4;

  return sub_227F074CC(a1, v4, v5, v7);
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_227F2BA34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_227F2BA54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 17) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_227F096C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_227F2BA34() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_227F2BA54() - 8);
  v9 = (v7 + *(v8 + 80) + 17) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_227EFA0C4;

  return sub_227F08278(a1, v10, v11, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_227F09834(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_227EFA0C4;

  return sub_227F07E98(a1, v5);
}

uint64_t sub_227F09940(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227F09988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227F099F0(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_227F2B274() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for RRDRequest(0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_227F2B4C4() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_227F2B334() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = *(v1 + v6);
  v18 = *(v1 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_227EFA0C4;

  return sub_227EFFCBC(a1, v15, v16, v1 + v5, v17, v1 + v8, v1 + v11, v1 + v14);
}

uint64_t sub_227F09C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227F09CB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_227EFA0C4;

  return sub_227F00080(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_227F09D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_227F09E2C()
{
  sub_227F2B114();
  if (v0 <= 0x3F)
  {
    sub_227F09EB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227F09EB0()
{
  if (!qword_27D80EDA0)
  {
    v0 = sub_227F2B924();
    if (!v1)
    {
      atomic_store(v0, &qword_27D80EDA0);
    }
  }
}

uint64_t sub_227F09F58()
{
  sub_227F09FB0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_227F09FB0()
{
  if (!qword_27D80EDB8)
  {
    sub_227F2B454();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D80EDB8);
    }
  }
}

uint64_t sub_227F0A040()
{
  result = sub_227F2B114();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ResourceUpdatesRequest(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_227F0A0D4()
{
  sub_227F0A15C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ResourceUpdatesResponse(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_227F0A15C()
{
  if (!qword_27D80EDE0)
  {
    sub_227EB7BD0(255, &qword_27D80EDE8, 0x277CCAC90);
    v0 = type metadata accessor for SecureCodingCodableBridge();
    if (!v1)
    {
      atomic_store(v0, &qword_27D80EDE0);
    }
  }
}

uint64_t sub_227F0A1C4()
{
  v1 = type metadata accessor for ResourceUpdatesRequest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227F2B114();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RRDRequest(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227F0FEDC(v0, v13, type metadata accessor for RRDRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0xD000000000000016;
    }

    else
    {
      return 0x666E6F4364616572;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_227F0FC7C(v13, v4, type metadata accessor for ResourceUpdatesRequest);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_227F2B9A4();

    v30 = 0xD000000000000011;
    v31 = 0x8000000227F34470;
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_227F2B9A4();

    v28 = 0xD000000000000012;
    v29 = 0x8000000227F34430;
    sub_227F0F9E8(&qword_27D80E008, MEMORY[0x277CC9260]);
    v17 = sub_227F2BC24();
    MEMORY[0x22AAAC3E0](v17);

    MEMORY[0x22AAAC3E0](0xD000000000000012, 0x8000000227F34450);
    v18 = &v4[*(v1 + 20)];
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    v24 = *v18;
    v25 = v19;
    v26 = v20;
    v27 = v21;
    sub_227F101AC(v24, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF00, &qword_227F31868);
    v22 = sub_227F2B6C4();
    MEMORY[0x22AAAC3E0](v22);

    MEMORY[0x22AAAC3E0](v28, v29);

    MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
    v16 = v30;
    sub_227F1152C(v4, type metadata accessor for ResourceUpdatesRequest);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_227F2B9A4();

    v24 = 0xD000000000000020;
    v25 = 0x8000000227F34490;
    sub_227F0F9E8(&qword_27D80E008, MEMORY[0x277CC9260]);
    v15 = sub_227F2BC24();
    MEMORY[0x22AAAC3E0](v15);

    MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
    v16 = v24;
    (*(v6 + 8))(v9, v5);
  }

  return v16;
}

uint64_t sub_227F0A5FC(void *a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE08, &qword_227F317F8);
  v50 = *(v52 - 8);
  v2 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v48 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE10, &qword_227F31800);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v41 - v6;
  v47 = type metadata accessor for ResourceUpdatesRequest(0);
  v7 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE18, &qword_227F31808);
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v42 = &v41 - v11;
  v12 = sub_227F2B114();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE20, &qword_227F31810);
  v41 = *(v16 - 8);
  v17 = *(v41 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  v20 = type metadata accessor for RRDRequest(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE28, &qword_227F31818);
  v56 = *(v24 - 8);
  v57 = v24;
  v25 = *(v56 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v41 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F0FA30();
  sub_227F2BD94();
  sub_227F0FEDC(v55, v23, type metadata accessor for RRDRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v58 = 0;
      sub_227F0FB80();
      v35 = v57;
      sub_227F2BB84();
      (*(v41 + 8))(v19, v16);
    }

    else
    {
      v61 = 3;
      sub_227F0FA84();
      v40 = v48;
      v35 = v57;
      sub_227F2BB84();
      (*(v50 + 8))(v40, v52);
    }

    return (*(v56 + 8))(v27, v35);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v36 = v49;
      sub_227F0FC7C(v23, v49, type metadata accessor for ResourceUpdatesRequest);
      v60 = 2;
      sub_227F0FAD8();
      v37 = v51;
      v33 = v57;
      sub_227F2BB84();
      sub_227F0F9E8(&qword_27D80EE48, type metadata accessor for ResourceUpdatesRequest);
      v38 = v54;
      sub_227F2BC14();
      (*(v53 + 8))(v37, v38);
      sub_227F1152C(v36, type metadata accessor for ResourceUpdatesRequest);
    }

    else
    {
      v31 = v43;
      v30 = v44;
      (*(v43 + 32))(v15, v23, v44);
      v59 = 1;
      sub_227F0FB2C();
      v32 = v42;
      v33 = v57;
      sub_227F2BB84();
      sub_227F0F9E8(&qword_27D80E6A0, MEMORY[0x277CC9260]);
      v34 = v46;
      sub_227F2BC14();
      (*(v45 + 8))(v32, v34);
      (*(v31 + 8))(v15, v30);
    }

    return (*(v56 + 8))(v27, v33);
  }
}

uint64_t sub_227F0AD08()
{
  v1 = type metadata accessor for ResourceUpdatesRequest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227F2B114();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RRDRequest(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227F0FEDC(v0, v13, type metadata accessor for RRDRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = 3;
    }

    return MEMORY[0x22AAAC9F0](v16);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_227F0FC7C(v13, v4, type metadata accessor for ResourceUpdatesRequest);
    MEMORY[0x22AAAC9F0](2);
    sub_227F0F9E8(&qword_27D80EEF8, MEMORY[0x277CC9260]);
    sub_227F2B604();
    v17 = &v4[*(v1 + 20)];
    if (*(v17 + 1))
    {
      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      v20 = *v17;
      sub_227F2BD34();
      sub_227F2B704();
      sub_227F2B704();
    }

    else
    {
      sub_227F2BD34();
    }

    return sub_227F1152C(v4, type metadata accessor for ResourceUpdatesRequest);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    MEMORY[0x22AAAC9F0](1);
    sub_227F0F9E8(&qword_27D80EEF8, MEMORY[0x277CC9260]);
    sub_227F2B604();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_227F0B028@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF98, &qword_227F318C8);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFA0, &qword_227F318D0);
  v7 = *(v6 - 8);
  v66 = v6;
  v67 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v70 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFA8, &qword_227F318D8);
  v11 = *(v10 - 8);
  v62 = v10;
  v63 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v69 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFB0, &qword_227F318E0);
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = *(v60 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFB8, &qword_227F318E8);
  v73 = *(v68 - 8);
  v18 = *(v73 + 64);
  MEMORY[0x28223BE20](v68);
  v20 = &v57 - v19;
  v21 = type metadata accessor for RRDRequest(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v57 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v57 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_227F0FA30();
  v33 = v74;
  sub_227F2BD74();
  if (!v33)
  {
    v57 = v28;
    v58 = v25;
    v34 = v69;
    v35 = v70;
    v59 = v30;
    v74 = v21;
    v36 = v71;
    v37 = v72;
    v38 = v68;
    v39 = sub_227F2BB74();
    v40 = (2 * *(v39 + 16)) | 1;
    v76 = v39;
    v77 = v39 + 32;
    v78 = 0;
    v79 = v40;
    v41 = sub_227EC19A8();
    if (v41 != 4 && v78 == v79 >> 1)
    {
      if (v41 > 1u)
      {
        v48 = v73;
        if (v41 != 2)
        {
          v80 = 3;
          sub_227F0FA84();
          sub_227F2BAE4();
          (*(v64 + 8))(v36, v65);
          (*(v48 + 8))(v20, v38);
          swift_unknownObjectRelease();
          v42 = v59;
          goto LABEL_13;
        }

        v80 = 2;
        sub_227F0FAD8();
        v49 = v35;
        sub_227F2BAE4();
        type metadata accessor for ResourceUpdatesRequest(0);
        sub_227F0F9E8(&qword_27D80EFC0, type metadata accessor for ResourceUpdatesRequest);
        v50 = v58;
        v51 = v66;
        sub_227F2BB64();
        (*(v67 + 8))(v49, v51);
        (*(v48 + 8))(v20, v38);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v56 = v50;
      }

      else
      {
        if (!v41)
        {
          v80 = 0;
          sub_227F0FB80();
          sub_227F2BAE4();
          (*(v60 + 8))(v17, v61);
          (*(v73 + 8))(v20, v38);
          swift_unknownObjectRelease();
          v42 = v59;
LABEL_13:
          swift_storeEnumTagMultiPayload();
LABEL_15:
          sub_227F0FC7C(v42, v37, type metadata accessor for RRDRequest);
          return __swift_destroy_boxed_opaque_existential_0(v75);
        }

        v80 = 1;
        sub_227F0FB2C();
        v52 = v34;
        sub_227F2BAE4();
        sub_227F2B114();
        sub_227F0F9E8(&qword_27D80E880, MEMORY[0x277CC9260]);
        v53 = v57;
        v54 = v52;
        v55 = v62;
        sub_227F2BB64();
        (*(v63 + 8))(v54, v55);
        (*(v73 + 8))(v20, v38);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v56 = v53;
      }

      v42 = v59;
      sub_227F0FC7C(v56, v59, type metadata accessor for RRDRequest);
      goto LABEL_15;
    }

    v43 = sub_227F2B9E4();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0) + 48);
    *v45 = v74;
    sub_227F2BAF4();
    sub_227F2B9D4();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    (*(v73 + 8))(v20, v38);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v75);
}

unint64_t sub_227F0B8F4()
{
  v1 = 0x656372756F736572;
  if (*v0 != 2)
  {
    v1 = 0x666E6F4364616572;
  }

  v2 = 0xD000000000000015;
  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_227F0B984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227F11020(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227F0B9AC(uint64_t a1)
{
  v2 = sub_227F0FA30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0B9E8(uint64_t a1)
{
  v2 = sub_227F0FA30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0BA24(uint64_t a1)
{
  v2 = sub_227F0FA84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0BA60(uint64_t a1)
{
  v2 = sub_227F0FA84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0BA9C(uint64_t a1)
{
  v2 = sub_227F0FAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0BAD8(uint64_t a1)
{
  v2 = sub_227F0FAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0BB14(uint64_t a1)
{
  v2 = sub_227F0FB80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0BB50(uint64_t a1)
{
  v2 = sub_227F0FB80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0BB8C(uint64_t a1)
{
  v2 = sub_227F0FB2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0BBC8(uint64_t a1)
{
  v2 = sub_227F0FB2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0BC34()
{
  sub_227F2BD14();
  sub_227F0AD08();
  return sub_227F2BD44();
}

uint64_t sub_227F0BC78()
{
  sub_227F2BD14();
  sub_227F0AD08();
  return sub_227F2BD44();
}

uint64_t sub_227F0BCBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF18, &qword_227F31878);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F11388();
  sub_227F2BD94();
  v16 = 0;
  sub_227F2BBD4();
  if (!v5)
  {
    v15 = 1;
    sub_227F2BBD4();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_227F0BE50()
{
  if (*v0)
  {
    result = 0x747365676964;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_227F0BE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_227F2BC64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x747365676964 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_227F2BC64();

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

uint64_t sub_227F0BF58(uint64_t a1)
{
  v2 = sub_227F11388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0BF94(uint64_t a1)
{
  v2 = sub_227F11388();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0BFD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227F111A4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_227F0C020()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_227F2BD14();
  sub_227F2B704();
  sub_227F2B704();
  return sub_227F2BD44();
}

uint64_t sub_227F0C088()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_227F2B704();

  return sub_227F2B704();
}

uint64_t sub_227F0C0D8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_227F2BD14();
  sub_227F2B704();
  sub_227F2B704();
  return sub_227F2BD44();
}

uint64_t sub_227F0C13C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_227F2BC64(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_227F2BC64();
    }
  }

  return result;
}

uint64_t sub_227F0C1E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_227F2B9A4();

  MEMORY[0x22AAAC3E0](v1, v2);
  MEMORY[0x22AAAC3E0](0x747365676964202CLL, 0xEA0000000000203ALL);
  MEMORY[0x22AAAC3E0](v3, v4);
  MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
  return 0x203A656D616E28;
}

unint64_t sub_227F0C2A4()
{
  sub_227F2B9A4();

  sub_227F2B114();
  sub_227F0F9E8(&qword_27D80E008, MEMORY[0x277CC9260]);
  v1 = sub_227F2BC24();
  MEMORY[0x22AAAC3E0](v1);

  MEMORY[0x22AAAC3E0](0xD000000000000012, 0x8000000227F34450);
  v2 = (v0 + *(type metadata accessor for ResourceUpdatesRequest(0) + 20));
  v5 = v2[2];
  v6 = v2[3];
  sub_227F101AC(*v2, v2[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF00, &qword_227F31868);
  v3 = sub_227F2B6C4();
  MEMORY[0x22AAAC3E0](v3);

  return 0xD000000000000012;
}

uint64_t sub_227F0C3EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EEE8, &qword_227F31860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F0FE34();
  sub_227F2BD94();
  LOBYTE(v15) = 0;
  sub_227F2B114();
  sub_227F0F9E8(&qword_27D80E6A0, MEMORY[0x277CC9260]);
  sub_227F2BC14();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for ResourceUpdatesRequest(0) + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    sub_227F0FF44();
    sub_227F2BBC4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_227F0C5C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = sub_227F2B114();
  v30 = *(v33 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EED0, &qword_227F31858);
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for ResourceUpdatesRequest(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F0FE34();
  sub_227F2BD74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = v12;
  v17 = v15;
  v18 = v30;
  LOBYTE(v34) = 0;
  sub_227F0F9E8(&qword_27D80E880, MEMORY[0x277CC9260]);
  v19 = v33;
  v20 = v31;
  sub_227F2BB64();
  v21 = *(v18 + 32);
  v27 = v17;
  v21(v17, v6, v19);
  v36 = 1;
  sub_227F0FE88();
  sub_227F2BB34();
  (*(v32 + 8))(v11, v20);
  v22 = v27;
  v23 = (v27 + *(v28 + 20));
  v24 = v35;
  *v23 = v34;
  v23[1] = v24;
  sub_227F0FEDC(v22, v29, type metadata accessor for ResourceUpdatesRequest);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_227F1152C(v22, type metadata accessor for ResourceUpdatesRequest);
}

uint64_t sub_227F0C94C(void *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF68, &qword_227F318A0);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - v3;
  v4 = sub_227F2B454();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF70, &qword_227F318A8);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF78, &qword_227F318B0);
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = type metadata accessor for ResourceUpdatesResponse(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF80, &qword_227F318B8);
  v48 = *(v50 - 8);
  v19 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v21 = &v39 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F113DC();
  sub_227F2BD94();
  sub_227F0FEDC(v47, v18, type metadata accessor for ResourceUpdatesResponse);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
  v24 = (*(*(v23 - 8) + 48))(v18, 2, v23);
  if (v24)
  {
    if (v24 == 1)
    {
      v51 = 0;
      sub_227F114D8();
      v25 = v50;
      sub_227F2BB84();
      (*(v39 + 8))(v14, v11);
    }

    else
    {
      v52 = 1;
      sub_227F11484();
      v25 = v50;
      sub_227F2BB84();
      (*(v40 + 8))(v10, v7);
    }
  }

  else
  {
    v26 = *v18;
    v27 = *(v18 + 1);
    v28 = *(v23 + 48);
    v29 = &v18[*(v23 + 64)];
    v30 = v29[1];
    v47 = *v29;
    v31 = v42;
    v32 = v43;
    (*(v42 + 32))(v44, &v18[v28], v43);
    v56 = 2;
    sub_227F11430();
    v25 = v50;
    sub_227F2BB84();
    v55 = 0;
    v33 = v49;
    sub_227F2BBD4();
    v34 = v32;
    v35 = v31;

    if (v33)
    {

      (*(v41 + 8))(v45, v46);
      (*(v31 + 8))(v44, v34);
    }

    else
    {
      v54 = 1;
      sub_227F0F9E8(&qword_27D80EF88, MEMORY[0x277D855F8]);
      v37 = v44;
      sub_227F2BC14();
      v53 = 2;
      sub_227F2BBD4();
      v38 = v41;
      v25 = v50;

      (*(v38 + 8))(v45, v46);
      (*(v35 + 8))(v37, v34);
    }
  }

  return (*(v48 + 8))(v21, v25);
}

uint64_t sub_227F0D014@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF20, &qword_227F31880);
  v66 = *(v70 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF28, &qword_227F31888);
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v5);
  v68 = &v59 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF30, &qword_227F31890);
  v67 = *(v63 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v63);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF38, &qword_227F31898);
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - v13;
  v15 = type metadata accessor for ResourceUpdatesResponse(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_227F113DC();
  v24 = v73;
  sub_227F2BD74();
  if (!v24)
  {
    v73 = v15;
    v26 = v67;
    v25 = v68;
    v60 = v19;
    v61 = v21;
    v62 = 0;
    v28 = v69;
    v27 = v70;
    v29 = v71;
    v30 = sub_227F2BB74();
    v31 = (2 * *(v30 + 16)) | 1;
    v75 = v30;
    v76 = v30 + 32;
    v77 = 0;
    v78 = v31;
    v32 = sub_227EC19A4();
    if (v32 == 3 || v77 != v78 >> 1)
    {
      v36 = sub_227F2B9E4();
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0) + 48);
      *v38 = v73;
      sub_227F2BAF4();
      sub_227F2B9D4();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
      swift_willThrow();
    }

    else if (v32)
    {
      if (v32 == 1)
      {
        v79 = 1;
        sub_227F11484();
        v33 = v62;
        sub_227F2BAE4();
        if (!v33)
        {
          (*(v64 + 8))(v25, v65);
          (*(v72 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
          v35 = v61;
          (*(*(v34 - 8) + 56))(v61, 2, 2, v34);
LABEL_13:
          sub_227F0FC7C(v35, v29, type metadata accessor for ResourceUpdatesResponse);
          return __swift_destroy_boxed_opaque_existential_0(v74);
        }
      }

      else
      {
        v79 = 2;
        sub_227F11430();
        v43 = v62;
        sub_227F2BAE4();
        if (!v43)
        {
          v73 = v14;
          v79 = 0;
          v44 = v27;
          v45 = sub_227F2BB44();
          v47 = v46;
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
          v68 = v47;
          v48 = *(v67 + 48);
          v49 = v60;
          *v60 = v45;
          v49[1] = v47;
          v50 = v48;
          sub_227F2B454();
          v51 = v28;
          v79 = 1;
          sub_227F0F9E8(&qword_27D80EF50, MEMORY[0x277D855F8]);
          sub_227F2BB64();
          v65 = v50;
          v52 = v67;
          v79 = 2;
          v53 = sub_227F2BB44();
          v62 = 0;
          v54 = v53;
          v56 = v55;
          v57 = (v49 + *(v52 + 64));
          (*(v66 + 8))(v51, v44);
          (*(v72 + 8))(v73, v11);
          swift_unknownObjectRelease();
          *v57 = v54;
          v57[1] = v56;
          v58 = v60;
          (*(*(v52 - 8) + 56))(v60, 0, 2, v52);
          v35 = v61;
          sub_227F0FC7C(v58, v61, type metadata accessor for ResourceUpdatesResponse);
          goto LABEL_13;
        }
      }
    }

    else
    {
      v79 = 0;
      sub_227F114D8();
      v41 = v62;
      sub_227F2BAE4();
      if (!v41)
      {
        (*(v26 + 8))(v10, v63);
        (*(v72 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
        v35 = v61;
        (*(*(v42 - 8) + 56))(v61, 1, 2, v42);
        goto LABEL_13;
      }
    }

    (*(v72 + 8))(v14, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v74);
}

uint64_t sub_227F0D938()
{
  if (*v0)
  {
    result = 0x6946646568636163;
  }

  else
  {
    result = 0x6F46737465737361;
  }

  *v0;
  return result;
}

uint64_t sub_227F0D98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F46737465737361 && a2 == 0xEF4C52557265646CLL;
  if (v6 || (sub_227F2BC64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6946646568636163 && a2 == 0xEE006F666E49656CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_227F2BC64();

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

uint64_t sub_227F0DA78(uint64_t a1)
{
  v2 = sub_227F0FE34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0DAB4(uint64_t a1)
{
  v2 = sub_227F0FE34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0DB20(uint64_t a1)
{
  sub_227F2BD14();
  sub_227F2B114();
  sub_227F0F9E8(&qword_27D80EEF8, MEMORY[0x277CC9260]);
  sub_227F2B604();
  v3 = (v1 + *(a1 + 20));
  if (v3[1])
  {
    v5 = v3[2];
    v4 = v3[3];
    v6 = *v3;
    sub_227F2BD34();
    sub_227F2B704();
    sub_227F2B704();
  }

  else
  {
    sub_227F2BD34();
  }

  return sub_227F2BD44();
}

uint64_t sub_227F0DC10(uint64_t a1, uint64_t a2)
{
  sub_227F2B114();
  sub_227F0F9E8(&qword_27D80EEF8, MEMORY[0x277CC9260]);
  sub_227F2B604();
  v4 = (v2 + *(a2 + 20));
  if (!v4[1])
  {
    return sub_227F2BD34();
  }

  v6 = v4[2];
  v5 = v4[3];
  v7 = *v4;
  sub_227F2BD34();
  sub_227F2B704();

  return sub_227F2B704();
}

uint64_t sub_227F0DD04(uint64_t a1, uint64_t a2)
{
  sub_227F2BD14();
  sub_227F2B114();
  sub_227F0F9E8(&qword_27D80EEF8, MEMORY[0x277CC9260]);
  sub_227F2B604();
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v6 = v4[2];
    v5 = v4[3];
    v7 = *v4;
    sub_227F2BD34();
    sub_227F2B704();
    sub_227F2B704();
  }

  else
  {
    sub_227F2BD34();
  }

  return sub_227F2BD44();
}

uint64_t sub_227F0DDF8(uint64_t a1)
{
  v2 = sub_227F11484();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0DE34(uint64_t a1)
{
  v2 = sub_227F11484();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0DE70()
{
  v1 = 0x646568636163;
  if (*v0 != 1)
  {
    v1 = 0x656372756F736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669646F4D746F6ELL;
  }
}

uint64_t sub_227F0DED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227F12650(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227F0DEF8(uint64_t a1)
{
  v2 = sub_227F113DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0DF34(uint64_t a1)
{
  v2 = sub_227F113DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0DF70(uint64_t a1)
{
  v2 = sub_227F114D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0DFAC(uint64_t a1)
{
  v2 = sub_227F114D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0DFE8()
{
  v1 = 0x646E6148656C6966;
  if (*v0 != 1)
  {
    v1 = 0x747365676964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D614E656C6966;
  }
}

uint64_t sub_227F0E044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227F12768(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227F0E06C(uint64_t a1)
{
  v2 = sub_227F11430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0E0A8(uint64_t a1)
{
  v2 = sub_227F11430();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_227F0E118()
{
  v1 = v0;
  v2 = type metadata accessor for ResourceUpdatesResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RRDResponse(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227F0FEDC(v1, v9, type metadata accessor for RRDResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_227F0FC7C(v9, v5, type metadata accessor for ResourceUpdatesResponse);
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_227F2B9A4();
      MEMORY[0x22AAAC3E0](0xD000000000000011, 0x8000000227F34470);
      sub_227F2BA64();
      MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
      v15 = v23;
      sub_227F1152C(v5, type metadata accessor for ResourceUpdatesResponse);
      return v15;
    }

    else
    {
      sub_227F1152C(v9, type metadata accessor for RRDResponse);
      return 0xD000000000000015;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v16 = *v9;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_227F2B9A4();

    v23 = 0xD000000000000017;
    v24 = 0x8000000227F34500;
    v17 = v16;
    v18 = [v17 description];
    v19 = sub_227F2B674();
    v21 = v20;

    MEMORY[0x22AAAC3E0](v19, v21);

    MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
    return v23;
  }

  else
  {
    v11 = *v9;
    v12 = *(v9 + 1);
    v13 = v9[16];
    v26 = 0;
    v27 = 0xE000000000000000;
    MEMORY[0x22AAAC3E0](0x28726F7272652ELL, 0xE700000000000000);
    v23 = v11;
    v24 = v12;
    v25 = v13;
    sub_227F2BA64();
    sub_227EC172C(v11, v12, v13);
    MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
    return v26;
  }
}

void sub_227F0E430(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFD0, &qword_227F318F8);
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFD8, &qword_227F31900);
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v43 - v7;
  v47 = type metadata accessor for ResourceUpdatesResponse(0);
  v8 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFE0, &qword_227F31908);
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFE8, &qword_227F31910);
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = type metadata accessor for RRDResponse(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFF0, &qword_227F31918);
  v56 = *(v22 - 8);
  v57 = v22;
  v23 = *(v56 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v43 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F0FBD4();
  sub_227F2BD94();
  sub_227F0FEDC(v55, v21, type metadata accessor for RRDResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v32 = v48;
      sub_227F0FC7C(v21, v48, type metadata accessor for ResourceUpdatesResponse);
      LOBYTE(v58) = 2;
      sub_227F0FCE4();
      v33 = v49;
      v34 = v57;
      sub_227F2BB84();
      sub_227F0F9E8(&qword_27D80EFF8, type metadata accessor for ResourceUpdatesResponse);
      v35 = v51;
      sub_227F2BC14();
      (*(v50 + 8))(v33, v35);
      sub_227F1152C(v32, type metadata accessor for ResourceUpdatesResponse);
    }

    else
    {
      v40 = *v21;
      v39 = *(v21 + 1);
      LOBYTE(v58) = 3;
      sub_227F0FC28();
      v41 = v52;
      v34 = v57;
      sub_227F2BB84();
      v42 = v54;
      sub_227F2BBD4();

      (*(v53 + 8))(v41, v42);
    }

    (*(v56 + 8))(v25, v34);
  }

  else if (EnumCaseMultiPayload)
  {
    v36 = *v21;
    LOBYTE(v58) = 1;
    sub_227F0FD38();
    v37 = v57;
    sub_227F2BB84();
    v58 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EEB0, &qword_227F31850);
    sub_227F1158C(&qword_27D80F000);
    v38 = v46;
    sub_227F2BC14();
    (*(v45 + 8))(v13, v38);
    (*(v56 + 8))(v25, v37);
  }

  else
  {
    v28 = *v21;
    v29 = *(v21 + 1);
    v30 = v21[16];
    LOBYTE(v58) = 0;
    sub_227F0FD8C();
    v31 = v57;
    sub_227F2BB84();
    v58 = v28;
    v59 = v29;
    v60 = v30;
    sub_227F115DC();
    sub_227F2BC14();
    (*(v44 + 8))(v17, v14);
    (*(v56 + 8))(v25, v31);
    sub_227EC172C(v28, v29, v30);
  }
}

uint64_t sub_227F0EB4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE60, &qword_227F31820);
  v80 = *(v89 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE68, &qword_227F31828);
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v5);
  v84 = &v71 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE70, &qword_227F31830);
  v79 = *(v78 - 8);
  v8 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  v83 = &v71 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE78, &qword_227F31838);
  v77 = *(v76 - 8);
  v10 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  v86 = &v71 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE80, &unk_227F31840);
  v91 = *(v87 - 8);
  v12 = *(v91 + 64);
  MEMORY[0x28223BE20](v87);
  v14 = &v71 - v13;
  v85 = type metadata accessor for RRDResponse(0);
  v15 = *(*(v85 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v85);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v71 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v71 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v71 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v71 - v28;
  v31 = a1[3];
  v30 = a1[4];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_227F0FBD4();
  v32 = v92;
  sub_227F2BD74();
  if (!v32)
  {
    v71 = v27;
    v72 = v18;
    v73 = v24;
    v74 = v21;
    v33 = v86;
    v35 = v88;
    v34 = v89;
    v75 = v29;
    v36 = v90;
    v37 = v87;
    v92 = v14;
    v38 = sub_227F2BB74();
    v39 = (2 * *(v38 + 16)) | 1;
    v95 = v38;
    v96 = v38 + 32;
    v97 = 0;
    v98 = v39;
    v40 = sub_227EC19A8();
    v41 = v37;
    if (v40 == 4 || v97 != v98 >> 1)
    {
      v48 = sub_227F2B9E4();
      swift_allocError();
      v50 = v49;
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0) + 48);
      *v50 = v85;
      v52 = v92;
      sub_227F2BAF4();
      sub_227F2B9D4();
      (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
      swift_willThrow();
      (*(v91 + 8))(v52, v41);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v40 > 1u)
      {
        v54 = v91;
        if (v40 == 2)
        {
          LOBYTE(v93) = 2;
          sub_227F0FCE4();
          v55 = v92;
          sub_227F2BAE4();
          type metadata accessor for ResourceUpdatesResponse(0);
          sub_227F0F9E8(&qword_27D80EEA0, type metadata accessor for ResourceUpdatesResponse);
          v56 = v74;
          v57 = v82;
          v58 = v84;
          sub_227F2BB64();
          (*(v81 + 8))(v58, v57);
          (*(v54 + 8))(v55, v37);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v65 = v56;
        }

        else
        {
          LOBYTE(v93) = 3;
          sub_227F0FC28();
          sub_227F2BAE4();
          v62 = v34;
          v63 = sub_227F2BB44();
          v86 = v64;
          v68 = v63;
          (*(v80 + 8))(v35, v62);
          (*(v54 + 8))(v92, v37);
          swift_unknownObjectRelease();
          v69 = v72;
          v70 = v86;
          *v72 = v68;
          v69[1] = v70;
          swift_storeEnumTagMultiPayload();
          v65 = v69;
        }

        v67 = v75;
        sub_227F0FC7C(v65, v75, type metadata accessor for RRDResponse);
        v42 = v36;
      }

      else
      {
        v42 = v36;
        v43 = v91;
        if (v40)
        {
          LOBYTE(v93) = 1;
          sub_227F0FD38();
          v59 = v92;
          sub_227F2BAE4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EEB0, &qword_227F31850);
          sub_227F1158C(&qword_27D80EEB8);
          v60 = v78;
          v61 = v83;
          sub_227F2BB64();
          (*(v79 + 8))(v61, v60);
          (*(v43 + 8))(v59, v37);
          swift_unknownObjectRelease();
          v47 = v73;
          *v73 = v93;
        }

        else
        {
          LOBYTE(v93) = 0;
          sub_227F0FD8C();
          v44 = v92;
          sub_227F2BAE4();
          sub_227F0FDE0();
          v45 = v76;
          sub_227F2BB64();
          (*(v77 + 8))(v33, v45);
          (*(v43 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v46 = v94;
          v47 = v71;
          *v71 = v93;
          *(v47 + 16) = v46;
        }

        swift_storeEnumTagMultiPayload();
        v66 = v47;
        v67 = v75;
        sub_227F0FC7C(v66, v75, type metadata accessor for RRDResponse);
      }

      sub_227F0FC7C(v67, v42, type metadata accessor for RRDResponse);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v99);
}

unint64_t sub_227F0F5B4()
{
  v1 = 0x726F727265;
  v2 = 0x656372756F736572;
  if (*v0 != 2)
  {
    v2 = 0x657A6974696E6173;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_227F0F648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227F12884(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227F0F670(uint64_t a1)
{
  v2 = sub_227F0FBD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0F6AC(uint64_t a1)
{
  v2 = sub_227F0FBD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0F6E8(uint64_t a1)
{
  v2 = sub_227F0FD8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0F724(uint64_t a1)
{
  v2 = sub_227F0FD8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0F760(uint64_t a1)
{
  v2 = sub_227F0FCE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0F79C(uint64_t a1)
{
  v2 = sub_227F0FCE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0F7D8(uint64_t a1)
{
  v2 = sub_227F0FD38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0F814(uint64_t a1)
{
  v2 = sub_227F0FD38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0F850(uint64_t a1)
{
  v2 = sub_227F0FC28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0F88C(uint64_t a1)
{
  v2 = sub_227F0FC28();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_227F0F94C()
{
  result = qword_27D80EDF8;
  if (!qword_27D80EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EDF8);
  }

  return result;
}

uint64_t sub_227F0F9E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_227F0FA30()
{
  result = qword_27D80EE30;
  if (!qword_27D80EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE30);
  }

  return result;
}

unint64_t sub_227F0FA84()
{
  result = qword_27D80EE38;
  if (!qword_27D80EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE38);
  }

  return result;
}

unint64_t sub_227F0FAD8()
{
  result = qword_27D80EE40;
  if (!qword_27D80EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE40);
  }

  return result;
}

unint64_t sub_227F0FB2C()
{
  result = qword_27D80EE50;
  if (!qword_27D80EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE50);
  }

  return result;
}

unint64_t sub_227F0FB80()
{
  result = qword_27D80EE58;
  if (!qword_27D80EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE58);
  }

  return result;
}

unint64_t sub_227F0FBD4()
{
  result = qword_27D80EE88;
  if (!qword_27D80EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE88);
  }

  return result;
}

unint64_t sub_227F0FC28()
{
  result = qword_27D80EE90;
  if (!qword_27D80EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE90);
  }

  return result;
}

uint64_t sub_227F0FC7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_227F0FCE4()
{
  result = qword_27D80EE98;
  if (!qword_27D80EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE98);
  }

  return result;
}

unint64_t sub_227F0FD38()
{
  result = qword_27D80EEA8;
  if (!qword_27D80EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EEA8);
  }

  return result;
}

unint64_t sub_227F0FD8C()
{
  result = qword_27D80EEC0;
  if (!qword_27D80EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EEC0);
  }

  return result;
}

unint64_t sub_227F0FDE0()
{
  result = qword_27D80EEC8;
  if (!qword_27D80EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EEC8);
  }

  return result;
}

unint64_t sub_227F0FE34()
{
  result = qword_27D80EED8;
  if (!qword_27D80EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EED8);
  }

  return result;
}

unint64_t sub_227F0FE88()
{
  result = qword_27D80EEE0;
  if (!qword_27D80EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EEE0);
  }

  return result;
}

uint64_t sub_227F0FEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_227F0FF44()
{
  result = qword_27D80EEF0;
  if (!qword_27D80EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EEF0);
  }

  return result;
}

BOOL sub_227F0FF98(uint64_t a1, uint64_t a2)
{
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ResourceUpdatesRequest(0) + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v8 = *(a1 + v4 + 16);
  v7 = *(a1 + v4 + 24);
  v9 = (a2 + v4);
  v11 = *v9;
  v10 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  if (!v5)
  {
    if (!v10)
    {
      return 1;
    }

    goto LABEL_16;
  }

  if (!v10)
  {
LABEL_16:
    v19 = v9[2];
    v20 = v9[3];
    sub_227F101AC(*v9, v9[1]);
    sub_227F101AC(v6, v5);
    sub_227F101F0(v6, v5);
    v21 = v11;
    v22 = v10;
LABEL_17:
    sub_227F101F0(v21, v22);
    return 0;
  }

  if (v6 != v11 || v5 != v10)
  {
    v15 = *v9;
    v16 = v9[1];
    if ((sub_227F2BC64() & 1) == 0)
    {
      sub_227F101AC(v11, v10);
      sub_227F101AC(v6, v5);

      v21 = v6;
      v22 = v5;
      goto LABEL_17;
    }
  }

  if (v8 != v13 || v7 != v12)
  {
    v18 = sub_227F2BC64();
    sub_227F101AC(v11, v10);
    sub_227F101AC(v6, v5);

    sub_227F101F0(v6, v5);
    return (v18 & 1) != 0;
  }

  sub_227F101AC(v11, v10);
  sub_227F101AC(v6, v5);

  sub_227F101F0(v6, v5);
  return 1;
}

uint64_t sub_227F101AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_227F101F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_227F10234(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B454();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = type metadata accessor for ResourceUpdatesResponse(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF90, &qword_227F318C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v48 - v19;
  v21 = (&v48 + *(v18 + 56) - v19);
  sub_227F0FEDC(a1, &v48 - v19, type metadata accessor for ResourceUpdatesResponse);
  sub_227F0FEDC(a2, v21, type metadata accessor for ResourceUpdatesResponse);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
  v23 = *(*(v22 - 8) + 48);
  v24 = v23(v20, 2, v22);
  if (!v24)
  {
    v51 = v9;
    v52 = v11;
    v54 = v4;
    v55 = v5;
    sub_227F0FEDC(v20, v15, type metadata accessor for ResourceUpdatesResponse);
    v25 = *(v15 + 1);
    v50 = *v15;
    v53 = v25;
    v26 = *(v22 + 48);
    v27 = *(v22 + 64);
    v29 = *&v15[v27];
    v28 = *&v15[v27 + 8];
    if (v23(v21, 2, v22))
    {

      (*(v55 + 8))(&v15[v26], v54);
      goto LABEL_9;
    }

    v31 = *v21;
    v32 = v21[1];
    v48 = *(v21 + v27);
    v49 = v29;
    v33 = *(v21 + v27 + 8);
    v34 = *(v55 + 32);
    v35 = &v15[v26];
    v36 = v54;
    v34(v52, v35, v54);
    v34(v51, v21 + v26, v36);
    if (v50 == v31 && v53 == v32)
    {

      v39 = v28;
    }

    else
    {
      v38 = sub_227F2BC64();

      v39 = v28;
      if ((v38 & 1) == 0)
      {

        v40 = *(v55 + 8);
        v40(v51, v36);
        v40(v52, v36);
        goto LABEL_26;
      }
    }

    v41 = v51;
    v42 = v52;
    if (sub_227F2B424())
    {
      if (v49 == v48 && v39 == v33)
      {

        v47 = *(v55 + 8);
        v47(v41, v36);
        v47(v42, v36);
        goto LABEL_8;
      }

      v44 = sub_227F2BC64();

      v45 = *(v55 + 8);
      v45(v41, v36);
      v45(v42, v36);
      if (v44)
      {
LABEL_8:
        sub_227F1152C(v20, type metadata accessor for ResourceUpdatesResponse);
        return 1;
      }
    }

    else
    {

      v46 = *(v55 + 8);
      v46(v41, v36);
      v46(v42, v36);
    }

LABEL_26:
    sub_227F1152C(v20, type metadata accessor for ResourceUpdatesResponse);
    return 0;
  }

  if (v24 == 1)
  {
    if (v23(v21, 2, v22) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v23(v21, 2, v22) == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_227EB8430(v20, &qword_27D80EF90, &qword_227F318C0);
  return 0;
}

uint64_t sub_227F10750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResourceUpdatesRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227F2B114();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RRDRequest(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFC8, &qword_227F318F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - v21;
  v23 = *(v20 + 56);
  sub_227F0FEDC(a1, &v31 - v21, type metadata accessor for RRDRequest);
  sub_227F0FEDC(a2, &v22[v23], type metadata accessor for RRDRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_227F0FEDC(v22, v15, type metadata accessor for RRDRequest);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_227F1152C(v15, type metadata accessor for ResourceUpdatesRequest);
        goto LABEL_13;
      }

      v25 = &v22[v23];
      v26 = v31;
      sub_227F0FC7C(v25, v31, type metadata accessor for ResourceUpdatesRequest);
      v27 = sub_227F0FF98(v15, v26);
      sub_227F1152C(v26, type metadata accessor for ResourceUpdatesRequest);
      sub_227F1152C(v15, type metadata accessor for ResourceUpdatesRequest);
    }

    else
    {
      sub_227F0FEDC(v22, v17, type metadata accessor for RRDRequest);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v32 + 8))(v17, v7);
LABEL_13:
        sub_227EB8430(v22, &qword_27D80EFC8, &qword_227F318F0);
        v27 = 0;
        return v27 & 1;
      }

      v28 = v32;
      (*(v32 + 32))(v10, &v22[v23], v7);
      v27 = _s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0();
      v29 = *(v28 + 8);
      v29(v10, v7);
      v29(v17, v7);
    }

    sub_227F1152C(v22, type metadata accessor for RRDRequest);
    return v27 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_13;
  }

  sub_227F1152C(v22, type metadata accessor for RRDRequest);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_227F10B60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResourceUpdatesResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RRDResponse(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v45 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F010, &qword_227F31920);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v45 - v23;
  v25 = &v45 + *(v22 + 56) - v23;
  sub_227F0FEDC(a1, &v45 - v23, type metadata accessor for RRDResponse);
  sub_227F0FEDC(a2, v25, type metadata accessor for RRDResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_227F0FEDC(v24, v17, type metadata accessor for RRDResponse);
      v33 = *v17;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_20;
      }

      v34 = *v25;
      sub_227EB7BD0(0, &qword_27D80F018, 0x277D82BB8);
      v32 = sub_227F2B914();
    }

    else
    {
      sub_227F0FEDC(v24, v19, type metadata accessor for RRDResponse);
      v28 = *v19;
      v27 = *(v19 + 1);
      v29 = v19[16];
      if (swift_getEnumCaseMultiPayload())
      {
        sub_227EC172C(v28, v27, v29);
LABEL_20:
        sub_227EB8430(v24, &qword_27D80F010, &qword_227F31920);
        goto LABEL_21;
      }

      v40 = *v25;
      v41 = *(v25 + 1);
      v42 = v25[16];
      v49[0] = v28;
      v49[1] = v27;
      v50 = v29;
      v47[0] = v40;
      v47[1] = v41;
      v48 = v42;
      v32 = _s21RapidResourceDelivery15RRDServiceErrorO2eeoiySbAC_ACtFZ_0(v49, v47);
      sub_227EC172C(v40, v41, v42);
      sub_227EC172C(v28, v27, v29);
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_227F0FEDC(v24, v14, type metadata accessor for RRDResponse);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_227F1152C(v14, type metadata accessor for ResourceUpdatesResponse);
      goto LABEL_20;
    }

    v30 = v25;
    v31 = v46;
    sub_227F0FC7C(v30, v46, type metadata accessor for ResourceUpdatesResponse);
    v32 = sub_227F10234(v14, v31);
    sub_227F1152C(v31, type metadata accessor for ResourceUpdatesResponse);
    sub_227F1152C(v14, type metadata accessor for ResourceUpdatesResponse);
LABEL_23:
    sub_227F1152C(v24, type metadata accessor for RRDResponse);
    return v32 & 1;
  }

  sub_227F0FEDC(v24, v11, type metadata accessor for RRDResponse);
  v36 = *v11;
  v35 = v11[1];
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    goto LABEL_20;
  }

  if (v36 == *v25 && v35 == *(v25 + 1))
  {
    v43 = *(v25 + 1);

    goto LABEL_25;
  }

  v38 = *(v25 + 1);
  v39 = sub_227F2BC64();

  if (v39)
  {
LABEL_25:
    sub_227F1152C(v24, type metadata accessor for RRDResponse);
    v32 = 1;
    return v32 & 1;
  }

  sub_227F1152C(v24, type metadata accessor for RRDResponse);
LABEL_21:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_227F11020(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000227F34520 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000227F34540 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEF73657461647055 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666E6F4364616572 && a2 == 0xEA00000000006769)
  {

    return 3;
  }

  else
  {
    v5 = sub_227F2BC64();

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

uint64_t sub_227F111A4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF08, &qword_227F31870);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F11388();
  sub_227F2BD74();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_227F2BB44();
    v11 = 1;
    sub_227F2BB44();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_227F11388()
{
  result = qword_27D80EF10;
  if (!qword_27D80EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EF10);
  }

  return result;
}

unint64_t sub_227F113DC()
{
  result = qword_27D80EF40;
  if (!qword_27D80EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EF40);
  }

  return result;
}

unint64_t sub_227F11430()
{
  result = qword_27D80EF48;
  if (!qword_27D80EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EF48);
  }

  return result;
}

unint64_t sub_227F11484()
{
  result = qword_27D80EF58;
  if (!qword_27D80EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EF58);
  }

  return result;
}

unint64_t sub_227F114D8()
{
  result = qword_27D80EF60;
  if (!qword_27D80EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EF60);
  }

  return result;
}

uint64_t sub_227F1152C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227F1158C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D80EEB0, &qword_227F31850);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227F115DC()
{
  result = qword_27D80F008;
  if (!qword_27D80F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F008);
  }

  return result;
}

unint64_t sub_227F11734()
{
  result = qword_27D80F020;
  if (!qword_27D80F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F020);
  }

  return result;
}

unint64_t sub_227F1178C()
{
  result = qword_27D80F028;
  if (!qword_27D80F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F028);
  }

  return result;
}

unint64_t sub_227F117E4()
{
  result = qword_27D80F030;
  if (!qword_27D80F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F030);
  }

  return result;
}

unint64_t sub_227F1183C()
{
  result = qword_27D80F038;
  if (!qword_27D80F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F038);
  }

  return result;
}

unint64_t sub_227F11894()
{
  result = qword_27D80F040;
  if (!qword_27D80F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F040);
  }

  return result;
}

unint64_t sub_227F118EC()
{
  result = qword_27D80F048;
  if (!qword_27D80F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F048);
  }

  return result;
}

unint64_t sub_227F11944()
{
  result = qword_27D80F050;
  if (!qword_27D80F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F050);
  }

  return result;
}

unint64_t sub_227F1199C()
{
  result = qword_27D80F058;
  if (!qword_27D80F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F058);
  }

  return result;
}

unint64_t sub_227F119F4()
{
  result = qword_27D80F060;
  if (!qword_27D80F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F060);
  }

  return result;
}

unint64_t sub_227F11A4C()
{
  result = qword_27D80F068;
  if (!qword_27D80F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F068);
  }

  return result;
}

unint64_t sub_227F11AA4()
{
  result = qword_27D80F070;
  if (!qword_27D80F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F070);
  }

  return result;
}

unint64_t sub_227F11AFC()
{
  result = qword_27D80F078;
  if (!qword_27D80F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F078);
  }

  return result;
}

unint64_t sub_227F11B54()
{
  result = qword_27D80F080;
  if (!qword_27D80F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F080);
  }

  return result;
}

unint64_t sub_227F11BAC()
{
  result = qword_27D80F088;
  if (!qword_27D80F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F088);
  }

  return result;
}

unint64_t sub_227F11C04()
{
  result = qword_27D80F090;
  if (!qword_27D80F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F090);
  }

  return result;
}

unint64_t sub_227F11C5C()
{
  result = qword_27D80F098;
  if (!qword_27D80F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F098);
  }

  return result;
}

unint64_t sub_227F11CB4()
{
  result = qword_27D80F0A0;
  if (!qword_27D80F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0A0);
  }

  return result;
}

unint64_t sub_227F11D0C()
{
  result = qword_27D80F0A8;
  if (!qword_27D80F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0A8);
  }

  return result;
}

unint64_t sub_227F11D64()
{
  result = qword_27D80F0B0;
  if (!qword_27D80F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0B0);
  }

  return result;
}

unint64_t sub_227F11DBC()
{
  result = qword_27D80F0B8;
  if (!qword_27D80F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0B8);
  }

  return result;
}

unint64_t sub_227F11E14()
{
  result = qword_27D80F0C0;
  if (!qword_27D80F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0C0);
  }

  return result;
}

unint64_t sub_227F11E6C()
{
  result = qword_27D80F0C8;
  if (!qword_27D80F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0C8);
  }

  return result;
}

unint64_t sub_227F11EC4()
{
  result = qword_27D80F0D0;
  if (!qword_27D80F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0D0);
  }

  return result;
}

unint64_t sub_227F11F1C()
{
  result = qword_27D80F0D8;
  if (!qword_27D80F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0D8);
  }

  return result;
}

unint64_t sub_227F11F74()
{
  result = qword_27D80F0E0;
  if (!qword_27D80F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0E0);
  }

  return result;
}

unint64_t sub_227F11FCC()
{
  result = qword_27D80F0E8;
  if (!qword_27D80F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0E8);
  }

  return result;
}

unint64_t sub_227F12024()
{
  result = qword_27D80F0F0;
  if (!qword_27D80F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0F0);
  }

  return result;
}

unint64_t sub_227F1207C()
{
  result = qword_27D80F0F8;
  if (!qword_27D80F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0F8);
  }

  return result;
}

unint64_t sub_227F120D4()
{
  result = qword_27D80F100;
  if (!qword_27D80F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F100);
  }

  return result;
}

unint64_t sub_227F1212C()
{
  result = qword_27D80F108;
  if (!qword_27D80F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F108);
  }

  return result;
}

unint64_t sub_227F12184()
{
  result = qword_27D80F110;
  if (!qword_27D80F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F110);
  }

  return result;
}

unint64_t sub_227F121DC()
{
  result = qword_27D80F118;
  if (!qword_27D80F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F118);
  }

  return result;
}

unint64_t sub_227F12234()
{
  result = qword_27D80F120;
  if (!qword_27D80F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F120);
  }

  return result;
}

unint64_t sub_227F1228C()
{
  result = qword_27D80F128;
  if (!qword_27D80F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F128);
  }

  return result;
}

unint64_t sub_227F122E4()
{
  result = qword_27D80F130;
  if (!qword_27D80F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F130);
  }

  return result;
}

unint64_t sub_227F1233C()
{
  result = qword_27D80F138;
  if (!qword_27D80F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F138);
  }

  return result;
}

unint64_t sub_227F12394()
{
  result = qword_27D80F140;
  if (!qword_27D80F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F140);
  }

  return result;
}

unint64_t sub_227F123EC()
{
  result = qword_27D80F148;
  if (!qword_27D80F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F148);
  }

  return result;
}

unint64_t sub_227F12444()
{
  result = qword_27D80F150;
  if (!qword_27D80F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F150);
  }

  return result;
}

unint64_t sub_227F1249C()
{
  result = qword_27D80F158;
  if (!qword_27D80F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F158);
  }

  return result;
}

unint64_t sub_227F124F4()
{
  result = qword_27D80F160;
  if (!qword_27D80F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F160);
  }

  return result;
}

unint64_t sub_227F1254C()
{
  result = qword_27D80F168;
  if (!qword_27D80F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F168);
  }

  return result;
}

unint64_t sub_227F125A4()
{
  result = qword_27D80F170;
  if (!qword_27D80F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F170);
  }

  return result;
}

unint64_t sub_227F125FC()
{
  result = qword_27D80F178;
  if (!qword_27D80F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F178);
  }

  return result;
}

uint64_t sub_227F12650(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669646F4D746F6ELL && a2 == 0xEB00000000646569;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646568636163 && a2 == 0xE600000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_227F2BC64();

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

uint64_t sub_227F12768(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E6148656C6966 && a2 == 0xEA0000000000656CLL || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747365676964 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_227F2BC64();

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

uint64_t sub_227F12884(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000227F34520 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEF73657461647055 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A6974696E6173 && a2 == 0xEF6769666E6F4364)
  {

    return 3;
  }

  else
  {
    v6 = sub_227F2BC64();

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

uint64_t RRDServiceServer.deinit()
{
  RRDServiceServer.invalidate()();
  v1 = OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_logger;
  v2 = sub_227F2B334();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_227EB8430(v0 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_listener + 8, &qword_27D80F180, &unk_227F32940);
  v3 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_environment);
  v4 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_environment + 8);
  v5 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_environment + 16);

  return v0;
}

uint64_t RRDServiceServer.__deallocating_deinit()
{
  RRDServiceServer.invalidate()();
  v1 = OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_logger;
  v2 = sub_227F2B334();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_227EB8430(v0 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_listener + 8, &qword_27D80F180, &unk_227F32940);
  v3 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_environment);
  v4 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_environment + 8);
  v5 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_environment + 16);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_227F12BE8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_environment + 16);
  type metadata accessor for RRDPeerHandler();
  v4 = swift_allocObject();

  result = swift_defaultActor_initialize();
  *(v4 + 112) = v3;
  *a2 = v4;
  return result;
}

void static RRDServiceServer.start()()
{
  if (qword_2813CDA30 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2813CE0F0);
  sub_227F12CE8(&qword_2813CE0F8, &v0);
  os_unfair_lock_unlock(&dword_2813CE0F0);
}

void sub_227F12CE8(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    return;
  }

  if (qword_2813CDBA8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2813CE158);
  sub_227F25378(&qword_2813CE160, v20);
  if (v2)
  {
    os_unfair_lock_unlock(&dword_2813CE158);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(&dword_2813CE158);
  v5 = v20[0];
  if (!v20[0])
  {
    sub_227F13468();
    v19 = swift_allocError();
    swift_willThrow();
    v18 = v19;
LABEL_11:
    *a2 = v18;
    return;
  }

  v6 = v20[1];
  v7 = v20[2];
  v8 = type metadata accessor for RRDServiceServer();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_logger;
  v13 = qword_2813CD578;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_227F2B334();
  v15 = __swift_project_value_buffer(v14, qword_2813CE070);
  (*(*(v14 - 8) + 16))(v11 + v12, v15, v14);
  v16 = v11 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_listener;
  *v16 = 0;
  *(v16 + 8) = 0;
  v17 = (v11 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_environment);
  *v17 = v5;
  v17[1] = v6;
  v17[2] = v7;
  *a1 = v11;
  RRDServiceServer.start()();

  if (v18)
  {
    goto LABEL_11;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RRDServiceServer.start()()
{
  v2 = v0;
  v3 = sub_227F2B3C4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_environment + 16);
  sub_227F1654C();
  if (v1)
  {
    v6 = v1;
    v7 = sub_227F2B304();
    v8 = sub_227F2B8E4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_227EB2000, v7, v8, "Failed to start resource manager: %@", v9, 0xCu);
      sub_227EB8430(v10, &qword_27D80E4A0, &qword_227F2DE40);
      MEMORY[0x22AAAD240](v10, -1, -1);
      MEMORY[0x22AAAD240](v9, -1, -1);
    }

    else
    {
    }
  }

  v13 = v2 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_listener;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_listener));

  sub_227F2B3B4();
  v14 = sub_227F2B3F4();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_227F2B3E4();
  v18 = *(v13 + 8);

  *(v13 + 8) = v17;
  v19 = sub_227F2B304();
  v20 = sub_227F2B8D4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_227EB2000, v19, v20, "XPC service started", v21, 2u);
    MEMORY[0x22AAAD240](v21, -1, -1);
  }

  os_unfair_lock_unlock(v13);
}

uint64_t sub_227F131C8()
{
  type metadata accessor for RRDPeerHandler();
  sub_227F13410();
  return sub_227F2B3D4();
}

void sub_227F1323C(const char *a1)
{
  oslog = sub_227F2B304();
  v2 = sub_227F2B8D4();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_227EB2000, oslog, v2, a1, v3, 2u);
    MEMORY[0x22AAAD240](v3, -1, -1);
  }
}

uint64_t type metadata accessor for RRDServiceServer()
{
  result = qword_2813CDA20;
  if (!qword_2813CDA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227F1334C()
{
  result = sub_227F2B334();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_227F13410()
{
  result = qword_27D80F190;
  if (!qword_27D80F190)
  {
    type metadata accessor for RRDPeerHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F190);
  }

  return result;
}

unint64_t sub_227F13468()
{
  result = qword_27D80F198;
  if (!qword_27D80F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F198);
  }

  return result;
}

uint64_t sub_227F134EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1A0, &unk_227F329F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_227F2B2A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_227F2B284();
  v10 = sub_227F2B294();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  v11 = sub_227F2B644();
  [v9 setDateFormat_];

  sub_227F2B2B4();
  v12 = sub_227F2B2D4();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v3, 1, v12) != 1)
  {
    v14 = sub_227F2B2C4();
    (*(v13 + 8))(v3, v12);
  }

  [v9 setTimeZone_];

  v15 = sub_227F2B1B4();
  v16 = [v9 stringFromDate_];

  v17 = sub_227F2B674();
  return v17;
}

uint64_t Duration.jittered(by:)()
{
  v0 = sub_227F2BDA4();
  v2 = v1;
  v3 = sub_227F2BDA4();
  v5 = v4;
  result = sub_227F2BDA4();
  if (v3 >= result)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3;
  }

  v9 = result - v8;
  if (result >= v8)
  {
    v10 = v7;
    if (v9 == -1)
    {
      goto LABEL_12;
    }

    result = sub_227F13A80(v9 + 1);
    v11 = result + v8;
    v12 = __OFADD__(v0, result + v8);
    v0 += result + v8;
    if (v12)
    {
LABEL_14:
      __break(1u);
    }

    else
    {
      while (v11)
      {
        if (v5 >= v10)
        {
          v5 = 0;
        }

        v13 = v10 - v5;
        if (v10 >= v5)
        {
          goto LABEL_25;
        }

        __break(1u);
LABEL_12:
        v17 = 0;
        result = MEMORY[0x22AAAD250](&v17, 8);
        v11 = v17;
        v12 = __OFADD__(v0, v17);
        v0 += v17;
        if (v12)
        {
          goto LABEL_14;
        }
      }
    }

    if (v10 <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = v10;
    }

    if (v10 >= v5)
    {
      v15 = v5;
    }

    else
    {
      v15 = v10;
    }

    if (v15 >= v14)
    {
      v5 = 0;
    }

    else
    {
      v5 = v15;
    }

    v16 = v14 < v5;
    v13 = v14 - v5;
    if (v16)
    {
      goto LABEL_32;
    }

LABEL_25:
    if (v13 == -1)
    {
      v17 = 0;
      result = MEMORY[0x22AAAD250](&v17, 8);
      if (!__OFADD__(v2, v17))
      {
        return sub_227F2BDC4();
      }
    }

    else
    {
      result = sub_227F13A80(v13 + 1);
      if (!__OFADD__(v2, result + v5))
      {
        return sub_227F2BDC4();
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v0 = sub_227F2BDA4();
  v2 = v1;
  v3 = sub_227F2BDA4();
  v5 = v4;
  result = sub_227F2BDA4();
  if (v3 >= result)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3;
  }

  if (result >= v8)
  {
    v9 = v7;
    if (v8 != result)
    {
      v10 = __OFSUB__(result--, 1);
      if (v10)
      {
        goto LABEL_40;
      }
    }

    if (result - v8 == -1)
    {
      v17 = 0;
      result = MEMORY[0x22AAAD250](&v17, 8);
      v11 = v17;
      if (!__OFADD__(v0, v17))
      {
LABEL_9:
        if (v11)
        {
          if (v5 >= v9)
          {
            v5 = 0;
          }

          if (v9 < v5)
          {
            goto LABEL_39;
          }

          if (v5 != v9)
          {
            v10 = __OFSUB__(v9--, 1);
            if (v10)
            {
              goto LABEL_42;
            }
          }

          if (v9 - v5 != -1)
          {
            result = sub_227F13A80(v9 - v5 + 1);
            v12 = result + v5;
            goto LABEL_35;
          }

          goto LABEL_34;
        }

LABEL_20:
        if (v9 <= v5)
        {
          v13 = v5;
        }

        else
        {
          v13 = v9;
        }

        if (v9 >= v5)
        {
          v14 = v5;
        }

        else
        {
          v14 = v9;
        }

        if (v14 >= v13)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        if (v13 < v15)
        {
          goto LABEL_41;
        }

        if (v15 != v13)
        {
          v10 = __OFSUB__(v13--, 1);
          if (v10)
          {
            goto LABEL_43;
          }
        }

        v16 = v13 - v15;
        if (v16 != -1)
        {
          result = sub_227F13A80(v16 + 1);
          v12 = result + v15;
          goto LABEL_35;
        }

LABEL_34:
        v17 = 0;
        result = MEMORY[0x22AAAD250](&v17, 8);
        v12 = v17;
LABEL_35:
        if (!__OFADD__(v2, v12))
        {
          return sub_227F2BDC4();
        }

        goto LABEL_38;
      }
    }

    else
    {
      result = sub_227F13A80(result - v8 + 1);
      v11 = result + v8;
      if (!__OFADD__(v0, result + v8))
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_227F13A80(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AAAD250](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AAAD250](&v3, 8);
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

id sub_227F13B0C()
{
  v2 = v0;
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = sub_227F2B054();
  if (v1)
  {
  }

  else if (v3)
  {
    v4 = sub_227F2B044();
    v14[0] = 0;
    v5 = [v2 removeItemAtURL:v4 error:v14];

    v6 = v14[0];
    if (!v5)
    {
LABEL_8:
      v12 = v6;
      sub_227F2AFC4();

      result = swift_willThrow();
      goto LABEL_9;
    }

    v7 = v14[0];
  }

  v8 = sub_227F2B044();
  v9 = sub_227F2B044();
  v14[0] = 0;
  v10 = [v2 copyItemAtURL:v8 toURL:v9 error:v14];

  v6 = v14[0];
  if (!v10)
  {
    goto LABEL_8;
  }

  result = v14[0];
LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_227F13C50()
{
  v1 = v0;
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = sub_227F2B044();
  v3 = sub_227F2B044();
  v14[0] = 0;
  v4 = [v1 moveItemAtURL:v2 toURL:v3 error:v14];

  if (v4)
  {
    v5 = v14[0];
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = v14[0];
    v8 = sub_227F2AFC4();

    swift_willThrow();
    sub_227F13B0C();
    v9 = sub_227F2B044();
    v14[0] = 0;
    v10 = [v1 removeItemAtURL:v9 error:v14];

    if (v10)
    {
      v11 = v14[0];
    }

    else
    {
      v12 = v14[0];
      sub_227F2AFC4();

      swift_willThrow();
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_227F13F18(uint64_t a1, uint64_t *a2)
{
  v3 = sub_227F2B334();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_227F2B314();
}

uint64_t sub_227F13F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_227EC2180(a3, v27 - v11, &qword_27D80EB88, &qword_227F312D0);
  v13 = sub_227F2B854();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_227EB8430(v12, &qword_27D80EB88, &qword_227F312D0);
  }

  else
  {
    sub_227F2B844();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_227F2B7B4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_227F2B6E4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_227EB8430(a3, &qword_27D80EB88, &qword_227F312D0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227EB8430(a3, &qword_27D80EB88, &qword_227F312D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_227F14290(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for FileInfo(0);
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = type metadata accessor for ResourceInfo(0);
  v3[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_227F2B334();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F14450, 0, 0);
}

uint64_t sub_227F14450()
{
  if (qword_2813CDE90 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = __swift_project_value_buffer(v3, qword_2813CDE98);
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_227F14550;
  v6 = v0[3];
  v7 = v0[4];

  return sub_227F18DB0(v6);
}

uint64_t sub_227F14550(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_227F1532C;
  }

  else
  {
    *(v4 + 200) = a1 & 1;
    v7 = sub_227F1467C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_227F1467C()
{
  v46 = v0;
  if (*(v0 + 200) == 1)
  {
    v1 = *(v0 + 112);
    v2 = sub_227F2B304();
    v3 = sub_227F2B8D4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_227EB2000, v2, v3, "Fetching updates because the manifest has changed.", v4, 2u);
      MEMORY[0x22AAAD240](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v6 = sub_227F14C6C;
LABEL_15:
    v5[1] = v6;
    v29 = *(v0 + 32);
    v30 = *(v0 + 16);

    sub_227F1E770(v30);
    return;
  }

  v7 = *(v0 + 88);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = *(*(v0 + 32) + 32);
  v12 = (v11 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v11 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v13 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v14 = type metadata accessor for PersistenceState();
  sub_227F246A0(v13 + *(v14 + 24), v7, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v12);
  sub_227EC2180(v7, v10, &qword_27D80E8F0, &unk_227F2F4B0);
  if ((*(v8 + 48))(v10, 1, v9) == 1)
  {
    v15 = *(v0 + 112);
    sub_227EB8430(*(v0 + 48), &qword_27D80E8F0, &unk_227F2F4B0);
    v16 = sub_227F2B304();
    v17 = sub_227F2B8D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_227EB2000, v16, v17, "Fetching updates because we have none cached.", v18, 2u);
      MEMORY[0x22AAAD240](v18, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v6 = sub_227F15148;
    goto LABEL_15;
  }

  v20 = *(v0 + 80);
  v19 = *(v0 + 88);
  v21 = *(v0 + 40);
  sub_227F1FDAC(*(v0 + 48), *(v0 + 72), type metadata accessor for FileInfo);
  sub_227EC2180(v19 + *(v20 + 32), v21, &qword_27D80E8F8, &qword_227F2F5E0);
  v22 = type metadata accessor for ResourceInfo.DownloadState(0);
  v23 = (*(*(v22 - 8) + 48))(v21, 1, v22);
  sub_227EB8430(v21, &qword_27D80E8F8, &qword_227F2F5E0);
  if (v23 != 1)
  {
    v25 = *(v0 + 112);
    v26 = sub_227F2B304();
    v27 = sub_227F2B8D4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_227EB2000, v26, v27, "Fetching updates because new updates are downloading.", v28, 2u);
      MEMORY[0x22AAAD240](v28, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    *v5 = v0;
    v6 = sub_227F15034;
    goto LABEL_15;
  }

  v24 = *(v0 + 128);
  os_unfair_lock_lock(v12);
  sub_227EF1314(v13, v11, &v45);
  os_unfair_lock_unlock(v12);
  if (v24)
  {
    return;
  }

  v31 = *(v0 + 112);
  if (!v45)
  {
    v42 = sub_227F2B304();
    v43 = sub_227F2B8D4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_227EB2000, v42, v43, "Fetching updates because cached ones are out of date.", v44, 2u);
      MEMORY[0x22AAAD240](v44, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v6 = sub_227F14E30;
    goto LABEL_15;
  }

  v32 = *(v0 + 96);
  v33 = *(v0 + 104);
  v34 = *(v0 + 72);
  v35 = *(v0 + 16);
  sub_227F1FE14(*(v0 + 88), type metadata accessor for ResourceInfo);
  (*(v33 + 8))(v31, v32);
  sub_227F1FDAC(v34, v35, type metadata accessor for FileInfo);
  v36 = *(v0 + 112);
  v37 = *(v0 + 88);
  v38 = *(v0 + 72);
  v40 = *(v0 + 40);
  v39 = *(v0 + 48);

  v41 = *(v0 + 8);

  v41();
}

uint64_t sub_227F14C6C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_227F153E4;
  }

  else
  {
    v3 = sub_227F14D80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227F14D80()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_227F14E30()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_227F15664;
  }

  else
  {
    v3 = sub_227F14F44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227F14F44()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  sub_227F1FE14(v0[9], type metadata accessor for FileInfo);
  sub_227F1FE14(v4, type metadata accessor for ResourceInfo);
  (*(v2 + 8))(v1, v3);
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[9];
  v9 = v0[5];
  v8 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_227F15034()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_227F15570;
  }

  else
  {
    v3 = sub_227F25250;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227F15148()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_227F1549C;
  }

  else
  {
    v3 = sub_227F1525C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227F1525C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_227F1FE14(v0[11], type metadata accessor for ResourceInfo);
  (*(v2 + 8))(v1, v3);
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[9];
  v8 = v0[5];
  v7 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227F1532C()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_227F153E4()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_227F1549C()
{
  sub_227F1FE14(v0[11], type metadata accessor for ResourceInfo);
  v1 = v0[24];
  v2 = v0[11];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_227F15570()
{
  v1 = v0[11];
  sub_227F1FE14(v0[9], type metadata accessor for FileInfo);
  sub_227F1FE14(v1, type metadata accessor for ResourceInfo);
  v2 = v0[22];
  v3 = v0[11];
  v4 = v0[9];
  v6 = v0[5];
  v5 = v0[6];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_227F15664()
{
  v1 = v0[11];
  sub_227F1FE14(v0[9], type metadata accessor for FileInfo);
  sub_227F1FE14(v1, type metadata accessor for ResourceInfo);
  v2 = v0[20];
  v3 = v0[11];
  v4 = v0[9];
  v6 = v0[5];
  v5 = v0[6];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_227F15758(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for ResourceInfo(0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for FileInfo(0);
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F158C4, 0, 0);
}

uint64_t sub_227F158C4()
{
  v1 = v0[11];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_227F2B114();
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v6(v1, v3, v4);
  v7 = *(v5 + 56);
  v7(v1, 0, 1, v4);
  sub_227F19370(v1);
  sub_227EB8430(v1, &qword_27D80E310, &unk_227F2D990);
  v8 = v0[10];
  v6(v8, v0[3], v4);
  v7(v8, 0, 1, v4);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_227F15ACC;
  v10 = v0[10];
  v11 = v0[4];

  return sub_227F1B70C(v10);
}

uint64_t sub_227F15ACC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *(*v2 + 80);
  v8 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  sub_227EB8430(v5, &qword_27D80E310, &unk_227F2D990);
  if (v1)
  {
    v6 = sub_227F16368;
  }

  else
  {
    v6 = sub_227F15C10;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_227F15C10()
{
  v30 = v0;
  v1 = v0[14];
  v2 = *(v0[4] + 32);
  v3 = (v2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  sub_227EF1314(v4, v2, v29);
  os_unfair_lock_unlock(v3);
  if (v1)
  {
    return;
  }

  if ((v29[0] & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  os_unfair_lock_lock(v3);
  v9 = type metadata accessor for PersistenceState();
  sub_227F246A0(v4 + *(v9 + 24), v7, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v3);
  sub_227EC2180(v7, v8, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227F1FE14(v7, type metadata accessor for ResourceInfo);
  if ((*(v6 + 48))(v8, 1, v5) == 1)
  {
    sub_227EB8430(v0[5], &qword_27D80E8F0, &unk_227F2F4B0);
LABEL_5:
    if (sub_227EF1234())
    {
      v10 = swift_task_alloc();
      v0[17] = v10;
      *v10 = v0;
      v10[1] = sub_227F161B8;
      v11 = v0[4];
      v12 = v0[2];

      sub_227F1E770(v12);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[15] = v13;
      *v13 = v0;
      v13[1] = sub_227F16044;
      v14 = v0[13];
      v15 = v0[4];

      sub_227F1CA98();
    }

    return;
  }

  sub_227F1FDAC(v0[5], v0[9], type metadata accessor for FileInfo);
  if (qword_2813CDE90 != -1)
  {
    swift_once();
  }

  v16 = sub_227F2B334();
  __swift_project_value_buffer(v16, qword_2813CDE98);
  v17 = sub_227F2B304();
  v18 = sub_227F2B8D4();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[13];
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_227ECAC40(0xD000000000000020, 0x8000000227F34640, v29);
    _os_log_impl(&dword_227EB2000, v17, v18, "%s: Using cached updates.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AAAD240](v22, -1, -1);
    MEMORY[0x22AAAD240](v21, -1, -1);
  }

  sub_227F1FDAC(v0[9], v0[2], type metadata accessor for FileInfo);
  v24 = v0[10];
  v23 = v0[11];
  v25 = v0[9];
  v27 = v0[5];
  v26 = v0[6];

  v28 = v0[1];

  v28();
}

uint64_t sub_227F16044()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227F16404, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[17] = v4;
    *v4 = v3;
    v4[1] = sub_227F161B8;
    v5 = v3[4];
    v6 = v3[2];

    return sub_227F1E770(v6);
  }
}

uint64_t sub_227F161B8()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_227F164A8;
  }

  else
  {
    v3 = sub_227F162CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227F162CC()
{
  v1 = v0[13];

  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_227F16368()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_227F16404()
{
  v1 = v0[13];

  v2 = v0[16];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v7 = v0[5];
  v6 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_227F164A8()
{
  v1 = v0[13];

  v2 = v0[18];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v7 = v0[5];
  v6 = v0[6];

  v8 = v0[1];

  return v8();
}

void sub_227F1654C()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15[-1] - v5;
  if (qword_2813CDE90 != -1)
  {
    swift_once();
  }

  v7 = sub_227F2B334();
  __swift_project_value_buffer(v7, qword_2813CDE98);
  v8 = sub_227F2B304();
  v9 = sub_227F2B8D4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_227EB2000, v8, v9, "ResourceManager started", v10, 2u);
    MEMORY[0x22AAAD240](v10, -1, -1);
  }

  v11 = sub_227F2B114();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_227F19370(v6);
  sub_227EB8430(v6, &qword_27D80E310, &unk_227F2D990);
  if (!v1)
  {
    v12 = *(v2 + 24);
    v13 = (v12 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession);
    os_unfair_lock_lock((v12 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession));
    sub_227EC3D44(&v13[2], v12, v15);
    __swift_destroy_boxed_opaque_existential_0(v15);
    os_unfair_lock_unlock(v13);
  }
}

uint64_t sub_227F16750(void *a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v50 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1A8, &qword_227F32C10);
  v49 = *(v51 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1B0, &qword_227F32C18);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1B8, &qword_227F32C20);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v42 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1C0, &qword_227F32C28);
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v39 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1C8, &qword_227F32C30);
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1D0, &qword_227F32C38);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1D8, &qword_227F32C40);
  v53 = *(v24 - 8);
  v54 = v24;
  v25 = *(v53 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v39 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F24A08();
  v29 = v55;
  sub_227F2BD94();
  if (v29 > 1)
  {
    switch(v29)
    {
      case 2:
        v58 = 2;
        sub_227F24B58();
        v30 = v39;
        v31 = v54;
        sub_227F2BB84();
        v33 = v40;
        v32 = v41;
        goto LABEL_11;
      case 3:
        v59 = 3;
        sub_227F24B04();
        v30 = v42;
        v31 = v54;
        sub_227F2BB84();
        v33 = v43;
        v32 = v44;
        goto LABEL_11;
      case 4:
        v60 = 4;
        sub_227F24AB0();
        v30 = v45;
        v31 = v54;
        sub_227F2BB84();
        v33 = v46;
        v32 = v47;
LABEL_11:
        (*(v33 + 8))(v30, v32);
        return (*(v53 + 8))(v27, v31);
    }

LABEL_15:
    v61 = 5;
    sub_227F24A5C();
    v36 = v48;
    v37 = v54;
    sub_227F2BB84();
    v38 = v51;
    sub_227F2BBD4();
    (*(v49 + 8))(v36, v38);
    return (*(v53 + 8))(v27, v37);
  }

  v34 = v52;
  if (!v29)
  {
    v56 = 0;
    sub_227F24C00();
    v31 = v54;
    sub_227F2BB84();
    (*(v20 + 8))(v23, v19);
    return (*(v53 + 8))(v27, v31);
  }

  if (v29 != 1)
  {
    goto LABEL_15;
  }

  v57 = 1;
  sub_227F24BAC();
  v31 = v54;
  sub_227F2BB84();
  (*(v34 + 8))(v18, v15);
  return (*(v53 + 8))(v27, v31);
}

unint64_t sub_227F16DAC()
{
  v1 = *v0;
  v2 = 0x6566696E614D6F6ELL;
  v3 = 0x6574616470556F6ELL;
  v4 = 0xD000000000000020;
  if (v1 != 4)
  {
    v4 = 0x7272456369676F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_227F16E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227F205A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227F16EB8(uint64_t a1)
{
  v2 = sub_227F24A08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F16EF4(uint64_t a1)
{
  v2 = sub_227F24A08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F16F30(uint64_t a1)
{
  v2 = sub_227F24AB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F16F6C(uint64_t a1)
{
  v2 = sub_227F24AB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F16FA8(uint64_t a1)
{
  v2 = sub_227F24A5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F16FE4(uint64_t a1)
{
  v2 = sub_227F24A5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F17020(uint64_t a1)
{
  v2 = sub_227F24BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F1705C(uint64_t a1)
{
  v2 = sub_227F24BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F17098(uint64_t a1)
{
  v2 = sub_227F24C00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F170D4(uint64_t a1)
{
  v2 = sub_227F24C00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F17110(uint64_t a1)
{
  v2 = sub_227F24B04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F1714C(uint64_t a1)
{
  v2 = sub_227F24B04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F17188(uint64_t a1)
{
  v2 = sub_227F24B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F171C4(uint64_t a1)
{
  v2 = sub_227F24B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F17200(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 <= 1)
  {
    if (!v5)
    {
      return !v6;
    }

    if (v5 == 1)
    {
      return v6 == 1;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        return v6 == 2;
      case 3:
        return v6 == 3;
      case 4:
        return v6 == 4;
    }
  }

  if (v6 < 5)
  {
    return 0;
  }

  if (v4 == *a2 && v5 == v6)
  {
    return 1;
  }

  return sub_227F2BC64();
}

char *sub_227F172A8@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_227F207C4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_227F172F0()
{
  v0 = sub_227F2B334();
  __swift_allocate_value_buffer(v0, qword_2813CDE98);
  v1 = __swift_project_value_buffer(v0, qword_2813CDE98);
  if (qword_2813CD570 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2813CE058);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_227F173B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Schedule();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E360, &unk_227F32A90) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v12 = sub_227F2B114();
  v7[11] = v12;
  v13 = *(v12 - 8);
  v7[12] = v13;
  v14 = *(v13 + 64) + 15;
  v7[13] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  v7[14] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990) - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00) - 8) + 64) + 15;
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v20 = type metadata accessor for ResourceInfo(0);
  v7[25] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v22 = type metadata accessor for DownloadConfiguration();
  v7[27] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F176B4, 0, 0);
}