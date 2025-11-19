void sub_1BC6D11A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC210, &qword_1BC761190);
      v7 = *(sub_1BC759D00() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_1BC759D00() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
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

uint64_t sub_1BC6D1388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD630, &qword_1BC766DE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6D13F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BC6D1420(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1BC6D1468(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BC6D14AC(uint64_t a1)
{
  sub_1BC759FE0();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_1BC6D1C8C(319, &qword_1EDDCDFD8, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BC6D1568(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1BC759FE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0xFD)
  {
    v13 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v13)
  {
    goto LABEL_30;
  }

  v15 = v12 + (v14 & ~v11) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v8 == v13)
      {
        v23 = *(v7 + 48);

        return v23(a1);
      }

      else
      {
        v24 = (a1 + v14) & ~v11;
        if (v10 == v13)
        {
          v25 = *(v9 + 48);

          return v25(v24, v10);
        }

        else
        {
          v26 = *(v24 + v12);
          if (v26 >= 2)
          {
            v27 = (v26 + 2147483646) & 0x7FFFFFFF;
          }

          else
          {
            v27 = -1;
          }

          if (v27 + 1 >= 2)
          {
            return v27;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_30;
  }

LABEL_17:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v12 + (v14 & ~v11) == -1)
  {
    v22 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v21 = v12 + (v14 & ~v11) + 1;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1BC6D17EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1BC759FE0() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0xFD)
  {
    v15 = 253;
  }

  v16 = v12 + v13;
  v17 = v14 + ((v12 + v13) & ~v13) + 1;
  if (a3 <= v15)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v15 < a2)
  {
    v19 = ~v15 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_50:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 == v15)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v25 = &a1[v16] & ~v13;
    if (v11 == v15)
    {
      v26 = *(v10 + 56);

      v26(v25, a2, v11);
    }

    else
    {
      *(v25 + v14) = a2 + 2;
    }
  }
}

unint64_t sub_1BC6D1AE0()
{
  result = qword_1EBCDD650;
  if (!qword_1EBCDD650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD658, &qword_1BC766F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD640, &qword_1BC766DF8);
    sub_1BC759D90();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD638, &qword_1BC766DF0);
    type metadata accessor for _SensitiveContentInPreviousCallTipView();
    sub_1BC633BF8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BC6330EC(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD650);
  }

  return result;
}

void sub_1BC6D1C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_26SensitiveContentAnalysisUI0aB21InPreviousCallTipViewV5Entry33_696580390F2FF1D604A03851C83390A1LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BC6D1CF8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BC6D1D48(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void *sub_1BC6D1D9C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_1BC6D1DBC()
{
  result = qword_1EBCDD690;
  if (!qword_1EBCDD690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD690);
  }

  return result;
}

unint64_t sub_1BC6D1E10()
{
  result = qword_1EBCDD698;
  if (!qword_1EBCDD698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD698);
  }

  return result;
}

unint64_t sub_1BC6D1E74()
{
  result = qword_1EBCDD6D0;
  if (!qword_1EBCDD6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6C0, &qword_1BC767030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD6D0);
  }

  return result;
}

uint64_t sub_1BC6D1EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _SensitiveContentInPreviousCallTipView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6D1F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _SensitiveContentInPreviousCallTipView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6D1FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _SensitiveContentInPreviousCallTipView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BC6CF60C(a1, v6, a2);
}

uint64_t sub_1BC6D2040()
{
  v1 = *(*(sub_1BC759D00() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1BC6CFAB8(v2);
}

uint64_t sub_1BC6D20A4()
{
  v1 = *(type metadata accessor for _SensitiveContentInPreviousCallTipView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B640();
  sub_1BC75B650();
}

uint64_t sub_1BC6D2178()
{
  v1 = *(sub_1BC759EE0() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_1BC6F39FC();
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  v6 = type metadata accessor for DefaultImplementations();
  return (*(v6 + 80))(v5);
}

uint64_t objectdestroy_26Tm()
{
  v1 = type metadata accessor for _SensitiveContentInPreviousCallTipView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 48);

  sub_1BC638C10(*(v5 + 56), *(v5 + 64), *(v5 + 65));
  v10 = (v0 + v3 + *(v1 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v12 = sub_1BC759EE0();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(v10, 1, v12))
      {
        (*(v13 + 8))(v10, v12);
      }
    }
  }

  else
  {
    v14 = *v10;
  }

  v15 = *(v10 + *(type metadata accessor for PolicyProperty(0) + 20));

  v16 = *(v5 + *(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC6D24C0()
{
  v2 = *(type metadata accessor for _SensitiveContentInPreviousCallTipView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC6D05D0(v4, v5, v6, v0 + v3);
}

uint64_t objectdestroy_61Tm()
{
  v1 = type metadata accessor for _SensitiveContentInPreviousCallTipView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 48);

  sub_1BC638C10(*(v6 + 56), *(v6 + 64), *(v6 + 65));
  v11 = (v0 + v3 + *(v1 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v13 = sub_1BC759EE0();
      v14 = *(v13 - 8);
      if (!(*(v14 + 48))(v11, 1, v13))
      {
        (*(v14 + 8))(v11, v13);
      }
    }
  }

  else
  {
    v15 = *v11;
  }

  v16 = *(v11 + *(type metadata accessor for PolicyProperty(0) + 20));

  v17 = *(v6 + *(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC6D279C()
{
  v2 = *(type metadata accessor for _SensitiveContentInPreviousCallTipView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC6CFB9C(v4, v5, v6, v0 + v3);
}

uint64_t sub_1BC6D2864()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD630, &qword_1BC766DE8) - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

uint64_t sub_1BC6D28D8()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for SensitiveContentInPreviousCallTipView.ParticipantDetails() - 8);
  v3 = *(v0 + 32);
  return (*(v0 + 24))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)));
}

unint64_t sub_1BC6D2974()
{
  result = qword_1EBCDD738;
  if (!qword_1EBCDD738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD740, &qword_1BC7670F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD680, &qword_1BC767008);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6D8, &qword_1BC767038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD678, &qword_1BC767000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6B8, &qword_1BC767028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6C0, &qword_1BC767030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD670, &qword_1BC766FF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD668, &qword_1BC766FF0);
    sub_1BC633C54(&qword_1EBCDD6A0, &qword_1EBCDD668, &qword_1BC766FF0);
    sub_1BC635B08();
    swift_getOpaqueTypeConformance2();
    sub_1BC635B5C();
    swift_getOpaqueTypeConformance2();
    sub_1BC651EB8();
    sub_1BC633C54(&qword_1EBCDD6C8, &qword_1EBCDD6B8, &qword_1BC767028);
    sub_1BC6D1E74();
    swift_getOpaqueTypeConformance2();
    sub_1BC635D18();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD738);
  }

  return result;
}

uint64_t static HPKE.Ciphersuite.reportToApple.getter()
{
  v0 = sub_1BC75B960();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BC75B940();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BC75B950();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 104))(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6966518]);
  (*(v6 + 104))(v9, *MEMORY[0x1E6966508], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E6966530], v0);
  return sub_1BC75B920();
}

uint64_t ProgressTracker.__allocating_init(fileCount:sizeLimitInBytes:filesPerMessageLimit:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  ProgressTracker.init(fileCount:sizeLimitInBytes:filesPerMessageLimit:)(a1, a2 & 1, a3, a4 & 1, a5, a6 & 1);
  return v12;
}

uint64_t HPKE.Sender.writeChunkedEncryptedCSV(from:to:progress:chunkSizeInBytes:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v57 = a4;
  v60 = a2;
  v58 = a1;
  v66 = *MEMORY[0x1E69E9840];
  v6 = sub_1BC759680();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BC75BA10();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BC759800();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v62;
  sub_1BC759880();
  if (!v20)
  {
    v53 = v9;
    v52 = v6;
    v54 = v14;
    v55 = v11;
    v62 = v10;
    v21 = v61;
    sub_1BC6D5C98();
    (*(v16 + 16))(v19, a3, v15);
    v22 = sub_1BC6D549C(v19, &selRef_fileHandleForWritingToURL_error_);
    v63 = 0;
    *(&v50 - 2) = MEMORY[0x1EEE9AC00](v22);
    *(&v50 - 1) = &v63;
    v23 = v54;
    v24 = sub_1BC75BA00();
    v50 = &v50;
    MEMORY[0x1EEE9AC00](v24);
    *(&v50 - 4) = v23;
    *(&v50 - 3) = v21;
    *(&v50 - 2) = sub_1BC6D5CE4;
    *(&v50 - 1) = (&v50 - 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD750, &qword_1BC767118);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC761600;
    v26 = *MEMORY[0x1E695DB50];
    *(inited + 32) = *MEMORY[0x1E695DB50];
    v27 = v26;
    sub_1BC6D74AC(inited);
    swift_setDeallocating();
    sub_1BC6D76A0(inited + 32);
    v28 = v53;
    sub_1BC759740();
    v51 = 0;

    v33 = sub_1BC759670();
    v34 = v28;
    v36 = v35;
    v37 = (*(v59 + 8))(v34, v52);
    if (v36)
    {
      v60 = &v50;
      sub_1BC6D7D98(&qword_1EBCDD758, MEMORY[0x1E6966620]);
      *&v65 = 0;
      *(&v65 + 6) = 0;
      sub_1BC75B8E0();
      v64 = xmmword_1BC767100;
      v65 = xmmword_1BC767100;
      sub_1BC6D774C();
      v38 = v51;
      v39 = sub_1BC75B990();
      v51 = v38;
      v29 = v55;
      if (v38)
      {
        sub_1BC6AE140(v64, *(&v64 + 1));
        goto LABEL_4;
      }

      v44 = v39;
      v45 = v40;
      sub_1BC6AE140(v64, *(&v64 + 1));
      v46 = sub_1BC759810();
      v48 = v47;
      *&v65 = v46;
      *(&v65 + 1) = v47;
      sub_1BC6AE090(v46, v47);
      v49 = v51;
      sub_1BC75BF20();
      v51 = v49;
      if (v49)
      {
        sub_1BC6AE140(v65, *(&v65 + 1));
        sub_1BC6AE140(v46, v48);
        sub_1BC6AE140(v44, v45);
        goto LABEL_4;
      }

      sub_1BC6AE140(v65, *(&v65 + 1));
      sub_1BC6AE140(v46, v48);
      sub_1BC6AE140(v44, v45);
      v63 = 1;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v37);
      v41 = v56;
      v42 = v57;
      *(&v50 - 6) = v60;
      *(&v50 - 5) = v41;
      *(&v50 - 4) = v42;
      *(&v50 - 3) = v33;
      *(&v50 - 2) = sub_1BC6D5EEC;
      *(&v50 - 1) = (&v50 - 6);
      v43 = v51;
      (*(*v42 + 264))(v33);
      v51 = v43;
      if (v43)
      {
        v29 = v55;
LABEL_4:
        v30 = *(v29 + 8);
        a3 = v29 + 8;
        v30(v23, v62);
        [v22 closeFile];

        goto LABEL_5;
      }

      v29 = v55;
    }

    sub_1BC75B9F0();
    (*(v29 + 8))(v23, v62);
    a3 = v63;
    [v22 closeFile];
  }

LABEL_5:
  v31 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t HPKE.Sender.encryptChunks(from:ofSize:progress:block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a3;
  v35 = a2;
  v39 = a6;
  v50 = *MEMORY[0x1E69E9840];
  v38 = sub_1BC759680();
  v37 = *(v38 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BC75BA10();
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75BA00();
  v44 = v16;
  v45 = v6;
  v46 = a4;
  v47 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD750, &qword_1BC767118);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC761600;
  v18 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v19 = v18;
  sub_1BC6D74AC(inited);
  swift_setDeallocating();
  sub_1BC6D76A0(inited + 32);
  v20 = v40;
  sub_1BC759740();
  if (v20)
  {

    result = (*(v41 + 8))(v16, v42);
  }

  else
  {
    v40 = a1;
    v34 = a4;

    v23 = sub_1BC759670();
    v25 = v24;
    v26 = (*(v37 + 8))(v12, v38);
    if (v25)
    {
      sub_1BC6D7D98(&qword_1EBCDD758, MEMORY[0x1E6966620]);
      *&v49 = 0;
      *(&v49 + 6) = 0;
      v27 = v42;
      sub_1BC75B8E0();
      v48 = xmmword_1BC767100;
      v49 = xmmword_1BC767100;
      sub_1BC6D774C();
      v30 = sub_1BC75B990();
      v32 = v31;
      sub_1BC6AE140(v48, *(&v48 + 1));
      v34(0, 1, v30, v32);
      sub_1BC6AE140(v30, v32);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v26);
      v28 = v35;
      *(&v33 - 6) = v40;
      *(&v33 - 5) = v28;
      v29 = v36;
      *(&v33 - 4) = v36;
      *(&v33 - 3) = v23;
      *(&v33 - 2) = sub_1BC6D7EC4;
      *(&v33 - 1) = &v43;
      (*(*v29 + 264))(v23);
      v27 = v42;
    }

    sub_1BC75B9F0();
    result = (*(v41 + 8))(v16, v27);
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BC6D39E0(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void, uint64_t, unint64_t))
{
  sub_1BC6AE090(a3, a4);
  sub_1BC6D71EC(a3, a4);
  sub_1BC6AE140(a3, a4);
  sub_1BC6D774C();
  v13 = sub_1BC75B990();
  v15 = v14;
  result = sub_1BC6AE140(0, 0xC000000000000000);
  if (!v7)
  {
    a7(a1, a2 & 1, v13, v15);
    return sub_1BC6AE140(v13, v15);
  }

  return result;
}

