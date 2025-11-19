uint64_t sub_25F4897F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F489868(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_25F489980(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25F489B44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0x1F80 | (*(a1 + 48) >> 1) | (*(a1 + 48) >> 4) & 0xFFFFE000;
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

double sub_25F489BA8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 48) = (8 * -a2) & 0xFC00 | (2 * (-a2 & 0x7FLL)) & 0xFFFFFFF00001FFFFLL | ((-a2 >> 13) << 17);
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F489C58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F489CA0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_25F489D10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_25F489D60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS29PreviewOverridesConfigurationVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_25F489E08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F489E50(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_25F489F60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_25F48A0B0()
{
  result = qword_27FD6FB68;
  if (!qword_27FD6FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB68);
  }

  return result;
}

unint64_t sub_25F48A108()
{
  result = qword_27FD6FB70;
  if (!qword_27FD6FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB70);
  }

  return result;
}

unint64_t sub_25F48A160()
{
  result = qword_27FD6FB78;
  if (!qword_27FD6FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB78);
  }

  return result;
}

unint64_t sub_25F48A1B8()
{
  result = qword_27FD6FB80;
  if (!qword_27FD6FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB80);
  }

  return result;
}

unint64_t sub_25F48A210()
{
  result = qword_27FD6FB88;
  if (!qword_27FD6FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB88);
  }

  return result;
}

unint64_t sub_25F48A268()
{
  result = qword_27FD6FB90;
  if (!qword_27FD6FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB90);
  }

  return result;
}

unint64_t sub_25F48A2C0()
{
  result = qword_27FD6FB98;
  if (!qword_27FD6FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FB98);
  }

  return result;
}

unint64_t sub_25F48A318()
{
  result = qword_27FD6FBA0;
  if (!qword_27FD6FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBA0);
  }

  return result;
}

unint64_t sub_25F48A370()
{
  result = qword_27FD6FBA8;
  if (!qword_27FD6FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBA8);
  }

  return result;
}

unint64_t sub_25F48A3C8()
{
  result = qword_27FD6FBB0;
  if (!qword_27FD6FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBB0);
  }

  return result;
}

unint64_t sub_25F48A420()
{
  result = qword_27FD6FBB8;
  if (!qword_27FD6FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBB8);
  }

  return result;
}

unint64_t sub_25F48A478()
{
  result = qword_27FD6FBC0;
  if (!qword_27FD6FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBC0);
  }

  return result;
}

unint64_t sub_25F48A4D0()
{
  result = qword_27FD6FBC8;
  if (!qword_27FD6FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBC8);
  }

  return result;
}

unint64_t sub_25F48A528()
{
  result = qword_27FD6FBD0;
  if (!qword_27FD6FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBD0);
  }

  return result;
}

unint64_t sub_25F48A580()
{
  result = qword_27FD6FBD8;
  if (!qword_27FD6FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBD8);
  }

  return result;
}

unint64_t sub_25F48A5D8()
{
  result = qword_27FD6FBE0;
  if (!qword_27FD6FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBE0);
  }

  return result;
}

unint64_t sub_25F48A630()
{
  result = qword_27FD6FBE8;
  if (!qword_27FD6FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBE8);
  }

  return result;
}

unint64_t sub_25F48A6DC()
{
  result = qword_27FD6FBF0;
  if (!qword_27FD6FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBF0);
  }

  return result;
}

unint64_t sub_25F48A734()
{
  result = qword_27FD6FBF8;
  if (!qword_27FD6FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FBF8);
  }

  return result;
}

unint64_t sub_25F48A78C()
{
  result = qword_27FD6FC00;
  if (!qword_27FD6FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC00);
  }

  return result;
}

unint64_t sub_25F48A7E4()
{
  result = qword_27FD6FC08;
  if (!qword_27FD6FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC08);
  }

  return result;
}

unint64_t sub_25F48A83C()
{
  result = qword_27FD6FC10;
  if (!qword_27FD6FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC10);
  }

  return result;
}

unint64_t sub_25F48A894()
{
  result = qword_27FD6FC18;
  if (!qword_27FD6FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC18);
  }

  return result;
}

unint64_t sub_25F48A8EC()
{
  result = qword_27FD6FC20;
  if (!qword_27FD6FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC20);
  }

  return result;
}

unint64_t sub_25F48A944()
{
  result = qword_27FD6FC28;
  if (!qword_27FD6FC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6FC30, qword_25F4B2248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC28);
  }

  return result;
}

unint64_t sub_25F48A9AC()
{
  result = qword_27FD6FC38;
  if (!qword_27FD6FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC38);
  }

  return result;
}

unint64_t sub_25F48AA04()
{
  result = qword_27FD6FC40;
  if (!qword_27FD6FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC40);
  }

  return result;
}

unint64_t sub_25F48AA5C()
{
  result = qword_27FD6FC48;
  if (!qword_27FD6FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC48);
  }

  return result;
}

unint64_t sub_25F48AAB4()
{
  result = qword_27FD6FC50;
  if (!qword_27FD6FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC50);
  }

  return result;
}

unint64_t sub_25F48AB0C()
{
  result = qword_27FD6FC58;
  if (!qword_27FD6FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC58);
  }

  return result;
}

unint64_t sub_25F48AB64()
{
  result = qword_27FD6FC60;
  if (!qword_27FD6FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC60);
  }

  return result;
}

unint64_t sub_25F48ABBC()
{
  result = qword_27FD6FC68;
  if (!qword_27FD6FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC68);
  }

  return result;
}

unint64_t sub_25F48AC14()
{
  result = qword_27FD6FC70;
  if (!qword_27FD6FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC70);
  }

  return result;
}

unint64_t sub_25F48AC6C()
{
  result = qword_27FD6FC78;
  if (!qword_27FD6FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC78);
  }

  return result;
}

unint64_t sub_25F48ACF8()
{
  result = qword_27FD6FC80;
  if (!qword_27FD6FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC80);
  }

  return result;
}

unint64_t sub_25F48AD4C()
{
  result = qword_27FD6FC88;
  if (!qword_27FD6FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC88);
  }

  return result;
}

unint64_t sub_25F48ADA0()
{
  result = qword_27FD6FC90;
  if (!qword_27FD6FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC90);
  }

  return result;
}

uint64_t sub_25F48ADF4()
{
  v0 = sub_25F4A3170();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F48AE40()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F48AE8C()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F48AED8()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F48AF24()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F48AF70()
{
  v0 = sub_25F4A3170();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F48AFBC()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F48B008()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F48B054()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F48B0A0()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F48B0EC()
{
  result = qword_27FD6FC98;
  if (!qword_27FD6FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FC98);
  }

  return result;
}

uint64_t sub_25F48B140()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F48B18C()
{
  v0 = sub_25F4A3170();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F48B1D8()
{
  v0 = sub_25F4A3170();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F48B224()
{
  v0 = sub_25F4A3170();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F48B270()
{
  result = qword_27FD6FCA0;
  if (!qword_27FD6FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FCA0);
  }

  return result;
}

unint64_t sub_25F48B2C4()
{
  result = qword_27FD6FCA8;
  if (!qword_27FD6FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FCA8);
  }

  return result;
}

unint64_t sub_25F48B318()
{
  result = qword_27FD6FCB0;
  if (!qword_27FD6FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FCB0);
  }

  return result;
}

uint64_t sub_25F48B36C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  return sub_25F47B224();
}

unint64_t sub_25F48B388()
{
  result = qword_27FD6FCB8;
  if (!qword_27FD6FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FCB8);
  }

  return result;
}

unint64_t sub_25F48B3DC()
{
  result = qword_27FD6FCC0;
  if (!qword_27FD6FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FCC0);
  }

  return result;
}

uint64_t sub_25F48B4F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25F47CBA4(a1, a2, a3);
  }

  return a1;
}

uint64_t PreviewVariantGroup.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PreviewVariantGroup.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t PreviewVariantGroup.associatedGroupIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t PreviewVariantGroup.overridesConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v7[0] = *(v1 + 24);
  v7[1] = v2;
  v4 = *(v1 + 72);
  v8 = *(v1 + 56);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_25F404B8C(v7, &v6, &qword_27FD6FD00, &qword_25F4B2A10);
}

__n128 PreviewVariantGroup.overridesConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 40);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  v4 = *(v1 + 72);
  v8[2] = *(v1 + 56);
  v8[3] = v4;
  sub_25F3F21F4(v8, &qword_27FD6FD00, &qword_25F4B2A10);
  v5 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 56) = result;
  *(v1 + 72) = v7;
  return result;
}

uint64_t PreviewVariantGroup.variantsConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_25F48B720(v2, v3);
}

uint64_t sub_25F48B720(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 PreviewVariantGroup.variantsConfiguration.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = v1[13];
  sub_25F48B7AC(v1[11], v1[12]);
  result = v5;
  *(v1 + 11) = v5;
  v1[13] = v2;
  return result;
}

uint64_t sub_25F48B7AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 PreviewVariantGroup.init(id:associatedGroupIDs:overridesConfiguration:variantsConfiguration:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[1];
  v8 = *a4;
  v9 = a4[1].n128_i64[0];
  *a5 = *a1;
  *(a5 + 8) = v7;
  *(a5 + 16) = a2;
  v13 = v8;
  memset(v14, 0, sizeof(v14));
  sub_25F3F21F4(v14, &qword_27FD6FD00, &qword_25F4B2A10);
  v10 = a3[1];
  *(a5 + 24) = *a3;
  *(a5 + 40) = v10;
  v11 = a3[3];
  *(a5 + 56) = a3[2];
  *(a5 + 72) = v11;
  sub_25F48B7AC(0, 0);
  result = v13;
  *(a5 + 88) = v13;
  *(a5 + 104) = v9;
  return result;
}

uint64_t sub_25F48B8C0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48B978()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F48BA1C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48BAD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F492CC0();
  *a2 = result;
  return result;
}

void sub_25F48BB00(unint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x800000025F4B6C90;
  v5 = 0xD000000000000017;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x800000025F4B6CB0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x800000025F4B6C70;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_25F48BB74()
{
  v1 = 25705;
  v2 = 0xD000000000000017;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t PreviewVariantGroup.propertyListValue.getter()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_25F4A25A0();
}

uint64_t sub_25F48BC44(uint64_t a1)
{
  v19[0] = *a1;
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    sub_25F494344(v19, v18);
LABEL_5:
    v7 = *(a1 + 40);
    v18[0] = *(a1 + 24);
    v18[1] = v7;
    v8 = *(a1 + 72);
    v18[2] = *(a1 + 56);
    v18[3] = v8;
    v16 = *(a1 + 88);
    v17 = *(a1 + 104);
    v11 = *(a1 + 24);
    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    v14 = *(a1 + 72);
    v10 = v16;
    sub_25F404B8C(v18, v15, &qword_27FD6FD00, &qword_25F4B2A10);
    sub_25F404B8C(&v16, v15, &qword_27FD6FF00, &qword_25F4B3E38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD18, &qword_25F4B2A18);
    sub_25F48C2D8();
    sub_25F48C32C();
    sub_25F493134(&qword_27FD6FD20, &qword_27FD6FD18, &qword_25F4B2A18, sub_25F48C32C);
    sub_25F492DD0();
    sub_25F492E24();
    v9 = sub_25F4A28B0();
    sub_25F48B7AC(v10, *(&v10 + 1));
    v15[0] = v11;
    v15[1] = v12;
    v15[2] = v13;
    v15[3] = v14;
    sub_25F3F21F4(v15, &qword_27FD6FD00, &qword_25F4B2A10);

    return v9;
  }

  v4 = sub_25F3EEB0C(v3, 0);
  v5 = sub_25F3F1124(v18, v4 + 4, v3, v2);
  sub_25F494344(v19, v15);

  result = sub_25F3F0D04();
  if (v5 == v3)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t PreviewVariantGroup.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(&v30 + 1) = &type metadata for PreviewVariantGroup.Key;
  v5 = sub_25F48C2D8();
  *&v31 = v5;
  LOBYTE(v29) = 0;
  sub_25F48C32C();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(&v29);
  }

  else
  {
    v35 = a2;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v7 = v33;
    v8 = v34;
    *(&v30 + 1) = &type metadata for PreviewVariantGroup.Key;
    *&v31 = v5;
    LOBYTE(v29) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD18, &qword_25F4B2A18);
    sub_25F493134(&qword_27FD6FD20, &qword_27FD6FD18, &qword_25F4B2A18, sub_25F48C32C);
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(&v29);
    if (v24)
    {
      v10 = v24;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v11 = sub_25F492D0C(v10);

    v28[3] = &type metadata for PreviewVariantGroup.Key;
    v28[4] = v5;
    LOBYTE(v28[0]) = 1;
    sub_25F492DD0();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v28);
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v27 = v32;
    v21[3] = &type metadata for PreviewVariantGroup.Key;
    v21[4] = v5;
    LOBYTE(v21[0]) = 2;
    sub_25F492E24();
    sub_25F4A2580();
    v12 = sub_25F4A25E0();
    (*(*(v12 - 8) + 8))(a1, v12);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v13 = v23;
    v19 = v22;
    memset(v20, 0, sizeof(v20));
    sub_25F3F21F4(v20, &qword_27FD6FD00, &qword_25F4B2A10);
    v17 = v26;
    v18 = v24;
    v15 = v27;
    v16 = v25;
    result = sub_25F48B7AC(0, 0);
    v14 = v35;
    *v35 = v7;
    v14[1] = v8;
    v14[2] = v11;
    *(v14 + 5) = v16;
    *(v14 + 3) = v18;
    *(v14 + 9) = v15;
    *(v14 + 7) = v17;
    *(v14 + 11) = v19;
    v14[13] = v13;
  }

  return result;
}

unint64_t sub_25F48C2D8()
{
  result = qword_27FD6FD08;
  if (!qword_27FD6FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FD08);
  }

  return result;
}

unint64_t sub_25F48C32C()
{
  result = qword_27FD6FD10;
  if (!qword_27FD6FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FD10);
  }

  return result;
}

uint64_t sub_25F48C384()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_25F4A25A0();
}

uint64_t PreviewVariantGroup.overridesVariants.getter()
{
  if (!*(v0 + 32))
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(v0 + 72);
}

char *PreviewVariantGroup.gridVariants.getter()
{
  if (!*(v0 + 96))
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(v0 + 104);
  v2 = *(v1 + 16);

  if (!v2)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_22:

    return v6;
  }

  v4 = 0;
  v5 = (v1 + 48);
  v6 = MEMORY[0x277D84F90];
  while (v4 < *(v1 + 16))
  {
    v7 = *v5;
    v8 = *(*v5 + 16);
    v9 = *(v6 + 2);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_25;
    }

    v11 = *v5;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= *(v6 + 3) >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      result = sub_25F3EE960(result, v12, 1, v6);
      v6 = result;
      if (*(v7 + 16))
      {
LABEL_16:
        if ((*(v6 + 3) >> 1) - *(v6 + 2) < v8)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v13 = *(v6 + 2);
          v14 = __OFADD__(v13, v8);
          v15 = v13 + v8;
          if (v14)
          {
            goto LABEL_28;
          }

          *(v6 + 2) = v15;
        }

        goto LABEL_5;
      }
    }

    if (v8)
    {
      goto LABEL_26;
    }

