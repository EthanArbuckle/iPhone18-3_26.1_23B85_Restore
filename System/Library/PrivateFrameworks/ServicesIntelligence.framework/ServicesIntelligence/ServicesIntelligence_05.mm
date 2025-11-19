_BYTE *sub_230D68664(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_230D68858()
{
  if (!qword_27DB5B9D8[0])
  {
    v0 = sub_230E69450();
    if (!v1)
    {
      atomic_store(v0, qword_27DB5B9D8);
    }
  }
}

uint64_t sub_230D688A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373654DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726556746E657665 && a2 == 0xEC0000006E6F6973 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E82820 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D68AAC(unsigned __int8 a1)
{
  sub_230E699B0();
  MEMORY[0x23191E2B0](a1);
  return sub_230E699D0();
}

uint64_t sub_230D68AF4(unsigned __int8 a1)
{
  v1 = 0x6567617373654DLL;
  v2 = 0x726556746E657665;
  v3 = 0x6D6954746E657665;
  if (a1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x707954746E657665;
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

uint64_t sub_230D68BA4(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v26[0] = a2;
  v26[1] = v4;
  v5 = a2[4];
  type metadata accessor for EnhancedMetricsEvent.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_230E69870();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v26 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v6;
  v14 = v26[2];
  sub_230E69A50();
  v31 = 0;
  v15 = v26[3];
  sub_230E69850();
  if (!v15)
  {
    v16 = v26[0];
    v17 = (v14 + *(v26[0] + 44));
    v18 = *v17;
    v19 = v17[1];
    v30 = 1;
    sub_230E69810();
    v20 = *(v14 + v16[12]);
    v29 = 2;
    sub_230E69840();
    v21 = *(v14 + v16[13]);
    v28 = 3;
    sub_230E69830();
    v22 = (v14 + v16[14]);
    v23 = *v22;
    v24 = v22[1];
    v27 = 4;
    sub_230E697B0();
  }

  return (*(v7 + 8))(v11, v13);
}

uint64_t sub_230D68DC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v36 = *(a2 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EnhancedMetricsEvent.CodingKeys();
  swift_getWitnessTable();
  v39 = sub_230E69790();
  v35 = *(v39 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v39, v10);
  v12 = &v33 - v11;
  v37 = a3;
  v13 = type metadata accessor for EnhancedMetricsEvent();
  v33 = *(v13 - 1);
  v14 = *(v33 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v33 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v40 = v12;
  v20 = v41;
  sub_230E69A30();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v22 = v35;
  v21 = v36;
  v47 = 0;
  sub_230E69760();
  (*(v21 + 32))(v17, v38, a2);
  v46 = 1;
  v23 = sub_230E69720();
  v24 = &v17[v13[11]];
  *v24 = v23;
  v24[1] = v25;
  v45 = 2;
  *&v17[v13[12]] = sub_230E69750();
  v44 = 3;
  sub_230E69740();
  *&v17[v13[13]] = v26;
  v43 = 4;
  v27 = sub_230E696B0();
  v29 = v28;
  (*(v22 + 8))(v40, v39);
  v30 = &v17[v13[14]];
  *v30 = v27;
  v30[1] = v29;
  v31 = v33;
  (*(v33 + 16))(v34, v17, v13);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return (*(v31 + 8))(v17, v13);
}

BOOL sub_230D69210(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_230D68A74(*a1, *a2);
}

uint64_t sub_230D69228(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_230D68AAC(*v1);
}

uint64_t sub_230D69238(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_230D68A84(a1, *v2);
}

uint64_t sub_230D69248(uint64_t a1, void *a2)
{
  sub_230E699B0();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_230D68A84(v8, *v2);
  return sub_230E699D0();
}

uint64_t sub_230D69294(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_230D68AF4(*v1);
}

uint64_t sub_230D692A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_230D688A8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_230D692D8@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_230D694F4();
  *a2 = result;
  return result;
}

uint64_t sub_230D6930C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_230D69360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_230D693B4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_230D69428(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t static LoggingConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  v4 = sub_230D6A090(v2, v3);

  return v4 & 1;
}

uint64_t sub_230D69598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D69620(uint64_t a1)
{
  v2 = sub_230D6A4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D6965C(uint64_t a1)
{
  v2 = sub_230D6A4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LoggingConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BA60, &qword_230E72330);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6A4E4();

  sub_230E69A50();
  v12[1] = v9;
  sub_230D6A538();
  sub_230E69850();

  return (*(v4 + 8))(v8, v3);
}

uint64_t LoggingConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BA68, &qword_230E72338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6A4E4();
  sub_230E69A30();
  if (!v2)
  {
    sub_230D6A58C();
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D69994(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  v4 = sub_230D6A090(v2, v3);

  return v4 & 1;
}

ServicesIntelligence::MetricsTopic_optional __swiftcall MetricsTopic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MetricsTopic.rawValue.getter()
{
  v1 = 0xD00000000000001FLL;
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
    return 0x6F5F706D615F7078;
  }
}

uint64_t sub_230D69AC0()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D69B78()
{
  *v0;
  *v0;
  sub_230E69100();
}

uint64_t sub_230D69C1C()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230D69CDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00676F6C5F7064;
  v4 = 0x8000000230E802F0;
  v5 = 0xD00000000000001FLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000230E80310;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F5F706D615F7078;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_230D69E00(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x8000000230E802F0;
  if (v3 == 1)
  {
    v5 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000230E802F0;
  }

  else
  {
    v6 = 0x8000000230E80310;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F5F706D615F7078;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEE00676F6C5F7064;
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = 0x8000000230E80310;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6F5F706D615F7078;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE00676F6C5F7064;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230E698C0();
  }

  return v11 & 1;
}

uint64_t sub_230D69EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_230D6C9CC();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_230D69F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_230D6C9CC();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t sub_230D69FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_230D6C9CC();
  v9 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140EE8](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_230D6A02C(uint64_t a1, uint64_t a2)
{
  v4 = sub_230D6C9CC();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

uint64_t sub_230D6A090(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v33 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v35 = result;
  v34 = v8;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v37 = (v7 - 1) & v7;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(v3 + 48) + v12);
      v14 = *(v3 + 56) + 48 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v19 = *(v14 + 24);
      v18 = *(v14 + 32);
      v20 = *(v14 + 40);

      v38 = v18;

      if (!v16)
      {
        return 1;
      }

      v21 = sub_230DB4A68(v13);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = *(v2 + 56) + 48 * v21;
      v24 = *(v23 + 8);
      v25 = *(v23 + 16);
      v26 = *(v23 + 24);
      v27 = *(v23 + 32);
      v28 = *v23;
      v29 = *(v23 + 40);

      if ((sub_230D0B544(v28, v15) & 1) == 0 || (sub_230D26220(v24, v16) & 1) == 0 || v25 != v17 || (sub_230D6A5E0(v26, v19) & 1) == 0 || (sub_230D6A784(v27, v38) & 1) == 0)
      {
        goto LABEL_40;
      }

      if (v29)
      {
        if (!v20)
        {
          goto LABEL_40;
        }

        v30 = *(v29 + 16);
        if (v30 != *(v20 + 16))
        {
          goto LABEL_40;
        }

        if (v30 && v29 != v20)
        {
          v31 = 0;
          while (1)
          {
            v32 = *(v29 + v31 + 32) == *(v20 + v31 + 32) && *(v29 + v31 + 40) == *(v20 + v31 + 40);
            if (!v32 && (sub_230E698C0() & 1) == 0)
            {
              break;
            }

            v31 += 16;
            if (!--v30)
            {
              goto LABEL_26;
            }
          }

LABEL_40:

LABEL_41:

          return 0;
        }
      }

      else if (v20)
      {
        goto LABEL_40;
      }

LABEL_26:

      v3 = v35;
      v2 = a2;
      v8 = v34;
      v7 = v37;
      if (!v37)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_41;
  }

LABEL_7:
  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v33 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v37 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

unint64_t sub_230D6A4E4()
{
  result = qword_2815664F8;
  if (!qword_2815664F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664F8);
  }

  return result;
}

unint64_t sub_230D6A538()
{
  result = qword_2815661B0;
  if (!qword_2815661B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661B0);
  }

  return result;
}

unint64_t sub_230D6A58C()
{
  result = qword_27DB5BA70;
  if (!qword_27DB5BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BA70);
  }

  return result;
}

uint64_t sub_230D6A5E0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

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
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_230DA41A0(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_230E698C0();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230D6A784(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_230DA41A0(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230D6A8C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v38 = (v6 + 63) >> 6;
  v39 = result;
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v43 = (v8 - 1) & v8;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v3 + 56) + 48 * v12;
    v18 = *v16;
    v17 = *(v16 + 8);
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v45 = *(v16 + 32);
    v44 = *(v16 + 40);
    v41 = v14 == 0;
    v42 = *(v16 + 41);

    v46 = v17;

    if (!v14)
    {
      return 1;
    }

    v21 = sub_230DA41A0(v15, v14);
    v23 = v22;

    if ((v23 & 1) == 0 || ((v24 = *(v2 + 56) + 48 * v21, v26 = *(v24 + 16), v25 = *(v24 + 24), v27 = *(v24 + 32), v28 = *(v24 + 40), v29 = *(v24 + 41), *v24 == v18) ? (v30 = v46 == *(v24 + 8)) : (v30 = 0), !v30 && (sub_230E698C0() & 1) == 0))
    {
LABEL_51:

      return 0;
    }

    if (v25)
    {
      if (!v19)
      {
        goto LABEL_51;
      }

      v31 = v26 == v20 && v25 == v19;
      if (!v31 && (sub_230E698C0() & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v19)
    {
      goto LABEL_51;
    }

    if (v27 != v45 || v44 != v28)
    {
      goto LABEL_51;
    }

    if (v29)
    {
      v32 = 0x3233746E69;
    }

    else
    {
      v32 = 0x323374616F6C66;
    }

    if (v29)
    {
      v33 = 0xE500000000000000;
    }

    else
    {
      v33 = 0xE700000000000000;
    }

    if (v42)
    {
      v34 = 0x3233746E69;
    }

    else
    {
      v34 = 0x323374616F6C66;
    }

    if (v42)
    {
      v35 = 0xE500000000000000;
    }

    else
    {
      v35 = 0xE700000000000000;
    }

    if (v32 == v34 && v33 == v35)
    {

      v3 = v39;
      v2 = a2;
      v8 = v43;
    }

    else
    {
      v37 = sub_230E698C0();

      v3 = v39;
      v2 = a2;
      v8 = v43;
      result = v41;
      if ((v37 & 1) == 0)
      {
        return result;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v38)
    {
      return 1;
    }

    v11 = *(v5 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v43 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230D6ABB8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v3 + 56) + 72 * v12;
    v17 = *(v16 + 64);
    v19 = *(v16 + 32);
    v18 = *(v16 + 48);
    v50 = *(v16 + 16);
    v20 = *v16;
    v51 = v19;
    v52 = v18;
    v49 = v20;
    v53 = v17;
    v33 = v18;
    v34 = v50;
    v31 = v19;
    v32 = v20;

    sub_230D6CA20(&v49, &v44);
    if (!v14)
    {
      return 1;
    }

    v49 = v32;
    v50 = v34;
    v51 = v31;
    v52 = v33;
    v53 = v17;
    v21 = sub_230DA41A0(v15, v14);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      v46 = v51;
      v47 = v52;
      v48 = v53;
      v44 = v49;
      v45 = v50;
      sub_230D6CA7C(&v44);
      return 0;
    }

    v24 = *(a2 + 56) + 72 * v21;
    v40[0] = *v24;
    v26 = *(v24 + 32);
    v25 = *(v24 + 48);
    v27 = *(v24 + 16);
    v41 = *(v24 + 64);
    v40[2] = v26;
    v40[3] = v25;
    v40[1] = v27;
    v28 = *(v24 + 48);
    v37 = *(v24 + 32);
    v38 = v28;
    v39 = *(v24 + 64);
    v29 = *(v24 + 16);
    v35 = *v24;
    v36 = v29;
    sub_230D6CA20(v40, &v44);
    v30 = _s20ServicesIntelligence25InferenceOutputDefinitionV2eeoiySbAC_ACtFZ_0(&v35, &v49);
    v42[2] = v37;
    v42[3] = v38;
    v43 = v39;
    v42[0] = v35;
    v42[1] = v36;
    sub_230D6CA7C(v42);
    v46 = v51;
    v47 = v52;
    v48 = v53;
    v44 = v49;
    v45 = v50;
    result = sub_230D6CA7C(&v44);
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230D6AE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736369706F74 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D6AEA0(uint64_t a1)
{
  v2 = sub_230D6B0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D6AEDC(uint64_t a1)
{
  v2 = sub_230D6B0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetricsLoggingConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BA78, &qword_230E72340);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6B0D0();

  sub_230E69A50();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BA80, &qword_230E72348);
  sub_230D6B390(&qword_281565FD0, sub_230D6B124, sub_230D6B178);
  sub_230E69850();

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D6B0D0()
{
  result = qword_2815661C8;
  if (!qword_2815661C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661C8);
  }

  return result;
}

unint64_t sub_230D6B124()
{
  result = qword_2815667A8;
  if (!qword_2815667A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815667A8);
  }

  return result;
}

unint64_t sub_230D6B178()
{
  result = qword_2815661D0;
  if (!qword_2815661D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661D0);
  }

  return result;
}

uint64_t MetricsLoggingConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BA88, &qword_230E72350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6B0D0();
  sub_230E69A30();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BA80, &qword_230E72348);
    sub_230D6B390(&qword_27DB5BA90, sub_230D6B420, sub_230D6B474);
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D6B390(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BA80, &qword_230E72348);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D6B420()
{
  result = qword_27DB5BA98;
  if (!qword_27DB5BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BA98);
  }

  return result;
}