uint64_t sub_1BC6D3B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v25 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v7 = sub_1BC759680();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD750, &qword_1BC767118);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC761600;
  v13 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v14 = v13;
  sub_1BC6D74AC(inited);
  swift_setDeallocating();
  sub_1BC6D76A0(inited + 32);
  sub_1BC759740();

  if (!v4)
  {
    v16 = v25;
    v23[1] = 0;
    v17 = sub_1BC759670();
    v19 = v18;
    v20 = (*(v8 + 8))(v11, v7);
    if (v19)
    {
      sub_1BC75BA10();
      sub_1BC6D7D98(&qword_1EBCDD758, MEMORY[0x1E6966620]);
      v26[0] = 0;
      *(v26 + 6) = 0;
      result = sub_1BC75B8E0();
    }

    else
    {
      MEMORY[0x1EEE9AC00](v20);
      v23[-6] = a3;
      v23[-5] = v16;
      v21 = v24;
      v23[-4] = v24;
      v23[-3] = v17;
      v23[-2] = sub_1BC6D7DE0;
      v23[-1] = &v27;
      result = (*(*v21 + 264))(v17, v16, sub_1BC6D7EDC);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void HPKE.Recipient.decryptChunkedEncryptedCSV(_:to:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1BC759800();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC759880();
  if (!v3)
  {
    sub_1BC6D5C98();
    (*(v8 + 16))(v11, a2, v7);
    v12 = sub_1BC6D549C(v11, &selRef_fileHandleForWritingToURL_error_);
    v13 = v12;
    *(&v14 - 2) = MEMORY[0x1EEE9AC00](v12);
    sub_1BC6D3F90(44, 0xE100000000000000, 0x100000, a1, sub_1BC6D77B8, (&v14 - 4), v4);
    [v13 closeFile];
  }
}

void sub_1BC6D3F90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t), uint64_t a6, uint64_t a7)
{
  v113 = a5;
  v114 = a7;
  v112 = a6;
  v103 = a2;
  v102 = a1;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD768, &qword_1BC767120);
  v10 = *(v121 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v101 = &v91 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD770, &qword_1BC767128);
  v13 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v15 = &v91 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD778, &unk_1BC767130);
  v16 = *(v109 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v91 - v18;
  v19 = sub_1BC75BBA0();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v104 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BC759800();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a3;
  if (a3 < 1)
  {
    sub_1BC6D7804();
    swift_allocError();
    *v31 = 2;
    swift_willThrow();
    return;
  }

  v111 = v15;
  sub_1BC6D5C98();
  (*(v23 + 16))(v26, a4, v22);
  v27 = sub_1BC6D549C(v26, &selRef_fileHandleForReadingFromURL_error_);
  v28 = v7;
  if (!v7)
  {
    v29 = v27;
    v119 = 0;
    v120 = 0xE000000000000000;
    v95 = 0xE000000000000000;
    v30 = MEMORY[0x1BFB27470]();
    v32 = sub_1BC75BF10();
    v94 = (v10 + 16);
    v93 = (v10 + 8);
    v91 = (v16 + 8);
    v99 = xmmword_1BC767100;
    v34 = v33;
    v92 = v29;
    while (1)
    {
      objc_autoreleasePoolPop(v30);
      if (v34 >> 60 == 15)
      {
        break;
      }

      v35 = MEMORY[0x1BFB27470]();
      sub_1BC75BB90();
      v36 = sub_1BC75BB70();
      if (!v37)
      {
        sub_1BC6D7804();
        swift_allocError();
        *v82 = 1;
        swift_willThrow();
LABEL_26:
        objc_autoreleasePoolPop(v35);
        sub_1BC6AE12C(v32, v34);
        goto LABEL_27;
      }

      v38 = v37;
      v96 = v35;
      v97 = v34;
      v98 = v32;
      v116 = v102;
      v117 = v103;
      MEMORY[0x1EEE9AC00](v36);
      *(&v91 - 2) = &v116;
      v110 = v39;
      sub_1BC6D6D04(sub_1BC6D7EF4, (&v91 - 4), v39, v38);
      v115 = v28;
      v40 = v101;
      sub_1BC75C760();
      v41 = v111;
      v42 = v121;
      (*v94)(v111, v40, v121);
      v43 = *(v100 + 36);
      sub_1BC633C54(&qword_1EBCDD788, &qword_1EBCDD768, &qword_1BC767120);
      sub_1BC75BE90();
      (*v93)(v40, v42);
      sub_1BC75BEA0();
      if (*(v41 + v43) != v116)
      {
        v59 = 15;
        v105 = v43;
        v106 = v38;
        while (1)
        {
          v60 = sub_1BC75BEC0();
          v62 = *v61;
          v44 = v61[1];
          v60(&v116, 0);
          sub_1BC75BEB0();
          if (v62 >> 14 < v59 >> 14)
          {
            break;
          }

          v63 = sub_1BC75BC50();
          v64 = MEMORY[0x1BFB267B0](v63);
          v66 = v65;

          MEMORY[0x1BFB267E0](v64, v66);

          v67 = HIBYTE(v120) & 0xF;
          if ((v120 & 0x2000000000000000) == 0)
          {
            v67 = v119 & 0xFFFFFFFFFFFFLL;
          }

          if (v67)
          {
            v68 = sub_1BC759830();
            if (v69 >> 60 == 15)
            {
              sub_1BC6D7804();
              swift_allocError();
              *v77 = 1;
              swift_willThrow();
LABEL_25:

              v32 = v98;
              sub_1BC6D7874(v111);
              (*v91)(v108, v109);
              v29 = v92;
              v34 = v97;
              v35 = v96;
              goto LABEL_26;
            }

            v70 = v68;
            v71 = v69;
            v116 = v68;
            v117 = v69;
            v118 = v99;
            sub_1BC6D774C();
            v72 = v115;
            v73 = sub_1BC75B9B0();
            if (v72)
            {
              sub_1BC6AE140(v118, *(&v118 + 1));
              sub_1BC6AE12C(v70, v71);
              goto LABEL_25;
            }

            v75 = v73;
            v76 = v74;
            sub_1BC6AE140(v118, *(&v118 + 1));
            v113(v75, v76);
            v115 = 0;
            sub_1BC6AE140(v75, v76);
            sub_1BC6AE12C(v70, v71);

            v119 = 0;
            v120 = 0xE000000000000000;
            v41 = v111;
          }

          sub_1BC75BEA0();
          v38 = v106;
          v59 = v44;
          if (*(v41 + v105) == v116)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

      v44 = 15;
LABEL_9:
      sub_1BC6D7874(v41);
      v45 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v45 = v110 & 0xFFFFFFFFFFFFLL;
      }

      if (4 * v45 < v44 >> 14)
      {
        goto LABEL_41;
      }

      v46 = sub_1BC75BC50();
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v53 = MEMORY[0x1BFB267B0](v46, v48, v50, v52);
      v55 = v54;

      MEMORY[0x1BFB267E0](v53, v55);

      (*v91)(v108, v109);
      objc_autoreleasePoolPop(v96);
      v56 = sub_1BC6AE12C(v98, v97);
      v30 = MEMORY[0x1BFB27470](v56);
      v29 = v92;
      v57 = v115;
      v32 = sub_1BC75BF10();
      v34 = v58;
      v28 = v57;
      if (v57)
      {
        v95 = v120;
        objc_autoreleasePoolPop(v30);
LABEL_27:

        [v29 closeFile];

        return;
      }
    }

    v78 = HIBYTE(v120) & 0xF;
    if ((v120 & 0x2000000000000000) == 0)
    {
      v78 = v119 & 0xFFFFFFFFFFFFLL;
    }

    if (v78)
    {
      v79 = sub_1BC759830();
      if (v80 >> 60 == 15)
      {
        sub_1BC6D7804();
        swift_allocError();
        *v81 = 1;
        swift_willThrow();
      }

      else
      {
        v83 = v79;
        v116 = v79;
        v117 = v80;
        v84 = v80;
        v118 = v99;
        sub_1BC6D774C();
        v85 = sub_1BC75B9B0();
        if (v28)
        {
          v88 = *(&v118 + 1);
          v87 = v118;
        }

        else
        {
          v89 = v85;
          v90 = v86;
          sub_1BC6AE140(v118, *(&v118 + 1));
          v113(v89, v90);
          v87 = v89;
          v88 = v90;
        }

        sub_1BC6AE140(v87, v88);
        sub_1BC6AE12C(v83, v84);
      }
    }

    goto LABEL_27;
  }
}

void URL.splitUTF8(separator:readSize:block:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v82 = a5;
  v83 = a4;
  v76 = a1;
  v77 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD768, &qword_1BC767120);
  v8 = *(v89 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v75 = &v65 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD770, &qword_1BC767128);
  v11 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v13 = &v65 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD778, &unk_1BC767130);
  v14 = *(v81 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v65 - v16;
  v17 = sub_1BC75BBA0();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v78 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BC759800();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a3;
  if (a3 < 1)
  {
    sub_1BC6D7804();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();
    return;
  }

  sub_1BC6D5C98();
  (*(v21 + 16))(v24, v5, v20);
  v25 = sub_1BC6D549C(v24, &selRef_fileHandleForReadingFromURL_error_);
  if (!v6)
  {
    v26 = v25;
    v87 = 0;
    v88 = 0xE000000000000000;
    v70 = 0xE000000000000000;
    v27 = MEMORY[0x1BFB27470]();
    v29 = sub_1BC75BF10();
    v31 = v30;
    v69 = (v8 + 16);
    v68 = (v8 + 8);
    v66 = (v14 + 8);
    v67 = v26;
    while (1)
    {
      objc_autoreleasePoolPop(v27);
      if (v31 >> 60 == 15)
      {
        break;
      }

      v32 = MEMORY[0x1BFB27470]();
      sub_1BC75BB90();
      v33 = sub_1BC75BB70();
      if (!v34)
      {
        sub_1BC6D7804();
        swift_allocError();
        *v64 = 1;
        swift_willThrow();
        objc_autoreleasePoolPop(v32);
        sub_1BC6AE12C(v29, v31);
LABEL_20:

        [v26 closeFile];

        return;
      }

      v71 = v32;
      v72 = v31;
      v73 = v29;
      v86[0] = v76;
      v86[1] = v77;
      MEMORY[0x1EEE9AC00](v33);
      *(&v65 - 2) = v86;
      v84 = v36;
      v85 = v35;
      sub_1BC6D6D04(sub_1BC6D7858, (&v65 - 4), v36, v35);
      v37 = v75;
      sub_1BC75C760();
      v38 = v89;
      (*v69)(v13, v37, v89);
      v39 = *(v74 + 36);
      sub_1BC633C54(&qword_1EBCDD788, &qword_1EBCDD768, &qword_1BC767120);
      sub_1BC75BE90();
      (*v68)(v37, v38);
      sub_1BC75BEA0();
      if (*&v13[v39] != v86[0])
      {
        v54 = 15;
        while (1)
        {
          v55 = sub_1BC75BEC0();
          v57 = *v56;
          v40 = v56[1];
          v55(v86, 0);
          sub_1BC75BEB0();
          if (v57 >> 14 < v54 >> 14)
          {
            break;
          }

          v58 = sub_1BC75BC50();
          v59 = MEMORY[0x1BFB267B0](v58);
          v61 = v60;

          MEMORY[0x1BFB267E0](v59, v61);

          v62 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v62 = v87 & 0xFFFFFFFFFFFFLL;
          }

          if (v62)
          {
            v83();

            v87 = 0;
            v88 = 0xE000000000000000;
          }

          sub_1BC75BEA0();
          v54 = v40;
          if (*&v13[v39] == v86[0])
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      v40 = 15;
LABEL_9:
      sub_1BC6D7874(v13);
      v41 = HIBYTE(v85) & 0xF;
      if ((v85 & 0x2000000000000000) == 0)
      {
        v41 = v84 & 0xFFFFFFFFFFFFLL;
      }

      if (4 * v41 < v40 >> 14)
      {
        goto LABEL_29;
      }

      v42 = sub_1BC75BC50();
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v49 = MEMORY[0x1BFB267B0](v42, v44, v46, v48);
      v51 = v50;

      MEMORY[0x1BFB267E0](v49, v51);

      (*v66)(v80, v81);
      objc_autoreleasePoolPop(v71);
      v52 = sub_1BC6AE12C(v73, v72);
      v27 = MEMORY[0x1BFB27470](v52);
      v26 = v67;
      v29 = sub_1BC75BF10();
      v31 = v53;
    }

    v63 = HIBYTE(v88) & 0xF;
    if ((v88 & 0x2000000000000000) == 0)
    {
      v63 = v87 & 0xFFFFFFFFFFFFLL;
    }

    if (v63)
    {
      v83();
    }

    goto LABEL_20;
  }
}

_OWORD *HPKE.Recipient.decryptMetadata(fromHPKEEnvelope:recipientPrivateKey:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8E0, &unk_1BC76A9F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC761600;
  sub_1BC75C290();

  *&v17[0] = 0xD00000000000001ELL;
  *(&v17[0] + 1) = 0x80000001BC772FC0;
  v2 = sub_1BC7597D0();
  v3 = v17;
  MEMORY[0x1BFB267E0](v2);

  v4 = v17[0];
  v5 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 32) = v4;
  sub_1BC75C6F0();

  v6 = sub_1BC759820();
  if (!v0)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1BC759530();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_1BC759520();
    sub_1BC6D78DC();
    sub_1BC759510();

    v16[0] = v17[0];
    v16[1] = v17[1];
    v16[2] = v18;
    v16[3] = v19;
    v15 = v18;
    sub_1BC6AE090(v18, *(&v18 + 1));
    sub_1BC6D774C();
    v3 = sub_1BC75B9B0();
    sub_1BC6AE140(0, 0xC000000000000000);
    sub_1BC6AE140(v15, *(&v15 + 1));
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BC761600;
    *(v14 + 56) = v5;
    *(v14 + 32) = 0xD000000000000020;
    *(v14 + 40) = 0x80000001BC772FE0;
    sub_1BC75C6F0();

    sub_1BC6D7930(v16);
    sub_1BC6AE140(v8, v9);
  }

  return v3;
}

id sub_1BC6D549C(uint64_t a1, SEL *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BC759770();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1BC759800();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_1BC759720();

    swift_willThrow();
    v11 = sub_1BC759800();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1BC6D55F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BOOL8, uint64_t, unint64_t), uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v36 = a4;
  v10 = sub_1BC759800();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6D5C98();
  (*(v11 + 16))(v14, a1, v10);
  v15 = sub_1BC6D549C(v14, &selRef_fileHandleForReadingFromURL_error_);
  if (!v6)
  {
    v16 = v15;
    v32 = a3;
    v33 = a2;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = MEMORY[0x1BFB27470]();
      v20 = sub_1BC75BF10();
      v22 = v21;
      objc_autoreleasePoolPop(v19);
      if (v22 >> 60 == 15)
      {
LABEL_20:
        [v16 closeFile];

        return;
      }

      v23 = MEMORY[0x1BFB27470]();
      v24 = v22 >> 62;
      if ((v22 >> 62) > 1)
      {
        v25 = v36;
        if (v24 == 2)
        {
          v28 = *(v20 + 16);
          v27 = *(v20 + 24);
          v29 = v27 - v28;
          if (__OFSUB__(v27, v28))
          {
            goto LABEL_23;
          }

          v26 = __OFADD__(v18, v29);
          v18 += v29;
          if (v26)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v25 = v36;
        if (v24)
        {
          v30 = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_25;
          }

          v26 = __OFADD__(v18, v30);
          v18 += v30;
          if (v26)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v26 = __OFADD__(v18, BYTE6(v22));
          v18 += BYTE6(v22);
          if (v26)
          {
            goto LABEL_24;
          }
        }
      }

      (*(*v32 + 272))();
      v31 = v18 >= v25;
      v34(v17, v31, v20, v22);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      objc_autoreleasePoolPop(v23);
      sub_1BC6AE12C(v20, v22);
      ++v17;
      if (v31)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_1BC6D592C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC6D59F4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1BC6D5A84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC6D5B4C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t ProgressTracker.init(fileCount:sizeLimitInBytes:filesPerMessageLimit:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 16) = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  *(v6 + 24) = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  *(v6 + 32) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 56) = a3;
  *(v6 + 64) = a4 & 1;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6 & 1;
  if (a2)
  {
    v13 = 1;
  }

  else
  {
    v13 = a1;
  }

  [*(v6 + 16) setTotalUnitCount_];
  return v6;
}

unint64_t sub_1BC6D5C98()
{
  result = qword_1EBCDD748;
  if (!qword_1EBCDD748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCDD748);
  }

  return result;
}