LABEL_5:
    ++v4;
    v5 += 3;
    if (v2 == v4)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t PreviewVariantGroup.allVariants.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD38, &qword_25F4B2A20);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = *(v0 + 3);
  v4 = *(v0 + 9);
  v5 = *(v0 + 10);
  if (*(v0 + 4))
  {
  }

  v8 = *v0;
  v9 = *(v0 + 2);
  v10 = *(v0 + 40);
  v11 = *(v0 + 56);
  v12 = *(v0 + 88);
  v13 = *(v0 + 13);
  v6 = PreviewVariantGroup.gridVariants.getter();
  sub_25F3E8A50(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD40, &qword_25F4B2A28);
  sub_25F492E78();
  sub_25F3F2708(&qword_27FD6FD50, &qword_27FD6FD40, &qword_25F4B2A28);
  sub_25F4A2130();
  sub_25F3F2708(&qword_27FD6FD58, &qword_27FD6FD38, &qword_25F4B2A20);
  return sub_25F4A2CD0();
}

uint64_t PreviewOverridesConfiguration.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PreviewOverridesConfiguration.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PreviewOverridesConfiguration.selectionBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return sub_25F492ECC();
}

__n128 PreviewOverridesConfiguration.selectionBehavior.setter(__n128 *a1)
{
  v9 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  sub_25F492ED8();
  result = v9;
  *(v1 + 16) = v9;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t PreviewOverridesConfiguration.variants.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t PreviewOverridesConfiguration.childVariantConfigurations.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

__n128 PreviewOverridesConfiguration.init(title:selectionBehavior:variants:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v13 = *a3;
  v9 = a3[1].n128_u64[0];
  v10 = a3[1].n128_u8[8];
  v11 = sub_25F492B24(MEMORY[0x277D84F90]);
  a5->n128_u64[0] = a1;
  a5->n128_u64[1] = a2;
  result = v13;
  a5[1] = v13;
  a5[2].n128_u64[0] = v9;
  a5[2].n128_u8[8] = v10;
  a5[3].n128_u64[0] = a4;
  a5[3].n128_u64[1] = v11;
  return result;
}

__n128 PreviewOverridesConfiguration.init(title:selectionBehavior:variants:childVariantConfigurations:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a3[1].n128_u64[0];
  v7 = a3[1].n128_u8[8];
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  result = *a3;
  a6[1] = *a3;
  a6[2].n128_u64[0] = v6;
  a6[2].n128_u8[8] = v7;
  a6[3].n128_u64[0] = a4;
  a6[3].n128_u64[1] = a5;
  return result;
}

uint64_t sub_25F48C9DC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48CAA8()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F48CB60()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48CC28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F494020();
  *a2 = result;
  return result;
}

void sub_25F48CC58(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xE800000000000000;
  v5 = 0x73746E6169726176;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001ALL;
    v4 = 0x800000025F4B6CF0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000025F4B6CD0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_25F48CCE0()
{
  v1 = 0x656C746974;
  v2 = 0x73746E6169726176;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t PreviewOverridesConfiguration.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_25F4A25A0();
}

uint64_t sub_25F48CDB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  *(v19 + 9) = *(a1 + 25);
  v19[0] = *(a1 + 1);
  v3 = a1[6];
  v4 = a1[7];
  v18 = 0;
  v16 = v1;
  v17 = v2;
  v15 = 1;
  v12 = v19[0];
  v13 = *&v19[1];
  v14 = BYTE8(v19[1]) & 1;
  v11 = 2;
  v10 = v3;
  v9 = 3;
  v8 = v4;

  sub_25F4942F4(v19, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD40, &qword_25F4B2A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD80, &qword_25F4B2A30);
  sub_25F492EEC();
  sub_25F492F40();
  sub_25F493134(&qword_27FD6FD70, &qword_27FD6FD40, &qword_25F4B2A28, sub_25F492F94);
  sub_25F492FE8();
  v5 = sub_25F4A28B0();
  sub_25F49432C(v12, *(&v12 + 1), v13, v14);

  return v5;
}

uint64_t PreviewOverridesConfiguration.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = &type metadata for PreviewOverridesConfiguration.Key;
  v5 = sub_25F492EEC();
  v21 = v5;
  LOBYTE(v19[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    v8 = v22;
    v7 = v23;
    v20 = &type metadata for PreviewOverridesConfiguration.Key;
    v21 = v5;
    LOBYTE(v19[0]) = 1;
    sub_25F492F40();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v19);
    v24 = v18;
    v20 = &type metadata for PreviewOverridesConfiguration.Key;
    v21 = v5;
    LOBYTE(v19[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD40, &qword_25F4B2A28);
    sub_25F493134(&qword_27FD6FD70, &qword_27FD6FD40, &qword_25F4B2A28, sub_25F492F94);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = &type metadata for PreviewOverridesConfiguration.Key;
    v21 = v5;
    LOBYTE(v19[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD80, &qword_25F4B2A30);
    sub_25F492FE8();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v19);
    v10 = v13;
    v11 = v24;
    if (!v13)
    {
      v10 = sub_25F492B24(MEMORY[0x277D84F90]);
    }

    v12 = sub_25F4A25E0();
    result = (*(*(v12 - 8) + 8))(a1, v12);
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    *(a2 + 40) = v11;
    *(a2 + 48) = v14;
    *(a2 + 56) = v10;
  }

  return result;
}

uint64_t PreviewOverridesConfiguration.defaultSelection.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v28 = MEMORY[0x277D84FA0];
  if (v4)
  {

    sub_25F48D48C(v6);
  }

  else
  {

    sub_25F491618(v27, v2, v3, &qword_27FD6FED8, &qword_25F4B3E10);
  }

  v7 = v28;
  v8 = v28 + 56;
  v9 = 1 << *(v28 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v28 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
    v15 = v11;
LABEL_13:
    v11 = (v15 - 1) & v15;
    if (*(v5 + 16))
    {
      v17 = (*(v7 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v15)))));
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_25F3EEC04(v18, v19);
      v22 = v21;

      if (v22)
      {
        v23 = (*(v5 + 56) + (v20 << 6));
        v24 = v23[1];
        v27[0] = *v23;
        v27[1] = v24;
        v25 = v23[3];
        v27[2] = v23[2];
        v27[3] = v25;
        v26 = PreviewOverridesConfiguration.defaultSelection.getter(result);
        result = sub_25F48D48C(v26);
      }
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return v28;
    }

    v15 = *(v8 + 8 * v16);
    ++v14;
    if (v15)
    {
      v14 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F48D48C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_25F491618(&v13, v11, v12, &qword_27FD6FED8, &qword_25F4B3E10);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_25F48D5C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v39 = result;
  if (v7)
  {
    do
    {
      v9 = __clz(__rbit64(v7));
      v10 = (v7 - 1) & v7;
LABEL_12:
      v13 = v9 | (v3 << 6);
      v14 = (*(result + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = (*(result + 56) + (v13 << 6));
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[1];
      v52 = *v17;
      v53 = v20;
      v54 = v18;
      v55 = v19;
      v44 = v19;
      v46 = v20;
      v42 = v18;
      v43 = v52;

      sub_25F49428C(&v52, &v48);
      if (!v15)
      {
        return 1;
      }

      v52 = v43;
      v53 = v46;
      v54 = v42;
      v55 = v44;
      v21 = sub_25F3EEC04(v16, v15);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_49;
      }

      v24 = (*(v2 + 56) + (v21 << 6));
      v25 = v24[3];
      v27 = *v24;
      v26 = v24[1];
      v50 = v24[2];
      v51 = v25;
      v48 = v27;
      v49 = v26;
      if (v27 != v52 && (sub_25F4A3270() & 1) == 0)
      {
        goto LABEL_49;
      }

      v28 = v49;
      v29 = v50;
      v30 = v53;
      v31 = v54;
      v41 = v10;
      if (BYTE8(v50))
      {
        if ((BYTE8(v54) & 1) == 0)
        {
          goto LABEL_46;
        }

        sub_25F492ECC();
        sub_25F492ECC();
        sub_25F492ECC();
        sub_25F492ECC();
        sub_25F49428C(&v48, v47);
        v32 = sub_25F3F2F20(v28, v30);
        sub_25F492ED8();
        sub_25F492ED8();
        sub_25F492ED8();
        sub_25F492ED8();
        if ((v32 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (BYTE8(v54))
        {
LABEL_46:
          sub_25F492ECC();
          sub_25F492ECC();
          sub_25F492ED8();
          sub_25F492ED8();
          goto LABEL_49;
        }

        if (v49)
        {
          v33 = 0x65676E6172;
        }

        else
        {
          v33 = 1953720684;
        }

        if (v49)
        {
          v34 = 0xE500000000000000;
        }

        else
        {
          v34 = 0xE400000000000000;
        }

        if (v53)
        {
          v35 = 0x65676E6172;
        }

        else
        {
          v35 = 1953720684;
        }

        if (v53)
        {
          v36 = 0xE500000000000000;
        }

        else
        {
          v36 = 0xE400000000000000;
        }

        if (v33 == v35 && v34 == v36)
        {
          sub_25F492ECC();
          sub_25F492ECC();
          sub_25F492ECC();
          sub_25F492ECC();
          sub_25F49428C(&v48, v47);
        }

        else
        {
          v45 = sub_25F4A3270();
          sub_25F492ECC();
          sub_25F492ECC();
          sub_25F492ECC();
          sub_25F492ECC();
          sub_25F49428C(&v48, v47);

          if ((v45 & 1) == 0)
          {
            sub_25F492ED8();
            sub_25F492ED8();
            sub_25F492ED8();
            sub_25F492ED8();
LABEL_48:
            sub_25F4942C4(&v48);
LABEL_49:
            sub_25F4942C4(&v52);
            return 0;
          }
        }

        if (*(&v28 + 1) == *(&v30 + 1) && v29 == v31)
        {
          sub_25F492ED8();
          sub_25F492ED8();
          sub_25F492ED8();
          sub_25F492ED8();
        }

        else
        {
          v37 = sub_25F4A3270();
          sub_25F492ED8();
          sub_25F492ED8();
          sub_25F492ED8();
          sub_25F492ED8();
          if ((v37 & 1) == 0)
          {
            goto LABEL_48;
          }
        }
      }

      if ((sub_25F3FAD5C(v51, v55) & 1) == 0)
      {
        goto LABEL_48;
      }

      v38 = sub_25F48D5C0(*(&v51 + 1), *(&v55 + 1));
      sub_25F4942C4(&v48);
      sub_25F4942C4(&v52);
      if ((v38 & 1) == 0)
      {
        return 0;
      }

      result = v39;
      v2 = a2;
      v7 = v41;
    }

    while (v41);
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F48DBB8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_25F4A25A0();
}

uint64_t PreviewVariantsConfiguration.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

PreviewsMessagingOS::PreviewVariantsConfiguration __swiftcall PreviewVariantsConfiguration.init(title:variants:)(Swift::String title, Swift::OpaquePointer variants)
{
  object = title._object;
  countAndFlagsBits = title._countAndFlagsBits;
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD98, &qword_25F4B2A38);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25F4A43D0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = variants;
  *v6 = countAndFlagsBits;
  v6[1] = object;
  v6[2] = v7;
  result.sections._rawValue = v9;
  result.title._object = v8;
  result.title._countAndFlagsBits = v7;
  return result;
}

PreviewsMessagingOS::PreviewVariantsConfiguration __swiftcall PreviewVariantsConfiguration.init(title:sections:)(Swift::String title, Swift::OpaquePointer sections)
{
  *v2 = title;
  *(v2 + 16) = sections;
  result.title = title;
  result.sections = sections;
  return result;
}

uint64_t sub_25F48DCD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736E6F6974636573;
  }

  else
  {
    v4 = 0x656C746974;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x736E6F6974636573;
  }

  else
  {
    v6 = 0x656C746974;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F48DD74()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48DDF4()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F48DE60()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F48DEE8(uint64_t *a1@<X8>)
{
  v2 = 0x656C746974;
  if (*v1)
  {
    v2 = 0x736E6F6974636573;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F48DF24()
{
  if (*v0)
  {
    result = 0x736E6F6974636573;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t PreviewVariantsConfiguration.propertyListValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  return sub_25F4A25A0();
}

uint64_t sub_25F48DFA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FDA8, &qword_25F4B2A40);
  sub_25F4930E0();
  sub_25F493134(&qword_27FD6FDB0, &qword_27FD6FDA8, &qword_25F4B2A40, sub_25F4931B0);
  return sub_25F4A28D0();
}

uint64_t PreviewVariantsConfiguration.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = &type metadata for PreviewVariantsConfiguration.Key;
  v5 = sub_25F4930E0();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v15;
    v7 = v16;
    v13 = &type metadata for PreviewVariantsConfiguration.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FDA8, &qword_25F4B2A40);
    sub_25F493134(&qword_27FD6FDB0, &qword_27FD6FDA8, &qword_25F4B2A40, sub_25F4931B0);
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v11;
  }

  return result;
}

uint64_t static PreviewVariantsConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  return sub_25F3FB298(v2, v3);
}

uint64_t sub_25F48E2C4()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  return sub_25F4A25A0();
}

uint64_t sub_25F48E324(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  return sub_25F3FB298(v2, v3);
}

uint64_t PreviewVariantsConfiguration.Section.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

PreviewsMessagingOS::PreviewVariantsConfiguration::Section __swiftcall PreviewVariantsConfiguration.Section.init(title:variants:)(Swift::String title, Swift::OpaquePointer variants)
{
  *v2 = title;
  *(v2 + 16) = variants;
  result.title.value = title;
  result.variants = variants;
  return result;
}

uint64_t sub_25F48E3DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x73746E6169726176;
  }

  else
  {
    v4 = 0x656C746974;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x73746E6169726176;
  }

  else
  {
    v6 = 0x656C746974;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F48E480()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48E500()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F48E56C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F48E5F4(uint64_t *a1@<X8>)
{
  v2 = 0x656C746974;
  if (*v1)
  {
    v2 = 0x73746E6169726176;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F48E630()
{
  if (*v0)
  {
    result = 0x73746E6169726176;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t PreviewVariantsConfiguration.Section.propertyListValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  return sub_25F4A25A0();
}

uint64_t sub_25F48E6B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD40, &qword_25F4B2A28);
  sub_25F493210();
  sub_25F493134(&qword_27FD6FD70, &qword_27FD6FD40, &qword_25F4B2A28, sub_25F492F94);
  return sub_25F4A28D0();
}

uint64_t PreviewVariantsConfiguration.Section.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = &type metadata for PreviewVariantsConfiguration.Section.Key;
  v5 = sub_25F493210();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v15;
    v7 = v16;
    v13 = &type metadata for PreviewVariantsConfiguration.Section.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FD40, &qword_25F4B2A28);
    sub_25F493134(&qword_27FD6FD70, &qword_27FD6FD40, &qword_25F4B2A28, sub_25F492F94);
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v11;
  }

  return result;
}

uint64_t sub_25F48E960()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  return sub_25F4A25A0();
}

uint64_t PreviewOverridesConfiguration.SelectionBehavior.Discriminant.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6C655369746C756DLL;
  }

  else
  {
    result = 0x6553656C676E6973;
  }

  *v0;
  return result;
}