unint64_t sub_230D6B474()
{
  result = qword_27DB5BAA0;
  if (!qword_27DB5BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BAA0);
  }

  return result;
}

uint64_t sub_230D6B5E8()
{
  v1 = *v0;
  v2 = 0x6E69616D6F64;
  v3 = 0x616D65686373;
  v4 = 0xD00000000000001FLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656873696C627570;
  if (v1 != 1)
  {
    v5 = 0x676E696C706D6173;
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

uint64_t sub_230D6B6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D6C7B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D6B6D8(uint64_t a1)
{
  v2 = sub_230D6C188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D6B714(uint64_t a1)
{
  v2 = sub_230D6C188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetricsTopicConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAB0, &qword_230E72360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v12 = *(v1 + 2);
  v13 = *(v1 + 4);
  v22 = *(v1 + 3);
  v23 = v11;
  v20 = *(v1 + 5);
  v21 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6C188();
  v15 = v4;
  sub_230E69A50();
  LOBYTE(v24) = v10;
  v25 = 0;
  sub_230D0D0D4();
  sub_230E69850();
  if (!v2)
  {
    v16 = v21;
    v17 = v22;
    v18 = v20;
    v24 = v23;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAB8, &qword_230E72368);
    sub_230D6C24C(&qword_27DB5BAC0, sub_230D0D0D4);
    sub_230E69850();
    LOBYTE(v24) = 2;
    sub_230E69830();
    v24 = v17;
    v25 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAC8, &qword_230E72370);
    sub_230D6C2C4(&qword_281565FC8);
    sub_230E69850();
    v24 = v16;
    v25 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    sub_230D6C1DC(&unk_281565FA0);
    sub_230E69850();
    v24 = v18;
    v25 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230D46AD4(&qword_27DB5B148);
    sub_230E697F0();
  }

  return (*(v5 + 8))(v9, v15);
}

uint64_t MetricsTopicConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD8, &qword_230E72378);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6C188();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  sub_230D0D17C();
  sub_230E69760();
  v12 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAB8, &qword_230E72368);
  v23 = 1;
  sub_230D6C24C(&qword_27DB5BAE0, sub_230D0D17C);
  sub_230E69760();
  v13 = v22;
  LOBYTE(v22) = 2;
  sub_230E69740();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAC8, &qword_230E72370);
  v23 = 3;
  sub_230D6C2C4(&qword_27DB5BAE8);
  sub_230E69760();
  v21 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
  v23 = 4;
  sub_230D6C1DC(&qword_27DB5D980);
  sub_230E69760();
  v20 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  v23 = 5;
  sub_230D46AD4(&qword_27DB5B170);
  sub_230E69700();
  (*(v6 + 8))(v10, v5);
  v18 = v21;
  v17 = v22;
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  v19 = v20;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_230D6BFA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  if (*(v4 + 16))
  {
    v5 = sub_230DA41A0(a1, a2);
    if (v6)
    {
      v3 = *(*(v4 + 56) + 8 * v5);
    }
  }

  if (v3 <= 0.0)
  {
    return 0;
  }

  if (v3 >= 1.0)
  {
    return 1;
  }

  return vcvtd_n_f64_u64(sub_230D6C028(0x20000000000001uLL), 0x35uLL) < v3;
}

unint64_t sub_230D6C028(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23191EAF0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23191EAF0](&v3, 8);
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

uint64_t _s20ServicesIntelligence25MetricsTopicConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  if ((sub_230D0B544(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v12 = sub_230D26220(v2, v7);
  result = 0;
  if ((v12 & 1) != 0 && v3 == v8)
  {
    if (sub_230D6A5E0(v5, v10) & 1) != 0 && (sub_230D6A784(v4, v9))
    {
      if (v6)
      {
        if (v11 && (sub_230D2654C(v6, v11) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v11)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_230D6C188()
{
  result = qword_2815661E8;
  if (!qword_2815661E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661E8);
  }

  return result;
}

uint64_t sub_230D6C1DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BAD0, &qword_230E73560);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230D6C24C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BAB8, &qword_230E72368);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230D6C2C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BAC8, &qword_230E72370);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D6C334()
{
  result = qword_2815667A0;
  if (!qword_2815667A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815667A0);
  }

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

uint64_t sub_230D6C3CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_230D6C414(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230D6C4A4()
{
  result = qword_27DB5BAF0;
  if (!qword_27DB5BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BAF0);
  }

  return result;
}

unint64_t sub_230D6C4FC()
{
  result = qword_27DB5BAF8;
  if (!qword_27DB5BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BAF8);
  }

  return result;
}

unint64_t sub_230D6C554()
{
  result = qword_27DB5BB00;
  if (!qword_27DB5BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB00);
  }

  return result;
}

unint64_t sub_230D6C5AC()
{
  result = qword_2815661D8;
  if (!qword_2815661D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661D8);
  }

  return result;
}

unint64_t sub_230D6C604()
{
  result = qword_2815661E0;
  if (!qword_2815661E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661E0);
  }

  return result;
}

unint64_t sub_230D6C65C()
{
  result = qword_2815661B8;
  if (!qword_2815661B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661B8);
  }

  return result;
}

unint64_t sub_230D6C6B4()
{
  result = qword_2815661C0;
  if (!qword_2815661C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661C0);
  }

  return result;
}

unint64_t sub_230D6C70C()
{
  result = qword_2815664E8;
  if (!qword_2815664E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664E8);
  }

  return result;
}

unint64_t sub_230D6C764()
{
  result = qword_2815664F0;
  if (!qword_2815664F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664F0);
  }

  return result;
}

uint64_t sub_230D6C7B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xEA00000000007372 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xEC00000065746152 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000230E82840 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230E80250 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_230E698C0();

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

unint64_t sub_230D6C9CC()
{
  result = qword_281566798;
  if (!qword_281566798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566798);
  }

  return result;
}

_BYTE *LogMetricsRequest.init(topic:events:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_230D6CAFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_230D6CBC0(char a1)
{
  if (a1)
  {
    return 0x73746E657665;
  }

  else
  {
    return 0x6369706F74;
  }
}

BOOL sub_230D6CBF0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_230D09898(*a1, *a2);
}

uint64_t sub_230D6CC04(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_230D098D0(*v1);
}

uint64_t sub_230D6CC14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_230D098A8(a1, *v2);
}

uint64_t sub_230D6CC24(uint64_t a1, uint64_t a2)
{
  sub_230E699B0();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_230D098A8(v7, *v2);
  return sub_230E699D0();
}

uint64_t sub_230D6CC6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_230D6CBC0(*v1);
}

uint64_t sub_230D6CC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_230D6CAFC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_230D6CCAC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_230D0B1DC();
  *a2 = result;
  return result;
}

uint64_t sub_230D6CCD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_230D6CD2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LogMetricsRequest.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v18 = *(a2 + 16);
  v19 = v4;
  type metadata accessor for LogMetricsRequest.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_230E69870();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  v10 = *v2;
  v17 = *(v2 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v5;
  sub_230E69A50();
  LOBYTE(v23) = v10;
  v24 = 0;
  sub_230D6B124();
  v13 = v21;
  sub_230E69850();
  if (v13)
  {
    return (*(v20 + 8))(v9, v5);
  }

  v15 = v20;
  v23 = v17;
  v24 = 1;
  sub_230E692C0();
  v22 = *(v19 + 16);
  swift_getWitnessTable();
  sub_230E69850();
  return (*(v15 + 8))(v9, v12);
}