unint64_t sub_1BC6D5CE4(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = sub_1BC759810();
  v9 = v8;
  v18 = v7;
  v19 = v8;
  if (a2)
  {
    goto LABEL_11;
  }

  if ((sub_1BC75C5E0() & 1) == 0)
  {
    result = sub_1BC75BA80();
    if (result)
    {
      result = sub_1BC6D6908(0x2CuLL, 0xE100000000000000);
      if ((result & 0x100000000) != 0)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if ((result & 0xFFFFFF80) == 0)
      {
        result = sub_1BC6D6908(0x2CuLL, 0xE100000000000000);
        if ((result & 0x100000000) != 0)
        {
LABEL_21:
          __break(1u);
          return result;
        }

        v11 = result;
        if ((result & 0xFFFFFF00) == 0)
        {
          goto LABEL_8;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  v11 = 10;
LABEL_8:
  if (v9 >> 62 == 2)
  {
    v12 = *(v7 + 24);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD7E8, &qword_1BC7674A8);
  v17 = sub_1BC633C54(&qword_1EBCDD7F0, &qword_1EBCDD7E8, &qword_1BC7674A8);
  LOBYTE(v14) = v11;
  v13 = *__swift_project_boxed_opaque_existential_1(&v14, v16);
  sub_1BC759850();
  __swift_destroy_boxed_opaque_existential_1(&v14);
  v7 = v18;
  v9 = v19;
LABEL_11:
  v14 = v7;
  v15 = v9;
  sub_1BC6AE090(v7, v9);
  sub_1BC6D774C();
  sub_1BC75BF20();
  sub_1BC6AE140(v14, v15);
  result = sub_1BC6AE140(v7, v9);
  if (v3)
  {
    return result;
  }

  if (__OFADD__(*v6, 1))
  {
    goto LABEL_19;
  }

  ++*v6;
  return result;
}

void sub_1BC6D5F34(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  *(v3 + 32) = a2;
  v5 = [objc_opt_self() progressWithTotalUnitCount_];
  [*(v3 + 16) addChild:v5 withPendingUnitCount:1];
  v6 = *(v3 + 24);
  *(v3 + 24) = v5;
  v7 = v5;

  v8 = (*(*v3 + 216))(v18);
  if (__OFADD__(*v9, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v9;
    v10 = v8(v18, 0);
    if ((*(v3 + 48) & 1) == 0)
    {
      v11 = *(v3 + 40);
      v10 = (*(*v3 + 200))(v10);
      if (v11 < v10)
      {
        sub_1BC6D7984();
        swift_allocError();
        *v12 = v11;
        *(v12 + 8) = 0;
LABEL_9:
        swift_willThrow();
LABEL_11:
        [v7 setCompletedUnitCount_];

        return;
      }
    }

    if (*(v3 + 64))
    {
LABEL_10:
      a3(v10);
      goto LABEL_11;
    }

    v13 = *(v3 + 56);
    v10 = (*(*v3 + 224))(v10);
    v14 = *(v3 + 32);
    v15 = __OFADD__(v10, v14);
    v16 = v10 + v14;
    if (!v15)
    {
      if (v13 < v16)
      {
        sub_1BC6D7984();
        swift_allocError();
        *v17 = v13;
        *(v17 + 8) = 1;
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

char *sub_1BC6D615C(uint64_t a1)
{
  result = (*(*v1 + 240))(v10);
  if (__OFADD__(*v4, a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  *v4 += a1;
  (result)(v10, 0);
  result = [v1[3] setCompletedUnitCount_];
  if (v1[8])
  {
    return result;
  }

  v5 = v1[7];
  result = (*(*v1 + 224))(result);
  v6 = v1[4];
  v7 = __OFADD__(result, v6);
  v8 = &result[v6];
  if (v7)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v5 < v8)
  {
    sub_1BC6D7984();
    swift_allocError();
    *v9 = v5;
    *(v9 + 8) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t ProgressTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SHA256Digest.init(readingURL:inChunksOfSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = sub_1BC75BA10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75BA00();
  type metadata accessor for ProgressTracker();
  v10 = swift_allocObject();
  v11 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  *(v10 + 16) = v11;
  v12 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  v13 = v11;
  *(v10 + 24) = [v12 init];
  *(v10 + 32) = 0u;
  *(v10 + 56) = 0;
  *(v10 + 72) = 0u;
  *(v10 + 64) = 1;
  *(v10 + 48) = 1;
  [v13 setTotalUnitCount_];

  v14 = v18[3];
  sub_1BC6D3B00(a2, v10, a1, v9);
  if (v14)
  {
    v15 = sub_1BC759800();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  else
  {

    sub_1BC75B9F0();
    v16 = sub_1BC759800();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BC6D6510(uint64_t a1, id *a2)
{
  result = sub_1BC75BB40();
  *a2 = 0;
  return result;
}

uint64_t sub_1BC6D6588(uint64_t a1, id *a2)
{
  v3 = sub_1BC75BB50();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BC6D6608@<X0>(uint64_t *a1@<X8>)
{
  sub_1BC75BB60();
  v2 = sub_1BC75BB30();

  *a1 = v2;
  return result;
}

uint64_t sub_1BC6D664C()
{
  v1 = *v0;
  v2 = sub_1BC75BB60();
  v3 = MEMORY[0x1BFB26820](v2);

  return v3;
}

uint64_t sub_1BC6D6688()
{
  v1 = *v0;
  sub_1BC75BB60();
  sub_1BC75BBE0();
}

uint64_t sub_1BC6D66DC()
{
  v1 = *v0;
  sub_1BC75BB60();
  sub_1BC75C700();
  sub_1BC75BBE0();
  v2 = sub_1BC75C720();

  return v2;
}

uint64_t sub_1BC6D6750(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1BC75BB60();
  v6 = v5;
  if (v4 == sub_1BC75BB60() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1BC75C5E0();
  }

  return v9 & 1;
}

uint64_t sub_1BC6D67D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1BC75BB30();

  *a2 = v5;
  return result;
}

uint64_t sub_1BC6D6820@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BC75BB60();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1BC6D684C(uint64_t a1)
{
  v2 = sub_1BC6D7D98(&qword_1EBCDD7C8, type metadata accessor for URLResourceKey);
  v3 = sub_1BC6D7D98(&qword_1EBCDD7D0, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1BC6D6908(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1BC6D6A58(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1BC75C280();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1BC75C310() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1BC6D6A58(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1BC6D6AF0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1BC6D6B64(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1BC6D6AF0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1BC6D6C88(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BC6D6B64(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1BC75C310();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1BC6D6C88(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BC75BC30();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1BFB26800](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1BC6D6D04(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v42 = a1;
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = MEMORY[0x1E69E7CC0];
  v34 = 4 * v6;
  while (2)
  {
    v37 = v7;
    v8 = sub_1BC75BC50();
    v9 = v8 >> 14;
    v38 = v10 >> 14;
    if (v8 >> 14 == v10 >> 14)
    {
LABEL_27:

      return sub_1BC75C750();
    }

    v11 = v8;
    while (1)
    {
      v39 = v9;
      v40 = sub_1BC75C130();
      v41 = v12;
      v13 = v42(&v40);
      if (v5)
      {
      }

      v14 = v13;

      if (v14)
      {
        break;
      }

      v11 = sub_1BC75C120();
      v9 = v11 >> 14;
      v5 = 0;
      if (v11 >> 14 == v38)
      {
        goto LABEL_27;
      }
    }

    if (v34 < v39)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      break;
    }

    result = sub_1BC75BC50();
    v17 = v16;
    v19 = v18;
    v20 = result;
    v21 = v19 >> 14;
    v22 = result >> 14;
    if (result >> 14 == v19 >> 14)
    {
      v5 = 0;
    }

    else
    {
      v33 = result >> 14;
      v35 = v19 >> 14;
      while (1)
      {
        v36 = v22;
        v23 = v20;
        v24 = v19;
        v25 = v17;
        v40 = sub_1BC75C130();
        v41 = v26;
        v27 = v42(&v40);

        if ((v27 & 1) == 0)
        {
          break;
        }

        result = sub_1BC75C120();
        v17 = v25;
        v20 = v23;
        v19 = v24;
        v22 = result >> 14;
        v21 = v35;
        v5 = 0;
        if (result >> 14 == v35)
        {
          v22 = v33;
          goto LABEL_18;
        }
      }

      v5 = 0;
      v22 = v33;
      v21 = v36;
    }

LABEL_18:
    if (v21 < v22)
    {
      goto LABEL_31;
    }

    sub_1BC75C140();
    v29 = v28;

    if (v29 >> 14 >= v39)
    {
      v7 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1BC6D70E8(0, *(v37 + 2) + 1, 1, v37);
      }

      v31 = *(v7 + 2);
      v30 = *(v7 + 3);
      if (v31 >= v30 >> 1)
      {
        v7 = sub_1BC6D70E8((v30 > 1), v31 + 1, 1, v7);
      }

      *(v7 + 2) = v31 + 1;
      v32 = &v7[16 * v31];
      *(v32 + 4) = v11;
      *(v32 + 5) = v29;
      if (v29 >> 14 < v34)
      {
        result = sub_1BC75BBF0();
        if (v34 >= result >> 14)
        {
          continue;
        }

        goto LABEL_33;
      }

      return sub_1BC75C750();
    }

    break;
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

char *sub_1BC6D70E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD7D8, &qword_1BC767498);
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

uint64_t sub_1BC6D71EC(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1BC75BA10();
      sub_1BC6D7D98(&qword_1EBCDD758, MEMORY[0x1E6966620]);
      result = sub_1BC75B8E0();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1BC6D73CC(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BC6D73CC(uint64_t a1, uint64_t a2)
{
  result = sub_1BC759620();
  if (!result || (result = sub_1BC759640(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1BC759630();
      sub_1BC75BA10();
      sub_1BC6D7D98(&qword_1EBCDD758, MEMORY[0x1E6966620]);
      return sub_1BC75B8E0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC6D74AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD7E0, &qword_1BC7674A0);
    v3 = sub_1BC75C250();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1BC75BB60();
      sub_1BC75C700();
      v29 = v7;
      sub_1BC75BBE0();
      v9 = sub_1BC75C720();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1BC75BB60();
        v20 = v19;
        if (v18 == sub_1BC75BB60() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1BC75C5E0();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1BC6D76A0(uint64_t a1)
{
  type metadata accessor for URLResourceKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_1EBCDD7A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBCDD7A8);
    }
  }
}

unint64_t sub_1BC6D774C()
{
  result = qword_1EBCDD760;
  if (!qword_1EBCDD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD760);
  }

  return result;
}

uint64_t sub_1BC6D77B8()
{
  v1 = *(v0 + 16);
  sub_1BC6D774C();
  return sub_1BC75BF20();
}

unint64_t sub_1BC6D7804()
{
  result = qword_1EBCDD780;
  if (!qword_1EBCDD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD780);
  }

  return result;
}

uint64_t sub_1BC6D7874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD770, &qword_1BC767128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BC6D78DC()
{
  result = qword_1EBCDD790;
  if (!qword_1EBCDD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD790);
  }

  return result;
}

unint64_t sub_1BC6D7984()
{
  result = qword_1EBCDD798;
  if (!qword_1EBCDD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD798);
  }

  return result;
}

unint64_t sub_1BC6D79DC()
{
  result = qword_1EBCDD7A0;
  if (!qword_1EBCDD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD7A0);
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

uint64_t getEnumTagSinglePayload for ProgressTracker.Error(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProgressTracker.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BC6D7D98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC6D7DE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *(v4 + 16);
  sub_1BC6AE090(a3, a4);
  sub_1BC6D71EC(a3, a4);
  return sub_1BC6AE140(a3, a4);
}

uint64_t sub_1BC6D7E6C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BC75C5E0() & 1;
  }
}

uint64_t sub_1BC6D7F64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1BC759800();
  __swift_allocate_value_buffer(v4, qword_1EBCF4610);
  v5 = __swift_project_value_buffer(v4, qword_1EBCF4610);
  sub_1BC7597E0();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC6D8094()
{
  if (qword_1EDDD1880 != -1)
  {
    swift_once();
  }

  v0 = sub_1BC759800();

  return __swift_project_value_buffer(v0, qword_1EBCF4610);
}

uint64_t sub_1BC6D8388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  if (a1)
  {

    v11 = a6(a1, a2);
    v13 = v12;
  }

  else
  {
    v13 = 0;
    v11 = 1;
  }

  v14 = v11;
  sub_1BC75B220();

  return a7(v14, v13);
}

uint64_t View.clearSensitiveContentCallbacks()()
{
  swift_getKeyPath();
  sub_1BC637F60(v1);
  sub_1BC75B220();

  v2[10] = v1[10];
  v2[11] = v1[11];
  v2[12] = v1[12];
  v2[6] = v1[6];
  v2[7] = v1[7];
  v2[8] = v1[8];
  v2[9] = v1[9];
  v2[2] = v1[2];
  v2[3] = v1[3];
  v2[4] = v1[4];
  v2[5] = v1[5];
  v2[0] = v1[0];
  v2[1] = v1[1];
  return sub_1BC69811C(v2);
}

id sub_1BC6D8538()
{
  if (qword_1EBCEAFC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EBCF4628;

  return v0;
}

uint64_t sub_1BC6D85BC()
{
  if (qword_1EBCEAFD0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BC6D8628()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    v8 = *(v0 + 32);
    sub_1BC63302C(*(v0 + 24));
  }

  else
  {

    sub_1BC75BF70();
    v9 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC6D87A0(v7, v6, 0, sub_1BC635480);
    (*(v2 + 8))(v5, v1);
    return v11;
  }

  return v7;
}

uint64_t sub_1BC6D87A0(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

uint64_t sub_1BC6D87B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC75ABB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD880, &qword_1BC767910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for RemoteView(0);
  sub_1BC660024(v1 + *(v12 + 24), v11, &qword_1EBCDD880, &qword_1BC767910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BC75A830();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1BC75BF70();
    v16 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t RemoteView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD888, &qword_1BC767948);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = type metadata accessor for RemoteView(0);
  v12 = v11[6];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD880, &qword_1BC767910);
  swift_storeEnumTagMultiPayload();
  v13 = v11[7];
  v14 = sub_1BC759AD0();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_1BC660024(v10, v8, &qword_1EBCDD888, &qword_1BC767948);
  sub_1BC75B630();
  sub_1BC66008C(v10, &qword_1EBCDD888, &qword_1BC767948);
  return sub_1BC6D9E2C(a1, a2 + v11[8], type metadata accessor for InterventionConfig);
}

uint64_t RemoteView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RemoteView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *a1 = sub_1BC75ACD0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD898, &qword_1BC767958);
  sub_1BC6D8D4C(v1, a1 + *(v6 + 44));
  sub_1BC6D9DC4(v1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1BC6D9E2C(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for RemoteView);
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8A8, &qword_1BC767978) + 36));
  v10 = v9 + *(sub_1BC75A860() + 20);
  result = sub_1BC75BDF0();
  *v9 = &unk_1BC767970;
  v9[1] = v8;
  return result;
}

uint64_t sub_1BC6D8D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for RemoteView(0);
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v57 = v5;
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for _RemoteView(0);
  v6 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA00, &qword_1BC767BD0);
  v9 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v48 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA08, &qword_1BC767BD8);
  v11 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v54 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDDA10, &qword_1BC767BE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v60 = (&v48 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD888, &qword_1BC767948);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v48 - v18;
  v20 = sub_1BC759AD0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v3 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD890, &qword_1BC767950);
  sub_1BC75B640();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1BC66008C(v19, &qword_1EBCDD888, &qword_1BC767948);
    v26 = sub_1BC75B520();
    v27 = v60;
    *v60 = v26;
    *(v27 + 4) = 256;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B8, &qword_1BC76DEE0);
    sub_1BC6DD810();
    sub_1BC633C54(&qword_1EDDCE160, &qword_1EBCDD2B8, &qword_1BC76DEE0);
    return sub_1BC75AE00();
  }

  else
  {
    v51 = v21;
    v29 = *(v21 + 32);
    v49 = v24;
    v50 = v20;
    v29(v24, v19, v20);
    (*(v21 + 16))(v8, v24, v20);
    v30 = v53;
    v31 = *(v53 + 24);
    v32 = a1 + *(v3 + 32);
    v48 = a1;
    sub_1BC6D9DC4(v32, &v8[v31], type metadata accessor for InterventionConfig);
    *&v62[0] = swift_getKeyPath();
    sub_1BC6A7104(v62);
    v33 = &v8[*(v30 + 20)];
    strcpy(v33, "EXDefaultScene");
    v33[15] = -18;
    v34 = &v8[*(v30 + 28)];
    v35 = v62[11];
    *(v34 + 10) = v62[10];
    *(v34 + 11) = v35;
    *(v34 + 12) = v62[12];
    v34[208] = v63;
    v36 = v62[7];
    *(v34 + 6) = v62[6];
    *(v34 + 7) = v36;
    v37 = v62[9];
    *(v34 + 8) = v62[8];
    *(v34 + 9) = v37;
    v38 = v62[3];
    *(v34 + 2) = v62[2];
    *(v34 + 3) = v38;
    v39 = v62[5];
    *(v34 + 4) = v62[4];
    *(v34 + 5) = v39;
    v40 = v62[1];
    *v34 = v62[0];
    *(v34 + 1) = v40;
    v41 = v58;
    sub_1BC6D9DC4(a1, v58, type metadata accessor for RemoteView);
    v42 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v52 = v13;
    v43 = swift_allocObject();
    sub_1BC6D9E2C(v41, v43 + v42, type metadata accessor for RemoteView);
    sub_1BC6DCA70(&qword_1EBCDD918, type metadata accessor for _RemoteView);
    v44 = v55;
    View.onShowContent(_:)(sub_1BC6DD9B0, v43);

    sub_1BC6DC948(v8, type metadata accessor for _RemoteView);
    sub_1BC6D9DC4(v48, v41, type metadata accessor for RemoteView);
    v45 = swift_allocObject();
    sub_1BC6D9E2C(v41, v45 + v42, type metadata accessor for RemoteView);
    v46 = sub_1BC6DD8C8();
    v47 = v54;
    View.onInterventionHeeded(_:)(sub_1BC6DD9C8, v45, v56, v46);

    sub_1BC66008C(v44, &qword_1EBCDDA00, &qword_1BC767BD0);
    sub_1BC660024(v47, v60, &qword_1EBCDDA08, &qword_1BC767BD8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B8, &qword_1BC76DEE0);
    sub_1BC6DD810();
    sub_1BC633C54(&qword_1EDDCE160, &qword_1EBCDD2B8, &qword_1BC76DEE0);
    sub_1BC75AE00();
    sub_1BC66008C(v47, &qword_1EBCDDA08, &qword_1BC767BD8);
    return (*(v51 + 8))(v49, v50);
  }
}

uint64_t sub_1BC6D953C(uint64_t a1)
{
  v2 = sub_1BC75ABB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC75A830();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6D87B0(v11);
  sub_1BC75A820();
  (*(v8 + 8))(v11, v7);
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*(a1 + 16) != 1)
  {
    v15 = *a1;

    sub_1BC75BF70();
    v16 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC6D87A0(v12, v13, 0, sub_1BC635480);
    result = (*(v3 + 8))(v6, v2);
    v12 = v18;
    if (v18 == 1)
    {
      return result;
    }

    goto LABEL_5;
  }

  v18 = *a1;
  v19 = v13;
  result = sub_1BC63302C(v12);
  if (v12 != 1)
  {
LABEL_5:
    v17[0] = v12;
    v17[1] = v19;
    OnShowContentCallback.callAsFunction()();
    return sub_1BC635484(v17[0]);
  }

  return result;
}

uint64_t (*sub_1BC6D9784())(void)
{
  v0 = sub_1BC75A830();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6D87B0(v4);
  sub_1BC75A820();
  (*(v1 + 8))(v4, v0);
  result = sub_1BC6D8628();
  if (result != 1)
  {
    v6 = result;
    sub_1BC71CC90(result);
    return sub_1BC635468(v6);
  }

  return result;
}

uint64_t sub_1BC6D9884(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD888, &qword_1BC767948) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[4] = v3;
  v1[5] = sub_1BC75BDE0();
  v1[6] = sub_1BC75BDD0();
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_1BC6D9980;

  return sub_1BC6C6640(v3);
}

uint64_t sub_1BC6D9980()
{
  v2 = v0;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 64) = v2;

  v7 = sub_1BC75BD80();
  if (v2)
  {
    v8 = sub_1BC6D9C08;
  }

  else
  {
    v8 = sub_1BC6D9ADC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BC6D9ADC()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v5 = sub_1BC759AD0();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  v6 = *(type metadata accessor for RemoteView(0) + 28);
  sub_1BC660024(v2, v3, &qword_1EBCDD888, &qword_1BC767948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD890, &qword_1BC767950);
  sub_1BC75B650();
  sub_1BC66008C(v2, &qword_1EBCDD888, &qword_1BC767948);
  v8 = v0[3];
  v7 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BC6D9C08()
{
  v1 = v0[6];

  if (qword_1EBCEB060 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = sub_1BC75A4E0();
  __swift_project_value_buffer(v3, qword_1EBCF4638);
  v4 = v2;
  v5 = sub_1BC75A4C0();
  v6 = sub_1BC75BF60();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[8];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BC630000, v5, v6, "Failed to get extension identity %@", v9, 0xCu);
    sub_1BC66008C(v10, &qword_1EBCDE130, &qword_1BC7679C0);
    MEMORY[0x1BFB27EF0](v10, -1, -1);
    MEMORY[0x1BFB27EF0](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[3];
  v13 = v0[4];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1BC6D9DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6D9E2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6D9E94()
{
  v2 = *(type metadata accessor for RemoteView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC6D9884(v0 + v3);
}

uint64_t sub_1BC6D9F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  *a2 = sub_1BC75ACD0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD898, &qword_1BC767958);
  sub_1BC6D8D4C(v2, a2 + *(v6 + 44));
  sub_1BC6D9DC4(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1BC6D9E2C(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for RemoteView);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8A8, &qword_1BC767978) + 36));
  v10 = v9 + *(sub_1BC75A860() + 20);
  result = sub_1BC75BDF0();
  *v9 = &unk_1BC767B90;
  v9[1] = v8;
  return result;
}

uint64_t sub_1BC6DA0F8@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_1BC75ABB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = (v1 + *(type metadata accessor for _RemoteView(0) + 28));
  v9 = v8[11];
  v10 = v8[9];
  v75 = v8[10];
  v76 = v9;
  v11 = v8[11];
  v77 = v8[12];
  v12 = v8[7];
  v13 = v8[5];
  v71 = v8[6];
  v72 = v12;
  v14 = v8[7];
  v15 = v8[9];
  v73 = v8[8];
  v74 = v15;
  v16 = v8[3];
  v17 = v8[1];
  v67 = v8[2];
  v68 = v16;
  v18 = v8[3];
  v19 = v8[5];
  v69 = v8[4];
  v70 = v19;
  v20 = v8[1];
  v65 = *v8;
  v66 = v20;
  v79[10] = v75;
  v79[11] = v11;
  v79[12] = v8[12];
  v79[6] = v71;
  v79[7] = v14;
  v79[8] = v73;
  v79[9] = v10;
  v79[2] = v67;
  v79[3] = v18;
  v79[4] = v69;
  v79[5] = v13;
  v78 = *(v8 + 208);
  v80 = *(v8 + 208);
  v79[0] = v65;
  v79[1] = v17;
  if (sub_1BC6A78D4(v79) == 1)
  {
    nullsub_1(v79);
    v47 = v75;
    v48 = v76;
    v49 = v77;
    v50 = v78;
    v43 = v71;
    v44 = v72;
    v45 = v73;
    v46 = v74;
    v39 = v67;
    v40 = v68;
    v41 = v69;
    v42 = v70;
    v37 = v65;
    v38 = v66;
    v21 = nullsub_1(&v37);
    *a1 = *v21;
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[4];
    a1[3] = v21[3];
    a1[4] = v24;
    a1[1] = v22;
    a1[2] = v23;
    v25 = v21[5];
    v26 = v21[6];
    v27 = v21[8];
    a1[7] = v21[7];
    a1[8] = v27;
    a1[5] = v25;
    a1[6] = v26;
    v28 = v21[9];
    v29 = v21[10];
    v30 = v21[12];
    a1[11] = v21[11];
    a1[12] = v30;
    a1[9] = v28;
    a1[10] = v29;
    v64 = v78;
    v62 = v76;
    v63 = v77;
    v60 = v74;
    v61 = v75;
    v58 = v72;
    v59 = v73;
    v56 = v70;
    v57 = v71;
    v54 = v68;
    v55 = v69;
    v52 = v66;
    v53 = v67;
    v51 = v65;
    v31 = nullsub_1(&v51);
    return sub_1BC6362BC(v31, v36);
  }

  else
  {
    nullsub_1(v79);
    v47 = v75;
    v48 = v76;
    v49 = v77;
    v50 = v78;
    v43 = v71;
    v44 = v72;
    v45 = v73;
    v46 = v74;
    v39 = v67;
    v40 = v68;
    v41 = v69;
    v42 = v70;
    v37 = v65;
    v38 = v66;
    v33 = *nullsub_1(&v37);
    v51 = v65;
    v52 = v66;
    v55 = v69;
    v56 = v70;
    v53 = v67;
    v54 = v68;
    v59 = v73;
    v60 = v74;
    v57 = v71;
    v58 = v72;
    v64 = v78;
    v62 = v76;
    v63 = v77;
    v61 = v75;
    v34 = *nullsub_1(&v51);

    sub_1BC75BF70();
    v35 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC66008C(&v65, &qword_1EBCDD8B0, &qword_1BC764368);
    return (*(v4 + 8))(v7, v3);
  }
}

id sub_1BC6DA468(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_connection;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  sub_1BC6D9DC4(a1, &v3[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_config], type metadata accessor for RemoteView.Config);
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1BC6DC948(a1, type metadata accessor for RemoteView.Config);
  return v6;
}

void sub_1BC6DA558(void *a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8C0, &qword_1BC7679B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &aBlock[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &aBlock[-1] - v10;
  aBlock[0] = 0;
  v12 = [a1 makeXPCConnectionWithError_];
  v13 = aBlock[0];
  if (v12)
  {
    sub_1BC6DC408();
    v14 = v13;
    sub_1BC75A0B0();
    aBlock[0] = v1;
    v15 = v1;
    v16 = sub_1BC75A0C0();
    sub_1BC75A080();

    (*(v8 + 16))(v6, v11, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    v17 = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_connection;
    swift_beginAccess();
    sub_1BC6DC45C(v6, v15 + v17);
    swift_endAccess();
    v18 = sub_1BC75A0C0();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BC6DC4CC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BC67768C;
    aBlock[3] = &block_descriptor_2;
    v20 = _Block_copy(aBlock);

    [v18 setInvalidationHandler_];
    _Block_release(v20);

    sub_1BC75A0E0();
    v21 = aBlock[0];
    v22 = sub_1BC7595D0();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_1BC7595C0();
    type metadata accessor for RemoteView.Config();
    sub_1BC6DCA70(&qword_1EBCDD8D8, type metadata accessor for RemoteView.Config);
    v35 = sub_1BC7595A0();
    v37 = v36;

    v38 = sub_1BC759860();
    sub_1BC6AE140(v35, v37);
    [v21 configureRemoteViewWith_];
    swift_unknownObjectRelease();

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v25 = aBlock[0];
    v26 = sub_1BC759720();

    swift_willThrow();
    if (qword_1EBCEB060 != -1)
    {
      swift_once();
    }

    v27 = sub_1BC75A4E0();
    __swift_project_value_buffer(v27, qword_1EBCF4638);
    v28 = v26;
    v29 = sub_1BC75A4C0();
    v30 = sub_1BC75BF60();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = v26;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_1BC630000, v29, v30, "Failed to establish XPC connection with SCARemoteView: %@", v31, 0xCu);
      sub_1BC66008C(v32, &qword_1EBCDE130, &qword_1BC7679C0);
      MEMORY[0x1BFB27EF0](v32, -1, -1);
      MEMORY[0x1BFB27EF0](v31, -1, -1);
    }

    else
    {
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BC6DAAE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  if (qword_1EBCEB060 != -1)
  {
    swift_once();
  }

  v6 = sub_1BC75A4E0();
  __swift_project_value_buffer(v6, qword_1EBCF4638);
  v7 = sub_1BC75A4C0();
  v8 = sub_1BC75BF60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BC630000, v7, v8, "Connection invalidated, forcing intervention heeded...", v9, 2u);
    MEMORY[0x1BFB27EF0](v9, -1, -1);
  }

  v10 = sub_1BC75BE10();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_1BC75BDE0();

  v11 = sub_1BC75BDD0();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a1;
  sub_1BC6DAF18(0, 0, v5, &unk_1BC767BA8, v12);
}

uint64_t sub_1BC6DACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a1;
  v4[32] = a4;
  v5 = *(*(type metadata accessor for RemoteView.Config() - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  sub_1BC75BDE0();
  v4[34] = sub_1BC75BDD0();
  v7 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC6DAD84, v7, v6);
}

uint64_t sub_1BC6DAD84()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    v5 = *(v0 + 264);
    sub_1BC6D9DC4(Strong + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_config, v5, type metadata accessor for RemoteView.Config);
    v6 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0) + 48));
    *(v0 + 16) = *v6;
    v7 = v6[9];
    v8 = v6[10];
    v9 = v6[12];
    *(v0 + 192) = v6[11];
    *(v0 + 208) = v9;
    *(v0 + 160) = v7;
    *(v0 + 176) = v8;
    v10 = v6[5];
    v11 = v6[6];
    v12 = v6[8];
    *(v0 + 128) = v6[7];
    *(v0 + 144) = v12;
    *(v0 + 96) = v10;
    *(v0 + 112) = v11;
    v13 = v6[1];
    v14 = v6[2];
    v15 = v6[4];
    *(v0 + 64) = v6[3];
    *(v0 + 80) = v15;
    *(v0 + 32) = v13;
    *(v0 + 48) = v14;
    sub_1BC6DC948(v5, type metadata accessor for InterventionConfig);
    v16 = *(v0 + 32);
    if (v16 == 1)
    {

      sub_1BC69811C(v0 + 16);
    }

    else
    {
      v17 = *(v0 + 40);
      sub_1BC635800(*(v0 + 32));
      sub_1BC71CC90(v16);

      sub_1BC69811C(v0 + 16);
      sub_1BC635468(v16);
    }
  }

  v18 = *(v0 + 264);
  **(v0 + 248) = v4 == 0;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1BC6DAF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1BC660024(a3, v27 - v11, &qword_1EBCDBB20, &qword_1BC75F0D0);
  v13 = sub_1BC75BE10();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1BC66008C(v12, &qword_1EBCDBB20, &qword_1BC75F0D0);
  }

  else
  {
    sub_1BC75BE00();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1BC75BD80();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1BC75BBC0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD9F8, &qword_1BC767BC0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1BC66008C(a3, &qword_1EBCDBB20, &qword_1BC75F0D0);

      return v24;
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

  sub_1BC66008C(a3, &qword_1EBCDBB20, &qword_1BC75F0D0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD9F8, &qword_1BC767BC0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1BC6DB304()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8E0, &unk_1BC76A9F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC761600;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000015;
  *(v0 + 40) = 0x80000001BC773180;
  sub_1BC75C6F0();
}

uint64_t sub_1BC6DB458()
{
  v1 = type metadata accessor for RemoteView.Config();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6D9DC4(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_config, v4, type metadata accessor for RemoteView.Config);
  v5 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0) + 48)];
  v6 = *(v5 + 11);
  v42 = *(v5 + 10);
  v43 = v6;
  v44 = *(v5 + 12);
  v7 = *(v5 + 7);
  v38 = *(v5 + 6);
  v39 = v7;
  v8 = *(v5 + 9);
  v40 = *(v5 + 8);
  v41 = v8;
  v9 = *(v5 + 5);
  v36 = *(v5 + 4);
  v37 = v9;
  v10 = *(v5 + 3);
  v34 = *(v5 + 2);
  v35 = v10;
  v11 = *(v5 + 1);
  v32 = *v5;
  v33 = v11;
  sub_1BC6DC948(v4, type metadata accessor for InterventionConfig);
  v12 = sub_1BC759530();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1BC759520();
  sub_1BC6DC9A8();
  sub_1BC759510();

  v15 = v19;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v19 = v32;
  v20 = v33;
  v18 = v15;
  Callbacks.handleXPCMessage(_:)(&v18);
  return sub_1BC69811C(&v32);
}

