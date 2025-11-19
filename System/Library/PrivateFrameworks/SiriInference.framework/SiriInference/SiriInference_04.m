uint64_t sub_1DD3DCFE4(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v97 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v82 - v15;
  v17 = sub_1DD63D078();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v96 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DD63D2B8();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  result = MEMORY[0x1EEE9AC00](v23);
  if (*(a4 + 16) != 5 || *(a4 + 50))
  {
    return result;
  }

  v83 = &v82 - v25;
  v84 = v27;
  v85 = v26;
  v86 = result;
  v87 = a2;
  v91 = a1;
  v92 = v16;
  v89 = v17;
  v90 = v12;
  v88 = v18;
  v95 = a4;
  if ((a5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DD640778();
    type metadata accessor for DateTimeConstraint();
    sub_1DD3DDA14(&qword_1ECCDC188, type metadata accessor for DateTimeConstraint);
    sub_1DD6402A8();
    v28 = v99[1];
    v29 = v99[2];
    v30 = v99[3];
    v31 = v99[4];
    v32 = v99[5];
  }

  else
  {
    v33 = -1 << *(a5 + 32);
    v29 = a5 + 56;
    v30 = ~v33;
    v34 = -v33;
    v35 = v34 < 64 ? ~(-1 << v34) : -1;
    v32 = v35 & *(a5 + 56);

    v31 = 0;
    v28 = a5;
  }

  v93 = v30;
  v94 = v28;
  v36 = (v30 + 64) >> 6;
  while (1)
  {
    while (1)
    {
      v37 = v32;
      if (v28 < 0)
      {
        v40 = sub_1DD6407F8();
        if (!v40)
        {
          return sub_1DD3AA5A4();
        }

        v98 = v40;
        type metadata accessor for DateTimeConstraint();
        swift_dynamicCast();
        v30 = v99[0];
        if (!v99[0])
        {
          return sub_1DD3AA5A4();
        }
      }

      else
      {
        v38 = v31;
        v39 = v32;
        if (!v32)
        {
          while (1)
          {
            v31 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              break;
            }

            if (v31 >= v36)
            {
              return sub_1DD3AA5A4();
            }

            v39 = *(v29 + 8 * v31);
            ++v38;
            if (v39)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_58;
        }

LABEL_15:
        v32 = (v39 - 1) & v39;
        v30 = *(*(v28 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v39)))));

        if (!v30)
        {
          return sub_1DD3AA5A4();
        }
      }

      if (*(v30 + 16) == 9)
      {
        break;
      }
    }

    if (*(v30 + 49))
    {
      if (*(v30 + 49) == 1)
      {
        a4 = 0xE300000000000000;
        v41 = 6581861;
      }

      else
      {
        a4 = 0xE600000000000000;
        v41 = 0x746573746F6ELL;
      }
    }

    else
    {
      a4 = 0xE500000000000000;
      v41 = 0x7472617473;
    }

    v42 = BYTE1(v95[6].isa);
    v43 = 0x746573746F6ELL;
    if (v42 == 1)
    {
      v43 = 6581861;
    }

    v44 = 0xE300000000000000;
    if (v42 != 1)
    {
      v44 = 0xE600000000000000;
    }

    v45 = BYTE1(v95[6].isa) ? v43 : 0x7472617473;
    v46 = BYTE1(v95[6].isa) ? v44 : 0xE500000000000000;
    if (v41 == v45 && a4 == v46)
    {
      break;
    }

    a2 = sub_1DD640CD8();

    v28 = v94;
    if (a2)
    {
      goto LABEL_45;
    }
  }

LABEL_45:
  sub_1DD3AA5A4();
  v49 = v85;
  v48 = v86;
  v50 = *(v85 + 104);
  v51 = v83;
  v50(v83, *MEMORY[0x1E6969A48], v86);
  v52 = v84;
  v50(v84, *MEMORY[0x1E6969A78], v48);
  v53 = sub_1DD63D278();
  v55 = v54;
  v57 = v56;
  v58 = *(v49 + 8);
  v58(v52, v48);
  result = (v58)(v51, v48);
  v29 = v90;
  v59 = v91;
  v31 = v92;
  a2 = v88;
  a4 = v89;
  v60 = v95;
  if (v57)
  {
    return result;
  }

  result = sub_1DD43C008(v53, v55);
  if (v61)
  {
    return result;
  }

  v62 = result;
  v63 = *&v60[3].isa;
  if (LOBYTE(v60[6].isa) == 2)
  {
    goto LABEL_53;
  }

  if (LOBYTE(v60[6].isa))
  {
    return result;
  }

  if ((~*&v63 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  isa = v60[3].isa;
  if (v63 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v63 < 9.22337204e18)
  {
    *&v63 = v63;
LABEL_53:
    if (result >= *&v63)
    {
      return result;
    }

    v65 = sub_1DD63CBB8();
    (*(*(v65 - 8) + 8))(v59, v65);
    if (qword_1ECCDB0C0 == -1)
    {
LABEL_55:
      v66 = sub_1DD63F9F8();
      __swift_project_value_buffer(v66, qword_1ECD0DDC0);
      v37 = v96;
      (*(a2 + 16))(v96, v97, a4);
      v30 = sub_1DD63F9D8();
      v67 = sub_1DD640368();
      if (os_log_type_enabled(v30, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v95 = v30;
        v70 = v37;
        v71 = a4;
        v97 = v69;
        v99[0] = v69;
        *v68 = 136315650;
        sub_1DD3DDA14(&qword_1EE1663F8, MEMORY[0x1E6969530]);
        v72 = sub_1DD640CB8();
        LODWORD(v94) = v67;
        v73 = v72;
        v75 = v74;
        (*(a2 + 8))(v70, v71);
        v76 = sub_1DD39565C(v73, v75, v99);

        *(v68 + 4) = v76;
        *(v68 + 12) = 2048;
        *(v68 + 14) = v63;
        *(v68 + 22) = 2048;
        *(v68 + 24) = v62;
        v77 = v95;
        _os_log_impl(&dword_1DD38D000, v95, v94, "CalendarComponentConstraintSolver: modified %s and constraint value of %ld to be on day %ld due to original exceeding number of days in month", v68, 0x20u);
        v78 = v97;
        __swift_destroy_boxed_opaque_existential_1(v97);
        MEMORY[0x1E12B3DA0](v78, -1, -1);
        v79 = v68;
        v31 = v92;
        MEMORY[0x1E12B3DA0](v79, -1, -1);

LABEL_59:
        v80 = sub_1DD63D2D8();
        __swift_storeEnumTagSinglePayload(v31, 1, 1, v80);
        v81 = sub_1DD63D328();
        __swift_storeEnumTagSinglePayload(v29, 1, 1, v81);
        return sub_1DD63CB68();
      }

LABEL_58:

      (*(a2 + 8))(v37, a4);
      goto LABEL_59;
    }

LABEL_62:
    swift_once();
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3DD8F4(uint64_t a1, uint64_t a2)
{
  v4 = _s19ConvergenceStrategyOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3DD958(uint64_t a1)
{
  v2 = _s19ConvergenceStrategyOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD3DD9B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD3DDA14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = *(a2 - 256);
  v4 = *(v2 + 104);
  return a1 + v3;
}

uint64_t OUTLINED_FUNCTION_12_10()
{
  v1 = **(v0 - 768);
  result = *(v0 - 728);
  v3 = *(v0 - 792);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_8()
{
  result = v1 + 5 * v0;
  v4 = *(v2 - 1072);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_7()
{
  result = v1 + 2 * v0;
  v4 = *(v2 - 948);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_3@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 328);
  v4 = *(v1 - 408);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  v3 = *(v1 - 576) + v0;
  v4 = *(v1 - 352);

  return __swift_getEnumTagSinglePayload(v3, 3, v4);
}

uint64_t OUTLINED_FUNCTION_32_5@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 1128);
  v4 = *(v1 - 320);
  v5 = *(v1 - 424);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_45_0()
{
  v2 = *(v0 - 320);

  return sub_1DD640CB8();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_51_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_60_1()
{
  result = *(v0 - 256);
  v3 = *(v1 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_70()
{
  v2 = *(v0 - 912);

  return sub_1DD63F9D8();
}

uint64_t OUTLINED_FUNCTION_71()
{
  v2 = *(v0 - 584);

  return sub_1DD3DD958(v2);
}

uint64_t OUTLINED_FUNCTION_72_0()
{
}

uint64_t OUTLINED_FUNCTION_87()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_88_0()
{
}

unint64_t DateTime.Date.CalendarEra.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD3DDECC()
{
  result = qword_1ECCDC190;
  if (!qword_1ECCDC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC190);
  }

  return result;
}

uint64_t sub_1DD3DDF40@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.CalendarEra.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s11CalendarEraOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11CalendarEraOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD3DE17C()
{
  result = qword_1ECCDC198;
  if (!qword_1ECCDC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC198);
  }

  return result;
}

uint64_t sub_1DD3DE1D0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DD63DFB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v4, v7);
  result = (*(v5 + 88))(v9, v4);
  if (result == *MEMORY[0x1E69D1830])
  {
    *a1 = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69D1818])
  {
    v11 = 1;
  }

  else if (result == *MEMORY[0x1E69D1808])
  {
    v11 = 3;
  }

  else if (result == *MEMORY[0x1E69D17F8])
  {
    v11 = 4;
  }

  else if (result == *MEMORY[0x1E69D1800])
  {
    v11 = 5;
  }

  else if (result == *MEMORY[0x1E69D17E8])
  {
    v11 = 7;
  }

  else if (result == *MEMORY[0x1E69D1820])
  {
    v11 = 6;
  }

  else if (result == *MEMORY[0x1E69D1840])
  {
    v11 = 2;
  }

  else if (result == *MEMORY[0x1E69D1838])
  {
    v11 = 8;
  }

  else if (result == *MEMORY[0x1E69D1810])
  {
    v11 = 9;
  }

  else if (result == *MEMORY[0x1E69D1828])
  {
    v11 = 11;
  }

  else
  {
    if (result != *MEMORY[0x1E69D17F0])
    {
      *a1 = 12;
      return (*(v5 + 8))(v9, v4);
    }

    v11 = 10;
  }

  *a1 = v11;
  return result;
}

uint64_t sub_1DD3DE430@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1DD63D188();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63D1A8();
  v9 = sub_1DD63D2D8();
  (*(*(v9 - 8) + 8))(a1, v9);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E6969868])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E6969850])
  {
    v11 = 0;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x1E6969820])
  {
    v11 = 1;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x1E6969800])
  {
    v11 = 3;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x1E6969830])
  {
LABEL_2:
    v11 = 2;
  }

  else if (result == *MEMORY[0x1E6969808])
  {
    v11 = 5;
  }

  else if (result == *MEMORY[0x1E6969828])
  {
    v11 = 6;
  }

  else if (result == *MEMORY[0x1E6969860])
  {
    v11 = 8;
  }

  else if (result == *MEMORY[0x1E6969848])
  {
    v11 = 11;
  }

  else if (result == *MEMORY[0x1E69697B8])
  {
    v11 = 10;
  }

  else if (result == *MEMORY[0x1E69697C0])
  {
    v11 = 7;
  }

  else
  {
    result = (*(v5 + 8))(v8, v4);
    v11 = 12;
  }

LABEL_9:
  *a2 = v11;
  return result;
}

unint64_t DateTime.Date.CalendarSystem.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 12;
  if (result < 0xC)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD3DE6A8()
{
  result = qword_1ECCDC1A0;
  if (!qword_1ECCDC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC1A0);
  }

  return result;
}

uint64_t sub_1DD3DE704@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.CalendarSystem.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s14CalendarSystemOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD3DE8B8()
{
  result = qword_1ECCDC1A8;
  if (!qword_1ECCDC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC1A8);
  }

  return result;
}

uint64_t sub_1DD3DE90C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1DD42A2D4();
    v3 = v27;
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = HIBYTE(*v6) & 0xF;
      if ((*v6 & 0x2000000000000000) == 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        v10 = *a2;
        v11 = *(*a2 + 16);
        v12 = *v6;

        if (v11 && (v13 = sub_1DD3978DC(), (v14 & 1) != 0))
        {
          v15 = (*(v10 + 56) + 16 * v13);
          v8 = *v15;
          v16 = v15[1];

          v7 = v16;
        }

        else
        {
          sub_1DD5E13F8();
          v18 = v17;
          v20 = v19;

          v21 = *a2;
          swift_isUniquelyReferenced_nonNull_native();
          v26 = *a2;
          sub_1DD3FFBC0();
          *a2 = v26;

          v8 = v18;
          v7 = v20;
        }
      }

      else
      {
        v22 = *v6;
      }

      v23 = *(v27 + 16);
      if (v23 >= *(v27 + 24) >> 1)
      {
        sub_1DD42A2D4();
      }

      *(v27 + 16) = v23 + 1;
      v24 = v27 + 16 * v23;
      *(v24 + 32) = v8;
      *(v24 + 40) = v7;
      v6 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1DD3DEAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v7 = type metadata accessor for StitchedContactResolverRequest(0);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1DD42B728(0, v11, 0);
    v12 = v33;
    v13 = type metadata accessor for RunTimeDataRecord();
    v14 = a1 + ((*(*(v13 - 1) + 80) + 32) & ~*(*(v13 - 1) + 80));
    v27 = *(*(v13 - 1) + 72);
    v28 = a2;
    do
    {
      v15 = *(v14 + v13[6]);

      v16 = sub_1DD3DEFF8(v15, a2, v31);
      v32 = v4;
      v17 = v13[5];
      sub_1DD3E7B48();
      v18 = v13[7];
      v19 = v30;
      v20 = *(v30 + 20);
      v21 = sub_1DD63D078();
      (*(*(v21 - 8) + 16))(&v10[v20], v14 + v18, v21);
      *&v10[*(v19 + 24)] = v16;
      v33 = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1DD42B728(v22 > 1, v23 + 1, 1);
        v12 = v33;
      }

      *(v12 + 16) = v23 + 1;
      v24 = v12 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v25 = *(v29 + 72);
      sub_1DD3E63AC();
      a2 = v28;
      v14 += v27;
      --v11;
      v4 = v32;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1DD3DED4C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v39 = type metadata accessor for StitchedContactResolverRequest(0);
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v40 = a2;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1DD42B728(0, v10, 0);
    v11 = v43;
    v38 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v12 = a1 + v38;
    v37 = *(v6 + 72);
    do
    {
      v41 = v11;
      sub_1DD3E7B48();
      v13 = *(v9 + 1);
      v14 = *(v9 + 2);
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        v16 = *v40;
        if (!*(*v40 + 16) || (v17 = *(v9 + 1), v18 = *(v9 + 2), v19 = sub_1DD3978DC(), (v20 & 1) == 0))
        {
          sub_1DD5E13F8();
          v25 = v24;
          v36 = v3;
          v27 = v26;

          v23 = v40;
          v28 = *v40;
          swift_isUniquelyReferenced_nonNull_native();
          v42 = *v23;
          sub_1DD3FFBC0();
          *v23 = v42;

          v13 = v25;
          v14 = v27;
          v3 = v36;
          goto LABEL_11;
        }

        v21 = (*(v16 + 56) + 16 * v19);
        v13 = *v21;
        v22 = v21[1];

        v14 = v22;
      }

      v23 = v40;