uint64_t LogMetricsRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a3;
  type metadata accessor for LogMetricsRequest.CodingKeys();
  swift_getWitnessTable();
  v19 = sub_230E69790();
  v17 = *(v19 - 8);
  v6 = *(v17 + 64);
  MEMORY[0x28223BE20](v19, v7);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230E69A30();
  if (!v3)
  {
    v12 = v17;
    v11 = v18;
    v23 = 0;
    sub_230D6B420();
    v13 = v19;
    sub_230E69760();
    v22 = v21;
    sub_230E692C0();
    v23 = 1;
    v20 = *(a2 + 8);
    swift_getWitnessTable();
    sub_230E69760();
    (*(v12 + 8))(v9, v13);
    v15 = v21;
    *v11 = v22;
    *(v11 + 8) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LogOperationMetricsRequest.eventType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LogOperationMetricsRequest.correlationID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall LogOperationMetricsRequest.init(eventType:eventVersion:subOperations:correlationID:)(ServicesIntelligence::LogOperationMetricsRequest *__return_ptr retstr, Swift::String eventType, Swift::Int eventVersion, Swift::OpaquePointer subOperations, Swift::String_optional correlationID)
{
  retstr->eventType = eventType;
  retstr->eventVersion = eventVersion;
  retstr->subOperations = subOperations;
  retstr->correlationID = correlationID;
}

uint64_t sub_230D6D2BC()
{
  v1 = 0x707954746E657665;
  v2 = 0x617265704F627573;
  if (*v0 != 2)
  {
    v2 = 0x74616C6572726F63;
  }

  if (*v0)
  {
    v1 = 0x726556746E657665;
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

uint64_t sub_230D6D35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D6F4C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D6D384(uint64_t a1)
{
  v2 = sub_230D6D68C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D6D3C0(uint64_t a1)
{
  v2 = sub_230D6D68C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogOperationMetricsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB08, &qword_230E72A80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v18 = v1[3];
  v19 = v11;
  v12 = v1[4];
  v17[0] = v1[5];
  v17[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6D68C();
  sub_230E69A50();
  v25 = 0;
  v14 = v20;
  sub_230E69810();
  if (!v14)
  {
    v16 = v18;
    v24 = 1;
    sub_230E69840();
    v21 = v16;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB18, &qword_230E72A88);
    sub_230D6DA34(&qword_27DB5BB20, sub_230D6D6E0);
    sub_230E69850();
    v22 = 3;
    sub_230E697B0();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D6D68C()
{
  result = qword_27DB5BB10;
  if (!qword_27DB5BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB10);
  }

  return result;
}

unint64_t sub_230D6D6E0()
{
  result = qword_27DB5BB28;
  if (!qword_27DB5BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB28);
  }

  return result;
}

uint64_t LogOperationMetricsRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB30, &qword_230E72A90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6D68C();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v12 = sub_230E69720();
  v14 = v13;
  v15 = v12;
  v28 = 1;
  v24 = sub_230E69750();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB18, &qword_230E72A88);
  v27 = 2;
  sub_230D6DA34(&qword_27DB5BB38, sub_230D6DAAC);
  sub_230E69760();
  v23 = v25;
  v26 = 3;
  v17 = sub_230E696B0();
  v19 = v18;
  v20 = *(v6 + 8);
  v22 = v17;
  v20(v10, v5);
  *a2 = v15;
  a2[1] = v14;
  v21 = v23;
  a2[2] = v24;
  a2[3] = v21;
  a2[4] = v22;
  a2[5] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D6DA34(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BB18, &qword_230E72A88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D6DAAC()
{
  result = qword_27DB5BB40;
  if (!qword_27DB5BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB40);
  }

  return result;
}

uint64_t SubOperation.action.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SubOperation.executionDuration.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t SubOperation.memoryUsage.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t SubOperation.init(action:executionDuration:memoryUsage:errors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6 & 1;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_230D6DBB0()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D6DC78()
{
  *v0;
  *v0;
  *v0;
  sub_230E69100();
}

uint64_t sub_230D6DD2C()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D6DDF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_230D6F648();
  *a2 = result;
  return result;
}

void sub_230D6DE20(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6E6F69746361;
  v4 = 0xEB00000000656761;
  v5 = 0x735579726F6D656DLL;
  if (*v1 != 2)
  {
    v5 = 0x73726F727265;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000230E80330;
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

unint64_t sub_230D6DEA4()
{
  v1 = 0x6E6F69746361;
  v2 = 0x735579726F6D656DLL;
  if (*v0 != 2)
  {
    v2 = 0x73726F727265;
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

uint64_t sub_230D6DF24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_230D6F648();
  *a1 = result;
  return result;
}

uint64_t sub_230D6DF4C(uint64_t a1)
{
  v2 = sub_230D6E3F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D6DF88(uint64_t a1)
{
  v2 = sub_230D6E3F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D6DFC4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SubOperation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB48, &unk_230E72A98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v34 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6E3F4();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v44) = 0;
  v12 = sub_230E69720();
  v15 = v14;
  v40 = v12;
  LOBYTE(v44) = 1;
  v16 = sub_230E696D0();
  v37 = a2;
  v38 = v16;
  v18 = v17;
  v46 = v17 & 1;
  LOBYTE(v44) = 2;
  v36 = sub_230E696D0();
  v20 = v19;
  v45 = v19 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  v47 = 3;
  sub_230D46AD4(&qword_27DB5B170);
  sub_230E69700();
  v21 = v44;
  if (v44)
  {
    v22 = *(v44 + 16);
    if (v22)
    {
      v35 = v15;
      v43 = v22;
      v44 = MEMORY[0x277D84F90];
      v23 = v21;
      sub_230D48E88(0, v22, 0);
      v24 = v44;
      v39 = sub_230D6ED8C();
      v34 = v23;
      v25 = (v23 + 40);
      do
      {
        v27 = *(v25 - 1);
        v26 = *v25;
        v28 = swift_allocError();
        *v29 = v27;
        v29[1] = v26;
        v44 = v24;
        v31 = *(v24 + 16);
        v30 = *(v24 + 24);
        v41 = v28;
        v42 = v31 + 1;

        if (v31 >= v30 >> 1)
        {
          sub_230D48E88((v30 > 1), v42, 1);
          v24 = v44;
        }

        v32 = v41;
        *(v24 + 16) = v42;
        *(v24 + 8 * v31 + 32) = v32;
        v25 += 2;
        --v43;
      }

      while (v43);
      (*(v6 + 8))(v10, v5);

      v18 = v46;
      v20 = v45;
      v15 = v35;
    }

    else
    {

      (*(v6 + 8))(v10, v5);
      v24 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    (*(v6 + 8))(v10, v5);
    v24 = 0;
  }

  v33 = v37;
  *v37 = v40;
  v33[1] = v15;
  v33[2] = v38;
  *(v33 + 24) = v18 & 1;
  v33[4] = v36;
  *(v33 + 40) = v20 & 1;
  v33[6] = v24;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D6E3F4()
{
  result = qword_27DB5BB50;
  if (!qword_27DB5BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB50);
  }

  return result;
}

uint64_t SubOperation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB60, &unk_230E72AA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v26 - v7;
  v10 = *v1;
  v9 = v1[1];
  v31 = v1[2];
  LODWORD(v30) = *(v1 + 24);
  v29 = v1[4];
  v28 = *(v1 + 40);
  v27 = v1[6];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6E3F4();
  sub_230E69A50();
  LOBYTE(v34) = 0;
  v12 = v8;
  v13 = v32;
  sub_230E69810();
  if (v13)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v15 = v27;
  v32 = v4;
  LOBYTE(v34) = 1;
  sub_230E697C0();
  LOBYTE(v34) = 2;
  sub_230E697C0();
  v16 = v32;
  if (v15)
  {
    v31 = 0;
    v17 = *(v15 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v30 = v3;
      v36 = MEMORY[0x277D84F90];
      sub_230D48880(0, v17, 0);
      v18 = v36;
      v19 = (v15 + 32);
      do
      {
        v20 = *v19;
        v34 = 0;
        v35 = 0xE000000000000000;
        v33 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
        sub_230E695F0();
        v21 = v34;
        v22 = v35;
        v36 = v18;
        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_230D48880((v23 > 1), v24 + 1, 1);
          v18 = v36;
        }

        *(v18 + 16) = v24 + 1;
        v25 = v18 + 16 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        ++v19;
        --v17;
      }

      while (v17);
      v3 = v30;
      v16 = v32;
    }

    v34 = v18;
    LOBYTE(v36) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230D46AD4(&qword_27DB5B148);
    sub_230E69850();
  }

  return (*(v16 + 8))(v12, v3);
}

uint64_t LogMetricsResponse.init(receivedCount:enqueuedCount:omittedFields:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_230D6E808()
{
  v1 = 0x6465756575716E65;
  if (*v0 != 1)
  {
    v1 = 0x4664657474696D6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465766965636572;
  }
}

uint64_t sub_230D6E878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D6F694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D6E8A0(uint64_t a1)
{
  v2 = sub_230D6EDE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D6E8DC(uint64_t a1)
{
  v2 = sub_230D6EDE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogMetricsResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB68, &qword_230E72AB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - v8;
  v11 = *v1;
  v10 = v1[1];
  v16 = v1[2];
  v17 = v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6EDE0();
  sub_230E69A50();
  v21 = 0;
  sub_230E69840();
  if (!v2)
  {
    v14 = v16;
    v20 = 1;
    sub_230E69840();
    v18 = v14;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
    sub_230D0AD9C(&qword_27DB5A6C0);
    sub_230E69850();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t LogMetricsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DB5BB78, &qword_230E72AC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6EDE0();
  sub_230E69A30();
  if (!v2)
  {
    v19 = 0;
    v12 = sub_230E69750();
    v18 = 1;
    v14 = sub_230E69750();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
    v17 = 2;
    sub_230D0AD9C(qword_27DB5A6C8);
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    v15 = v16[1];
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D6ED8C()
{
  result = qword_27DB5BB58;
  if (!qword_27DB5BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB58);
  }

  return result;
}

unint64_t sub_230D6EDE0()
{
  result = qword_27DB5BB70;
  if (!qword_27DB5BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB70);
  }

  return result;
}

uint64_t sub_230D6EE48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for LogMetricsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for LogMetricsError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_230D6F024(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_230D6F050(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

uint64_t sub_230D6F0A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_230D6F0E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_230D6F17C()
{
  result = qword_27DB5BC80;
  if (!qword_27DB5BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BC80);
  }

  return result;
}

unint64_t sub_230D6F1D4()
{
  result = qword_27DB5BC88;
  if (!qword_27DB5BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BC88);
  }

  return result;
}

unint64_t sub_230D6F22C()
{
  result = qword_27DB5BC90;
  if (!qword_27DB5BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BC90);
  }

  return result;
}

unint64_t sub_230D6F284()
{
  result = qword_27DB5BC98;
  if (!qword_27DB5BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BC98);
  }

  return result;
}

unint64_t sub_230D6F2DC()
{
  result = qword_27DB5BCA0;
  if (!qword_27DB5BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BCA0);
  }

  return result;
}

unint64_t sub_230D6F334()
{
  result = qword_27DB5BCA8;
  if (!qword_27DB5BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BCA8);
  }

  return result;
}

unint64_t sub_230D6F38C()
{
  result = qword_27DB5BCB0;
  if (!qword_27DB5BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BCB0);
  }

  return result;
}

unint64_t sub_230D6F3E4()
{
  result = qword_27DB5BCB8;
  if (!qword_27DB5BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BCB8);
  }

  return result;
}

unint64_t sub_230D6F43C()
{
  result = qword_27DB5BCC0;
  if (!qword_27DB5BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BCC0);
  }

  return result;
}

uint64_t sub_230D6F4C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726556746E657665 && a2 == 0xEC0000006E6F6973 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617265704F627573 && a2 == 0xED0000736E6F6974 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616C6572726F63 && a2 == 0xED000044496E6F69)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D6F648()
{
  v0 = sub_230E69680();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_230D6F694(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766965636572 && a2 == 0xED0000746E756F43;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465756575716E65 && a2 == 0xED0000746E756F43 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4664657474696D6FLL && a2 == 0xED000073646C6569)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D6F7D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v4 + 104) = a3;
  *(v4 + 112) = a4;
  *(v4 + 96) = a2;
  *(v4 + 596) = a1;
  v6 = type metadata accessor for SQLDatabaseConfiguration();
  *(v4 + 120) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v8 = sub_230E68D80();
  *(v4 + 144) = v8;
  v9 = *(v8 - 8);
  *(v4 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D6F90C, a3, 0);
}

uint64_t sub_230D6F90C()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  v2 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 596);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30[0] = v8;
    *v7 = 136315650;
    LOBYTE(v29) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v30);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v30);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v29 = 0x6C616E7265746E69;
    *(&v29 + 1) = 0xE90000000000002ELL;
    v28 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 596);
  *(v0 + 56) = *(v15 + 24);
  v29 = *(v15 + 24);
  v28 = v16;
  LOBYTE(v30[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v28, v30);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 168) = CFAbsoluteTimeGetCurrent();
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0;
    *(v0 + 588) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 216), (v0 + 588));
    *(v0 + 592) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 264);
      v21 = *(v0 + 336);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 192) = v19;
    v24 = *(v0 + 112);
    *(v0 + 88) = 0;
    v25 = sub_230D6FFB4;
  }

  else
  {
    v24 = *(v0 + 112);
    v25 = sub_230D6FC84;
  }

  v26 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v25, v24, 0);
}

uint64_t sub_230D6FC84()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  if (*(v1 + 136))
  {
    v2 = *(v1 + 136);
  }

  else
  {
    if (qword_27DB5A478 != -1)
    {
      swift_once();
    }

    v5 = v0[17];
    v6 = __swift_project_value_buffer(v0[15], qword_27DB80B18);
    sub_230D1CF5C(v6, v5);
    v7 = type metadata accessor for SQLDatabaseClient();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = sub_230D3CAF0(v5);
    v0[22] = 0;
    v2 = v10;
    v11 = *(v1 + 136);
    *(v1 + 136) = v10;
  }

  v0[23] = v2;
  v3 = v0[13];

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D6FE0C, v3, 0);
}

uint64_t sub_230D6FE0C()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6(v2);
}