id _RemoteView.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _RemoteView.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _RemoteView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _RemoteView.makeCoordinator()()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for RemoteView.Config();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0) + 48)];
  v11 = type metadata accessor for _RemoteView(0);
  sub_1BC6D9DC4(v0 + *(v11 + 24), v9, type metadata accessor for InterventionConfig);
  v12 = (v0 + *(v11 + 28));
  v13 = v12[11];
  v14 = v12[9];
  v69 = v12[10];
  v70 = v13;
  v15 = v12[11];
  v71 = v12[12];
  v16 = v12[7];
  v17 = v12[5];
  v65 = v12[6];
  v66 = v16;
  v18 = v12[7];
  v19 = v12[9];
  v67 = v12[8];
  v68 = v19;
  v20 = v12[3];
  v21 = v12[1];
  v61 = v12[2];
  v62 = v20;
  v22 = v12[3];
  v23 = v12[5];
  v63 = v12[4];
  v64 = v23;
  v24 = v12[1];
  v59 = *v12;
  v60 = v24;
  v73[10] = v69;
  v73[11] = v15;
  v73[12] = v12[12];
  v73[6] = v65;
  v73[7] = v18;
  v73[8] = v67;
  v73[9] = v14;
  v73[2] = v61;
  v73[3] = v22;
  v73[4] = v63;
  v73[5] = v17;
  v72 = *(v12 + 208);
  v74 = *(v12 + 208);
  v73[0] = v59;
  v73[1] = v21;
  if (sub_1BC6A78D4(v73) == 1)
  {
    nullsub_1(v73);
    v55 = v69;
    v56 = v70;
    v57 = v71;
    v58 = v72;
    v51 = v65;
    v52 = v66;
    v53 = v67;
    v54 = v68;
    v47 = v61;
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v45 = v59;
    v46 = v60;
    v25 = nullsub_1(&v45);
    *v10 = *v25;
    v26 = v25[4];
    v28 = v25[1];
    v27 = v25[2];
    v10[3] = v25[3];
    v10[4] = v26;
    v10[1] = v28;
    v10[2] = v27;
    v29 = v25[8];
    v31 = v25[5];
    v30 = v25[6];
    v10[7] = v25[7];
    v10[8] = v29;
    v10[5] = v31;
    v10[6] = v30;
    v32 = v25[12];
    v34 = v25[9];
    v33 = v25[10];
    v10[11] = v25[11];
    v10[12] = v32;
    v10[9] = v34;
    v10[10] = v33;
    sub_1BC6362BC(v25, v43);
  }

  else
  {
    nullsub_1(v73);
    v55 = v69;
    v56 = v70;
    v57 = v71;
    v58 = v72;
    v51 = v65;
    v52 = v66;
    v53 = v67;
    v54 = v68;
    v47 = v61;
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v45 = v59;
    v46 = v60;
    v35 = *nullsub_1(&v45);

    sub_1BC75BF70();
    v36 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC66008C(&v59, &qword_1EBCDD8B0, &qword_1BC764368);
    (*(v2 + 8))(v5, v1);
  }

  v37 = type metadata accessor for _RemoteView.Coordinator(0);
  v38 = objc_allocWithZone(v37);
  v39 = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_connection;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  (*(*(v40 - 8) + 56))(&v38[v39], 1, 1, v40);
  sub_1BC6D9DC4(v9, &v38[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_config], type metadata accessor for RemoteView.Config);
  v44.receiver = v38;
  v44.super_class = v37;
  v41 = objc_msgSendSuper2(&v44, sel_init);
  sub_1BC6DC948(v9, type metadata accessor for RemoteView.Config);
  return v41;
}

id _RemoteView.makeViewController(context:)()
{
  v1 = sub_1BC759AD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8F8, &qword_1BC7679C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  type metadata accessor for HostViewController();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v2 + 16))(v5, v0, v1);
  v11 = (v0 + *(type metadata accessor for _RemoteView(0) + 20));
  v12 = *v11;
  v13 = v11[1];
  v14 = v10;

  sub_1BC75BFA0();
  v15 = sub_1BC75BFB0();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  sub_1BC75BFC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD900, &qword_1BC7679D0);
  sub_1BC75AFB0();
  v16 = v19;
  [v14 setDelegate_];

  return v14;
}

uint64_t sub_1BC6DBF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC6DCA70(&unk_1EBCDD9E8, type metadata accessor for _RemoteView);

  return ViewControllerRepresentableType.makeUIViewController(context:)(a1, a2, v4);
}

uint64_t sub_1BC6DBFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6DCA70(&unk_1EBCDD9E8, type metadata accessor for _RemoteView);

  return ViewControllerRepresentableType.updateUIViewController(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_1BC6DC060@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for RemoteView.Config();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0) + 48);
  sub_1BC6D9DC4(v2 + *(a1 + 24), v8, type metadata accessor for InterventionConfig);
  sub_1BC6DA0F8(&v8[v9]);
  v10 = type metadata accessor for _RemoteView.Coordinator(0);
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_connection;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  sub_1BC6D9DC4(v8, &v11[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_config], type metadata accessor for RemoteView.Config);
  v16.receiver = v11;
  v16.super_class = v10;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  result = sub_1BC6DC948(v8, type metadata accessor for RemoteView.Config);
  *a2 = v14;
  return result;
}

uint64_t sub_1BC6DC1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6DCA70(&qword_1EBCDD910, type metadata accessor for _RemoteView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BC6DC280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6DCA70(&qword_1EBCDD910, type metadata accessor for _RemoteView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BC6DC314()
{
  sub_1BC6DCA70(&qword_1EBCDD910, type metadata accessor for _RemoteView);
  sub_1BC75AF80();
  __break(1u);
}

uint64_t sub_1BC6DC36C()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF4638);
  __swift_project_value_buffer(v0, qword_1EBCF4638);
  return sub_1BC75A4D0();
}

unint64_t sub_1BC6DC408()
{
  result = qword_1EBCDD8D0;
  if (!qword_1EBCDD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD8D0);
  }

  return result;
}

uint64_t sub_1BC6DC45C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8C0, &qword_1BC7679B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC6DC4EC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1BC6DC5E0;

  return v6(v2 + 32);
}

uint64_t sub_1BC6DC5E0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1BC6DC6F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8C0, &qword_1BC7679B8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16[-v12];
  v14 = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator_connection;
  swift_beginAccess();
  sub_1BC660024(v1 + v14, v13, &unk_1EBCDD8C0, &qword_1BC7679B8);
  if ((*(v3 + 48))(v13, 1, v2))
  {
    sub_1BC66008C(v13, &unk_1EBCDD8C0, &qword_1BC7679B8);
  }

  else
  {
    (*(v3 + 16))(v6, v13, v2);
    sub_1BC66008C(v13, &unk_1EBCDD8C0, &qword_1BC7679B8);
    sub_1BC75A0D0();
    (*(v3 + 8))(v6, v2);
  }

  (*(v3 + 56))(v11, 1, 1, v2);
  swift_beginAccess();
  sub_1BC6DC45C(v11, v1 + v14);
  return swift_endAccess();
}

uint64_t sub_1BC6DC948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC6DC9A8()
{
  result = qword_1EBCDD8F0;
  if (!qword_1EBCDD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD8F0);
  }

  return result;
}

uint64_t sub_1BC6DCA18(uint64_t a1)
{
  result = sub_1BC6DCA70(&qword_1EBCDD910, type metadata accessor for _RemoteView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BC6DCA70(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BC6DCB28()
{
  sub_1BC6DCF94(319, qword_1EDDCE810, &qword_1EBCDC480, &unk_1BC761B50, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1BC6DCF94(319, &qword_1EBCDD930, &qword_1EBCDD938, &qword_1BC767B40, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1BC6DCC78();
      if (v2 <= 0x3F)
      {
        sub_1BC6DCF94(319, &qword_1EBCDD948, &qword_1EBCDD888, &qword_1BC767948, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for InterventionConfig(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BC6DCC78()
{
  if (!qword_1EBCDD940)
  {
    sub_1BC75A830();
    v0 = sub_1BC75A720();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDD940);
    }
  }
}

void sub_1BC6DCCF8()
{
  sub_1BC759AD0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for InterventionConfig(319);
    if (v1 <= 0x3F)
    {
      sub_1BC6A8C64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BC6DCDA4()
{
  v0 = type metadata accessor for InterventionConfig(319);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8);
    swift_getTupleTypeLayout2();
    v5[4] = v5;
    sub_1BC6DCF94(319, &qword_1EBCDD9C0, &qword_1EBCDD8B8, &qword_1BC7679B0, MEMORY[0x1E69E6720]);
    if (v4 <= 0x3F)
    {
      v5[5] = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BC6DCF94(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BC6DCFF8()
{
  result = qword_1EBCDD9C8;
  if (!qword_1EBCDD9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD8A8, &qword_1BC767978);
    sub_1BC633C54(&qword_1EBCDD9D0, &unk_1EBCDD9D8, &qword_1BC767B88);
    sub_1BC6DCA70(qword_1EDDCEEC0, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD9C8);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for RemoteView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1BC6D87A0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), sub_1BC635480);
  sub_1BC6D87A0(*(v5 + 24), *(v5 + 32), *(v5 + 40), sub_1BC635480);
  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD880, &qword_1BC767910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1BC75A830();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v5 + v1[7];
  v10 = sub_1BC759AD0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD890, &qword_1BC767950) + 28));

  v13 = (v5 + v1[8]);
  type metadata accessor for InterventionConfig.Layout(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload > 1)
      {
        goto LABEL_20;
      }

      v15 = sub_1BC759CA0();
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v15 = sub_1BC759DE0();
LABEL_14:
      (*(*(v15 - 8) + 8))(v13, v15);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
LABEL_18:
      v20 = *v13;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 7)
    {
      goto LABEL_20;
    }

    v18 = *v13;

    v19 = v13[1];
  }

  else
  {
    v16 = sub_1BC759D00();
    (*(*(v16 - 8) + 8))(v13, v16);
    v17 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
  }

LABEL_19:

LABEL_20:
  v21 = type metadata accessor for InterventionConfig(0);
  v22 = v21[5];
  v23 = sub_1BC759EE0();
  v24 = *(*(v23 - 8) + 8);
  v24(v13 + v22, v23);
  v25 = *(v13 + v21[7]);

  v26 = v13 + v21[8];
  v27 = sub_1BC759940();
  (*(*(v27 - 8) + 8))(v26, v27);
  v28 = type metadata accessor for AnalyticsUIContext(0);
  v29 = *&v26[v28[5] + 8];

  v24(&v26[v28[6]], v23);
  v30 = v28[12];
  v31 = sub_1BC759C70();
  (*(*(v31 - 8) + 8))(&v26[v30], v31);
  v32 = *&v26[v28[13]];

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1BC6DD534()
{
  v2 = *(type metadata accessor for RemoteView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC6D9884(v0 + v3);
}

uint64_t sub_1BC6DD600(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BC660280;

  return sub_1BC6DACC0(a1, v5, v6, v4);
}

uint64_t sub_1BC6DD6A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BC660280;

  return sub_1BC6DC4EC(a1, v5);
}

uint64_t sub_1BC6DD758(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BC65281C;

  return sub_1BC6DC4EC(a1, v5);
}

unint64_t sub_1BC6DD810()
{
  result = qword_1EBCDDA20;
  if (!qword_1EBCDDA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDA08, &qword_1BC767BD8);
    sub_1BC6DD8C8();
    sub_1BC633C54(&qword_1EDDCE7A0, &qword_1EBCDD800, &qword_1BC7677E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDA20);
  }

  return result;
}

unint64_t sub_1BC6DD8C8()
{
  result = qword_1EBCDDA28;
  if (!qword_1EBCDDA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDA00, &qword_1BC767BD0);
    sub_1BC6DCA70(&qword_1EBCDD918, type metadata accessor for _RemoteView);
    sub_1BC633C54(&unk_1EDDCEEB0, &qword_1EBCDD7F8, &qword_1BC7677E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDA28);
  }

  return result;
}

uint64_t sub_1BC6DD9E0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RemoteView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t InterventionConfig.Layout.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1BC759D00();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BC759DE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC759CA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InterventionConfig.Layout(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BC6E6C80(v1, v19, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v24 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
        v26 = v50;
        v25 = v51;
        (*(v50 + 32))(v5, v19, v51);
        v52 = 0;
        v53 = 0xE000000000000000;
        sub_1BC75C290();
        v27 = 0x4364656E696F6A2ELL;
        v28 = 0xEC000000286C6C61;
        goto LABEL_17;
      }

      v46 = *v19;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_1BC75C290();

      v52 = 0xD00000000000001BLL;
      v53 = 0x80000001BC773220;
      v31 = sub_1BC759FE0();
      v30 = v46;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v33 = *v19;
      v32 = v19[1];
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_1BC75C290();

      v52 = 0xD00000000000001BLL;
      v53 = 0x80000001BC773220;
      v34 = MEMORY[0x1BFB268F0](v33, v51);
      v36 = v35;

      MEMORY[0x1BFB267E0](v34, v36);

      MEMORY[0x1BFB267E0](8236, 0xE200000000000000);
      v37 = sub_1BC759FE0();
      v38 = MEMORY[0x1BFB268F0](v32, v37);
      v40 = v39;

      v41 = v38;
LABEL_23:
      MEMORY[0x1BFB267E0](v41, v40);

      MEMORY[0x1BFB267E0](41, 0xE100000000000000);
      return v52;
    }

    if (EnumCaseMultiPayload == 8)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          (*(v7 + 32))(v10, v19, v6);
          v52 = 0;
          v53 = 0xE000000000000000;
          sub_1BC75C290();
          MEMORY[0x1BFB267E0](0xD000000000000019, 0x80000001BC773260);
          sub_1BC75C3A0();
          MEMORY[0x1BFB267E0](41, 0xE100000000000000);
          v21 = v52;
          (*(v7 + 8))(v10, v6);
          return v21;
        }

        v24 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
        v26 = v50;
        v25 = v51;
        (*(v50 + 32))(v5, v19, v51);
        v52 = 0;
        v53 = 0xE000000000000000;
        sub_1BC75C290();
        v27 = 0xD000000000000011;
        v28 = 0x80000001BC773240;
LABEL_17:
        MEMORY[0x1BFB267E0](v27, v28);
        sub_1BC75C3A0();
        MEMORY[0x1BFB267E0](8236, 0xE200000000000000);
        v42 = sub_1BC759FE0();
        v43 = MEMORY[0x1BFB268F0](v24, v42);
        v45 = v44;

        MEMORY[0x1BFB267E0](v43, v45);

        MEMORY[0x1BFB267E0](41, 0xE100000000000000);
        v21 = v52;
        (*(v26 + 8))(v5, v25);
        return v21;
      }

      v29 = *v19;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_1BC75C290();

      v52 = 0xD000000000000015;
      v53 = 0x80000001BC773280;
      v30 = v29;
      v31 = v6;
LABEL_22:
      v47 = MEMORY[0x1BFB268F0](v30, v31);
      v40 = v48;

      v41 = v47;
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload)
    {
      (*(v12 + 32))(v15, v19, v11);
      v52 = 0;
      v53 = 0xE000000000000000;
      v22 = 0x697669656365722ELL;
      v23 = 0xEB0000000028676ELL;
    }

    else
    {
      (*(v12 + 32))(v15, v19, v11);
      v52 = 0;
      v53 = 0xE000000000000000;
      v22 = 0x676E69646E65732ELL;
      v23 = 0xE900000000000028;
    }

    MEMORY[0x1BFB267E0](v22, v23);
    sub_1BC75C3A0();
    MEMORY[0x1BFB267E0](41, 0xE100000000000000);
    v21 = v52;
    (*(v12 + 8))(v15, v11);
  }

  return v21;
}