uint64_t sub_25F48EA1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C655369746C756DLL;
  }

  else
  {
    v4 = 0x6553656C676E6973;
  }

  if (v3)
  {
    v5 = 0xEC0000007463656CLL;
  }

  else
  {
    v5 = 0xEB00000000746365;
  }

  if (*a2)
  {
    v6 = 0x6C655369746C756DLL;
  }

  else
  {
    v6 = 0x6553656C676E6973;
  }

  if (*a2)
  {
    v7 = 0xEB00000000746365;
  }

  else
  {
    v7 = 0xEC0000007463656CLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F48EAD4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48EB68()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F48EBE8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F48EC84(uint64_t *a1@<X8>)
{
  v2 = 0x6553656C676E6973;
  if (*v1)
  {
    v2 = 0x6C655369746C756DLL;
  }

  v3 = 0xEC0000007463656CLL;
  if (*v1)
  {
    v3 = 0xEB00000000746365;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F48ECD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F494200();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F48ED98(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000018;
  v3 = *a1;
  v4 = 0x800000025F4B6D30;
  if (v3 == 1)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (v3 == 1)
  {
    v6 = 0x800000025F4B6D30;
  }

  else
  {
    v6 = 0x800000025F4B6D50;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEC000000746E616ELL;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v4 = 0x800000025F4B6D50;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F48EE78()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48EF30()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F48EFD4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48F088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F49406C();
  *a2 = result;
  return result;
}

void sub_25F48F0B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0x800000025F4B6D30;
  v5 = 0xD000000000000019;
  if (v2 != 1)
  {
    v5 = 0xD000000000000018;
    v4 = 0x800000025F4B6D50;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F48F12C()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t PreviewOverridesConfiguration.SelectionBehavior.propertyListValue.getter(uint64_t a1)
{
  v2 = *v1;
  if ((v1[3] & 1) == 0)
  {
    v4 = v1[1];
    v3 = v1[2];
  }

  MEMORY[0x28223BE20](a1);
  return sub_25F4A25A0();
}

uint64_t sub_25F48F240()
{
  sub_25F493278();
  sub_25F4932CC();
  sub_25F493374();

  v0 = sub_25F4A28D0();

  return v0;
}

uint64_t sub_25F48F2F0()
{
  sub_25F493278();
  sub_25F4932CC();
  sub_25F493320();

  v0 = sub_25F4A28D0();

  return v0;
}

uint64_t PreviewOverridesConfiguration.SelectionBehavior.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = &type metadata for PreviewOverridesConfiguration.SelectionBehavior.Key;
  v5 = sub_25F493278();
  v18 = v5;
  LOBYTE(v16[0]) = 0;
  sub_25F4932CC();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = &type metadata for PreviewOverridesConfiguration.SelectionBehavior.Key;
    v18 = v5;
    if (v13)
    {
      LOBYTE(v16[0]) = 2;
      sub_25F493320();
      sub_25F4A2530();
      v8 = sub_25F4A25E0();
      (*(*(v8 - 8) + 8))(a1, v8);
      result = __swift_destroy_boxed_opaque_existential_1(v16);
      v9 = 0;
      v10 = 0;
      v11 = v13;
    }

    else
    {
      LOBYTE(v16[0]) = 1;
      sub_25F493374();
      sub_25F4A2530();
      v12 = sub_25F4A25E0();
      (*(*(v12 - 8) + 8))(a1, v12);
      result = __swift_destroy_boxed_opaque_existential_1(v16);
      v11 = v13;
      v9 = v14;
      v10 = v15;
    }

    *a2 = v11;
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v13;
  }

  return result;
}

uint64_t sub_25F48F598(uint64_t a1)
{
  v2 = *v1;
  if ((v1[3] & 1) == 0)
  {
    v4 = v1[1];
    v3 = v1[2];
  }

  MEMORY[0x28223BE20](a1);
  return sub_25F4A25A0();
}

uint64_t PreviewOverridesConfiguration.SingleSelectConfiguration.defaultVariant.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t PreviewOverridesConfiguration.SingleSelectConfiguration.defaultVariant.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_25F48F704(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x56746C7561666564;
  }

  else
  {
    v4 = 0x656C797473;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEE00746E61697261;
  }

  if (*a2)
  {
    v6 = 0x56746C7561666564;
  }

  else
  {
    v6 = 0x656C797473;
  }

  if (*a2)
  {
    v7 = 0xEE00746E61697261;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F48F7B4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48F840()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F48F8B8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F48F94C(uint64_t *a1@<X8>)
{
  v2 = 0x656C797473;
  if (*v1)
  {
    v2 = 0x56746C7561666564;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEE00746E61697261;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F48F994()
{
  if (*v0)
  {
    result = 0x56746C7561666564;
  }

  else
  {
    result = 0x656C797473;
  }

  *v0;
  return result;
}

uint64_t PreviewOverridesConfiguration.SingleSelectConfiguration.propertyListValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  return sub_25F4A25A0();
}

uint64_t sub_25F48FA20()
{
  sub_25F4933D4();
  sub_25F493428();
  sub_25F493080();

  v0 = sub_25F4A28D0();

  return v0;
}

uint64_t PreviewOverridesConfiguration.SingleSelectConfiguration.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = &type metadata for PreviewOverridesConfiguration.SingleSelectConfiguration.Key;
  v5 = sub_25F4933D4();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F493428();
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v6 = v15;
    v13 = &type metadata for PreviewOverridesConfiguration.SingleSelectConfiguration.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    sub_25F493080();
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v6;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
  }

  return result;
}

uint64_t PreviewOverridesConfiguration.SingleSelectConfiguration.Style.rawValue.getter()
{
  if (*v0)
  {
    result = 0x65676E6172;
  }

  else
  {
    result = 1953720684;
  }

  *v0;
  return result;
}

uint64_t sub_25F48FC64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65676E6172;
  }

  else
  {
    v4 = 1953720684;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x65676E6172;
  }

  else
  {
    v6 = 1953720684;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F48FD00()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48FD78()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F48FDDC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F48FE5C(uint64_t *a1@<X8>)
{
  v2 = 1953720684;
  if (*v1)
  {
    v2 = 0x65676E6172;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F48FE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4941AC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F48FF58()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  return sub_25F4A25A0();
}

uint64_t PreviewOverridesConfiguration.MultiSelectConfiguration.defaultVariants.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_25F490014()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F490098()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4900F4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F4A3170();

  *a2 = v5 != 0;
  return result;
}

uint64_t PreviewOverridesConfiguration.MultiSelectConfiguration.propertyListValue.getter()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FDF8, &qword_25F4B2A48);
  sub_25F49347C();
  sub_25F4934D0();
  return sub_25F4A25C0();
}

uint64_t PreviewOverridesConfiguration.MultiSelectConfiguration.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for PreviewOverridesConfiguration.MultiSelectConfiguration.Key;
  v7[4] = sub_25F49347C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FDF8, &qword_25F4B2A48);
  sub_25F4934D0();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t sub_25F490338()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FDF8, &qword_25F4B2A48);
  sub_25F49347C();
  sub_25F4934D0();
  return sub_25F4A25C0();
}

uint64_t sub_25F4903C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for PreviewOverridesConfiguration.MultiSelectConfiguration.Key;
  v7[4] = sub_25F49347C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FDF8, &qword_25F4B2A48);
  sub_25F4934D0();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t sub_25F490508(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F494158();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t PreviewVariant.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PreviewVariant.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t PreviewVariant.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PreviewVariant.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PreviewVariant.renderEffects.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

double PreviewVariant.init(id:displayName:renderEffect:interfaceOrientationOverride:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1[1];
  v8 = *a4;
  v9 = a4[1];
  v10 = *a5;
  *a6 = *a1;
  *(a6 + 8) = v7;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FE10, &unk_25F4B2A50);
  v11 = swift_allocObject();
  *&result = 1;
  *(v11 + 16) = xmmword_25F4A43D0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(a6 + 32) = v11;
  *(a6 + 40) = v10;
  return result;
}

void *PreviewVariant.init(id:displayName:renderEffects:interfaceOrientationOverride:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = result[1];
  v7 = *a5;
  *a6 = *result;
  *(a6 + 8) = v6;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = v7;
  return result;
}

uint64_t sub_25F4907DC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4908D4()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4909B8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F490AAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F4940B8();
  *a2 = result;
  return result;
}

void sub_25F490ADC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xED00007374636566;
  v6 = 0x66457265646E6572;
  v7 = 0x800000025F4B6DA0;
  v8 = 0xD00000000000001CLL;
  if (v2 != 3)
  {
    v8 = 0x66457265646E6572;
    v7 = 0xEC00000074636566;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4E79616C70736964;
    v3 = 0xEB00000000656D61;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_25F490B90()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x66457265646E6572;
  v4 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v4 = 0x66457265646E6572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
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

uint64_t PreviewVariant.propertyListValue.getter()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return sub_25F4A25A0();
}

uint64_t sub_25F490C90(__int128 *a1)
{
  v23 = *a1;
  v2 = *(a1 + 2);
  v1 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  if (v3[2])
  {
    v6 = v3[4];
    v5 = v3[5];
  }

  else
  {
    v7 = 0xE700000000000000;
    v6 = 0x676E697373694DLL;
  }

  v22 = 0;
  v21 = v23;
  v20 = 1;
  v18 = v2;
  v19 = v1;
  v17 = 2;
  v16 = v3;
  v15 = 3;
  v14 = v4;
  v13 = 4;
  v11 = v6;
  v12 = v7;
  sub_25F494254(&v23, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  sub_25F49355C();
  sub_25F493080();
  sub_25F4386A8();
  sub_25F43AA08();
  sub_25F43872C();
  v8 = sub_25F4A28A0();

  return v8;
}

uint64_t PreviewVariant.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = &type metadata for PreviewVariant.Key;
  v5 = sub_25F49355C();
  v17 = v5;
  LOBYTE(v15[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  sub_25F4386A8();
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    v7 = v13;
    if (!v13)
    {
      v16 = &type metadata for PreviewVariant.Key;
      v17 = v5;
      LOBYTE(v15[0]) = 4;
      sub_25F43872C();
      sub_25F4A2530();
      __swift_destroy_boxed_opaque_existential_1(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FE10, &unk_25F4B2A50);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_25F4A43D0;
      *(v7 + 32) = 0;
      *(v7 + 40) = v14;
    }

    v16 = &type metadata for PreviewVariant.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 0;
    sub_25F493080();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewVariant.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewVariant.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 3;
    sub_25F43AA08();
    sub_25F4A2580();
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    v10 = v18;
    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v7;
    *(a2 + 40) = v10;
  }

  return result;
}

uint64_t PreviewVariant.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_25F4A2C60();
  sub_25F4A2C60();
  MEMORY[0x25F8DDB20](*(v5 + 16));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      sub_25F4A2C60();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  if (v6 == 4)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();
  sub_25F4A2C60();
}

uint64_t PreviewVariant.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  sub_25F4A3300();
  PreviewVariant.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F491390()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return sub_25F4A25A0();
}

uint64_t sub_25F4913F8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  sub_25F4A3300();
  PreviewVariant.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F491460()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  sub_25F4A3300();
  PreviewVariant.hash(into:)();
  return sub_25F4A3350();
}