uint64_t sub_230D6FEE4()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v2 = v0[22];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_230D6FFB4()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  if (*(v1 + 136))
  {
    v2 = *(v1 + 136);
  }

  else
  {
    if (qword_27DB5A478 != -1)
    {
      swift_once();
    }

    v5 = v0[16];
    v6 = __swift_project_value_buffer(v0[15], qword_27DB80B18);
    sub_230D1CF5C(v6, v5);
    v7 = type metadata accessor for SQLDatabaseClient();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = sub_230D3CAF0(v5);
    v0[25] = 0;
    v2 = v10;
    v11 = *(v1 + 136);
    *(v1 + 136) = v10;
  }

  v0[26] = v2;
  v3 = v0[13];

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D70138, v3, 0);
}

uint64_t sub_230D70138()
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 112);
  sub_230D34594(*(v0 + 596), *(v0 + 192), *(v0 + 592) != 0, *(v0 + 96), (v0 + 88), *(v0 + 168));
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 208);
  v6 = *(v0 + 160);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9(v5);
}

uint64_t sub_230D70244()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);
  v18 = v4;
  v19 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = *(v0 + 592) != 0;
  *(v0 + 88) = v2;
  v9 = *(v0 + 596);
  swift_willThrow();
  v10 = v2;
  sub_230D34594(v9, v1, v8, v7, (v0 + 88), v3);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v18, v6);

  v11 = *(v0 + 200);
  v12 = *(v0 + 160);
  v14 = *(v0 + 128);
  v13 = *(v0 + 136);

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_230D70398(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x277D85DE8];
  *(v8 + 144) = a8;
  *(v8 + 152) = v17;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 612) = a2;
  *(v8 + 96) = a1;
  *(v8 + 104) = a3;
  v10 = sub_230E68D80();
  *(v8 + 160) = v10;
  v11 = *(v10 - 8);
  *(v8 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D704A0, a4, 0);
}

uint64_t sub_230D704A0()
{
  v37 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 612);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36[0] = v8;
    *v7 = 136315650;
    LOBYTE(v35) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v36);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v36);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v35 = 0x6C616E7265746E69;
    *(&v35 + 1) = 0xE90000000000002ELL;
    v34 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v36);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 612);
  *(v0 + 56) = *(v15 + 24);
  v35 = *(v15 + 24);
  v34 = v16;
  LOBYTE(v36[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v34, v36);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 184) = CFAbsoluteTimeGetCurrent();
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 600) = 0;
    *(v0 + 604) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 232), (v0 + 604));
    *(v0 + 608) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 280);
      v21 = *(v0 + 352);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 208) = v19;
    *(v0 + 88) = 0;
    v24 = swift_task_alloc();
    *(v0 + 216) = v24;
    *v24 = v0;
    v25 = sub_230D709E0;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v25 = sub_230D70888;
  }

  v24[1] = v25;
  v26 = *(v0 + 144);
  v27 = *(v0 + 152);
  v28 = *(v0 + 128);
  v29 = *(v0 + 136);
  v30 = *(v0 + 120);
  v31 = *(v0 + 96);
  v32 = *MEMORY[0x277D85DE8];

  return sub_230D4213C(v31, v30, v28, v29, v26, v27);
}

uint64_t sub_230D70888()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D70E94;
  }

  else
  {
    v6 = sub_230D70DB8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D709E0()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D70C50;
  }

  else
  {
    v6 = sub_230D70B38;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D70B38()
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  sub_230D353D4(*(v0 + 612), *(v0 + 208), *(v0 + 608) != 0, *(v0 + 104), (v0 + 88), *(v0 + 184));
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 176);
  v8 = *(v0 + 152);

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_230D70C50()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 160);
  v16 = v5;
  v17 = *(v0 + 176);
  v19 = *(v0 + 144);
  v18 = *(v0 + 136);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 608) != 0;
  *(v0 + 88) = v1;
  v9 = *(v0 + 612);
  swift_willThrow();
  v10 = v1;
  sub_230D353D4(v9, v2, v8, v7, (v0 + 88), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v17, v16);

  v11 = *(v0 + 224);
  v12 = *(v0 + 176);

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_230D70DB8()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v4 = v0[22];
  v5 = v0[19];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_230D70E94()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v5 = v0[25];
  v6 = v0[22];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_230D70F74(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 588) = a2;
  *(v6 + 96) = a1;
  v8 = sub_230E68D80();
  *(v6 + 136) = v8;
  v9 = *(v8 - 8);
  *(v6 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D71070, a4, 0);
}

uint64_t sub_230D71070()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 588);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315650;
    LOBYTE(v32) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v33);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v33);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v32 = 0x6C616E7265746E69;
    *(&v32 + 1) = 0xE90000000000002ELL;
    v31 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 588);
  *(v0 + 56) = *(v15 + 24);
  v32 = *(v15 + 24);
  v31 = v16;
  LOBYTE(v33[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v31, v33);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 256);
      v21 = *(v0 + 328);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 184) = v19;
    *(v0 + 88) = 0;
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v25 = sub_230D715A4;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *v24 = v0;
    v25 = sub_230D7144C;
  }

  v24[1] = v25;
  v26 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *(v0 + 96);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230D3F2A8(v28, v26, v27);
}

uint64_t sub_230D7144C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D71A08;
  }

  else
  {
    v6 = sub_230D71948;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D715A4()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D717F8;
  }

  else
  {
    v6 = sub_230D716FC;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D716FC()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_230D35894(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 88), *(v0 + 160));
  (*(v2 + 8))(v1, v3);
  sub_230D1D148(v4);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_230D717F8()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 136);
  v17 = *(v0 + 128);
  v15 = *(v0 + 152);
  v16 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 584) != 0;
  *(v0 + 88) = v1;
  v8 = *(v0 + 588);
  swift_willThrow();
  v9 = v1;
  sub_230D35894(v8, v2, v7, v6, (v0 + 88), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v15, v5);
  sub_230D1D148(v16);

  v10 = *(v0 + 200);
  v11 = *(v0 + 152);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D71948()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);
  sub_230D1D148(v1);
  v2 = v0[19];
  v3 = v0[16];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_230D71A08()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[16];
  v2 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);
  sub_230D1D148(v2);

  v3 = v0[22];
  v4 = v0[19];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230D71ACC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x277D85DE8];
  *(v8 + 144) = a8;
  *(v8 + 152) = v17;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 612) = a2;
  *(v8 + 96) = a1;
  *(v8 + 104) = a3;
  v10 = sub_230E68D80();
  *(v8 + 160) = v10;
  v11 = *(v10 - 8);
  *(v8 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D71BD4, a4, 0);
}

uint64_t sub_230D71BD4()
{
  v37 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 612);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36[0] = v8;
    *v7 = 136315650;
    LOBYTE(v35) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v36);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v36);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v35 = 0x6C616E7265746E69;
    *(&v35 + 1) = 0xE90000000000002ELL;
    v34 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v36);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 612);
  *(v0 + 56) = *(v15 + 24);
  v35 = *(v15 + 24);
  v34 = v16;
  LOBYTE(v36[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v34, v36);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 184) = CFAbsoluteTimeGetCurrent();
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 600) = 0;
    *(v0 + 604) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 232), (v0 + 604));
    *(v0 + 608) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 280);
      v21 = *(v0 + 352);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 208) = v19;
    *(v0 + 88) = 0;
    v24 = swift_task_alloc();
    *(v0 + 216) = v24;
    *v24 = v0;
    v25 = sub_230D72114;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v25 = sub_230D71FBC;
  }

  v24[1] = v25;
  v26 = *(v0 + 144);
  v27 = *(v0 + 152);
  v28 = *(v0 + 128);
  v29 = *(v0 + 136);
  v30 = *(v0 + 120);
  v31 = *(v0 + 96);
  v32 = *MEMORY[0x277D85DE8];

  return sub_230D41918(v31, v30, v28, v29, v26, v27);
}

uint64_t sub_230D71FBC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D725A8;
  }

  else
  {
    v6 = sub_230D724D4;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D72114()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D72374;
  }

  else
  {
    v6 = sub_230D7226C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D7226C()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  sub_230D35D54(*(v0 + 612), *(v0 + 208), *(v0 + 608) != 0, *(v0 + 104), (v0 + 88), *(v0 + 184));
  (*(v2 + 8))(v1, v3);

  v6 = *(v0 + 176);
  v7 = *(v0 + 152);

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_230D72374()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  v17 = v4;
  v18 = *(v0 + 152);
  v19 = *(v0 + 144);
  v16 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 608) != 0;
  *(v0 + 88) = v1;
  v9 = *(v0 + 612);
  swift_willThrow();
  v10 = v1;
  sub_230D35D54(v9, v2, v8, v7, (v0 + 88), v3);
  MEMORY[0x23191E910](v1);
  (*(v5 + 8))(v17, v6);

  v11 = *(v0 + 224);
  v12 = *(v0 + 176);

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_230D724D4()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[18];
  v2 = v0[16];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v3 = v0[22];
  v4 = v0[19];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230D725A8()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[19];
  v2 = v0[18];
  v3 = v0[16];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v4 = v0[25];
  v5 = v0[22];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_230D72678(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v5 + 112) = a3;
  *(v5 + 120) = a5;
  *(v5 + 581) = a4;
  *(v5 + 104) = a2;
  *(v5 + 580) = a1;
  v7 = sub_230E68D80();
  *(v5 + 128) = v7;
  v8 = *(v7 - 8);
  *(v5 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D72774, a3, 0);
}

uint64_t sub_230D72774()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 580);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 136315650;
    LOBYTE(v31) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v32);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v32);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v31 = 0x6C616E7265746E69;
    *(&v31 + 1) = 0xE90000000000002ELL;
    v30 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 580);
  *(v0 + 56) = *(v15 + 24);
  v31 = *(v15 + 24);
  v30 = v16;
  LOBYTE(v32[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v30, v32);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0;
    *(v0 + 572) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 200), (v0 + 572));
    *(v0 + 576) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 248);
      v21 = *(v0 + 320);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 176) = v19;
    *(v0 + 96) = 0;
    v24 = swift_task_alloc();
    *(v0 + 184) = v24;
    *v24 = v0;
    v25 = sub_230D72CAC;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 160) = v24;
    *v24 = v0;
    v25 = sub_230D72B54;
  }

  v24[1] = v25;
  v26 = *(v0 + 120);
  v27 = *(v0 + 581);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230D1D808(v0 + 88, v27, v26);
}

uint64_t sub_230D72B54()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D730F0;
  }

  else
  {
    v6 = sub_230D73038;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D72CAC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D72EF8;
  }

  else
  {
    v6 = sub_230D72E04;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D72E04()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  sub_230D36214(*(v0 + 580), *(v0 + 176), *(v0 + 576) != 0, *(v0 + 104), (v0 + 96), *(v0 + 152));
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 144);
  v6 = *(v0 + 88);

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7(v6);
}

uint64_t sub_230D72EF8()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v16 = v4;
  v17 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 576) != 0;
  *(v0 + 96) = v1;
  v9 = *(v0 + 580);
  swift_willThrow();
  v10 = v1;
  sub_230D36214(v9, v2, v8, v7, (v0 + 96), v3);
  MEMORY[0x23191E910](v1);
  (*(v5 + 8))(v16, v6);

  v11 = *(v0 + 192);
  v12 = *(v0 + 144);

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_230D73038()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v2 = v0[18];
  v3 = v0[11];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4(v3);
}

uint64_t sub_230D730F0()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v2 = v0[21];
  v3 = v0[18];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_230D731A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 596) = a2;
  *(v5 + 96) = a1;
  *(v5 + 104) = a3;
  v7 = sub_230E68860();
  *(v5 + 128) = v7;
  v8 = *(v7 - 8);
  *(v5 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v10 = sub_230E68D80();
  *(v5 + 160) = v10;
  v11 = *(v10 - 8);
  *(v5 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D73308, a4, 0);
}