LABEL_11:
      *(v9 + 1) = v13;
      *(v9 + 2) = v14;
      v29 = *(v39 + 24);
      v30 = sub_1DD3DF5E4(*&v9[v29], v23);

      *&v9[v29] = v30;
      v11 = v41;
      v43 = v41;
      v32 = *(v41 + 16);
      v31 = *(v41 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1DD42B728(v31 > 1, v32 + 1, 1);
        v11 = v43;
      }

      *(v11 + 16) = v32 + 1;
      v33 = v37;
      sub_1DD3E63AC();
      v12 += v33;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_1DD3DEFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a3;
  v7 = type metadata accessor for StitchedContactResolverRecommendation(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1DD42B884(0, v12, 0);
    v13 = v24;
    v14 = *(type metadata accessor for ContactResolverRunTimeData(0) - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v22 = *(v14 + 72);
    while (1)
    {
      v16 = a2;
      sub_1DD3E4118(v15, a2, v23, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v24 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1DD42B884(v17 > 1, v18 + 1, 1);
        v13 = v24;
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v20 = *(v8 + 72);
      sub_1DD3E63AC();
      v15 += v22;
      --v12;
      a2 = v16;
      if (!v12)
      {

        return v13;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DD3DF224(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1DD42B7A0();
    v3 = v43;
    v5 = (a1 + 32);
    v38 = *MEMORY[0x1E69964B0];
    while (1)
    {
      memcpy(__dst, v5, 0x50uLL);
      v6 = __dst[1];
      v7 = HIBYTE(__dst[1]) & 0xFLL;
      if ((__dst[1] & 0x2000000000000000) == 0)
      {
        v7 = __dst[0] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        break;
      }

      v8 = *a2;
      if (*(*a2 + 16))
      {
        sub_1DD3E6404(__dst, v41);
        v9 = sub_1DD3978DC();
        if (v10)
        {
          v11 = (*(v8 + 56) + 16 * v9);
          v6 = v11[1];
          v40 = *v11;
LABEL_10:

          goto LABEL_13;
        }
      }

      else
      {
        sub_1DD3E6404(__dst, v41);
      }

      sub_1DD5E13F8();
      v13 = v12;
      v15 = v14;

      v16 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v41[0] = *a2;
      sub_1DD3FFBC0();
      *a2 = v41[0];
      v40 = v13;
      v6 = v15;
LABEL_13:
      v18 = __dst[2];
      v17 = __dst[3];
      if (!__dst[3])
      {
        goto LABEL_25;
      }

      v19 = HIBYTE(__dst[3]) & 0xFLL;
      if ((__dst[3] & 0x2000000000000000) == 0)
      {
        v19 = __dst[2] & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v20 = *a2;
        if (*(*a2 + 16) && (v21 = sub_1DD3978DC(), (v22 & 1) != 0))
        {
          v23 = (*(v20 + 56) + 16 * v21);
          v18 = *v23;
          v24 = v23[1];

          if (!v24)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_1DD5E13F8();
          v26 = v25;
          v24 = v27;

          v28 = *a2;
          swift_isUniquelyReferenced_nonNull_native();
          v41[0] = *a2;
          sub_1DD3FFBC0();
          *a2 = v41[0];
          v18 = v26;
          if (!v24)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {

        v24 = v17;
        if (!v17)
        {
LABEL_25:
          sub_1DD3E6460(__dst);
          v32 = 0;
          goto LABEL_28;
        }
      }

      v41[0] = v18;
      v41[1] = v24;
      sub_1DD3B7F10();
      if (sub_1DD6406D8())
      {
        v29 = sub_1DD63FDA8();
        v30 = (*(v38 + 16))(v38, v29);

        v18 = sub_1DD63FDD8();
        v32 = v31;
      }

      else
      {
        sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);

        v33 = sub_1DD40B8E0();
        v18 = sub_1DD415480(v33);
        v32 = v34;

        if (!v32)
        {
          sub_1DD3E6460(__dst);
          v18 = 0;
          v32 = 0xE000000000000000;
          goto LABEL_28;
        }
      }

      sub_1DD3E6460(__dst);
LABEL_28:
      v43 = v3;
      v35 = *(v3 + 16);
      if (v35 >= *(v3 + 24) >> 1)
      {
        sub_1DD42B7A0();
        v3 = v43;
      }

      *(v3 + 16) = v35 + 1;
      v36 = v3 + 80 * v35;
      *(v36 + 32) = v40;
      *(v36 + 40) = v6;
      *(v36 + 48) = v18;
      *(v36 + 56) = v32;
      *(v36 + 64) = xmmword_1DD642F70;
      *(v36 + 80) = 0u;
      *(v36 + 96) = 0u;
      v5 += 80;
      if (!--v2)
      {
        return v3;
      }
    }

    v40 = __dst[0];
    sub_1DD3E6404(__dst, v41);
    goto LABEL_10;
  }

  return v3;
}

uint64_t sub_1DD3DF5E4(uint64_t a1, uint64_t *a2)
{
  v96 = a2;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v84 = *(matched - 8);
  v4 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](matched - 8);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = (&v80 - v9);
  v90 = type metadata accessor for ContactResolverRunTimeData(0);
  v10 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for StitchedContactResolverRecommendation(0);
  v13 = *(v89 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v98 = MEMORY[0x1E69E7CC0];
    sub_1DD42B884(0, v17, 0);
    v19 = 0;
    v95 = v98;
    v87 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v88 = v17;
    v20 = a1 + v87;
    v21 = *(v13 + 72);
    v93 = v16;
    v83 = v12;
    v85 = v21;
    v86 = v20;
    while (1)
    {
      v94 = v19;
      sub_1DD3E7B48();
      sub_1DD3E7B48();
      v22 = *(v12 + 37);
      v23 = *(v22 + 16);
      if (v23)
      {
        v97 = v18;
        sub_1DD42B564();
        v24 = v97;
        v25 = (*(v84 + 80) + 32) & ~*(v84 + 80);
        v92 = v22;
        v26 = v22 + v25;
        v27 = *(v84 + 72);
        do
        {
          sub_1DD5E0E10(v26, v96, v6);
          v97 = v24;
          v28 = *(v24 + 16);
          if (v28 >= *(v24 + 24) >> 1)
          {
            sub_1DD42B564();
            v24 = v97;
          }

          *(v24 + 16) = v28 + 1;
          sub_1DD3E63AC();
          v26 += v27;
          --v23;
        }

        while (v23);

        v12 = v83;
        v16 = v93;
      }

      else
      {
        v29 = *(v12 + 37);

        v24 = v18;
      }

      *(v12 + 37) = v24;
      sub_1DD5E11D4(&v12[*(v90 + 40)], v91);
      sub_1DD3E6284();
      sub_1DD3E62DC(v12, v16);
      v30 = &v16[*(v89 + 20)];
      v32 = *v30;
      v31 = *(v30 + 1);
      v33 = *(v30 + 2);
      LODWORD(v34) = v30[24];
      if (v30[24])
      {
        if (v34 == 1)
        {
          v82 = sub_1DD3DE90C(v32, v96);
          if (v33)
          {
            v45 = v31 & 0xFFFFFFFFFFFFLL;
            if ((v33 & 0x2000000000000000) != 0)
            {
              v45 = HIBYTE(v33) & 0xF;
            }

            if (v45)
            {
              v46 = *v96;
              if (!*(*v96 + 16) || (v47 = sub_1DD3978DC(), (v48 & 1) == 0))
              {
                sub_1DD5E13F8();
                v80 = v67;
                v81 = v66;

                LODWORD(v92) = 1;
                v34 = v96;
                v68 = *v96;
                swift_isUniquelyReferenced_nonNull_native();
                v97 = *v34;
                sub_1DD3FFBC0();
                *v34 = v97;
                LOBYTE(v34) = v92;
                v69 = v32;
                v70 = v31;
                v71 = v33;
                v72 = 1;
                goto LABEL_42;
              }

              v49 = (*(v46 + 56) + 16 * v47);
              v40 = v49[1];
              v92 = *v49;

              v41 = v32;
              v42 = v31;
              v43 = v33;
              v44 = 1;
LABEL_27:
              sub_1DD3E6340(v41, v42, v43, v44);
              v33 = v40;
              v31 = v92;
LABEL_48:
              v62 = v94;
              v61 = v95;
              v32 = v82;
              goto LABEL_49;
            }

            v63 = v32;
            v64 = v31;
            v65 = v33;
          }

          else
          {
            v63 = v32;
            v64 = v31;
            v65 = 0;
          }

          v76 = 1;
LABEL_47:
          sub_1DD3E6340(v63, v64, v65, v76);
          goto LABEL_48;
        }

        if (v34 == 2)
        {
          v82 = sub_1DD3DE90C(v32, v96);
          if (v33)
          {
            v35 = v31 & 0xFFFFFFFFFFFFLL;
            if ((v33 & 0x2000000000000000) != 0)
            {
              v35 = HIBYTE(v33) & 0xF;
            }

            if (v35)
            {
              v36 = *v96;
              if (*(*v96 + 16))
              {
                v37 = sub_1DD3978DC();
                if (v38)
                {
                  v39 = (*(v36 + 56) + 16 * v37);
                  v40 = v39[1];
                  v92 = *v39;

                  v41 = v32;
                  v42 = v31;
                  v43 = v33;
                  v44 = 2;
                  goto LABEL_27;
                }
              }

              sub_1DD5E13F8();
              v80 = v74;
              v81 = v73;

              LODWORD(v92) = 2;
              v34 = v96;
              v75 = *v96;
              swift_isUniquelyReferenced_nonNull_native();
              v97 = *v34;
              sub_1DD3FFBC0();
              *v34 = v97;
              LOBYTE(v34) = v92;
              v69 = v32;
              v70 = v31;
              v71 = v33;
              v72 = 2;
LABEL_42:
              sub_1DD3E6340(v69, v70, v71, v72);
              v33 = v80;
              v31 = v81;
              goto LABEL_48;
            }

            v63 = v32;
            v64 = v31;
            v65 = v33;
          }

          else
          {
            v63 = v32;
            v64 = v31;
            v65 = 0;
          }

          v76 = 2;
          goto LABEL_47;
        }
      }

      else
      {
        v50 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v50 = v32 & 0xFFFFFFFFFFFFLL;
        }

        if (v50)
        {
          LODWORD(v92) = v30[24];
          v51 = *v96;
          if (*(*v96 + 16) && (v52 = sub_1DD3978DC(), (v53 & 1) != 0))
          {
            v54 = (*(v51 + 56) + 16 * v52);
            v56 = *v54;
            v55 = v54[1];

            sub_1DD3E6340(v32, v31, v33, 0);
            v32 = v56;
            v31 = v55;
          }

          else
          {
            sub_1DD5E13F8();
            v81 = v58;
            v82 = v57;

            v59 = v96;
            v60 = *v96;
            swift_isUniquelyReferenced_nonNull_native();
            v97 = *v59;
            sub_1DD3FFBC0();
            *v59 = v97;
            sub_1DD3E6340(v32, v31, v33, 0);
            v31 = v81;
            v32 = v82;
          }

          LOBYTE(v34) = v92;
        }

        v33 = v33;
      }

      v62 = v94;
      v61 = v95;
LABEL_49:
      *v30 = v32;
      *(v30 + 1) = v31;
      *(v30 + 2) = v33;
      v30[24] = v34;
      v98 = v61;
      v78 = *(v61 + 16);
      v77 = *(v61 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_1DD42B884(v77 > 1, v78 + 1, 1);
        v62 = v94;
        v61 = v98;
      }

      v19 = v62 + 1;
      *(v61 + 16) = v78 + 1;
      v95 = v61;
      v16 = v93;
      sub_1DD3E63AC();
      v18 = MEMORY[0x1E69E7CC0];
      if (v19 == v88)
      {
        return v95;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD3DFD58@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v14 = a1;
  v4 = type metadata accessor for StitchableInteraction();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v13 - v10;
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  sub_1DD3E63AC();
  v14(v7);
  result = sub_1DD3E7BA0(v7, type metadata accessor for StitchableInteraction);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD3DFF10@<X0>(uint64_t *a1@<X1>, char *a2@<X8>)
{
  v4 = type metadata accessor for StitchableInteraction();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    v12 = a2;
    v13 = 1;
  }

  else
  {
    sub_1DD3E63AC();
    v27 = sub_1DD3DF224(*&v7[v4[9]], a1);
    v15 = *v7;
    v14 = *(v7 + 1);
    v16 = *(v7 + 2);
    v17 = *(v7 + 3);

    v18 = sub_1DD5E0D30(v16, v17);
    v20 = v19;
    v21 = v4[6];
    v22 = sub_1DD63D078();
    (*(*(v22 - 8) + 16))(&a2[v21], &v7[v21], v22);
    sub_1DD55D704(*&v7[v4[7]]);
    v23 = v7[v4[8]];
    *a2 = v15;
    *(a2 + 1) = v14;
    *(a2 + 2) = v18;
    *(a2 + 3) = v20;
    *&a2[v4[7]] = v24;
    a2[v4[8]] = v23;
    *&a2[v4[9]] = v27;
    sub_1DD3E7BA0(v7, type metadata accessor for StitchableInteraction);
    v12 = a2;
    v13 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v4);
}

uint64_t sub_1DD3E0144(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1DD4EC918(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1DD3E64B4(v6);
  return sub_1DD640968();
}

void sub_1DD3E01C0(void *a1, void *a2)
{
  v303 = a2;
  v300 = a1;
  v285 = type metadata accessor for StitchedContactData(0);
  v3 = OUTLINED_FUNCTION_7(v285);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v286 = v6;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_3();
  v289 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  v284 = v13;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_0();
  v291 = v15;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_3();
  v288 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v19 = OUTLINED_FUNCTION_3(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  v297 = v22;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_16_3();
  v296 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCDC038, &qword_1DD644960);
  v26 = OUTLINED_FUNCTION_3(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v295 = &v279 - v29;
  OUTLINED_FUNCTION_6_2();
  v302 = type metadata accessor for CancellableStitcher();
  v30 = OUTLINED_FUNCTION_7(v302);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  v287 = v33;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_0();
  v281 = v35;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_0();
  v283 = v37;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_0();
  v282 = v39;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_0();
  v290 = v41;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_18_0();
  v294 = v43;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_16_3();
  v293 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B8, &unk_1DD65DD40);
  v47 = OUTLINED_FUNCTION_3(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v279 - v50;
  v298 = type metadata accessor for RunTimeDataRecord();
  v52 = OUTLINED_FUNCTION_7(v298);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2();
  v301 = v56 - v55;
  OUTLINED_FUNCTION_6_2();
  v57 = type metadata accessor for Signpost();
  v58 = OUTLINED_FUNCTION_7(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2();
  v63 = v62 - v61;
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v64 = qword_1EE16F0C0;
  v65 = v63 + *(v57 + 20);
  *v65 = "Stitching.CancellableStitcher";
  *(v65 + 8) = 29;
  *(v65 + 16) = 2;
  v66 = v64;
  v304 = v63;
  v67 = v66;
  sub_1DD63F9B8();
  *(v304 + *(v57 + 24)) = v67;
  v68 = v67;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1DD643F90;
  v70 = sub_1DD6408F8();
  v72 = v71;
  *(v69 + 56) = MEMORY[0x1E69E6158];
  *(v69 + 64) = sub_1DD392BD8();
  *(v69 + 32) = v70;
  *(v69 + 40) = v72;
  v299 = v68;
  sub_1DD63F998();

  v73 = v300;
  v74 = v300[2];
  sub_1DD43C034(v74);
  if (__swift_getEnumTagSinglePayload(v51, 1, v298) == 1)
  {
    sub_1DD390754(v51, &qword_1ECCDC1B8, &unk_1DD65DD40);
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v75 = sub_1DD63F9F8();
    __swift_project_value_buffer(v75, qword_1EE16F068);
    OUTLINED_FUNCTION_1_18();
    v76 = v294;
    sub_1DD3E7B48();
    v77 = sub_1DD63F9D8();
    v78 = sub_1DD640368();
    v79 = OUTLINED_FUNCTION_9_0(v78);
    v80 = v303;
    if (v79)
    {
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_14_10();
      v81 = swift_slowAlloc();
      v305[0] = v81;
      OUTLINED_FUNCTION_38_2(4.8149e-34);
      OUTLINED_FUNCTION_0_26();
      v83 = sub_1DD3E7BA0(v2, v82);
      OUTLINED_FUNCTION_57_0(v83, v84, v305);
      OUTLINED_FUNCTION_40_2();
      v73 = v76;

      unk_1EE165004 = &qword_1DD643000;
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_33_2();
      _os_log_impl(v85, v86, v87, v88, v89, v90);
      __swift_destroy_boxed_opaque_existential_1(v81);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      v91 = OUTLINED_FUNCTION_8_6();
      MEMORY[0x1E12B3DA0](v91);
    }

    else
    {

      OUTLINED_FUNCTION_0_26();
      sub_1DD3E7BA0(v76, v111);
    }

    v112 = v302;
    sub_1DD3E6100();
    v113 = swift_allocError();
    *v114 = 0;
    v115 = v113;
    swift_willThrow();
    goto LABEL_27;
  }

  sub_1DD3E63AC();
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v92 = sub_1DD63F9F8();
  v93 = __swift_project_value_buffer(v92, qword_1EE16F068);
  OUTLINED_FUNCTION_1_18();
  v94 = v293;
  sub_1DD3E7B48();
  v298 = v93;
  v95 = sub_1DD63F9D8();
  v96 = sub_1DD640368();
  v97 = OUTLINED_FUNCTION_9_0(v96);
  v280 = v74;
  if (v97)
  {
    OUTLINED_FUNCTION_18_1();
    v98 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v99 = swift_slowAlloc();
    v305[0] = v99;
    *v98 = 136315138;
    v100 = v73;
    v101 = *v94;
    v102 = v94[1];

    OUTLINED_FUNCTION_0_26();
    sub_1DD3E7BA0(v94, v103);
    v104 = v101;
    v73 = v100;
    v105 = sub_1DD39565C(v104, v102, v305);

    *(v98 + 4) = v105;
    OUTLINED_FUNCTION_51_2();
    _os_log_impl(v106, v107, v108, v109, v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v99);
    v110 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x1E12B3DA0](v110);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {

    OUTLINED_FUNCTION_0_26();
    sub_1DD3E7BA0(v94, v116);
  }

  v117 = *(v302 + 28);
  v118 = *v73;
  v119 = v73[1];
  v120 = sub_1DD63F598();
  v121 = v295;
  __swift_storeEnumTagSinglePayload(v295, 1, 1, v120);
  v122 = sub_1DD63D078();
  v123 = v73;
  __swift_storeEnumTagSinglePayload(v296, 1, 1, v122);
  __swift_storeEnumTagSinglePayload(v297, 1, 1, v122);
  v293 = v118;
  v294 = v119;
  v124 = sub_1DD63F4A8();
  OUTLINED_FUNCTION_50_2();
  sub_1DD390754(v125, v126, v127);
  OUTLINED_FUNCTION_50_2();
  sub_1DD390754(v128, v129, v130);
  sub_1DD390754(v121, qword_1ECCDC038, &qword_1DD644960);
  v131 = sub_1DD43C104(v124);
  if (v131)
  {
    v132 = v131;
    v133 = sub_1DD6395C4();
    v134 = v301;
    if (v133)
    {
      OUTLINED_FUNCTION_2_13();
      sub_1DD3E7BA0(v134, v135);

      sub_1DD6404C8();
      OUTLINED_FUNCTION_9_7();
      sub_1DD63F9A8();
      goto LABEL_18;
    }

    v152 = v73[4];
    v153 = v288;
    v154 = sub_1DD5D5B60(v301, v132, v73[3], v288);
    MEMORY[0x1EEE9AC00](v154);
    v155 = v291;
    v115 = v292;
    sub_1DD3DFD58(sub_1DD3E6154, v291);
    v156 = v289;
    sub_1DD3E1AC0(v280, v155, v289);
    v113 = v115;
    if (!v115)
    {
      v297 = v132;

      v136 = v303;
      if (sub_1DD6395C4())
      {

        sub_1DD3E7BA0(v156, type metadata accessor for StitchedContactData);
        sub_1DD390754(v291, &qword_1ECCDC1B0, &unk_1DD6454F0);
        OUTLINED_FUNCTION_2_13();
        sub_1DD3E7BA0(v301, v171);
        sub_1DD390754(v153, &qword_1ECCDC1B0, &unk_1DD6454F0);
        sub_1DD6404C8();
        OUTLINED_FUNCTION_9_7();
        sub_1DD63F9A8();
        goto LABEL_19;
      }

      v307[0] = MEMORY[0x1E69E7CC8];
      v188 = v286;
      sub_1DD3E7B48();
      v189 = sub_1DD5E0D30(*v156, v156[1]);
      v190 = v156;
      v192 = v191;
      v193 = v188[1];

      *v188 = v189;
      v188[1] = v192;
      v194 = *(v285 + 28);
      sub_1DD3DFF10(v307, v284);
      sub_1DD3E6284();
      v195 = sub_1DD3DED4C(v190[4], v307);
      v196 = v188[4];

      v188[4] = v195;

      v198 = 0;
      v197 = sub_1DD6326B0();
      v201 = v200;
      v202 = v197;

      v203 = sub_1DD63F9D8();
      v204 = sub_1DD640368();

      if (os_log_type_enabled(v203, v204))
      {
        OUTLINED_FUNCTION_18_1();
        v205 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v206 = swift_slowAlloc();
        v292 = 0;
        v207 = v73;
        v208 = v206;
        v305[0] = v206;
        *v205 = 136315138;
        v209 = sub_1DD39565C(v202, v201, v305);

        *(v205 + 4) = v209;
        OUTLINED_FUNCTION_51_2();
        _os_log_impl(v210, v211, v212, v213, v205, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v208);
        v73 = v207;
        v198 = v292;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v214 = v302;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {

        v214 = v302;
      }

      v296 = *(v214 + 36);
      v305[0] = *(v73 + v296);

      v215 = sub_1DD58BEDC();
      v216 = v198;
      if (v198)
      {

        OUTLINED_FUNCTION_1_18();
        v217 = v283;
        sub_1DD3E7B48();
        v218 = v198;
        v219 = sub_1DD63F9D8();
        v220 = sub_1DD640368();

        if (os_log_type_enabled(v219, v220))
        {
          v221 = OUTLINED_FUNCTION_43_2();
          v305[0] = swift_slowAlloc();
          *v221 = 136315394;
          v222 = v73;
          v223 = *v217;
          v224 = v217[1];

          OUTLINED_FUNCTION_0_26();
          sub_1DD3E7BA0(v217, v225);
          v226 = sub_1DD39565C(v223, v224, v305);

          *(v221 + 4) = v226;
          *(v221 + 12) = 2080;
          v306 = v216;
          v227 = v216;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
          v228 = sub_1DD63FE38();
          v230 = sub_1DD39565C(v228, v229, v305);
          v73 = v222;

          *(v221 + 14) = v230;
          OUTLINED_FUNCTION_51_2();
          _os_log_impl(v231, v232, v233, v234, v221, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

        else
        {

          OUTLINED_FUNCTION_0_26();
          sub_1DD3E7BA0(v217, v247);
        }

        v248 = 0;
        v237 = 0;
        v239 = 0;
        v249 = v286;
      }

      else
      {
        v235 = v215;

        v295 = sub_1DD43C11C(v235);
        v237 = v236;
        v239 = v238;

        OUTLINED_FUNCTION_1_18();
        v240 = v282;
        sub_1DD3E7B48();
        v241 = sub_1DD63F9D8();
        v242 = sub_1DD640368();
        if (OUTLINED_FUNCTION_9_0(v242))
        {
          OUTLINED_FUNCTION_18_1();
          v243 = swift_slowAlloc();
          OUTLINED_FUNCTION_17_0();
          v292 = swift_slowAlloc();
          v305[0] = v292;
          *v243 = 136315138;
          v244 = v240[1];
          v290 = *v240;

          OUTLINED_FUNCTION_0_26();
          sub_1DD3E7BA0(v240, v245);
          v246 = sub_1DD39565C(v290, v244, v305);

          *(v243 + 4) = v246;
          _os_log_impl(&dword_1DD38D000, v241, v242, "Fetch siriTasksEvaluationData for taskId=%s", v243, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v292);
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          v73 = v300;
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

        else
        {

          OUTLINED_FUNCTION_0_26();
          sub_1DD3E7BA0(v240, v250);
        }

        v249 = v286;

        v248 = v295;
      }

      sub_1DD456000(v249, v248, v237, v239);

      v251 = sub_1DD4589E4();
      v305[3] = &type metadata for ContactFeatures;
      v305[4] = sub_1DD3E6184();
      LOBYTE(v305[0]) = 1;
      v252 = v248;
      v253 = sub_1DD63DA48();
      __swift_destroy_boxed_opaque_existential_1(v305);
      sub_1DD457B80(v249, (v73 + *(v302 + 32)), v251, v252, v237, v239, v253 & 1);
      sub_1DD467EC0(v249);
      sub_1DD468D30(v249);
      v305[0] = *(v73 + v296);
      v254 = v305[0];

      sub_1DD58E684();
      v305[0] = v254;
      sub_1DD58E7D8();

      if (v237)
      {

        v305[0] = *(v73 + v296);

        sub_1DD58C468();
      }

      v255 = type metadata accessor for StitchableInteraction();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v288, 1, v255);
      v257 = *(v286 + *(v285 + 36));
      v258 = 0x746E6573657250;
      if (EnumTagSinglePayload == 1)
      {
        v259 = 0x676E697373694DLL;
      }

      else
      {
        v259 = 0x746E6573657250;
      }

      v305[0] = v259;
      v305[1] = 0xE700000000000000;
      if (!v257)
      {
        v258 = 0x676E697373694DLL;
      }

      v305[2] = v258;
      v305[3] = 0xE700000000000000;
      v305[4] = 0x73736563637553;
      v305[5] = 0xE700000000000000;
      v305[6] = 0xD00000000000001DLL;
      v305[7] = 0x80000001DD66A7C0;
      v305[8] = 0;
      v305[9] = 0;
      LOBYTE(v305[10]) = 1;
      memcpy(__dst, v305, sizeof(__dst));
      sub_1DD5CDE44();
      sub_1DD3E61D8(v305);
      OUTLINED_FUNCTION_1_18();
      sub_1DD3E7B48();
      v260 = sub_1DD63F9D8();
      v261 = sub_1DD640368();
      if (OUTLINED_FUNCTION_29_2(v261))
      {
        OUTLINED_FUNCTION_18_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_14_10();
        v262 = swift_slowAlloc();
        v306 = v262;
        *v254 = 136315138;
        v263 = v281;
        v264 = *v281;
        v265 = v281[1];

        OUTLINED_FUNCTION_0_26();
        v267 = sub_1DD3E7BA0(v263, v266);
        OUTLINED_FUNCTION_57_0(v267, v268, &v306);
        OUTLINED_FUNCTION_40_2();

        *(v254 + 4) = v264;
        OUTLINED_FUNCTION_33_2();
        _os_log_impl(v269, v270, v271, v272, v273, v274);
        __swift_destroy_boxed_opaque_existential_1(v262);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v275 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v275);
      }

      else
      {

        OUTLINED_FUNCTION_0_26();
        sub_1DD3E7BA0(v281, v276);
      }

      OUTLINED_FUNCTION_4_13();
      sub_1DD3E7BA0(v289, v277);
      sub_1DD390754(v291, &qword_1ECCDC1B0, &unk_1DD6454F0);
      OUTLINED_FUNCTION_2_13();
      sub_1DD3E7BA0(v301, v278);
      OUTLINED_FUNCTION_56_2();
      sub_1DD390754(v288, &qword_1ECCDC1B0, &unk_1DD6454F0);
      sub_1DD6404C8();
      OUTLINED_FUNCTION_9_7();
      sub_1DD63F9A8();
LABEL_18:
      v136 = v303;
LABEL_19:
      OUTLINED_FUNCTION_21_2();

      return;
    }

    OUTLINED_FUNCTION_50_2();
    sub_1DD390754(v157, v158, v159);
    OUTLINED_FUNCTION_2_13();
    sub_1DD3E7BA0(v301, v160);
    OUTLINED_FUNCTION_50_2();
    sub_1DD390754(v161, v162, v163);
    v80 = v303;
  }

  else
  {

    OUTLINED_FUNCTION_1_18();
    v137 = v290;
    sub_1DD3E7B48();
    v138 = sub_1DD63F9D8();
    v139 = sub_1DD640368();
    v140 = OUTLINED_FUNCTION_29_2(v139);
    v80 = v303;
    if (v140)
    {
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_14_10();
      v141 = swift_slowAlloc();
      v305[0] = v141;
      OUTLINED_FUNCTION_38_2(4.8149e-34);
      OUTLINED_FUNCTION_0_26();
      v143 = sub_1DD3E7BA0(v2, v142);
      OUTLINED_FUNCTION_57_0(v143, v144, v305);
      OUTLINED_FUNCTION_40_2();
      v73 = v137;

      *(&qword_1DD6445A0 + 4) = v123;
      OUTLINED_FUNCTION_33_2();
      _os_log_impl(v145, v146, v147, v148, v149, v150);
      __swift_destroy_boxed_opaque_existential_1(v141);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      v151 = OUTLINED_FUNCTION_8_6();
      MEMORY[0x1E12B3DA0](v151);
    }

    else
    {

      OUTLINED_FUNCTION_0_26();
      sub_1DD3E7BA0(v137, v164);
    }

    v165 = v301;
    sub_1DD3E6100();
    v113 = swift_allocError();
    *v166 = 1;
    v115 = v113;
    swift_willThrow();
    OUTLINED_FUNCTION_2_13();
    sub_1DD3E7BA0(v165, v167);
  }

  v112 = v302;
LABEL_27:
  v168 = *(v73 + *(v112 + 36));
  v169 = *v73;
  v170 = v73[1];
  v305[0] = v168;

  OUTLINED_FUNCTION_53_1();
  sub_1DD58E684();
  if (v115)
  {

    sub_1DD6404C8();
    OUTLINED_FUNCTION_9_7();
  }

  else
  {
    v305[0] = v168;
    OUTLINED_FUNCTION_53_1();
    sub_1DD58E7D8();

    v307[1] = 0x676E697373694DLL;
    v307[2] = 0xE700000000000000;
    v307[3] = 0x676E697373694DLL;
    v307[4] = 0xE700000000000000;
    v307[5] = 0x73736563637553;
    v307[6] = 0xE700000000000000;
    v307[7] = 0xD00000000000001DLL;
    v307[8] = 0x80000001DD66A7C0;
    v307[9] = 0;
    v307[10] = 0;
    v308 = 0;
    sub_1DD5CDE44();
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v172 = sub_1DD63F9F8();
    __swift_project_value_buffer(v172, qword_1EE16F068);
    OUTLINED_FUNCTION_1_18();
    v173 = v287;
    sub_1DD3E7B48();
    v174 = v113;
    v175 = sub_1DD63F9D8();
    v176 = sub_1DD640378();

    if (os_log_type_enabled(v175, v176))
    {
      OUTLINED_FUNCTION_43_2();
      v307[0] = OUTLINED_FUNCTION_42_1();
      MEMORY[0] = 136315394;
      v177 = v173;
      v178 = *v173;
      v179 = *(v177 + 8);

      OUTLINED_FUNCTION_0_26();
      v181 = sub_1DD3E7BA0(v177, v180);
      OUTLINED_FUNCTION_57_0(v181, v182, v307);
      OUTLINED_FUNCTION_40_2();

      MEMORY[4] = v178;
      MEMORY[0xC] = 2080;
      v306 = v113;
      v183 = v113;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
      v184 = sub_1DD63FE38();
      v186 = sub_1DD39565C(v184, v185, v307);

      MEMORY[0xE] = v186;
      _os_log_impl(&dword_1DD38D000, v175, v176, "error running cancellable stitcher. taskId=%s error=%s", 0, 0x16u);
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      v187 = OUTLINED_FUNCTION_8_6();
      MEMORY[0x1E12B3DA0](v187);
    }

    else
    {

      OUTLINED_FUNCTION_0_26();
      sub_1DD3E7BA0(v173, v199);
    }

    swift_willThrow();
    sub_1DD6404C8();
  }

  sub_1DD63F9A8();
  OUTLINED_FUNCTION_21_2();
}

uint64_t type metadata accessor for CancellableStitcher()
{
  result = qword_1EE162278;
  if (!qword_1EE162278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD3E1AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v117 = a2;
  v124 = a1;
  v5 = type metadata accessor for CancellableStitcher();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = sub_1DD63F598();
  v119 = *(v128 - 8);
  v9 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v100 - v12;
  v13 = sub_1DD63F4E8();
  v14 = *(v13 - 8);
  v122 = v13;
  v123 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v118 = (&v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v100 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v120 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v116 = &v100 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v100 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v100 - v29;
  sub_1DD3C4EB4();
  v31 = type metadata accessor for StitchableInteraction();
  if (!__swift_getEnumTagSinglePayload(v30, 1, v31))
  {
    sub_1DD5D624C(v124);
  }

  v131[0] = sub_1DD4D3D50(v32);
  sub_1DD3E0144(v131);
  if (!v3)
  {
    v33 = v131[0];
    v125 = sub_1DD3CC020(v131[0]);
    if (v125)
    {
      sub_1DD408BFC(0);
      v121 = v33 & 0xC000000000000001;
      v114 = v31;
      if ((v33 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1E12B2C10](0, v33);
      }

      else
      {
        v34 = *(v33 + 32);
      }

      v36 = v35;
      sub_1DD63F4F8();
      v37 = 0;
      v108 = v36;
      v38 = v122;
      v39 = v123;
      v40 = *(v123 + 88);
      v107 = v123 + 88;
      v106 = v40;
      if (v40(v19, v122) == *MEMORY[0x1E69CF8C8])
      {
        v41 = *(v39 + 96);
        v41(v19, v38);
        v42 = *v19;
        sub_1DD3C4EB4();
        sub_1DD3E2740(v33, v27);
        v44 = v43;
        sub_1DD390754(v27, &qword_1ECCDC1B0, &unk_1DD6454F0);
        v101 = v41;
        v102 = v39 + 96;
        v104 = v44;
        if (qword_1EE165FB0 != -1)
        {
LABEL_47:
          swift_once();
        }

        v113 = v33;
        v105 = v37;
        v56 = sub_1DD63F9F8();
        __swift_project_value_buffer(v56, qword_1EE16F068);
        v57 = v104;

        v58 = sub_1DD63F9D8();
        v59 = sub_1DD640368();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v131[0] = v61;
          *v60 = 136315138;
          v62 = MEMORY[0x1E12B2430](v57, &type metadata for StitchedContactUserPrompt);
          v64 = v42;
          v65 = sub_1DD39565C(v62, v63, v131);

          *(v60 + 4) = v65;
          v42 = v64;
          _os_log_impl(&dword_1DD38D000, v58, v59, "user prompts: %s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v61);
          MEMORY[0x1E12B3DA0](v61, -1, -1);
          MEMORY[0x1E12B3DA0](v60, -1, -1);
        }

        v66 = v127;
        v37 = v128;
        v33 = v126;
        v67 = 0;
        v110 = *MEMORY[0x1E69CF930];
        v109 = (v119 + 104);
        v111 = (v119 + 8);
        v112 = v42;
        while (1)
        {
          if (v125 == v67)
          {
            v74 = a3;

            v128 = 0;
            v75 = v105;
            goto LABEL_43;
          }

          if (v121)
          {
            v68 = MEMORY[0x1E12B2C10](v67, v113);
          }

          else
          {
            if (v67 >= *(v113 + 16))
            {
              goto LABEL_46;
            }

            v69 = *(v113 + 8 * v67 + 32);
          }

          if (__OFADD__(v67, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v119 = v68;
          sub_1DD63F528();
          (*v109)(v66, v110, v37);
          sub_1DD3B2D1C();
          sub_1DD640098();
          sub_1DD640098();
          if (v131[0] == v129 && v131[1] == v130)
          {
            break;
          }

          v115 = sub_1DD640CD8();
          v71 = a3;
          v72 = v30;
          v73 = *v111;
          (*v111)(v66, v37);
          v73(v33, v37);
          v30 = v72;
          a3 = v71;
          v42 = v112;

          if (v115)
          {
            goto LABEL_38;
          }

          ++v67;
          v66 = v127;
          v37 = v128;
          v33 = v126;
        }

        v76 = v66;
        v77 = *v111;
        (*v111)(v76, v37);
        v77(v33, v37);

LABEL_38:

        v78 = v118;
        v79 = v105;
        sub_1DD63F4F8();
        v75 = v79;
        v80 = v123;
        if (v79)
        {

          goto LABEL_18;
        }

        v81 = v122;
        v74 = a3;
        if (v106(v78, v122) == *MEMORY[0x1E69CF8D0])
        {
          v101(v78, v81);
          v128 = *v78;
        }

        else
        {
          (*(v80 + 8))(v78, v81);
          v128 = 0;
        }

LABEL_43:
        v103 = v30;
        v82 = v104;

        v127 = sub_1DD3DEAA8(v124, v82, v30);
        v105 = v75;

        v83 = v132[1];
        v126 = *v132;
        v132 = v83;

        v84 = sub_1DD63F548();
        v124 = v85;
        v125 = v84;
        v86 = v116;
        sub_1DD3C4EB4();
        sub_1DD3C4EB4();
        v87 = type metadata accessor for StitchedContactData(0);
        v88 = v87[7];
        v89 = v74;
        __swift_storeEnumTagSinglePayload(v74 + v88, 1, 1, v114);
        v90 = v74 + v87[8];
        v90[6] = 0;
        *(v90 + 2) = 0;
        *v90 = 2;
        v92 = v87[9];
        v91 = v87[10];
        *(v74 + v91) = 0;
        v93 = v87[11];
        *(v89 + v93) = 0;
        v94 = v87[12];
        *(v89 + v94) = 0;
        v95 = v87[13];
        *(v89 + v95) = 0;
        v96 = v132;
        *v89 = v126;
        v89[1] = v96;
        v97 = v124;
        v89[2] = v125;
        v89[3] = v97;
        v89[4] = v127;
        sub_1DD3E7A30(v86, v89 + v88);
        *(v89 + v92) = v128;

        *(v89 + v91) = sub_1DD5DAE88() & 1;
        *(v89 + v93) = sub_1DD5DB06C();
        *(v89 + v94) = sub_1DD5DB1C4() & 1;
        *(v89 + v95) = sub_1DD5DB410() & 1;
        v98 = v120;
        v99 = sub_1DD5DB828(v120);

        sub_1DD390754(v98, &qword_1ECCDC1B0, &unk_1DD6454F0);
        sub_1DD390754(v86, &qword_1ECCDC1B0, &unk_1DD6454F0);
        v90[6] = BYTE6(v99);
        *(v90 + 2) = WORD2(v99);
        *v90 = v99;
        v54 = v103;
        return sub_1DD390754(v54, &qword_1ECCDC1B0, &unk_1DD6454F0);
      }

      (*(v39 + 8))(v19, v38);
    }

    else
    {
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v45 = sub_1DD63F9F8();
    __swift_project_value_buffer(v45, qword_1EE16F068);
    sub_1DD3E7B48();
    v46 = sub_1DD63F9D8();
    v47 = sub_1DD640368();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v131[0] = v49;
      *v48 = 136315138;
      v50 = *v8;
      v51 = v8[1];

      sub_1DD3E7BA0(v8, type metadata accessor for CancellableStitcher);
      v52 = sub_1DD39565C(v50, v51, v131);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_1DD38D000, v46, v47, "cannot stitch task with no start event. taskId=%s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1E12B3DA0](v49, -1, -1);
      MEMORY[0x1E12B3DA0](v48, -1, -1);
    }

    else
    {

      sub_1DD3E7BA0(v8, type metadata accessor for CancellableStitcher);
    }

    sub_1DD3E6100();
    swift_allocError();
    *v53 = 2;
    swift_willThrow();
LABEL_18:
    v54 = v30;
    return sub_1DD390754(v54, &qword_1ECCDC1B0, &unk_1DD6454F0);
  }

  __break(1u);
  return result;
}

void sub_1DD3E2740(uint64_t a1, uint64_t (**a2)(uint64_t *, uint64_t))
{
  v346 = a2;
  v337 = sub_1DD63F5F8();
  v343 = *(v337 - 8);
  v5 = v343[8];
  MEMORY[0x1EEE9AC00](v337 - 8);
  OUTLINED_FUNCTION_2_1();
  v330 = v6;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_0();
  v329 = v8;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_3();
  v336 = v10;
  OUTLINED_FUNCTION_6_2();
  v11 = type metadata accessor for CancellableStitcher();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v335 = v15;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_0();
  v324 = v17;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16_3();
  v327 = v19;
  OUTLINED_FUNCTION_6_2();
  v320 = sub_1DD63F5E8();
  v20 = OUTLINED_FUNCTION_0(v320);
  *&v342 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  v319 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v27 = OUTLINED_FUNCTION_3(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v345 = &v318 - v30;
  OUTLINED_FUNCTION_6_2();
  v344 = type metadata accessor for StitchableInteraction();
  v31 = OUTLINED_FUNCTION_7(v344);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2();
  v340 = v35 - v34;
  OUTLINED_FUNCTION_6_2();
  v36 = sub_1DD63F4E8();
  v37 = OUTLINED_FUNCTION_0(v36);
  v359 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  v348 = v41;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_18_0();
  v341 = v43;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v318 - v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_18_0();
  v350 = v48;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_0();
  v352 = v50;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v318 - v52;
  v54 = MEMORY[0x1E69E7CC0];
  v366 = MEMORY[0x1E69E7CC0];
  v357 = a1;
  v55 = sub_1DD3CC020(a1);
  v358 = v36;
  v355 = v46;
  if (!v55)
  {
LABEL_15:
    v68 = v350;
    v356 = *(v54 + 16);
    v357 = v54;
    v69 = v352;
    if (v356)
    {
      v70 = 0;
      OUTLINED_FUNCTION_46();
      v3 = (v54 + v71);
      v354 = (v72 + 11);
      LODWORD(v353) = *MEMORY[0x1E69CF8D0];
      v351 = (v72 + 1);
      v347 = (v72 + 12);
      v349 = MEMORY[0x1E69E7CC0];
      while (v70 < *(v54 + 16))
      {
        v73 = v359;
        (*(v359 + 16))(v69, v3 + *(v359 + 72) * v70, v36);
        v74 = (*(v73 + 88))(v69, v36);
        if (v74 == v353)
        {
          (*v347)(v69, v36);
          v75 = *v69;
          sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
          sub_1DD39638C(0, &qword_1EE166228, 0x1E696E880);
          v76 = sub_1DD63F568();
          v78 = v77;
          v2 = v360;
          v79 = sub_1DD6403D8();
          v360 = v2;
          if (v2)
          {

            sub_1DD3AD790(v76, v78);

            goto LABEL_32;
          }

          v80 = v79;
          sub_1DD3AD790(v76, v78);
          v68 = v350;
          if (v80)
          {

            v349 = sub_1DD5D6624(v80);
          }

          v54 = v357;
          v36 = v358;
          v46 = v355;
          v69 = v352;
        }

        else
        {
          (*v351)(v69, v36);
        }

        if (v356 == ++v70)
        {
          goto LABEL_27;
        }
      }

LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v349 = MEMORY[0x1E69E7CC0];
LABEL_27:
    if (*(v349 + 16))
    {
      v81 = v348;
    }

    else
    {
      v82 = v345;
      sub_1DD3C4EB4();
      v83 = v344;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v82, 1, v344);
      v81 = v348;
      if (EnumTagSinglePayload == 1)
      {
        sub_1DD390754(v82, &qword_1ECCDC1B0, &unk_1DD6454F0);
      }

      else
      {

        v85 = v340;
        sub_1DD3E63AC();
        v349 = *(v85 + *(v83 + 36));

        sub_1DD3E7BA0(v85, type metadata accessor for StitchableInteraction);
      }
    }

    if (!v356)
    {
      v343 = MEMORY[0x1E69E7CC0];
LABEL_142:

      OUTLINED_FUNCTION_24_2();
      return;
    }

    v86 = 0;
    v347 = (v54 + ((*(v359 + 80) + 32) & ~*(v359 + 80)));
    v87 = (v359 + 16);
    v354 = (v359 + 8);
    v346 = (v359 + 88);
    v344 = v359 + 96;
    LODWORD(v345) = *MEMORY[0x1E69CF8E8];
    v318 = v342 + 8;
    v334 = v343 + 11;
    v331 = v343 + 1;
    v338 = *MEMORY[0x1E69CF8F0];
    v326 = v343 + 12;
    v321 = v343 + 2;
    v343 = MEMORY[0x1E69E7CC0];
    v333 = *MEMORY[0x1E69CF8D8];
    v325 = *MEMORY[0x1E69CF8E0];
    v332 = *MEMORY[0x1E69CF960];
    *&v56 = 136315138;
    v342 = v56;
    *&v56 = 136315394;
    v328 = v56;
    v351 = (v359 + 16);
    while (1)
    {
      if (v86 >= *(v54 + 16))
      {
        goto LABEL_148;
      }

      v88 = *(v359 + 72);
      v352 = v86;
      v89 = *(v359 + 16);
      v89(v68, v347 + v88 * v86, v36);
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v90 = sub_1DD63F9F8();
      __swift_project_value_buffer(v90, qword_1EE16F068);
      v91 = OUTLINED_FUNCTION_40_2();
      v89(v91, v68, v36);
      v92 = sub_1DD63F9D8();
      v93 = sub_1DD640368();
      if (OUTLINED_FUNCTION_9_0(v93))
      {
        OUTLINED_FUNCTION_18_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_14_10();
        v94 = swift_slowAlloc();
        *v87 = OUTLINED_FUNCTION_37_4(v94).n128_u32[0];
        v89(v341, v46, v36);
        v95 = sub_1DD63FE38();
        v97 = v96;
        v353 = *v354;
        (v353)(v355, v36);
        v98 = sub_1DD39565C(v95, v97, &v361);
        v46 = v355;

        *(v87 + 4) = v98;
        v81 = v348;
        OUTLINED_FUNCTION_33_2();
        _os_log_impl(v99, v100, v101, v102, v103, v104);
        __swift_destroy_boxed_opaque_existential_1(v94);
        v68 = v350;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0](v105);
        v87 = v351;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0](v106);
      }

      else
      {

        v353 = *v354;
        (v353)(v46, v36);
      }

      v89(v81, v68, v36);
      v107 = (*v346)(v81, v36);
      v54 = v357;
      if (v107 != v345)
      {
        break;
      }

      v108 = OUTLINED_FUNCTION_10_13();
      v109(v108);
      v110 = sub_1DD3E54A8(*v81, v349);
      if (v113 != 0xFF)
      {
        v114 = v113;
        v115 = v110;
        v116 = OUTLINED_FUNCTION_54_1(v110, v111, v112, &v368);
        v360 = v2;
        if (v2)
        {
          (v353)(v68, v358);

          v312 = v115;
          v313 = v339;
          v314 = v340;
          v315 = v114;
LABEL_145:
          sub_1DD3E6340(v312, v313, v314, v315);
          OUTLINED_FUNCTION_24_2();

          return;
        }

        v118 = v116;
        v119 = v117;

        v120 = sub_1DD63F9D8();
        v3 = sub_1DD640368();

        if (os_log_type_enabled(v120, v3))
        {
          OUTLINED_FUNCTION_18_1();
          v121 = swift_slowAlloc();
          OUTLINED_FUNCTION_17_0();
          v122 = swift_slowAlloc();
          *v121 = OUTLINED_FUNCTION_37_4(v122).n128_u32[0];
          v123 = sub_1DD39565C(v118, v119, &v361);

          *(v121 + 4) = v123;
          _os_log_impl(&dword_1DD38D000, v120, v3, "%s", v121, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v122);
          v46 = v355;
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          v68 = v350;
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

        else
        {
        }

        OUTLINED_FUNCTION_5_13();
        swift_beginAccess();
        sub_1DD3BDF7C();
        v153 = v366[2];
        sub_1DD3BE140(v153);
        v154 = v366;
        v366[2] = v153 + 1;
        v155 = &v154[4 * v153];
        v156 = v339;
        v155[4] = v115;
        v155[5] = v156;
        v155[6] = v340;
        *(v155 + 56) = v114;
        v343 = v154;
        v366 = v154;
        swift_endAccess();

        v36 = v358;
        (v353)(v68, v358);
        v81 = v348;
        goto LABEL_75;
      }

      v151 = OUTLINED_FUNCTION_11_10();
      v152(v151);

      v81 = v348;
LABEL_76:
      v87 = v351;
      v193 = v352;
LABEL_114:
      v86 = v193 + 1;
      if (v356 == v86)
      {
        goto LABEL_142;
      }
    }

    OUTLINED_FUNCTION_74(&v367 + 4);
    if (!v134)
    {
      OUTLINED_FUNCTION_74(&v363 + 4);
      if (v134)
      {
        v135 = OUTLINED_FUNCTION_10_13();
        v136(v135);
        v137 = *v81;
        v138 = sub_1DD3E5358(*v81, v349);
        if (v141 == 0xFF)
        {
          v207 = OUTLINED_FUNCTION_11_10();
          v208(v207);
        }

        else
        {
          v142 = v141;
          v339 = v137;
          v322 = v138;
          v143 = OUTLINED_FUNCTION_54_1(v138, v139, v140, &v352);
          v360 = v2;
          if (v2)
          {
            v316 = OUTLINED_FUNCTION_11_10();
            v317(v316);

            v312 = v322;
            v313 = v323;
            v314 = v340;
            v315 = v142;
            goto LABEL_145;
          }

          v145 = v143;
          v146 = v144;

          v147 = sub_1DD63F9D8();
          v148 = sub_1DD640368();

          if (os_log_type_enabled(v147, v148))
          {
            OUTLINED_FUNCTION_18_1();
            v149 = swift_slowAlloc();
            OUTLINED_FUNCTION_17_0();
            v3 = swift_slowAlloc();
            *v149 = OUTLINED_FUNCTION_37_4(v3).n128_u32[0];
            v150 = sub_1DD39565C(v145, v146, &v361);

            *(v149 + 4) = v150;
            _os_log_impl(&dword_1DD38D000, v147, v148, "%s", v149, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v3);
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
            v81 = v348;
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
          }

          else
          {
          }

          OUTLINED_FUNCTION_5_13();
          swift_beginAccess();
          OUTLINED_FUNCTION_24_2();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68 = v350;
          v87 = v351;
          if (isUniquelyReferenced_nonNull_native)
          {
            v212 = v343;
          }

          else
          {
            v301 = v343[2];
            OUTLINED_FUNCTION_12();
            sub_1DD3BF440();
            v212 = isUniquelyReferenced_nonNull_native;
          }

          v214 = *(v212 + 16);
          v213 = *(v212 + 24);
          v215 = v340;
          if (v214 >= v213 >> 1)
          {
            OUTLINED_FUNCTION_15_9(v213);
            sub_1DD3BF440();
            v215 = v340;
            v212 = isUniquelyReferenced_nonNull_native;
          }

          *(v212 + 16) = v214 + 1;
          v216 = v212 + 32 * v214;
          v217 = v323;
          *(v216 + 32) = v322;
          *(v216 + 40) = v217;
          *(v216 + 48) = v215;
          *(v216 + 56) = v142;
          OUTLINED_FUNCTION_27_4(isUniquelyReferenced_nonNull_native, v210, v211, v212);

          v218 = OUTLINED_FUNCTION_11_10();
          v219(v218);
LABEL_112:
          v54 = v357;
        }

LABEL_113:
        v193 = v352;
        goto LABEL_114;
      }

      OUTLINED_FUNCTION_74(&v354 + 4);
      if (!v178)
      {
        v3 = v353;
        (v353)(v68, v36);
        (v3)(v81, v36);
        goto LABEL_113;
      }

      v179 = OUTLINED_FUNCTION_10_13();
      v180(v179);
      v181 = *v81;
      v182 = v343[2];
      if (v182)
      {
        v183 = &v343[4 * v182];
        if (!*(v183 + 24))
        {
          v226 = *v183;
          v227 = v183[1];
          v228 = v183[2];
          OUTLINED_FUNCTION_5_13();
          v3 = v229;
          swift_beginAccess();
          v230 = v3[2];
          OUTLINED_FUNCTION_48_1();
          sub_1DD3E7AA0(v231, v232, v233, 0);
          if (v230)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v303 = OUTLINED_FUNCTION_24_2();
              sub_1DD586A00(v303);
              OUTLINED_FUNCTION_47_1(v304);
            }

            v3 = v343;
            v234 = v343[2];
            if (!v234)
            {
              goto LABEL_151;
            }

            v235 = v234 - 1;
            v236 = &v343[4 * v235];
            v237 = v236[4];
            v238 = v236[5];
            v239 = v236[6];
            v343[2] = v235;
            sub_1DD3E6354(v237, v238, v239, *(v236 + 56));
            v366 = v3;
          }

          swift_endAccess();
          v240 = v319;
          sub_1DD63F5B8();
          v241 = sub_1DD5DAC50(v226, v227, v240);
          v343 = v242;
          v244 = v243;
          LODWORD(v340) = v245;
          OUTLINED_FUNCTION_48_1();
          sub_1DD3E6354(v246, v247, v248, 0);
          OUTLINED_FUNCTION_16_0(&v347);
          v249(v240, v320);
          OUTLINED_FUNCTION_5_13();
          swift_beginAccess();
          v250 = v3;
          v251 = swift_isUniquelyReferenced_nonNull_native();
          if ((v251 & 1) == 0)
          {
            v302 = v3[2];
            OUTLINED_FUNCTION_12();
            sub_1DD3BF440();
            v250 = v251;
          }

          v81 = v348;
          v68 = v350;
          v254 = v250;
          v256 = *(v250 + 16);
          v255 = *(v250 + 24);
          if (v256 >= v255 >> 1)
          {
            OUTLINED_FUNCTION_15_9(v255);
            sub_1DD3BF440();
            v254 = v251;
          }

          *(v254 + 16) = v256 + 1;
          v257 = v254 + 32 * v256;
          v258 = v343;
          *(v257 + 32) = v241;
          *(v257 + 40) = v258;
          *(v257 + 48) = v244;
          *(v257 + 56) = v340;
          OUTLINED_FUNCTION_27_4(v251, v252, v253, v254);

          v259 = OUTLINED_FUNCTION_11_10();
          v260(v259);
          goto LABEL_74;
        }
      }

      OUTLINED_FUNCTION_1_18();
      v184 = v327;
      sub_1DD3E7B48();
      v185 = sub_1DD63F9D8();
      v186 = sub_1DD640378();
      if (!OUTLINED_FUNCTION_29_2(v186))
      {

LABEL_111:
        OUTLINED_FUNCTION_0_26();
        sub_1DD3E7BA0(v184, v264);
        v68 = v350;
        v265 = OUTLINED_FUNCTION_11_10();
        v266(v265);
        v46 = v355;
        goto LABEL_112;
      }

      OUTLINED_FUNCTION_43_2();
      v187 = OUTLINED_FUNCTION_42_1();
      OUTLINED_FUNCTION_31_4(v187);
      OUTLINED_FUNCTION_0_26();
      sub_1DD3E7BA0(v184, v188);
      v189 = sub_1DD39565C(v93, v3, &v365);

      OUTLINED_FUNCTION_30_5();
      if (v190)
      {
        OUTLINED_FUNCTION_25_0(v190);
      }

      else
      {
        OUTLINED_FUNCTION_49_1();
      }

      v361 = v189;
      v362 = v3;
      v363 = v184;
      v364[0] = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1D0, &qword_1DD645520);
      v261 = sub_1DD63FE38();
      v3 = sub_1DD39565C(v261, v262, &v365);

      *(v87 + 14) = v3;
      _os_log_impl(&dword_1DD38D000, v185, v68, "confirmation result with invalid offer. taskId=%s offer=%s", v87, 0x16u);
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      v263 = OUTLINED_FUNCTION_8_6();
      MEMORY[0x1E12B3DA0](v263);

      goto LABEL_123;
    }

    v124 = OUTLINED_FUNCTION_10_13();
    v125(v124);
    v126 = *v81;
    v127 = v336;
    sub_1DD63F5D8();
    OUTLINED_FUNCTION_16_0(v364);
    v128 = v337;
    v129(v127, v337);
    OUTLINED_FUNCTION_74(&v363);
    if (!v134)
    {
      OUTLINED_FUNCTION_16_0(&v362);
      v157(v127, v128);
LABEL_62:
      OUTLINED_FUNCTION_1_18();
      v158 = v335;
      sub_1DD3E7B48();

      v159 = sub_1DD63F9D8();
      v160 = sub_1DD640378();

      if (os_log_type_enabled(v159, v160))
      {
        v161 = OUTLINED_FUNCTION_43_2();
        v3 = swift_slowAlloc();
        v361 = v3;
        *v161 = v328;
        v162 = *v158;
        v163 = v158[1];

        OUTLINED_FUNCTION_0_26();
        sub_1DD3E7BA0(v158, v164);
        v165 = OUTLINED_FUNCTION_15_0();
        v168 = sub_1DD39565C(v165, v166, v167);

        *(v161 + 4) = v168;
        *(v161 + 12) = 2080;
        v169 = v329;
        sub_1DD63F5D8();
        OUTLINED_FUNCTION_16_0(&v350);
        v170 = v337;
        v171(v330, v169, v337);
        sub_1DD63FE38();
        OUTLINED_FUNCTION_16_0(&v362);
        v172 = v169;
        v36 = v358;
        v173(v172, v170);
        v174 = OUTLINED_FUNCTION_15_0();
        v177 = sub_1DD39565C(v174, v175, v176);

        *(v161 + 14) = v177;
        _os_log_impl(&dword_1DD38D000, v159, v160, "disambiguation result is invalid. taskId=%s result=%s", v161, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v68 = v350;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {

        OUTLINED_FUNCTION_0_26();
        sub_1DD3E7BA0(v158, v191);
      }

      v192 = v68;
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_16_0(&v355);
    v130(v127, v128);
    v132 = *v127;
    v131 = v127[1];
    sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
    sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
    v2 = v360;
    v133 = sub_1DD6403D8();
    if (v2)
    {

      sub_1DD3AD790(v132, v131);
      v360 = 0;
      goto LABEL_62;
    }

    v194 = v133;
    v360 = 0;
    if (!v133)
    {
      sub_1DD3AD790(v132, v131);
      goto LABEL_62;
    }

    v339 = v132;
    v340 = v131;
    v195 = v343[2];
    v184 = v324;
    v87 = v351;
    if (v195)
    {
      v196 = &v343[4 * v195];
      v68 = *v196;
      v197 = *(v196 + 24);
      if (v197 == 2)
      {

        OUTLINED_FUNCTION_5_13();
        swift_beginAccess();
        if (*(OUTLINED_FUNCTION_24_2() + 16))
        {
          v267 = swift_isUniquelyReferenced_nonNull_native();
          v46 = v355;
          if ((v267 & 1) == 0)
          {
            v310 = OUTLINED_FUNCTION_24_2();
            sub_1DD586A00(v310);
            OUTLINED_FUNCTION_47_1(v311);
          }

          v268 = v343;
          v269 = v343[2];
          if (!v269)
          {
            goto LABEL_152;
          }

          v270 = v194;
          v271 = v269 - 1;
          v272 = &v343[4 * v271];
          v273 = v272[4];
          v274 = v272[5];
          v275 = v272[6];
          v343[2] = v271;
          v276 = v268;
          sub_1DD3E6354(v273, v274, v275, *(v272 + 56));
          v366 = v276;
          v194 = v270;
        }

        else
        {
          v46 = v355;
        }

        swift_endAccess();
        v291 = [v194 personHandle];
        if (v291)
        {
          v322 = sub_1DD3E79C0(v291);
          v293 = v292;
        }

        else
        {
          v322 = 0;
          v293 = 0;
        }

        OUTLINED_FUNCTION_5_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_24_2();
        v284 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v68;
        v3 = v194;
        if ((v284 & 1) == 0)
        {
          v306 = v343[2];
          OUTLINED_FUNCTION_12();
          sub_1DD3BF440();
          v284 = OUTLINED_FUNCTION_47_1(v307);
        }

        v287 = v343;
        v296 = v343[2];
        v295 = v343[3];
        if (v296 >= v295 >> 1)
        {
          OUTLINED_FUNCTION_15_9(v295);
          sub_1DD3BF440();
          v287 = v284;
        }

        *(v287 + 16) = v296 + 1;
        v297 = v287 + 32 * v296;
        v298 = v322;
        *(v297 + 32) = v294;
        *(v297 + 40) = v298;
        *(v297 + 48) = v293;
        *(v297 + 56) = 2;
        goto LABEL_139;
      }

      if (v197 == 1)
      {

        OUTLINED_FUNCTION_5_13();
        swift_beginAccess();
        v198 = OUTLINED_FUNCTION_24_2();
        v199 = *(v198 + 16);
        v46 = v355;
        v323 = v68;
        if (v199)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v308 = OUTLINED_FUNCTION_24_2();
            sub_1DD586A00(v308);
            OUTLINED_FUNCTION_47_1(v309);
          }

          v200 = v343;
          v201 = v343[2];
          if (!v201)
          {
            goto LABEL_153;
          }

          v202 = v201 - 1;
          v203 = &v343[4 * v202];
          v204 = v203[4];
          v205 = v203[5];
          v206 = v203[6];
          v343[2] = v202;
          sub_1DD3E6354(v204, v205, v206, *(v203 + 56));
          v366 = v200;
        }

        else
        {
          v200 = v198;
        }

        swift_endAccess();
        v3 = v194;
        v280 = sub_1DD640568();
        v282 = v281;
        OUTLINED_FUNCTION_5_13();
        swift_beginAccess();
        v283 = v200;
        v284 = swift_isUniquelyReferenced_nonNull_native();
        if ((v284 & 1) == 0)
        {
          v305 = v200[2];
          OUTLINED_FUNCTION_12();
          sub_1DD3BF440();
          v283 = v284;
        }

        v287 = v283;
        v288 = *(v283 + 16);
        v289 = *(v287 + 24);
        if (v288 >= v289 >> 1)
        {
          OUTLINED_FUNCTION_23_4(v289);
          sub_1DD3BF440();
          v287 = v284;
        }

        *(v287 + 16) = v288 + 1;
        v290 = v287 + 32 * v288;
        *(v290 + 32) = v323;
        *(v290 + 40) = v280;
        *(v290 + 48) = v282;
        *(v290 + 56) = 1;
LABEL_139:
        OUTLINED_FUNCTION_27_4(v284, v285, v286, v287);
        OUTLINED_FUNCTION_26_6();

        v68 = v350;
        v299 = OUTLINED_FUNCTION_11_10();
        v300(v299);
        goto LABEL_75;
      }
    }

    OUTLINED_FUNCTION_1_18();
    sub_1DD3E7B48();
    v220 = sub_1DD63F9D8();
    v221 = sub_1DD640378();
    if (!OUTLINED_FUNCTION_29_2(v221))
    {
      OUTLINED_FUNCTION_26_6();

      goto LABEL_111;
    }

    v323 = v194;
    OUTLINED_FUNCTION_43_2();
    v222 = OUTLINED_FUNCTION_42_1();
    OUTLINED_FUNCTION_31_4(v222);
    OUTLINED_FUNCTION_0_26();
    sub_1DD3E7BA0(v184, v223);
    v224 = sub_1DD39565C(v194, v3, &v365);

    OUTLINED_FUNCTION_30_5();
    if (v225)
    {
      OUTLINED_FUNCTION_25_0(v225);
    }

    else
    {
      OUTLINED_FUNCTION_49_1();
    }

    v361 = v224;
    v362 = v3;
    v363 = v184;
    v364[0] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1D0, &qword_1DD645520);
    v277 = sub_1DD63FE38();
    v3 = sub_1DD39565C(v277, v278, &v365);

    *(v87 + 14) = v3;
    _os_log_impl(&dword_1DD38D000, v220, v68, "disambiguation result with invalid offer. taskId=%s offer=%s", v87, 0x16u);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    v279 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x1E12B3DA0](v279);
    OUTLINED_FUNCTION_26_6();

LABEL_123:
    v68 = v350;
    v192 = v350;
    v36 = v358;
LABEL_73:
    (v353)(v192, v36);
    v81 = v348;
LABEL_74:
    v46 = v355;
LABEL_75:
    v54 = v357;
    goto LABEL_76;
  }

  v57 = v55;
  v361 = v54;
  sub_1DD42B6D0(0, v55 & ~(v55 >> 63), 0);
  if (v57 < 0)
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    return;
  }

  v58 = 0;
  v54 = v361;
  v59 = v357 & 0xC000000000000001;
  v60 = v357 & 0xFFFFFFFFFFFFFF8;
  v356 = (v359 + 32);
  while (1)
  {
    v3 = (v58 + 1);
    if (__OFADD__(v58, 1))
    {
      __break(1u);
      goto LABEL_147;
    }

    if (v59)
    {
      v61 = v54;
      MEMORY[0x1E12B2C10](v58, v357);
    }

    else
    {
      if (v58 >= *(v60 + 16))
      {
        goto LABEL_149;
      }

      v61 = v54;
      v62 = *(v357 + 8 * v58 + 32);
    }

    v2 = v360;
    sub_1DD63F4F8();
    v360 = v2;
    if (v2)
    {
      break;
    }

    v54 = v61;
    v361 = v61;
    v64 = *(v61 + 16);
    v63 = *(v61 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_1DD42B6D0(v63 > 1, v64 + 1, 1);
      v54 = v361;
    }

    *(v54 + 16) = v64 + 1;
    OUTLINED_FUNCTION_46();
    v67 = v54 + v65 + *(v66 + 72) * v64;
    v36 = v358;
    (*(v66 + 32))(v67, v53, v358);
    ++v58;
    if (v3 == v57)
    {
      v46 = v355;
      goto LABEL_15;
    }
  }

LABEL_32:
}

uint64_t sub_1DD3E4118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v93 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v89 = &v87 - v9;
  v92 = type metadata accessor for StitchableInteraction();
  v10 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1C8, qword_1DD64ADD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v87 - v16;
  v18 = type metadata accessor for ContactResolverRunTimeData(0);
  v19 = *(v18 + 56);
  sub_1DD3C4EB4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v20);
  v97 = a1;
  v94 = v18;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD390754(v17, &qword_1ECCDC1C8, qword_1DD64ADD0);
    v22 = a1 + *(v18 + 40);
    v23 = sub_1DD556FCC();
  }

  else
  {
    v23 = sub_1DD556FCC();
    sub_1DD390754(v17, &qword_1ECCDBEE0, &unk_1DD645510);
  }

  v24 = *(a2 + 16);
  v25 = (a2 + 56);
  v26 = v24;
  if (v24)
  {
    while (1)
    {
      v27 = *(v25 - 3);
      v28 = *(v25 - 2);
      v29 = *(v25 - 1);
      v30 = *v25;
      v95[0] = v27;
      v95[1] = v28;
      v95[2] = v29;
      v96 = v30;
      sub_1DD3E7AA0(v27, v28, v29, v30);
      if (sub_1DD3E4A04(v95, v23))
      {
        break;
      }

      sub_1DD3E6354(v27, v28, v29, v30);
      v25 += 32;
      if (!--v26)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = -1;
  }

  if (*(v97 + *(v94 + 48)) == 1 && !v24)
  {
    v31 = *(v97 + 296);
    if (*(v31 + 16) == 1)
    {
      sub_1DD3E6340(v27, v28, v29, v30);
      if (!*(v31 + 16))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v94 = v4;
      v32 = *(type metadata accessor for ContactMatchRuntimeData(0) - 8);
      v33 = (v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)));
      v27 = *v33;
      v28 = v33[1];
      v34 = *(v33 + *(type metadata accessor for Contact() + 80));
      v35 = *(v34 + 16);
      if (v35)
      {
        v95[0] = MEMORY[0x1E69E7CC0];

        sub_1DD42A2D4();
        v36 = v95[0];
        v87 = v34;
        v37 = (v34 + 96);
        do
        {
          v38 = *(v37 - 1);
          v39 = *v37;
          v95[0] = v36;
          v40 = *(v36 + 16);
          v41 = *(v36 + 24);

          if (v40 >= v41 >> 1)
          {
            sub_1DD42A2D4();
            v36 = v95[0];
          }

          *(v36 + 16) = v40 + 1;
          v42 = v36 + 16 * v40;
          *(v42 + 32) = v38;
          *(v42 + 40) = v39;
          v37 += 10;
          --v35;
        }

        while (v35);
      }

      else
      {

        v36 = MEMORY[0x1E69E7CC0];
      }

      v43 = v89;
      sub_1DD3C4EB4();
      v44 = v92;
      v45 = __swift_getEnumTagSinglePayload(v43, 1, v92);
      v46 = v90;
      if (v45 == 1)
      {

        sub_1DD390754(v43, &qword_1ECCDC1B0, &unk_1DD6454F0);
        if (qword_1EE165FB0 == -1)
        {
LABEL_22:
          v47 = sub_1DD63F9F8();
          __swift_project_value_buffer(v47, qword_1EE16F068);
          v48 = sub_1DD63F9D8();
          v49 = sub_1DD640368();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_1DD38D000, v48, v49, "setting an abandoned implicit confirmation", v50, 2u);
            MEMORY[0x1E12B3DA0](v50, -1, -1);
          }

          v30 = 0;
          v29 = 3;
          goto LABEL_43;
        }

LABEL_46:
        swift_once();
        goto LABEL_22;
      }

      v88 = v36;
      v51 = v91;
      sub_1DD3E63AC();
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v52 = sub_1DD63F9F8();
      __swift_project_value_buffer(v52, qword_1EE16F068);
      sub_1DD3E7B48();

      v53 = v88;

      v54 = sub_1DD63F9D8();
      v55 = sub_1DD640368();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v95[0] = v89;
        *v56 = 136315650;
        v57 = MEMORY[0x1E12B2430](*(v46 + *(v44 + 36)), &type metadata for StitchablePerson);
        v58 = v46;
        v60 = v59;
        sub_1DD3E7BA0(v58, type metadata accessor for StitchableInteraction);
        v61 = sub_1DD39565C(v57, v60, v95);

        *(v56 + 4) = v61;
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_1DD39565C(v27, v28, v95);
        *(v56 + 22) = 2080;
        v51 = v91;
        v62 = MEMORY[0x1E12B2430](v53, MEMORY[0x1E69E6158]);
        v64 = sub_1DD39565C(v62, v63, v95);

        *(v56 + 24) = v64;
        v44 = v92;
        _os_log_impl(&dword_1DD38D000, v54, v55, "setting an implicit confirmation:\ninteraction people: %s\ncontact id: %s\ncontact handles: %s", v56, 0x20u);
        v65 = v89;
        swift_arrayDestroy();
        MEMORY[0x1E12B3DA0](v65, -1, -1);
        MEMORY[0x1E12B3DA0](v56, -1, -1);
      }

      else
      {

        sub_1DD3E7BA0(v46, type metadata accessor for StitchableInteraction);
      }

      v66 = 0;
      v67 = *(v51 + *(v44 + 36));
      v68 = *(v67 + 16);
      v69 = v67 - 32;
      v70 = MEMORY[0x1E69E7CC0];
LABEL_31:
      v71 = v69 + 80 * v66;
      while (v68 != v66)
      {
        if (v66 >= *(v67 + 16))
        {
          __break(1u);
          goto LABEL_45;
        }

        v72 = (v71 + 80);
        ++v66;
        v73 = *(v71 + 88);
        v71 += 80;
        if (v73)
        {
          v92 = v69;
          v74 = *v72;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = *(v70 + 16);
            sub_1DD3BE2A4();
            v70 = v79;
          }

          v75 = *(v70 + 16);
          v76 = (v75 + 1);
          if (v75 >= *(v70 + 24) >> 1)
          {
            v90 = (v75 + 1);
            sub_1DD3BE2A4();
            v76 = v90;
            v70 = v80;
          }

          *(v70 + 16) = v76;
          v77 = v70 + 16 * v75;
          *(v77 + 32) = v74;
          *(v77 + 40) = v73;
          v51 = v91;
          v69 = v92;
          goto LABEL_31;
        }
      }

      v81 = sub_1DD41859C(v70);
      v82 = sub_1DD3E72FC(v88, v81);

      sub_1DD3E7BA0(v51, type metadata accessor for StitchableInteraction);
      v83 = v82[2];

      v30 = 0;
      if (v83)
      {
        v29 = 0;
      }

      else
      {
        v29 = 3;
      }
    }
  }

LABEL_43:
  v84 = v93;
  sub_1DD3E7B48();
  result = type metadata accessor for StitchedContactResolverRecommendation(0);
  v86 = v84 + *(result + 20);
  *v86 = v27;
  *(v86 + 8) = v28;
  *(v86 + 16) = v29;
  *(v86 + 24) = v30;
  return result;
}

uint64_t sub_1DD3E4A04(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Contact();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v70 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v70 - v15);
  v72 = *a1;
  v17 = *(a2 + 16);
  if (*(a1 + 24))
  {
    if (*(a1 + 24) == 1)
    {
      v18 = MEMORY[0x1E69E7CC0];
      if (v17)
      {
        v71 = v2;
        v74 = MEMORY[0x1E69E7CC0];
        sub_1DD42A2D4();
        v18 = v74;
        v19 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v20 = *(v6 + 72);
        do
        {
          sub_1DD3E7B48();
          v21 = *v12;
          v22 = v12[1];

          sub_1DD3E7BA0(v12, type metadata accessor for Contact);
          v74 = v18;
          v23 = *(v18 + 16);
          if (v23 >= *(v18 + 24) >> 1)
          {
            sub_1DD42A2D4();
            v18 = v74;
          }

          *(v18 + 16) = v23 + 1;
          v24 = v18 + 16 * v23;
          *(v24 + 32) = v21;
          *(v24 + 40) = v22;
          v19 += v20;
          --v17;
        }

        while (v17);
      }

      v17 = sub_1DD41859C(v18);
      v42 = v72;

      if (sub_1DD3E512C(v43, v17))
      {
        v44 = v42;
LABEL_48:
        v27 = sub_1DD3E5274(v44, v17);

        return v27 & 1;
      }

      goto LABEL_49;
    }

    v71 = v2;
    if (v17)
    {
      v73 = *(v14 + 80);
      v32 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v33 = *(v6 + 72);
      v34 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1DD3E7B48();
        v35 = *&v9[v73];

        sub_1DD3E7BA0(v9, type metadata accessor for Contact);
        v36 = *(v35 + 16);
        v37 = v34[2];
        if (__OFADD__(v37, v36))
        {
          break;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v37 + v36 > v34[3] >> 1)
        {
          sub_1DD3BEE1C();
          v34 = v38;
        }

        if (*(v35 + 16))
        {
          if ((v34[3] >> 1) - v34[2] < v36)
          {
            goto LABEL_54;
          }

          swift_arrayInitWithCopy();

          if (v36)
          {
            v39 = v34[2];
            v40 = __OFADD__(v39, v36);
            v41 = v39 + v36;
            if (v40)
            {
              goto LABEL_55;
            }

            v34[2] = v41;
          }
        }

        else
        {

          if (v36)
          {
            goto LABEL_53;
          }
        }

        v32 += v33;
        if (!--v17)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
LABEL_34:
      v45 = v34[2];
      if (v45)
      {
        v74 = MEMORY[0x1E69E7CC0];
        sub_1DD42A2D4();
        v46 = v74;
        v47 = v34 + 12;
        do
        {
          v48 = *(v47 - 1);
          v49 = *v47;
          v74 = v46;
          v51 = *(v46 + 16);
          v50 = *(v46 + 24);

          if (v51 >= v50 >> 1)
          {
            sub_1DD42A2D4();
            v46 = v74;
          }

          *(v46 + 16) = v51 + 1;
          v52 = v46 + 16 * v51;
          *(v52 + 32) = v48;
          *(v52 + 40) = v49;
          v47 += 10;
          --v45;
        }

        while (v45);
      }

      else
      {

        v46 = MEMORY[0x1E69E7CC0];
      }

      v17 = sub_1DD41859C(v46);
      if (qword_1EE165FB0 == -1)
      {
LABEL_42:
        v53 = sub_1DD63F9F8();
        __swift_project_value_buffer(v53, qword_1EE16F068);

        v54 = sub_1DD63F9D8();
        v55 = sub_1DD640368();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v74 = v57;
          *v56 = 136315138;
          v58 = sub_1DD640278();
          v60 = sub_1DD39565C(v58, v59, &v74);

          *(v56 + 4) = v60;
          _os_log_impl(&dword_1DD38D000, v54, v55, "recommendation handle values: %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v57);
          MEMORY[0x1E12B3DA0](v57, -1, -1);
          MEMORY[0x1E12B3DA0](v56, -1, -1);
        }

        v61 = v72;

        v62 = sub_1DD63F9D8();
        v63 = sub_1DD640368();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v74 = v65;
          *v64 = 136315138;
          v66 = MEMORY[0x1E12B2430](v61, MEMORY[0x1E69E6158]);
          v68 = sub_1DD39565C(v66, v67, &v74);

          *(v64 + 4) = v68;
          _os_log_impl(&dword_1DD38D000, v62, v63, "prompt handle values: %s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v65);
          MEMORY[0x1E12B3DA0](v65, -1, -1);
          MEMORY[0x1E12B3DA0](v64, -1, -1);
        }

        if (*(v17 + 16))
        {
          v44 = v61;
          goto LABEL_48;
        }

LABEL_49:

        v27 = 0;
        return v27 & 1;
      }
    }

    swift_once();
    goto LABEL_42;
  }

  v25 = 0;
  v26 = *(a1 + 8);
  do
  {
    v27 = v17 != v25;
    if (v17 == v25)
    {
      break;
    }

    v28 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v29 = *(v6 + 72);
    sub_1DD3E7B48();
    if (*v16 == v72 && v26 == v16[1])
    {
      sub_1DD3E7BA0(v16, type metadata accessor for Contact);
      v27 = 1;
      return v27 & 1;
    }

    ++v25;
    v31 = sub_1DD640CD8();
    sub_1DD3E7BA0(v16, type metadata accessor for Contact);
  }

  while ((v31 & 1) == 0);
  return v27 & 1;
}

uint64_t sub_1DD3E512C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v17 = result + 32;
  v6 = a2 + 56;
LABEL_2:
  if (v4 == v5)
  {
LABEL_14:

    return v4 == v5;
  }

  if (v4 < *(v3 + 16))
  {
    if (*(a2 + 16))
    {
      v7 = (v17 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(a2 + 40);
      sub_1DD640E28();

      sub_1DD63FD28();
      v11 = sub_1DD640E78();
      v12 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v13 = v11 & v12;
        if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {
          break;
        }

        v14 = (*(a2 + 48) + 16 * v13);
        if (*v14 != v9 || v14[1] != v8)
        {
          v16 = sub_1DD640CD8();
          v11 = v13 + 1;
          if ((v16 & 1) == 0)
          {
            continue;
          }
        }

        ++v4;
        goto LABEL_2;
      }
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3E5274(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_1DD558C68(a2);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](result);
      v3 = sub_1DD450388();

      return v3;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      return 1;
    }

    return sub_1DD3E7628(a1, a2);
  }

  return result;
}