uint64_t PreviewVariant.ID.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PreviewVariant.ID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25F491554(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F494104();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F491618(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_25F4A3300();
  sub_25F4A2C60();
  v13 = sub_25F4A3350();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = (*(v11 + 48) + 16 * v15);
      v18 = *v17 == a2 && v17[1] == a3;
      if (v18 || (sub_25F4A3270() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v22 = (*(v11 + 48) + 16 * v15);
    v23 = v22[1];
    *a1 = *v22;
    a1[1] = v23;

    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;

    sub_25F4919E0(a2, a3, v15, isUniquelyReferenced_nonNull_native, a4, a5);
    *v5 = v24;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25F491788(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_25F4A30D0();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = (*(v5 + 48) + 16 * (v18 | (v9 << 6)));
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v8 + 40);
      sub_25F4A3300();
      sub_25F4A2C60();
      result = sub_25F4A3350();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v22;
      v17[1] = v23;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v5 + 32);
    if (v32 >= 64)
    {
      bzero((v5 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    v4 = v33;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_25F4919E0(uint64_t result, uint64_t a2, unint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25F491788(v10 + 1, a5, a6);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_25F491B7C(a5, a6);
      goto LABEL_16;
    }

    sub_25F491CC8(v10 + 1, a5, a6);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  sub_25F4A3300();
  sub_25F4A2C60();
  result = sub_25F4A3350();
  v14 = -1 << *(v12 + 32);
  a3 = result & ~v14;
  if ((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    do
    {
      v16 = (*(v12 + 48) + 16 * a3);
      if (*v16 == v9 && v16[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25F4A3270();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v18 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v9;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25F4A32A0();
  __break(1u);
  return result;
}

void *sub_25F491B7C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25F4A30C0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v21 = v20[1];
        v22 = (*(v6 + 48) + v19);
        *v22 = *v20;
        v22[1] = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_25F491CC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_25F4A30D0();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v4;
    v9 = 0;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v20 = (*(v5 + 48) + 16 * (v17 | (v9 << 6)));
      v21 = *v20;
      v22 = v20[1];
      v23 = *(v8 + 40);
      sub_25F4A3300();

      sub_25F4A2C60();
      result = sub_25F4A3350();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v8 + 48) + 16 * v15);
      *v16 = v21;
      v16[1] = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v31;
        goto LABEL_28;
      }

      v19 = *(v5 + 56 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

BOOL _s19PreviewsMessagingOS14PreviewVariantV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_25F4A3270() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_25F4A3270() & 1) == 0 || (sub_25F3FB734(v3, v8) & 1) == 0)
  {
    return 0;
  }

  if (v5 != 4)
  {
    return v9 != 4 && (sub_25F46F8DC(v5, v9) & 1) != 0;
  }

  return v9 == 4;
}

uint64_t _s19PreviewsMessagingOS29PreviewOverridesConfigurationV012SingleSelectF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a1 == 0;
  if (*a1)
  {
    v8 = 0x65676E6172;
  }

  else
  {
    v8 = 1953720684;
  }

  if (v7)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (*a2)
  {
    v10 = 0x65676E6172;
  }

  else
  {
    v10 = 1953720684;
  }

  if (*a2)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {

    if (v2 != v5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v13 = sub_25F4A3270();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

    if (v2 != v5)
    {
      goto LABEL_24;
    }
  }

  if (v3 == v6)
  {
    return 1;
  }

LABEL_24:

  return sub_25F4A3270();
}

uint64_t _s19PreviewsMessagingOS29PreviewOverridesConfigurationV17SelectionBehaviorO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  if (a1[3])
  {
    if (a2[3])
    {
      v9 = *a2;
      v10 = a2[1];
      sub_25F492ECC();
      sub_25F492ECC();
      sub_25F492ECC();
      sub_25F492ECC();
      v11 = sub_25F3F2F20(v3, v6);
      sub_25F492ED8();
      sub_25F492ED8();
      sub_25F492ED8();
LABEL_7:
      sub_25F492ED8();
      return v11 & 1;
    }
  }

  else if ((a2[3] & 1) == 0)
  {
    v17[0] = v3 & 1;
    v18 = v2;
    v19 = v4;
    v14[0] = v6 & 1;
    v15 = v5;
    v16 = v7;
    sub_25F492ECC();
    sub_25F492ECC();
    sub_25F492ECC();
    sub_25F492ECC();
    v11 = _s19PreviewsMessagingOS29PreviewOverridesConfigurationV012SingleSelectF0V2eeoiySbAE_AEtFZ_0(v17, v14);
    sub_25F492ED8();
    sub_25F492ED8();
    sub_25F492ED8();
    goto LABEL_7;
  }

  v12 = *a1;
  sub_25F492ECC();
  sub_25F492ECC();
  sub_25F492ED8();
  sub_25F492ED8();
  v11 = 0;
  return v11 & 1;
}

uint64_t _s19PreviewsMessagingOS29PreviewOverridesConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a1 + 56);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  v18[0] = v2;
  v18[1] = v3;
  v18[2] = v4;
  v19 = v5;
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v17 = v10;
  sub_25F492ECC();
  sub_25F492ECC();
  v12 = _s19PreviewsMessagingOS29PreviewOverridesConfigurationV17SelectionBehaviorO2eeoiySbAE_AEtFZ_0(v18, v16);
  sub_25F492ED8();
  sub_25F492ED8();
  if ((v12 & 1) == 0 || (sub_25F3FAD5C(v6, v11) & 1) == 0)
  {
    return 0;
  }

  return sub_25F48D5C0(v15, v14);
}

BOOL _s19PreviewsMessagingOS19PreviewVariantGroupV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 5);
  v52[0] = *(a1 + 3);
  v52[1] = v7;
  v8 = *(a1 + 9);
  v52[2] = *(a1 + 7);
  v52[3] = v8;
  v9 = a1[11];
  v10 = a1[12];
  v11 = a1[13];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = *(a2 + 3);
  v16 = *(a2 + 5);
  v17 = *(a2 + 9);
  v53[2] = *(a2 + 7);
  v53[3] = v17;
  v53[0] = v15;
  v53[1] = v16;
  v18 = a2[11];
  v19 = a2[12];
  v20 = a2[13];
  if ((v4 != v12 || v5 != v13) && (sub_25F4A3270() & 1) == 0 || (sub_25F3F2F20(v6, v14) & 1) == 0)
  {
    return 0;
  }

  v21 = v52[0];
  v22 = v53[0];
  if (!*(&v52[0] + 1))
  {
    if (!*(&v53[0] + 1))
    {
      v44 = *&v52[0];
      v31 = *(a1 + 7);
      v45 = *(a1 + 5);
      v46 = v31;
      v47 = *(a1 + 9);
      sub_25F404B8C(v52, &v40, &qword_27FD6FD00, &qword_25F4B2A10);
      sub_25F404B8C(v53, &v40, &qword_27FD6FD00, &qword_25F4B2A10);
      sub_25F3F21F4(&v44, &qword_27FD6FD00, &qword_25F4B2A10);
      if (v10)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

    sub_25F404B8C(v52, &v44, &qword_27FD6FD00, &qword_25F4B2A10);
    sub_25F404B8C(v53, &v44, &qword_27FD6FD00, &qword_25F4B2A10);
    goto LABEL_18;
  }

  v44 = v52[0];
  v23 = *(a1 + 7);
  v45 = *(a1 + 5);
  v46 = v23;
  v47 = *(a1 + 9);
  v40 = v52[0];
  v41 = v45;
  v42 = v23;
  v43 = v47;
  if (!*(&v53[0] + 1))
  {
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v39 = v47;
    sub_25F404B8C(v52, v35, &qword_27FD6FD00, &qword_25F4B2A10);
    sub_25F404B8C(v53, v35, &qword_27FD6FD00, &qword_25F4B2A10);
    sub_25F404B8C(&v44, v35, &qword_27FD6FD00, &qword_25F4B2A10);
    sub_25F4942C4(&v36);
LABEL_18:
    v44 = v21;
    v29 = *(a1 + 7);
    v45 = *(a1 + 5);
    v46 = v29;
    v47 = *(a1 + 9);
    v48 = v22;
    v30 = *(a2 + 7);
    v49 = *(a2 + 5);
    v50 = v30;
    v51 = *(a2 + 9);
    sub_25F3F21F4(&v44, &qword_27FD6FEF0, &qword_25F4B3E28);
    return 0;
  }

  v24 = *(a2 + 7);
  v37 = *(a2 + 5);
  v38 = v24;
  v39 = *(a2 + 9);
  v36 = v53[0];
  sub_25F404B8C(v52, v35, &qword_27FD6FD00, &qword_25F4B2A10);
  sub_25F404B8C(v53, v35, &qword_27FD6FD00, &qword_25F4B2A10);
  sub_25F404B8C(&v44, v35, &qword_27FD6FD00, &qword_25F4B2A10);
  v25 = _s19PreviewsMessagingOS29PreviewOverridesConfigurationV2eeoiySbAC_ACtFZ_0(&v40, &v36);
  v34[0] = v36;
  v34[1] = v37;
  v34[2] = v38;
  v34[3] = v39;
  sub_25F4942C4(v34);
  v35[0] = v40;
  v35[1] = v41;
  v35[2] = v42;
  v35[3] = v43;
  sub_25F4942C4(v35);
  v36 = v21;
  v26 = *(a1 + 7);
  v37 = *(a1 + 5);
  v38 = v26;
  v39 = *(a1 + 9);
  sub_25F3F21F4(&v36, &qword_27FD6FD00, &qword_25F4B2A10);
  if (v25)
  {
    if (v10)
    {
LABEL_9:
      if (v19)
      {
        if (v9 == v18 && v10 == v19 || (sub_25F4A3270() & 1) != 0)
        {
          sub_25F48B720(v9, v10);
          sub_25F48B720(v18, v19);
          sub_25F48B720(v9, v10);
          v27 = sub_25F3FB298(v11, v20);
          sub_25F48B7AC(v18, v19);

          sub_25F48B7AC(v9, v10);
          return (v27 & 1) != 0;
        }

        sub_25F48B720(v9, v10);
        sub_25F48B720(v18, v19);
        sub_25F48B720(v9, v10);
        sub_25F48B7AC(v18, v19);

        v32 = v9;
        v33 = v10;
        goto LABEL_24;
      }

      sub_25F48B720(v9, v10);
      sub_25F48B720(v18, 0);
      sub_25F48B720(v9, v10);

LABEL_23:
      sub_25F48B7AC(v9, v10);
      v32 = v18;
      v33 = v19;
LABEL_24:
      sub_25F48B7AC(v32, v33);
      return 0;
    }

LABEL_20:
    sub_25F48B720(v9, 0);
    if (!v19)
    {
      sub_25F48B720(v18, 0);
      sub_25F48B7AC(v9, 0);
      return 1;
    }

    sub_25F48B720(v18, v19);
    goto LABEL_23;
  }

  return 0;
}

uint64_t _s19PreviewsMessagingOS28PreviewVariantsConfigurationV7SectionV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_25F4A3270() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_25F3FAD5C(v4, v6);
}

unint64_t sub_25F4929F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FF08, &unk_25F4B3E40);
    v3 = sub_25F4A3150();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F404B8C(v4, &v13, &qword_27FD6EEB0, &qword_25F4AE220);
      v5 = v13;
      v6 = v14;
      result = sub_25F3EEC04(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25F4031EC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_25F492B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FEE0, &qword_25F4B3E18);
  v3 = sub_25F4A3150();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_25F404B8C(&v24, v23, &qword_27FD6FEE8, &qword_25F4B3E20);
  result = sub_25F3EEC04(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_25F404B8C(&v24, v23, &qword_27FD6FEE8, &qword_25F4B3E20);
    result = sub_25F3EEC04(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F492CC0()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F492D0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25F4935B4();
  result = MEMORY[0x25F8DD7D0](v2, &type metadata for PreviewVariantGroup.ID, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_25F491618(&v8, v7, v6, &qword_27FD6FEF8, &qword_25F4B3E30);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_25F492DD0()
{
  result = qword_27FD6FD28;
  if (!qword_27FD6FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FD28);
  }

  return result;
}

unint64_t sub_25F492E24()
{
  result = qword_27FD6FD30;
  if (!qword_27FD6FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FD30);
  }

  return result;
}

unint64_t sub_25F492E78()
{
  result = qword_27FD6FD48;
  if (!qword_27FD6FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FD48);
  }

  return result;
}

unint64_t sub_25F492EEC()
{
  result = qword_27FD6FD60;
  if (!qword_27FD6FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FD60);
  }

  return result;
}

unint64_t sub_25F492F40()
{
  result = qword_27FD6FD68;
  if (!qword_27FD6FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FD68);
  }

  return result;
}

unint64_t sub_25F492F94()
{
  result = qword_27FD6FD78;
  if (!qword_27FD6FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FD78);
  }

  return result;
}

unint64_t sub_25F492FE8()
{
  result = qword_27FD6FD88;
  if (!qword_27FD6FD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6FD80, &qword_25F4B2A30);
    sub_25F493080();
    sub_25F492DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FD88);
  }

  return result;
}

unint64_t sub_25F493080()
{
  result = qword_27FD6FD90;
  if (!qword_27FD6FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FD90);
  }

  return result;
}

uint64_t sub_25F4930D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_25F48DFA4();
}

unint64_t sub_25F4930E0()
{
  result = qword_27FD6FDA0;
  if (!qword_27FD6FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FDA0);
  }

  return result;
}

uint64_t sub_25F493134(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25F4931B0()
{
  result = qword_27FD6FDB8;
  if (!qword_27FD6FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FDB8);
  }

  return result;
}

uint64_t sub_25F493204()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_25F48E6B0();
}

unint64_t sub_25F493210()
{
  result = qword_27FD6FDC0;
  if (!qword_27FD6FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FDC0);
  }

  return result;
}

uint64_t sub_25F49326C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_25F48F240();
}

unint64_t sub_25F493278()
{
  result = qword_27FD6FDC8;
  if (!qword_27FD6FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FDC8);
  }

  return result;
}

unint64_t sub_25F4932CC()
{
  result = qword_27FD6FDD0;
  if (!qword_27FD6FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FDD0);
  }

  return result;
}

unint64_t sub_25F493320()
{
  result = qword_27FD6FDD8;
  if (!qword_27FD6FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FDD8);
  }

  return result;
}

unint64_t sub_25F493374()
{
  result = qword_27FD6FDE0;
  if (!qword_27FD6FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FDE0);
  }

  return result;
}

uint64_t sub_25F4933C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_25F48FA20();
}

unint64_t sub_25F4933D4()
{
  result = qword_27FD6FDE8;
  if (!qword_27FD6FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FDE8);
  }

  return result;
}

unint64_t sub_25F493428()
{
  result = qword_27FD6FDF0;
  if (!qword_27FD6FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FDF0);
  }

  return result;
}

unint64_t sub_25F49347C()
{
  result = qword_27FD6FE00;
  if (!qword_27FD6FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE00);
  }

  return result;
}

unint64_t sub_25F4934D0()
{
  result = qword_27FD6FE08;
  if (!qword_27FD6FE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6FDF8, &qword_25F4B2A48);
    sub_25F493080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE08);
  }

  return result;
}

unint64_t sub_25F49355C()
{
  result = qword_27FD6FE18;
  if (!qword_27FD6FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE18);
  }

  return result;
}

unint64_t sub_25F4935B4()
{
  result = qword_27FD6FE20;
  if (!qword_27FD6FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE20);
  }

  return result;
}

unint64_t sub_25F49360C()
{
  result = qword_27FD6FE28;
  if (!qword_27FD6FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE28);
  }

  return result;
}

unint64_t sub_25F493664()
{
  result = qword_27FD6FE30;
  if (!qword_27FD6FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE30);
  }

  return result;
}

unint64_t sub_25F4936BC()
{
  result = qword_27FD6FE38;
  if (!qword_27FD6FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE38);
  }

  return result;
}

unint64_t sub_25F493714()
{
  result = qword_27FD6FE40;
  if (!qword_27FD6FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE40);
  }

  return result;
}

unint64_t sub_25F49376C()
{
  result = qword_27FD6FE48;
  if (!qword_27FD6FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE48);
  }

  return result;
}

unint64_t sub_25F4937C4()
{
  result = qword_27FD6FE50;
  if (!qword_27FD6FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE50);
  }

  return result;
}

unint64_t sub_25F49381C()
{
  result = qword_27FD6FE58;
  if (!qword_27FD6FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE58);
  }

  return result;
}

unint64_t sub_25F493874()
{
  result = qword_27FD6FE60;
  if (!qword_27FD6FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE60);
  }

  return result;
}

unint64_t sub_25F4938CC()
{
  result = qword_27FD6FE68;
  if (!qword_27FD6FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE68);
  }

  return result;
}

unint64_t sub_25F493924()
{
  result = qword_27FD6FE70;
  if (!qword_27FD6FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE70);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_25F4939A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_25F4939F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25F493AA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_25F493AF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F493B64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F493BAC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_25F493C2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_25F493C74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F493D64()
{
  result = qword_27FD6FE78;
  if (!qword_27FD6FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE78);
  }

  return result;
}

unint64_t sub_25F493DBC()
{
  result = qword_27FD6FE80;
  if (!qword_27FD6FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE80);
  }

  return result;
}

unint64_t sub_25F493E14()
{
  result = qword_27FD6FE88;
  if (!qword_27FD6FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE88);
  }

  return result;
}

unint64_t sub_25F493E6C()
{
  result = qword_27FD6FE90;
  if (!qword_27FD6FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE90);
  }

  return result;
}

unint64_t sub_25F493EC4()
{
  result = qword_27FD6FE98;
  if (!qword_27FD6FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FE98);
  }

  return result;
}

unint64_t sub_25F493F1C()
{
  result = qword_27FD6FEA0;
  if (!qword_27FD6FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FEA0);
  }

  return result;
}

unint64_t sub_25F493F74()
{
  result = qword_27FD6FEA8;
  if (!qword_27FD6FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FEA8);
  }

  return result;
}

unint64_t sub_25F493FCC()
{
  result = qword_27FD6FEB0;
  if (!qword_27FD6FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FEB0);
  }

  return result;
}

uint64_t sub_25F494020()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F49406C()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F4940B8()
{
  v0 = sub_25F4A3170();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F494104()
{
  result = qword_27FD6FEB8;
  if (!qword_27FD6FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FEB8);
  }

  return result;
}

unint64_t sub_25F494158()
{
  result = qword_27FD6FEC0;
  if (!qword_27FD6FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FEC0);
  }

  return result;
}

unint64_t sub_25F4941AC()
{
  result = qword_27FD6FEC8;
  if (!qword_27FD6FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FEC8);
  }

  return result;
}

unint64_t sub_25F494200()
{
  result = qword_27FD6FED0;
  if (!qword_27FD6FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FED0);
  }

  return result;
}

uint64_t sub_25F49432C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_25F492ED8();
  }

  return result;
}

uint64_t RenderEffect.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t RenderEffect.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

PreviewsMessagingOS::RenderEffect __swiftcall RenderEffect.init(id:)(PreviewsMessagingOS::RenderEffect id)
{
  v2 = *(id.id.rawValue._countAndFlagsBits + 8);
  *v1 = *id.id.rawValue._countAndFlagsBits;
  v1[1] = v2;
  return id;
}

uint64_t sub_25F49444C()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4944A0()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4944E4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F4A3170();

  *a2 = v5 != 0;
  return result;
}

uint64_t RenderEffect.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_25F4945C8();
  sub_25F49461C();
  return sub_25F4A25C0();
}

unint64_t sub_25F4945C8()
{
  result = qword_27FD6FF10;
  if (!qword_27FD6FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FF10);
  }

  return result;
}

unint64_t sub_25F49461C()
{
  result = qword_27FD6FF18;
  if (!qword_27FD6FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FF18);
  }

  return result;
}