uint64_t sub_230D73308()
{
  v30 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 596);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29[0] = v8;
    *v7 = 136315650;
    LOBYTE(v28) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v29);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v29);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v28 = 0x6C616E7265746E69;
    *(&v28 + 1) = 0xE90000000000002ELL;
    v27 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v29);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 596);
  *(v0 + 56) = *(v15 + 24);
  v28 = *(v15 + 24);
  v27 = v16;
  LOBYTE(v29[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v27, v29);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 184) = CFAbsoluteTimeGetCurrent();
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0;
    *(v0 + 588) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 216), (v0 + 588));
    *(v0 + 592) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 264);
      v21 = *(v0 + 336);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 200) = v19;
    *(v0 + 88) = 0;
    v24 = sub_230D7392C;
  }

  else
  {
    v24 = sub_230D7367C;
  }

  v25 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v24, 0, 0);
}

uint64_t sub_230D7367C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 16);
  VectorDatabaseConfiguration.path.getter(v0[19]);
  v0[24] = 0;
  v2 = v0[14];
  (*(v0[17] + 32))(v0[12], v0[19], v0[16]);
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7378C, v2, 0);
}

uint64_t sub_230D7378C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_230D7EBC8(v1);
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[19];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230D7385C()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_230D7EBC8(v1);
  v2 = v0[24];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_230D7392C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 16);
  VectorDatabaseConfiguration.path.getter(v0[18]);
  v0[26] = 0;
  v2 = v0[14];
  (*(v0[17] + 32))(v0[12], v0[18], v0[16]);
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D73A3C, v2, 0);
}

uint64_t sub_230D73A3C()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 120);
  sub_230D37514(*(v0 + 596), *(v0 + 200), *(v0 + 592) != 0, *(v0 + 104), (v0 + 88), *(v0 + 184));
  (*(v2 + 8))(v1, v3);
  sub_230D7EBC8(v4);
  v5 = *(v0 + 176);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_230D73B40()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  v18 = v4;
  v19 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 592) != 0;
  *(v0 + 88) = v2;
  v9 = *(v0 + 596);
  swift_willThrow();
  v10 = v2;
  sub_230D37514(v9, v1, v8, v7, (v0 + 88), v3);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v18, v6);
  sub_230D7EBC8(v19);
  v11 = *(v0 + 208);
  v12 = *(v0 + 176);
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_230D73C94(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 588) = a2;
  *(v6 + 96) = a1;
  v8 = sub_230E68D80();
  *(v6 + 136) = v8;
  v9 = *(v8 - 8);
  *(v6 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D73D90, a4, 0);
}

uint64_t sub_230D73D90()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 588);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315650;
    LOBYTE(v32) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v33);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v33);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v32 = 0x6C616E7265746E69;
    *(&v32 + 1) = 0xE90000000000002ELL;
    v31 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 588);
  *(v0 + 56) = *(v15 + 24);
  v32 = *(v15 + 24);
  v31 = v16;
  LOBYTE(v33[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v31, v33);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 256);
      v21 = *(v0 + 328);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 184) = v19;
    *(v0 + 88) = 0;
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v25 = sub_230D742C4;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *v24 = v0;
    v25 = sub_230D7416C;
  }

  v24[1] = v25;
  v26 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *(v0 + 96);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230D510BC(v28, v26, v27);
}

uint64_t sub_230D7416C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D74728;
  }

  else
  {
    v6 = sub_230D74668;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D742C4()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D74518;
  }

  else
  {
    v6 = sub_230D7441C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D7441C()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_230D379D4(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 88), *(v0 + 160));
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 152);
  v6 = *(v0 + 128);

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_230D74518()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 136);
  v17 = *(v0 + 128);
  v15 = *(v0 + 152);
  v16 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 584) != 0;
  *(v0 + 88) = v1;
  v8 = *(v0 + 588);
  swift_willThrow();
  v9 = v1;
  sub_230D379D4(v8, v2, v7, v6, (v0 + 88), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v15, v5);

  v10 = *(v0 + 200);
  v11 = *(v0 + 152);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D74668()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v2 = v0[19];
  v3 = v0[16];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_230D74728()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[16];
  v2 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v3 = v0[22];
  v4 = v0[19];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230D747EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 588) = a2;
  *(v6 + 96) = a1;
  v8 = sub_230E68D80();
  *(v6 + 136) = v8;
  v9 = *(v8 - 8);
  *(v6 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D748E8, a4, 0);
}

uint64_t sub_230D748E8()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 588);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315650;
    LOBYTE(v32) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v33);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v33);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v32 = 0x6C616E7265746E69;
    *(&v32 + 1) = 0xE90000000000002ELL;
    v31 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 588);
  *(v0 + 56) = *(v15 + 24);
  v32 = *(v15 + 24);
  v31 = v16;
  LOBYTE(v33[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v31, v33);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 256);
      v21 = *(v0 + 328);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 184) = v19;
    *(v0 + 88) = 0;
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v25 = sub_230D74E1C;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *v24 = v0;
    v25 = sub_230D74CC4;
  }

  v24[1] = v25;
  v26 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *(v0 + 96);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230D517DC(v28, v26, v27);
}

uint64_t sub_230D74CC4()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D75280;
  }

  else
  {
    v6 = sub_230D751C0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D74E1C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D75070;
  }

  else
  {
    v6 = sub_230D74F74;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D74F74()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_230D37E94(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 88), *(v0 + 160));
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 152);
  v6 = *(v0 + 128);

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_230D75070()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 136);
  v17 = *(v0 + 128);
  v15 = *(v0 + 152);
  v16 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 584) != 0;
  *(v0 + 88) = v1;
  v8 = *(v0 + 588);
  swift_willThrow();
  v9 = v1;
  sub_230D37E94(v8, v2, v7, v6, (v0 + 88), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v15, v5);

  v10 = *(v0 + 200);
  v11 = *(v0 + 152);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D751C0()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v2 = v0[19];
  v3 = v0[16];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_230D75280()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[16];
  v2 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v3 = v0[22];
  v4 = v0[19];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230D75344(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = *MEMORY[0x277D85DE8];
  *(v8 + 136) = a7;
  *(v8 + 144) = v17;
  *(v8 + 605) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 604) = a2;
  *(v8 + 96) = a1;
  v10 = sub_230E68D80();
  *(v8 + 152) = v10;
  v11 = *(v10 - 8);
  *(v8 + 160) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D75450, a4, 0);
}

uint64_t sub_230D75450()
{
  v37 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 168);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 604);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36[0] = v8;
    *v7 = 136315650;
    LOBYTE(v35) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v36);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v36);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v35 = 0x6C616E7265746E69;
    *(&v35 + 1) = 0xE90000000000002ELL;
    v34 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v36);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 604);
  *(v0 + 56) = *(v15 + 24);
  v35 = *(v15 + 24);
  v34 = v16;
  LOBYTE(v36[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v34, v36);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 176) = CFAbsoluteTimeGetCurrent();
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0;
    *(v0 + 596) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 224), (v0 + 596));
    *(v0 + 600) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 272);
      v21 = *(v0 + 344);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 200) = v19;
    v24 = *(v0 + 605);
    *(v0 + 88) = 0;
    v25 = swift_task_alloc();
    *(v0 + 208) = v25;
    *v25 = v0;
    v26 = sub_230D75994;
  }

  else
  {
    v24 = *(v0 + 605);
    v25 = swift_task_alloc();
    *(v0 + 184) = v25;
    *v25 = v0;
    v26 = sub_230D7583C;
  }

  v25[1] = v26;
  v27 = *(v0 + 136);
  v28 = *(v0 + 144);
  v29 = *(v0 + 120);
  v30 = *(v0 + 128);
  v31 = *(v0 + 96);
  v32 = *MEMORY[0x277D85DE8];

  return sub_230D520C8(v31, v29, v30, v27, v24 & 1, v28);
}

uint64_t sub_230D7583C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D75E10;
  }

  else
  {
    v6 = sub_230D75D44;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D75994()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D75BEC;
  }

  else
  {
    v6 = sub_230D75AEC;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D75AEC()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  sub_230D38354(*(v0 + 604), *(v0 + 200), *(v0 + 600) != 0, *(v0 + 104), (v0 + 88), *(v0 + 176));
  (*(v2 + 8))(v1, v3);
  sub_230D0F4A8(v5, v4);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_230D75BEC()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 152);
  v18 = *(v0 + 144);
  v16 = *(v0 + 168);
  v17 = *(v0 + 128);
  v15 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 600) != 0;
  *(v0 + 88) = v1;
  v8 = *(v0 + 604);
  swift_willThrow();
  v9 = v1;
  sub_230D38354(v8, v2, v7, v6, (v0 + 88), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v16, v5);
  sub_230D0F4A8(v15, v17);

  v10 = *(v0 + 216);
  v11 = *(v0 + 168);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D75D44()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  v2 = v0[16];
  (*(v0[20] + 8))(v0[21], v0[19]);
  sub_230D0F4A8(v1, v2);
  v3 = v0[21];
  v4 = v0[18];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230D75E10()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  (*(v0[20] + 8))(v0[21], v0[19]);
  sub_230D0F4A8(v3, v2);

  v4 = v0[24];
  v5 = v0[21];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_230D75ED8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 588) = a1;
  v7 = sub_230E68D80();
  *(v5 + 136) = v7;
  v8 = *(v7 - 8);
  *(v5 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D75FD0, a3, 0);
}

uint64_t sub_230D75FD0()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 588);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 136315650;
    LOBYTE(v31) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v32);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v32);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v31 = 0x6C616E7265746E69;
    *(&v31 + 1) = 0xE90000000000002ELL;
    v30 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 588);
  *(v0 + 56) = *(v15 + 24);
  v31 = *(v15 + 24);
  v30 = v16;
  LOBYTE(v32[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v30, v32);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 256);
      v21 = *(v0 + 328);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 184) = v19;
    *(v0 + 96) = 0;
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v25 = sub_230D76500;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *v24 = v0;
    v25 = sub_230D763A8;
  }

  v24[1] = v25;
  v26 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230D64EE0(v0 + 88, v26, v27);
}

uint64_t sub_230D763A8()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D7697C;
  }

  else
  {
    v6 = sub_230D768AC;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D76500()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D7675C;
  }

  else
  {
    v6 = sub_230D76658;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D76658()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_230D38CD4(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 96), *(v0 + 160));
  (*(v2 + 8))(v1, v3);
  sub_230D57464(v4);
  v5 = *(v0 + 152);
  v6 = *(v0 + 88);
  sub_230D1CE3C(*(v0 + 128));

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7(v6);
}

uint64_t sub_230D7675C()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 136);
  v17 = *(v0 + 128);
  v15 = *(v0 + 152);
  v16 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 584) != 0;
  *(v0 + 96) = v1;
  v8 = *(v0 + 588);
  swift_willThrow();
  v9 = v1;
  sub_230D38CD4(v8, v2, v7, v6, (v0 + 96), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v15, v5);
  sub_230D57464(v16);
  sub_230D1CE3C(v17);
  v10 = *(v0 + 200);
  v11 = *(v0 + 152);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D768AC()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);
  sub_230D57464(v1);
  v2 = v0[19];
  v3 = v0[11];
  sub_230D1CE3C(v0[16]);

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4(v3);
}

uint64_t sub_230D7697C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[16];
  v2 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);
  sub_230D57464(v2);
  sub_230D1CE3C(v1);
  v3 = v0[22];
  v4 = v0[19];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230D76A40(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 588) = a1;
  v7 = sub_230E68D80();
  *(v5 + 136) = v7;
  v8 = *(v7 - 8);
  *(v5 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D76B38, a3, 0);
}