uint64_t sub_1DD3E5358(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD63F5A8();
  v5 = v4;
  sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
  v8 = sub_1DD6403D8();
  sub_1DD3AD790(v3, v5);
  if (!v8)
  {
    return 0;
  }

  v9 = sub_1DD640568();
  v11 = v10;
  if (v10)
  {
    v6 = v9;
    v12 = (a2 + 40);
    v13 = *(a2 + 16) + 1;
    do
    {
      if (!--v13)
      {
        break;
      }

      if (*(v12 - 1) == v6 && v11 == *v12)
      {
        break;
      }

      v12 += 10;
    }

    while ((sub_1DD640CD8() & 1) == 0);
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_1DD3E54A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD63F5C8();
  v4 = v3;
  sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  v127 = sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
  v5 = sub_1DD6403F8();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1DD3AD790(v2, v4);
  v7 = sub_1DD3CC020(v6);
  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  v10 = MEMORY[0x1E69E7CC0];
  while (v7 != v8)
  {
    if (v9)
    {
      v11 = MEMORY[0x1E12B2C10](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v11 = *(v6 + 8 * v8 + 32);
    }

    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      OUTLINED_FUNCTION_0_2();
      swift_once();
LABEL_39:
      v46 = sub_1DD63F9F8();
      __swift_project_value_buffer(v46, qword_1EE16F068);

      v47 = sub_1DD63F9D8();
      v48 = sub_1DD640378();

      if (os_log_type_enabled(v47, v48))
      {
        OUTLINED_FUNCTION_18_1();
        v49 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v50 = swift_slowAlloc();
        v131[0] = v50;
        *v49 = 136315138;
        v51 = MEMORY[0x1E12B2430](v6, v127);
        v53 = v52;

        v54 = sub_1DD39565C(v51, v53, v131);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_1DD38D000, v47, v48, "cannot make disambiguation prompt with <2 contactIds and <2 handleIds: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        v55 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v55);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
      }

      return 0;
    }

    v13 = v11;
    v14 = sub_1DD640568();
    v16 = v15;

    ++v8;
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v10 + 16);
        OUTLINED_FUNCTION_12();
        sub_1DD3BE2A4();
        v10 = v21;
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_23_4(v17);
        sub_1DD3BE2A4();
        v10 = v22;
      }

      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v8 = v12;
    }
  }

  v129 = sub_1DD3C6AF4(v10);

  v23 = 0;
  v126 = *MEMORY[0x1E69964B0];
  v130 = MEMORY[0x1E69E7CC0];
  while (v7 != v23)
  {
    if (v9)
    {
      v24 = MEMORY[0x1E12B2C10](v23, v6);
    }

    else
    {
      if (v23 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v24 = *(v6 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_84;
    }

    v27 = [v24 personHandle];
    if (v27 && (v28 = sub_1DD3E79C0(v27), v29))
    {
      v131[0] = v28;
      v131[1] = v29;
      sub_1DD3B7F10();

      if (sub_1DD6406D8())
      {
        v30 = sub_1DD63FDA8();
        v31 = (*(v126 + 16))(v126, v30);

        v32 = sub_1DD63FDD8();
        v125 = v33;
        swift_bridgeObjectRelease_n();

        v34 = v125;
      }

      else
      {
        sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);

        v35 = sub_1DD40B8E0();
        v32 = sub_1DD415480(v35);
        v34 = v36;
        swift_bridgeObjectRelease_n();

        if (!v34)
        {
          v32 = 0;
          v34 = 0xE000000000000000;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v130 + 16);
        OUTLINED_FUNCTION_12();
        sub_1DD3BE2A4();
        v130 = v41;
      }

      v38 = *(v130 + 16);
      v37 = *(v130 + 24);
      if (v38 >= v37 >> 1)
      {
        OUTLINED_FUNCTION_15_9(v37);
        sub_1DD3BE2A4();
        v130 = v42;
      }

      *(v130 + 16) = v38 + 1;
      v39 = v130 + 16 * v38;
      *(v39 + 32) = v32;
      *(v39 + 40) = v34;
      v23 = v26;
    }

    else
    {

      ++v23;
    }
  }

  v43 = sub_1DD3C6AF4(v130);

  v44 = v129;
  if (*(v129 + 16) >= 2uLL)
  {

    v56 = *(a2 + 16);
    v57 = MEMORY[0x1E69E7CC0];
    if (v56)
    {
      v131[0] = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4();
      v57 = v131[0];
      v58 = (a2 + 40);
      do
      {
        v60 = *(v58 - 1);
        v59 = *v58;
        v131[0] = v57;
        v61 = *(v57 + 16);
        v62 = *(v57 + 24);

        if (v61 >= v62 >> 1)
        {
          sub_1DD42A2D4();
          v57 = v131[0];
        }

        *(v57 + 16) = v61 + 1;
        v63 = v57 + 16 * v61;
        *(v63 + 32) = v60;
        *(v63 + 40) = v59;
        v58 += 10;
        --v56;
      }

      while (v56);
      v44 = v129;
    }

    v64 = sub_1DD41859C(v57);
    v65 = sub_1DD3E72FC(v44, v64);
    sub_1DD558C68(v65);
    OUTLINED_FUNCTION_55_1();
    if (v57 <= 1)
    {
    }

    else
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v66 = sub_1DD63F9F8();
      __swift_project_value_buffer(v66, qword_1EE16F068);

      v67 = sub_1DD63F9D8();
      v68 = sub_1DD640378();

      if (os_log_type_enabled(v67, v68))
      {
        OUTLINED_FUNCTION_18_1();
        v69 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v70 = swift_slowAlloc();
        v131[0] = v70;
        *v69 = 136315138;
        v71 = MEMORY[0x1E12B2430](v6, v127);
        v73 = v72;

        v74 = sub_1DD39565C(v71, v73, v131);

        *(v69 + 4) = v74;
        _os_log_impl(&dword_1DD38D000, v67, v68, "DisambiguationOffer people: %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v44 = v129;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
      }

      v98 = sub_1DD63F9D8();
      v99 = sub_1DD640378();

      if (os_log_type_enabled(v98, v99))
      {
        OUTLINED_FUNCTION_18_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_14_10();
        v100 = swift_slowAlloc();
        v131[0] = v100;
        *v68 = 136315138;
        v101 = MEMORY[0x1E12B2430](a2, &type metadata for StitchablePerson);
        v103 = sub_1DD39565C(v101, v102, v131);

        *(v68 + 4) = v103;
        OUTLINED_FUNCTION_33_2();
        _os_log_impl(v104, v105, v106, v107, v108, v109);
        __swift_destroy_boxed_opaque_existential_1(v100);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v110 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v110);
      }
    }

    return v44;
  }

  else
  {
    v45 = *(v43 + 16);

    if (v45 <= 1)
    {

      if (qword_1EE165FB0 != -1)
      {
        goto LABEL_88;
      }

      goto LABEL_39;
    }

    v75 = 0;
    v76 = *(a2 + 16);
    v77 = MEMORY[0x1E69E7CC0];
LABEL_53:
    v78 = (a2 - 32 + 80 * v75);
    while (v76 != v75)
    {
      if (v75 >= v76)
      {
        goto LABEL_86;
      }

      v79 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_87;
      }

      v23 = v78[11];
      v78 += 10;
      ++v75;
      if (v23)
      {
        v80 = *v78;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = *(v77 + 16);
          OUTLINED_FUNCTION_12();
          sub_1DD3BE2A4();
          v77 = v85;
        }

        v82 = *(v77 + 16);
        v81 = *(v77 + 24);
        if (v82 >= v81 >> 1)
        {
          OUTLINED_FUNCTION_23_4(v81);
          sub_1DD3BE2A4();
          v77 = v86;
        }

        *(v77 + 16) = v82 + 1;
        v83 = v77 + 16 * v82;
        *(v83 + 32) = v80;
        *(v83 + 40) = v23;
        v75 = v79;
        goto LABEL_53;
      }
    }

    v87 = sub_1DD41859C(v77);
    v88 = sub_1DD3E72FC(v43, v87);
    sub_1DD558C68(v88);
    OUTLINED_FUNCTION_55_1();
    if (v23 <= 1)
    {
    }

    else
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v89 = sub_1DD63F9F8();
      __swift_project_value_buffer(v89, qword_1EE16F068);

      v90 = sub_1DD63F9D8();
      v91 = sub_1DD640378();

      if (os_log_type_enabled(v90, v91))
      {
        OUTLINED_FUNCTION_18_1();
        v92 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v93 = swift_slowAlloc();
        v131[0] = v93;
        *v92 = 136315138;
        v94 = MEMORY[0x1E12B2430](v6, v127);
        v96 = v95;

        v97 = sub_1DD39565C(v94, v96, v131);

        *(v92 + 4) = v97;
        _os_log_impl(&dword_1DD38D000, v90, v91, "DisambiguationOffer people: %s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v93);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
      }

      v111 = sub_1DD63F9D8();
      v112 = sub_1DD640378();

      if (os_log_type_enabled(v111, v112))
      {
        OUTLINED_FUNCTION_18_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_14_10();
        v113 = swift_slowAlloc();
        v131[0] = v113;
        *v91 = 136315138;
        v114 = MEMORY[0x1E12B2430](a2, &type metadata for StitchablePerson);
        v116 = sub_1DD39565C(v114, v115, v131);

        *(v91 + 4) = v116;
        OUTLINED_FUNCTION_33_2();
        _os_log_impl(v117, v118, v119, v120, v121, v122);
        __swift_destroy_boxed_opaque_existential_1(v113);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v123 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v123);
      }
    }
  }

  return v43;
}