uint64_t RenderEffect.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for RenderEffect.Key;
  v8[4] = sub_25F4945C8();
  sub_25F49461C();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

uint64_t RenderEffect.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static RenderEffect.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t RenderEffect.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25F4A2C60();
}

uint64_t RenderEffect.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F494824()
{
  v2 = *v0;
  v3 = v0[1];
  sub_25F4945C8();
  sub_25F49461C();
  return sub_25F4A25C0();
}

uint64_t sub_25F494898@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for RenderEffect.Key;
  v8[4] = sub_25F4945C8();
  sub_25F49461C();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_25F4949A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F494F8C();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

unint64_t sub_25F494CC8()
{
  result = qword_27FD6FF20;
  if (!qword_27FD6FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FF20);
  }

  return result;
}

unint64_t sub_25F494D20()
{
  result = qword_27FD6FF28;
  if (!qword_27FD6FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FF28);
  }

  return result;
}

unint64_t sub_25F494D78()
{
  result = qword_27FD6FF30;
  if (!qword_27FD6FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FF30);
  }

  return result;
}

unint64_t sub_25F494DD0()
{
  result = qword_27FD6FF38;
  if (!qword_27FD6FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FF38);
  }

  return result;
}

unint64_t sub_25F494E28()
{
  result = qword_27FD6FF40;
  if (!qword_27FD6FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FF40);
  }

  return result;
}

unint64_t sub_25F494E80()
{
  result = qword_27FD6FF48;
  if (!qword_27FD6FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FF48);
  }

  return result;
}

unint64_t sub_25F494F38()
{
  result = qword_27FD6FF50;
  if (!qword_27FD6FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FF50);
  }

  return result;
}

unint64_t sub_25F494F8C()
{
  result = qword_27FD6FF58;
  if (!qword_27FD6FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FF58);
  }

  return result;
}

uint64_t sub_25F494FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25F3F93E0(a3, v27 - v11);
  v13 = sub_25F4A2EA0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_25F3F21F4(v12, &qword_27FD6D9F0, &qword_25F4A5250);
  }

  else
  {
    sub_25F4A2E90();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25F4A2E40();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25F4A2C40() + 32;
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

      sub_25F3F21F4(a3, &qword_27FD6D9F0, &qword_25F4A5250);

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

  sub_25F3F21F4(a3, &qword_27FD6D9F0, &qword_25F4A5250);
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

uint64_t MessageStream.Responder.reply<A>(payload:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReplyBox();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  (*(v4 + 16))(v7, a1, a2);
  (*(v4 + 32))(v12, v7, a2);
  WitnessTable = swift_getWitnessTable();
  TransportReply.send<A>(_:file:line:column:function:)(v12, "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsMessaging/Sources/PreviewsMessaging/MessageStream.swift", 123, 2, 138, 32, "reply(payload:)", 15, 2u, v8, WitnessTable);
  return (*(v9 + 8))(v12, v8);
}

uint64_t MessageStream.open<A, B>(forSending:receiving:receiver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = MessageStream.open<A>(forReceiving:receiver:)(a1, a3, a4, a6, a8);

  return MessageStream.open<A>(forSending:)(v10, a5, a7);
}

uint64_t MessageStream.Sender.send(oneWay:)(uint64_t a1, uint64_t a2)
{
  v9 = *v2;
  v8 = *(v2 + 1);
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2[5];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  type metadata accessor for CompatibilityInterface();

  swift_getWitnessTable();
  v6 = type metadata accessor for AsyncMessageStream.Sender();
  AsyncMessageStream.Sender<>.send(oneWay:)(a1, v6, v5);
}

uint64_t MessageStream.Sender.send<A>(_:expecting:replyHandler:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a3;
  v30 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - v14;
  v17 = v7[3];
  v16 = v7[4];
  v18 = v7[5];
  v31 = *v7;
  v28 = *(v7 + 1);
  v32 = v28;
  v33 = v17;
  v34 = v16;
  v35 = v18;
  v19 = type metadata accessor for ReplyBox();
  v21 = *(a5 + 16);
  v20 = *(a5 + 24);
  type metadata accessor for CompatibilityInterface();

  swift_getWitnessTable();
  v22 = type metadata accessor for AsyncMessageStream.Sender();
  WitnessTable = swift_getWitnessTable();
  v24 = AsyncMessageStream.Sender<>.send<A>(message:expecting:)(a1, v19, v22, v19, WitnessTable, v20);

  v25 = sub_25F4A2EA0();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v21;
  v26[5] = a6;
  v26[6] = v20;
  v26[7] = a7;
  v26[8] = v29;
  v26[9] = v30;
  v26[10] = v24;

  sub_25F494FEC(0, 0, v15, &unk_25F4B4320, v26);
}

uint64_t MessageStream.init(underlying:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25F4A2A70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F4A2830();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *a2 = sub_25F4A2820();
  v12 = type metadata accessor for MessageStream(0);
  sub_25F497D7C(a1, a2 + *(v12 + 20), type metadata accessor for AsyncMessageStream);
  v16[3] = type metadata accessor for AsyncMessageStream(0);
  v16[4] = sub_25F497A20(&qword_27FD6D450, type metadata accessor for AsyncMessageStream);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  sub_25F497D7C(a1, boxed_opaque_existential_1, type metadata accessor for AsyncMessageStream);
  sub_25F4A2A80();
  sub_25F497A20(&qword_27FD6E8E8, type metadata accessor for MessageStream);
  sub_25F4A2600();
  sub_25F499098(a1, type metadata accessor for AsyncMessageStream);
  (*(v5 + 8))(v8, v4);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t MessageStream.description.getter()
{
  v1 = v0 + *(type metadata accessor for MessageStream(0) + 20);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);

  return v2;
}

uint64_t sub_25F495B6C()
{
  sub_25F497A68();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MessageStream.open<A>(forReceiving:receiver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a2;
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for CompatibilityInterface();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for TransportMessage();
  v13 = sub_25F4A2F50();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - v18;
  v20 = v5 + *(type metadata accessor for MessageStream(0) + 20);
  AsyncMessageStream.activate<A>(forReceiving:)(v11, v11, WitnessTable);
  v21 = sub_25F4A2EA0();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  (*(v14 + 16))(v17, v19, v13);
  v22 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v29;
  *(v23 + 4) = a4;
  *(v23 + 5) = v24;
  (*(v14 + 32))(&v23[v22], v17, v13);
  v25 = &v23[(v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  v26 = v31;
  *v25 = v30;
  *(v25 + 1) = v26;

  sub_25F494FEC(0, 0, v10, &unk_25F4B4348, v23);

  return (*(v14 + 8))(v19, v13);
}

uint64_t MessageStream.open<A>(forSending:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for MessageStream(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  type metadata accessor for MessageStream.Sender();
  sub_25F4A2A50();
  v14 = sub_25F4A2EA0();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_25F497D7C(v4, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessageStream);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  sub_25F499030(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for MessageStream);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  return sub_25F4A2A40();
}

uint64_t sub_25F4960F8(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = *(type metadata accessor for MessageStream(0) + 20);
  v3 = type metadata accessor for CompatibilityInterface();
  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  swift_getWitnessTable();
  *v4 = v1;
  v4[1] = sub_25F3E3804;

  return AsyncMessageStream.sender<A>(for:)(v1 + 16, v3, v3);
}

uint64_t sub_25F4961FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = type metadata accessor for TransportReply();
  v7[6] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E998, &qword_25F4AB278) - 8) + 64) + 15;
  v7[8] = swift_task_alloc();
  v12 = *(a7 - 8);
  v7[9] = v12;
  v13 = *(v12 + 64) + 15;
  v7[10] = swift_task_alloc();
  type metadata accessor for CompatibilityInterface();
  swift_getWitnessTable();
  v14 = type metadata accessor for TransportMessage();
  v7[11] = v14;
  v15 = *(v14 - 8);
  v7[12] = v15;
  v16 = *(v15 + 64) + 15;
  v7[13] = swift_task_alloc();
  v17 = *(*(sub_25F4A3060() - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v18 = sub_25F4A2F40();
  v7[15] = v18;
  v19 = *(v18 - 8);
  v7[16] = v19;
  v20 = *(v19 + 64) + 15;
  v7[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F496454, 0, 0);
}

uint64_t sub_25F496454()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[2];
  sub_25F4A2F50();
  sub_25F4A2F10();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_25F496514;
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

uint64_t sub_25F496514()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F496610, 0, 0);
}

uint64_t sub_25F496610()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[13];
    v5 = v0[10];
    v7 = v0[7];
    v6 = v0[8];
    (*(v0[16] + 8))(v0[17], v0[15]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v3 + 32))(v0[13], v1, v2);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[13];
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    if (EnumCaseMultiPayload == 1)
    {
      v15 = v0[6];
      v16 = v0[7];
      v17 = v0[4];
      v18 = v0[5];
      v19 = v0[3];
      v20 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v13 + 32))(v12, v11, v18);
      sub_25F499030(v11 + v20, v16, type metadata accessor for TransportReply);
      sub_25F497D7C(v16, v14, type metadata accessor for TransportReply);
      v21 = type metadata accessor for MessageStream.Responder(0);
      (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
      v19(v12, v14);
      sub_25F3F21F4(v14, &qword_27FD6E998, &qword_25F4AB278);
      sub_25F499098(v16, type metadata accessor for TransportReply);
    }

    else
    {
      v22 = v0[4];
      v23 = v0[3];
      (*(v13 + 32))(v0[10], v0[13], v0[5]);
      v24 = type metadata accessor for MessageStream.Responder(0);
      (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
      v23(v12, v14);
      sub_25F3F21F4(v14, &qword_27FD6E998, &qword_25F4AB278);
    }

    (*(v0[9] + 8))(v0[10], v0[5]);
    v25 = *(MEMORY[0x277D85798] + 4);
    v26 = swift_task_alloc();
    v0[18] = v26;
    *v26 = v0;
    v26[1] = sub_25F496514;
    v27 = v0[17];
    v28 = v0[14];
    v29 = v0[15];

    return MEMORY[0x2822003E8](v28, 0, 0, v29);
  }
}

uint64_t sub_25F496988(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);

  return v3;
}

uint64_t MessageStream.Sender.send(_:replyHandler:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v14 = v4[3];
  v13 = v4[4];
  v15 = v4[5];
  v24 = *v4;
  v23 = *(v4 + 1);
  v25 = v23;
  v26 = v14;
  v27 = v13;
  v28 = v15;
  v16 = *(a4 + 16);
  v17 = *(a4 + 24);
  type metadata accessor for CompatibilityInterface();

  swift_getWitnessTable();
  v18 = type metadata accessor for AsyncMessageStream.Sender();
  v19 = AsyncMessageStream.Sender<>.send(message:)(a1, v18, v17);

  v20 = sub_25F4A2EA0();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = v19;

  sub_25F494FEC(0, 0, v12, &unk_25F4B4370, v21);
}

uint64_t sub_25F496BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a5;
  v8 = *(MEMORY[0x277D857D0] + 4);
  v9 = swift_task_alloc();
  v6[6] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  *v9 = v6;
  v9[1] = sub_25F496C78;
  v11 = MEMORY[0x277D84950];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v6 + 2, a6, v12, v10, v11);
}

uint64_t sub_25F496C78()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F496D74, 0, 0);
}

uint64_t sub_25F496D74()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  (*(v0 + 32))(v2, v3);
  sub_25F468CA4(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25F496DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v24;
  v8[7] = v25;
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  v10 = type metadata accessor for ReplyBox();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v12 = MEMORY[0x277D84950];
  v13 = sub_25F4A3360();
  v8[8] = v13;
  v14 = *(v13 - 8);
  v8[9] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v8[10] = v16;
  v17 = sub_25F4A3360();
  v8[11] = v17;
  v18 = *(v17 - 8);
  v8[12] = v18;
  v19 = *(v18 + 64) + 15;
  v8[13] = swift_task_alloc();
  v20 = *(MEMORY[0x277D857D0] + 4);
  v21 = swift_task_alloc();
  v8[14] = v21;
  *v21 = v8;
  v21[1] = sub_25F496FD4;

  return MEMORY[0x282200440](v16, a6, v10, v11, v12);
}

uint64_t sub_25F496FD4()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F4970D0, 0, 0);
}

uint64_t sub_25F4970D0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v15 = *(v0 + 24);
  v16 = *(v0 + 88);
  v14 = *(v0 + 16);
  v8 = swift_task_alloc();
  v13 = *(v0 + 48);
  *v8 = v7;
  *(v8 + 8) = v6;
  *(v8 + 16) = v13;
  KeyPath = swift_getKeyPath();

  v10 = swift_task_alloc();
  v10[2] = v7;
  v10[3] = v13;
  v10[4] = KeyPath;
  sub_25F41CA98(sub_25F4993D8, v5, v1);

  (*(v4 + 8))(v3, v5);
  v14(v1);
  (*(v2 + 8))(v1, v16);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t MessageStream.Sender.send(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FF68, &unk_25F4B4378);
  v5 = *(a2 + 16);
  return sub_25F4A2A30();
}

uint64_t sub_25F497300(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = type metadata accessor for MessageStream.Sender();

  MessageStream.Sender.send(_:replyHandler:)(a3, sub_25F499000, a1, v5);
}

uint64_t MessageStream.Sender.send<A>(_:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  sub_25F4A2A50();
  v6 = *(a3 + 16);
  return sub_25F4A2A30();
}

uint64_t sub_25F497440(uint64_t *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v13 = *(v11 + *MEMORY[0x277D40568]);
  v14 = type metadata accessor for MessageStream.Sender();

  MessageStream.Sender.send<A>(_:expecting:replyHandler:)(a3, v15, sub_25F498FDC, v12, v14, v13, a6);
}

Swift::Void __swiftcall MessageStream.Responder.reply()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - v2;
  v4 = sub_25F4A2A70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
  type metadata accessor for LazyPropertyList();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v3, &qword_27FD6DEB8, &unk_25F4A8D20);
  (*(v5 + 8))(v8, v4);
}

uint64_t MessageStream.Responder.reply(error:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v13 - v4);
  v6 = sub_25F4A2A70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v5, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_25F4978C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[9];

  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_25F49790C(uint64_t a1)
{
  v4 = v1[5];
  v14 = v1[4];
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_25F3FAD34;

  return sub_25F496DFC(a1, v7, v8, v9, v10, v11, v14, v4);
}

uint64_t sub_25F497A20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F497A68()
{
  result = qword_27FD6FF60;
  if (!qword_27FD6FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6FF60);
  }

  return result;
}

uint64_t sub_25F497ABC()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  type metadata accessor for CompatibilityInterface();
  swift_getWitnessTable();
  type metadata accessor for TransportMessage();
  v3 = sub_25F4A2F50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v4 + 8))(&v0[v6], v3);
  v9 = *&v0[v7 + 8];

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v5 | 7);
}