uint64_t sub_230D76B38()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 588);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 136315650;
    LOBYTE(v31) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v32);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v32);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v31 = 0x6C616E7265746E69;
    *(&v31 + 1) = 0xE90000000000002ELL;
    v30 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 588);
  *(v0 + 56) = *(v15 + 24);
  v31 = *(v15 + 24);
  v30 = v16;
  LOBYTE(v32[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v30, v32);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 256);
      v21 = *(v0 + 328);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 184) = v19;
    *(v0 + 96) = 0;
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v25 = sub_230D77068;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *v24 = v0;
    v25 = sub_230D76F10;
  }

  v24[1] = v25;
  v26 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230DBE07C(v0 + 88, v26, v27);
}

uint64_t sub_230D76F10()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D82894;
  }

  else
  {
    v6 = sub_230D82820;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D77068()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D8297C;
  }

  else
  {
    v6 = sub_230D827AC;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D771C0(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 589) = a4;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  *(v6 + 588) = a1;
  v8 = sub_230E68D80();
  *(v6 + 136) = v8;
  v9 = *(v8 - 8);
  *(v6 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D772BC, a3, 0);
}

uint64_t sub_230D772BC()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 588);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315650;
    LOBYTE(v32) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v33);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v33);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v32 = 0x6C616E7265746E69;
    *(&v32 + 1) = 0xE90000000000002ELL;
    v31 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 588);
  *(v0 + 56) = *(v15 + 24);
  v32 = *(v15 + 24);
  v31 = v16;
  LOBYTE(v33[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v31, v33);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 256);
      v21 = *(v0 + 328);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 184) = v19;
    *(v0 + 96) = 0;
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v25 = sub_230D77698;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *v24 = v0;
    v25 = sub_230D76F10;
  }

  v24[1] = v25;
  v26 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *(v0 + 589);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230DBEB9C(v0 + 88, v28, v26, v27);
}

uint64_t sub_230D77698()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D778F4;
  }

  else
  {
    v6 = sub_230D777F0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D777F0()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_230D39654(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 96), *(v0 + 160));
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 152);
  v6 = *(v0 + 88);
  sub_230D1CE3C(*(v0 + 128));

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7(v6);
}

uint64_t sub_230D778F4()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 136);
  v17 = *(v0 + 128);
  v15 = *(v0 + 152);
  v16 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 584) != 0;
  *(v0 + 96) = v1;
  v8 = *(v0 + 588);
  swift_willThrow();
  v9 = v1;
  sub_230D39654(v8, v2, v7, v6, (v0 + 96), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v15, v5);

  sub_230D1CE3C(v17);
  v10 = *(v0 + 200);
  v11 = *(v0 + 152);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D77A44(char a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *(v3 + 104) = a2;
  *(v3 + 112) = a3;
  *(v3 + 572) = a1;
  v5 = sub_230E68D80();
  *(v3 + 120) = v5;
  v6 = *(v5 - 8);
  *(v3 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D77B38, a3, 0);
}

uint64_t sub_230D77B38()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 572);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30[0] = v8;
    *v7 = 136315650;
    LOBYTE(v29) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v30);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v30);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v29 = 0x6C616E7265746E69;
    *(&v29 + 1) = 0xE90000000000002ELL;
    v28 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 572);
  *(v0 + 56) = *(v15 + 24);
  v29 = *(v15 + 24);
  v28 = v16;
  LOBYTE(v30[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v28, v30);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 144) = CFAbsoluteTimeGetCurrent();
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0;
    *(v0 + 564) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 192), (v0 + 564));
    *(v0 + 568) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 240);
      v21 = *(v0 + 312);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 168) = v19;
    *(v0 + 96) = 0;
    v24 = swift_task_alloc();
    *(v0 + 176) = v24;
    *v24 = v0;
    v25 = sub_230D78064;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 152) = v24;
    *v24 = v0;
    v25 = sub_230D77F0C;
  }

  v24[1] = v25;
  v26 = *MEMORY[0x277D85DE8];

  return sub_230DC071C(v0 + 88);
}

uint64_t sub_230D77F0C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D78488;
  }

  else
  {
    v6 = sub_230D783D8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D78064()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D782A0;
  }

  else
  {
    v6 = sub_230D781BC;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D781BC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_230D39B14(*(v0 + 572), *(v0 + 168), *(v0 + 568) != 0, *(v0 + 104), (v0 + 96), *(v0 + 144));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 136);
  v5 = *(v0 + 88);

  v6 = *(v0 + 8);
  v7 = *MEMORY[0x277D85DE8];

  return v6(v5);
}

uint64_t sub_230D782A0()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v15 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 568) != 0;
  *(v0 + 96) = v1;
  v8 = *(v0 + 572);
  swift_willThrow();
  v9 = v1;
  sub_230D39B14(v8, v2, v7, v6, (v0 + 96), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v15, v5);
  v10 = *(v0 + 184);
  v11 = *(v0 + 136);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D783D8()
{
  v6 = *MEMORY[0x277D85DE8];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[17];
  v2 = v0[11];

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3(v2);
}

uint64_t sub_230D78488()
{
  v6 = *MEMORY[0x277D85DE8];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[20];
  v2 = v0[17];

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_230D78530(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 581) = a1;
  v7 = sub_230E68D80();
  *(v5 + 128) = v7;
  v8 = *(v7 - 8);
  *(v5 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D78628, a3, 0);
}

uint64_t sub_230D78628()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 581);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 136315650;
    LOBYTE(v31) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v32);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v32);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v31 = 0x6C616E7265746E69;
    *(&v31 + 1) = 0xE90000000000002ELL;
    v30 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 581);
  *(v0 + 56) = *(v15 + 24);
  v31 = *(v15 + 24);
  v30 = v16;
  LOBYTE(v32[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v30, v32);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0;
    *(v0 + 572) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 200), (v0 + 572));
    *(v0 + 576) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 248);
      v21 = *(v0 + 320);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 176) = v19;
    *(v0 + 88) = 0;
    v24 = swift_task_alloc();
    *(v0 + 184) = v24;
    *v24 = v0;
    v25 = sub_230D78B5C;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 160) = v24;
    *v24 = v0;
    v25 = sub_230D78A04;
  }

  v24[1] = v25;
  v26 = *(v0 + 112);
  v27 = *(v0 + 120);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230E1F040(v0 + 580, v26, v27);
}

uint64_t sub_230D78A04()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_230D78FDC;
  }

  else
  {
    v6 = sub_230D78F0C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D78B5C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_230D78DB8;
  }

  else
  {
    v6 = sub_230D78CB4;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D78CB4()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);
  sub_230D3A954(*(v0 + 581), *(v0 + 176), *(v0 + 576) != 0, *(v0 + 96), (v0 + 88), *(v0 + 152));
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 144);
  v6 = *(v0 + 580);
  sub_230D1CE3C(*(v0 + 120));

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7(v6);
}

uint64_t sub_230D78DB8()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 128);
  v17 = *(v0 + 120);
  v15 = *(v0 + 144);
  v16 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 576) != 0;
  *(v0 + 88) = v1;
  v8 = *(v0 + 581);
  swift_willThrow();
  v9 = v1;
  sub_230D3A954(v8, v2, v7, v6, (v0 + 88), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v15, v5);

  sub_230D1CE3C(v17);
  v10 = *(v0 + 192);
  v11 = *(v0 + 144);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12(0);
}

uint64_t sub_230D78F0C()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 112);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

  v2 = *(v0 + 144);
  v3 = *(v0 + 580);
  sub_230D1CE3C(*(v0 + 120));

  v4 = *(v0 + 8);
  v5 = *MEMORY[0x277D85DE8];

  return v4(v3);
}

uint64_t sub_230D78FDC()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  v2 = v0[14];
  (*(v0[17] + 8))(v0[18], v0[16]);

  sub_230D1CE3C(v1);
  v3 = v0[21];
  v4 = v0[18];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5(0);
}

uint64_t sub_230D790A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v4 + 104) = a3;
  *(v4 + 112) = a4;
  *(v4 + 572) = a2;
  *(v4 + 96) = a1;
  v6 = sub_230E68D80();
  *(v4 + 120) = v6;
  v7 = *(v6 - 8);
  *(v4 + 128) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7919C, a4, 0);
}

uint64_t sub_230D7919C()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 572);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31[0] = v8;
    *v7 = 136315650;
    LOBYTE(v30) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v31);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v31);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v30 = 0x6C616E7265746E69;
    *(&v30 + 1) = 0xE90000000000002ELL;
    v29 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 572);
  *(v0 + 56) = *(v15 + 24);
  v30 = *(v15 + 24);
  v29 = v16;
  LOBYTE(v31[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v31);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 144) = CFAbsoluteTimeGetCurrent();
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0;
    *(v0 + 564) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 192), (v0 + 564));
    *(v0 + 568) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 240);
      v21 = *(v0 + 312);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 168) = v19;
    *(v0 + 88) = 0;
    v24 = swift_task_alloc();
    *(v0 + 176) = v24;
    *v24 = v0;
    v25 = sub_230D796CC;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 152) = v24;
    *v24 = v0;
    v25 = sub_230D79574;
  }

  v24[1] = v25;
  v26 = *(v0 + 96);
  v27 = *MEMORY[0x277D85DE8];

  return sub_230E1F73C(v26);
}

uint64_t sub_230D79574()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D78488;
  }

  else
  {
    v6 = sub_230D79A38;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D796CC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D79900;
  }

  else
  {
    v6 = sub_230D79824;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D79824()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_230D3AE14(*(v0 + 572), *(v0 + 168), *(v0 + 568) != 0, *(v0 + 104), (v0 + 88), *(v0 + 144));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 136);

  v5 = *(v0 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230D79900()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v15 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 568) != 0;
  *(v0 + 88) = v1;
  v8 = *(v0 + 572);
  swift_willThrow();
  v9 = v1;
  sub_230D3AE14(v8, v2, v7, v6, (v0 + 88), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v15, v5);
  v10 = *(v0 + 184);
  v11 = *(v0 + 136);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D79A38()
{
  v5 = *MEMORY[0x277D85DE8];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[17];

  v2 = v0[1];
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_230D79AE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 588) = a2;
  *(v6 + 96) = a1;
  v8 = sub_230E68D80();
  *(v6 + 136) = v8;
  v9 = *(v8 - 8);
  *(v6 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D79BDC, a4, 0);
}

uint64_t sub_230D79BDC()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 588);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315650;
    LOBYTE(v32) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v33);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v33);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v32 = 0x6C616E7265746E69;
    *(&v32 + 1) = 0xE90000000000002ELL;
    v31 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 588);
  *(v0 + 56) = *(v15 + 24);
  v32 = *(v15 + 24);
  v31 = v16;
  LOBYTE(v33[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v31, v33);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 256);
      v21 = *(v0 + 328);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 184) = v19;
    *(v0 + 88) = 0;
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v25 = sub_230D7A110;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *v24 = v0;
    v25 = sub_230D79FB8;
  }

  v24[1] = v25;
  v26 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *(v0 + 96);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230E2DF10(v28, v26, v27);
}

uint64_t sub_230D79FB8()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D7A574;
  }

  else
  {
    v6 = sub_230D7A4B4;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D7A110()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D7A364;
  }

  else
  {
    v6 = sub_230D7A268;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D7A268()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_230D3B794(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 88), *(v0 + 160));
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 152);
  sub_230D1CE3C(*(v0 + 128));

  v6 = *(v0 + 8);
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_230D7A364()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 136);
  v17 = *(v0 + 128);
  v15 = *(v0 + 152);
  v16 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 584) != 0;
  *(v0 + 88) = v1;
  v8 = *(v0 + 588);
  swift_willThrow();
  v9 = v1;
  sub_230D3B794(v8, v2, v7, v6, (v0 + 88), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v15, v5);

  sub_230D1CE3C(v17);
  v10 = *(v0 + 200);
  v11 = *(v0 + 152);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D7A4B4()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v2 = v0[19];
  sub_230D1CE3C(v0[16]);

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_230D7A574()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[16];
  v2 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);

  sub_230D1CE3C(v1);
  v3 = v0[22];
  v4 = v0[19];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230D7A638(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 588) = a1;
  v7 = sub_230E68D80();
  *(v5 + 136) = v7;
  v8 = *(v7 - 8);
  *(v5 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7A730, a3, 0);
}