uint64_t sub_1BC6DE188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v13, v19, v8);
    sub_1BC6E6674(v32, v33);
    v26 = sub_1BC75BAB0();
    v27 = *v22;
    (*v22)(v13, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC6DE38C(uint64_t a1)
{
  v2 = sub_1BC6E680C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6DE3C8(uint64_t a1)
{
  v2 = sub_1BC6E680C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BC6DE404(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v1 = 0x614364656E696F6ALL;
    v5 = 0xD000000000000019;
    if (a1 != 8)
    {
      v5 = 0x6F54676E69797274;
    }

    if (a1 != 7)
    {
      v1 = v5;
    }

    v3 = 0xD000000000000017;
    if (a1 != 5)
    {
      v3 = 0x6956676E69727564;
    }

    v4 = a1 <= 6u;
  }

  else
  {
    v1 = 0x676E69646E6573;
    v2 = 0x6E69766965636572;
    if (a1 != 3)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1)
    {
      v3 = 0xD000000000000013;
    }

    v4 = a1 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BC6DE564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC6E6CE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC6DE58C(uint64_t a1)
{
  v2 = sub_1BC6E6464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6DE5C8(uint64_t a1)
{
  v2 = sub_1BC6E6464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC6DE604(uint64_t a1)
{
  v2 = sub_1BC6E6764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6DE640(uint64_t a1)
{
  v2 = sub_1BC6E6764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BC6DE67C()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1BC6DE6B4(uint64_t a1)
{
  v2 = sub_1BC6E6710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6DE6F0(uint64_t a1)
{
  v2 = sub_1BC6E6710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC6DE72C(uint64_t a1)
{
  v2 = sub_1BC6E69BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6DE768(uint64_t a1)
{
  v2 = sub_1BC6E69BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC6DE7A4(uint64_t a1)
{
  v2 = sub_1BC6E6A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6DE7E0(uint64_t a1)
{
  v2 = sub_1BC6E6A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC6DE81C(uint64_t a1)
{
  v2 = sub_1BC6E6914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6DE858(uint64_t a1)
{
  v2 = sub_1BC6E6914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC6DE898(uint64_t a1)
{
  v2 = sub_1BC6E6968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6DE8D4(uint64_t a1)
{
  v2 = sub_1BC6E6968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC6DE910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1BC75C5E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BC773420 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BC75C5E0();

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

uint64_t sub_1BC6DE9EC(uint64_t a1)
{
  v2 = sub_1BC6E64B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6DEA28(uint64_t a1)
{
  v2 = sub_1BC6E64B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC6DEA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001BC773440 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BC6DEB14(uint64_t a1)
{
  v2 = sub_1BC6E66BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6DEB50(uint64_t a1)
{
  v2 = sub_1BC6E66BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC6DEB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BC75C5E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BC6DEC0C(uint64_t a1)
{
  v2 = sub_1BC6E67B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6DEC48(uint64_t a1)
{
  v2 = sub_1BC6E67B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InterventionConfig.Layout.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA30, &qword_1BC767BE8);
  v122 = *(v2 - 8);
  v123 = v2;
  v3 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v121 = &v91 - v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA38, &qword_1BC767BF0);
  v113 = *(v115 - 8);
  v5 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v91 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA40, &qword_1BC767BF8);
  v119 = *(v7 - 8);
  v120 = v7;
  v8 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v118 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA48, &qword_1BC767C00);
  v116 = *(v10 - 8);
  v117 = v10;
  v11 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v114 = &v91 - v12;
  v13 = sub_1BC759D00();
  v128 = *(v13 - 8);
  v129 = v13;
  v14 = *(v128 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v125 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v91 - v17;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA50, &qword_1BC767C08);
  v110 = *(v111 - 8);
  v18 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v107 = &v91 - v19;
  v109 = sub_1BC759DE0();
  v108 = *(v109 - 8);
  v20 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA58, &qword_1BC767C10);
  v104 = *(v105 - 8);
  v22 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v101 = &v91 - v23;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA60, &qword_1BC767C18);
  v102 = *(v103 - 8);
  v24 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v91 - v25;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA68, &qword_1BC767C20);
  v98 = *(v99 - 8);
  v26 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v91 - v27;
  v28 = sub_1BC759CA0();
  v126 = *(v28 - 8);
  v127 = v28;
  v29 = *(v126 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v96 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v95 = &v91 - v32;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA70, &qword_1BC767C28);
  v93 = *(v94 - 8);
  v33 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v35 = &v91 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA78, &qword_1BC767C30);
  v92 = *(v36 - 8);
  v37 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v91 - v38;
  v40 = type metadata accessor for InterventionConfig.Layout(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = (&v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDA80, &qword_1BC767C38);
  v131 = *(v134 - 8);
  v44 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v46 = &v91 - v45;
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6E6464();
  v133 = v46;
  sub_1BC75C740();
  sub_1BC6E6C80(v130, v43, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v60 = v126;
      v59 = v127;
      if (EnumCaseMultiPayload)
      {
        v61 = v96;
        (*(v126 + 32))(v96, v43, v127);
        LOBYTE(v137) = 3;
        sub_1BC6E6914();
        v62 = v100;
        v54 = v133;
        v53 = v134;
        sub_1BC75C4E0();
        sub_1BC6E6674(&qword_1EBCDDAC0, MEMORY[0x1E697B448]);
        v63 = v103;
        sub_1BC75C560();
        v64 = &v134;
      }

      else
      {
        v61 = v95;
        (*(v126 + 32))(v95, v43, v127);
        LOBYTE(v137) = 2;
        sub_1BC6E6968();
        v62 = v97;
        v54 = v133;
        v53 = v134;
        sub_1BC75C4E0();
        sub_1BC6E6674(&qword_1EBCDDAC0, MEMORY[0x1E697B448]);
        v63 = v99;
        sub_1BC75C560();
        v64 = &v130;
      }

      (*(*(v64 - 32) + 8))(v62, v63);
      (*(v60 + 8))(v61, v59);
      return (*(v131 + 8))(v54, v53);
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v49 = v108;
        v50 = v106;
        v51 = v109;
        (*(v108 + 32))(v106, v43, v109);
        LOBYTE(v137) = 5;
        sub_1BC6E67B8();
        v52 = v107;
        v54 = v133;
        v53 = v134;
        sub_1BC75C4E0();
        sub_1BC6E6674(&qword_1EBCDDAA8, MEMORY[0x1E697B4F0]);
        v55 = v111;
        sub_1BC75C560();
        (*(v110 + 8))(v52, v55);
        (*(v49 + 8))(v50, v51);
        return (*(v131 + 8))(v54, v53);
      }

      v130 = *(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
      v66 = v128;
      v65 = v129;
      v67 = v124;
      (*(v128 + 32))(v124, v43, v129);
      LOBYTE(v137) = 6;
      sub_1BC6E6764();
      v68 = v114;
      v69 = v133;
      v70 = v134;
      sub_1BC75C4E0();
      LOBYTE(v137) = 0;
      sub_1BC6E6674(&qword_1EBCDDA90, MEMORY[0x1E697B460]);
      v71 = v117;
      v87 = v132;
      sub_1BC75C560();
      if (v87)
      {

        v73 = v116;
        goto LABEL_21;
      }

      v137 = v130;
      v135 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
      sub_1BC6E65C0();
      sub_1BC75C560();
      (*(v116 + 8))(v68, v71);
      (*(v66 + 8))(v124, v65);
LABEL_30:
      (*(v131 + 8))(v133, v134);
    }

    v74 = *v43;
    LOBYTE(v137) = 4;
    sub_1BC6E680C();
    v75 = v101;
    v77 = v133;
    v76 = v134;
    sub_1BC75C4E0();
    v137 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAB0, &qword_1BC767C40);
    sub_1BC6E6860();
    v78 = v105;
    sub_1BC75C560();
    v79 = &v136;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v130 = *(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
      v66 = v128;
      v65 = v129;
      v67 = v125;
      (*(v128 + 32))(v125, v43, v129);
      LOBYTE(v137) = 7;
      sub_1BC6E6710();
      v68 = v118;
      v69 = v133;
      v70 = v134;
      sub_1BC75C4E0();
      LOBYTE(v137) = 0;
      sub_1BC6E6674(&qword_1EBCDDA90, MEMORY[0x1E697B460]);
      v71 = v120;
      v72 = v132;
      sub_1BC75C560();
      if (v72)
      {

        v73 = v119;
LABEL_21:
        (*(v73 + 8))(v68, v71);
        (*(v66 + 8))(v67, v65);
        return (*(v131 + 8))(v69, v70);
      }

      v137 = v130;
      v135 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
      sub_1BC6E65C0();
      sub_1BC75C560();
      (*(v119 + 8))(v68, v71);
      (*(v66 + 8))(v125, v65);
      goto LABEL_30;
    }

    v90 = *v43;
    LOBYTE(v137) = 8;
    sub_1BC6E66BC();
    v75 = v112;
    v77 = v133;
    v76 = v134;
    sub_1BC75C4E0();
    v137 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
    sub_1BC6E65C0();
    v78 = v115;
    sub_1BC75C560();
    v79 = &v138;
LABEL_27:
    (*(*(v79 - 32) + 8))(v75, v78);
    (*(v131 + 8))(v77, v76);
  }

  if (EnumCaseMultiPayload == 7)
  {
    v81 = *v43;
    v80 = v43[1];
    LOBYTE(v137) = 9;
    sub_1BC6E64B8();
    v82 = v121;
    v84 = v133;
    v83 = v134;
    sub_1BC75C4E0();
    v137 = v81;
    v135 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
    sub_1BC6E650C();
    v85 = v123;
    v86 = v132;
    sub_1BC75C560();

    if (!v86)
    {
      v137 = v80;
      v135 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
      sub_1BC6E65C0();
      sub_1BC75C560();
    }

    (*(v122 + 8))(v82, v85);
    (*(v131 + 8))(v84, v83);
  }

  if (EnumCaseMultiPayload == 8)
  {
    LOBYTE(v137) = 0;
    sub_1BC6E6A10();
    v56 = v133;
    v57 = v134;
    sub_1BC75C4E0();
    (*(v92 + 8))(v39, v36);
    return (*(v131 + 8))(v56, v57);
  }

  else
  {
    LOBYTE(v137) = 1;
    sub_1BC6E69BC();
    v89 = v133;
    v88 = v134;
    sub_1BC75C4E0();
    (*(v93 + 8))(v35, v94);
    return (*(v131 + 8))(v89, v88);
  }
}

uint64_t InterventionConfig.Layout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAC8, &qword_1BC767C48);
  v128 = *(v127 - 8);
  v3 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v137 = &v103 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAD0, &qword_1BC767C50);
  v121 = *(v122 - 8);
  v5 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v134 = &v103 - v6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAD8, &qword_1BC767C58);
  v125 = *(v126 - 8);
  v7 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v144 = &v103 - v8;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAE0, &qword_1BC767C60);
  v123 = *(v124 - 8);
  v9 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v143 = &v103 - v10;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAE8, &qword_1BC767C68);
  v119 = *(v120 - 8);
  v11 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v133 = &v103 - v12;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAF0, &qword_1BC767C70);
  v117 = *(v118 - 8);
  v13 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v136 = &v103 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAF8, &qword_1BC767C78);
  v115 = *(v116 - 8);
  v15 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v135 = &v103 - v16;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDB00, &qword_1BC767C80);
  v114 = *(v142 - 8);
  v17 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v103 - v18;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDB08, &qword_1BC767C88);
  v112 = *(v113 - 8);
  v19 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v132 = &v103 - v20;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDB10, &qword_1BC767C90);
  v110 = *(v111 - 8);
  v21 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v131 = &v103 - v22;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDB18, &qword_1BC767C98);
  v145 = *(v140 - 8);
  v23 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v25 = &v103 - v24;
  v139 = type metadata accessor for InterventionConfig.Layout(0);
  v26 = *(*(v139 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v139);
  v108 = (&v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v27);
  v109 = (&v103 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v130 = &v103 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v129 = &v103 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v103 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v103 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v103 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v103 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v103 - v47;
  v50 = a1[3];
  v49 = a1[4];
  v147 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v50);
  sub_1BC6E6464();
  v51 = v146;
  sub_1BC75C730();
  if (!v51)
  {
    v105 = v46;
    v106 = v43;
    v104 = v40;
    v107 = v37;
    v53 = v141;
    v52 = v142;
    v55 = v143;
    v54 = v144;
    v146 = v48;
    v56 = v140;
    v57 = v25;
    v58 = sub_1BC75C4D0();
    v59 = v58;
    v60 = v56;
    if (*(v58 + 16) == 1)
    {
      v61 = *(v58 + 32);
      if (v61 != 10)
      {
        if (*(v58 + 32) <= 4u)
        {
          if (*(v58 + 32) <= 1u)
          {
            v71 = v145;
            if (*(v58 + 32))
            {
              LOBYTE(v150) = 1;
              sub_1BC6E69BC();
              v81 = v132;
              sub_1BC75C450();
              v73 = v138;
              (*(v112 + 8))(v81, v113);
            }

            else
            {
              LOBYTE(v150) = 0;
              sub_1BC6E6A10();
              v72 = v131;
              sub_1BC75C450();
              v73 = v138;
              (*(v110 + 8))(v72, v111);
            }

            (*(v71 + 8))(v57, v56);
            swift_unknownObjectRelease();
            v102 = v146;
            swift_storeEnumTagMultiPayload();
            goto LABEL_29;
          }

          v137 = v58;
          v62 = v145;
          if (v61 == 2)
          {
            LOBYTE(v150) = 2;
            sub_1BC6E6968();
            sub_1BC75C450();
            sub_1BC759CA0();
            sub_1BC6E6674(&qword_1EBCDDB50, MEMORY[0x1E697B448]);
            v84 = v105;
            sub_1BC75C4C0();
            (*(v114 + 8))(v53, v52);
            (*(v62 + 8))(v57, v56);
            swift_unknownObjectRelease();
            goto LABEL_27;
          }

          if (v61 == 3)
          {
            LOBYTE(v150) = 3;
            sub_1BC6E6914();
            sub_1BC75C450();
            sub_1BC759CA0();
            sub_1BC6E6674(&qword_1EBCDDB50, MEMORY[0x1E697B448]);
            v84 = v106;
            v85 = v116;
            v86 = v135;
            sub_1BC75C4C0();
            (*(v115 + 8))(v86, v85);
            (*(v62 + 8))(v57, v56);
            swift_unknownObjectRelease();
LABEL_27:
            swift_storeEnumTagMultiPayload();
            v97 = v84;
            goto LABEL_28;
          }

          LOBYTE(v150) = 4;
          sub_1BC6E680C();
          sub_1BC75C450();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDAB0, &qword_1BC767C40);
          sub_1BC6E6BCC();
          v87 = v118;
          v88 = v136;
          sub_1BC75C4C0();
          (*(v117 + 8))(v88, v87);
          (*(v62 + 8))(v57, v56);
          swift_unknownObjectRelease();
          v96 = v104;
          *v104 = v150;
LABEL_26:
          swift_storeEnumTagMultiPayload();
          v97 = v96;
LABEL_28:
          v102 = v146;
          sub_1BC6E7170(v97, v146, type metadata accessor for InterventionConfig.Layout);
          v73 = v138;
          goto LABEL_29;
        }

        if (*(v58 + 32) <= 6u)
        {
          if (v61 == 5)
          {
            LOBYTE(v150) = 5;
            sub_1BC6E67B8();
            v74 = v133;
            sub_1BC75C450();
            sub_1BC759DE0();
            sub_1BC6E6674(&qword_1EBCDDB40, MEMORY[0x1E697B4F0]);
            v84 = v107;
            v75 = v120;
            sub_1BC75C4C0();
            (*(v119 + 8))(v74, v75);
            (*(v145 + 8))(v57, v56);
            swift_unknownObjectRelease();
            goto LABEL_27;
          }

          LOBYTE(v150) = 6;
          sub_1BC6E6764();
          v82 = v55;
          v83 = v56;
          sub_1BC75C450();
          sub_1BC759D00();
          LOBYTE(v150) = 0;
          sub_1BC6E6674(&qword_1EBCDDB28, MEMORY[0x1E697B460]);
          v91 = v124;
          sub_1BC75C4C0();
          v92 = v82;
          v93 = v145;
          v137 = v59;
          v99 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
          LOBYTE(v150) = 1;
          sub_1BC6E6B18();
          v95 = v129;
          sub_1BC75C4C0();
          (*(v123 + 8))(v92, v91);
          (*(v93 + 8))(v57, v83);
          swift_unknownObjectRelease();
        }

        else
        {
          if (v61 != 7)
          {
            v68 = v145;
            if (v61 != 8)
            {
              LOBYTE(v150) = 9;
              sub_1BC6E64B8();
              v80 = v60;
              sub_1BC75C450();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
              LOBYTE(v149) = 0;
              sub_1BC6E6A64();
              v89 = v127;
              v90 = v137;
              sub_1BC75C4C0();
              v98 = v150;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
              v148 = 1;
              sub_1BC6E6B18();
              sub_1BC75C4C0();
              (*(v128 + 8))(v90, v89);
              (*(v68 + 8))(v57, v80);
              swift_unknownObjectRelease();
              v100 = v149;
              v101 = v108;
              *v108 = v98;
              *(v101 + 8) = v100;
              swift_storeEnumTagMultiPayload();
              v102 = v146;
              sub_1BC6E7170(v101, v146, type metadata accessor for InterventionConfig.Layout);
              v73 = v138;
LABEL_29:
              sub_1BC6E7170(v102, v73, type metadata accessor for InterventionConfig.Layout);
              return __swift_destroy_boxed_opaque_existential_1(v147);
            }

            LOBYTE(v150) = 8;
            sub_1BC6E66BC();
            v69 = v134;
            sub_1BC75C450();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
            sub_1BC6E6B18();
            v70 = v122;
            sub_1BC75C4C0();
            (*(v121 + 8))(v69, v70);
            (*(v68 + 8))(v57, v60);
            swift_unknownObjectRelease();
            v96 = v109;
            *v109 = v150;
            goto LABEL_26;
          }

          LOBYTE(v150) = 7;
          sub_1BC6E6710();
          v76 = v56;
          sub_1BC75C450();
          v77 = v145;
          v78 = v54;
          sub_1BC759D00();
          LOBYTE(v150) = 0;
          sub_1BC6E6674(&qword_1EBCDDB28, MEMORY[0x1E697B460]);
          v79 = v126;
          sub_1BC75C4C0();
          v137 = v59;
          v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC478, &qword_1BC761A60);
          LOBYTE(v150) = 1;
          sub_1BC6E6B18();
          v95 = v130;
          sub_1BC75C4C0();
          (*(v125 + 8))(v78, v79);
          (*(v77 + 8))(v57, v76);
          swift_unknownObjectRelease();
        }

        swift_storeEnumTagMultiPayload();
        v97 = v95;
        goto LABEL_28;
      }
    }

    v63 = sub_1BC75C300();
    swift_allocError();
    v65 = v64;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF0, &unk_1BC767CA0) + 48);
    *v65 = v139;
    sub_1BC75C460();
    sub_1BC75C2F0();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x1E69E6AF8], v63);
    swift_willThrow();
    (*(v145 + 8))(v57, v60);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v147);
}

uint64_t InterventionConfig.policy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterventionConfig(0) + 20);
  v4 = sub_1BC759EE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterventionConfig.analyticsContext.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InterventionConfig(0) + 32);

  return sub_1BC65FD10(a1, v3);
}