uint64_t sub_25F497BD8(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  type metadata accessor for CompatibilityInterface();
  swift_getWitnessTable();
  type metadata accessor for TransportMessage();
  v7 = *(sub_25F4A2F50() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_25F3F30B0;

  return sub_25F4961FC(a1, v9, v10, v1 + v8, v12, v13, v6);
}

uint64_t sub_25F497D7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F497DE4()
{
  v1 = (type metadata accessor for MessageStream(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = (v0 + v3 + v1[7]);
  v7 = *v6;

  v8 = *(v6 + 2);

  v9 = type metadata accessor for AsyncMessageStream(0);
  v10 = *(v9 + 24);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  (*(*(v11 - 8) + 8))(&v6[v10], v11);
  v12 = *&v6[*(v9 + 28)];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F497F10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(type metadata accessor for MessageStream(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F3F30B0;

  return sub_25F4960F8(a1);
}

uint64_t sub_25F498010()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F498058(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F3FAD34;

  return sub_25F496BA8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25F498120(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25F497300(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t MessageStream.Responder.reply(result:)(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - v6);
  v8 = sub_25F4A2A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  if (a2)
  {
    *v7 = a1;
    swift_storeEnumTagMultiPayload();
    v13 = a1;
  }

  else
  {
    _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
    type metadata accessor for LazyPropertyList();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v7, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v9 + 8))(v12, v8);
}

uint64_t MessageStream.Responder.reply<A>(result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReplyBox();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v6 = sub_25F4A3360();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  v16 = a2;
  v17 = a3;
  v11 = sub_25F4A3360();
  sub_25F41CA98(sub_25F4985B0, v11, v10);
  WitnessTable = swift_getWitnessTable();
  LOBYTE(v14) = 2;
  TransportReply.send<A>(result:file:line:column:function:)(v10, "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsMessaging/Sources/PreviewsMessaging/MessageStream.swift", 123, 2, 146, 32, "reply(result:)", 14, v14, v5, WitnessTable);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_25F4984D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  return (*(v5 + 32))(a3, v8, a2);
}

uint64_t sub_25F4985CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AsyncMessageStream(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25F49868C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AsyncMessageStream(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F498730()
{
  result = sub_25F4A2830();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AsyncMessageStream(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F4987B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F498804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransportReply();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F498884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransportReply();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F498914()
{
  result = type metadata accessor for TransportReply();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F498990(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_25F498A00()
{
  v0 = sub_25F4A3170();

  return v0 != 0;
}

uint64_t sub_25F498A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F498ABC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F498B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F498B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_25F498C08@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25F498A00();
  *a3 = result;
  return result;
}

uint64_t sub_25F498C60(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for ReplyBox.Key();
  swift_getWitnessTable();
  return sub_25F4A25C0();
}

uint64_t sub_25F498CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = type metadata accessor for ReplyBox.Key();
  v14[4] = swift_getWitnessTable();
  sub_25F4A2530();
  v11 = sub_25F4A25E0();
  (*(*(v11 - 8) + 8))(a1, v11);
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return (*(v7 + 32))(a3, v10, a2);
}

uint64_t sub_25F498EE0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, *(v2 + 32), v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_25F498FA4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25F499030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F499098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F4990F8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F4991F0;

  return v7(a1);
}

uint64_t sub_25F4991F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F4992E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F499320(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F3FAD34;

  return sub_25F4990F8(a1, v5);
}

uint64_t MessageStreamAgentIdentifier.hash(into:)()
{
  sub_25F4A2120();
  sub_25F49C8A8(&qword_27FD6F608, MEMORY[0x277D403A8]);
  sub_25F4A2BE0();
  v1 = *(v0 + *(type metadata accessor for MessageStreamAgentIdentifier(0) + 20));
  return sub_25F4A3330();
}

uint64_t MessageStreamAgentIdentifier.hashValue.getter()
{
  sub_25F4A3300();
  sub_25F4A2120();
  sub_25F49C8A8(&qword_27FD6F608, MEMORY[0x277D403A8]);
  sub_25F4A2BE0();
  v1 = *(v0 + *(type metadata accessor for MessageStreamAgentIdentifier(0) + 20));
  sub_25F4A3330();
  return sub_25F4A3350();
}

uint64_t MessageStreamRequest.streamHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageStreamRequest(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MessageStreamRequest.init(specification:streamHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_25F49CA7C(a1, a4, type metadata accessor for MessageStreamAgentSpecification);
  result = type metadata accessor for MessageStreamRequest(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t MessageStreamRequest.init(agentClassName:agentIdentifier:initializationPayload:streamHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = 0;
  *(a8 + 3) = 0;
  *(a8 + 4) = a3;
  *(a8 + 5) = a4;
  v12 = *(type metadata accessor for MessageStreamAgentSpecification(0) + 28);
  v13 = sub_25F4A25E0();
  (*(*(v13 - 8) + 32))(&a8[v12], a5, v13);
  result = type metadata accessor for MessageStreamRequest(0);
  v15 = &a8[*(result + 20)];
  *v15 = a6;
  *(v15 + 1) = a7;
  return result;
}

uint64_t MessageStreamAgentSpecification.init(mangledClassName:frameworkPath:instanceIdentifier:initializationPayload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  v10 = *(type metadata accessor for MessageStreamAgentSpecification(0) + 28);
  v11 = sub_25F4A25E0();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a8[v10], a7, v11);
}

uint64_t MessageStreamAgentSpecification.mangledClassName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MessageStreamAgentSpecification.frameworkPath.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MessageStreamAgentSpecification.instanceIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MessageStreamAgentSpecification.initializationPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageStreamAgentSpecification(0) + 28);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_25F499A38()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F499B18()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F499BE4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F499CC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F49D870();
  *a2 = result;
  return result;
}

void sub_25F499CF0(unint64_t *a1@<X8>)
{
  v2 = 0xED0000687461506BLL;
  v3 = 0x726F77656D617266;
  v4 = 0x800000025F4B6DF0;
  v5 = 0xD000000000000015;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x800000025F4B6E10;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000025F4B6DD0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_25F499D8C()
{
  v1 = 0x726F77656D617266;
  v2 = 0xD000000000000015;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_25F499E60(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD702A8, &qword_25F4B4F38);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = *(a1 + 2);
  v26 = *(a1 + 3);
  v27 = v15;
  v16 = *(a1 + 4);
  v28 = *(a1 + 5);
  v29 = v16;
  v17 = *(v6 + 56);
  *(&v25 - v11) = 3;
  v18 = *(type metadata accessor for MessageStreamAgentSpecification(0) + 28);
  v19 = sub_25F4A25E0();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v12[v17], &a1[v18], v19);
  v40 = 0;
  v38 = v13;
  v39 = v14;
  v37 = 1;
  v35 = v27;
  v36 = v26;
  v34 = 2;
  v32 = v29;
  v33 = v28;
  sub_25F404B8C(v12, v10, &qword_27FD702A8, &qword_25F4B4F38);
  LOBYTE(a1) = *v10;
  v21 = &v10[*(v6 + 56)];
  v22 = v30;
  (*(v20 + 32))(v30, v21, v19);
  (*(v20 + 56))(v22, 0, 1, v19);
  v31 = a1;
  sub_25F49A444();

  v23 = sub_25F4A28B0();
  sub_25F3F21F4(v22, &qword_27FD6DAA0, &qword_25F4A5550);

  sub_25F3F21F4(v12, &qword_27FD702A8, &qword_25F4B4F38);
  return v23;
}

uint64_t MessageStreamAgentSpecification.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = &type metadata for MessageStreamAgentSpecification.Key;
  v10 = sub_25F49A444();
  v32 = v10;
  LOBYTE(v30[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    (*(v6 + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v35 = a2;
    __swift_destroy_boxed_opaque_existential_1(v30);
    v12 = v33;
    v11 = v34;
    v31 = &type metadata for MessageStreamAgentSpecification.Key;
    v32 = v10;
    LOBYTE(v30[0]) = 1;
    sub_25F4A2580();
    v24 = v12;
    v25 = v11;
    __swift_destroy_boxed_opaque_existential_1(v30);
    v14 = v28;
    v13 = v29;
    v31 = &type metadata for MessageStreamAgentSpecification.Key;
    v32 = v10;
    LOBYTE(v30[0]) = 2;
    sub_25F4A2580();
    v23 = v13;
    __swift_destroy_boxed_opaque_existential_1(v30);
    v21 = v26;
    v22 = v27;
    v31 = &type metadata for MessageStreamAgentSpecification.Key;
    v32 = v10;
    LOBYTE(v30[0]) = 3;
    sub_25F4A2530();
    v16 = v25;
    (*(v6 + 8))(a1, v5);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v17 = v23;
    v18 = v35;
    *v35 = v24;
    *(v18 + 1) = v16;
    *(v18 + 2) = v14;
    *(v18 + 3) = v17;
    v19 = v22;
    *(v18 + 4) = v21;
    *(v18 + 5) = v19;
    v20 = type metadata accessor for MessageStreamAgentSpecification(0);
    return (*(v6 + 32))(&v18[*(v20 + 28)], v9, v5);
  }
}

unint64_t sub_25F49A444()
{
  result = qword_27FD70190;
  if (!qword_27FD70190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70190);
  }

  return result;
}

uint64_t MessageStreamAgentSpecification.ID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25F4A2C60();
  if (!v4)
  {
    sub_25F4A3320();
    if (v6)
    {
      goto LABEL_3;
    }

    return sub_25F4A3320();
  }

  sub_25F4A3320();
  sub_25F4A2C60();
  if (!v6)
  {
    return sub_25F4A3320();
  }

LABEL_3:
  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t MessageStreamAgentSpecification.ID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25F4A3300();
  sub_25F4A2C60();
  if (!v4)
  {
    sub_25F4A3320();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_25F4A3320();
    return sub_25F4A3350();
  }

  sub_25F4A3320();
  sub_25F4A2C60();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_25F4A3320();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F49A678()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25F4A2C60();
  if (!v4)
  {
    sub_25F4A3320();
    if (v6)
    {
      goto LABEL_3;
    }

    return sub_25F4A3320();
  }

  sub_25F4A3320();
  sub_25F4A2C60();
  if (!v6)
  {
    return sub_25F4A3320();
  }

LABEL_3:
  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t sub_25F49A734()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25F4A3300();
  sub_25F4A2C60();
  if (!v4)
  {
    sub_25F4A3320();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_25F4A3320();
    return sub_25F4A3350();
  }

  sub_25F4A3320();
  sub_25F4A2C60();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_25F4A3320();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t MessageStreamAgentSpecification.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
}

uint64_t sub_25F49A85C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
}

uint64_t MessageStreamInstanceIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25F49A8EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F49D908();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F49A9C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_25F49AA88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = a3(0);
  (*(*(v9 - 8) + 32))(a5, a1, v9);
  result = a4(0);
  *(a5 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_25F49AB10(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646950746E656761;
  }

  else
  {
    v2 = 0x44496D6165727473;
  }

  if (*a2)
  {
    v3 = 0x646950746E656761;
  }

  else
  {
    v3 = 0x44496D6165727473;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F49AB98()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F49AC10()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F49AC6C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F49ACEC(uint64_t *a1@<X8>)
{
  v2 = 0x44496D6165727473;
  if (*v1)
  {
    v2 = 0x646950746E656761;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_25F49AD24()
{
  if (*v0)
  {
    return 0x646950746E656761;
  }

  else
  {
    return 0x44496D6165727473;
  }
}

uint64_t sub_25F49AD94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD702A0, &unk_25F4B4F28);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  v14 = *(v7 + 56);
  *(v19 - v12) = 0;
  v15 = sub_25F4A20A0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a1, v15);
  LODWORD(v14) = *(a1 + *(type metadata accessor for HostAgentSystem.AgentEndpoint.Identity(0) + 20));
  sub_25F404B8C(v13, v11, &qword_27FD702A0, &unk_25F4B4F28);
  LOBYTE(a1) = *v11;
  (*(v16 + 32))(v5, &v11[*(v7 + 56)], v15);
  (*(v16 + 56))(v5, 0, 1, v15);
  v22 = a1;
  v21 = 1;
  v19[2] = v14;
  v20 = 0;
  sub_25F49C854();
  v17 = sub_25F4A28D0();
  sub_25F3F21F4(v5, &qword_27FD6E620, &qword_25F4A9820);
  sub_25F3F21F4(v13, &qword_27FD702A0, &unk_25F4B4F28);
  return v17;
}

uint64_t HostAgentSystem.AgentEndpoint.Identity.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F4A20A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &type metadata for HostAgentSystem.AgentEndpoint.Identity.Key;
  v10 = sub_25F49C854();
  v18 = v10;
  LOBYTE(v16[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v11 = sub_25F4A25E0();
    (*(*(v11 - 8) + 8))(a1, v11);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = &type metadata for HostAgentSystem.AgentEndpoint.Identity.Key;
    v18 = v10;
    LOBYTE(v16[0]) = 1;
    sub_25F4A2530();
    v13 = sub_25F4A25E0();
    (*(*(v13 - 8) + 8))(a1, v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v14 = v15[1];
    (*(v6 + 32))(a2, v9, v5);
    result = type metadata accessor for HostAgentSystem.AgentEndpoint.Identity(0);
    *(a2 + *(result + 20)) = v14;
  }

  return result;
}

BOOL sub_25F49B270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((a3() & 1) == 0)
  {
    return 0;
  }

  v7 = a4(0);
  return *(a1 + *(v7 + 20)) == *(a2 + *(v7 + 20));
}

uint64_t HostAgentSystem.AgentEndpoint.Identity.hash(into:)()
{
  sub_25F4A20A0();
  sub_25F49C8A8(&qword_27FD6E648, MEMORY[0x277CC95F0]);
  sub_25F4A2BE0();
  v1 = *(v0 + *(type metadata accessor for HostAgentSystem.AgentEndpoint.Identity(0) + 20));
  return sub_25F4A3330();
}

uint64_t HostAgentSystem.AgentEndpoint.Identity.hashValue.getter()
{
  sub_25F4A3300();
  sub_25F4A20A0();
  sub_25F49C8A8(&qword_27FD6E648, MEMORY[0x277CC95F0]);
  sub_25F4A2BE0();
  v1 = *(v0 + *(type metadata accessor for HostAgentSystem.AgentEndpoint.Identity(0) + 20));
  sub_25F4A3330();
  return sub_25F4A3350();
}

uint64_t sub_25F49B44C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  sub_25F4A3300();
  a3(0);
  sub_25F49C8A8(a4, a5);
  sub_25F4A2BE0();
  v10 = *(v5 + *(a1 + 20));
  sub_25F4A3330();
  return sub_25F4A3350();
}

uint64_t sub_25F49B530(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(0);
  sub_25F49C8A8(a5, a6);
  sub_25F4A2BE0();
  v10 = *(v6 + *(a2 + 20));
  return sub_25F4A3330();
}

uint64_t sub_25F49B600(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  sub_25F4A3300();
  a4(0);
  sub_25F49C8A8(a5, a6);
  sub_25F4A2BE0();
  v11 = *(v6 + *(a2 + 20));
  sub_25F4A3330();
  return sub_25F4A3350();
}

uint64_t sub_25F49B75C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657461647075;
  }

  else
  {
    v4 = 0x746E656761;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x657461647075;
  }

  else
  {
    v6 = 0x746E656761;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F49B7FC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F49B878()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F49B8E0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F49B964(uint64_t *a1@<X8>)
{
  v2 = 0x746E656761;
  if (*v1)
  {
    v2 = 0x657461647075;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F49B99C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F49D81C();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F49BA6C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F49BB74()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F49BC68()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F49BD6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F49D8BC();
  *a2 = result;
  return result;
}

void sub_25F49BD9C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0x696D697263736964;
  v5 = 0x800000025F4B5DA0;
  v6 = 0xD000000000000011;
  v7 = 0xEE00646565536574;
  v8 = 0x6164705574736F68;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000025F4B6DF0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000025F4B6E40;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_25F49BE60()
{
  v1 = *v0;
  v2 = 0x696D697263736964;
  v3 = 0xD000000000000011;
  v4 = 0x6164705574736F68;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t HostAgentSystem.AgentEndpoint.StreamContext.propertyListValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD701A0, &qword_25F4B4690);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20[-v3];
  v5 = type metadata accessor for MessageStreamAgentSpecification(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for HostAgentSystem.AgentEndpoint.StreamContext(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = v0;
  v14 = sub_25F49C918();
  sub_25F49C96C();
  sub_25F4A25C0();
  sub_25F49C9C0(v0, v13, type metadata accessor for HostAgentSystem.AgentEndpoint.StreamContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    v18 = v13[4];
    v25 = *v13;
    v26 = v15;
    v23 = &type metadata for HostAgentSystem.AgentEndpoint.StreamContext.Key;
    v24 = v14;
    LOBYTE(v22[0]) = 2;
    sub_25F406618();
    sub_25F4A2520();

    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = v14;
    v25 = v16;
    LOBYTE(v26) = 0;
    v23 = &type metadata for HostAgentSystem.AgentEndpoint.StreamContext.Key;
    LOBYTE(v22[0]) = 3;
    sub_25F40651C();
    sub_25F4A2520();
    __swift_destroy_boxed_opaque_existential_1(v22);
    v25 = v17;
    v26 = v18;
    v23 = &type metadata for HostAgentSystem.AgentEndpoint.StreamContext.Key;
    v24 = v14;
    LOBYTE(v22[0]) = 4;
    sub_25F49CA28();
    sub_25F4A2520();
  }

  else
  {
    sub_25F49CA7C(v13, v9, type metadata accessor for MessageStreamAgentSpecification);
    sub_25F49C9C0(v9, v4, type metadata accessor for MessageStreamAgentSpecification);
    (*(v6 + 56))(v4, 0, 1, v5);
    v23 = &type metadata for HostAgentSystem.AgentEndpoint.StreamContext.Key;
    v24 = v14;
    LOBYTE(v22[0]) = 1;
    sub_25F49C8A8(&qword_27FD701C0, type metadata accessor for MessageStreamAgentSpecification);
    sub_25F4A2520();
    sub_25F3F21F4(v4, &qword_27FD701A0, &qword_25F4B4690);
    sub_25F49D95C(v9, type metadata accessor for MessageStreamAgentSpecification);
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_25F49C288(_BYTE *a1, BOOL *a2, uint64_t a3)
{
  v6 = type metadata accessor for HostAgentSystem.AgentEndpoint.StreamContext(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F49C9C0(a3, v9, type metadata accessor for HostAgentSystem.AgentEndpoint.StreamContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = EnumCaseMultiPayload == 1;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for HostAgentSystem.AgentEndpoint.StreamContext;
  }

  else
  {
    v12 = type metadata accessor for MessageStreamAgentSpecification;
  }

  result = sub_25F49D95C(v9, v12);
  *a2 = v11;
  return result;
}

uint64_t HostAgentSystem.AgentEndpoint.StreamContext.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for HostAgentSystem.AgentEndpoint.StreamContext(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v26 = &type metadata for HostAgentSystem.AgentEndpoint.StreamContext.Key;
  v12 = sub_25F49C918();
  v27 = v12;
  LOBYTE(v25[0]) = 0;
  sub_25F49C96C();
  sub_25F4A2530();
  if (v2)
  {
    v13 = sub_25F4A25E0();
    (*(*(v13 - 8) + 8))(a1, v13);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    v26 = &type metadata for HostAgentSystem.AgentEndpoint.StreamContext.Key;
    v27 = v12;
    if (v23)
    {
      LOBYTE(v25[0]) = 2;
      sub_25F406618();
      sub_25F4A2530();
      __swift_destroy_boxed_opaque_existential_1(v25);
      v16 = v23;
      v15 = v24;
      v26 = &type metadata for HostAgentSystem.AgentEndpoint.StreamContext.Key;
      v27 = v12;
      LOBYTE(v25[0]) = 3;
      sub_25F40651C();
      sub_25F4A2530();
      __swift_destroy_boxed_opaque_existential_1(v25);
      v22[0] = v28;
      v26 = &type metadata for HostAgentSystem.AgentEndpoint.StreamContext.Key;
      v27 = v12;
      LOBYTE(v25[0]) = 4;
      sub_25F49CA28();
      sub_25F4A2530();
      v18 = sub_25F4A25E0();
      (*(*(v18 - 8) + 8))(a1, v18);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v19 = v22[1];
      v20 = v22[2];
      *v9 = v16;
      v9[1] = v15;
      v9[2] = v22[0];
      v9[3] = v19;
      v9[4] = v20;
      swift_storeEnumTagMultiPayload();
      v21 = v9;
    }

    else
    {
      LOBYTE(v25[0]) = 1;
      type metadata accessor for MessageStreamAgentSpecification(0);
      sub_25F49C8A8(&qword_27FD701C0, type metadata accessor for MessageStreamAgentSpecification);
      sub_25F4A2530();
      v17 = sub_25F4A25E0();
      (*(*(v17 - 8) + 8))(a1, v17);
      __swift_destroy_boxed_opaque_existential_1(v25);
      swift_storeEnumTagMultiPayload();
      v21 = v11;
    }

    return sub_25F49CA7C(v21, a2, type metadata accessor for HostAgentSystem.AgentEndpoint.StreamContext);
  }
}

uint64_t _s19PreviewsMessagingOS31MessageStreamAgentSpecificationV2IDV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_25F4A3270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_25F4A3270() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_25F49C854()
{
  result = qword_27FD70198;
  if (!qword_27FD70198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70198);
  }

  return result;
}

uint64_t sub_25F49C8A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F49C918()
{
  result = qword_27FD701A8;
  if (!qword_27FD701A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD701A8);
  }

  return result;
}

unint64_t sub_25F49C96C()
{
  result = qword_27FD701B0;
  if (!qword_27FD701B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD701B0);
  }

  return result;
}

uint64_t sub_25F49C9C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F49CA28()
{
  result = qword_27FD701B8;
  if (!qword_27FD701B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD701B8);
  }

  return result;
}

uint64_t sub_25F49CA7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F49CB30()
{
  result = qword_27FD701D0;
  if (!qword_27FD701D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD701D0);
  }

  return result;
}

unint64_t sub_25F49CB88()
{
  result = qword_27FD701D8;
  if (!qword_27FD701D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD701D8);
  }

  return result;
}

unint64_t sub_25F49CBE0()
{
  result = qword_27FD701E0;
  if (!qword_27FD701E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD701E0);
  }

  return result;
}

unint64_t sub_25F49CC8C()
{
  result = qword_27FD701E8;
  if (!qword_27FD701E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD701E8);
  }

  return result;
}

unint64_t sub_25F49CDBC()
{
  result = qword_27FD70208;
  if (!qword_27FD70208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70208);
  }

  return result;
}

uint64_t sub_25F49CED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MessageStreamAgentSpecification(0);
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

uint64_t sub_25F49CFA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MessageStreamAgentSpecification(0);
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

unint64_t sub_25F49D058()
{
  result = type metadata accessor for MessageStreamAgentSpecification(319);
  if (v1 <= 0x3F)
  {
    result = sub_25F3E4264();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F49D0F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25F4A25E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F49D1B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25F4A25E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F49D254()
{
  sub_25F49D2E8();
  if (v0 <= 0x3F)
  {
    sub_25F4A25E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F49D2E8()
{
  if (!qword_27FD6EC40)
  {
    v0 = sub_25F4A3060();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD6EC40);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_25F49D4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25F49D554()
{
  sub_25F49D5C8();
  if (v0 <= 0x3F)
  {
    sub_25F49D610();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25F49D5C8()
{
  if (!qword_27FD70260)
  {
    v0 = type metadata accessor for MessageStreamAgentSpecification(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27FD70260);
    }
  }
}

void sub_25F49D610()
{
  if (!qword_27FD70268)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FD70268);
    }
  }
}

unint64_t sub_25F49D6C0()
{
  result = qword_27FD70270;
  if (!qword_27FD70270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70270);
  }

  return result;
}

unint64_t sub_25F49D718()
{
  result = qword_27FD70278;
  if (!qword_27FD70278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70278);
  }

  return result;
}

unint64_t sub_25F49D770()
{
  result = qword_27FD70280;
  if (!qword_27FD70280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70280);
  }

  return result;
}

unint64_t sub_25F49D7C8()
{
  result = qword_27FD70288;
  if (!qword_27FD70288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70288);
  }

  return result;
}

unint64_t sub_25F49D81C()
{
  result = qword_27FD70290;
  if (!qword_27FD70290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70290);
  }

  return result;
}

uint64_t sub_25F49D870()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F49D8BC()
{
  v0 = sub_25F4A3170();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F49D908()
{
  result = qword_27FD70298;
  if (!qword_27FD70298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70298);
  }

  return result;
}

uint64_t sub_25F49D95C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HostShellSystem.ShellEndpoint.StreamContext.contentIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t HostShellSystem.ShellEndpoint.StreamContext.contentIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t HostShellSystem.ShellEndpoint.StreamContext.instanceIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t HostShellSystem.ShellEndpoint.StreamContext.instanceIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

void *HostShellSystem.ShellEndpoint.StreamContext.init(contentIdentifier:hostUpdateSeed:instanceIdentifier:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = result[1];
  v5 = *a2;
  v6 = *a3;
  v7 = a3[1];
  *a4 = *result;
  a4[1] = v4;
  a4[2] = v5;
  a4[3] = v6;
  a4[4] = v7;
  return result;
}

uint64_t sub_25F49DAE0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE00646565536574;
  v3 = 0x6164705574736F68;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x6164705574736F68;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v4 == 1)
  {
    v6 = 0xEE00646565536574;
  }

  else
  {
    v6 = 0x800000025F4B6DF0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000025F4B5DA0;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000025F4B6DF0;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000025F4B5DA0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F49DBC4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F49DC74()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F49DD10()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F49DDBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F49E478();
  *a2 = result;
  return result;
}

void sub_25F49DDEC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646565536574;
  v4 = 0x6164705574736F68;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000025F4B6DF0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x800000025F4B5DA0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_25F49DE58()
{
  v1 = 0x6164705574736F68;
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
    return 0xD000000000000011;
  }
}