uint64_t sub_230D7A730()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 588);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 136315650;
    LOBYTE(v31) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v32);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v32);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v31 = 0x6C616E7265746E69;
    *(&v31 + 1) = 0xE90000000000002ELL;
    v30 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 588);
  *(v0 + 56) = *(v15 + 24);
  v31 = *(v15 + 24);
  v30 = v16;
  LOBYTE(v32[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v30, v32);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 256);
      v21 = *(v0 + 328);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 184) = v19;
    *(v0 + 96) = 0;
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v25 = sub_230D7AC60;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *v24 = v0;
    v25 = sub_230D7AB08;
  }

  v24[1] = v25;
  v26 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230E5653C(v0 + 88, v26, v27);
}

uint64_t sub_230D7AB08()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D7A574;
  }

  else
  {
    v6 = sub_230D7B00C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D7AC60()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D7AEBC;
  }

  else
  {
    v6 = sub_230D7ADB8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D7ADB8()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_230D3C114(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 96), *(v0 + 160));
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 152);
  v6 = *(v0 + 88);
  sub_230D1CE3C(*(v0 + 128));

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7(v6);
}

uint64_t sub_230D7AEBC()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 136);
  v17 = *(v0 + 128);
  v15 = *(v0 + 152);
  v16 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 584) != 0;
  *(v0 + 96) = v1;
  v8 = *(v0 + 588);
  swift_willThrow();
  v9 = v1;
  sub_230D3C114(v8, v2, v7, v6, (v0 + 96), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v15, v5);

  sub_230D1CE3C(v17);
  v10 = *(v0 + 200);
  v11 = *(v0 + 152);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D7B00C()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v2 = v0[19];
  v3 = v0[11];
  sub_230D1CE3C(v0[16]);

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4(v3);
}

uint64_t PerformanceTrackable.trackPerformance<A>(requestType:requestContext:operation:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a5;
  *(v8 + 160) = a6;
  *(v8 + 136) = a1;
  *(v8 + 144) = a4;
  v12 = sub_230E68D80();
  *(v8 + 184) = v12;
  v13 = *(v12 - 8);
  *(v8 + 192) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 272) = *a2;
  v15 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v15;
  *(v8 + 48) = *(a3 + 32);
  v16 = *(a8 + 8);
  v18 = sub_230E692D0();
  *(v8 + 208) = v18;
  *(v8 + 216) = v17;

  return MEMORY[0x2822009F8](sub_230D7B1F0, v18, v17);
}

{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 128) = a1;
  *(v8 + 136) = a4;
  v12 = sub_230E68D80();
  *(v8 + 176) = v12;
  v13 = *(v12 - 8);
  *(v8 + 184) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 248) = *a2;
  v15 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v15;
  *(v8 + 48) = *(a3 + 32);
  v16 = *(a8 + 8);
  v18 = sub_230E692D0();
  *(v8 + 200) = v18;
  *(v8 + 208) = v17;

  return MEMORY[0x2822009F8](sub_230D7D620, v18, v17);
}

uint64_t sub_230D7B1F0()
{
  v30 = v0;
  v1 = *(v0 + 200);
  sub_230E68D70();
  sub_230D1CDE0(v0 + 16, v0 + 56);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 272);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315650;
    LOBYTE(v28) = v4;
    v7 = RequestType.rawValue.getter();
    v9 = sub_230D7E620(v7, v8, &v27);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_230D7E620(*(v0 + 24), *(v0 + 32), &v27);
    *(v5 + 22) = 2080;
    v10 = *(v0 + 16);
    *&v28 = 0x6C616E7265746E69;
    *(&v28 + 1) = 0xE90000000000002ELL;
    v29 = v10;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(v28, *(&v28 + 1), &v27);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v13 = *(v0 + 272);
  *(v0 + 96) = *(v0 + 40);
  v28 = *(v0 + 40);
  v29 = v13;
  LOBYTE(v27) = *(v0 + 16);
  sub_230D1CE90(v0 + 96, v0 + 112);
  v14 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, &v27);

  if (v14)
  {
    v15 = *(v0 + 176);
    v16 = *(v0 + 160);
    v17 = *(v0 + 144);
    sub_230E68950();
    *(v0 + 224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 232) = sub_230D7DD60();
    *(v0 + 273) = v18;
    *(v0 + 128) = 0;
    v26 = (v17 + *v17);
    v19 = v17[1];
    v20 = swift_task_alloc();
    *(v0 + 240) = v20;
    *v20 = v0;
    v21 = sub_230D7B5D8;
  }

  else
  {
    v26 = (*(v0 + 144) + **(v0 + 144));
    v22 = *(*(v0 + 144) + 4);
    v20 = swift_task_alloc();
    *(v0 + 256) = v20;
    *v20 = v0;
    v21 = sub_230D7B7C4;
  }

  v20[1] = v21;
  v23 = *(v0 + 152);
  v24 = *(v0 + 136);

  return v26(v24);
}

uint64_t sub_230D7B5D8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_230D7B9F8;
  }

  else
  {
    v7 = sub_230D7B714;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_230D7B714()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  sub_230D7DE44(*(v0 + 272), *(v0 + 232), *(v0 + 273) & 1, v0 + 16, (v0 + 128), *(v0 + 224));
  (*(v2 + 8))(v1, v4);
  v7 = *(v0 + 200);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_230D7B7C4()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_230D7B97C;
  }

  else
  {
    v7 = sub_230D7B900;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_230D7B900()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[25];

  v2 = v0[1];

  return v2();
}

uint64_t sub_230D7B97C()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[33];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_230D7B9F8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 273);
  v3 = *(v0 + 224);
  v4 = *(v0 + 192);
  v16 = *(v0 + 200);
  v5 = *(v0 + 176);
  v14 = *(v0 + 232);
  v15 = *(v0 + 184);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  *(v0 + 128) = v1;
  v8 = *(v0 + 272);
  swift_willThrow();
  v9 = v1;
  sub_230D7DE44(v8, v14, v2 & 1, v0 + 16, (v0 + 128), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v16, v15);
  v10 = *(v0 + 248);
  v11 = *(v0 + 200);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_230D7BB08(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 556) = a2;
  *(v5 + 88) = a1;
  *(v5 + 96) = a3;
  v7 = sub_230E68D80();
  *(v5 + 120) = v7;
  v8 = *(v7 - 8);
  *(v5 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7BC00, a4, 0);
}

uint64_t sub_230D7BC00()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 556);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 136315650;
    LOBYTE(v31) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v32);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v32);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v31 = 0x6C616E7265746E69;
    *(&v31 + 1) = 0xE90000000000002ELL;
    v30 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 556);
  *(v0 + 56) = *(v15 + 24);
  v31 = *(v15 + 24);
  v30 = v16;
  LOBYTE(v32[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v30, v32);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 144) = CFAbsoluteTimeGetCurrent();
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0;
    *(v0 + 548) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 176), (v0 + 548));
    *(v0 + 552) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 224);
      v21 = *(v0 + 296);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 160) = v19;
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *v24 = v0;
    v25 = sub_230D7C1CC;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 152) = v24;
    *v24 = v0;
    v25 = sub_230D7BFD8;
  }

  v24[1] = v25;
  v26 = *(v0 + 112);
  v27 = *(v0 + 88);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230D63F6C(v27, v26);
}

uint64_t sub_230D7BFD8()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7C114, v2, 0);
}

uint64_t sub_230D7C114()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  (*(v0[16] + 8))(v0[17], v0[15]);
  sub_230D1CE3C(v1);

  v2 = v0[1];
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_230D7C1CC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7C308, v2, 0);
}

uint64_t sub_230D7C308()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_230E4C0DC(*(v0 + 556), *(v0 + 160), *(v0 + 552) != 0, *(v0 + 96), *(v0 + 144));
  v1 = *(v0 + 112);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  sub_230D1CE3C(v1);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_230D7C3E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v6 + 112) = a5;
  *(v6 + 120) = a6;
  *(v6 + 96) = a3;
  *(v6 + 104) = a4;
  *(v6 + 564) = a2;
  *(v6 + 88) = a1;
  v8 = sub_230E68D80();
  *(v6 + 128) = v8;
  v9 = *(v8 - 8);
  *(v6 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7C4DC, a4, 0);
}

uint64_t sub_230D7C4DC()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 564);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315650;
    LOBYTE(v32) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v33);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v33);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v32 = 0x6C616E7265746E69;
    *(&v32 + 1) = 0xE90000000000002ELL;
    v31 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 564);
  *(v0 + 56) = *(v15 + 24);
  v32 = *(v15 + 24);
  v31 = v16;
  LOBYTE(v33[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v31, v33);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0;
    *(v0 + 556) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 184), (v0 + 556));
    *(v0 + 560) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 232);
      v21 = *(v0 + 304);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 168) = v19;
    v24 = swift_task_alloc();
    *(v0 + 176) = v24;
    *v24 = v0;
    v25 = sub_230D7C9F4;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 160) = v24;
    *v24 = v0;
    v25 = sub_230D7C8B8;
  }

  v24[1] = v25;
  v26 = *(v0 + 112);
  v27 = *(v0 + 120);
  v28 = *(v0 + 88);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230DE7A24(v28, v26, v27);
}

uint64_t sub_230D7C8B8()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D82908, v2, 0);
}

uint64_t sub_230D7C9F4()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7CB30, v2, 0);
}

uint64_t sub_230D7CB30()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_230E4C0DC(*(v0 + 564), *(v0 + 168), *(v0 + 560) != 0, *(v0 + 96), *(v0 + 152));
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

  sub_230D1CE3C(v1);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_230D7CC14(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v6 + 112) = a5;
  *(v6 + 120) = a6;
  *(v6 + 96) = a3;
  *(v6 + 104) = a4;
  *(v6 + 564) = a2;
  *(v6 + 88) = a1;
  v8 = sub_230E68D80();
  *(v6 + 128) = v8;
  v9 = *(v8 - 8);
  *(v6 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7CD10, a4, 0);
}

uint64_t sub_230D7CD10()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 564);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315650;
    LOBYTE(v32) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v33);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v33);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v32 = 0x6C616E7265746E69;
    *(&v32 + 1) = 0xE90000000000002ELL;
    v31 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 564);
  *(v0 + 56) = *(v15 + 24);
  v32 = *(v15 + 24);
  v31 = v16;
  LOBYTE(v33[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v31, v33);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0;
    *(v0 + 556) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 184), (v0 + 556));
    *(v0 + 560) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 232);
      v21 = *(v0 + 304);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 168) = v19;
    v24 = swift_task_alloc();
    *(v0 + 176) = v24;
    *v24 = v0;
    v25 = sub_230D7D2EC;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 160) = v24;
    *v24 = v0;
    v25 = sub_230D7D0EC;
  }

  v24[1] = v25;
  v26 = *(v0 + 112);
  v27 = *(v0 + 120);
  v28 = *(v0 + 88);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230E36124(v28, v26, v27);
}

uint64_t sub_230D7D0EC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7D228, v2, 0);
}

uint64_t sub_230D7D228()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  v2 = v0[14];
  (*(v0[17] + 8))(v0[18], v0[16]);

  sub_230D1CE3C(v1);

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_230D7D2EC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7D428, v2, 0);
}