uint64_t InterventionConfig.init(layout:policy:options:analyticsContext:contextDictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a5;
  v40 = a2;
  v35 = a1;
  v36 = a3;
  v8 = type metadata accessor for InterventionConfig.Layout(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BC759EE0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v34 - v19;
  v21 = type metadata accessor for AnalyticsUIContext(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a4;
  sub_1BC660024(a4, v20, &qword_1EBCDBC50, &qword_1BC762D70);
  v26 = *(v22 + 48);
  v27 = v26(v20, 1, v21);
  v37 = v12;
  if (v27 == 1)
  {
    (*(v13 + 16))(v16, v40, v12);
    v28 = v35;
    sub_1BC6E6C80(v35, v11, type metadata accessor for InterventionConfig.Layout);
    sub_1BC6648A8(v16, &unk_1F3B2B328, v11, v25);
    if (v26(v20, 1, v21) != 1)
    {
      sub_1BC66008C(v20, &qword_1EBCDBC50, &qword_1BC762D70);
    }
  }

  else
  {
    sub_1BC6E7170(v20, v25, type metadata accessor for AnalyticsUIContext);
    v28 = v35;
  }

  v41 = 4;
  sub_1BC665984(&v41);
  sub_1BC6E6C80(v28, a6, type metadata accessor for InterventionConfig.Layout);
  v29 = type metadata accessor for InterventionConfig(0);
  v30 = v40;
  v31 = v37;
  (*(v13 + 16))(a6 + v29[5], v40, v37);
  *(a6 + v29[6]) = v36;
  v32 = v39;
  if (!v39)
  {
    v32 = sub_1BC6E7034(MEMORY[0x1E69E7CC0]);
  }

  sub_1BC66008C(v38, &qword_1EBCDBC50, &qword_1BC762D70);
  (*(v13 + 8))(v30, v31);
  sub_1BC6E722C(v28, type metadata accessor for InterventionConfig.Layout);
  *(a6 + v29[7]) = v32;
  return sub_1BC6E7170(v25, a6 + v29[8], type metadata accessor for AnalyticsUIContext);
}

SensitiveContentAnalysisUI::InterventionConfig::CodingKeys_optional __swiftcall InterventionConfig.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x74756F79616CLL && stringValue._object == 0xE600000000000000;
  if (v5 || (sub_1BC75C5E0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x7963696C6F70 && object == 0xE600000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x736E6F6974706FLL && object == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0xD000000000000010 && 0x80000001BC7732E0 == object)
  {

    v7 = 3;
  }

  else
  {
    v8 = sub_1BC75C5E0();

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t InterventionConfig.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

unint64_t InterventionConfig.CodingKeys.stringValue.getter()
{
  v1 = 0x74756F79616CLL;
  v2 = 0x736E6F6974706FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x7963696C6F70;
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

unint64_t sub_1BC6E1EB0()
{
  v1 = 0x74756F79616CLL;
  v2 = 0x736E6F6974706FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x7963696C6F70;
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

uint64_t sub_1BC6E1F38(uint64_t a1)
{
  v2 = sub_1BC6E71D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6E1F74(uint64_t a1)
{
  v2 = sub_1BC6E71D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InterventionConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDB58, &qword_1BC767CB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6E71D8();
  sub_1BC75C740();
  v18 = 0;
  type metadata accessor for InterventionConfig.Layout(0);
  sub_1BC6E6674(&qword_1EBCDDB68, type metadata accessor for InterventionConfig.Layout);
  sub_1BC75C560();
  if (!v2)
  {
    v11 = type metadata accessor for InterventionConfig(0);
    v12 = v11[5];
    v17 = 1;
    sub_1BC759EE0();
    sub_1BC6E6674(&qword_1EBCDBFA8, MEMORY[0x1E697B510]);
    sub_1BC75C560();
    v16 = *(v3 + v11[6]);
    v15[15] = 2;
    type metadata accessor for SCUIInterventionOptions(0);
    sub_1BC6E6674(&qword_1EBCDDB70, type metadata accessor for SCUIInterventionOptions);
    sub_1BC75C560();
    v13 = v11[8];
    v15[14] = 3;
    type metadata accessor for AnalyticsUIContext(0);
    sub_1BC6E6674(&qword_1EBCDDB78, type metadata accessor for AnalyticsUIContext);
    sub_1BC75C560();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t InterventionConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for AnalyticsUIContext(0);
  v3 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BC759EE0();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InterventionConfig.Layout(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDB80, &unk_1BC767CB8);
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = type metadata accessor for InterventionConfig(0);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v21 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1BC6E71D8();
  v38 = v15;
  v22 = v39;
  sub_1BC75C730();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v23 = v19;
  v24 = v34;
  v45 = 0;
  sub_1BC6E6674(&qword_1EBCDDB88, type metadata accessor for InterventionConfig.Layout);
  sub_1BC75C4C0();
  v25 = v23;
  sub_1BC6E7170(v37, v23, type metadata accessor for InterventionConfig.Layout);
  v44 = 1;
  sub_1BC6E6674(&qword_1EBCDC008, MEMORY[0x1E697B510]);
  sub_1BC75C4C0();
  (*(v24 + 32))(v23 + v16[5], v8, v5);
  type metadata accessor for SCUIInterventionOptions(0);
  v43 = 2;
  sub_1BC6E6674(&qword_1EBCDDB90, type metadata accessor for SCUIInterventionOptions);
  sub_1BC75C4C0();
  *(v23 + v16[6]) = v41;
  v42 = 3;
  sub_1BC6E6674(&qword_1EBCDDB98, type metadata accessor for AnalyticsUIContext);
  v26 = v33;
  sub_1BC75C4C0();
  v27 = v35;
  sub_1BC6E7170(v26, v25 + v16[8], type metadata accessor for AnalyticsUIContext);
  v28 = sub_1BC6E7034(MEMORY[0x1E69E7CC0]);
  (*(v27 + 8))(v38, v36);
  *(v25 + v16[7]) = v28;
  sub_1BC6E6C80(v25, v31, type metadata accessor for InterventionConfig);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_1BC6E722C(v25, type metadata accessor for InterventionConfig);
}

uint64_t static InterventionConfig.Layout.tryingToCall(validating:otherParticipants:callType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1BC759CA0();
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1BC759D00();
  v11 = *(v62 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v62);
  v60 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v48 - v18;
  v20 = sub_1BC75A160();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v59 = *(a1 + 16)) != 0)
  {
    sub_1BC660024(a3, v19, &qword_1EBCDC868, &qword_1BC762D30);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_1BC66008C(v19, &qword_1EBCDC868, &qword_1BC762D30);
      v25 = v51;
    }

    else
    {
      (*(v21 + 32))(v24, v19, v20);
      v29 = sub_1BC75A150();
      (*(v21 + 8))(v24, v20);
      v25 = v51;
      if ((v29 & 1) == 0)
      {
        v47 = type metadata accessor for InterventionConfig.Layout(0);
        return (*(*(v47 - 8) + 56))(a4, 1, 1, v47);
      }
    }

    v49 = a2;
    v50 = a4;
    v30 = 0;
    v32 = *(v11 + 16);
    v31 = v11 + 16;
    v53 = (*(v31 + 64) + 32) & ~*(v31 + 64);
    v33 = a1 + v53;
    v34 = *(v31 + 56);
    v56 = (v58 + 8);
    v57 = v32;
    v52 = (v31 - 8);
    v58 = v31;
    v55 = (v31 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    v54 = v8;
    for (result = v32(v25, v33, v62); ; result = v57(v25, v33, v62))
    {
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        return result;
      }

      v37 = v61;
      sub_1BC759CF0();
      v38 = sub_1BC759BB0();
      (*v56)(v37, v8);
      if (v38)
      {
        v39 = *v55;
        (*v55)(v60, v25, v62);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BC6701E8(0, *(v35 + 16) + 1, 1);
          v25 = v51;
          v35 = v63;
        }

        v42 = *(v35 + 16);
        v41 = *(v35 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1BC6701E8(v41 > 1, v42 + 1, 1);
          v25 = v51;
          v35 = v63;
        }

        *(v35 + 16) = v42 + 1;
        v39((v35 + v53 + v42 * v34), v60, v62);
        v8 = v54;
      }

      else
      {
        (*v52)(v25, v62);
      }

      ++v30;
      v33 += v34;
      if (v36 == v59)
      {
        break;
      }
    }

    if (*(v35 + 16))
    {
      v44 = v49;
      v43 = v50;
      *v50 = v35;
      v43[1] = v44;
      v45 = type metadata accessor for InterventionConfig.Layout(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v45 - 8) + 56))(v43, 0, 1, v45);
    }

    else
    {
      v46 = type metadata accessor for InterventionConfig.Layout(0);
      (*(*(v46 - 8) + 56))(v50, 1, 1, v46);
    }
  }

  else
  {
    v26 = type metadata accessor for InterventionConfig.Layout(0);
    v27 = *(*(v26 - 8) + 56);

    return v27(a4, 1, 1, v26);
  }
}

uint64_t static InterventionConfig.Layout.addingToSharedAlbum(validating:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - v10;
  v12 = sub_1BC759CA0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  sub_1BC660024(a1, v11, &qword_1EBCDC998, &qword_1BC7641A0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BC66008C(v11, &qword_1EBCDC998, &qword_1BC7641A0);
    v20 = type metadata accessor for InterventionConfig.Layout(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDBA0, &qword_1BC767CC8);
    v22 = *(sub_1BC759DE0() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BC761600;
    (*(v13 + 16))(v17, v19, v12);
    v26 = sub_1BC759D50();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    sub_1BC759DC0();
    (*(v13 + 8))(v19, v12);
    *a2 = v25;
    v27 = type metadata accessor for InterventionConfig.Layout(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
  }
}

uint64_t static InterventionConfig.Layout.addingToSharedAlbum(validating:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    *a2 = a1;
    v3 = type metadata accessor for InterventionConfig.Layout(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
  }

  else
  {
    v5 = type metadata accessor for InterventionConfig.Layout(0);
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }
}

uint64_t static InterventionConfig.Layout.viewingSharedAlbumAsset(validating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_1BC759CA0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  sub_1BC660024(a1, v11, &qword_1EBCDC998, &qword_1BC7641A0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BC66008C(v11, &qword_1EBCDC998, &qword_1BC7641A0);
    v20 = type metadata accessor for InterventionConfig.Layout(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    (*(v13 + 16))(v17, v19, v12);
    v22 = sub_1BC759D50();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    sub_1BC759DC0();
    (*(v13 + 8))(v19, v12);
    v23 = type metadata accessor for InterventionConfig.Layout(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
  }
}

uint64_t static InterventionConfig.Layout.viewingSharedAlbumAsset(validating:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDBA8, &qword_1BC767CD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_1BC759DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC660024(a1, v7, &qword_1EBCDDBA8, &qword_1BC767CD0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BC66008C(v7, &qword_1EBCDDBA8, &qword_1BC767CD0);
    v13 = type metadata accessor for InterventionConfig.Layout(0);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  else
  {
    v15 = *(v9 + 32);
    v15(v12, v7, v8);
    v15(a2, v12, v8);
    v16 = type metadata accessor for InterventionConfig.Layout(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
  }
}

uint64_t static InterventionConfig.duringVideoCall(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a2;
  v61 = a4;
  v64 = a3;
  v65 = a5;
  v58 = a1;
  v59 = type metadata accessor for AnalyticsUIContext(0);
  v56 = *(v59 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v54 - v11;
  v68 = sub_1BC759EE0();
  v66 = *(v68 - 8);
  v12 = *(v66 + 64);
  v13 = MEMORY[0x1EEE9AC00](v68);
  v55 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v17 = sub_1BC759CA0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BC759FE0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for InterventionConfig.Layout(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v54 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v54 - v31;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48);
  (*(v23 + 16))(v26, v58, v22);
  v34 = v16;
  v35 = v56;
  v36 = v17;
  v37 = v59;
  (*(v18 + 16))(v21, v60, v36);
  sub_1BC759CB0();
  *&v32[v33] = MEMORY[0x1E69E7CC0];
  v38 = v67;
  swift_storeEnumTagMultiPayload();
  v39 = *(v66 + 16);
  v39(v34, v61, v68);
  (*(v35 + 56))(v38, 1, 1, v37);
  v40 = v57;
  sub_1BC660024(v38, v57, &qword_1EBCDBC50, &qword_1BC762D70);
  v41 = *(v35 + 48);
  v42 = v41(v40, 1, v37);
  v62 = v34;
  if (v42 == 1)
  {
    v43 = v39;
    v44 = v55;
    v43(v55, v34, v68);
    v45 = v54;
    sub_1BC6E6C80(v32, v54, type metadata accessor for InterventionConfig.Layout);
    v46 = v63;
    v47 = v44;
    v39 = v43;
    sub_1BC6648A8(v47, &unk_1F3B2B350, v45, v63);
    if (v41(v40, 1, v37) != 1)
    {
      sub_1BC66008C(v40, &qword_1EBCDBC50, &qword_1BC762D70);
    }
  }

  else
  {
    v46 = v63;
    sub_1BC6E7170(v40, v63, type metadata accessor for AnalyticsUIContext);
  }

  v69 = 4;
  sub_1BC665984(&v69);
  v48 = v65;
  sub_1BC6E6C80(v32, v65, type metadata accessor for InterventionConfig.Layout);
  v49 = type metadata accessor for InterventionConfig(0);
  v50 = v62;
  v51 = v68;
  v39((v48 + v49[5]), v62, v68);
  *(v48 + v49[6]) = v64;
  v52 = sub_1BC6E7034(MEMORY[0x1E69E7CC0]);
  sub_1BC66008C(v67, &qword_1EBCDBC50, &qword_1BC762D70);
  (*(v66 + 8))(v50, v51);
  sub_1BC6E722C(v32, type metadata accessor for InterventionConfig.Layout);
  *(v48 + v49[7]) = v52;
  return sub_1BC6E7170(v46, v48 + v49[8], type metadata accessor for AnalyticsUIContext);
}

uint64_t sub_1BC6E3EAC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a5;
  v47 = a4;
  v55 = a1;
  v9 = sub_1BC759EE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v48 = &v43 - v15;
  v54 = type metadata accessor for AnalyticsUIContext(0);
  v16 = *(v54 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for InterventionConfig.Layout(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v45 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - v23;
  v25 = type metadata accessor for InterventionConfig(0);
  v26 = v25[5];
  v50 = v10;
  v27 = *(v10 + 16);
  v52 = v9;
  v53 = a3;
  v27(a6 + v26, a3, v9);
  *(a6 + v25[6]) = v47;
  if (a2)
  {
    v28 = a2;
  }

  else
  {
    v28 = sub_1BC6E7034(MEMORY[0x1E69E7CC0]);
  }

  *(a6 + v25[7]) = v28;
  v29 = v54;
  v30 = v49;
  if (v55 > 1)
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    v41 = v55;

    sub_1BC75C290();

    v57 = 0xD000000000000011;
    v58 = 0x80000001BC773340;
    v56 = v41;
    v42 = sub_1BC75C590();
    MEMORY[0x1BFB267E0](v42);

    result = sub_1BC75C3D0();
    __break(1u);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BC6E6C80(v24, a6, type metadata accessor for InterventionConfig.Layout);
    v31 = v48;
    sub_1BC660024(v30, v48, &qword_1EBCDBC50, &qword_1BC762D70);
    v32 = *(v16 + 48);
    if (v32(v31, 1, v29) == 1)
    {
      v44 = v25;
      v33 = v46;
      v47 = a6;
      v35 = v52;
      v34 = v53;
      v27(v46, v53, v52);
      v36 = v45;
      sub_1BC6E6C80(v24, v45, type metadata accessor for InterventionConfig.Layout);
      v37 = v51;
      v38 = v33;
      v25 = v44;
      sub_1BC665098(v38, v55, v36, v51);
      sub_1BC66008C(v30, &qword_1EBCDBC50, &qword_1BC762D70);
      v39 = v34;
      a6 = v47;
      (*(v50 + 8))(v39, v35);
      sub_1BC6E722C(v24, type metadata accessor for InterventionConfig.Layout);
      if (v32(v31, 1, v54) != 1)
      {
        sub_1BC66008C(v31, &qword_1EBCDBC50, &qword_1BC762D70);
      }
    }

    else
    {
      sub_1BC66008C(v30, &qword_1EBCDBC50, &qword_1BC762D70);
      (*(v50 + 8))(v53, v52);
      sub_1BC6E722C(v24, type metadata accessor for InterventionConfig.Layout);
      v37 = v51;
      sub_1BC6E7170(v31, v51, type metadata accessor for AnalyticsUIContext);
    }

    return sub_1BC6E7170(v37, a6 + v25[8], type metadata accessor for AnalyticsUIContext);
  }

  return result;
}

uint64_t InterventionConfig.init(kind:policy:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v40 = a3;
  v42 = a2;
  v38 = type metadata accessor for InterventionConfig.Layout(0);
  v6 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BC759EE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SCUIInterventionKind._Kind(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1BC759DE0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v38 - v22;
  v43 = a1;
  sub_1BC6E6C80(a1, v15, type metadata accessor for SCUIInterventionKind._Kind);
  v24 = 1 << swift_getEnumCaseMultiPayload();
  if ((v24 & 0x3B) != 0)
  {
    *a4 = *v15;
  }

  else if ((v24 & 0x84) != 0)
  {
    v25 = *(v17 + 32);
    v25(v23, v15, v16);
    v25(a4, v23, v16);
  }

  else
  {
    v34 = *(v17 + 32);
    v33 = v17 + 32;
    v34(v21, v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDBA0, &qword_1BC767CC8);
    v35 = *(v33 + 40);
    v36 = (*(v33 + 48) + 32) & ~*(v33 + 48);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1BC761600;
    v34((v37 + v36), v21, v16);
    *a4 = v37;
  }

  swift_storeEnumTagMultiPayload();
  v26 = sub_1BC6E7034(MEMORY[0x1E69E7CC0]);
  v27 = type metadata accessor for InterventionConfig(0);
  *(a4 + v27[7]) = v26;
  v28 = *(v9 + 16);
  v29 = v42;
  v28(a4 + v27[5], v42, v8);
  v30 = v39;
  *(a4 + v27[6]) = v40;
  v28(v30, v29, v8);
  v31 = v41;
  sub_1BC6E6C80(a4, v41, type metadata accessor for InterventionConfig.Layout);
  sub_1BC6648A8(v30, &unk_1F3B2B378, v31, a4 + v27[8]);
  (*(v9 + 8))(v29, v8);
  return sub_1BC6E722C(v43, type metadata accessor for SCUIInterventionKind);
}

BOOL sub_1BC6E4800()
{
  v1 = type metadata accessor for InterventionConfig.Layout(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6E6C80(v0, v4, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_11;
      }
    }

    else if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_13;
      }

LABEL_11:
      sub_1BC6E722C(v4, type metadata accessor for InterventionConfig.Layout);
      return 0;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
LABEL_13:
      v7 = *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48)];

      v8 = sub_1BC759D00();
      (*(*(v8 - 8) + 8))(v4, v8);
      return 0;
    }

LABEL_15:
    sub_1BC6E722C(v4, type metadata accessor for InterventionConfig.Layout);
    return 1;
  }

  if (EnumCaseMultiPayload == 7)
  {
    goto LABEL_11;
  }

  return EnumCaseMultiPayload == 8;
}

uint64_t sub_1BC6E4990()
{
  v1 = v0 + *(type metadata accessor for InterventionConfig(0) + 20);
  result = sub_1BC6F39FC();
  if (v3)
  {
    return 2;
  }

  return result;
}

uint64_t sub_1BC6E49CC()
{
  v1 = type metadata accessor for InterventionConfig.Layout(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6E6C80(v0, v4, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload >= 4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload > 7)
  {
    return 0;
  }

  if (EnumCaseMultiPayload == 5)
  {
LABEL_10:
    v7 = *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48)];

    v8 = sub_1BC759D00();
    (*(*(v8 - 8) + 8))(v4, v8);
    return 1;
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_8:
    sub_1BC6E722C(v4, type metadata accessor for InterventionConfig.Layout);
    return 0;
  }

  sub_1BC6E722C(v4, type metadata accessor for InterventionConfig.Layout);
  return 1;
}

uint64_t InterventionConfig.shouldRequireInterventionPasscode.getter()
{
  v1[2] = v0;
  v2 = sub_1BC759FE0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1BC75A140();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v1[8] = v8;
  v9 = *(MEMORY[0x1E697B630] + 4);
  v10 = swift_task_alloc();
  v1[9] = v10;
  *v10 = v1;
  v10[1] = sub_1BC6E4CA0;

  return MEMORY[0x1EEDD8D60](v8);
}

uint64_t sub_1BC6E4CA0()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1BC6E4FD8;
  }

  else
  {
    v3 = sub_1BC6E4DB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BC6E4DB4()
{
  v28 = v0;
  v1 = v0[2];
  result = sub_1BC6A5D8C();
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[4];
    v26 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v6 = v3 - 1;
    v7 = result;
    while (v4 < *(result + 16))
    {
      (*(v5 + 16))(v0[5], v26 + *(v5 + 72) * v4, v0[3]);
      v8 = sub_1BC759FA0();
      v9 = *(v8 + 16);
      if (v9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD170, &qword_1BC766448);
        v10 = swift_allocObject();
        v11 = _swift_stdlib_malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 17;
        }

        v10[2] = v9;
        v10[3] = 2 * (v12 >> 4);
        v13 = sub_1BC6BCE0C(&v27, v10 + 4, v9, v8);
        result = sub_1BC639AFC();
        if (v13 != v9)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      v14 = v0[8];
      v15 = v0[5];
      v16 = v0[3];
      v17 = sub_1BC75A130();

      (*(v5 + 8))(v15, v16);
      result = v7;
      if ((v17 & 1) != 0 && v6 != v4++)
      {
        continue;
      }

      v19 = v17 ^ 1;
      goto LABEL_15;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    v19 = 1;
LABEL_15:
    v21 = v0[7];
    v20 = v0[8];
    v22 = v0[6];

    (*(v21 + 8))(v20, v22);
    v23 = v0[8];
    v24 = v0[5];

    v25 = v0[1];

    return v25(v19 & 1);
  }

  return result;
}

uint64_t sub_1BC6E4FD8()
{
  if (qword_1EBCEB2C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1BC75A4E0();
  __swift_project_value_buffer(v2, qword_1EBCF4658);
  v3 = v1;
  v4 = sub_1BC75A4C0();
  v5 = sub_1BC75BF60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BC630000, v4, v5, "No family information to bypass blocking. %@", v8, 0xCu);
    sub_1BC66008C(v9, &qword_1EBCDE130, &qword_1BC7679C0);
    MEMORY[0x1BFB27EF0](v9, -1, -1);
    MEMORY[0x1BFB27EF0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[8];
  v13 = v0[5];

  v14 = v0[1];

  return v14(1);
}

uint64_t sub_1BC6E53B4(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {

      return MEMORY[0x1EEDD8BF8]();
    }

    else
    {
      if (a1 == 2)
      {
      }

      else
      {
        sub_1BC75C290();
        MEMORY[0x1BFB267E0](0xD00000000000001DLL, 0x80000001BC773360);
        type metadata accessor for SCUIInterventionType(0);
        sub_1BC75C3A0();
        sub_1BC75C3D0();
        __break(1u);
      }

      return MEMORY[0x1EEDD8BC8]();
    }
  }

  else
  {

    return sub_1BC759E80();
  }
}

uint64_t sub_1BC6E54B0()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF4658);
  __swift_project_value_buffer(v0, qword_1EBCF4658);
  return sub_1BC75A4D0();
}

uint64_t static SCUIInterventionKind.viewingSharedAlbumAsset(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1BC759CA0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BC75BFE0();
  v6 = sub_1BC759D50();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_1BC759DC0();
  type metadata accessor for SCUIInterventionKind._Kind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BC6E5670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC759DE0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for SCUIInterventionKind._Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BC6E5710@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for SCUIInterventionKind._Kind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t _s26SensitiveContentAnalysisUI18InterventionConfigV6LayoutO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v105 = a1;
  v3 = sub_1BC759D00();
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = *(v101 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v95 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v94 = &v90 - v7;
  v8 = sub_1BC759DE0();
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC759CA0();
  v103 = *(v11 - 8);
  v104 = v11;
  v12 = *(v103 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v92 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v90 - v15;
  v16 = type metadata accessor for InterventionConfig.Layout(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v90 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v100 = &v90 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v99 = &v90 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v98 = &v90 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = (&v90 - v31);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v90 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v90 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDBE8, &unk_1BC768CC0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v42 = &v90 - v41;
  v43 = (&v90 + *(v40 + 56) - v41);
  sub_1BC6E6C80(v105, &v90 - v41, type metadata accessor for InterventionConfig.Layout);
  v44 = a2;
  v45 = v43;
  sub_1BC6E6C80(v44, v43, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        sub_1BC6E6C80(v42, v23, type metadata accessor for InterventionConfig.Layout);
        v84 = *v23;
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v67 = v42;
          v53 = sub_1BC6DE188(v84, *v43, MEMORY[0x1E697B5B0], &qword_1EDDCE6E0, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C8]);

          goto LABEL_35;
        }

LABEL_42:

        goto LABEL_43;
      }

      v56 = v42;
      v57 = v100;
      sub_1BC6E6C80(v42, v100, type metadata accessor for InterventionConfig.Layout);
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48);
      v59 = *(v57 + v58);
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        (*(v101 + 8))(v57, v102);
        v42 = v56;
        goto LABEL_43;
      }

      v60 = *(v43 + v58);
      v61 = v101;
      v62 = v95;
      v63 = v102;
      (*(v101 + 32))(v95, v43, v102);
      v64 = MEMORY[0x1BFB248C0](v57, v62);
      v65 = *(v61 + 8);
      v65(v57, v63);
      if (v64)
      {
        v53 = sub_1BC6DE188(v59, v60, MEMORY[0x1E697B5B0], &qword_1EDDCE6E0, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C8]);

        v65(v62, v63);
LABEL_24:
        sub_1BC6E722C(v56, type metadata accessor for InterventionConfig.Layout);
        return v53 & 1;
      }

      v65(v62, v63);
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          if (swift_getEnumCaseMultiPayload() != 8)
          {
            goto LABEL_43;
          }
        }

        else if (swift_getEnumCaseMultiPayload() != 9)
        {
LABEL_43:
          sub_1BC66008C(v42, &qword_1EBCDDBE8, &unk_1BC768CC0);
LABEL_44:
          v53 = 0;
          return v53 & 1;
        }

        sub_1BC6E722C(v42, type metadata accessor for InterventionConfig.Layout);
        v53 = 1;
        return v53 & 1;
      }

      sub_1BC6E6C80(v42, v20, type metadata accessor for InterventionConfig.Layout);
      v68 = *v20;
      v69 = v20[1];
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        goto LABEL_42;
      }

      v56 = v42;
      v70 = v43[1];
      v71 = sub_1BC6DE188(v68, *v43, MEMORY[0x1E697B460], &qword_1EDDCEE88, MEMORY[0x1E697B460], MEMORY[0x1E697B470]);

      if (v71)
      {
        v53 = sub_1BC6DE188(v69, v70, MEMORY[0x1E697B5B0], &qword_1EDDCE6E0, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C8]);

        goto LABEL_24;
      }
    }

    sub_1BC6E722C(v56, type metadata accessor for InterventionConfig.Layout);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1BC6E6C80(v42, v35, type metadata accessor for InterventionConfig.Layout);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v82 = v103;
        v51 = v104;
        v83 = v92;
        (*(v103 + 32))(v92, v43, v104);
        v52 = v42;
        v53 = sub_1BC759BF0();
        v54 = *(v82 + 8);
        v54(v83, v51);
        v55 = v35;
        goto LABEL_32;
      }

      (*(v103 + 8))(v35, v104);
    }

    else
    {
      sub_1BC6E6C80(v42, v37, type metadata accessor for InterventionConfig.Layout);
      if (!swift_getEnumCaseMultiPayload())
      {
        v87 = v103;
        v86 = v104;
        v88 = v91;
        (*(v103 + 32))(v91, v43, v104);
        v52 = v42;
        v53 = sub_1BC759BF0();
        v89 = *(v87 + 8);
        v89(v88, v86);
        v89(v37, v86);
        goto LABEL_47;
      }

      (*(v103 + 8))(v37, v104);
    }

    goto LABEL_43;
  }

  v47 = v43;
  if (EnumCaseMultiPayload == 2)
  {
    sub_1BC6E6C80(v42, v32, type metadata accessor for InterventionConfig.Layout);
    v66 = *v32;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v67 = v42;
      v53 = sub_1BC6DE188(v66, *v45, MEMORY[0x1E697B4F0], &unk_1EBCDDBF0, MEMORY[0x1E697B4F0], MEMORY[0x1E697B500]);

LABEL_35:

      sub_1BC6E722C(v67, type metadata accessor for InterventionConfig.Layout);
      return v53 & 1;
    }

    goto LABEL_42;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v48 = v98;
    sub_1BC6E6C80(v42, v98, type metadata accessor for InterventionConfig.Layout);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v49 = v96;
      v50 = v93;
      v51 = v97;
      (*(v96 + 32))(v93, v43, v97);
      v52 = v42;
      v53 = MEMORY[0x1BFB24990](v48, v50);
      v54 = *(v49 + 8);
      v54(v50, v51);
      v55 = v48;