uint64_t HostShellSystem.ShellEndpoint.StreamContext.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25F4A25A0();
}

uint64_t sub_25F49DF10(__int128 *a1)
{
  v13 = *a1;
  v1 = *(a1 + 2);
  v12 = *(a1 + 24);
  v11 = 0;
  v10 = v13;
  v9 = 1;
  v7 = v1;
  v8 = 0;
  v6 = 2;
  v5 = v12;
  sub_25F49E4C4(&v13, v4);
  sub_25F49E520(&v12, v4);
  sub_25F49E208();
  sub_25F406618();
  sub_25F40651C();
  sub_25F49CA28();
  v2 = sub_25F4A28C0();

  return v2;
}

uint64_t HostShellSystem.ShellEndpoint.StreamContext.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = &type metadata for HostShellSystem.ShellEndpoint.StreamContext.Key;
  v5 = sub_25F49E208();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_25F406618();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = v17;
    v7 = v18;
    v15 = &type metadata for HostShellSystem.ShellEndpoint.StreamContext.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 1;
    sub_25F40651C();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for HostShellSystem.ShellEndpoint.StreamContext.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 2;
    sub_25F49CA28();
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v13;
    a2[3] = v11;
    a2[4] = v12;
  }

  return result;
}

unint64_t sub_25F49E208()
{
  result = qword_27FD702B0;
  if (!qword_27FD702B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD702B0);
  }

  return result;
}

unint64_t sub_25F49E260()
{
  result = qword_27FD6E648;
  if (!qword_27FD6E648)
  {
    sub_25F4A20A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E648);
  }

  return result;
}

unint64_t sub_25F49E2BC()
{
  result = qword_27FD702B8;
  if (!qword_27FD702B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD702B8);
  }

  return result;
}

uint64_t sub_25F49E310()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25F4A25A0();
}

unint64_t sub_25F49E37C()
{
  result = qword_27FD702C0;
  if (!qword_27FD702C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD702C0);
  }

  return result;
}

unint64_t sub_25F49E424()
{
  result = qword_27FD702C8;
  if (!qword_27FD702C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD702C8);
  }

  return result;
}

uint64_t sub_25F49E478()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t SecurityScopedURLWrapper.init(url:readonly:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = sub_25F4A2040();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = objc_allocWithZone(MEMORY[0x277CCAC90]);
  v12 = sub_25F4A2010();
  v13 = [v11 initWithURL:v12 readonly:a2 & 1];

  v14 = *(v7 + 8);
  v14(a1, v6);
  result = (v14)(v10, v6);
  *a3 = v13;
  return result;
}

uint64_t SecurityScopedURLWrapper.init(playgroundsExecutePermissionsForURL:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_25F4A2040();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = objc_allocWithZone(MEMORY[0x277CCAC90]);
  v10 = sub_25F4A2010();
  v11 = sub_25F4A2C10();
  v12 = [v9 initWithURL:v10 readonly:1 extensionClass:v11];

  v13 = *(v5 + 8);
  v13(a1, v4);
  result = (v13)(v8, v4);
  *a2 = v12;
  return result;
}

uint64_t SecurityScopedURLWrapper.data.getter()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v9[0] = 0;
  v2 = [objc_opt_self() archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v9];
  v3 = v9[0];
  if (v2)
  {
    v4 = sub_25F4A2060();
  }

  else
  {
    v5 = v3;
    v6 = sub_25F4A1FD0();

    swift_willThrow();
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t SecurityScopedURLWrapper.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_25F49EA34(0, &qword_27FD702D0, 0x277CCAAC8);
  sub_25F49EA34(0, &qword_27FD702D8, 0x277CCAC90);
  v7 = sub_25F4A3030();
  if (v3)
  {
    return sub_25F428790(a1, a2);
  }

  if (!v7)
  {
    sub_25F49EA7C();
    swift_allocError();
    *v10 = 0;
    v10[1] = 0;
    swift_willThrow();
    return sub_25F428790(a1, a2);
  }

  v9 = v7;
  result = sub_25F428790(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t sub_25F49EA34(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_25F49EA7C()
{
  result = qword_27FD702E0;
  if (!qword_27FD702E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD702E0);
  }

  return result;
}

unint64_t SecurityScopedURLWrapper.description.getter()
{
  v1 = sub_25F4A1F80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_25F4A30F0();

  v12 = 0xD000000000000019;
  v13 = 0x800000025F4B8CA0;
  v7 = [v6 description];
  sub_25F4A2C20();

  sub_25F4A1F70();
  v8 = sub_25F4A2C50();
  v10 = v9;

  (*(v2 + 8))(v5, v1);
  MEMORY[0x25F8DD480](v8, v10);

  MEMORY[0x25F8DD480](41, 0xE100000000000000);
  return v12;
}

void SecurityScopedURLWrapper.url.getter()
{
  v1 = [*v0 url];
  sub_25F4A2020();
}

uint64_t sub_25F49ECE8(uint64_t a1)
{
  v2 = sub_25F49EF58();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F49ED24(uint64_t a1)
{
  v2 = sub_25F49EF58();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F49ED60@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  result = SecurityScopedURLWrapper.data.getter();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F49ED9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_25F49EA34(0, &qword_27FD702D0, 0x277CCAAC8);
  sub_25F49EA34(0, &qword_27FD702D8, 0x277CCAC90);
  v6 = sub_25F4A3030();
  if (v2)
  {
    return sub_25F428790(v4, v5);
  }

  if (!v6)
  {
    sub_25F49EA7C();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0;
    swift_willThrow();
    return sub_25F428790(v4, v5);
  }

  v8 = v6;
  result = sub_25F428790(v4, v5);
  *a2 = v8;
  return result;
}

unint64_t sub_25F49EEAC()
{
  result = qword_27FD702E8;
  if (!qword_27FD702E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD702E8);
  }

  return result;
}

unint64_t sub_25F49EF04()
{
  result = qword_27FD702F0;
  if (!qword_27FD702F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD702F0);
  }

  return result;
}

unint64_t sub_25F49EF58()
{
  result = qword_27FD702F8;
  if (!qword_27FD702F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD702F8);
  }

  return result;
}