uint64_t sub_230D7D428()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_230E4CE38(*(v0 + 564), *(v0 + 168), *(v0 + 560) != 0, *(v0 + 96), *(v0 + 152));
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

  sub_230D1CE3C(v1);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_230D7D620()
{
  v30 = v0;
  v1 = *(v0 + 192);
  sub_230E68D70();
  sub_230D1CDE0(v0 + 16, v0 + 56);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 248);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315650;
    LOBYTE(v28) = v4;
    v7 = RequestType.rawValue.getter();
    v9 = sub_230D7E620(v7, v8, &v27);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_230D7E620(*(v0 + 24), *(v0 + 32), &v27);
    *(v5 + 22) = 2080;
    v10 = *(v0 + 16);
    *&v28 = 0x6C616E7265746E69;
    *(&v28 + 1) = 0xE90000000000002ELL;
    v29 = v10;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(v28, *(&v28 + 1), &v27);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v13 = *(v0 + 248);
  *(v0 + 96) = *(v0 + 40);
  v28 = *(v0 + 40);
  v29 = v13;
  LOBYTE(v27) = *(v0 + 16);
  sub_230D1CE90(v0 + 96, v0 + 112);
  v14 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, &v27);

  if (v14)
  {
    v15 = *(v0 + 168);
    v16 = *(v0 + 152);
    v17 = *(v0 + 136);
    sub_230E68950();
    *(v0 + 216) = CFAbsoluteTimeGetCurrent();
    *(v0 + 224) = sub_230D7DD60();
    *(v0 + 249) = v18;
    v26 = (v17 + *v17);
    v19 = v17[1];
    v20 = swift_task_alloc();
    *(v0 + 232) = v20;
    *v20 = v0;
    v21 = sub_230D7DA04;
  }

  else
  {
    v26 = (*(v0 + 136) + **(v0 + 136));
    v22 = *(*(v0 + 136) + 4);
    v20 = swift_task_alloc();
    *(v0 + 240) = v20;
    *v20 = v0;
    v21 = sub_230D7DBC4;
  }

  v20[1] = v21;
  v23 = *(v0 + 144);
  v24 = *(v0 + 128);

  return v26(v24);
}

uint64_t sub_230D7DA04()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v6 = *v0;

  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_230D7DB24, v4, v3);
}

uint64_t sub_230D7DB24()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  sub_230D7E25C(*(v0 + 248), *(v0 + 224), *(v0 + 249) & 1, v0 + 16, *(v0 + 216));
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230D7DBC4()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v6 = *v0;

  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_230D7DCE4, v4, v3);
}

uint64_t sub_230D7DCE4()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D7DD60()
{
  v28 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *task_info_out = 0u;
  v5 = 0u;
  task_info_outCnt = 93;
  if (task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt))
  {
    v0 = 0.0;
  }

  else
  {
    if (__CFADD__(v7, *(&v11 + 1)))
    {
      __break(1u);
    }

    v0 = vcvtd_n_f64_u64(v7 + *(&v11 + 1), 0x14uLL);
  }

  v1 = *MEMORY[0x277D85DE8];
  return *&v0;
}

uint64_t sub_230D7DE44(char a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, void **a5, double a6)
{
  v41 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v42 = &v41 - v14;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  v44 = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  v16 = CFAbsoluteTimeGetCurrent() - a6;
  v17 = COERCE_DOUBLE(sub_230D7DD60());
  v19 = a3 | v18;
  if ((a3 | v18))
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v17 - *&a2;
  }

  sub_230E68950();
  LOBYTE(v45) = *a4;
  v21 = RequestType.rawValue.getter();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v24 = swift_allocObject();
  v43 = xmmword_230E6B3B0;
  *(v24 + 16) = xmmword_230E6B3B0;
  v45 = 0x6C616E7265746E69;
  v46 = 0xE90000000000002ELL;
  v44 = a1;
  v25 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v25);

  v26 = v45;
  v27 = v46;
  v28 = *v41;
  if (*v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v43;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v24 + 32) = v26;
  *(v24 + 40) = v27;
  *(v24 + 48) = v16;
  *(v24 + 56) = 0;
  *(v24 + 64) = v20;
  *(v24 + 72) = v19 & 1;
  *(v24 + 80) = v29;
  v30 = *(a4 + 8);
  v31 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v43;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v21;
  *(v35 + 32) = v23;
  *(v35 + 40) = 1;
  *(v35 + 48) = v24;
  *(v35 + 56) = v30;
  *(v35 + 64) = v31;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E73430;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E4F0;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v42;
  (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E73440, v39);
}

uint64_t sub_230D7E25C(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v37 = &v36 - v13;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  v38 = a1;
  v14 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v14);

  sub_230E68950();

  v15 = CFAbsoluteTimeGetCurrent() - a5;
  v16 = COERCE_DOUBLE(sub_230D7DD60());
  v18 = (a3 | v17) & 1;
  if (v18)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v16 - *&a2;
  }

  sub_230E68950();
  LOBYTE(v39) = *a4;
  v20 = RequestType.rawValue.getter();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v23 = swift_allocObject();
  v36 = xmmword_230E6B3B0;
  *(v23 + 16) = xmmword_230E6B3B0;
  v39 = 0x6C616E7265746E69;
  v40 = 0xE90000000000002ELL;
  v38 = a1;
  v24 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v24);

  v25 = v40;
  *(v23 + 32) = v39;
  *(v23 + 40) = v25;
  *(v23 + 48) = v15;
  *(v23 + 56) = 0;
  *(v23 + 64) = v19;
  *(v23 + 72) = v18;
  *(v23 + 80) = 0;
  v27 = *(a4 + 8);
  v26 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v28 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v29 = swift_allocObject();
  *(v29 + 16) = v36;
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v30 + 24) = v20;
  *(v30 + 32) = v22;
  *(v30 + 40) = 1;
  *(v30 + 48) = v23;
  *(v30 + 56) = v27;
  *(v30 + 64) = v26;
  *(v30 + 72) = 257;
  *(v30 + 80) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = &unk_230E73410;
  *(v31 + 24) = v30;
  *(v29 + 32) = &unk_230E6E478;
  *(v29 + 40) = v31;
  v32 = sub_230E69310();
  v33 = v37;
  (*(*(v32 - 8) + 56))(v37, 1, 1, v32);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v29;

  sub_230D8F204(0, 0, v33, &unk_230E73420, v34);
}

uint64_t sub_230D7E620(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_230D7E6EC(v11, 0, 0, 1, a1, a2);
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
    sub_230D82664(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_230D7E6EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_230D7E7F8(a5, a6);
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
    result = sub_230E69590();
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

uint64_t sub_230D7E7F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_230D7E844(a1, a2);
  sub_230D7E974(&unk_2845A4B00);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_230D7E844(uint64_t a1, unint64_t a2)
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

  v6 = sub_230D7EA60(v5, 0);
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

  result = sub_230E69590();
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
        v10 = sub_230E69140();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_230D7EA60(v10, 0);
        result = sub_230E69530();
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

uint64_t sub_230D7E974(uint64_t result)
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

  result = sub_230D7EAD4(result, v12, 1, v3);
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

void *sub_230D7EA60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BCC8, &qword_230E73428);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_230D7EAD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BCC8, &qword_230E73428);
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

uint64_t sub_230D7EC1C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 112) = a3;
  *(v6 + 120) = a4;
  *(v6 + 104) = a2;
  *(v6 + 596) = a1;
  v8 = sub_230E68D80();
  *(v6 + 144) = v8;
  v9 = *(v8 - 8);
  *(v6 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7ED18, a3, 0);
}

uint64_t sub_230D7ED18()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 596);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315650;
    LOBYTE(v32) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v33);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v33);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v32 = 0x6C616E7265746E69;
    *(&v32 + 1) = 0xE90000000000002ELL;
    v31 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 596);
  *(v0 + 56) = *(v15 + 24);
  v32 = *(v15 + 24);
  v31 = v16;
  LOBYTE(v33[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v31, v33);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 168) = CFAbsoluteTimeGetCurrent();
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0;
    *(v0 + 588) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 216), (v0 + 588));
    *(v0 + 592) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 264);
      v21 = *(v0 + 336);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 192) = v19;
    *(v0 + 96) = 0;
    v24 = swift_task_alloc();
    *(v0 + 200) = v24;
    *v24 = v0;
    v25 = sub_230D7F250;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 176) = v24;
    *v24 = v0;
    v25 = sub_230D7F0F8;
  }

  v24[1] = v25;
  v26 = *(v0 + 128);
  v27 = *(v0 + 136);
  v28 = *(v0 + 120);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230DE6CB8(v0 + 88, v28, v26, v27);
}

uint64_t sub_230D7F0F8()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D7F6CC;
  }

  else
  {
    v6 = sub_230D7F5FC;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D7F250()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_230D7F4AC;
  }

  else
  {
    v6 = sub_230D7F3A8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D7F3A8()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  sub_230D38CD4(*(v0 + 596), *(v0 + 192), *(v0 + 592) != 0, *(v0 + 104), (v0 + 96), *(v0 + 168));
  (*(v2 + 8))(v1, v3);
  sub_230D8151C(v4);
  v5 = *(v0 + 160);
  v6 = *(v0 + 128);
  v7 = *(v0 + 88);

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8(v7);
}

uint64_t sub_230D7F4AC()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 144);
  v17 = *(v0 + 128);
  v15 = *(v0 + 160);
  v16 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 592) != 0;
  *(v0 + 96) = v1;
  v8 = *(v0 + 596);
  swift_willThrow();
  v9 = v1;
  sub_230D38CD4(v8, v2, v7, v6, (v0 + 96), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v15, v5);
  sub_230D8151C(v16);

  v10 = *(v0 + 208);
  v11 = *(v0 + 160);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D7F5FC()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_230D8151C(v1);
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[11];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5(v4);
}

uint64_t sub_230D7F6CC()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  v2 = v0[16];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_230D8151C(v1);

  v3 = v0[23];
  v4 = v0[20];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230D7F790(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *MEMORY[0x277D85DE8];
  *(v7 + 128) = a6;
  *(v7 + 136) = a7;
  *(v7 + 112) = a4;
  *(v7 + 120) = a5;
  *(v7 + 96) = a2;
  *(v7 + 104) = a3;
  *(v7 + 580) = a1;
  v9 = sub_230E68D80();
  *(v7 + 144) = v9;
  v10 = *(v9 - 8);
  *(v7 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D7F88C, a3, 0);
}

uint64_t sub_230D7F88C()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  v2 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v2, v0 + 16);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  sub_230D1CE3C(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 580);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34[0] = v8;
    *v7 = 136315650;
    LOBYTE(v33) = v6;
    v9 = RequestType.rawValue.getter();
    v11 = sub_230D7E620(v9, v10, v34);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(*(v5 + 1), *(v5 + 2), v34);
    *(v7 + 22) = 2080;
    v12 = *v5;
    *&v33 = 0x6C616E7265746E69;
    *(&v33 + 1) = 0xE90000000000002ELL;
    v32 = v12;
    v13 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v13);

    v14 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v34);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 580);
  *(v0 + 56) = *(v15 + 24);
  v33 = *(v15 + 24);
  v32 = v16;
  LOBYTE(v34[0]) = *v15;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v17 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v32, v34);

  if (v17)
  {
    sub_230E68950();
    *(v0 + 168) = CFAbsoluteTimeGetCurrent();
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0;
    *(v0 + 572) = 93;
    v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 200), (v0 + 572));
    *(v0 + 576) = v18;
    v19 = 0.0;
    if (!v18)
    {
      v20 = *(v0 + 248);
      v21 = *(v0 + 320);
      v22 = __CFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
      }

      v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
    }

    *(v0 + 184) = v19;
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v25 = sub_230D7FE5C;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 176) = v24;
    *v24 = v0;
    v25 = sub_230D7FC68;
  }

  v24[1] = v25;
  v26 = *(v0 + 128);
  v27 = *(v0 + 136);
  v28 = *(v0 + 112);
  v29 = *(v0 + 120);
  v30 = *MEMORY[0x277D85DE8];

  return sub_230D1AA80(v0 + 88, v28, v29, v26, v27);
}