LABEL_32:
      v54(v55, v51);
LABEL_47:
      sub_1BC6E722C(v52, type metadata accessor for InterventionConfig.Layout);
      return v53 & 1;
    }

    (*(v96 + 8))(v48, v97);
    goto LABEL_43;
  }

  v72 = v99;
  sub_1BC6E6C80(v42, v99, type metadata accessor for InterventionConfig.Layout);
  v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48);
  v74 = *(v72 + v73);
  if (swift_getEnumCaseMultiPayload() != 4)
  {

    (*(v101 + 8))(v72, v102);
    goto LABEL_43;
  }

  v75 = v42;
  v76 = *(v45 + v73);
  v78 = v101;
  v77 = v102;
  v79 = v94;
  (*(v101 + 32))(v94, v47, v102);
  v80 = MEMORY[0x1BFB248C0](v72, v79);
  v81 = *(v78 + 8);
  v81(v72, v77);
  if ((v80 & 1) == 0)
  {
    v81(v79, v77);

    sub_1BC6E722C(v75, type metadata accessor for InterventionConfig.Layout);
    goto LABEL_44;
  }

  v53 = sub_1BC6DE188(v74, v76, MEMORY[0x1E697B5B0], &qword_1EDDCE6E0, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C8]);

  v81(v79, v77);
  sub_1BC6E722C(v75, type metadata accessor for InterventionConfig.Layout);
  return v53 & 1;
}

unint64_t sub_1BC6E6464()
{
  result = qword_1EBCEB2C8;
  if (!qword_1EBCEB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2C8);
  }

  return result;
}

unint64_t sub_1BC6E64B8()
{
  result = qword_1EBCEB2D0;
  if (!qword_1EBCEB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2D0);
  }

  return result;
}

unint64_t sub_1BC6E650C()
{
  result = qword_1EBCDDA88;
  if (!qword_1EBCDDA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
    sub_1BC6E6674(&qword_1EBCDDA90, MEMORY[0x1E697B460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDA88);
  }

  return result;
}

unint64_t sub_1BC6E65C0()
{
  result = qword_1EBCDDA98;
  if (!qword_1EBCDDA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    sub_1BC6E6674(&qword_1EBCDDAA0, MEMORY[0x1E697B5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDA98);
  }

  return result;
}

uint64_t sub_1BC6E6674(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC6E66BC()
{
  result = qword_1EBCEB2D8;
  if (!qword_1EBCEB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2D8);
  }

  return result;
}

unint64_t sub_1BC6E6710()
{
  result = qword_1EBCEB2E0;
  if (!qword_1EBCEB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2E0);
  }

  return result;
}

unint64_t sub_1BC6E6764()
{
  result = qword_1EBCEB2E8;
  if (!qword_1EBCEB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2E8);
  }

  return result;
}

unint64_t sub_1BC6E67B8()
{
  result = qword_1EBCEB2F0;
  if (!qword_1EBCEB2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2F0);
  }

  return result;
}

unint64_t sub_1BC6E680C()
{
  result = qword_1EBCEB2F8;
  if (!qword_1EBCEB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB2F8);
  }

  return result;
}

unint64_t sub_1BC6E6860()
{
  result = qword_1EBCDDAB8;
  if (!qword_1EBCDDAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDAB0, &qword_1BC767C40);
    sub_1BC6E6674(&qword_1EBCDDAA8, MEMORY[0x1E697B4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDAB8);
  }

  return result;
}

unint64_t sub_1BC6E6914()
{
  result = qword_1EBCEB300;
  if (!qword_1EBCEB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB300);
  }

  return result;
}

unint64_t sub_1BC6E6968()
{
  result = qword_1EBCEB308;
  if (!qword_1EBCEB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB308);
  }

  return result;
}

unint64_t sub_1BC6E69BC()
{
  result = qword_1EBCEB310;
  if (!qword_1EBCEB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEB310);
  }

  return result;
}

unint64_t sub_1BC6E6A10()
{
  result = qword_1EBCEB318[0];
  if (!qword_1EBCEB318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEB318);
  }

  return result;
}

unint64_t sub_1BC6E6A64()
{
  result = qword_1EBCDDB20;
  if (!qword_1EBCDDB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
    sub_1BC6E6674(&qword_1EBCDDB28, MEMORY[0x1E697B460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDB20);
  }

  return result;
}

unint64_t sub_1BC6E6B18()
{
  result = qword_1EBCDDB30;
  if (!qword_1EBCDDB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    sub_1BC6E6674(&qword_1EBCDDB38, MEMORY[0x1E697B5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDB30);
  }

  return result;
}

unint64_t sub_1BC6E6BCC()
{
  result = qword_1EBCDDB48;
  if (!qword_1EBCDDB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDAB0, &qword_1BC767C40);
    sub_1BC6E6674(&qword_1EBCDDB40, MEMORY[0x1E697B4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDB48);
  }

  return result;
}

uint64_t sub_1BC6E6C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6E6CE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x80000001BC773380 == a2;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC7733A0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646E6573 && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E69766965636572 && a2 == 0xE900000000000067 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC7733C0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001BC7733E0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6956676E69727564 && a2 == 0xEF6C6C61436F6564 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x614364656E696F6ALL && a2 == 0xEA00000000006C6CLL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001BC773400 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F54676E69797274 && a2 == 0xEC0000006C6C6143)
  {

    return 9;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_1BC6E7034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDBD8, &qword_1BC768CB0);
    v3 = sub_1BC75C420();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BC660024(v4, v13, &qword_1EBCDDBE0, &qword_1BC768CB8);
      result = sub_1BC65B7F4(v13);
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
      result = sub_1BC678BBC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BC6E7170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC6E71D8()
{
  result = qword_1EBCDDB60;
  if (!qword_1EBCDDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDB60);
  }

  return result;
}

uint64_t sub_1BC6E722C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC6E72D0()
{
  result = qword_1EBCDDBB0;
  if (!qword_1EBCDDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDBB0);
  }

  return result;
}

unint64_t sub_1BC6E7328()
{
  result = qword_1EBCDDBB8;
  if (!qword_1EBCDDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDBB8);
  }

  return result;
}

unint64_t sub_1BC6E7380()
{
  result = qword_1EBCDDBC0;
  if (!qword_1EBCDDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDBC0);
  }

  return result;
}

void sub_1BC6E73D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BC75BD70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for InterventionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InterventionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BC6E75A0()
{
  result = type metadata accessor for SCUIInterventionKind._Kind(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BC6E760C()
{
  sub_1BC6E73D4(319, &qword_1EDDCEE98, MEMORY[0x1E697B4F0]);
  if (v0 <= 0x3F)
  {
    sub_1BC759DE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1BC6E775C()
{
  result = qword_1EBCEBB40[0];
  if (!qword_1EBCEBB40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEBB40);
  }

  return result;
}

unint64_t sub_1BC6E77B4()
{
  result = qword_1EBCEBD50[0];
  if (!qword_1EBCEBD50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEBD50);
  }

  return result;
}

unint64_t sub_1BC6E780C()
{
  result = qword_1EBCEBF60[0];
  if (!qword_1EBCEBF60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEBF60);
  }

  return result;
}

unint64_t sub_1BC6E7864()
{
  result = qword_1EBCEC170[0];
  if (!qword_1EBCEC170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEC170);
  }

  return result;
}

unint64_t sub_1BC6E78BC()
{
  result = qword_1EBCEC380[0];
  if (!qword_1EBCEC380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEC380);
  }

  return result;
}

unint64_t sub_1BC6E7914()
{
  result = qword_1EBCEC590[0];
  if (!qword_1EBCEC590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEC590);
  }

  return result;
}

unint64_t sub_1BC6E796C()
{
  result = qword_1EBCEC7A0[0];
  if (!qword_1EBCEC7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEC7A0);
  }

  return result;
}

unint64_t sub_1BC6E79C4()
{
  result = qword_1EBCEC9B0[0];
  if (!qword_1EBCEC9B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEC9B0);
  }

  return result;
}

unint64_t sub_1BC6E7A1C()
{
  result = qword_1EBCECDC0[0];
  if (!qword_1EBCECDC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCECDC0);
  }

  return result;
}

unint64_t sub_1BC6E7A74()
{
  result = qword_1EBCECF50;
  if (!qword_1EBCECF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCECF50);
  }

  return result;
}

unint64_t sub_1BC6E7ACC()
{
  result = qword_1EBCECF58[0];
  if (!qword_1EBCECF58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCECF58);
  }

  return result;
}

unint64_t sub_1BC6E7B24()
{
  result = qword_1EBCECFE0;
  if (!qword_1EBCECFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCECFE0);
  }

  return result;
}

unint64_t sub_1BC6E7B7C()
{
  result = qword_1EBCECFE8[0];
  if (!qword_1EBCECFE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCECFE8);
  }

  return result;
}

unint64_t sub_1BC6E7BD4()
{
  result = qword_1EBCED070;
  if (!qword_1EBCED070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED070);
  }

  return result;
}

unint64_t sub_1BC6E7C2C()
{
  result = qword_1EBCED078;
  if (!qword_1EBCED078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED078);
  }

  return result;
}

unint64_t sub_1BC6E7C84()
{
  result = qword_1EBCED100;
  if (!qword_1EBCED100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED100);
  }

  return result;
}

unint64_t sub_1BC6E7CDC()
{
  result = qword_1EBCED108[0];
  if (!qword_1EBCED108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED108);
  }

  return result;
}

unint64_t sub_1BC6E7D34()
{
  result = qword_1EBCED190;
  if (!qword_1EBCED190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED190);
  }

  return result;
}

unint64_t sub_1BC6E7D8C()
{
  result = qword_1EBCED198[0];
  if (!qword_1EBCED198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED198);
  }

  return result;
}