uint64_t sub_25F49EFCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v3)
  {
    v5 = "agentSpecification";
  }

  else
  {
    v5 = "requestScreenshot";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001DLL;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (*a2)
  {
    v8 = "requestScreenshot";
  }

  else
  {
    v8 = "agentSpecification";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25F4A3270();
  }

  return v10 & 1;
}

uint64_t sub_25F49F078()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F49F0F8()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F49F164()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F49F1EC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "requestScreenshot";
  }

  else
  {
    v3 = "agentSpecification";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_25F49F22C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4A1D6C();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F49F2F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7065526873617263;
  }

  else
  {
    v4 = 0x696D697263736964;
  }

  if (v3)
  {
    v5 = 0xEC000000746E616ELL;
  }

  else
  {
    v5 = 0xEB0000000074726FLL;
  }

  if (*a2)
  {
    v6 = 0x7065526873617263;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (*a2)
  {
    v7 = 0xEB0000000074726FLL;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F49F3A8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F49F43C()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F49F4BC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F49F558(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x7065526873617263;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xEB0000000074726FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F49F5A8()
{
  if (*v0)
  {
    result = 0x7065526873617263;
  }

  else
  {
    result = 0x696D697263736964;
  }

  *v0;
  return result;
}

uint64_t RemoteEventRequestPayload.propertyListValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD70300, &qword_25F4B53A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16[-v3];
  v5 = sub_25F4A23A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for RemoteEventRequestPayload(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v0;
  v14 = sub_25F49F9C0();
  sub_25F49FA14();
  sub_25F4A25C0();
  sub_25F4A172C(v0, v13, type metadata accessor for RemoteEventRequestPayload);
  result = (*(v6 + 48))(v13, 1, v5);
  if (result != 1)
  {
    (*(v6 + 32))(v9, v13, v5);
    (*(v6 + 16))(v4, v9, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    v18[3] = &type metadata for RemoteEventRequestPayload.Key;
    v18[4] = v14;
    LOBYTE(v18[0]) = 1;
    sub_25F49FA68();
    sub_25F4A2520();
    sub_25F49FAC0(v4);
    (*(v6 + 8))(v9, v5);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return result;
}

uint64_t sub_25F49F8AC(_BYTE *a1, BOOL *a2, uint64_t a3)
{
  v6 = type metadata accessor for RemoteEventRequestPayload(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F4A172C(a3, v9, type metadata accessor for RemoteEventRequestPayload);
  v10 = sub_25F4A23A0();
  result = (*(*(v10 - 8) + 48))(v9, 1, v10);
  v12 = result;
  if (result != 1)
  {
    result = sub_25F4A1F00(v9, type metadata accessor for RemoteEventRequestPayload);
  }

  *a2 = v12 != 1;
  return result;
}

unint64_t sub_25F49F9C0()
{
  result = qword_27FD70308;
  if (!qword_27FD70308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70308);
  }

  return result;
}

unint64_t sub_25F49FA14()
{
  result = qword_27FD70310;
  if (!qword_27FD70310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70310);
  }

  return result;
}

unint64_t sub_25F49FA68()
{
  result = qword_27FD6E268;
  if (!qword_27FD6E268)
  {
    sub_25F4A23A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E268);
  }

  return result;
}

uint64_t sub_25F49FAC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD70300, &qword_25F4B53A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RemoteEventRequestPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for RemoteEventRequestPayload(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &type metadata for RemoteEventRequestPayload.Key;
  v9 = sub_25F49F9C0();
  v18 = v9;
  LOBYTE(v16[0]) = 0;
  sub_25F49FA14();
  sub_25F4A2530();
  if (v2)
  {
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    if (v19)
    {
      v17 = &type metadata for RemoteEventRequestPayload.Key;
      v18 = v9;
      LOBYTE(v16[0]) = 1;
      v12 = sub_25F4A23A0();
      sub_25F49FA68();
      sub_25F4A2530();
      v13 = sub_25F4A25E0();
      (*(*(v13 - 8) + 8))(a1, v13);
      __swift_destroy_boxed_opaque_existential_1(v16);
      (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
      return sub_25F4A17E8(v8, a2, type metadata accessor for RemoteEventRequestPayload);
    }

    else
    {
      v14 = sub_25F4A25E0();
      (*(*(v14 - 8) + 8))(a1, v14);
      v15 = sub_25F4A23A0();
      return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
    }
  }
}

uint64_t RemoteEventPayload.DiagnosticsBehavior.hashValue.getter(unsigned __int8 a1)
{
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](a1);
  return sub_25F4A3350();
}

uint64_t sub_25F49FE34()
{
  v2 = *v0;
  sub_25F4A14C4();
  sub_25F4A1518();
  return sub_25F4A25C0();
}

uint64_t RemoteEventPayload.DiagnosticsBehavior.propertyListValue.getter()
{
  sub_25F4A14C4();
  sub_25F4A1518();
  return sub_25F4A25C0();
}

uint64_t sub_25F49FF18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F4A156C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_25F49FF5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0x617243746E656761;
  }

  if (v3)
  {
    v5 = 0xEC00000064656873;
  }

  else
  {
    v5 = 0x800000025F4B6EB0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0x617243746E656761;
  }

  if (*a2)
  {
    v7 = 0x800000025F4B6EB0;
  }

  else
  {
    v7 = 0xEC00000064656873;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F4A0010()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4A00A0()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4A011C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4A01B4(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B6EB0;
  v3 = 0x617243746E656761;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xEC00000064656873;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F4A0200(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4A1E14();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4A02D0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4A03CC()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4A04B4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4A05AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F4A1E68();
  *a2 = result;
  return result;
}

void sub_25F4A05DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0x696D697263736964;
  v5 = 0xE300000000000000;
  v6 = 6580592;
  v7 = 0xED0000726F697661;
  v8 = 0x686542746E656761;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000025F4B6EE0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7065526873617263;
    v3 = 0xEB0000000074726FLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_25F4A0694()
{
  v1 = *v0;
  v2 = 0x696D697263736964;
  v3 = 6580592;
  v4 = 0x686542746E656761;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7065526873617263;
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

uint64_t RemoteEventPayload.propertyListValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD70300, &qword_25F4B53A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17[-v3];
  v5 = sub_25F4A23A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for RemoteEventPayload(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v0;
  v14 = sub_25F4A1684();
  sub_25F4A16D8();
  sub_25F4A25C0();
  sub_25F4A172C(v0, v13, type metadata accessor for RemoteEventPayload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v13, v5);
    (*(v6 + 16))(v4, v9, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    v22 = &type metadata for RemoteEventPayload.Key;
    v23 = v14;
    LOBYTE(v21[0]) = 1;
    sub_25F49FA68();
    sub_25F4A2520();
    sub_25F49FAC0(v4);
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v15 = v13[4];
    v19 = *v13;
    v20 = 0;
    v22 = &type metadata for RemoteEventPayload.Key;
    v23 = v14;
    LOBYTE(v21[0]) = 2;
    sub_25F4A2520();
    __swift_destroy_boxed_opaque_existential_1(v21);
    LOBYTE(v19) = v15;
    v22 = &type metadata for RemoteEventPayload.Key;
    v23 = v14;
    LOBYTE(v21[0]) = 3;
    sub_25F4A1794();
    sub_25F4A2520();
    __swift_destroy_boxed_opaque_existential_1(v21);
    LOBYTE(v19) = v15 == 0;
    v22 = &type metadata for RemoteEventPayload.Key;
    v23 = v14;
    LOBYTE(v21[0]) = 4;
    sub_25F4A2520();
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_25F4A0A80(_BYTE *a1, BOOL *a2, uint64_t a3)
{
  v6 = type metadata accessor for RemoteEventPayload(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F4A172C(a3, v9, type metadata accessor for RemoteEventPayload);
  result = swift_getEnumCaseMultiPayload();
  v11 = result;
  if (result == 1)
  {
    result = sub_25F4A1F00(v9, type metadata accessor for RemoteEventPayload);
  }

  *a2 = v11 == 1;
  return result;
}

uint64_t RemoteEventPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for RemoteEventPayload(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-v10];
  v22 = &type metadata for RemoteEventPayload.Key;
  v12 = sub_25F4A1684();
  v23 = v12;
  LOBYTE(v21[0]) = 0;
  sub_25F4A16D8();
  sub_25F4A2530();
  if (v2)
  {
    v13 = sub_25F4A25E0();
    (*(*(v13 - 8) + 8))(a1, v13);
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    if (v20)
    {
      v22 = &type metadata for RemoteEventPayload.Key;
      v23 = v12;
      LOBYTE(v21[0]) = 1;
      sub_25F4A23A0();
      sub_25F49FA68();
      sub_25F4A2530();
      v15 = sub_25F4A25E0();
      (*(*(v15 - 8) + 8))(a1, v15);
      __swift_destroy_boxed_opaque_existential_1(v21);
      swift_storeEnumTagMultiPayload();
      v16 = v9;
    }

    else
    {
      v22 = &type metadata for RemoteEventPayload.Key;
      v23 = v12;
      LOBYTE(v21[0]) = 3;
      sub_25F4A1794();
      sub_25F4A2580();
      __swift_destroy_boxed_opaque_existential_1(v21);
      v17 = v20;
      if (v20 == 3)
      {
        v22 = &type metadata for RemoteEventPayload.Key;
        v23 = v12;
        LOBYTE(v21[0]) = 4;
        sub_25F4A2530();
        __swift_destroy_boxed_opaque_existential_1(v21);
        if (v20)
        {
          v17 = 0;
        }

        else
        {
          v17 = 2;
        }
      }

      v22 = &type metadata for RemoteEventPayload.Key;
      v23 = v12;
      LOBYTE(v21[0]) = 2;
      sub_25F4A2530();
      v18 = sub_25F4A25E0();
      (*(*(v18 - 8) + 8))(a1, v18);
      __swift_destroy_boxed_opaque_existential_1(v21);
      *v11 = v20;
      v11[4] = v17;
      swift_storeEnumTagMultiPayload();
      v16 = v11;
    }

    return sub_25F4A17E8(v16, a2, type metadata accessor for RemoteEventPayload);
  }
}

uint64_t sub_25F4A0EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F626D79536E6163;
  v4 = 0xEE0065746163696CLL;
  v5 = 0xEB00000000656C62;
  if (v2 != 1)
  {
    v3 = 0x616C696176616E75;
    v4 = 0xEB00000000656C62;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x766F72506C6C6977;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB00000000656469;
  }

  v8 = 0x6F626D79536E6163;
  if (*a2 == 1)
  {
    v5 = 0xEE0065746163696CLL;
  }

  else
  {
    v8 = 0x616C696176616E75;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x766F72506C6C6977;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB00000000656469;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F4A0FE0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4A1098()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4A113C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4A11F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F4A1EB4();
  *a2 = result;
  return result;
}

void sub_25F4A1220(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000656469;
  v3 = *v1;
  v4 = 0xEE0065746163696CLL;
  v5 = 0x6F626D79536E6163;
  if (v3 != 1)
  {
    v5 = 0x616C696176616E75;
    v4 = 0xEB00000000656C62;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x766F72506C6C6977;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_25F4A1294(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4A1DC0();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4A1358()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4A13D4()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4A142C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F4A3170();

  *a2 = v5 != 0;
  return result;
}

void sub_25F4A1480(uint64_t a1@<X8>)
{
  strcpy(a1, "discriminant");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_25F4A14C4()
{
  result = qword_27FD70318;
  if (!qword_27FD70318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70318);
  }

  return result;
}

unint64_t sub_25F4A1518()
{
  result = qword_27FD70320;
  if (!qword_27FD70320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70320);
  }

  return result;
}

uint64_t sub_25F4A156C(uint64_t a1)
{
  v5[3] = &type metadata for RemoteEventPayload.DiagnosticsBehavior.Key;
  v5[4] = sub_25F4A14C4();
  sub_25F4A1518();
  sub_25F4A2530();
  v3 = sub_25F4A25E0();
  (*(*(v3 - 8) + 8))(a1, v3);
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v6;
}

unint64_t sub_25F4A1684()
{
  result = qword_27FD70328;
  if (!qword_27FD70328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70328);
  }

  return result;
}

unint64_t sub_25F4A16D8()
{
  result = qword_27FD70330;
  if (!qword_27FD70330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70330);
  }

  return result;
}

uint64_t sub_25F4A172C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F4A1794()
{
  result = qword_27FD70338;
  if (!qword_27FD70338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70338);
  }

  return result;
}

uint64_t sub_25F4A17E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F4A1854()
{
  result = qword_27FD70340;
  if (!qword_27FD70340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70340);
  }

  return result;
}

uint64_t sub_25F4A18BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4A23A0();
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

uint64_t sub_25F4A193C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_25F4A23A0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25F4A19BC()
{
  v0 = sub_25F4A23A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_25F4A1A14()
{
  sub_25F4A1A88();
  if (v0 <= 0x3F)
  {
    sub_25F4A23A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25F4A1A88()
{
  if (!qword_27FD70368)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD70368);
    }
  }
}

unint64_t sub_25F4A1B60()
{
  result = qword_27FD70370;
  if (!qword_27FD70370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70370);
  }

  return result;
}

unint64_t sub_25F4A1BB8()
{
  result = qword_27FD70378;
  if (!qword_27FD70378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70378);
  }

  return result;
}

unint64_t sub_25F4A1C10()
{
  result = qword_27FD70380;
  if (!qword_27FD70380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70380);
  }

  return result;
}

unint64_t sub_25F4A1C68()
{
  result = qword_27FD70388;
  if (!qword_27FD70388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70388);
  }

  return result;
}

unint64_t sub_25F4A1CC0()
{
  result = qword_27FD70390;
  if (!qword_27FD70390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70390);
  }

  return result;
}

unint64_t sub_25F4A1D18()
{
  result = qword_27FD70398;
  if (!qword_27FD70398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD70398);
  }

  return result;
}

unint64_t sub_25F4A1D6C()
{
  result = qword_27FD703A0;
  if (!qword_27FD703A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD703A0);
  }

  return result;
}

unint64_t sub_25F4A1DC0()
{
  result = qword_27FD703A8;
  if (!qword_27FD703A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD703A8);
  }

  return result;
}

unint64_t sub_25F4A1E14()
{
  result = qword_27FD703B0;
  if (!qword_27FD703B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD703B0);
  }

  return result;
}

uint64_t sub_25F4A1E68()
{
  v0 = sub_25F4A3170();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F4A1EB4()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F4A1F00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}