uint64_t sub_1DD3E5FD4()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DD3E6020(char a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000011;
}

uint64_t sub_1DD3E6098@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD3E5FD4();
  *a2 = result;
  return result;
}

unint64_t sub_1DD3E60C8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD3E6020(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD3E6100()
{
  result = qword_1ECCDC1C0;
  if (!qword_1ECCDC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC1C0);
  }

  return result;
}

uint64_t sub_1DD3E6154()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1DD5D60F4();
}

unint64_t sub_1DD3E6184()
{
  result = qword_1EE165920[0];
  if (!qword_1EE165920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE165920);
  }

  return result;
}

void *sub_1DD3E6208(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_1DD3E6284()
{
  OUTLINED_FUNCTION_18_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_15_0();
  v7(v6);
  return v0;
}

uint64_t sub_1DD3E62DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolverRunTimeData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3E6340(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_1DD3E6354(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1DD3E6354(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 >= 2)
  {
    if (a4)
    {
      return result;
    }
  }

  else
  {
  }
}

uint64_t sub_1DD3E63AC()
{
  OUTLINED_FUNCTION_18_7();
  v2 = v1(0);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return v0;
}

void sub_1DD3E64B4(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1DD640CA8();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1DD4D32E0(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1DD3E6780(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1DD3E6594(0, v3, 1, a1);
  }
}

void sub_1DD3E6594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = sub_1DD63D078();
  v8 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v28 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v34 = *a4;
    v15 = v34 + 8 * a3 - 8;
    v16 = a1 - a3;
    while (2)
    {
      v30 = v15;
      v31 = a3;
      v17 = *(v34 + 8 * a3);
      v29 = v16;
      v18 = v15;
      do
      {
        v19 = *v18;

        sub_1DD63F508();
        v20 = v32;
        sub_1DD63F508();
        v21 = sub_1DD63CFC8();
        v22 = *v14;
        v23 = v20;
        v24 = v33;
        (*v14)(v23, v33);
        v22(v13, v24);

        if ((v21 & 1) == 0)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return;
        }

        v25 = *v18;
        *v18 = v18[1];
        v18[1] = v25;
        --v18;
      }

      while (!__CFADD__(v16++, 1));
      a3 = v31 + 1;
      v15 = v30 + 8;
      v16 = v29 - 1;
      if (v31 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD3E6780(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v113 = a1;
  v125 = sub_1DD63D078();
  v6 = *(*(v125 - 1) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v123 = &v111 - v10;
  v118 = a3;
  v11 = a3[1];
  if (v11 < 1)
  {
    i = MEMORY[0x1E69E7CC0];
LABEL_91:
    v125 = *v113;
    if (!v125)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v103 = v120;
LABEL_94:
      v104 = i;
      v105 = (i + 16);
      for (i = *(i + 16); ; *v105 = i)
      {
        if (i < 2)
        {

          v120 = v103;
          return;
        }

        if (!*v118)
        {
          goto LABEL_132;
        }

        v106 = (v104 + 16 * i);
        v107 = *v106;
        v108 = &v105[2 * i];
        v109 = *(v108 + 1);
        sub_1DD3E6F84((*v118 + 8 * *v106), (*v118 + 8 * *v108), (*v118 + 8 * v109), v125);
        if (v103)
        {
          break;
        }

        if (v109 < v107)
        {
          goto LABEL_120;
        }

        if (i - 2 >= *v105)
        {
          goto LABEL_121;
        }

        *v106 = v107;
        v106[1] = v109;
        v110 = *v105 - i;
        if (*v105 < i)
        {
          goto LABEL_122;
        }

        i = *v105 - 1;
        sub_1DD4EC4E4(v108 + 16, v110, v108);
      }

      v120 = v103;
LABEL_104:

      return;
    }

LABEL_129:
    v103 = v120;
    i = sub_1DD4EC2B8(i);
    goto LABEL_94;
  }

  v111 = a4;
  v12 = 0;
  v122 = (v9 + 8);
  i = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v12++;
    v114 = v14;
    if (v12 < v11)
    {
      v112 = i;
      v15 = *(*v118 + 8 * v12);
      v16 = (*v118 + 8 * v14);
      v115 = 8 * v14;
      v18 = *v16;
      v17 = v16 + 2;
      i = v18;

      v19 = v123;
      sub_1DD63F508();
      v20 = v124;
      sub_1DD63F508();
      LODWORD(v117) = sub_1DD63CFC8();
      v21 = *v122;
      v22 = v20;
      v23 = v125;
      (*v122)(v22, v125);
      v116 = v21;
      (v21)(v19, v23);

      v24 = (v114 + 2);
      while (1)
      {
        v25 = v24;
        v26 = v12 + 1;
        if (v26 >= v11)
        {
          break;
        }

        v27 = *(v17 - 1);
        i = *v17;
        v121 = v24;

        v28 = v26;
        v29 = v11;
        v30 = v123;
        sub_1DD63F508();
        v31 = v124;
        sub_1DD63F508();
        LOBYTE(v119) = sub_1DD63CFC8() & 1;
        LODWORD(v119) = v119;
        v32 = v31;
        v33 = v125;
        v34 = v116;
        (v116)(v32, v125);
        v35 = v30;
        v11 = v29;
        v12 = v28;
        v34(v35, v33);

        v25 = v121;
        ++v17;
        v24 = (v121 + 1);
        if ((v117 & 1) != v119)
        {
          goto LABEL_9;
        }
      }

      v12 = v11;
LABEL_9:
      if (v117)
      {
        v14 = v114;
        if (v12 < v114)
        {
          goto LABEL_126;
        }

        if (v114 >= v12)
        {
          i = v112;
        }

        else
        {
          if (v11 >= v25)
          {
            v36 = v25;
          }

          else
          {
            v36 = v11;
          }

          v37 = 8 * v36 - 8;
          v38 = v12;
          v39 = v114;
          i = v112;
          v40 = v115;
          do
          {
            if (v39 != --v38)
            {
              v41 = *v118;
              if (!*v118)
              {
                goto LABEL_133;
              }

              v42 = *(v41 + v40);
              *(v41 + v40) = *(v41 + v37);
              *(v41 + v37) = v42;
            }

            ++v39;
            v37 -= 8;
            v40 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        i = v112;
        v14 = v114;
      }
    }

    v43 = v118[1];
    if (v12 < v43)
    {
      if (__OFSUB__(v12, v14))
      {
        goto LABEL_125;
      }

      if (v12 - v14 < v111)
      {
        break;
      }
    }

LABEL_39:
    if (v12 < v14)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = *(i + 16);
      sub_1DD3BEB7C();
      i = v101;
    }

    v57 = *(i + 16);
    v58 = v57 + 1;
    if (v57 >= *(i + 24) >> 1)
    {
      sub_1DD3BEB7C();
      i = v102;
    }

    *(i + 16) = v58;
    v59 = i + 32;
    v60 = (i + 32 + 16 * v57);
    *v60 = v114;
    v60[1] = v12;
    v121 = *v113;
    if (!v121)
    {
      goto LABEL_134;
    }

    if (v57)
    {
      while (1)
      {
        v61 = v58 - 1;
        v62 = (v59 + 16 * (v58 - 1));
        v63 = (i + 16 * v58);
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v64 = *(i + 32);
          v65 = *(i + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_59:
          if (v67)
          {
            goto LABEL_111;
          }

          v79 = *v63;
          v78 = v63[1];
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_114;
          }

          v83 = v62[1];
          v84 = v83 - *v62;
          if (__OFSUB__(v83, *v62))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v81, v84))
          {
            goto LABEL_119;
          }

          if (v81 + v84 >= v66)
          {
            if (v66 < v84)
            {
              v61 = v58 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v58 < 2)
        {
          goto LABEL_113;
        }

        v86 = *v63;
        v85 = v63[1];
        v74 = __OFSUB__(v85, v86);
        v81 = v85 - v86;
        v82 = v74;
LABEL_74:
        if (v82)
        {
          goto LABEL_116;
        }

        v88 = *v62;
        v87 = v62[1];
        v74 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v74)
        {
          goto LABEL_118;
        }

        if (v89 < v81)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v61 - 1 >= v58)
        {
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
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v93 = (v59 + 16 * (v61 - 1));
        v94 = *v93;
        v95 = v59 + 16 * v61;
        v96 = *(v95 + 8);
        v97 = v120;
        sub_1DD3E6F84((*v118 + 8 * *v93), (*v118 + 8 * *v95), (*v118 + 8 * v96), v121);
        v120 = v97;
        if (v97)
        {
          goto LABEL_104;
        }

        if (v96 < v94)
        {
          goto LABEL_106;
        }

        v98 = i;
        i = *(i + 16);
        if (v61 > i)
        {
          goto LABEL_107;
        }

        *v93 = v94;
        v93[1] = v96;
        if (v61 >= i)
        {
          goto LABEL_108;
        }

        v58 = i - 1;
        sub_1DD4EC4E4((v95 + 16), i - 1 - v61, (v59 + 16 * v61));
        *(v98 + 16) = i - 1;
        v99 = i > 2;
        i = v98;
        if (!v99)
        {
          goto LABEL_88;
        }
      }

      v68 = v59 + 16 * v58;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_109;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_110;
      }

      v75 = v63[1];
      v76 = v75 - *v63;
      if (__OFSUB__(v75, *v63))
      {
        goto LABEL_112;
      }

      v74 = __OFADD__(v66, v76);
      v77 = v66 + v76;
      if (v74)
      {
        goto LABEL_115;
      }

      if (v77 >= v71)
      {
        v91 = *v62;
        v90 = v62[1];
        v74 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v74)
        {
          goto LABEL_123;
        }

        if (v66 < v92)
        {
          v61 = v58 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v11 = v118[1];
    if (v12 >= v11)
    {
      goto LABEL_91;
    }
  }

  v44 = v14 + v111;
  if (__OFADD__(v14, v111))
  {
    goto LABEL_127;
  }

  if (v44 >= v43)
  {
    v44 = v118[1];
  }

  if (v44 < v14)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v12 == v44)
  {
    goto LABEL_39;
  }

  v112 = i;
  v121 = *v118;
  v45 = &v121[v12 - 1];
  v46 = (v14 - v12);
  v115 = v44;
LABEL_32:
  v119 = v12;
  v47 = v121[v12];
  v116 = v46;
  v117 = v45;
  while (1)
  {
    v48 = *v45;

    v49 = v123;
    sub_1DD63F508();
    v50 = v124;
    sub_1DD63F508();
    v51 = sub_1DD63CFC8();
    v52 = *v122;
    v53 = v50;
    v54 = v125;
    (*v122)(v53, v125);
    (v52)(v49, v54);

    if ((v51 & 1) == 0)
    {
LABEL_37:
      v12 = v119 + 1;
      v45 = v117 + 1;
      v46 = v116 - 1;
      if (v119 + 1 == v115)
      {
        v12 = v115;
        i = v112;
        v14 = v114;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v121)
    {
      break;
    }

    v55 = *v45;
    *v45 = v45[1];
    v45[1] = v55;
    --v45;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

uint64_t sub_1DD3E6F84(void *a1, void *a2, void *a3, void *a4)
{
  v50 = sub_1DD63D078();
  v8 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v42 - v11;
  v12 = a2 - a1;
  v47 = (v13 + 8);
  v14 = a3 - a2;
  if (v12 < v14)
  {
    sub_1DD3C2520(a1, a2 - a1, a4);
    v15 = &a4[v12];
    v45 = v15;
    for (i = a3; ; a3 = i)
    {
      if (a4 >= v15 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v51 = a1;
      v17 = *a2;
      v18 = *a4;

      v19 = v48;
      sub_1DD63F508();
      v20 = v49;
      sub_1DD63F508();
      v21 = sub_1DD63CFC8();
      v22 = *v47;
      v23 = v20;
      v24 = v50;
      (*v47)(v23, v50);
      v22(v19, v24);

      if ((v21 & 1) == 0)
      {
        break;
      }

      v25 = a2;
      v26 = v51;
      v27 = v51 == a2++;
      if (!v27)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 = v26 + 1;
      v15 = v45;
    }

    v25 = a4;
    v26 = v51;
    v27 = v51 == a4++;
    if (v27)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v26 = *v25;
    goto LABEL_13;
  }

  sub_1DD3C2520(a2, a3 - a2, a4);
  v15 = &a4[v14];
  v51 = a1;
  v43 = a4;
LABEL_15:
  v28 = a2 - 1;
  --a3;
  v44 = a2 - 1;
  v45 = a2;
  while (v15 > a4 && a2 > a1)
  {
    v30 = v15;
    v31 = *--v15;
    v32 = *v28;

    v33 = v48;
    sub_1DD63F508();
    v34 = v49;
    sub_1DD63F508();
    LODWORD(i) = sub_1DD63CFC8();
    v35 = *v47;
    v36 = v34;
    v37 = v50;
    (*v47)(v36, v50);
    v35(v33, v37);

    if (i)
    {
      v38 = v44;
      a4 = v43;
      a1 = v51;
      v15 = v30;
      a2 = v44;
      if (a3 + 1 != v45)
      {
        *a3 = *v44;
        a2 = v38;
      }

      goto LABEL_15;
    }

    if (v30 != a3 + 1)
    {
      *a3 = *v15;
    }

    --a3;
    a4 = v43;
    v28 = v44;
    a2 = v45;
    a1 = v51;
  }

LABEL_28:
  v39 = v15 - a4;
  if (a2 != a4 || a2 >= &a4[v39])
  {
    memmove(a2, a4, 8 * v39);
  }

  return 1;
}

void *sub_1DD3E72FC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v13[6] = *MEMORY[0x1E69E9840];
  v13[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v13[3] = v13;
  v13[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = (&v13[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v5, v6);
    sub_1DD3E749C(v6, v5, v3, a2);
    v8 = v7;
  }

  else
  {
    v11 = swift_slowAlloc();
    v8 = sub_1DD3E6208(v11, v5, sub_1DD3E7B2C);

    MEMORY[0x1E12B3DA0](v11, -1, -1);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DD3E749C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v25 = *(a3 + 16);
  v24 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v22 = v5;
LABEL_3:
    if (v6 == v25)
    {
      goto LABEL_19;
    }

    if (v6 >= v25)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v24 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v26 = v6 + 1;
    v11 = *(a4 + 40);
    sub_1DD640E28();

    sub_1DD63FD28();
    v12 = sub_1DD640E78();
    v13 = ~(-1 << *(a4 + 32));
    do
    {
      v14 = v12 & v13;
      v15 = (v12 & v13) >> 6;
      v16 = 1 << (v12 & v13);
      if ((v16 & *(v7 + 8 * v15)) == 0)
      {

        v6 = v26;
        goto LABEL_3;
      }

      v17 = (*(a4 + 48) + 16 * v14);
      if (*v17 == v10 && v17[1] == v9)
      {
        break;
      }

      v19 = sub_1DD640CD8();
      v12 = v14 + 1;
    }

    while ((v19 & 1) == 0);

    v20 = a1[v15];
    a1[v15] = v20 | v16;
    v6 = v26;
    if ((v20 & v16) != 0)
    {
      goto LABEL_3;
    }

    v5 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_19:

      sub_1DD515BB8(a1, a2, v22, a4);
      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1DD3E7628(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x1E69E9840];
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1DD57634C(0, v5, v6);
    v7 = sub_1DD3E77B4(v6, v5, v3, a2);
  }

  else
  {
    v10 = swift_slowAlloc();
    v7 = sub_1DD3E7940(v10, v5, sub_1DD3E7C2C);
    MEMORY[0x1E12B3DA0](v10, -1, -1);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

uint64_t sub_1DD3E77B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v25 = *(a3 + 16);
  v23 = result;
  v24 = a3 + 32;
  v6 = a4 + 56;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v7 = v5;
      if (v5 == v25)
      {
        return v7 != v25;
      }

      if (v5 >= v25)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v26 = v5 + 1;
      v8 = (v24 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      v11 = *(a4 + 40);
      sub_1DD640E28();

      sub_1DD63FD28();
      v12 = sub_1DD640E78();
      v13 = ~(-1 << *(a4 + 32));
      do
      {
        v14 = v12 & v13;
        v15 = (v12 & v13) >> 6;
        v16 = 1 << (v12 & v13);
        if ((v16 & *(v6 + 8 * v15)) == 0)
        {

          v5 = v26;
          goto LABEL_2;
        }

        v17 = (*(a4 + 48) + 16 * v14);
        if (*v17 == v10 && v17[1] == v9)
        {
          break;
        }

        v19 = sub_1DD640CD8();
        v12 = v14 + 1;
      }

      while ((v19 & 1) == 0);

      v20 = *(v23 + 8 * v15);
      *(v23 + 8 * v15) = v20 | v16;
      v5 = v26;
      if ((v20 & v16) != 0)
      {
        continue;
      }

      break;
    }

    v21 = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
      ++v22;
      if (v21 != *(a4 + 16))
      {
        continue;
      }

      return v7 != v25;
    }

    break;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1DD3E7940(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

uint64_t sub_1DD3E79C0(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD3E7A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3E7AA0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 >= 2)
  {
    if (a4)
    {
      return result;
    }
  }

  else
  {
  }
}

void sub_1DD3E7AFC(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1DD3E749C(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_1DD3E7B48()
{
  OUTLINED_FUNCTION_18_7();
  v2 = v1(0);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return v0;
}

uint64_t sub_1DD3E7BA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD3E7BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1DD3E77B4(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_1DD3E7C50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD3E7C90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MakeStitchedDataError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_1DD3E7DFC()
{
  sub_1DD3E7EF0();
  if (v0 <= 0x3F)
  {
    sub_1DD63F4C8();
    if (v1 <= 0x3F)
    {
      sub_1DD3E7F48(319, &unk_1EE1632B8);
      if (v2 <= 0x3F)
      {
        sub_1DD3E7F48(319, qword_1EE1615A0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD3E7EF0()
{
  if (!qword_1EE1602F0)
  {
    type metadata accessor for RunTimeDataRecord();
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1602F0);
    }
  }
}

uint64_t sub_1DD3E7F48(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1DD3E7F9C(uint64_t a1)
{
  result = sub_1DD3E6100();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD3E7FC8()
{
  result = qword_1ECCDC1D8;
  if (!qword_1ECCDC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC1D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_10()
{
  result = v0;
  v4 = *(v1 - 192);
  v3 = *(v1 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_6()
{
  v2 = *(v0 - 312);
  v3 = *(v0 - 304);

  return sub_1DD3AD790(v2, v3);
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 272) = a4;
  *(v4 - 72) = a4;

  return swift_endAccess();
}

BOOL OUTLINED_FUNCTION_29_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_30_5()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
  v3 = *(*(v2 - 272) + 16);
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1)
{
  *(v3 - 96) = a1;
  *v1 = *(v3 - 416);
  v5 = *v2;
  v6 = v2[1];
}

uint64_t OUTLINED_FUNCTION_38_2(float a1)
{
  *v1 = a1;
  v4 = *v2;
  v5 = v2[1];
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_43_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_54_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 - 256) = a2;
  *(v4 - 304) = a3;
  v6 = *(v4 - 136);

  return sub_1DD63255C(a1, a2);
}

uint64_t OUTLINED_FUNCTION_55_1()
{
  v2 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_56_2()
{
  v3 = *(v0 + 56);

  return sub_1DD3E7BA0(v3, v1);
}

uint64_t sub_1DD3E8268(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC70C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1DD3EA188(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1DD3E831C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DD63F9C8();
  v20 = *(v4 - 8);
  v21 = v4;
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DD643F90;
  v10 = sub_1DD6408F8();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1DD392BD8();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_1DD63F998();

  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1DD42B404(0, v13, 0);
    v14 = v24;
    v15 = (a1 + 32);
    do
    {
      v22 = *v15;

      sub_1DD3E85D8(&v22, v2, &v23);

      v16 = v23;
      v24 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1DD42B404((v17 > 1), v18 + 1, 1);
        v14 = v24;
      }

      *(v14 + 16) = v18 + 1;
      *(v14 + 8 * v18 + 32) = v16;
      ++v15;
      --v13;
    }

    while (v13);
  }

  sub_1DD6404C8();
  sub_1DD63F9A8();
  (*(v20 + 8))(v7, v21);
  return v14;
}

void sub_1DD3E85D8(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v151 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v160 = *(v7 - 8);
  v8 = *(v160 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v156 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v188 = &v150 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v150 - v13;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v169 = *(v173 - 8);
  v15 = *(v169 + 64);
  v16 = MEMORY[0x1EEE9AC00](v173);
  v153 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v162 = &v150 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v171 = &v150 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v161 = &v150 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v155 = &v150 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v177 = &v150 - v26;
  v27 = *a1;
  if (qword_1EE165FB0 != -1)
  {
LABEL_81:
    swift_once();
  }

  v28 = sub_1DD63F9F8();
  v29 = __swift_project_value_buffer(v28, qword_1EE16F068);

  v157 = v29;
  v30 = sub_1DD63F9D8();
  v31 = sub_1DD640368();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = *(v27 + 16);

    _os_log_impl(&dword_1DD38D000, v30, v31, "Running contact de-duplication (starting with %ld candidates...", v32, 0xCu);
    MEMORY[0x1E12B3DA0](v32, -1, -1);
  }

  else
  {
  }

  v201[0] = v27;

  sub_1DD3E8268(v201);
  if (v4)
  {

    __break(1u);
  }

  else
  {
    v150 = 0;
    v200[10] = MEMORY[0x1E69E7CD0];
    v200[11] = MEMORY[0x1E69E7CD0];
    v27 = v161;
    v167 = *(v201[0] + 16);
    if (v167)
    {
      v166 = (a2 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_tokenizer);
      v168 = v201[0];
      v33 = a2 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_config;
      a2 = 0;
      v34 = *(v33 + *(type metadata accessor for ContactResolverConfig(0) + 60));
      v35 = v168;
      v159 = (*(v169 + 80) + 32) & ~*(v169 + 80);
      v165 = v168 + v159;
      v164 = v177 + 272;
      v154 = v171 + 272;
      HIDWORD(v163) = v34;
      LODWORD(v158) = v34 & 1;
      HIDWORD(v158) = v34 >> 8;
      v179 = *MEMORY[0x1E69964B0];
      v178 = v179 + 16;
      v4 = &qword_1ECCDBBE8;
      *&v36 = 136315138;
      v152 = v36;
      v175 = MEMORY[0x1E69E7CC0];
      v187 = v14;
      while (1)
      {
        if (a2 >= *(v35 + 16))
        {
          __break(1u);
          goto LABEL_81;
        }

        v37 = *(v169 + 72);
        v176 = a2;
        v174 = v37;
        v38 = v177;
        sub_1DD3EB3D0(v165 + v37 * a2, v177, &qword_1ECCDBBE8, &qword_1DD644470);
        v39 = v166[3];
        v40 = v166[4];
        v41 = __swift_project_boxed_opaque_existential_1(v166, v39);
        v42 = sub_1DD417B78(v41, 0, v38, v39, v40);
        v172 = type metadata accessor for Contact();
        v43 = (v38 + *(v172 + 88));
        v45 = *v43;
        v44 = v43[1];

        sub_1DD3EB41C(v45, v44);
        v191 = v42;
        sub_1DD56D9C4(v198, v42, v45, v44, v46, v47, v48, v49, v150, v151, v152, *(&v152 + 1), v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
        v51 = v50;
        v52 = v198[1];
        v53 = v198[2];

        sub_1DD3EB430(v52, v53);
        v54 = *(v164 + *(v173 + 36));
        if (HIDWORD(v163) == 2)
        {
          v55 = *(v164 + *(v173 + 36));
        }

        else
        {
          LOBYTE(v198[0]) = v158;
          BYTE1(v198[0]) = BYTE4(v158);
          v54 = sub_1DD3E96C4(v54, v198);
        }

        v56 = *(v54 + 16);
        v4 = &qword_1ECCDBBE8;
        if (v56)
        {
          v189 = v45;
          v190 = v44;
          v57 = *(v160 + 80);
          v170 = v54;
          v180 = (v57 + 32) & ~v57;
          v58 = (v54 + v180);
          v212 = *(v160 + 72);
          v193 = v56 - 1;
          v59 = MEMORY[0x1E69E7CC0];
          v60 = v191;
          while (1)
          {
            v192 = v58;
            sub_1DD3EB3D0(v58, v14, &qword_1ECCDBBD8, &unk_1DD645A90);
            memcpy(v200, v14, 0x4AuLL);
            v61 = v200[7];
            v62 = v200[8];
            v63 = HIBYTE(v200[8]) & 0xFLL;
            if ((v200[8] & 0x2000000000000000) == 0)
            {
              v63 = v200[7] & 0xFFFFFFFFFFFFLL;
            }

            v194 = v59;
            if (v63)
            {
              if (LOBYTE(v200[2]))
              {
                if (LOBYTE(v200[2]) == 1)
                {

                  v65 = v189;
                  v64 = v190;
                  sub_1DD3EB41C(v189, v190);

                  v66 = sub_1DD63FDA8();

                  v67 = (*(v179 + 16))(v179, v66);

                  v68 = sub_1DD63FDD8();
                  v186 = v69;

                  v70 = v64;
                  v71 = 0;
                  v72 = 0;
                  v73 = 0;
                  v74 = 2;
                  v75 = 1;
                  v76 = 0xE000000000000000;
                  v77 = 0xE000000000000000;
                  v78 = v61;
                  v79 = v62;
                  v61 = v68;
                  v62 = v186;
                }

                else
                {
                  sub_1DD3EB444();

                  v65 = v189;
                  v70 = v190;
                  sub_1DD3EB41C(v189, v190);

                  v86 = sub_1DD40B8E0();
                  v87 = sub_1DD415480(v86);
                  v71 = 0;
                  v72 = 0;
                  v73 = 0;
                  v78 = v61;
                  v61 = v88 ? v87 : 0;
                  v76 = 0xE000000000000000;
                  v79 = v62;
                  v62 = v88 ? v88 : 0xE000000000000000;
                  v75 = 2;
                  v77 = 0xE000000000000000;
                  v74 = 2;
                }
              }

              else
              {
                v198[0] = v200[7];
                v198[1] = v200[8];
                v197[0] = 64;
                v197[1] = 0xE100000000000000;

                sub_1DD3EB41C(v189, v190);
                sub_1DD3B7F10();

                if (sub_1DD6406D8())
                {
                  v81 = sub_1DD63FDA8();

                  v82 = (*(v179 + 16))(v179, v81);

                  v83 = sub_1DD63FDD8();
                  v85 = v84;

                  v71 = 0;
                  v75 = 0;
                  v72 = 0;
                  v73 = 0;
                  v74 = 2;
                  v76 = 0xE000000000000000;
                  v77 = 0xE000000000000000;
                  v78 = v61;
                  v79 = v62;
                  v61 = v83;
                  v62 = v85;
                }

                else
                {
                  sub_1DD3EB444();
                  v89 = sub_1DD40B8E0();
                  v90 = sub_1DD415480(v89);
                  v71 = 0;
                  v75 = 0;
                  v72 = 0;
                  v73 = 0;
                  v78 = v61;
                  v61 = v91 ? v90 : 0;
                  v76 = 0xE000000000000000;
                  v79 = v62;
                  v62 = v91 ? v91 : 0xE000000000000000;
                  v74 = 2;
                  v77 = 0xE000000000000000;
                }

                v65 = v189;
                v70 = v190;
                v60 = v191;
              }
            }

            else
            {
              LODWORD(v186) = BYTE1(v200[9]);
              v185 = LOBYTE(v200[9]);
              v183 = v200[6];
              v184 = v200[5];
              v182 = v200[3];
              v77 = v200[4];
              v181 = LOBYTE(v200[2]);
              v80 = v200[0];
              v76 = v200[1];

              v65 = v189;
              v70 = v190;
              sub_1DD3EB41C(v189, v190);
              sub_1DD3C6A40(v200, v198);
              v79 = v183;
              v78 = v184;
              v74 = v186;
              v75 = v181;
              v71 = v80;
              v72 = v182;
              v73 = v185;
            }

            v201[0] = v60;
            v201[1] = v65;
            v201[2] = v70;
            v201[3] = v71;
            v201[4] = v76;
            v202 = v75;
            *v203 = *v199;
            *&v203[3] = *&v199[3];
            v204 = v72;
            v205 = v77;
            v206 = v78;
            v207 = v79;
            v208 = v61;
            v209 = v62;
            v210 = v73;
            v211 = v74;
            sub_1DD56D46C();
            v93 = v92;
            memcpy(v198, v197, 0x62uLL);
            sub_1DD3EB488(v198);
            if (v93)
            {
              v14 = v187;
              sub_1DD3EB3D0(v187, v188, &qword_1ECCDBBD8, &unk_1DD645A90);
              v59 = v194;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v95 = *(v59 + 16);
                sub_1DD3BF510();
                v59 = v96;
              }

              v60 = v191;
              v94 = *(v59 + 16);
              if (v94 >= *(v59 + 24) >> 1)
              {
                sub_1DD3BF510();
                v59 = v97;
              }

              *(v59 + 16) = v94 + 1;
              sub_1DD3EB4B8(v188, v59 + v180 + v94 * v212, &qword_1ECCDBBD8, &unk_1DD645A90);
            }

            else
            {
              v14 = v187;
              v59 = v194;
              v60 = v191;
            }

            sub_1DD390754(v14, &qword_1ECCDBBD8, &unk_1DD645A90);
            if (!v193)
            {
              break;
            }

            --v193;
            v58 = &v192[v212];
          }

          sub_1DD3EB430(v189, v190);
          v98 = *(v59 + 16);
          if (!v98)
          {

            v120 = v153;
            sub_1DD3EB3D0(v177, v153, &qword_1ECCDBBE8, &qword_1DD644470);
            v121 = sub_1DD63F9D8();
            v122 = sub_1DD640368();
            if (os_log_type_enabled(v121, v122))
            {
              v123 = v120;
              v124 = swift_slowAlloc();
              v212 = swift_slowAlloc();
              v197[0] = v212;
              *v124 = v152;
              v125 = Contact.description.getter();
              v127 = v126;
              sub_1DD390754(v123, &qword_1ECCDBBE8, &qword_1DD644470);
              v128 = sub_1DD39565C(v125, v127, v197);

              *(v124 + 4) = v128;
              _os_log_impl(&dword_1DD38D000, v121, v122, "Ignoring already-seen candidate (no new applicable handles found): %s", v124, 0xCu);
              v129 = v212;
              __swift_destroy_boxed_opaque_existential_1(v212);
              MEMORY[0x1E12B3DA0](v129, -1, -1);
              MEMORY[0x1E12B3DA0](v124, -1, -1);
            }

            else
            {

              sub_1DD390754(v120, &qword_1ECCDBBE8, &qword_1DD644470);
            }

            v27 = v161;
            v35 = v168;
            v4 = &qword_1ECCDBBE8;
            goto LABEL_73;
          }

          sub_1DD3EB3D0(v177, v171, &qword_1ECCDBBE8, &qword_1DD644470);
          v196 = MEMORY[0x1E69E7CC0];

          sub_1DD42B518();
          v99 = v196;
          v194 = v59;
          v100 = v59 + v180;
          v101 = v98 - 1;
          v102 = v156;
          while (1)
          {
            sub_1DD3EB3D0(v100, v102, &qword_1ECCDBBD8, &unk_1DD645A90);
            memcpy(v197, v102, 0x4AuLL);
            sub_1DD3C6A40(v197, &v195);
            sub_1DD390754(v102, &qword_1ECCDBBD8, &unk_1DD645A90);
            v196 = v99;
            v103 = *(v99 + 16);
            if (v103 >= *(v99 + 24) >> 1)
            {
              sub_1DD42B518();
              v102 = v156;
              v99 = v196;
            }

            *(v99 + 16) = v103 + 1;
            memcpy((v99 + 80 * v103 + 32), v197, 0x4AuLL);
            if (!v101)
            {
              break;
            }

            --v101;
            v100 += v212;
          }

          v104 = v171;
          v105 = *(v172 + 80);
          v106 = *(v171 + v105);
          v107 = v194;

          *(v104 + v105) = v99;
          v108 = *(v173 + 36);
          v109 = v154;
          v110 = *(v154 + v108);

          *(v109 + v108) = v107;
          v111 = v104;
          v4 = &qword_1ECCDBBE8;
          sub_1DD3EB3D0(v111, v162, &qword_1ECCDBBE8, &qword_1DD644470);
          v112 = v175;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v140 = *(v112 + 16);
            sub_1DD3BEC44();
            v112 = v141;
          }

          v27 = v161;
          v114 = *(v112 + 16);
          v113 = *(v112 + 24);
          v175 = v112;
          if (v114 >= v113 >> 1)
          {
            sub_1DD3BEC44();
            v175 = v142;
          }

          v115 = v175;
          *(v175 + 16) = v114 + 1;
          sub_1DD3EB4B8(v162, v115 + v159 + v114 * v174, &qword_1ECCDBBE8, &qword_1DD644470);
          sub_1DD390754(v171, &qword_1ECCDBBE8, &qword_1DD644470);
        }

        else
        {

          sub_1DD3EB430(v45, v44);
          if ((v51 & 1) == 0)
          {
            sub_1DD3EB3D0(v177, v27, &qword_1ECCDBBE8, &qword_1DD644470);
            v130 = sub_1DD63F9D8();
            v131 = v27;
            v132 = sub_1DD640368();
            if (os_log_type_enabled(v130, v132))
            {
              v133 = swift_slowAlloc();
              v212 = swift_slowAlloc();
              v198[0] = v212;
              *v133 = v152;
              v134 = Contact.description.getter();
              v136 = v135;
              sub_1DD390754(v131, &qword_1ECCDBBE8, &qword_1DD644470);
              v137 = sub_1DD39565C(v134, v136, v198);

              *(v133 + 4) = v137;
              _os_log_impl(&dword_1DD38D000, v130, v132, "Ignoring already-seen candidate (no applicable handles): %s", v133, 0xCu);
              v138 = v212;
              __swift_destroy_boxed_opaque_existential_1(v212);
              MEMORY[0x1E12B3DA0](v138, -1, -1);
              v139 = v133;
              v4 = &qword_1ECCDBBE8;
              MEMORY[0x1E12B3DA0](v139, -1, -1);
            }

            else
            {

              sub_1DD390754(v131, &qword_1ECCDBBE8, &qword_1DD644470);
            }

            v27 = v131;
            v35 = v168;
            goto LABEL_73;
          }

          sub_1DD3EB3D0(v177, v155, &qword_1ECCDBBE8, &qword_1DD644470);
          v116 = v175;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v143 = *(v116 + 16);
            sub_1DD3BEC44();
            v116 = v144;
          }

          v118 = *(v116 + 16);
          v117 = *(v116 + 24);
          v175 = v116;
          if (v118 >= v117 >> 1)
          {
            sub_1DD3BEC44();
            v175 = v145;
          }

          v119 = v175;
          *(v175 + 16) = v118 + 1;
          sub_1DD3EB4B8(v155, v119 + v159 + v118 * v174, &qword_1ECCDBBE8, &qword_1DD644470);
        }

        v35 = v168;
LABEL_73:
        a2 = v176 + 1;
        sub_1DD390754(v177, &qword_1ECCDBBE8, &qword_1DD644470);
        if (a2 == v167)
        {

          v146 = v175;
          goto LABEL_76;
        }
      }
    }

    v146 = MEMORY[0x1E69E7CC0];
LABEL_76:

    v147 = sub_1DD63F9D8();
    v148 = sub_1DD640368();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 134217984;
      *(v149 + 4) = *(v146 + 16);

      _os_log_impl(&dword_1DD38D000, v147, v148, "Got %ld candidates after de-duplication...", v149, 0xCu);
      MEMORY[0x1E12B3DA0](v149, -1, -1);
    }

    else
    {
    }

    *v151 = v146;
  }
}

uint64_t sub_1DD3E96C4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = 0;
  v15 = a2[1];
  v33 = *a2;
  v34 = v15;
  v16 = a1;
  v17 = *(a1 + 16);
  do
  {
    v18 = v14;
    if (v17 == v14)
    {
      break;
    }

    sub_1DD3EB3D0(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14++, v13, &qword_1ECCDBBD8, &unk_1DD645A90);
    v19 = v13[16];
    sub_1DD390754(v13, &qword_1ECCDBBD8, &unk_1DD645A90);
  }

  while (v19 != v34);
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  while (v17 != v20)
  {
    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = *(v5 + 72);
    sub_1DD3EB3D0(v16 + v22 + v23 * v20, v11, &qword_1ECCDBBD8, &unk_1DD645A90);
    if (!v33 && v17 == v18 || v11[16] == v34 || !v11[16])
    {
      sub_1DD3EB4B8(v11, v32, &qword_1ECCDBBD8, &unk_1DD645A90);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42B5CC(0, *(v21 + 16) + 1, 1);
        v21 = v35;
      }

      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v30 = *(v21 + 16);
        v31 = v26 + 1;
        sub_1DD42B5CC(v25 > 1, v26 + 1, 1);
        v26 = v30;
        v27 = v31;
        v21 = v35;
      }

      ++v20;
      *(v21 + 16) = v27;
      sub_1DD3EB4B8(v32, v21 + v22 + v26 * v23, &qword_1ECCDBBD8, &unk_1DD645A90);
    }

    else
    {
      sub_1DD390754(v11, &qword_1ECCDBBD8, &unk_1DD645A90);
      ++v20;
    }
  }

  return v21;
}

uint64_t sub_1DD3E9978()
{
  sub_1DD3EB504(v0 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_config);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_tokenizer));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CandidateContactDeduplicator()
{
  result = qword_1EE161028;
  if (!qword_1EE161028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD3E9A40()
{
  result = type metadata accessor for ContactResolverConfig(319);
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

BOOL sub_1DD3E9AD8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1DD57D274(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3 != 1)
  {
    v28[0] = v2;
    v28[1] = v3;
    if (v5 != 1)
    {
      v27[0] = v4;
      v27[1] = v5;
      v18 = OUTLINED_FUNCTION_15_0();
      sub_1DD3EB41C(v18, v19);
      v20 = OUTLINED_FUNCTION_11_0();
      sub_1DD3EB41C(v20, v21);
      v22 = OUTLINED_FUNCTION_15_0();
      sub_1DD3EB41C(v22, v23);
      v24 = static ContactSource.== infix(_:_:)(v28, v27);

      v25 = OUTLINED_FUNCTION_15_0();
      sub_1DD3EB430(v25, v26);
      return (v24 & 1) != 0;
    }

    v7 = OUTLINED_FUNCTION_15_0();
    sub_1DD3EB41C(v7, v8);
    sub_1DD3EB41C(v4, 1);
    v9 = OUTLINED_FUNCTION_15_0();
    sub_1DD3EB41C(v9, v10);

    goto LABEL_8;
  }

  sub_1DD3EB41C(v2, 1);
  if (v5 != 1)
  {
    v11 = OUTLINED_FUNCTION_11_0();
    sub_1DD3EB41C(v11, v12);
LABEL_8:
    v13 = OUTLINED_FUNCTION_15_0();
    sub_1DD3EB430(v13, v14);
    v15 = OUTLINED_FUNCTION_11_0();
    sub_1DD3EB430(v15, v16);
    return 0;
  }

  v6 = 1;
  sub_1DD3EB41C(v4, 1);
  sub_1DD3EB430(v2, 1);
  return v6;
}

uint64_t sub_1DD3E9C04(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = v8[1];
  v10 = v8[2];
  sub_1DD57F364(a1, *v8, a3, a4, a5, a6, a7, a8);
  if (v10 == 1)
  {
    return sub_1DD640E48();
  }

  sub_1DD640E48();
  if (v10)
  {
    MEMORY[0x1E12B3140](1);

    sub_1DD63FD28();
    v12 = v9;
    v13 = v10;
  }

  else
  {
    MEMORY[0x1E12B3140](0);
    v12 = v9;
    v13 = 0;
  }

  return sub_1DD3EB430(v12, v13);
}

uint64_t sub_1DD3E9CC0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1DD640E28();
  sub_1DD57F364(v13, v2, v4, v5, v6, v7, v8, v9);
  if (v3 == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    sub_1DD640E48();
    if (v3)
    {
      MEMORY[0x1E12B3140](1);

      sub_1DD63FD28();
      v10 = v1;
      v11 = v3;
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      v10 = v1;
      v11 = 0;
    }

    sub_1DD3EB430(v10, v11);
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD3E9D7C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  memcpy(__dst, a1 + 3, 0x4AuLL);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  memcpy(__src, a2 + 3, 0x4AuLL);
  v20[0] = v3;
  v20[1] = v4;
  v20[2] = v5;
  v19[0] = v6;
  v19[1] = v7;
  v19[2] = v8;

  v9 = OUTLINED_FUNCTION_11_0();
  sub_1DD3EB41C(v9, v10);

  sub_1DD3EB41C(v7, v8);
  LOBYTE(a2) = sub_1DD3E9AD8(v20, v19);
  v11 = v19[1];
  v12 = v19[2];

  sub_1DD3EB430(v11, v12);
  v13 = v20[1];
  v14 = v20[2];

  sub_1DD3EB430(v13, v14);
  if (a2)
  {
    memcpy(v18, __dst, 0x4AuLL);
    memcpy(v17, __src, sizeof(v17));
    v15 = static ContactHandle.== infix(_:_:)(v18);
    memcpy(v19, v17, 0x4AuLL);
    sub_1DD3C6A40(__dst, v20);
    sub_1DD3C6A40(__src, v20);
    sub_1DD3C6A9C(v19);
    memcpy(v20, v18, 0x4AuLL);
    sub_1DD3C6A9C(v20);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_1DD3E9EEC(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = v8[1];
  v10 = v8[2];
  sub_1DD57F364(a1, *v8, a3, a4, a5, a6, a7, a8);
  if (v10 == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    sub_1DD640E48();
    if (v10)
    {
      MEMORY[0x1E12B3140](1);

      sub_1DD63FD28();
      v11 = v9;
      v12 = v10;
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      v11 = v9;
      v12 = 0;
    }

    sub_1DD3EB430(v11, v12);
  }

  memcpy(v13, v8 + 3, sizeof(v13));
  ContactHandle.hash(into:)();
}

uint64_t sub_1DD3E9FC0()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = v1[2];
  sub_1DD640E28();
  sub_1DD57F364(v15, v2, v5, v6, v7, v8, v9, v10);
  if (v4 == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    sub_1DD640E48();
    if (v4)
    {
      MEMORY[0x1E12B3140](1);

      sub_1DD63FD28();
      v11 = v3;
      v12 = v4;
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      v11 = v3;
      v12 = 0;
    }

    sub_1DD3EB430(v11, v12);
  }

  memcpy(__dst, v1 + 3, sizeof(__dst));
  ContactHandle.hash(into:)();
  return sub_1DD640E78();
}

uint64_t sub_1DD3EA0A4()
{
  v9[9] = *v0;
  v10 = *(v0 + 8);
  sub_1DD640E28();
  sub_1DD3E9C04(v9, v1, v2, v3, v4, v5, v6, v7);
  return sub_1DD640E78();
}

uint64_t sub_1DD3EA100()
{
  v10 = *v0;
  v1 = *(v0 + 2);
  memcpy(__dst, v0 + 24, sizeof(__dst));
  sub_1DD640E28();
  v12 = v10;
  v13 = v1;
  sub_1DD3E9C04(v14, v2, v3, v4, v5, v6, v7, v8);
  ContactHandle.hash(into:)();
  return sub_1DD640E78();
}

uint64_t sub_1DD3EA188(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DD3EA558(v8, v9, a1, v4);
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
    return sub_1DD3EA2D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD3EA2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v43 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v48 = &v34 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v34 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v15 + 72);
    v45 = v48 + 368;
    v46 = v47 + 368;
    v19 = v17 + v18 * (a3 - 1);
    v41 = -v18;
    v42 = v17;
    v20 = a1 - a3;
    v35 = v18;
    v21 = v17 + v18 * a3;
    v22 = &qword_1ECCDBBE8;
    v44 = v8;
    while (2)
    {
      v39 = v19;
      v40 = a3;
      v37 = v21;
      v38 = v20;
      v23 = v20;
      do
      {
        v24 = v47;
        sub_1DD3EB3D0(v21, v47, v22, &qword_1DD644470);
        v25 = v22;
        v26 = v48;
        sub_1DD3EB3D0(v19, v48, v25, &qword_1DD644470);
        v27 = *(v8 + 36);
        v28 = *(v46 + v27);
        v29 = *(v45 + v27);
        v30 = v26;
        v22 = v25;
        sub_1DD390754(v30, v25, &qword_1DD644470);
        result = sub_1DD390754(v24, v25, &qword_1DD644470);
        v31 = v28 < v29;
        v8 = v44;
        if (!v31)
        {
          break;
        }

        if (!v42)
        {
          __break(1u);
          return result;
        }

        v32 = v43;
        sub_1DD3EB4B8(v21, v43, v25, &qword_1DD644470);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1DD3EB4B8(v32, v19, v25, &qword_1DD644470);
        v19 += v41;
        v21 += v41;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v40 + 1;
      v19 = v39 + v35;
      v20 = v38 - 1;
      v21 = v37 + v35;
      if (v40 + 1 != v36)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD3EA558(int64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v122 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v128 = *(v6 - 8);
  v7 = *(v128 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v124 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v135 = &v119 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v119 - v14;
  v130 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_108:
    v20 = *v122;
    if (!*v122)
    {
      goto LABEL_149;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v132;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_110:
      v133 = v19;
      v112 = v19 + 16;
      v113 = *(v19 + 2);
      while (1)
      {
        v19 = (v113 - 2);
        if (v113 < 2)
        {
          break;
        }

        if (!*v130)
        {
          goto LABEL_146;
        }

        v114 = v32;
        v115 = &v133[16 * v113];
        v116 = *v115;
        v32 = &v112[2 * v113];
        v117 = *(v32 + 1);
        sub_1DD3EAEF0(*v130 + *(v128 + 72) * *v115, *v130 + *(v128 + 72) * *v32, *v130 + *(v128 + 72) * v117, v20);
        if (v114)
        {
          break;
        }

        if (v117 < v116)
        {
          goto LABEL_134;
        }

        if (v19 >= *v112)
        {
          goto LABEL_135;
        }

        *v115 = v116;
        *(v115 + 1) = v117;
        v118 = *v112 - v113;
        if (*v112 < v113)
        {
          goto LABEL_136;
        }

        v113 = *v112 - 1;
        sub_1DD4EC4E4(v32 + 16, v118, v32);
        *v112 = v113;
        v32 = 0;
      }

LABEL_118:

      return;
    }

LABEL_143:
    v19 = sub_1DD4EC2B8(v19);
    goto LABEL_110;
  }

  v140 = v13;
  v120 = a4;
  v18 = 0;
  v138 = v16 + 368;
  v139 = v15;
  v137 = v15 + 368;
  v19 = MEMORY[0x1E69E7CC0];
  v136 = &v119 - v14;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v133 = v19;
    if (v18 + 1 >= v17)
    {
      v32 = v132;
    }

    else
    {
      v22 = *v130;
      v23 = *(v128 + 72);
      v24 = *v130 + v23 * v21;
      v127 = v17;
      sub_1DD3EB3D0(v24, v16, &qword_1ECCDBBE8, &qword_1DD644470);
      v19 = v21;
      v25 = v139;
      sub_1DD3EB3D0(v22 + v23 * v20, v139, &qword_1ECCDBBE8, &qword_1DD644470);
      v26 = *(v140 + 36);
      v27 = *&v138[v26];
      v125 = *(v137 + v26);
      v126 = v27;
      v28 = v25;
      v21 = v19;
      sub_1DD390754(v28, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v16, &qword_1ECCDBBE8, &qword_1DD644470);
      v29 = v127;
      v121 = v20;
      v30 = v20 + 2;
      v129 = v23;
      v31 = v22 + v23 * (v20 + 2);
      v32 = v132;
      while (1)
      {
        v33 = v30;
        v34 = (v21 + 1);
        if (v34 >= v29)
        {
          break;
        }

        v132 = v32;
        LODWORD(v131) = v126 < v125;
        v35 = v136;
        v19 = &qword_1DD644470;
        v134 = v30;
        sub_1DD3EB3D0(v31, v136, &qword_1ECCDBBE8, &qword_1DD644470);
        v36 = v139;
        sub_1DD3EB3D0(v24, v139, &qword_1ECCDBBE8, &qword_1DD644470);
        v37 = *(v140 + 36);
        v38 = v34;
        v39 = *&v138[v37];
        v40 = *(v137 + v37);
        sub_1DD390754(v36, &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD390754(v35, &qword_1ECCDBBE8, &qword_1DD644470);
        v33 = v134;
        v29 = v127;
        v41 = v39 < v40;
        v21 = v38;
        v42 = !v41;
        v43 = v131 ^ v42;
        v32 = v132;
        v31 += v129;
        v24 += v129;
        v30 = v134 + 1;
        if ((v43 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v21 = v29;
LABEL_13:
      if (v126 >= v125)
      {
        v19 = v133;
        v16 = v136;
      }

      else
      {
        v20 = v121;
        if (v21 < v121)
        {
          goto LABEL_140;
        }

        if (v121 >= v21)
        {
          v19 = v133;
          v16 = v136;
          goto LABEL_36;
        }

        v44 = v29 >= v33 ? v33 : v29;
        v45 = v21;
        v46 = v129 * (v44 - 1);
        v47 = v129 * v44;
        v48 = v121 * v129;
        v131 = v45;
        v132 = v32;
        v19 = v133;
        v16 = v136;
        do
        {
          if (v20 != --v45)
          {
            v49 = *v130;
            if (!*v130)
            {
              goto LABEL_147;
            }

            sub_1DD3EB4B8(v49 + v48, v124, &qword_1ECCDBBE8, &qword_1DD644470);
            v50 = v48 < v46 || v49 + v48 >= v49 + v47;
            if (v50)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v48 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DD3EB4B8(v124, v49 + v46, &qword_1ECCDBBE8, &qword_1DD644470);
            v19 = v133;
          }

          ++v20;
          v46 -= v129;
          v47 -= v129;
          v48 += v129;
        }

        while (v20 < v45);
        v21 = v131;
        v32 = v132;
      }

      v20 = v121;
    }

LABEL_36:
    v51 = v130[1];
    if (v21 < v51)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_139;
      }

      if (v21 - v20 < v120)
      {
        break;
      }
    }

LABEL_55:
    if (v21 < v20)
    {
      goto LABEL_138;
    }

    v66 = swift_isUniquelyReferenced_nonNull_native();
    v131 = v21;
    if ((v66 & 1) == 0)
    {
      v108 = *(v19 + 2);
      sub_1DD3BEB7C();
      v19 = v109;
    }

    v67 = *(v19 + 2);
    v68 = v67 + 1;
    if (v67 >= *(v19 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v19 = v110;
    }

    *(v19 + 2) = v68;
    v69 = v19 + 32;
    v70 = &v19[16 * v67 + 32];
    v71 = v131;
    *v70 = v20;
    v70[1] = v71;
    v134 = *v122;
    if (!v134)
    {
      goto LABEL_148;
    }

    if (v67)
    {
      v133 = v19;
      while (1)
      {
        v72 = v68 - 1;
        v73 = &v69[16 * v68 - 16];
        v74 = &v19[16 * v68];
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v75 = *(v19 + 4);
          v76 = *(v19 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_76:
          if (v78)
          {
            goto LABEL_125;
          }

          v90 = *v74;
          v89 = *(v74 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_128;
          }

          v94 = *(v73 + 1);
          v95 = v94 - *v73;
          if (__OFSUB__(v94, *v73))
          {
            goto LABEL_131;
          }

          if (__OFADD__(v92, v95))
          {
            goto LABEL_133;
          }

          if (v92 + v95 >= v77)
          {
            if (v77 < v95)
            {
              v72 = v68 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        if (v68 < 2)
        {
          goto LABEL_127;
        }

        v97 = *v74;
        v96 = *(v74 + 1);
        v85 = __OFSUB__(v96, v97);
        v92 = v96 - v97;
        v93 = v85;
LABEL_91:
        if (v93)
        {
          goto LABEL_130;
        }

        v99 = *v73;
        v98 = *(v73 + 1);
        v85 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v85)
        {
          goto LABEL_132;
        }

        if (v100 < v92)
        {
          goto LABEL_105;
        }

LABEL_98:
        if (v72 - 1 >= v68)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*v130)
        {
          goto LABEL_145;
        }

        v104 = &v69[16 * v72 - 16];
        v19 = *v104;
        v105 = &v69[16 * v72];
        v106 = *(v105 + 1);
        sub_1DD3EAEF0(*v130 + *(v128 + 72) * *v104, *v130 + *(v128 + 72) * *v105, *v130 + *(v128 + 72) * v106, v134);
        if (v32)
        {
          goto LABEL_118;
        }

        if (v106 < v19)
        {
          goto LABEL_120;
        }

        v20 = 0;
        v32 = v69;
        v107 = *(v133 + 2);
        if (v72 > v107)
        {
          goto LABEL_121;
        }

        *v104 = v19;
        *(v104 + 1) = v106;
        if (v72 >= v107)
        {
          goto LABEL_122;
        }

        v68 = v107 - 1;
        sub_1DD4EC4E4(v105 + 16, v107 - 1 - v72, v105);
        v19 = v133;
        *(v133 + 2) = v107 - 1;
        v41 = v107 > 2;
        v69 = v32;
        v32 = 0;
        if (!v41)
        {
          goto LABEL_105;
        }
      }

      v79 = &v69[16 * v68];
      v80 = *(v79 - 8);
      v81 = *(v79 - 7);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_123;
      }

      v84 = *(v79 - 6);
      v83 = *(v79 - 5);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_124;
      }

      v86 = *(v74 + 1);
      v87 = v86 - *v74;
      if (__OFSUB__(v86, *v74))
      {
        goto LABEL_126;
      }

      v85 = __OFADD__(v77, v87);
      v88 = v77 + v87;
      if (v85)
      {
        goto LABEL_129;
      }

      if (v88 >= v82)
      {
        v102 = *v73;
        v101 = *(v73 + 1);
        v85 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v85)
        {
          goto LABEL_137;
        }

        if (v77 < v103)
        {
          v72 = v68 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_76;
    }

LABEL_105:
    v132 = v32;
    v18 = v131;
    v17 = v130[1];
    if (v131 >= v17)
    {
      goto LABEL_108;
    }
  }

  if (__OFADD__(v20, v120))
  {
    goto LABEL_141;
  }

  if (v20 + v120 >= v51)
  {
    v52 = v130[1];
  }

  else
  {
    v52 = v20 + v120;
  }

  if (v52 < v20)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v21 == v52)
  {
    goto LABEL_55;
  }

  v131 = v21;
  v132 = v32;
  v53 = *v130;
  v54 = *(v128 + 72);
  v55 = *v130 + v54 * (v21 - 1);
  v56 = -v54;
  v121 = v20;
  v57 = v20 - v21;
  v134 = v53;
  v123 = v54;
  v58 = v53 + v21 * v54;
  v59 = v140;
  v125 = v52;
LABEL_46:
  v126 = v58;
  v127 = v57;
  v129 = v55;
  while (1)
  {
    sub_1DD3EB3D0(v58, v16, &qword_1ECCDBBE8, &qword_1DD644470);
    v60 = v139;
    sub_1DD3EB3D0(v55, v139, &qword_1ECCDBBE8, &qword_1DD644470);
    v61 = *(v59 + 36);
    v62 = *&v138[v61];
    v63 = *(v137 + v61);
    v64 = v60;
    v16 = v136;
    sub_1DD390754(v64, &qword_1ECCDBBE8, &qword_1DD644470);
    sub_1DD390754(v16, &qword_1ECCDBBE8, &qword_1DD644470);
    if (v62 >= v63)
    {
      v59 = v140;
LABEL_53:
      v55 = v129 + v123;
      v57 = v127 - 1;
      v58 = v126 + v123;
      if (++v131 == v125)
      {
        v21 = v125;
        v32 = v132;
        v19 = v133;
        v20 = v121;
        goto LABEL_55;
      }

      goto LABEL_46;
    }

    if (!v134)
    {
      break;
    }

    v65 = v135;
    sub_1DD3EB4B8(v58, v135, &qword_1ECCDBBE8, &qword_1DD644470);
    v59 = v140;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD3EB4B8(v65, v55, &qword_1ECCDBBE8, &qword_1DD644470);
    v55 += v56;
    v58 += v56;
    v50 = __CFADD__(v57++, 1);
    if (v50)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

uint64_t sub_1DD3EAEF0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v59 = a4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v7 = *(*(v58 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v58);
  v57 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v56 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v14 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v14)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v13;
  v62 = a1;
  v61 = v59;
  v18 = v15 / v13;
  if (v17 >= v15 / v13)
  {
    v30 = v59;
    sub_1DD3C1BE8(a2, v15 / v13, v59);
    v31 = v30 + v18 * v13;
    v50 = v57 + 368;
    v51 = v56 + 368;
    v32 = -v13;
    v33 = v31;
    v48 = a1;
    v49 = -v13;
LABEL_37:
    v34 = a2 + v32;
    v35 = a3;
    v47 = v33;
    v53 = a2 + v32;
    while (1)
    {
      if (v31 <= v59)
      {
        v62 = a2;
        v60 = v33;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v52 = v33;
      v36 = v35 + v32;
      v37 = v31 + v32;
      v38 = v56;
      sub_1DD3EB3D0(v31 + v32, v56, &qword_1ECCDBBE8, &qword_1DD644470);
      v39 = v34;
      v40 = v57;
      sub_1DD3EB3D0(v39, v57, &qword_1ECCDBBE8, &qword_1DD644470);
      v41 = *(v58 + 36);
      v42 = *(v51 + v41);
      v54 = *(v50 + v41);
      v55 = v42;
      sub_1DD390754(v40, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v38, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v55 < v54)
      {
        v44 = v35 < a2 || v36 >= a2;
        a3 = v35 + v32;
        if (v44)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v52;
          a1 = v48;
          v32 = v49;
        }

        else
        {
          v45 = v53;
          v33 = v52;
          v14 = v35 == a2;
          a2 = v53;
          a1 = v48;
          v32 = v49;
          if (!v14)
          {
            v46 = v52;
            swift_arrayInitWithTakeBackToFront();
            a2 = v45;
            v33 = v46;
          }
        }

        goto LABEL_37;
      }

      if (v35 < v31 || v36 >= v31)
      {
        swift_arrayInitWithTakeFrontToBack();
        v35 += v32;
        v31 += v32;
        v33 = v37;
        a1 = v48;
        v32 = v49;
        v34 = v53;
      }

      else
      {
        v33 = v31 + v32;
        v14 = v31 == v35;
        v35 += v32;
        v31 += v32;
        a1 = v48;
        v32 = v49;
        v34 = v53;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v35 = v36;
          v31 = v37;
          v33 = v37;
        }
      }
    }

    v62 = a2;
    v60 = v47;
  }

  else
  {
    v19 = v59;
    sub_1DD3C1BE8(a1, (a2 - a1) / v13, v59);
    v55 = v19 + v17 * v13;
    v60 = v55;
    v53 = v57 + 368;
    v54 = v56 + 368;
    v52 = a3;
    while (v59 < v55 && a2 < a3)
    {
      v21 = v13;
      v22 = v56;
      sub_1DD3EB3D0(a2, v56, &qword_1ECCDBBE8, &qword_1DD644470);
      v23 = v57;
      sub_1DD3EB3D0(v59, v57, &qword_1ECCDBBE8, &qword_1DD644470);
      v24 = *(v58 + 36);
      v25 = *(v54 + v24);
      v26 = *(v53 + v24);
      sub_1DD390754(v23, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v22, &qword_1ECCDBBE8, &qword_1DD644470);
      v13 = v21;
      if (v25 >= v26)
      {
        v28 = v59 + v21;
        if (a1 < v59 || a1 >= v28)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v52;
        }

        else
        {
          a3 = v52;
          if (a1 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v61 = v28;
        v59 = v28;
      }

      else if (a1 < a2 || a1 >= a2 + v21)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 += v21;
        a3 = v52;
      }

      else
      {
        a3 = v52;
        if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v21;
      }

      a1 += v21;
      v62 = a1;
    }
  }

LABEL_59:
  sub_1DD4EC2FC(&v62, &v61, &v60);
  return 1;
}

uint64_t sub_1DD3EB3D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_15_0();
  v9(v8);
  return v4;
}

uint64_t sub_1DD3EB41C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD3EB430(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1DD3EB444()
{
  result = qword_1EE165CF0[0];
  if (!qword_1EE165CF0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EE165CF0);
  }

  return result;
}

uint64_t sub_1DD3EB4B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_15_0();
  v9(v8);
  return v4;
}

uint64_t sub_1DD3EB504(uint64_t a1)
{
  v2 = type metadata accessor for ContactResolverConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference13ContactSourceOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD3EB59C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 98))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD3EB5DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD3EB64C()
{
  result = qword_1EE1613A8;
  if (!qword_1EE1613A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1613A8);
  }

  return result;
}

unint64_t sub_1DD3EB6A4()
{
  result = qword_1EE1614F8[0];
  if (!qword_1EE1614F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1614F8);
  }

  return result;
}

uint64_t sub_1DD3EB760()
{
  sub_1DD3EBAA4(319, qword_1EE1620E8, type metadata accessor for HypocorismGenerator);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1DD3EBAA4(319, qword_1EE1617C8, type metadata accessor for MeCardContactGenerator);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1DD3EBAA4(319, &qword_1EE163D80, type metadata accessor for RelationshipAliasGenerator);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1DD3EBBE4(319, &qword_1EE160DA8);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_1DD3EBBE4(319, &qword_1EE161380);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            v1 = type metadata accessor for ContactsFrameworkMatcher();
            if (v11 <= 0x3F)
            {
              Expander = type metadata accessor for ThirdPartyContactMatcher(319);
              if (v13 > 0x3F)
              {
                return Expander;
              }

              sub_1DD3EBBE4(319, &qword_1EE1623F0);
              if (v14 > 0x3F)
              {
                return Expander;
              }

              Expander = type metadata accessor for PartialNameQueryExpander();
              if (v15 > 0x3F)
              {
                return Expander;
              }

              else
              {
                sub_1DD3EBAA4(319, qword_1EE162398, type metadata accessor for EmojiQueryExpander);
                v1 = v16;
                if (v17 <= 0x3F)
                {
                  v1 = type metadata accessor for AsrE3CandidateExpander();
                  if (v18 <= 0x3F)
                  {
                    v1 = type metadata accessor for CandidateContactDeduplicator();
                    if (v19 <= 0x3F)
                    {
                      v1 = type metadata accessor for ContactSignalProviders(319);
                      if (v20 <= 0x3F)
                      {
                        sub_1DD3EBAA4(319, &qword_1EE162FE0, type metadata accessor for E3Orchestrator);
                        v1 = v21;
                        if (v22 <= 0x3F)
                        {
                          sub_1DD3EBAA4(319, qword_1EE162F00, type metadata accessor for EuclidVectorDb);
                          v1 = v23;
                          if (v24 <= 0x3F)
                          {
                            sub_1DD3EBAA4(319, qword_1EE162288, type metadata accessor for EuclidEmbeddingApi);
                            v1 = v25;
                            if (v26 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                              return 0;
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
        }
      }
    }
  }

  return v1;
}

void sub_1DD3EBAA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DD6405F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DD3EBB20()
{
  type metadata accessor for RequestMatchSignalProvider();
  if (v0 <= 0x3F)
  {
    sub_1DD3EBBE4(319, qword_1EE161850);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SiriRemembersContactSignalProvider();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD3EBBE4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DD6405F8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1DD3EBC30()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_92();
  v26 = v2;
  v27 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v5 = OUTLINED_FUNCTION_51(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v24 = v10;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = 0;
  v28 = *(v1 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v28 == v14)
    {

LABEL_14:
      OUTLINED_FUNCTION_86();
      return;
    }

    if (v14 >= *(v1 + 16))
    {
      break;
    }

    v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = *(v7 + 72);
    sub_1DD3EB3D0(v1 + v15 + v16 * v14, v13, &qword_1ECCDBBE8, &qword_1DD644470);
    v17 = v26(v13);
    if (v0)
    {
      sub_1DD390754(v13, &qword_1ECCDBBE8, &qword_1DD644470);

      goto LABEL_14;
    }

    if (v17)
    {
      sub_1DD3EB4B8(v13, v24, &qword_1ECCDBBE8, &qword_1DD644470);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v25;
      v29 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = *(v25 + 16);
        OUTLINED_FUNCTION_26_2();
        sub_1DD42B4F8();
        v19 = v29;
      }

      v21 = *(v19 + 16);
      v22 = v21 + 1;
      if (v21 >= *(v19 + 24) >> 1)
      {
        v25 = v21 + 1;
        v23 = v21;
        sub_1DD42B4F8();
        v22 = v25;
        v21 = v23;
        v19 = v29;
      }

      ++v14;
      *(v19 + 16) = v22;
      v25 = v19;
      sub_1DD3EB4B8(v24, v19 + v15 + v21 * v16, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    else
    {
      sub_1DD390754(v13, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v14;
    }
  }

  __break(1u);
}

void sub_1DD3EBE9C()
{
  OUTLINED_FUNCTION_92();
  v6 = v5;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1DD3CC020(v7);
  OUTLINED_FUNCTION_83_0();
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if (v2)
    {
      v8 = MEMORY[0x1E12B2C10](v4, v1);
    }

    else
    {
      if (v4 >= *(v21 + 16))
      {
        goto LABEL_16;
      }

      v8 = *(v1 + 8 * v4 + 32);
    }

    v9 = v8;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_108();
    v10 = v6();
    if (v0)
    {

      return;
    }

    if (v10)
    {
      v11 = sub_1DD640958();
      OUTLINED_FUNCTION_64_1(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      OUTLINED_FUNCTION_65_1();
      sub_1DD640968();
    }

    else
    {
    }

    ++v4;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1DD3EBFB8()
{
  OUTLINED_FUNCTION_92();
  v6 = v5;
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DD3CC020(v7);
  OUTLINED_FUNCTION_83_0();
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if (v2)
    {
      MEMORY[0x1E12B2C10](v4, v1);
    }

    else
    {
      if (v4 >= *(v20 + 16))
      {
        goto LABEL_16;
      }

      v8 = *(v1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_108();
    v9 = v6();
    if (v0)
    {

      return;
    }

    if (v9)
    {
      v10 = sub_1DD640958();
      OUTLINED_FUNCTION_64_1(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      OUTLINED_FUNCTION_65_1();
      sub_1DD640968();
    }

    else
    {
    }

    ++v4;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1DD3EC0E0(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = 0;
  v19 = *(a3 + 16);
  v6 = (a3 + 64);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v19 == v5)
    {
      goto LABEL_14;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v20 = v5;
    v8 = *(v6 - 4);
    v9 = *(v6 - 6);
    v10 = *(v6 - 2);
    v11 = *(v6 - 1);
    v12 = *v6;
    v21 = v8;
    v22 = v9;
    v23 = v10;
    v24 = v11;
    v25 = v12;
    v13 = a1(&v21);
    if (v3)
    {

LABEL_14:

      return;
    }

    if (v13)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_36_2();
        OUTLINED_FUNCTION_26_2();
        sub_1DD42BD28();
        v7 = v26;
      }

      v15 = *(v7 + 16);
      if (v15 >= *(v7 + 24) >> 1)
      {
        OUTLINED_FUNCTION_106();
        sub_1DD42BD28();
        v3 = 0;
        v7 = v26;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 40 * v15;
      *(v16 + 32) = v8;
      *(v16 + 40) = v9;
      *(v16 + 48) = v10;
      *(v16 + 56) = v11;
      *(v16 + 64) = v12;
      v4 = a3;
    }

    v6 += 5;
    v5 = v20 + 1;
  }

  __break(1u);
}

void sub_1DD3EC25C()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v4 = 0;
  v6 = *(v5 + 16);
  v7 = v5 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v19 = v2;
  while (1)
  {
    if (v6 == v4)
    {
      goto LABEL_14;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    sub_1DD3C2388(v7, v21);
    v9 = v3(v21);
    if (v0)
    {
      __swift_destroy_boxed_opaque_existential_1(v21);

LABEL_14:

      return;
    }

    if (v9)
    {
      sub_1DD3AA4A8(v21, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = *(v8 + 16);
        v12 = OUTLINED_FUNCTION_26_2();
        sub_1DD42C12C(v12, v13, v14);
        v8 = v22;
      }

      v15 = *(v8 + 16);
      if (v15 >= *(v8 + 24) >> 1)
      {
        OUTLINED_FUNCTION_57_2();
        sub_1DD42C12C(v16, v17, v18);
        v8 = v22;
      }

      *(v8 + 16) = v15 + 1;
      sub_1DD3AA4A8(v20, v8 + 40 * v15 + 32);
      v3 = v19;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    v7 += 40;
    ++v4;
  }

  __break(1u);
}

void sub_1DD3EC3B8()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v4 = 0;
  v23 = *(v5 + 16);
  v6 = (v5 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  v22 = v5;
  v21 = v2;
  while (1)
  {
    if (v23 == v4)
    {

      return;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    v9 = *(v6 - 1);
    v8 = *v6;
    v24[0] = v9;
    v24[1] = v8;

    v10 = v3(v24);
    if (v0)
    {

      return;
    }

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = *(v7 + 16);
        v13 = OUTLINED_FUNCTION_26_2();
        sub_1DD42C1D8(v13, v14, v15);
        v7 = v25;
      }

      v16 = *(v7 + 16);
      if (v16 >= *(v7 + 24) >> 1)
      {
        OUTLINED_FUNCTION_57_2();
        sub_1DD42C1D8(v18, v19, v20);
        v7 = v25;
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 16 * v16;
      *(v17 + 32) = v9;
      *(v17 + 40) = v8;
      v1 = v22;
      v3 = v21;
    }

    else
    {
    }

    v6 += 2;
    ++v4;
  }

  __break(1u);
}

uint64_t sub_1DD3EC51C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - v6;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v36 = v7;
  v32 = v2;
  v74 = MEMORY[0x1E69E7CC0];
  sub_1DD42BA08(0, v8, 0);
  v9 = v74;
  result = sub_1DD55B198(a1);
  v13 = result;
  v14 = 0;
  v43 = a1 + 56;
  v33 = a1 + 64;
  v34 = v8;
  v35 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v13 < 1 << *(a1 + 32))
    {
      v15 = v13 >> 6;
      if ((*(v43 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v11)
      {
        goto LABEL_27;
      }

      v42 = v12;
      v40 = v14;
      v41 = v11;
      v16 = (*(a1 + 48) + 16 * v13);
      v17 = v9;
      v18 = *v16;
      v19 = v16[1];
      v45[0] = 0;
      v45[1] = 0xE000000000000000;
      LOBYTE(v45[2]) = 0;
      v45[3] = 0;
      v45[4] = 0xE000000000000000;
      v45[5] = 0;
      v45[6] = 0xE000000000000000;
      v45[7] = v18;
      v45[8] = v19;
      v45[9] = 0;
      v45[10] = 0xE000000000000000;
      v45[11] = 0;
      v45[12] = 0xE000000000000000;
      v45[13] = 0;
      v45[14] = 0xE000000000000000;
      v45[15] = 0;
      v45[16] = 0xE000000000000000;
      v45[17] = 0;
      v45[18] = 0xE000000000000000;
      v45[19] = 0;
      v45[20] = 0xE000000000000000;
      memset(&v45[21], 0, 72);
      v45[30] = MEMORY[0x1E69E7CC0];
      LOBYTE(v45[31]) = 1;
      v45[32] = 0;
      v20 = v36;
      sub_1DD3FA93C(v39, &v36[*(v38 + 36)]);
      memcpy(v20, v45, 0x108uLL);
      v46[0] = 0;
      v46[1] = 0xE000000000000000;
      v47 = 0;
      v48 = 0;
      v49 = 0xE000000000000000;
      v50 = 0;
      v51 = 0xE000000000000000;
      v52 = v18;
      v9 = v17;
      v53 = v19;
      v54 = 0;
      v55 = 0xE000000000000000;
      v56 = 0;
      v57 = 0xE000000000000000;
      v58 = 0;
      v59 = 0xE000000000000000;
      v60 = 0;
      v61 = 0xE000000000000000;
      v62 = 0;
      v63 = 0xE000000000000000;
      v64 = 0;
      v65 = 0xE000000000000000;
      v70 = 0;
      v69 = 0u;
      v68 = 0u;
      v67 = 0u;
      v66 = 0u;
      v71 = MEMORY[0x1E69E7CC0];
      v72 = 1;
      v73 = 0;

      sub_1DD3C9478(v45, &v44);
      sub_1DD3C9580(v46);
      v74 = v17;
      v21 = *(v17 + 16);
      v22 = *(v9 + 24);
      if (v21 >= v22 >> 1)
      {
        sub_1DD42BA08(v22 > 1, v21 + 1, 1);
        v9 = v74;
      }

      *(v9 + 16) = v21 + 1;
      result = sub_1DD3EB4B8(v20, v9 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v21, &qword_1ECCDBC18, &unk_1DD6459A0);
      if (v42)
      {
        goto LABEL_31;
      }

      a1 = v35;
      v23 = 1 << *(v35 + 32);
      if (v13 >= v23)
      {
        goto LABEL_28;
      }

      v24 = *(v43 + 8 * v15);
      if ((v24 & (1 << v13)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v35 + 36) != v41)
      {
        goto LABEL_30;
      }

      v25 = v24 & (-2 << (v13 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v9;
        v27 = v15 << 6;
        v28 = v15 + 1;
        v29 = (v33 + 8 * v15);
        while (v28 < (v23 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_1DD3AA558(v13, v41, 0);
            v23 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        result = sub_1DD3AA558(v13, v41, 0);
LABEL_19:
        v9 = v26;
      }

      v14 = v40 + 1;
      if (v40 + 1 == v34)
      {
        return v9;
      }

      v12 = 0;
      v11 = *(a1 + 36);
      v13 = v23;
      if (v23 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}