unint64_t sub_1BC6E7DE4()
{
  result = qword_1EBCED220;
  if (!qword_1EBCED220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED220);
  }

  return result;
}

unint64_t sub_1BC6E7E3C()
{
  result = qword_1EBCED228[0];
  if (!qword_1EBCED228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED228);
  }

  return result;
}

unint64_t sub_1BC6E7E94()
{
  result = qword_1EBCED2B0;
  if (!qword_1EBCED2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED2B0);
  }

  return result;
}

unint64_t sub_1BC6E7EEC()
{
  result = qword_1EBCED2B8[0];
  if (!qword_1EBCED2B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED2B8);
  }

  return result;
}

unint64_t sub_1BC6E7F44()
{
  result = qword_1EBCED340;
  if (!qword_1EBCED340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED340);
  }

  return result;
}

unint64_t sub_1BC6E7F9C()
{
  result = qword_1EBCED348[0];
  if (!qword_1EBCED348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED348);
  }

  return result;
}

unint64_t sub_1BC6E7FF4()
{
  result = qword_1EBCED3D0;
  if (!qword_1EBCED3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED3D0);
  }

  return result;
}

unint64_t sub_1BC6E804C()
{
  result = qword_1EBCED3D8[0];
  if (!qword_1EBCED3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED3D8);
  }

  return result;
}

unint64_t sub_1BC6E80A4()
{
  result = qword_1EBCED460;
  if (!qword_1EBCED460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED460);
  }

  return result;
}

unint64_t sub_1BC6E80FC()
{
  result = qword_1EBCED468[0];
  if (!qword_1EBCED468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED468);
  }

  return result;
}

unint64_t sub_1BC6E8154()
{
  result = qword_1EBCED4F0;
  if (!qword_1EBCED4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCED4F0);
  }

  return result;
}

unint64_t sub_1BC6E81AC()
{
  result = qword_1EBCED4F8[0];
  if (!qword_1EBCED4F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCED4F8);
  }

  return result;
}

void (*sub_1BC6E8224(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BC6E82B4;
}

void sub_1BC6E82B4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1BC6E8334()
{
  swift_getKeyPath();
  (*(*v0 + 216))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1BC6E83BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC6E8408(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t sub_1BC6E845C(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 224))();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BC6E84FC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void (*sub_1BC6E8554(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 216))();

  v4[5] = OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC6EB3C4(&qword_1EBCDDC00, type metadata accessor for RemoteInterventionViewController.InnerState);
  sub_1BC759A70();

  v4[7] = sub_1BC6E8224(v4);
  return sub_1BC6E8690;
}

uint64_t type metadata accessor for RemoteInterventionViewController.InnerState()
{
  result = qword_1EDDCF590;
  if (!qword_1EDDCF590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC6E86E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterventionConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6E87AC@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 216))();

  v3 = (v1 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks);
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[11];
  v32 = v3[10];
  v33 = v5;
  v6 = v3[11];
  v34 = v3[12];
  v7 = v3[5];
  v8 = v3[7];
  v28 = v3[6];
  v9 = v28;
  v29 = v8;
  v10 = v3[7];
  v11 = v3[9];
  v30 = v3[8];
  v12 = v30;
  v31 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v24 = v3[2];
  v15 = v24;
  v25 = v14;
  v16 = v3[3];
  v17 = v3[5];
  v26 = v3[4];
  v18 = v26;
  v27 = v17;
  v19 = v3[1];
  v23[0] = *v3;
  v20 = v23[0];
  v23[1] = v19;
  a1[10] = v32;
  a1[11] = v6;
  a1[12] = v3[12];
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v12;
  a1[9] = v4;
  a1[2] = v15;
  a1[3] = v16;
  a1[4] = v18;
  a1[5] = v7;
  *a1 = v20;
  a1[1] = v13;
  return sub_1BC6362BC(v23, v22);
}

__n128 sub_1BC6E88C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 184))(v9);
  v3 = v9[11];
  *(a2 + 160) = v9[10];
  *(a2 + 176) = v3;
  *(a2 + 192) = v9[12];
  v4 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v4;
  v5 = v9[9];
  *(a2 + 128) = v9[8];
  *(a2 + 144) = v5;
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  v7 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v7;
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BC6E894C(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[9];
  v3 = a1[11];
  v28 = a1[10];
  v29 = v3;
  v4 = a1[11];
  v30 = a1[12];
  v5 = a1[5];
  v6 = a1[7];
  v24 = a1[6];
  v25 = v6;
  v7 = a1[7];
  v8 = a1[9];
  v26 = a1[8];
  v27 = v8;
  v9 = a1[1];
  v10 = a1[3];
  v20 = a1[2];
  v21 = v10;
  v11 = a1[3];
  v12 = a1[5];
  v22 = a1[4];
  v23 = v12;
  v13 = a1[1];
  v19[0] = *a1;
  v19[1] = v13;
  v18[10] = v28;
  v18[11] = v4;
  v18[12] = a1[12];
  v18[6] = v24;
  v18[7] = v7;
  v18[8] = v26;
  v18[9] = v2;
  v18[2] = v20;
  v18[3] = v11;
  v18[4] = v22;
  v18[5] = v5;
  v14 = *a2;
  v18[0] = v19[0];
  v18[1] = v9;
  v15 = *(*v14 + 192);
  sub_1BC6362BC(v19, &v17);
  return v15(v18);
}

uint64_t sub_1BC6E8A20(_OWORD *a1)
{
  v2 = a1[11];
  v11[10] = a1[10];
  v11[11] = v2;
  v11[12] = a1[12];
  v3 = a1[7];
  v11[6] = a1[6];
  v11[7] = v3;
  v4 = a1[9];
  v11[8] = a1[8];
  v11[9] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  v6 = a1[5];
  v11[4] = a1[4];
  v11[5] = v6;
  v7 = a1[1];
  v11[0] = *a1;
  v11[1] = v7;
  swift_getKeyPath();
  v9 = v1;
  v10 = v11;
  (*(*v1 + 224))();
  sub_1BC69811C(v11);
}

uint64_t sub_1BC6E8AF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (v1 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks);
  swift_beginAccess();
  v24[0] = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v24[3] = v3[3];
  v24[4] = v6;
  v24[1] = v4;
  v24[2] = v5;
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[8];
  v24[7] = v3[7];
  v24[8] = v9;
  v24[5] = v7;
  v24[6] = v8;
  v10 = v3[9];
  v11 = v3[10];
  v12 = v3[12];
  v24[11] = v3[11];
  v24[12] = v12;
  v24[9] = v10;
  v24[10] = v11;
  *v3 = *v2;
  v13 = v2[1];
  v14 = v2[2];
  v15 = v2[4];
  v3[3] = v2[3];
  v3[4] = v15;
  v3[1] = v13;
  v3[2] = v14;
  v16 = v2[5];
  v17 = v2[6];
  v18 = v2[8];
  v3[7] = v2[7];
  v3[8] = v18;
  v3[5] = v16;
  v3[6] = v17;
  v19 = v2[9];
  v20 = v2[10];
  v21 = v2[12];
  v3[11] = v2[11];
  v3[12] = v21;
  v3[9] = v19;
  v3[10] = v20;
  sub_1BC6362BC(v2, v23);
  return sub_1BC69811C(v24);
}

void (*sub_1BC6E8BE0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 216))();

  v4[5] = OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC6EB3C4(&qword_1EBCDDC00, type metadata accessor for RemoteInterventionViewController.InnerState);
  sub_1BC759A70();

  v4[7] = sub_1BC6E874C();
  return sub_1BC6E8D1C;
}

void sub_1BC6E8D28(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1BC759A60();

  free(v1);
}

uint64_t sub_1BC6E8DBC(void *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1BC6E8E0C(a1, a2);
  return v7;
}

uint64_t sub_1BC6E8E0C(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for InterventionConfig(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_1BC759A80();
  swift_unknownObjectRetain();
  sub_1BC677DDC(v2 + 16);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  sub_1BC6E86E8(a2, v2 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState_config);
  sub_1BC6E86E8(a2, v8);
  Callbacks.init(container:config:)(a1, v8, v18);
  sub_1BC6980C0(a2);
  v9 = (v2 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks);
  v10 = v18[11];
  v9[10] = v18[10];
  v9[11] = v10;
  v9[12] = v18[12];
  v11 = v18[7];
  v9[6] = v18[6];
  v9[7] = v11;
  v12 = v18[9];
  v9[8] = v18[8];
  v9[9] = v12;
  v13 = v18[3];
  v9[2] = v18[2];
  v9[3] = v13;
  v14 = v18[5];
  v9[4] = v18[4];
  v9[5] = v14;
  v15 = v18[1];
  *v9 = v18[0];
  v9[1] = v15;
  return v2;
}

uint64_t sub_1BC6E909C()
{
  sub_1BC677DDC(v0 + 16);
  sub_1BC6980C0(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState_config);
  v1 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 176);
  v12[10] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 160);
  v12[11] = v1;
  v12[12] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 192);
  v2 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 112);
  v12[6] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 96);
  v12[7] = v2;
  v3 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 144);
  v12[8] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 128);
  v12[9] = v3;
  v4 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 48);
  v12[2] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 32);
  v12[3] = v4;
  v5 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 80);
  v12[4] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 64);
  v12[5] = v5;
  v6 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 16);
  v12[0] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks);
  v12[1] = v6;
  sub_1BC69811C(v12);
  v7 = OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState___observationRegistrar;
  v8 = sub_1BC759A90();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1BC6E9198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for InterventionConfig(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = a1;
  *&v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC08, &qword_1BC768D40);
  sub_1BC75B640();
  sub_1BC6E86E8(*v37 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState_config, v9);

  RemoteView.init(_:)(v9, a3);
  KeyPath = swift_getKeyPath();
  v38 = a1;
  *&v39 = a2;
  v11 = sub_1BC75B640();
  (*(**v37 + 184))(&v24, v11);

  *&v37[152] = v33;
  *&v37[168] = v34;
  *&v37[184] = v35;
  *&v37[200] = v36;
  *&v37[88] = v29;
  *&v37[104] = v30;
  *&v37[120] = v31;
  *&v37[136] = v32;
  *&v37[24] = v25;
  *&v37[40] = v26;
  *&v37[56] = v27;
  *&v37[72] = v28;
  *v37 = KeyPath;
  *&v37[8] = v24;
  v12 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDDC10, &unk_1BC768D70) + 36);
  v13 = *&v37[176];
  *(v12 + 160) = *&v37[160];
  *(v12 + 176) = v13;
  *(v12 + 192) = *&v37[192];
  v14 = *&v37[112];
  *(v12 + 96) = *&v37[96];
  *(v12 + 112) = v14;
  v15 = *&v37[144];
  *(v12 + 128) = *&v37[128];
  *(v12 + 144) = v15;
  v16 = *&v37[48];
  *(v12 + 32) = *&v37[32];
  *(v12 + 48) = v16;
  v17 = *&v37[80];
  *(v12 + 64) = *&v37[64];
  *(v12 + 80) = v17;
  v18 = *&v37[16];
  *v12 = *v37;
  *(v12 + 16) = v18;
  v48 = v33;
  v49 = v34;
  v50 = v35;
  v51 = v36;
  v44 = v29;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v19 = v24;
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v43 = v28;
  *(v12 + 208) = *&v37[208];
  v38 = KeyPath;
  v39 = v19;
  sub_1BC6E944C(v37, v23);
  sub_1BC66008C(&v38, &unk_1EBCDD870, &unk_1BC767848);
  v20 = sub_1BC75A980();
  LOBYTE(KeyPath) = sub_1BC75B020();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC20, qword_1BC768D80);
  v22 = a3 + *(result + 36);
  *v22 = v20;
  *(v22 + 8) = KeyPath;
  return result;
}

uint64_t sub_1BC6E944C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD870, &unk_1BC767848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RemoteInterventionViewController.__allocating_init(facade:workflow:type:contextDictionary:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30 - v12;
  v14 = sub_1BC759EE0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for InterventionConfig(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v30 - v23;
  v25 = objc_allocWithZone(v5);
  sub_1BC6E53B4(a3);
  v26 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  sub_1BC6E3EAC(a2, a4, v17, 1, v13, v24);
  ObjectType = swift_getObjectType();
  sub_1BC6E86E8(v24, v22);
  v28 = (*(ObjectType + 96))(a1, v22);
  sub_1BC6980C0(v24);
  swift_deallocPartialClassInstance();
  return v28;
}

uint64_t RemoteInterventionViewController.init(facade:workflow:type:contextDictionary:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_1BC759EE0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InterventionConfig(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v27 - v21;
  sub_1BC6E53B4(a3);
  v23 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  sub_1BC6E3EAC(a2, a4, v15, 1, v11, v22);
  ObjectType = swift_getObjectType();
  sub_1BC6E86E8(v22, v20);
  v25 = (*(ObjectType + 96))(a1, v20);
  sub_1BC6980C0(v22);
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t RemoteInterventionViewController.init(facade:typeErasedConfig:)(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21[-v6];
  v8 = type metadata accessor for InterventionConfig(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21[-v14];
  sub_1BC65F494(a2, v21);
  v16 = swift_dynamicCast();
  v17 = *(v9 + 56);
  if (v16)
  {
    v17(v7, 0, 1, v8);
    sub_1BC66FCA4(v7, v15);
    ObjectType = swift_getObjectType();
    sub_1BC6E86E8(v15, v13);
    v19 = (*(ObjectType + 96))(a1, v13);
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_1BC6980C0(v15);
    swift_deallocPartialClassInstance();
    return v19;
  }

  else
  {
    v17(v7, 1, 1, v8);
    sub_1BC66008C(v7, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC6E9EA0(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  sub_1BC6EA4EC(a1, a2);
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

id RemoteInterventionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BC75BB30();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id RemoteInterventionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteInterventionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static RemoteInterventionViewController.typeErasedConfig(workflow:contextDictionary:type:options:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_1BC759EE0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6E53B4(a3);
  v16 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  a4[3] = type metadata accessor for InterventionConfig(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);

  return sub_1BC6E3EAC(a1, a2, v15, 1, v11, boxed_opaque_existential_1);
}

uint64_t sub_1BC6EA488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  swift_unknownObjectRetain();
  sub_1BC75C160();
  swift_unknownObjectRelease();
  v5 = a4(v7);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

void sub_1BC6EA4EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for InterventionConfig(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6E86E8(a2, v8);
  v9 = type metadata accessor for RemoteInterventionViewController.InnerState();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = swift_unknownObjectRetain();
  sub_1BC6E8E0C(v13, v8);
  *&v2[OBJC_IVAR___SCUIRemoteInterventionViewController_innerState] = v12;
  v55 = v12;

  sub_1BC75B630();
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC58, &qword_1BC768ED8));
  v15 = sub_1BC75AD20();
  *&v3[OBJC_IVAR___SCUIRemoteInterventionViewController_controller] = v15;
  v16 = type metadata accessor for RemoteInterventionViewController();
  v54.receiver = v3;
  v54.super_class = v16;
  v17 = v15;
  v18 = objc_msgSendSuper2(&v54, sel_initWithNibName_bundle_, 0, 0);
  [v18 addChildViewController_];
  v19 = [v17 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  v21 = [v18 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = [v17 view];
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  [v21 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BC768CD0;
  v25 = [v18 view];

  if (!v25)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = [v25 leadingAnchor];

  v27 = [v17 view];
  if (!v27)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v28 = v27;
  v29 = [v27 leadingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v24 + 32) = v30;
  v31 = [v18 view];

  if (!v31)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v32 = [v31 trailingAnchor];

  v33 = [v17 view];
  if (!v33)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34 = v33;
  v35 = [v33 trailingAnchor];

  v36 = [v32 constraintEqualToAnchor_];
  *(v24 + 40) = v36;
  v37 = [v18 view];

  if (!v37)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v38 = [v37 topAnchor];

  v39 = [v17 view];
  if (!v39)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = v39;
  v41 = [v39 topAnchor];

  v42 = [v38 constraintEqualToAnchor_];
  *(v24 + 48) = v42;
  v43 = [v18 view];

  if (!v43)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v44 = [v43 bottomAnchor];

  v45 = [v17 view];
  if (!v45)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v46 = v45;
  v47 = objc_opt_self();
  v48 = [v46 bottomAnchor];

  v49 = [v44 constraintEqualToAnchor_];
  *(v24 + 56) = v49;
  sub_1BC6EB470();
  v50 = sub_1BC75BCF0();

  [v47 activateConstraints_];

  v51 = [v17 view];
  if (v51)
  {
    v52 = [objc_opt_self() clearColor];
    [v51 setBackgroundColor_];

    [v17 didMoveToParentViewController_];
    sub_1BC6980C0(a2);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t _s26SensitiveContentAnalysisUI32RemoteInterventionViewControllerC8workflow20fromTypeErasedConfigSo24SCUIInterventionWorkflowVyp_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15[-v4];
  v6 = type metadata accessor for InterventionConfig(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC65F494(a1, v15);
  v11 = swift_dynamicCast();
  v12 = *(v7 + 56);
  if (v11)
  {
    v12(v5, 0, 1, v6);
    sub_1BC66FCA4(v5, v10);
    v13 = sub_1BC6E4800();
    sub_1BC6980C0(v10);
    return v13;
  }

  else
  {
    v12(v5, 1, 1, v6);
    sub_1BC66008C(v5, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t _s26SensitiveContentAnalysisUI32RemoteInterventionViewControllerC17contextDictionary20fromTypeErasedConfigSDys11AnyHashableVypGyp_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15[-v4];
  v6 = type metadata accessor for InterventionConfig(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC65F494(a1, v15);
  v11 = swift_dynamicCast();
  v12 = *(v7 + 56);
  if (v11)
  {
    v12(v5, 0, 1, v6);
    sub_1BC66FCA4(v5, v10);
    v13 = *&v10[*(v6 + 28)];

    sub_1BC6980C0(v10);
    return v13;
  }

  else
  {
    v12(v5, 1, 1, v6);
    sub_1BC66008C(v5, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t _s26SensitiveContentAnalysisUI32RemoteInterventionViewControllerC16interventionType04fromJ12ErasedConfigSo016SCUIInterventionJ0Vyp_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15[-v4];
  v6 = type metadata accessor for InterventionConfig(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC65F494(a1, v15);
  v11 = swift_dynamicCast();
  v12 = *(v7 + 56);
  if (v11)
  {
    v12(v5, 0, 1, v6);
    sub_1BC66FCA4(v5, v10);
    v13 = sub_1BC6E4990();
    sub_1BC6980C0(v10);
    return v13;
  }

  else
  {
    v12(v5, 1, 1, v6);
    sub_1BC66008C(v5, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC6EB108()
{
  result = type metadata accessor for InterventionConfig(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1BC759A90();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BC6EB1E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BC6EB230(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1BC6EB27C()
{
  result = qword_1EBCDDC38;
  if (!qword_1EBCDDC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDC20, qword_1BC768D80);
    sub_1BC6EB308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDC38);
  }

  return result;
}

unint64_t sub_1BC6EB308()
{
  result = qword_1EBCDDC40;
  if (!qword_1EBCDDC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBCDDC10, &unk_1BC768D70);
    sub_1BC6EB3C4(&qword_1EBCDCD90, type metadata accessor for RemoteView);
    sub_1BC6EB40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDC40);
  }

  return result;
}

uint64_t sub_1BC6EB3C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC6EB40C()
{
  result = qword_1EBCDDC50;
  if (!qword_1EBCDDC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBCDD870, &unk_1BC767848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDC50);
  }

  return result;
}