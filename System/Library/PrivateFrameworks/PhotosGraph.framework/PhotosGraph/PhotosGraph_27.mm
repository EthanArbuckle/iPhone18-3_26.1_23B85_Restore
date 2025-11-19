uint64_t sub_22F2FEC74(unint64_t p_prots, char *a2)
{
  v5 = OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes;
  swift_beginAccess();
  v52 = v5;
  v53 = a2;
  v6 = *&a2[v5];
  v66[0] = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_72;
  }

  v61 = v6 & 0xFFFFFFFFFFFFFF8;
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = p_prots & 0xFFFFFFFFFFFFFF8;
  v64 = p_prots & 0xC000000000000001;

  v63 = p_prots & 0xFFFFFFFFFFFFFF8;
  v54 = v6;
  if (v7)
  {
    v9 = 0;
    v59 = v6 & 0xC000000000000001;
    v57 = v6 + 32;
    v55 = MEMORY[0x277D84F90];
    v56 = v7;
    v58 = p_prots >> 62;
    v2 = 0x277D82BB8;
    while (1)
    {
      if (v59)
      {
        v10 = MEMORY[0x2319016F0](v9, v54);
      }

      else
      {
        if (v9 >= *(v61 + 16))
        {
          goto LABEL_71;
        }

        v10 = *(v57 + 8 * v9);
      }

      v11 = v10;
      if (__OFADD__(v9++, 1))
      {
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        v61 = v6 & 0xFFFFFFFFFFFFFF8;
        v7 = sub_22F741A00();
        goto LABEL_3;
      }

      if (v58)
      {
        v13 = sub_22F741A00();
        if (!v13)
        {
          goto LABEL_5;
        }

LABEL_12:
        v14 = 0;
        while (1)
        {
          if (v64)
          {
            v15 = p_prots;
            v16 = MEMORY[0x2319016F0](v14, p_prots);
          }

          else
          {
            if (v14 >= *(v8 + 16))
            {
              goto LABEL_69;
            }

            v15 = p_prots;
            v16 = *(p_prots + 8 * v14 + 32);
          }

          p_prots = v16;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          v6 = sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
          v18 = *(p_prots + OBJC_IVAR___PGTripLocationScore_locationNode);
          if (sub_22F741810())
          {
            break;
          }

          ++v14;
          v19 = v17 == v13;
          v8 = v63;
          p_prots = v15;
          if (v19)
          {
            goto LABEL_5;
          }
        }

        MEMORY[0x231900D00]();
        if (*((v66[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v66[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22F7411C0();
        }

        v6 = v66;
        sub_22F741220();
        v55 = v66[0];
        v8 = v63;
        p_prots = v15;
        if (v9 == v56)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v13 = *(v8 + 16);
        if (v13)
        {
          goto LABEL_12;
        }

LABEL_5:

        if (v9 == v56)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v55 = MEMORY[0x277D84F90];
LABEL_30:

  v21 = v55;
  if (v55 >> 62)
  {
    if (sub_22F741A00())
    {
      goto LABEL_42;
    }
  }

  else if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_42;
  }

  v62 = p_prots;
  if (*&v53[OBJC_IVAR___PGTripFeatureProcessor_locationFrequency])
  {
    v22 = *&v53[OBJC_IVAR___PGTripFeatureProcessor_locationFrequency];
  }

  else
  {
    v22 = sub_22F14FDF8(MEMORY[0x277D84F90]);
  }

  v23 = sub_22F30BB8C(v22);

  v2 = *(v23 + 16);
  if (v2)
  {
    v24 = sub_22F10B588(*(v23 + 16), 0);
    v60 = sub_22F11C284(v66, v24 + 4, v2, v23);
    v25 = v66[4];
    v26 = v53;

    sub_22F0FF590();
    if (v60 != v2)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v21 = v55;
    v2 = v53;
  }

  else
  {
    v2 = v53;
    v27 = v53;
    v24 = MEMORY[0x277D84F90];
  }

  v66[0] = v24;
  v28 = v2;
  sub_22F30DB70(v66, v28);

  v29 = v66[0];
  v30 = *&v2[v52];
  p_prots = v62;
  if (v30 >> 62)
  {
    v42 = v66[0];
    v43 = sub_22F741A00();
    v29 = v42;
    v8 = v63;
    if (v43)
    {
      goto LABEL_41;
    }
  }

  else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:

    goto LABEL_42;
  }

  if (!*(v29 + 2))
  {
    goto LABEL_41;
  }

  v44 = v29[5];
  v45 = *(v29 + 4);

  if (v44 < 0.8)
  {

    goto LABEL_42;
  }

  if (v62 >> 62)
  {
    v2 = sub_22F741A00();
    if (v2)
    {
LABEL_83:
      v46 = 0;
      v31 = &qword_2810A8EC0;
      p_prots = &OBJC_PROTOCOL___KGPropertyTypeProtocol.prots;
      while (1)
      {
        if (v64)
        {
          v47 = MEMORY[0x2319016F0](v46, v62);
        }

        else
        {
          if (v46 >= *(v8 + 16))
          {
            goto LABEL_95;
          }

          v47 = *(v62 + 8 * v46 + 32);
        }

        v48 = v47;
        v8 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
        v49 = *(&v48->count + OBJC_IVAR___PGTripLocationScore_locationNode);
        if (sub_22F741810())
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_22F771EB0;
          *(v21 + 32) = v48;
          swift_beginAccess();
          v50 = v48;
          sub_22F10BBDC(&v65, 0xD000000000000018, 0x800000022F79A2C0);
          swift_endAccess();

          p_prots = v62;
          v8 = v63;
          goto LABEL_42;
        }

        ++v46;
        v19 = v8 == v2;
        v8 = v63;
        if (v19)
        {
          goto LABEL_105;
        }
      }

      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }
  }

  else
  {
    v2 = *(v8 + 16);
    if (v2)
    {
      goto LABEL_83;
    }
  }

LABEL_105:

  p_prots = v62;
  v21 = v55;
LABEL_42:
  if (v21 >> 62)
  {
    if (sub_22F741A00())
    {
      goto LABEL_67;
    }
  }

  else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_67;
  }

  v31 = (p_prots >> 62);
  if (!(p_prots >> 62))
  {
    result = *(v8 + 16);
    if (result >= 2)
    {
      v33 = 2;
    }

    else
    {
      v33 = *(v8 + 16);
    }

    if (result >= v33)
    {
      goto LABEL_49;
    }

    goto LABEL_113;
  }

LABEL_96:
  if ((p_prots & 0x8000000000000000) != 0)
  {
    v25 = p_prots;
  }

  else
  {
    v25 = v8;
  }

  v23 = sub_22F741A00();
  if (sub_22F741A00() < 0)
  {
    __break(1u);
    goto LABEL_101;
  }

  if (v23 >= 2)
  {
    v51 = 2;
  }

  else
  {
    v51 = v23;
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
    v33 = v51;
  }

  else
  {
    v33 = 2;
  }

  result = sub_22F741A00();
  if (result >= v33)
  {
LABEL_49:
    if (v64 && v33)
    {
      type metadata accessor for TripLocationScore();

      sub_22F741B20();
      if (v33 != 1)
      {
        sub_22F741B20();
        if (v33 != 2)
        {
          sub_22F741B20();
        }
      }

      if (!v31)
      {
LABEL_55:
        v25 = 0;
        v34 = v8 + 32;
        v23 = (2 * v33) | 1;
        if (v23)
        {
LABEL_60:
          v38 = v8;
          v8 = v34;
          sub_22F742070();
          swift_unknownObjectRetain_n();
          v2 = v38;
          v39 = swift_dynamicCastClass();
          if (!v39)
          {
            swift_unknownObjectRelease();
            v39 = MEMORY[0x277D84F90];
          }

          v40 = *(v39 + 16);

          if (!__OFSUB__(v23 >> 1, v25))
          {
            if (v40 == (v23 >> 1) - v25)
            {
              v21 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (!v21)
              {
                v21 = MEMORY[0x277D84F90];
                goto LABEL_66;
              }

LABEL_67:
              v41 = sub_22F2FF678(v21);

              return v41;
            }

            goto LABEL_103;
          }

LABEL_102:
          __break(1u);
LABEL_103:
          swift_unknownObjectRelease();
          v34 = v8;
          v8 = v2;
        }

LABEL_59:
        sub_22F10AD88(v8, v34, v25, v23);
        v21 = v37;
LABEL_66:
        swift_unknownObjectRelease();
        goto LABEL_67;
      }
    }

    else
    {

      if (!v31)
      {
        goto LABEL_55;
      }
    }

    v8 = sub_22F741DB0();
    v25 = v35;
    v23 = v36;
    if (v36)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_22F2FF4B4(double *a1, double *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 != v4)
  {
    return v4 < v3;
  }

  v6 = *a2;
  v7 = *a1;
  v8 = objc_opt_self();
  v9 = *(a3 + OBJC_IVAR___PGTripFeatureProcessor_locationHelper);
  v10 = [v8 beautifiedLocationNodeStringWithPlaceNode:v7 locationHelper:v9];
  if (v10)
  {
    v11 = v10;
    v12 = sub_22F740E20();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v16 = [v8 beautifiedLocationNodeStringWithPlaceNode:v6 locationHelper:v9];
  if (!v16)
  {
    if (v14)
    {
      goto LABEL_16;
    }

    v20 = 0;
LABEL_18:

    return v20 == 0;
  }

  v17 = v16;
  v18 = sub_22F740E20();
  v20 = v19;

  if (!v14)
  {
    goto LABEL_18;
  }

  if (!v20)
  {
LABEL_16:

    return 1;
  }

  v21 = sub_22F740F10();
  v22 = sub_22F740F10();
  if (v21 == v22)
  {
    if (v12 == v18 && v14 == v20)
    {

      return 0;
    }

    else
    {
      v24 = sub_22F742040();

      return v24 & 1;
    }
  }

  else
  {
    v25 = v22;

    return v21 < v25;
  }
}

unint64_t sub_22F2FF678(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    if (sub_22F741A00() != 2)
    {
      goto LABEL_18;
    }

    result = sub_22F741A00();
    v2 = result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) != 2)
    {
      goto LABEL_18;
    }

    v2 = 2;
  }

  if ((v1 & 0xC000000000000001) == 0)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      v4 = v2 - 1;
      if (!__OFSUB__(v2, 1))
      {
        if (v4 < v3)
        {
          v5 = *(v1 + 32 + 8 * v4);
          v6 = *(v1 + 32);
          v7 = v5;
LABEL_9:
          v8 = v7;
          v9 = *&v6[OBJC_IVAR___PGTripLocationScore__score];
          v10 = *&v7[OBJC_IVAR___PGTripLocationScore__score];
          if (v9 > v10)
          {
            v11 = *&v6[OBJC_IVAR___PGTripLocationScore__score];
          }

          else
          {
            v11 = *&v7[OBJC_IVAR___PGTripLocationScore__score];
          }

          if (v10 >= v9)
          {
            v10 = *&v6[OBJC_IVAR___PGTripLocationScore__score];
          }

          if (v10 / v11 < 0.01)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
            v12 = swift_allocObject();
            v1 = v12;
            *(v12 + 16) = xmmword_22F771EB0;
            if (v9 == v11)
            {
              *(v12 + 32) = v6;
            }

            else
            {
              *(v12 + 32) = v8;
            }

            return v1;
          }

LABEL_18:

          return v1;
        }

        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = MEMORY[0x2319016F0](0, v1);
  result = v2 - 1;
  if (!__OFSUB__(v2, 1))
  {
    v7 = MEMORY[0x2319016F0](result, v1);
    goto LABEL_9;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22F2FF800(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v51 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_88:
    v6 = sub_22F741A00();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v53 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v8 = sub_22F741A00();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  LOBYTE(v10) = 0;
  if (!v8)
  {
    goto LABEL_55;
  }

  v11 = 0;
  v12 = v7;
  v44 = OBJC_IVAR___PGTripFeatureProcessor_processorHelper;
  v48 = a1 & 0xC000000000000001;
  v47 = a1 & 0xFFFFFFFFFFFFFF8;
  v41 = a1;
  v46 = a1 + 32;
  v42 = v8;
  v43 = a3;
  while (1)
  {
    if (v48)
    {
      v14 = MEMORY[0x2319016F0](v11, v41);
      v15 = __OFADD__(v11++, 1);
      if (v15)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v11 >= *(v47 + 16))
      {
        goto LABEL_87;
      }

      v14 = *(v46 + 8 * v11);
      v15 = __OFADD__(v11++, 1);
      if (v15)
      {
        goto LABEL_86;
      }
    }

    v50 = v14;
    if (*&v14[OBJC_IVAR___PGTripLocationScore__score] > 0.0)
    {
      goto LABEL_11;
    }

    v45 = v11;
    a1 = *(a3 + v44);
    v16 = sub_22F3F1380(*&v14[OBJC_IVAR___PGTripLocationScore_locationNode]);
    v52 = v9;
    v49 = v16;
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        break;
      }

      goto LABEL_45;
    }

    v17 = sub_22F741A00();
    if (v17)
    {
      break;
    }

LABEL_45:
    v25 = v9;
LABEL_46:

    v11 = v45;
    if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
    {
      a1 = sub_22F741A00();
    }

    else
    {
      a1 = *(v25 + 16);
    }

    if (a1 / v12 <= 0.2)
    {

      LOBYTE(v10) = 1;
      goto LABEL_12;
    }

    LOBYTE(v10) = 1;
LABEL_11:
    a1 = &v53;
    sub_22F741BA0();
    v13 = *(v53 + 16);
    sub_22F741BE0();
    sub_22F741BF0();
    sub_22F741BB0();
LABEL_12:
    if (v11 == v8)
    {
      goto LABEL_54;
    }
  }

  v18 = 0;
LABEL_21:
  if ((v49 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x2319016F0](v18, v49);
  }

  else
  {
    if (v18 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }

    v19 = *(v49 + 32 + 8 * v18);
  }

  v10 = v19;
  v15 = __OFADD__(v18++, 1);
  if (v15)
  {
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v51)
  {
    v20 = sub_22F741A00();
  }

  else
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a3 = 0;
  while (1)
  {
    if (v20 == a3)
    {

      if (v18 != v17)
      {
        goto LABEL_21;
      }

LABEL_40:
      v25 = v52;
      v9 = MEMORY[0x277D84F90];
      v8 = v42;
      a3 = v43;
      goto LABEL_46;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x2319016F0](a3, a2);
    }

    else
    {
      if (a3 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v21 = *(a2 + 8 * a3 + 32);
    }

    v22 = v21;
    if (__OFADD__(a3, 1))
    {
      break;
    }

    sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
    v23 = *&v22[OBJC_IVAR___PGTripLocationScore_locationNode];
    a1 = sub_22F741810();

    ++a3;
    if (a1)
    {
      sub_22F741BA0();
      v24 = *(v52 + 16);
      sub_22F741BE0();
      sub_22F741BF0();
      a1 = &v52;
      sub_22F741BB0();
      if (v18 == v17)
      {
        goto LABEL_40;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  v9 = v53;
LABEL_55:
  if (v9 < 0)
  {
    v26 = 1;
  }

  else
  {
    v26 = (v9 >> 62) & 1;
  }

  if (v26 != 1)
  {
    v27 = *(v9 + 16);
    if (v27 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = *(v9 + 16);
    }

    if (v27 >= v28)
    {
      goto LABEL_63;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v39 = sub_22F741A00();
  result = sub_22F741A00();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  if (v39 >= 2)
  {
    v40 = 2;
  }

  else
  {
    v40 = v39;
  }

  if (v39 >= 0)
  {
    v28 = v40;
  }

  else
  {
    v28 = 2;
  }

  if (sub_22F741A00() < v28)
  {
    goto LABEL_98;
  }

LABEL_63:
  if ((v9 & 0xC000000000000001) != 0 && v28)
  {
    type metadata accessor for TripLocationScore();

    sub_22F741B20();
    if (v28 != 1)
    {
      sub_22F741B20();
      if (v28 != 2)
      {
        sub_22F741B20();
      }
    }
  }

  else
  {
  }

  if (!v26)
  {
    a1 = 0;
    v26 = v9 + 32;
    v28 = (2 * v28) | 1;
    if (v28)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v29 = sub_22F741DB0();
  v26 = v30;
  a1 = v31;
  v28 = v32;

  v9 = v29;
  if ((v28 & 1) == 0)
  {
LABEL_73:
    sub_22F10AD88(v9, v26, a1, v28);
    v34 = v33;
    goto LABEL_82;
  }

LABEL_74:
  sub_22F742070();
  swift_unknownObjectRetain_n();
  v35 = swift_dynamicCastClass();
  if (!v35)
  {
    swift_unknownObjectRelease();
    v35 = MEMORY[0x277D84F90];
  }

  v36 = *(v35 + 16);

  if (__OFSUB__(v28 >> 1, a1))
  {
    goto LABEL_99;
  }

  if (v36 != (v28 >> 1) - a1)
  {
LABEL_100:
    swift_unknownObjectRelease_n();
    goto LABEL_73;
  }

  v34 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v34)
  {
    if (v10)
    {
      return v34;
    }

LABEL_83:
    v38 = sub_22F2FF678(v34);

    return v38;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_82:
  swift_unknownObjectRelease();
  if ((v10 & 1) == 0)
  {
    goto LABEL_83;
  }

  return v34;
}

unint64_t sub_22F2FFDF4(unint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v6 = sub_22F741A00();
    if (!v6)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_31;
    }
  }

  if ((sub_22F305458() & 1) == 0)
  {
    if (v6 < 0)
    {
      v6 = 2;
      if (!v5)
      {
LABEL_9:
        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_16;
      }
    }

    else
    {
      if (v6 >= 2)
      {
        v6 = 2;
      }

      if (!v5)
      {
        goto LABEL_9;
      }
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      a2 = v4;
    }

    else
    {
      a2 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_22F741A00() < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v7 = sub_22F741A00();
LABEL_16:
    if (v7 >= v6)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        type metadata accessor for TripLocationScore();

        v8 = 0;
        do
        {
          v9 = v8 + 1;
          sub_22F741B20();
          v8 = v9;
        }

        while (v6 != v9);
        if (!v5)
        {
          goto LABEL_21;
        }
      }

      else
      {

        if (!v5)
        {
LABEL_21:
          a2 = v4 & 0xFFFFFFFFFFFFFF8;
          v10 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
          v4 = (2 * v6) | 1;
          goto LABEL_25;
        }
      }

      a2 = sub_22F741DB0();
      v5 = v11;
      v4 = v12;
      if ((v12 & 1) == 0)
      {
LABEL_24:
        sub_22F10AD88(a2, v10, v5, v4);
        v4 = v13;
        swift_unknownObjectRelease();
        goto LABEL_32;
      }

LABEL_25:
      v2 = v10;
      sub_22F742070();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = MEMORY[0x277D84F90];
      }

      v15 = *(v14 + 16);

      if (!__OFSUB__(v4 >> 1, v5))
      {
        if (v15 == (v4 >> 1) - v5)
        {
          v4 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v4)
          {
            goto LABEL_32;
          }

          swift_unknownObjectRelease();
LABEL_31:
          v4 = MEMORY[0x277D84F90];
          goto LABEL_32;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      swift_unknownObjectRelease();
      v10 = v2;
      goto LABEL_24;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_32:
  v16 = sub_22F2FF678(v4);

  return v16;
}

uint64_t sub_22F300018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR___PGTripLocationScore__score);
  v4 = *(a2 + OBJC_IVAR___PGTripLocationScore__score);
  if (v3 != v4)
  {
    return v4 < v3;
  }

  v8 = objc_opt_self();
  v9 = *(a3 + OBJC_IVAR___PGTripFeatureProcessor_locationHelper);
  v10 = [v8 beautifiedLocationNodeStringWithPlaceNode:*(a1 + OBJC_IVAR___PGTripLocationScore_locationNode) locationHelper:v9];
  if (v10)
  {
    v11 = v10;
    v12 = sub_22F740E20();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v16 = [v8 beautifiedLocationNodeStringWithPlaceNode:*(a2 + OBJC_IVAR___PGTripLocationScore_locationNode) locationHelper:v9];
  if (!v16)
  {
    if (v14)
    {
      goto LABEL_16;
    }

    v20 = 0;
LABEL_18:

    return v20 == 0;
  }

  v17 = v16;
  v18 = sub_22F740E20();
  v20 = v19;

  if (!v14)
  {
    goto LABEL_18;
  }

  if (!v20)
  {
LABEL_16:

    return 1;
  }

  v21 = sub_22F740F10();
  v22 = sub_22F740F10();
  if (v21 == v22)
  {
    if (v12 == v18 && v14 == v20)
    {

      return 0;
    }

    else
    {
      v24 = sub_22F742040();

      return v24 & 1;
    }
  }

  else
  {
    v25 = v22;

    return v21 < v25;
  }
}

uint64_t sub_22F3001E8()
{

  v2 = sub_22F1528F4(v1);

  sub_22F10A0C4(v2);
  v3 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_graph);
  v4 = objc_allocWithZone(PGGraphMomentNodeCollection);
  v5 = v3;
  v6 = sub_22F741410();

  v23 = [v4 initWithSet:v6 graph:v5];

  v21 = objc_opt_self();
  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  sub_22F11FA28(&qword_2810A90D0, &qword_2810A90E0, off_27887B100);
  v7 = sub_22F741410();
  v22 = [v21 containsAmusementParkPOIFromMomentNodes_];

  v8 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_locationHelper);
  v9 = [v8 addressNodesByMomentNodeAdjacency];
  v10 = [v23 elementIdentifiers];
  v11 = [v9 targetsForSources_];

  v12 = [objc_allocWithZone(PGGraphAddressNodeCollection) initWithGraph:v5 elementIdentifiers:v11];
  v13 = [v12 set];

  sub_22F120634(0, &qword_2810A90A8, off_27887AB90);
  sub_22F11FA28(&qword_2810A90A0, &qword_2810A90A8, off_27887AB90);
  sub_22F741420();

  v14 = sub_22F741410();

  v15 = sub_22F741410();

  v16 = [v21 commonAOIComponentsForMomentNodes:v14 addressNodes:v15 aoiDisplayType:1 containsAmusementParkPOI:v22 locationHelper:v8];

  sub_22F120634(0, &qword_2810A9008, off_27887B6B0);
  sub_22F11FA28(&qword_2810A9000, &qword_2810A9008, off_27887B6B0);
  v17 = sub_22F741420();

  sub_22F2FBA00(v17);
  v19 = v18;

  swift_unknownObjectRelease();
  return v19;
}

void sub_22F300540(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v5 = [objc_allocWithZone(MEMORY[0x277D22C88]) initWithProgressReporter_];
  v149 = [v5 childProgressReporterToCheckpoint_];
  v145 = v5;
  v147 = [v5 childProgressReporterToCheckpoint_];
  v6 = *(v4 + OBJC_IVAR___PGTripFeatureProcessor_processorHelper);
  v7 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_areaCache;
  swift_beginAccess();
  v151 = v6;
  v146 = v7;
  v8 = *(v6 + v7);
  v150 = *(v8 + 16);
  v9 = -1 << *(v8 + 32);
  v10 = *(v8 + 64);
  v11 = ~v9;
  v12 = -v9;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v163 = v8;
  v164 = v8 + 64;
  v165 = v11;
  v166 = 0;
  v167 = v13 & v10;
  v168 = 0;
  v157 = OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment;
  v148 = OBJC_IVAR___PGTripFeatureProcessor_totalNumberOfAssets;
  v154 = OBJC_IVAR___PGTripFeatureProcessor_scoreByAOI;

  v14 = sub_22F3D4644();
  v156 = v4;
  if (!v15)
  {
LABEL_39:
    sub_22F0FF590();
    sub_22F7416A0();
    if (v3)
    {

LABEL_133:
      return;
    }

    v162 = MEMORY[0x277D84FA0];
    v43 = -1 << *(*(v151 + v146) + 32);
    v44 = *(v151 + v146);
    v47 = *(v44 + 64);
    v45 = v44 + 64;
    v46 = v47;
    v48 = ~v43;
    v49 = -v43;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v163 = *(v151 + v146);
    v164 = v45;
    v165 = v48;
    v166 = 0;
    v167 = v50 & v46;
    v168 = 0;

LABEL_46:
    v51 = sub_22F3D4720();
    v158 = v52;
    if (!v52)
    {
      sub_22F0FF590();
      v141 = v147;
      sub_22F7416A0();

      goto LABEL_138;
    }

    if (__OFADD__(v51, 1))
    {
      goto LABEL_148;
    }

    sub_22F741680();
    if (v3)
    {
      goto LABEL_137;
    }

    v53 = v162;
    v155 = 0;
    if ((v162 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();

      sub_22F7419C0();
      sub_22F120634(0, &qword_2810A90E0, off_27887B100);
      sub_22F11FA28(&qword_2810A90D0, &qword_2810A90E0, off_27887B100);
      sub_22F741470();
      v53 = v169;
      v157 = v170;
      v54 = v171;
      v55 = v172;
      v56 = v173;
    }

    else
    {
      v57 = -1 << *(v162 + 32);
      v58 = *(v162 + 56);
      v157 = v162 + 56;
      v54 = ~v57;
      v59 = -v57;
      if (v59 < 64)
      {
        v60 = ~(-1 << v59);
      }

      else
      {
        v60 = -1;
      }

      v56 = v60 & v58;
      swift_bridgeObjectRetain_n();

      v55 = 0;
    }

    v153 = v54;
    v61 = (v54 + 64) >> 6;
    while (1)
    {
      if (v53 < 0)
      {
        v68 = sub_22F741A40();
        if (!v68 || (v159 = v68, sub_22F120634(0, &qword_2810A90E0, off_27887B100), v62 = swift_dynamicCast(), (v63 = v160) == 0))
        {
LABEL_66:
          v69 = v158;

          sub_22F0FF590();

          v70 = v155;
          sub_22F2FB90C(v69);
          v155 = v70;
          v71 = *(v151 + v146);
          v72 = MEMORY[0x277D84F90];
          v160 = MEMORY[0x277D84F90];
          v73 = 1 << *(v71 + 32);
          if (v73 < 64)
          {
            v74 = ~(-1 << v73);
          }

          else
          {
            v74 = -1;
          }

          v75 = v74 & *(v71 + 64);
          v76 = (v73 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v77 = 0;
          if (!v75)
          {
            goto LABEL_72;
          }

          do
          {
LABEL_70:
            while (1)
            {
              v78 = __clz(__rbit64(v75));
              v75 &= v75 - 1;
              v79 = (v77 << 9) | (8 * v78);
              v80 = *(*(v71 + 56) + v79);
              v81 = *(*(v71 + 48) + v79);

              v82 = sub_22F3014BC(v81, v80, v158);

              if (v82)
              {
                break;
              }

              if (!v75)
              {
                goto LABEL_72;
              }
            }

            MEMORY[0x231900D00]();
            if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v84 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22F7411C0();
            }

            sub_22F741220();
            v72 = v160;
          }

          while (v75);
LABEL_72:
          while (2)
          {
            v83 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
              goto LABEL_143;
            }

            if (v83 < v76)
            {
              v75 = *(v71 + 64 + 8 * v83);
              ++v77;
              if (v75)
              {
                v77 = v83;
                goto LABEL_70;
              }

              continue;
            }

            break;
          }

          if (v72 >> 62)
          {
            v140 = sub_22F741A00();
            v3 = v155;
            if (v140 > 1)
            {
              v85 = v140;
              v86 = sub_22F741A00();
              goto LABEL_83;
            }

LABEL_45:

            goto LABEL_46;
          }

          v85 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v3 = v155;
          if (v85 <= 1)
          {
            goto LABEL_45;
          }

          v86 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_83:
          v87 = 0;
          v88 = v72 & 0xC000000000000001;
          while (v86 != v87)
          {
            if (v88)
            {
              v89 = MEMORY[0x2319016F0](v87, v72);
            }

            else
            {
              if (v87 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_142;
              }

              v89 = *(v72 + 8 * v87 + 32);
            }

            v90 = v89;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_141;
            }

            [v89 popularityScore];
            v92 = v91;

            ++v87;
            if (v92 <= 0.0)
            {
              goto LABEL_45;
            }
          }

          v160 = MEMORY[0x277D84F90];
          sub_22F146BD4(0, v85, 0);
          v93 = 0;
          v94 = v160;
          do
          {
            if (v88)
            {
              v95 = MEMORY[0x2319016F0](v93, v72);
            }

            else
            {
              v95 = *(v72 + 8 * v93 + 32);
            }

            v96 = v95;
            [v95 popularityScore];
            v160 = v94;
            v99 = *(v94 + 16);
            v98 = *(v94 + 24);
            if (v99 >= v98 >> 1)
            {
              v101 = v97;
              sub_22F146BD4((v98 > 1), v99 + 1, 1);
              v97 = v101;
              v94 = v160;
            }

            ++v93;
            *(v94 + 16) = v99 + 1;
            v100 = v94 + 16 * v99;
            *(v100 + 32) = v96;
            *(v100 + 40) = v97;
          }

          while (v85 != v93);

          v102 = *(v94 + 16);
          if (v102)
          {
            v103 = (v94 + 40);
            v104 = *(v94 + 40);
            v105 = *(v94 + 32);
            v106 = 1;
LABEL_101:
            v107 = &v103[2 * v106];
            while (v102 != v106)
            {
              if (v106 >= *(v94 + 16))
              {
                goto LABEL_144;
              }

              ++v106;
              v108 = v107 + 2;
              v109 = *v107;
              v110 = v104 < *v107;
              v107 += 2;
              if (v110)
              {
                v111 = v105;
                v112 = *(v108 - 3);

                v105 = v112;
                v104 = v109;
                goto LABEL_101;
              }
            }

            if (v104 != 0.0)
            {
              v158 = v105;
              swift_beginAccess();
              v113 = 0;
              while (v113 < *(v94 + 16))
              {
                v114 = *v103;
                v115 = *(v156 + v154);
                v116 = *(v115 + 16);
                v117 = *(v103 - 1);
                if (v116)
                {

                  v118 = sub_22F12350C(v117);
                  v119 = 0.0;
                  if (v120)
                  {
                    v119 = *(*(v115 + 56) + 8 * v118);
                  }
                }

                else
                {
                  v119 = 0.0;
                }

                v121 = v156;
                v122 = v154;
                swift_beginAccess();
                v123 = v117;
                v124 = *(v121 + v122);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v159 = *(v121 + v122);
                v126 = v159;
                *(v121 + v122) = 0x8000000000000000;
                v127 = sub_22F12350C(v123);
                v129 = v126[2];
                v130 = (v128 & 1) == 0;
                v131 = __OFADD__(v129, v130);
                v132 = v129 + v130;
                if (v131)
                {
                  goto LABEL_146;
                }

                v133 = v128;
                if (v126[3] >= v132)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v139 = v127;
                    sub_22F1377B8();
                    v127 = v139;
                  }
                }

                else
                {
                  sub_22F12B498(v132, isUniquelyReferenced_nonNull_native);
                  v127 = sub_22F12350C(v123);
                  if ((v133 & 1) != (v134 & 1))
                  {
                    goto LABEL_150;
                  }
                }

                v135 = fabs(v114 / v104) * v119;
                v136 = v159;
                if (v133)
                {
                  *(v159[7] + 8 * v127) = v135;
                }

                else
                {
                  v159[(v127 >> 6) + 8] |= 1 << v127;
                  *(v136[6] + 8 * v127) = v123;
                  *(v136[7] + 8 * v127) = v135;
                  v137 = v136[2];
                  v131 = __OFADD__(v137, 1);
                  v138 = v137 + 1;
                  if (v131)
                  {
                    goto LABEL_147;
                  }

                  v136[2] = v138;
                }

                ++v113;
                *(v156 + v154) = v136;
                swift_endAccess();

                v103 += 2;
                if (v102 == v113)
                {

                  goto LABEL_129;
                }
              }

              goto LABEL_145;
            }
          }

LABEL_129:

          v3 = v155;
          goto LABEL_46;
        }
      }

      else
      {
        v66 = v55;
        for (i = v56; !i; ++v66)
        {
          v55 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            goto LABEL_140;
          }

          if (v55 >= v61)
          {
            goto LABEL_66;
          }

          i = *(v157 + 8 * v55);
        }

        v56 = (i - 1) & i;
        v62 = *(*(v53 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(i)))));
        v63 = v62;
        if (!v62)
        {
          goto LABEL_66;
        }
      }

      v160 = v63;
      MEMORY[0x28223BE20](v62);
      v143 = &v160;
      v64 = v155;
      v65 = sub_22F1C39A8(sub_22F30F9F0, &v142, v158);
      v155 = v64;

      if (v65)
      {
        swift_bridgeObjectRelease_n();
        sub_22F0FF590();
        goto LABEL_129;
      }
    }
  }

  v17 = v16;
  while (1)
  {
    v153 = v15;
    v18 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
      v42 = v14;
      v19 = sub_22F741A00();
      v14 = v42;
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v152 = v14;
    v155 = v3;
    if (v19)
    {
      break;
    }

    v21 = 0.0;
LABEL_32:

    v35 = v153;
    v36 = sub_22F3F0DEC(v153);
    v3 = v155;
    if (v155)
    {
      sub_22F0FF590();

      goto LABEL_133;
    }

    if (v36 / *(v4 + v148) >= 0.2)
    {
      v37 = v154;
      swift_beginAccess();
      v38 = v153;
      v39 = *(v4 + v154);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v160 = *(v4 + v154);
      *(v4 + v154) = 0x8000000000000000;
      sub_22F1322B8(v38, v40, v21);

      *(v4 + v37) = v160;
      swift_endAccess();
    }

    if (__OFADD__(v152, 1))
    {
LABEL_143:
      __break(1u);
LABEL_144:
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
      v144 = 0;
      v143 = 1068;
      sub_22F741D40();
      __break(1u);
LABEL_150:
      sub_22F120634(0, &qword_2810A9160, off_27887ABD8);
      sub_22F7420C0();
      __break(1u);
      return;
    }

    sub_22F741680();

    v14 = sub_22F3D4644();
    v17 = v41;
    if (!v15)
    {
      goto LABEL_39;
    }
  }

  v20 = 0;
  v158 = (v17 & 0xC000000000000001);
  v21 = 0.0;
  while (1)
  {
    if (v158)
    {
      v22 = MEMORY[0x2319016F0](v20, v17);
    }

    else
    {
      if (v20 >= *(v18 + 16))
      {
        goto LABEL_136;
      }

      v22 = *(v17 + 8 * v20 + 32);
    }

    v23 = v22;
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v25 = v18;
    v26 = *(v4 + v157);
    v27 = 0.0;
    if (!v26)
    {
      goto LABEL_11;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
      if (v26 < 0)
      {
        v28 = *(v4 + v157);
      }

      v29 = v22;

      v30 = sub_22F741D00();

      if (!v30)
      {
        v4 = v156;
LABEL_11:
        v18 = v25;
        goto LABEL_12;
      }

      v160 = v30;
      type metadata accessor for MomentRelevanceData(0);
      swift_dynamicCast();
      v31 = v161;
      v4 = v156;
      v18 = v25;
      if (!v161)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!*(v26 + 16))
      {
        goto LABEL_11;
      }

      v32 = *(v4 + v157);

      v33 = sub_22F1234BC(v23);
      if ((v34 & 1) == 0)
      {

        goto LABEL_11;
      }

      v31 = *(*(v26 + 56) + 8 * v33);

      v18 = v25;
      if (!v31)
      {
        goto LABEL_12;
      }
    }

    if (*(v31 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore + 8))
    {
      goto LABEL_149;
    }

    v27 = *(v31 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore);

LABEL_12:

    v21 = v21 + v27;
    ++v20;
    if (v24 == v19)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  sub_22F0FF590();

LABEL_138:
}

id sub_22F3014BC(void *a1, unint64_t a2, unint64_t a3)
{
  v15 = a1;
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_16:
    v6 = sub_22F741A00();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v6 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2319016F0](i, a2);
    }

    else
    {
      if (i >= *(v5 + 16))
      {
        goto LABEL_15;
      }

      v8 = *(a2 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v16 = v8;
    MEMORY[0x28223BE20](v8);
    v14[2] = &v16;
    v10 = sub_22F1C39A8(sub_22F30F9F0, v14, a3);

    if (v10)
    {
      v11 = v15;
      v12 = v15;
      return v11;
    }
  }

  return 0;
}

char *sub_22F3015FC(uint64_t a1, unint64_t a2, uint64_t ***a3)
{
  v237 = MEMORY[0x277D84FA0];
  v6 = sub_22F740E20();
  v8 = v7;
  v9 = *&v3[OBJC_IVAR___PGTripFeatureProcessor_processorHelper];
  v10 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_locationDictionaryCache;
  swift_beginAccess();
  v234 = v9;
  v209 = v10;
  v11 = *(v9 + v10);
  v208 = a3;
  v12 = *a3;
  v13 = v3;

  v15 = sub_22F1528F4(v14);

  v210 = a1;
  v212 = v13;
  v16 = sub_22F3079D4(a1, v6, v8, v11, v15);

  v17 = v16 >> 62;
  if (v16 >> 62)
  {
    goto LABEL_285;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v236[0] = MEMORY[0x277D84F90];
    sub_22F146A6C(0, v18 & ~(v18 >> 63), 0);
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
      goto LABEL_297;
    }

    v20 = 0;
    v21 = v236[0];
    do
    {
      v22 = v21;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x2319016F0](v20, v16);
      }

      else
      {
        v23 = *(v16 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = sub_22F3F0FF4(*&v23[OBJC_IVAR___PGTripLocationScore_locationNode]);
      if (v235)
      {

        v235 = 0;
        v26 = 0.0;
      }

      else
      {
        v27 = v25;
        v235 = 0;

        v26 = v27;
      }

      v21 = v22;
      v236[0] = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_22F146A6C((v28 > 1), v29 + 1, 1);
        v21 = v236[0];
      }

      ++v20;
      *(v21 + 16) = v30;
      *(v21 + 8 * v29 + 32) = v26;
    }

    while (v18 != v20);
LABEL_18:
    if (v30 > 3)
    {
      v31 = v30 & 0xFFFFFFFFFFFFFFFCLL;
      v33 = v21 + 48;
      v32 = 0.0;
      v34 = v30 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v35 = *v33;
        v32 = v32 + *(v33 - 16) + *(v33 - 8) + *v33 + *(v33 + 8);
        v33 += 32;
        v34 -= 4;
      }

      while (v34);
      if (v30 == v31)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v31 = 0;
      v32 = 0.0;
    }

    v36 = v30 - v31;
    v37 = (v21 + 8 * v31 + 32);
    do
    {
      v38 = *v37++;
      v32 = v32 + v38;
      --v36;
    }

    while (v36);
LABEL_25:
    v39 = v30;
    goto LABEL_26;
  }

  v30 = *(MEMORY[0x277D84F90] + 16);
  if (v30)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v39 = 0.0;
  v21 = MEMORY[0x277D84F90];
  v32 = 0.0;
LABEL_26:
  v211 = v21;
  v40 = sub_22F302C84(v21);
  v236[0] = v19;
  if (v17)
  {
    v41 = sub_22F741A00();
    if (v41)
    {
      goto LABEL_28;
    }

LABEL_40:
    v58 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v41 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v41)
  {
    goto LABEL_40;
  }

LABEL_28:
  v42 = 0;
  v43 = v16 & 0xC000000000000001;
  v44 = v16 & 0xFFFFFFFFFFFFFF8;
  v17 = 0x277D27000uLL;
  v45 = v32 / v39;
  v230 = v16;
  do
  {
    if (v43)
    {
      v46 = MEMORY[0x2319016F0](v42, v16);
    }

    else
    {
      if (v42 >= *(v44 + 16))
      {
        goto LABEL_273;
      }

      v46 = *(v16 + 8 * v42 + 32);
    }

    v47 = v46;
    v48 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_272;
    }

    v49 = sub_22F3F0FF4(*&v46[OBJC_IVAR___PGTripLocationScore_locationNode]);
    if (v235)
    {

      v59 = v236[0];
      goto LABEL_134;
    }

    v50 = v49;
    v51 = *(v17 + 1672);
    [objc_opt_self() cumulativeNormalDistributionForX:v50 mu:v45 sigma:v40];
    if (v52 < 0.15)
    {
    }

    else
    {
      sub_22F741BA0();
      v53 = v44;
      v54 = v41;
      v55 = v43;
      v56 = v17;
      v57 = *(v236[0] + 16);
      sub_22F741BE0();
      v17 = v56;
      v43 = v55;
      v41 = v54;
      v44 = v53;
      v16 = v230;
      sub_22F741BF0();
      sub_22F741BB0();
    }

    ++v42;
  }

  while (v48 != v41);
  v58 = v236[0];
LABEL_43:

  if ((v58 & 0x8000000000000000) != 0 || (v58 & 0x4000000000000000) != 0)
  {
    goto LABEL_291;
  }

  v227 = *(v58 + 16);
LABEL_46:
  v60 = MEMORY[0x277D84F90];
  v226 = v58;
  if (v227)
  {
    v16 = 0;
    v220 = v58 + 32;
    v223 = v58 & 0xC000000000000001;
    do
    {
      if (v223)
      {
        v61 = MEMORY[0x2319016F0](v16, v58);
      }

      else
      {
        if (v16 >= *(v58 + 16))
        {
          goto LABEL_270;
        }

        v61 = *(v220 + 8 * v16);
      }

      v62 = v61;
      v63 = __OFADD__(v16++, 1);
      if (v63)
      {
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        v18 = sub_22F741A00();
        goto LABEL_3;
      }

      v64 = *&v61[OBJC_IVAR___PGTripLocationScore_momentNodes];
      v65 = v64 >> 62;
      v66 = v64;
      if (v64 >> 62)
      {
        if (v64 < 0)
        {
          v86 = *&v61[OBJC_IVAR___PGTripLocationScore_momentNodes];
        }

        v67 = sub_22F741A00();
      }

      else
      {
        v67 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v68 = v60 >> 62;
      if (v60 >> 62)
      {
        v87 = sub_22F741A00();
        v70 = v87 + v67;
        if (__OFADD__(v87, v67))
        {
LABEL_87:
          __break(1u);
          break;
        }
      }

      else
      {
        v69 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v70 = v69 + v67;
        if (__OFADD__(v69, v67))
        {
          goto LABEL_87;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v68)
        {
          goto LABEL_65;
        }

        v71 = v60 & 0xFFFFFFFFFFFFFF8;
        if (v70 <= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v72 = v67;
          goto LABEL_67;
        }
      }

      else
      {
        if (v68)
        {
LABEL_65:
          sub_22F741A00();
          goto LABEL_66;
        }

        v71 = v60 & 0xFFFFFFFFFFFFFF8;
      }

      v73 = *(v71 + 16);
LABEL_66:
      v72 = v67;
      v60 = sub_22F741B50();
      v71 = v60 & 0xFFFFFFFFFFFFFF8;
LABEL_67:
      v17 = *(v71 + 16);
      v74 = *(v71 + 24);
      v75 = v66;
      if (v65)
      {
        v77 = v71;
        v78 = sub_22F741A00();
        v71 = v77;
        v75 = v66;
        v76 = v78;
        if (!v78)
        {
LABEL_48:

          v58 = v226;
          if (v72 > 0)
          {
            goto LABEL_271;
          }

          continue;
        }
      }

      else
      {
        v76 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v76)
        {
          goto LABEL_48;
        }
      }

      if (((v74 >> 1) - v17) < v72)
      {
        goto LABEL_274;
      }

      v17 = v71 + 8 * v17 + 32;
      v231 = v71;
      if (v65)
      {
        if (v76 < 1)
        {
          goto LABEL_276;
        }

        v214 = v72;
        v217 = v60;
        v79 = v75;
        sub_22F30F98C();
        for (i = 0; i != v76; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35E0, &qword_22F784750);
          v81 = sub_22F14E004(v236, i, v79);
          v83 = *v82;
          (v81)(v236, 0);
          *(v17 + 8 * i) = v83;
        }

        v58 = v226;
        v60 = v217;
        v72 = v214;
      }

      else
      {
        sub_22F120634(0, &qword_2810A90E0, off_27887B100);
        swift_arrayInitWithCopy();

        v58 = v226;
      }

      if (v72 > 0)
      {
        v84 = *(v231 + 16);
        v63 = __OFADD__(v84, v72);
        v85 = v84 + v72;
        if (v63)
        {
          goto LABEL_275;
        }

        *(v231 + 16) = v85;
      }
    }

    while (v16 != v227);
  }

  sub_22F2FB90C(v60);
  v59 = v235;

  sub_22F741690();
  if (v235)
  {

    goto LABEL_90;
  }

  v17 = @"State";
  v88 = sub_22F740E20();
  v90 = v89;
  v91 = *(v234 + v209);
  v92 = v237;

  v18 = sub_22F3079D4(v210, v88, v90, v91, v92);

  v16 = v18 >> 62;
  if (!(v18 >> 62))
  {
    v93 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_93;
  }

LABEL_297:
  v93 = sub_22F741A00();
LABEL_93:
  if (!v93)
  {
    v95 = MEMORY[0x277D84F90];
    v103 = *(MEMORY[0x277D84F90] + 16);
    if (v103)
    {
      goto LABEL_108;
    }

    v112 = 0.0;
    v105 = 0.0;
    goto LABEL_116;
  }

  v236[0] = MEMORY[0x277D84F90];
  sub_22F146A6C(0, v93 & ~(v93 >> 63), 0);
  if (v93 < 0)
  {
    __break(1u);
  }

  else
  {
    v94 = 0;
    v95 = v236[0];
    v17 = v18 & 0xC000000000000001;
    do
    {
      if (v17)
      {
        v96 = MEMORY[0x2319016F0](v94, v18);
      }

      else
      {
        v96 = *(v18 + 8 * v94 + 32);
      }

      v97 = v96;
      v98 = sub_22F3F0FF4(*&v96[OBJC_IVAR___PGTripLocationScore_locationNode]);
      if (v235)
      {

        v235 = 0;
        v99 = 0.0;
      }

      else
      {
        v235 = 0;
        v100 = v98;

        v99 = v100;
      }

      v236[0] = v95;
      v102 = *(v95 + 16);
      v101 = *(v95 + 24);
      v103 = v102 + 1;
      if (v102 >= v101 >> 1)
      {
        sub_22F146A6C((v101 > 1), v102 + 1, 1);
        v95 = v236[0];
      }

      ++v94;
      *(v95 + 16) = v103;
      *(v95 + 8 * v102 + 32) = v99;
    }

    while (v93 != v94);
LABEL_108:
    if (v103 <= 3)
    {
      v104 = 0;
      v105 = 0.0;
      goto LABEL_113;
    }

    v104 = v103 & 0xFFFFFFFFFFFFFFFCLL;
    v106 = v95 + 48;
    v105 = 0.0;
    v107 = v103 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v108 = *v106;
      v105 = v105 + *(v106 - 16) + *(v106 - 8) + *v106 + *(v106 + 8);
      v106 += 32;
      v107 -= 4;
    }

    while (v107);
    if (v103 != v104)
    {
LABEL_113:
      v109 = v103 - v104;
      v110 = (v95 + 8 * v104 + 32);
      do
      {
        v111 = *v110++;
        v105 = v105 + v111;
        --v109;
      }

      while (v109);
    }

    v112 = v103;
LABEL_116:
    v113 = sub_22F302C84(v95);
    v236[0] = MEMORY[0x277D84F90];
    if (v16)
    {
      v114 = sub_22F741A00();
    }

    else
    {
      v114 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = a2;
    if (v114)
    {
      v115 = 0;
      v116 = v105 / v112;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v117 = MEMORY[0x2319016F0](v115, v18);
        }

        else
        {
          if (v115 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_282;
          }

          v117 = *(v18 + 8 * v115 + 32);
        }

        v118 = v117;
        v17 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          goto LABEL_281;
        }

        v119 = sub_22F3F0FF4(*&v117[OBJC_IVAR___PGTripLocationScore_locationNode]);
        if (v235)
        {
          break;
        }

        [objc_opt_self() cumulativeNormalDistributionForX:v119 mu:v116 sigma:v113];
        if (v120 < 0.15)
        {
        }

        else
        {
          sub_22F741BA0();
          v121 = *(v236[0] + 16);
          sub_22F741BE0();
          v16 = a2;
          sub_22F741BF0();
          sub_22F741BB0();
        }

        ++v115;
        if (v17 == v114)
        {
          v122 = v236[0];
          goto LABEL_137;
        }
      }

LABEL_133:
      v59 = v236[0];

LABEL_134:

      return v59;
    }

    v122 = MEMORY[0x277D84F90];
LABEL_137:

    if ((v122 & 0x8000000000000000) != 0 || (v122 & 0x4000000000000000) != 0)
    {
LABEL_299:
      v221 = sub_22F741A00();
    }

    else
    {
      v221 = *(v122 + 16);
    }

    v124 = MEMORY[0x277D84F90];
    v211 = v122;
    if (v221)
    {
      v125 = 0;
      v215 = v122 + 32;
      v218 = v122 & 0xC000000000000001;
      do
      {
        if (v218)
        {
          v126 = MEMORY[0x2319016F0](v125, v122);
        }

        else
        {
          if (v125 >= *(v122 + 16))
          {
            goto LABEL_278;
          }

          v126 = *(v215 + 8 * v125);
        }

        v127 = v126;
        v63 = __OFADD__(v125++, 1);
        if (v63)
        {
          goto LABEL_277;
        }

        v128 = *&v126[OBJC_IVAR___PGTripLocationScore_momentNodes];
        v17 = v128 >> 62;
        v129 = v128;
        if (v128 >> 62)
        {
          if (v128 < 0)
          {
            v147 = *&v126[OBJC_IVAR___PGTripLocationScore_momentNodes];
          }

          v130 = sub_22F741A00();
        }

        else
        {
          v130 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v131 = v124 >> 62;
        if (v124 >> 62)
        {
          v132 = sub_22F741A00();
        }

        else
        {
          v132 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v232 = v130;
        v63 = __OFADD__(v132, v130);
        v133 = v132 + v130;
        if (v63)
        {
          goto LABEL_279;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (v131)
          {
            goto LABEL_160;
          }

          v134 = v124 & 0xFFFFFFFFFFFFFF8;
          if (v133 <= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v228 = v124;
            goto LABEL_162;
          }
        }

        else
        {
          if (v131)
          {
LABEL_160:
            sub_22F741A00();
            goto LABEL_161;
          }

          v134 = v124 & 0xFFFFFFFFFFFFFF8;
        }

        v135 = *(v134 + 16);
LABEL_161:
        v228 = sub_22F741B50();
        v134 = v228 & 0xFFFFFFFFFFFFFF8;
LABEL_162:
        v16 = *(v134 + 16);
        v58 = *(v134 + 24);
        v136 = v129;
        if (v17)
        {
          v138 = v134;
          v139 = sub_22F741A00();
          v134 = v138;
          v136 = v129;
          v137 = v139;
          if (!v139)
          {
LABEL_142:

            v124 = v228;
            v16 = a2;
            if (v232 > 0)
            {
              goto LABEL_280;
            }

            continue;
          }
        }

        else
        {
          v137 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v137)
          {
            goto LABEL_142;
          }
        }

        if (((v58 >> 1) - v16) < v232)
        {
          goto LABEL_283;
        }

        v140 = v134 + 8 * v16 + 32;
        v224 = v134;
        if (v17)
        {
          if (v137 < 1)
          {
            __break(1u);
LABEL_287:
            __break(1u);
LABEL_288:
            __break(1u);
LABEL_289:
            __break(1u);
LABEL_290:
            __break(1u);
LABEL_291:
            v227 = sub_22F741A00();
            goto LABEL_46;
          }

          sub_22F30F98C();
          for (j = 0; j != v137; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35E0, &qword_22F784750);
            v17 = sub_22F14E004(v236, j, v136);
            v144 = *v143;
            (v17)(v236, 0);
            *(v140 + 8 * j) = v144;
          }

          v122 = v211;
          v141 = v232;
        }

        else
        {
          sub_22F120634(0, &qword_2810A90E0, off_27887B100);
          v141 = v232;
          swift_arrayInitWithCopy();
        }

        v16 = a2;
        v124 = v228;
        if (v141 > 0)
        {
          v145 = *(v224 + 16);
          v63 = __OFADD__(v145, v141);
          v146 = v145 + v141;
          if (v63)
          {
            goto LABEL_284;
          }

          *(v224 + 16) = v146;
        }
      }

      while (v125 != v221);
    }

    sub_22F2FB90C(v124);
    v59 = v235;

    sub_22F741690();
    if (v235)
    {

      goto LABEL_90;
    }

    v148 = sub_22F740E20();
    v150 = v149;
    v151 = *(v234 + v209);
    v152 = v237;

    v18 = sub_22F3079D4(v210, v148, v150, v151, v152);

    v16 = v18 >> 62;
    if (!(v18 >> 62))
    {
      v153 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_185;
    }
  }

  v153 = sub_22F741A00();
LABEL_185:
  if (!v153)
  {
    v163 = *(MEMORY[0x277D84F90] + 16);
    if (!v163)
    {
      v172 = 0.0;
      v155 = MEMORY[0x277D84F90];
      v165 = 0.0;
      v173 = MEMORY[0x277D84F90];
LABEL_209:
      v174 = sub_22F302C84(v155);
      v236[0] = v173;
      if (v16)
      {
        v17 = sub_22F741A00();
      }

      else
      {
        v17 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = a2;
      v209 = v155;
      if (v17)
      {
        v175 = 0;
        v176 = v165 / v172;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v177 = MEMORY[0x2319016F0](v175, v18);
          }

          else
          {
            if (v175 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_294;
            }

            v177 = *(v18 + 8 * v175 + 32);
          }

          v178 = v177;
          v179 = v175 + 1;
          if (__OFADD__(v175, 1))
          {
            goto LABEL_293;
          }

          v180 = sub_22F3F0FF4(*&v177[OBJC_IVAR___PGTripLocationScore_locationNode]);
          if (v235)
          {
            break;
          }

          [objc_opt_self() cumulativeNormalDistributionForX:v180 mu:v176 sigma:v174];
          if (v181 < 0.15)
          {
          }

          else
          {
            sub_22F741BA0();
            v182 = *(v236[0] + 16);
            sub_22F741BE0();
            v16 = a2;
            sub_22F741BF0();
            sub_22F741BB0();
          }

          ++v175;
          if (v179 == v17)
          {
            v183 = v236[0];
            goto LABEL_227;
          }
        }

        goto LABEL_133;
      }

      v183 = MEMORY[0x277D84F90];
LABEL_227:

      v58 = v226;
      if (v183 < 0 || (v183 & 0x4000000000000000) != 0)
      {
        v184 = sub_22F741A00();
        if (v184)
        {
          goto LABEL_230;
        }
      }

      else
      {
        v184 = *(v183 + 16);
        if (v184)
        {
LABEL_230:
          v122 = 0;
          v219 = v183 + 32;
          v222 = v183 & 0xC000000000000001;
          v185 = MEMORY[0x277D84F90];
          v216 = v184;
          v210 = v183;
          while (1)
          {
            if (v222)
            {
              v186 = MEMORY[0x2319016F0](v122, v183);
            }

            else
            {
              if (v122 >= *(v183 + 16))
              {
                goto LABEL_288;
              }

              v186 = *(v219 + 8 * v122);
            }

            v187 = v186;
            v63 = __OFADD__(v122++, 1);
            if (v63)
            {
              goto LABEL_287;
            }

            v188 = *&v186[OBJC_IVAR___PGTripLocationScore_momentNodes];
            v17 = v188 >> 62;
            v234 = v188;
            if (v188 >> 62)
            {
              v189 = sub_22F741A00();
            }

            else
            {
              v189 = *((v188 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v190 = v185 >> 62;
            if (v185 >> 62)
            {
              v191 = sub_22F741A00();
            }

            else
            {
              v191 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v233 = v189;
            v63 = __OFADD__(v191, v189);
            v192 = v191 + v189;
            if (v63)
            {
              goto LABEL_289;
            }

            if (swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              if (v190)
              {
                goto LABEL_249;
              }

              v18 = v185 & 0xFFFFFFFFFFFFFF8;
              if (v192 <= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v229 = v185;
                goto LABEL_251;
              }
            }

            else
            {
              if (v190)
              {
LABEL_249:
                sub_22F741A00();
                goto LABEL_250;
              }

              v18 = v185 & 0xFFFFFFFFFFFFFF8;
            }

            v193 = *(v18 + 16);
LABEL_250:
            v229 = sub_22F741B50();
            v18 = v229 & 0xFFFFFFFFFFFFFF8;
LABEL_251:
            v16 = *(v18 + 16);
            v194 = *(v18 + 24);
            v195 = v234;
            if (v17)
            {
              v197 = sub_22F741A00();
              v195 = v234;
              v196 = v197;
              if (!v197)
              {
LABEL_231:

                v185 = v229;
                if (v233 > 0)
                {
                  goto LABEL_290;
                }

                goto LABEL_232;
              }
            }

            else
            {
              v196 = *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v196)
              {
                goto LABEL_231;
              }
            }

            if (((v194 >> 1) - v16) < v233)
            {
              goto LABEL_295;
            }

            v16 = v18 + 8 * v16 + 32;
            v225 = v18;
            if (v17)
            {
              if (v196 < 1)
              {
                __break(1u);
                goto LABEL_299;
              }

              sub_22F30F98C();
              v199 = 0;
              v18 = v234;
              do
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35E0, &qword_22F784750);
                v17 = sub_22F14E004(v236, v199, v234);
                v201 = *v200;
                (v17)(v236, 0);
                *(v16 + 8 * v199++) = v201;
              }

              while (v196 != v199);

              v58 = v226;
              v183 = v210;
              v198 = v233;
            }

            else
            {
              v18 = v195;
              sub_22F120634(0, &qword_2810A90E0, off_27887B100);
              v198 = v233;
              swift_arrayInitWithCopy();
            }

            v16 = a2;
            v185 = v229;
            if (v198 > 0)
            {
              v202 = *(v225 + 16);
              v63 = __OFADD__(v202, v198);
              v203 = v202 + v198;
              if (v63)
              {
                goto LABEL_296;
              }

              *(v225 + 16) = v203;
            }

LABEL_232:
            if (v122 == v216)
            {
              goto LABEL_304;
            }
          }
        }
      }

      v185 = MEMORY[0x277D84F90];
LABEL_304:
      sub_22F2FB90C(v185);
      v59 = v235;

      sub_22F7416A0();
      if (!v235)
      {

        *v208 = sub_22F10AD6C(v237);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35F0, &qword_22F784758);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22F7707D0;
        *(inited + 32) = sub_22F740E20();
        *(inited + 40) = v205;
        *(inited + 48) = v183;
        *(inited + 56) = sub_22F740E20();
        *(inited + 64) = v206;
        *(inited + 72) = v211;
        *(inited + 80) = sub_22F740E20();
        *(inited + 88) = v207;
        *(inited + 96) = v58;
        v59 = sub_22F14FDE4(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35F8, &unk_22F784760);
        swift_arrayDestroy();

        return v59;
      }

LABEL_90:

      return v59;
    }

    v155 = MEMORY[0x277D84F90];
LABEL_201:
    if (v163 > 3)
    {
      v164 = v163 & 0xFFFFFFFFFFFFFFFCLL;
      v166 = v155 + 48;
      v165 = 0.0;
      v167 = v163 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v168 = *v166;
        v165 = v165 + *(v166 - 16) + *(v166 - 8) + *v166 + *(v166 + 8);
        v166 += 32;
        v167 -= 4;
      }

      while (v167);
      if (v163 == v164)
      {
        goto LABEL_208;
      }
    }

    else
    {
      v164 = 0;
      v165 = 0.0;
    }

    v169 = v163 - v164;
    v170 = (v155 + 8 * v164 + 32);
    do
    {
      v171 = *v170++;
      v165 = v165 + v171;
      --v169;
    }

    while (v169);
LABEL_208:
    v172 = v163;
    v173 = MEMORY[0x277D84F90];
    goto LABEL_209;
  }

  v236[0] = MEMORY[0x277D84F90];
  result = sub_22F146A6C(0, v153 & ~(v153 >> 63), 0);
  if ((v153 & 0x8000000000000000) == 0)
  {
    v154 = 0;
    v155 = v236[0];
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v156 = MEMORY[0x2319016F0](v154, v18);
      }

      else
      {
        v156 = *(v18 + 8 * v154 + 32);
      }

      v157 = v156;
      v158 = sub_22F3F0FF4(*&v156[OBJC_IVAR___PGTripLocationScore_locationNode]);
      if (v235)
      {

        v235 = 0;
        v159 = 0.0;
      }

      else
      {
        v160 = v158;
        v235 = 0;

        v159 = v160;
      }

      v236[0] = v155;
      v162 = *(v155 + 16);
      v161 = *(v155 + 24);
      v163 = v162 + 1;
      if (v162 >= v161 >> 1)
      {
        sub_22F146A6C((v161 > 1), v162 + 1, 1);
        v155 = v236[0];
      }

      ++v154;
      *(v155 + 16) = v163;
      *(v155 + 8 * v162 + 32) = v159;
    }

    while (v153 != v154);
    goto LABEL_201;
  }

  __break(1u);
  return result;
}

double sub_22F302C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return sqrt(-0.0);
  }

  if (v1 <= 3)
  {
    v2 = 0;
    v3 = 0.0;
LABEL_8:
    v7 = v1 - v2;
    v8 = (a1 + 8 * v2 + 32);
    do
    {
      v9 = *v8++;
      v3 = v3 + v9;
      --v7;
    }

    while (v7);
    goto LABEL_10;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v4 = (a1 + 48);
  v3 = 0.0;
  v5 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v6 = *v4;
    v3 = v3 + *(v4 - 2) + *(v4 - 1) + *v4 + v4[1];
    v4 += 4;
    v5 -= 4;
  }

  while (v5);
  if (v1 != v2)
  {
    goto LABEL_8;
  }

LABEL_10:
  v10 = v1;
  v11 = v3 / v1;
  if (v1 > 3)
  {
    v12 = v1 & 0x7FFFFFFFFFFFFFFCLL;
    v14 = vdupq_lane_s64(*&v11, 0);
    v15 = (a1 + 48);
    v13 = 0.0;
    v16 = v1 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v17 = vsubq_f64(v15[-1], v14);
      v18 = vsubq_f64(*v15, v14);
      v19 = vmulq_f64(v17, v17);
      v20 = vmulq_f64(v18, v18);
      v13 = v13 + v19.f64[0] + v19.f64[1] + v20.f64[0] + v20.f64[1];
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    if (v1 == v12)
    {
      return sqrt(v13 / (v10 + -1.0));
    }
  }

  else
  {
    v12 = 0;
    v13 = 0.0;
  }

  v21 = v1 - v12;
  v22 = (a1 + 8 * v12 + 32);
  do
  {
    v23 = *v22++;
    v13 = v13 + (v23 - v11) * (v23 - v11);
    --v21;
  }

  while (v21);
  return sqrt(v13 / (v10 + -1.0));
}

uint64_t sub_22F302DAC()
{
  v1 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  if (v1)
  {
    v2 = v1 + 64;
    v3 = 1 << *(v1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v1 + 64);
    v6 = (v3 + 63) >> 6;
    v7 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);

    v8 = 0;
    v0 = MEMORY[0x277D84F98];
    v50 = v1 + 64;
    v51 = v1;
    v49 = v6;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_8:
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v6)
      {

        return v0;
      }

      v5 = *(v2 + 8 * v13);
      ++v8;
      if (v5)
      {
        while (1)
        {
          v54 = v5;
          v55 = v0;
          v14 = __clz(__rbit64(v5)) | (v13 << 6);
          v15 = (*(v1 + 48) + 16 * v14);
          v16 = v15[1];
          v56 = *v15;
          v17 = *(*(v1 + 56) + 8 * v14);
          v53 = v13;
          if (v17 >> 62)
          {
            v31 = v15[1];
            v18 = sub_22F741A00();
            v16 = v31;
            if (!v18)
            {
LABEL_21:

              v29 = MEMORY[0x277D84F90];
              v30 = v32;
              goto LABEL_22;
            }
          }

          else
          {
            v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v18)
            {
              goto LABEL_21;
            }
          }

          v60 = MEMORY[0x277D84F90];
          v52 = v16;

          sub_22F741BD0();
          if (v18 < 0)
          {
            goto LABEL_37;
          }

          v19 = 0;
          v57 = v17 & 0xC000000000000001;
          v58 = v17;
          do
          {
            if (v57)
            {
              v20 = MEMORY[0x2319016F0](v19, v17);
            }

            else
            {
              v20 = *(v17 + 8 * v19 + 32);
            }

            v21 = v20;
            ++v19;
            v22 = *&v20[OBJC_IVAR___PGTripLocationScore_locationNode];
            v23 = *&v20[OBJC_IVAR___PGTripLocationScore__score];
            v24 = *&v20[OBJC_IVAR___PGTripLocationScore_momentNodes];
            v25 = type metadata accessor for TripLocationScore();
            v26 = objc_allocWithZone(v25);
            *&v26[OBJC_IVAR___PGTripLocationScore_locationNode] = v22;
            *&v26[OBJC_IVAR___PGTripLocationScore__score] = v23;
            *&v26[OBJC_IVAR___PGTripLocationScore_momentNodes] = v24;
            v59.receiver = v26;
            v59.super_class = v25;

            v27 = v22;
            objc_msgSendSuper2(&v59, sel_init);

            sub_22F741BA0();
            v28 = v60[2];
            sub_22F741BE0();
            sub_22F741BF0();
            sub_22F741BB0();
            v17 = v58;
          }

          while (v18 != v19);

          v29 = v60;
          v2 = v50;
          v1 = v51;
          v6 = v49;
          v30 = v52;
LABEL_22:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = v55;
          v34 = v30;
          v35 = sub_22F1229E8(v56, v30);
          v37 = v55[2];
          v38 = (v36 & 1) == 0;
          v39 = __OFADD__(v37, v38);
          v40 = v37 + v38;
          if (v39)
          {
            goto LABEL_36;
          }

          v41 = v36;
          if (v55[3] >= v40)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v46 = v35;
              sub_22F137B84();
              v35 = v46;
            }
          }

          else
          {
            sub_22F12BA58(v40, isUniquelyReferenced_nonNull_native);
            v35 = sub_22F1229E8(v56, v30);
            if ((v41 & 1) != (v42 & 1))
            {
              goto LABEL_39;
            }
          }

          v5 = (v54 - 1) & v54;
          if (v41)
          {
            v9 = v35;

            v10 = v60;
            v11 = v60[7];
            v12 = *(v11 + 8 * v9);
            *(v11 + 8 * v9) = v29;
            v0 = v10;

            v8 = v53;
            if (!v5)
            {
              goto LABEL_8;
            }
          }

          else
          {
            v0 = v60;
            v60[(v35 >> 6) + 8] |= 1 << v35;
            v43 = (v0[6] + 16 * v35);
            *v43 = v56;
            v43[1] = v34;
            *(v0[7] + 8 * v35) = v29;
            v44 = v0[2];
            v39 = __OFADD__(v44, 1);
            v45 = v44 + 1;
            if (v39)
            {
              goto LABEL_38;
            }

            v0[2] = v45;
            v8 = v53;
            if (!v5)
            {
              goto LABEL_8;
            }
          }

LABEL_7:
          v13 = v8;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_22F7420C0();
    __break(1u);
  }

  else
  {
    sub_22F2FCEA4();
    swift_allocError();
    *v47 = 0u;
    *(v47 + 16) = 0u;
    *(v47 + 32) = 3;
    swift_willThrow();
    return v0;
  }

  return result;
}

uint64_t sub_22F3031B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F784270;
  type metadata accessor for ScoreModifier();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = xmmword_22F784280;
  *(v2 + 72) = 1;
  *(v2 + 56) = 0xD000000000000014;
  *(v2 + 64) = 0x800000022F79A300;
  *(v2 + 16) = sub_22F305458() & 1;
  *(inited + 32) = v2;
  v75 = inited + 32;
  v3 = swift_allocObject();
  *(v3 + 24) = xmmword_22F784290;
  *(v3 + 40) = xmmword_22F7842A0;
  *(v3 + 72) = 1;
  *(v3 + 56) = 0xD00000000000001DLL;
  *(v3 + 64) = 0x800000022F79A320;
  *(v3 + 16) = sub_22F3056B0();
  *(inited + 40) = v3;
  v4 = swift_allocObject();
  v83 = vdupq_n_s64(0x3FB999999999999AuLL);
  *(v4 + 24) = v83;
  *(v4 + 40) = xmmword_22F784290;
  *(v4 + 72) = 1;
  *(v4 + 56) = 0xD00000000000001DLL;
  *(v4 + 64) = 0x800000022F79A340;
  *(v4 + 16) = sub_22F304B98() & 1;
  *(inited + 48) = v4;
  v5 = swift_allocObject();
  *(v5 + 24) = xmmword_22F7842B0;
  *(v5 + 40) = v83;
  *(v5 + 72) = 1;
  *(v5 + 56) = 0xD00000000000001BLL;
  *(v5 + 64) = 0x800000022F79A360;
  *(v5 + 16) = sub_22F304E94() & 1;
  *(inited + 56) = v5;
  v6 = swift_allocObject();
  *(v6 + 24) = xmmword_22F784290;
  *(v6 + 40) = xmmword_22F7842A0;
  *(v6 + 72) = 0;
  *(v6 + 56) = 0xD00000000000001FLL;
  *(v6 + 64) = 0x800000022F79A380;
  v82 = v0;
  *(v6 + 16) = sub_22F305990();
  *(inited + 64) = v6;
  v88[0] = sub_22F740E20();
  v88[1] = v7;
  v88[2] = sub_22F740E20();
  v88[3] = v8;
  v9 = 0;
  v10 = 0;
  v88[4] = sub_22F740E20();
  v88[5] = v11;
  v69 = OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel;
  v86 = inited & 0xC000000000000001;
  v81 = inited;
  v76 = inited & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    v70 = v9;
    if (v10 == 3)
    {
      swift_arrayDestroy();
      v32 = OBJC_IVAR___PGTripFeatureProcessor_scoreByAOI;
      swift_beginAccess();
      v33 = *(v82 + v32);
      v36 = *(v33 + 64);
      v35 = v33 + 64;
      v34 = v36;
      v37 = 1 << *(*(v82 + v32) + 32);
      v38 = -1;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      v80 = v38 & v34;
      v39 = (v37 + 63) >> 6;
      v79 = *(v82 + v32);

      v40 = 0;
      v77 = v35;
      v74 = v39;
LABEL_38:
      v41 = v80;
      if (!v80)
      {
        do
        {
          v42 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_72;
          }

          if (v42 >= v39)
          {
            swift_setDeallocating();
            v67 = *(v81 + 16);
            swift_arrayDestroy();

            sub_22F7416A0();
            return v9 & 1;
          }

          v41 = *(v35 + 8 * v42);
          ++v40;
        }

        while (!v41);
        v40 = v42;
      }

      v80 = (v41 - 1) & v41;
      v43 = (v40 << 9) | (8 * __clz(__rbit64(v41)));
      v44 = *(*(v79 + 56) + v43);
      v85 = *(*(v79 + 48) + v43);
      v45 = 0;
      if (v86)
      {
LABEL_44:
        v46 = MEMORY[0x2319016F0](v45, v81);
        goto LABEL_47;
      }

      while (1)
      {
        if (v45 >= *(v76 + 16))
        {
          goto LABEL_71;
        }

        v46 = *(v81 + 8 * v45 + 32);

LABEL_47:
        v47 = sub_22F740E20();
        v48 = (*(*v46 + 200))(v47);

        swift_beginAccess();
        v49 = v85;
        v50 = *(v82 + v32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = *(v82 + v32);
        v52 = v89;
        *(v82 + v32) = 0x8000000000000000;
        v54 = sub_22F12350C(v49);
        v55 = v52[2];
        v56 = (v53 & 1) == 0;
        v57 = v55 + v56;
        if (__OFADD__(v55, v56))
        {
          break;
        }

        v58 = v53;
        if (v52[3] >= v57)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22F1377B8();
          }
        }

        else
        {
          sub_22F12B498(v57, isUniquelyReferenced_nonNull_native);
          v59 = sub_22F12350C(v49);
          if ((v58 & 1) != (v60 & 1))
          {
            goto LABEL_73;
          }

          v54 = v59;
        }

        v61 = v44 * v48;
        v62 = v89;
        if (v58)
        {
          *(v89[7] + 8 * v54) = v61;
        }

        else
        {
          v89[(v54 >> 6) + 8] |= 1 << v54;
          *(v62[6] + 8 * v54) = v49;
          *(v62[7] + 8 * v54) = v61;
          v63 = v62[2];
          v64 = __OFADD__(v63, 1);
          v65 = v63 + 1;
          if (v64)
          {
            goto LABEL_70;
          }

          v62[2] = v65;
        }

        *(v82 + v32) = v62;
        swift_endAccess();
        if (v46[72] == 1)
        {
          v66 = v46[16];

          if ((v66 & 1) != 0 || v45 == 4)
          {
LABEL_37:

            v9 = v70;
            v35 = v77;
            v39 = v74;
            goto LABEL_38;
          }
        }

        else
        {

          if (v45 == 4)
          {
            goto LABEL_37;
          }
        }

        ++v45;
        if (v86)
        {
          goto LABEL_44;
        }
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      sub_22F120634(0, &qword_2810A9160, off_27887ABD8);
      result = sub_22F7420C0();
      __break(1u);
      return result;
    }

    v12 = &v88[2 * v10];
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v82 + v69);
    if (!v15)
    {

      goto LABEL_10;
    }

    v16 = *(v15 + 16);

    if (!v16)
    {
LABEL_10:
      v19 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    v17 = sub_22F1229E8(v14, v13);
    if ((v18 & 1) == 0)
    {

      goto LABEL_10;
    }

    v19 = *(*(v15 + 56) + 8 * v17);

LABEL_11:
    v72 = v10;
    if (v19 >> 62)
    {
      v20 = sub_22F741A00();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = 0;
    v78 = v13;
    v73 = v72 + 1;
    do
    {
      while (1)
      {
        if (v86)
        {
          v22 = MEMORY[0x2319016F0](v21, v81);
          if (v9)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v21 >= *(v76 + 16))
          {
            goto LABEL_68;
          }

          v22 = *(v75 + 8 * v21);

          if (v9)
          {
LABEL_17:
            v9 = 1;
            goto LABEL_21;
          }
        }

        v9 = *(v22 + 16);
LABEL_21:
        (*(*v22 + 200))(v14, v13);
        if (v20)
        {
          if (v20 < 1)
          {
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v24 = v23;
          if ((v19 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v20; ++i)
            {
              v26 = MEMORY[0x2319016F0](i, v19);
              *(v26 + OBJC_IVAR___PGTripLocationScore__score) = v24 * *(v26 + OBJC_IVAR___PGTripLocationScore__score);
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v27 = (v19 + 32);
            v28 = v20;
            do
            {
              v29 = *v27++;
              *(v29 + OBJC_IVAR___PGTripLocationScore__score) = v23 * *(v29 + OBJC_IVAR___PGTripLocationScore__score);
              --v28;
            }

            while (v28);
          }
        }

        ++v21;
        if (*(v22 + 16) == 1)
        {
          break;
        }

        if (v21 == 5)
        {
          goto LABEL_2;
        }
      }

      v30 = *(v22 + 64);
      v84 = *(v22 + 56);
      swift_beginAccess();

      sub_22F10BBDC(&v87, v84, v30);
      swift_endAccess();

      v31 = *(v22 + 72);

      if (v31)
      {
        break;
      }

      v13 = v78;
    }

    while (v21 != 5);
LABEL_2:

    v10 = v73;
    sub_22F741680();
    if (!v71)
    {
      continue;
    }

    break;
  }

  swift_arrayDestroy();
  v9 = v70;
  return v9 & 1;
}

void sub_22F303A90(void *a1, uint64_t a2)
{
  v167 = a2;
  v195 = a1;
  type metadata accessor for FrequentLocationModifier();
  inited = swift_initStackObject();
  *(inited + 144) = 0;
  *(inited + 80) = xmmword_22F7842C0;
  *(inited + 96) = xmmword_22F7842D0;
  v166 = inited + 96;
  *(inited + 112) = xmmword_22F7842E0;
  *(inited + 128) = xmmword_22F7842F0;
  v165 = inited + 128;
  *(inited + 24) = xmmword_22F784300;
  *(inited + 40) = xmmword_22F784310;
  *(inited + 16) = 1;
  *(inited + 72) = 0;
  *(inited + 56) = 0xD00000000000001ALL;
  *(inited + 64) = 0x800000022F79A2E0;
  v183 = inited;
  v4 = OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel;
  v203 = v2;
  v5 = *(v2 + OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    v189 = MEMORY[0x277D84F90];
    v190 = MEMORY[0x277D84F90];
    v201 = MEMORY[0x277D84F90];
    v14 = v184;
    goto LABEL_20;
  }

  v7 = sub_22F740E20();
  v9 = v8;
  if (*(v5 + 16) && (v10 = v7, , v11 = sub_22F1229E8(v10, v9), v13 = v12, , (v13 & 1) != 0))
  {
    v201 = *(*(v5 + 56) + 8 * v11);
  }

  else
  {

    v201 = MEMORY[0x277D84F90];
  }

  v15 = *(v203 + v4);
  if (!v15)
  {
    v23 = MEMORY[0x277D84F90];
    v189 = MEMORY[0x277D84F90];
LABEL_18:
    v190 = v23;
    v14 = v184;
    goto LABEL_20;
  }

  v16 = sub_22F740E20();
  v18 = v17;
  if (*(v15 + 16) && (v19 = v16, , v20 = sub_22F1229E8(v19, v18), v22 = v21, , (v22 & 1) != 0))
  {
    v189 = *(*(v15 + 56) + 8 * v20);
  }

  else
  {

    v189 = MEMORY[0x277D84F90];
  }

  v24 = *(v203 + v4);
  if (!v24)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v25 = sub_22F740E20();
  v27 = v26;
  v14 = v184;
  if (*(v24 + 16) && (v28 = v25, , v29 = sub_22F1229E8(v28, v27), v31 = v30, , (v31 & 1) != 0))
  {
    v190 = *(*(v24 + 56) + 8 * v29);
  }

  else
  {

    v190 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v32 = *(v203 + OBJC_IVAR___PGTripFeatureProcessor_processorHelper);
  v33 = sub_22F740E20();
  v35 = v34;
  v36 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_locationDictionaryCache;
  swift_beginAccess();
  v179 = v32;
  v37 = *(v32 + v36);
  if (*(v37 + 16) && (, v38 = sub_22F1229E8(v33, v35), v40 = v39, , (v40 & 1) != 0))
  {
    isUniquelyReferenced_nonNull_native = *(*(v37 + 56) + 8 * v38);
  }

  else
  {

    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  }

  v205 = v6;
  v42 = v201;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_225;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
  {
    v200 = (v42 >> 62);
    if (!i)
    {
      break;
    }

    v44 = 0;
    v198 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v199 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v196 = i;
    v197 = isUniquelyReferenced_nonNull_native + 32;
    v45 = v42 & 0xFFFFFFFFFFFFFF8;
    if (v42 < 0)
    {
      v46 = v42;
    }

    else
    {
      v46 = v42 & 0xFFFFFFFFFFFFFF8;
    }

    v193 = v46;
    v194 = isUniquelyReferenced_nonNull_native;
    v47 = v42 & 0xC000000000000001;
    while (1)
    {
      if (v199)
      {
        v48 = MEMORY[0x2319016F0](v44, v194);
      }

      else
      {
        if (v44 >= *(v198 + 16))
        {
          goto LABEL_218;
        }

        v48 = *(v197 + 8 * v44);
      }

      v14 = v48;
      v49 = __OFADD__(v44, 1);
      v50 = v44 + 1;
      if (v49)
      {
        break;
      }

      v202 = v50;
      if (v200)
      {
        v51 = sub_22F741A00();
      }

      else
      {
        v51 = *(v45 + 16);
      }

      v52 = 0;
      v53 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode;
      do
      {
        if (v51 == v52)
        {

          goto LABEL_32;
        }

        if (v47)
        {
          v54 = MEMORY[0x2319016F0](v52, v201);
        }

        else
        {
          if (v52 >= *(v45 + 16))
          {
            goto LABEL_205;
          }

          v54 = *(v201 + 8 * v52 + 32);
        }

        isUniquelyReferenced_nonNull_native = v54;
        if (__OFADD__(v52, 1))
        {
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:

          v155 = v172;
LABEL_202:

          return;
        }

        sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
        v55 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGTripLocationScore_locationNode);
        v56 = *&v14[v53];
        v42 = sub_22F741810();

        ++v52;
      }

      while ((v42 & 1) == 0);
      sub_22F741BA0();
      isUniquelyReferenced_nonNull_native = *(v205 + 16);
      sub_22F741BE0();
      sub_22F741BF0();
      v42 = &v205;
      sub_22F741BB0();
LABEL_32:
      v44 = v202;
      v14 = v184;
      if (v202 == v196)
      {
        v57 = v205;
        isUniquelyReferenced_nonNull_native = v194;
        goto LABEL_52;
      }
    }

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
    ;
  }

  v57 = MEMORY[0x277D84F90];
LABEL_52:

  v58 = v57 < 0 || (v57 & 0x4000000000000000) != 0;
  v169 = v57;
  if (v58)
  {
    v163 = sub_22F741A00();
  }

  else
  {
    v163 = *(v57 + 16);
  }

  v59 = v201;
  v181 = [v195 supersetCountryNodes];
  v193 = v59 & 0xFFFFFFFFFFFFFF8;
  if (v200)
  {
    v195 = sub_22F741A00();
  }

  else
  {
    v195 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = 0;
  v194 = v59 & 0xC000000000000001;
  while (1)
  {
    v42 = v60;
    if (v195 == v60)
    {
      if (v58)
      {
        goto LABEL_199;
      }

LABEL_70:
      v66 = *(v169 + 16);
      if (!v66)
      {
        goto LABEL_200;
      }

LABEL_71:
      v67 = 0;
      v176 = OBJC_IVAR___PGTripFeatureProcessor_currentFrequentLocationNodes;
      v162 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
      v202 = OBJC_IVAR___PGTripFeatureProcessor_scoreByAOI;
      isUniquelyReferenced_nonNull_native = v169 & 0xC000000000000001;
      v164 = v169 + 32;
      v68 = v190 & 0xFFFFFFFFFFFFFF8;
      v188 = v190 & 0xFFFFFFFFFFFFFF8;
      if (v190 < 0)
      {
        v68 = v190;
      }

      v159 = v68;
      v69 = v189 & 0xFFFFFFFFFFFFFF8;
      v186 = v189 & 0xFFFFFFFFFFFFFF8;
      if (v189 < 0)
      {
        v69 = v189;
      }

      v158 = v69;
      v70 = v195 == v42;
      v42 = v169;
      if (v70)
      {
        v71 = 0.0;
      }

      else
      {
        v71 = 0.9;
      }

      v187 = v190 & 0xC000000000000001;
      v185 = v189 & 0xC000000000000001;
      v160 = v169 & 0xC000000000000001;
      v161 = v66;
      while (1)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v147 = v42;
          v72 = v67;
          v73 = MEMORY[0x2319016F0](v67, v147);
        }

        else
        {
          if (v67 >= *(v42 + 16))
          {
            goto LABEL_224;
          }

          v72 = v67;
          v73 = *(v164 + 8 * v67);
        }

        v172 = v73;
        v49 = __OFADD__(v72, 1);
        v42 = v72 + 1;
        if (v49)
        {
          goto LABEL_223;
        }

        v168 = v42;
        v74 = *&v172[OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode];
        objc_opt_self();
        v75 = swift_dynamicCastObjCClass();
        if (v75)
        {
          v76 = v75;
          v77 = v74;
          v78 = [v76 name];
          if (!v78)
          {
            sub_22F740E20();
            v78 = sub_22F740DF0();
          }

          v180 = [objc_opt_self() isLargeCountry_];
        }

        else
        {
          v180 = 0;
        }

        v79 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_momentsAtThisLocation;
        isUniquelyReferenced_nonNull_native = v172;
        swift_beginAccess();
        v80 = *(isUniquelyReferenced_nonNull_native + v79);
        if (v80 >> 62)
        {
          if (v80 < 0)
          {
            v148 = *(isUniquelyReferenced_nonNull_native + v79);
          }

          v149 = *(isUniquelyReferenced_nonNull_native + v79);
          v150 = sub_22F741A00();
          v80 = v149;
          v81 = v150;
          v82 = v168;
          if (v81)
          {
LABEL_90:
            v175 = v81;
            if (v190 >> 62)
            {
              v151 = v80;
              v152 = sub_22F741A00();
              v80 = v151;
              v192 = v152;
            }

            else
            {
              v192 = *(v188 + 16);
            }

            if (v189 >> 62)
            {
              v153 = v80;
              v154 = sub_22F741A00();
              v80 = v153;
              v191 = v154;
            }

            else
            {
              v191 = *(v186 + 16);
            }

            v177 = *(v203 + v162);
            v178 = v80 & 0xC000000000000001;
            v170 = v80 + 32;
            v171 = v80 & 0xFFFFFFFFFFFFFF8;
            if (v180)
            {
              v83 = 1.15;
            }

            else
            {
              v83 = 0.0;
            }

            v84 = v166;
            if (v180)
            {
              v84 = v165;
            }

            v173 = v84;
            v174 = v80;
            if (v180)
            {
              v85 = 2.0;
            }

            else
            {
              v85 = 0.0;
            }

            v42 = 0;
            while (1)
            {
              if (v178)
              {
                v86 = MEMORY[0x2319016F0](v42, v174);
              }

              else
              {
                if (v42 >= *(v171 + 16))
                {
                  goto LABEL_222;
                }

                v86 = *(v170 + 8 * v42);
              }

              v200 = v86;
              v49 = __OFADD__(v42++, 1);
              if (v49)
              {
                goto LABEL_221;
              }

              v182 = v42;
              v87 = *(v203 + v176);

              v88 = v200;
              v89 = [v200 happensAtFrequentLocation];
              *(v183 + 144) = v89;
              sub_22F309804(v88, v87, v177);
              v91 = v90;

              if (v89 || ((v91 | ((v91 & 0x100) >> 8)) & 1) == 0)
              {
                v92 = v183;
                v93 = *(v183 + 144);
              }

              else
              {
                v92 = v183;
                *(v183 + 144) = 1;
                if ((v91 & 0x100) != 0)
                {
                  *(v92 + 32) = 0;
                }

                else
                {
                  *(v92 + 32) = 0x3FECCCCCCCCCCCCDLL;
                }

                v93 = 1;
              }

              if ((v91 & 0x10000) != 0)
              {
                v94 = v71;
              }

              else
              {
                v94 = 0.9;
              }

              v95 = 1.15;
              if ((v91 & 0x10000) != 0)
              {
                v95 = v71;
              }

              *(v92 + 40) = v94;
              *(v92 + 128) = v95;
              v96 = 2.0;
              if ((v91 & 0x10000) != 0)
              {
                v96 = v71;
              }

              *(v92 + 145) = v180;
              *(v92 + 88) = v83;
              *(v92 + 96) = v96;
              if (v93)
              {
                v98 = *(v92 + 24);
                v97 = *(v92 + 32);
                v99 = *(v92 + 48);
                if (v195)
                {
                  goto LABEL_127;
                }
              }

              else
              {
                v94 = *v173;
                v98 = 0.85;
                v99 = 1.2;
                v97 = v85;
                if (v195)
                {
LABEL_127:
                  v100 = 0;
                  do
                  {
                    if (v194)
                    {
                      v101 = MEMORY[0x2319016F0](v100, v201);
                    }

                    else
                    {
                      if (v100 >= *(v193 + 16))
                      {
                        goto LABEL_210;
                      }

                      v101 = *(v201 + 8 * v100 + 32);
                    }

                    v102 = v101;
                    v103 = (v100 + 1);
                    if (__OFADD__(v100, 1))
                    {
                      goto LABEL_209;
                    }

                    v104 = *&v101[OBJC_IVAR___PGTripLocationScore_momentNodes];
                    v204[0] = v200;
                    MEMORY[0x28223BE20](v101);
                    v157 = v204;
                    if (sub_22F1C39A8(sub_22F30F9F0, v156, v105))
                    {
                      *&v102[OBJC_IVAR___PGTripLocationScore__score] = v94 * *&v102[OBJC_IVAR___PGTripLocationScore__score];

                      break;
                    }

                    ++v100;
                  }

                  while (v103 != v195);
                }
              }

              if (v192)
              {
                v106 = 0;
                do
                {
                  if (v187)
                  {
                    v107 = MEMORY[0x2319016F0](v106, v190);
                  }

                  else
                  {
                    if (v106 >= *(v188 + 16))
                    {
                      goto LABEL_212;
                    }

                    v107 = *(v190 + 8 * v106 + 32);
                  }

                  v108 = v107;
                  v109 = v106 + 1;
                  if (__OFADD__(v106, 1))
                  {
                    goto LABEL_211;
                  }

                  v110 = *&v107[OBJC_IVAR___PGTripLocationScore_momentNodes];
                  v204[0] = v200;
                  MEMORY[0x28223BE20](v107);
                  v157 = v204;
                  if (sub_22F1C39A8(sub_22F30F9F0, v156, v111))
                  {
                    *&v108[OBJC_IVAR___PGTripLocationScore__score] = v97 * *&v108[OBJC_IVAR___PGTripLocationScore__score];

                    break;
                  }

                  ++v106;
                }

                while (v109 != v192);
              }

              if (v191)
              {
                v112 = 0;
                do
                {
                  if (v185)
                  {
                    v113 = MEMORY[0x2319016F0](v112, v189);
                  }

                  else
                  {
                    if (v112 >= *(v186 + 16))
                    {
                      goto LABEL_214;
                    }

                    v113 = *(v189 + 8 * v112 + 32);
                  }

                  v114 = v113;
                  v115 = v112 + 1;
                  if (__OFADD__(v112, 1))
                  {
                    goto LABEL_213;
                  }

                  v116 = *&v113[OBJC_IVAR___PGTripLocationScore_momentNodes];
                  v204[0] = v200;
                  MEMORY[0x28223BE20](v113);
                  v157 = v204;
                  if (sub_22F1C39A8(sub_22F30F9F0, v156, v117))
                  {
                    *&v114[OBJC_IVAR___PGTripLocationScore__score] = v98 * *&v114[OBJC_IVAR___PGTripLocationScore__score];

                    break;
                  }

                  ++v112;
                }

                while (v115 != v191);
              }

              sub_22F3F0BF4(v200);
              v119 = v118;
              if (v118 >> 62)
              {
                isUniquelyReferenced_nonNull_native = sub_22F741A00();
              }

              else
              {
                isUniquelyReferenced_nonNull_native = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v184 = v14;
              swift_beginAccess();
              if (isUniquelyReferenced_nonNull_native)
              {
                v120 = 0;
                v198 = v119 & 0xFFFFFFFFFFFFFF8;
                v199 = v119 & 0xC000000000000001;
                v196 = isUniquelyReferenced_nonNull_native;
                v197 = v119;
                do
                {
                  if (v199)
                  {
                    v121 = MEMORY[0x2319016F0](v120, v119);
                  }

                  else
                  {
                    if (v120 >= *(v198 + 16))
                    {
                      goto LABEL_207;
                    }

                    v121 = *(v119 + 8 * v120 + 32);
                  }

                  v122 = v121;
                  v123 = v120 + 1;
                  if (__OFADD__(v120, 1))
                  {
                    goto LABEL_206;
                  }

                  v124 = *(v203 + v202);
                  if (*(v124 + 16))
                  {
                    v125 = *(v203 + v202);

                    v126 = sub_22F12350C(v122);
                    v127 = 0.0;
                    if (v128)
                    {
                      v127 = *(*(v124 + 56) + 8 * v126);
                    }
                  }

                  else
                  {
                    v127 = 0.0;
                  }

                  v129 = v202;
                  v130 = v203;
                  swift_beginAccess();
                  v131 = v122;
                  v132 = *(v130 + v129);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v206 = *(v130 + v129);
                  v133 = v206;
                  *(v130 + v129) = 0x8000000000000000;
                  v135 = sub_22F12350C(v131);
                  v136 = v133[2];
                  v137 = (v134 & 1) == 0;
                  v138 = v136 + v137;
                  if (__OFADD__(v136, v137))
                  {
                    goto LABEL_208;
                  }

                  v139 = v134;
                  if (v133[3] >= v138)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_22F1377B8();
                    }
                  }

                  else
                  {
                    sub_22F12B498(v138, isUniquelyReferenced_nonNull_native);
                    v140 = sub_22F12350C(v131);
                    if ((v139 & 1) != (v141 & 1))
                    {
                      sub_22F120634(0, &qword_2810A9160, off_27887ABD8);
                      sub_22F7420C0();
                      __break(1u);
                      return;
                    }

                    v135 = v140;
                  }

                  v142 = v99 * v127;
                  v143 = v206;
                  if (v139)
                  {
                    *(v206[7] + 8 * v135) = v142;
                  }

                  else
                  {
                    v206[(v135 >> 6) + 8] |= 1 << v135;
                    *(v143[6] + 8 * v135) = v131;
                    *(v143[7] + 8 * v135) = v142;
                    v144 = v143[2];
                    v49 = __OFADD__(v144, 1);
                    v145 = v144 + 1;
                    if (v49)
                    {
                      goto LABEL_215;
                    }

                    v143[2] = v145;
                  }

                  *(v203 + v202) = v143;
                  swift_endAccess();

                  ++v120;
                  v119 = v197;
                }

                while (v123 != v196);
              }

              v42 = v182;
              v14 = v184;
              if (v182 == v175)
              {

                v82 = v168;
                break;
              }
            }
          }
        }

        else
        {
          v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v82 = v168;
          if (v81)
          {
            goto LABEL_90;
          }
        }

        v146 = v82;
        sub_22F741680();
        if (v14)
        {
          goto LABEL_216;
        }

        v70 = v146 == v161;
        v42 = v169;
        v67 = v146;
        isUniquelyReferenced_nonNull_native = v160;
        if (v70)
        {
          goto LABEL_200;
        }
      }
    }

    if (v194)
    {
      v61 = MEMORY[0x2319016F0](v60, v201);
    }

    else
    {
      if (v60 >= *(v193 + 16))
      {
        goto LABEL_220;
      }

      v61 = *(v201 + 8 * v60 + 32);
    }

    v62 = v61;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_219;
    }

    v63 = *&v61[OBJC_IVAR___PGTripLocationScore_locationNode];
    objc_opt_self();
    v64 = swift_dynamicCastObjCClass();
    if (!v64)
    {
      break;
    }

    v65 = v64;
    isUniquelyReferenced_nonNull_native = v63;
    LOBYTE(v65) = [v181 containsNode_];

    v60 = v42 + 1;
    if ((v65 & 1) == 0)
    {
      goto LABEL_198;
    }
  }

LABEL_198:
  if (!v58)
  {
    goto LABEL_70;
  }

LABEL_199:
  v66 = sub_22F741A00();
  if (v66)
  {
    goto LABEL_71;
  }

LABEL_200:

  sub_22F7416A0();
  if (v14)
  {
    v155 = v181;
    goto LABEL_202;
  }
}

uint64_t sub_22F304B98()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = sub_22F740E20();
    v6 = v5;
    if (*(v2 + 16) && (v7 = v4, , v8 = sub_22F1229E8(v7, v6), v10 = v9, , (v10 & 1) != 0))
    {
      v11 = *(*(v2 + 56) + 8 * v8);
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_18:

    v21 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_graph);
    v22 = objc_allocWithZone(PGGraphLocationNodeCollection);
    sub_22F120634(0, &unk_2810A9060, off_27887AFF0);
    v23 = v21;
    v24 = sub_22F741160();

    v25 = [v22 initWithArray:v24 graph:v23];

    v26 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_locationHelper);
    v27 = [v26 addressNodesFromLocationNodes_];
    v28 = [objc_opt_self() visitedLocations:v27 onlyDuringMoments:*(v1 + OBJC_IVAR___PGTripFeatureProcessor_momentNodes) locationHelper:v26];

    return v28;
  }

  v12 = sub_22F741A00();
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v3;
  result = sub_22F741BD0();
  if ((v12 & 0x8000000000000000) == 0)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = 0;
      do
      {
        v15 = v14 + 1;
        v16 = *(MEMORY[0x2319016F0]() + OBJC_IVAR___PGTripLocationScore_locationNode);
        swift_unknownObjectRelease();
        sub_22F741BA0();
        v17 = *(v29 + 16);
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v14 = v15;
      }

      while (v12 != v15);
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = *(*(v11 + v18) + OBJC_IVAR___PGTripLocationScore_locationNode);
        sub_22F741BA0();
        v20 = *(v29 + 16);
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v18 += 8;
        --v12;
      }

      while (v12);
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F304E94()
{
  v1 = v0;
  v2 = OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel;
  v3 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = sub_22F740E20();
    v7 = v6;
    if (*(v3 + 16) && (v8 = v5, , v9 = sub_22F1229E8(v8, v7), v11 = v10, , (v11 & 1) != 0))
    {
      v12 = *(*(v3 + 56) + 8 * v9);
    }

    else
    {

      v12 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v12 >> 62)
  {
    v13 = sub_22F741A00();
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  v55 = v4;
  result = sub_22F741BD0();
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v15 = 0;
    do
    {
      v16 = v15 + 1;
      v17 = *(MEMORY[0x2319016F0]() + OBJC_IVAR___PGTripLocationScore_locationNode);
      swift_unknownObjectRelease();
      sub_22F741BA0();
      v18 = *(v55 + 16);
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      v15 = v16;
    }

    while (v13 != v16);
  }

  else
  {
    v19 = 32;
    do
    {
      v20 = *(*(v12 + v19) + OBJC_IVAR___PGTripLocationScore_locationNode);
      sub_22F741BA0();
      v21 = *(v55 + 16);
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      v19 += 8;
      --v13;
    }

    while (v13);
  }

LABEL_18:

  v22 = *(v1 + v2);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v24 = sub_22F740E20();
    v26 = v25;
    if (*(v22 + 16) && (v27 = v24, , v28 = sub_22F1229E8(v27, v26), v30 = v29, , (v30 & 1) != 0))
    {
      v31 = *(*(v22 + 56) + 8 * v28);
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_26;
    }

LABEL_35:

    v40 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v32 = sub_22F741A00();
  if (!v32)
  {
    goto LABEL_35;
  }

LABEL_26:
  v56 = v23;
  result = sub_22F741BD0();
  if (v32 < 0)
  {
LABEL_52:
    __break(1u);
    return result;
  }

  if ((v31 & 0xC000000000000001) != 0)
  {
    v33 = 0;
    do
    {
      v34 = v33 + 1;
      v35 = *(MEMORY[0x2319016F0]() + OBJC_IVAR___PGTripLocationScore_locationNode);
      swift_unknownObjectRelease();
      sub_22F741BA0();
      v36 = *(v56 + 16);
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      v33 = v34;
    }

    while (v32 != v34);
  }

  else
  {
    v37 = 32;
    do
    {
      v38 = *(*(v31 + v37) + OBJC_IVAR___PGTripLocationScore_locationNode);
      sub_22F741BA0();
      v39 = *(v56 + 16);
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      v37 += 8;
      --v32;
    }

    while (v32);
  }

  v40 = v56;
LABEL_36:
  if (v40 >> 62)
  {
LABEL_50:
    v41 = sub_22F741A00();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v41 != i; ++i)
  {
    if ((v40 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x2319016F0](i, v40);
    }

    else
    {
      if (i >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v43 = *(v40 + 8 * i + 32);
    }

    v44 = v43;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v45 = objc_opt_self();
    v46 = [v44 name];
    LOBYTE(v45) = [v45 isLargeCountry_];

    if ((v45 & 1) == 0)
    {

      return 0;
    }
  }

  v47 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_graph);
  v48 = objc_allocWithZone(PGGraphLocationNodeCollection);
  sub_22F120634(0, &unk_2810A9060, off_27887AFF0);
  v49 = v47;
  v50 = sub_22F741160();

  v51 = [v48 initWithArray:v50 graph:v49];

  v52 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_locationHelper);
  v53 = [v52 addressNodesFromLocationNodes_];
  v54 = [objc_opt_self() visitedLocations:v53 onlyDuringMoments:*(v1 + OBJC_IVAR___PGTripFeatureProcessor_momentNodes) locationHelper:v52];

  return v54;
}

uint64_t sub_22F305458()
{
  v1 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = sub_22F740E20();
    v5 = v4;
    if (*(v1 + 16) && (v6 = v3, , v7 = sub_22F1229E8(v6, v5), v9 = v8, , (v9 & 1) != 0))
    {
      v10 = *(*(v1 + 56) + 8 * v7);
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_20:

    v20 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_17:
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

      return v21 > 4;
    }

LABEL_21:
    v21 = sub_22F741A00();
    goto LABEL_18;
  }

  v11 = sub_22F741A00();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_9:
  v22 = v2;
  result = sub_22F741BD0();
  if ((v11 & 0x8000000000000000) == 0)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = v13 + 1;
        v15 = *(MEMORY[0x2319016F0]() + OBJC_IVAR___PGTripLocationScore_locationNode);
        swift_unknownObjectRelease();
        sub_22F741BA0();
        v16 = *(v22 + 16);
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v13 = v14;
      }

      while (v11 != v14);
    }

    else
    {
      v17 = 32;
      do
      {
        v18 = *(*(v10 + v17) + OBJC_IVAR___PGTripLocationScore_locationNode);
        sub_22F741BA0();
        v19 = *(v22 + 16);
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v17 += 8;
        --v11;
      }

      while (v11);
    }

    v20 = v22;
    if (!(v22 >> 62))
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

BOOL sub_22F3056B0()
{
  v1 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_22F740E20();
  v4 = v3;
  if (!*(v1 + 16))
  {
    goto LABEL_27;
  }

  v5 = v2;
  v26 = v0;

  v6 = sub_22F1229E8(v5, v4);
  LOBYTE(v5) = v7;

  if ((v5 & 1) == 0)
  {
    goto LABEL_27;
  }

  v8 = *(*(v1 + 56) + 8 * v6);

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v26;
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_21:
  v10 = v26;
  if (sub_22F741A00() <= 0)
  {
LABEL_27:

    return 0;
  }

  v9 = sub_22F741A00();
  if (v9)
  {
LABEL_6:
    v11 = 0;
    v12 = OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2319016F0](v11, v8);
      }

      else
      {
        if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (*&v13[OBJC_IVAR___PGTripLocationScore__score] / *(v10 + v12) >= 0.85)
      {
        v16 = *&v13[OBJC_IVAR___PGTripLocationScore_locationNode];
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }
      }

      ++v11;
      if (v15 == v9)
      {
        goto LABEL_23;
      }
    }

    v17 = v16;

    v18 = OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes;
    swift_beginAccess();
    v19 = v17;
    MEMORY[0x231900D00]();
    if (*((*(v26 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v26 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((*(v26 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F7411C0();
    }

    sub_22F741220();
    v10 = v26;
    swift_endAccess();

    goto LABEL_24;
  }

LABEL_23:

LABEL_24:
  v20 = OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes;
  swift_beginAccess();
  v21 = *(v10 + v20);
  if (v21 >> 62)
  {
    if (v21 < 0)
    {
      v24 = *(v10 + v20);
    }

    v22 = sub_22F741A00();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v22 != 0;
}

BOOL sub_22F305990()
{
  v1 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_22F740E20();
  v4 = v3;
  if (!*(v1 + 16))
  {
    goto LABEL_48;
  }

  v5 = v2;
  v40 = v0;

  v6 = sub_22F1229E8(v5, v4);
  LOBYTE(v5) = v7;

  if ((v5 & 1) == 0)
  {
    goto LABEL_48;
  }

  v8 = *(*(v1 + 56) + 8 * v6);

  v9 = OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes;
  v10 = v40;
  swift_beginAccess();
  v11 = *&v9[v40];
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v33 = *&v9[v40];
    }

    if (sub_22F741A00())
    {
      goto LABEL_48;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

  if (v8 >> 62)
  {
LABEL_44:
    if (sub_22F741A00() >= 2)
    {
      v34 = sub_22F741A00();
      if (v34)
      {
        v12 = v34;
        if (v34 >= 1)
        {
          v10 = v40;
          goto LABEL_8;
        }

        __break(1u);
      }
    }

LABEL_48:

    return 0;
  }

  v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12 < 2)
  {
    goto LABEL_48;
  }

LABEL_8:
  v13 = 0;
  v14 = 0;
  v15 = OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable;
  v16 = v8 & 0xC000000000000001;
  v17 = 0.0;
  do
  {
    if (v16)
    {
      v18 = MEMORY[0x2319016F0](v13, v8);
    }

    else
    {
      v18 = *(v8 + 8 * v13 + 32);
    }

    v19 = v18;
    v20 = *&v18[OBJC_IVAR___PGTripLocationScore__score] / *(v10 + v15);
    if (v17 >= v20)
    {
    }

    else
    {

      v17 = v20;
      v14 = v19;
    }

    ++v13;
  }

  while (v12 != v13);
  if (!v14)
  {
    goto LABEL_48;
  }

  v21 = *&v14[OBJC_IVAR___PGTripLocationScore_locationNode];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    return 0;
  }

  v22 = v14;
  v39 = v9;
  v38 = v21;
  v23 = 0;
  while (1)
  {
    if (v16)
    {
      v24 = MEMORY[0x2319016F0](v23, v8);
    }

    else
    {
      if (v23 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_44;
      }

      v24 = *(v8 + 8 * v23 + 32);
    }

    v9 = v24;
    if (([v24 isEqual_] & 1) == 0 && v17 + *&v9[OBJC_IVAR___PGTripLocationScore__score] / *(v10 + v15) >= 0.85)
    {
      v25 = *&v9[OBJC_IVAR___PGTripLocationScore_locationNode];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }
    }

    ++v23;

    if (v12 == v23)
    {

      v29 = v38;
      v27 = v39;
      goto LABEL_35;
    }
  }

  v26 = v25;

  v27 = v39;
  swift_beginAccess();
  v28 = v26;
  MEMORY[0x231900D00]();
  if (*((*&v27[v40] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v27[v40] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v36 = *((*&v39[v40] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F7411C0();
  }

  sub_22F741220();
  v29 = v38;
  MEMORY[0x231900D00](v38);
  if (*((*&v39[v40] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v39[v40] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((*&v39[v40] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F7411C0();
  }

  sub_22F741220();
  v10 = v40;
  swift_endAccess();

LABEL_35:
  v30 = *&v27[v10];
  if (v30 >> 62)
  {
    if (v30 < 0)
    {
      v35 = *&v27[v10];
    }

    v31 = sub_22F741A00();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v31 != 0;
}

uint64_t sub_22F305E00(unint64_t a1, uint64_t a2)
{
  v4 = v3;
  v160 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v192 = &v154 - v8;
  v9 = sub_22F73F090();
  v195 = *(v9 - 8);
  v10 = *(v195 + 64);
  MEMORY[0x28223BE20](v9);
  v188 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v175 = &v154 - v13;
  MEMORY[0x28223BE20](v14);
  v178 = &v154 - v15;
  MEMORY[0x28223BE20](v16);
  v168 = &v154 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v197 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v196 = (&v154 - v22);
  v182 = sub_22F73F690();
  v180 = *(v182 - 8);
  v23 = *(v180 + 64);
  MEMORY[0x28223BE20](v182);
  v25 = (&v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v167 = &v154 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v154 - v29;
  MEMORY[0x28223BE20](v31);
  v179 = &v154 - v32;
  MEMORY[0x28223BE20](v33);
  v166 = &v154 - v34;
  MEMORY[0x28223BE20](v35);
  v163 = &v154 - v36;
  v37 = [objc_allocWithZone(MEMORY[0x277D22C88]) initWithProgressReporter_];
  v38 = [v37 childProgressReporterToCheckpoint_];
  v159 = v37;
  v161 = [v37 childProgressReporterToCheckpoint_];
  v158 = v2;
  sub_22F73F080();
  v40 = v39 / 86400.0;
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_124;
  }

  if (v40 <= -9.22337204e18)
  {
    goto LABEL_125;
  }

  if (v40 >= 9.22337204e18)
  {
    goto LABEL_126;
  }

  if (__OFADD__(v40, 1))
  {
    goto LABEL_127;
  }

  v157 = v40 + 1;
  v41 = v160;
  if (v160 >> 62)
  {
    goto LABEL_128;
  }

  v42 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v183 = v42;
LABEL_7:
  v43 = v182;
  v44 = v38;
  v172 = v38;
  v177 = v25;
  if (!v42)
  {
    goto LABEL_49;
  }

  v38 = 0;
  v176 = v41 & 0xC000000000000001;
  v171 = v41 & 0xFFFFFFFFFFFFFF8;
  v170 = v41 + 32;
  v193 = (v180 + 48);
  v194 = v180 + 56;
  v162 = v180 + 32;
  v165 = v180 + 16;
  v181 = MEMORY[0x277D84F98];
  v164 = (v180 + 8);
  v173 = v30;
  v169 = v42;
  while (!v176)
  {
    if (v38 >= *(v171 + 16))
    {
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
      v183 = sub_22F741A00();
      v153 = sub_22F741A00();
      v41 = v160;
      v42 = v153;
      goto LABEL_7;
    }

    v45 = *(v170 + 8 * v38);
    v46 = __OFADD__(v38++, 1);
    if (v46)
    {
      goto LABEL_48;
    }

LABEL_12:
    v174 = v4;
    v190 = v45;
    v47 = [v45 dateNodes];
    v48 = sub_22F120634(0, &qword_2810A9158, off_27887AD10);
    sub_22F11FA28(&qword_2810A9150, &qword_2810A9158, off_27887AD10);
    v49 = sub_22F741420();

    v187 = v38;
    v186 = v49;
    if ((v49 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_22F7419C0();
      sub_22F741470();
      v50 = v201[3];
      v51 = v201[4];
      v52 = v201[5];
      v53 = v201[6];
      v25 = v201[7];
    }

    else
    {
      v54 = -1 << *(v49 + 32);
      v51 = (v49 + 56);
      v52 = ~v54;
      v55 = -v54;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v57 = (v56 & *(v49 + 56));

      v53 = 0;
      v25 = v57;
    }

    v191 = v48;
    v185 = v52;
    v58 = (v52 + 64) >> 6;
    v189 = MEMORY[0x277D84F90];
    v59 = v51;
    v198 = v50;
    v60 = v53;
    if (v50 < 0)
    {
LABEL_19:
      v61 = sub_22F741A40();
      if (!v61)
      {
        goto LABEL_40;
      }

      v200 = v61;
      swift_dynamicCast();
      v62 = v201[0];
      v38 = v60;
      v63 = v25;
      if (!v201[0])
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v64 = v60;
      v65 = v25;
      v38 = v60;
      if (!v25)
      {
        while (1)
        {
          v38 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            break;
          }

          if (v38 >= v58)
          {
            v25 = 0;
            goto LABEL_40;
          }

          v65 = v51[v38];
          v64 = (v64 + 1);
          if (v65)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_113:

        v122 = v161;
        v152 = v174;
        sub_22F7416A0();
        if (v152)
        {
        }

        else
        {
LABEL_118:
        }

        return v38;
      }

LABEL_26:
      v63 = (v65 - 1) & v65;
      v62 = *(*(v50 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v65)))));
      if (!v62)
      {
        break;
      }

LABEL_27:
      v66 = [v62 localDate];
      if (v66)
      {
        v67 = v197;
        v68 = v66;
        sub_22F73F640();

        v69 = 0;
      }

      else
      {
        v69 = 1;
        v67 = v197;
      }

      (*v194)(v67, v69, 1, v43);
      v70 = v196;
      sub_22F168438(v67, v196);
      if ((*v193)(v70, 1, v43) == 1)
      {
        sub_22F120ADC(v70, &qword_27DAB0920, &qword_22F770B20);
        v60 = v38;
        v25 = v63;
        v51 = v59;
        v50 = v198;
        if ((v198 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v71 = *v162;
        (*v162)(v163, v70, v43);
        v72 = v189;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_22F13E15C(0, v72[2] + 1, 1, v72);
        }

        v74 = v72[2];
        v73 = v72[3];
        if (v74 >= v73 >> 1)
        {
          v72 = sub_22F13E15C(v73 > 1, v74 + 1, 1, v72);
        }

        v72[2] = v74 + 1;
        v75 = (*(v180 + 80) + 32) & ~*(v180 + 80);
        v189 = v72;
        v76 = v72 + v75 + *(v180 + 72) * v74;
        v43 = v182;
        v71(v76, v163, v182);
        v51 = v59;
        v50 = v198;
        v25 = v63;
        v60 = v38;
        if ((v198 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_40:
    sub_22F0FF590();

    v201[0] = v189;

    v77 = v174;
    sub_22F2FBD28(v201);
    v4 = v77;
    if (v77)
    {
      goto LABEL_130;
    }

    v78 = v201[0][2];
    v44 = v172;
    if (v78)
    {
      v79 = v201[0] + ((*(v180 + 80) + 32) & ~*(v180 + 80));
      v80 = *(v180 + 16);
      v81 = v180;
      v198 = v201[0];
      v82 = v166;
      v83 = v182;
      v80(v166, v79, v182);
      v84 = &v79[*(v81 + 72) * (v78 - 1)];
      v85 = v179;
      v80(v179, v84, v83);

      v80(v173, v82, v83);
      v80(v167, v85, v83);
      v86 = v190;
      v25 = v168;
      sub_22F73F040();
      v87 = v181;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v201[0] = v87;
      sub_22F132558(v25, v86, isUniquelyReferenced_nonNull_native);

      v89 = *(v180 + 8);
      v44 = v172;
      v89(v85, v83);
      v89(v82, v83);
      v90 = v201[0];
    }

    else
    {

      v90 = v181;
    }

    v38 = v187;
    sub_22F741680();
    v181 = v90;

    v43 = v182;
    v30 = v173;
    if (v38 == v169)
    {
      goto LABEL_50;
    }
  }

  v45 = MEMORY[0x2319016F0](v38, v160);
  v46 = __OFADD__(v38++, 1);
  if (!v46)
  {
    goto LABEL_12;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v181 = MEMORY[0x277D84F98];
LABEL_50:
  sub_22F7416A0();
  if (v4)
  {

    return v38;
  }

  v174 = 0;
  v92 = *(v158 + OBJC_IVAR___PGTripFeatureProcessor_processorHelper);
  v93 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_locationDictionaryCache;
  swift_beginAccess();
  v94 = *(v92 + v93);
  v158 = *(v94 + 16);
  v95 = *(v94 + 64);
  v156 = v94 + 64;
  v96 = 1 << *(v94 + 32);
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & v95;
  v155 = (v96 + 63) >> 6;
  v99 = v157;
  v187 = (v195 + 56);
  v4 = (v195 + 16);
  v186 = (v195 + 48);
  v185 = (v195 + 32);
  v100 = (v180 + 16);
  v25 = (v180 + 8);
  v183 = (v195 + 8);
  v162 = v94;

  v163 = 0;
  v101 = 0;
  v38 = MEMORY[0x277D84F98];
  v191 = v25;
  v184 = v9;
  v173 = v30;
  v176 = v4;
  v197 = v100;
  while (1)
  {
    if (v98)
    {
      v102 = v98;
    }

    else
    {
      do
      {
        v104 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          goto LABEL_122;
        }

        if (v104 >= v155)
        {
          goto LABEL_113;
        }

        v102 = *(v156 + 8 * v104);
        ++v101;
      }

      while (!v102);
      v101 = v104;
    }

    v46 = __OFADD__(v163++, 1);
    if (v46)
    {
      break;
    }

    v105 = *(*(v162 + 56) + ((v101 << 9) | (8 * __clz(__rbit64(v102)))));
    v160 = v101;
    if (v105 >> 62)
    {
      v166 = v105;
      v150 = v102;
      v151 = sub_22F741A00();
      v102 = v150;
      v106 = v151;
      v105 = v166;
      if (v106)
      {
LABEL_67:
        v157 = v102;
        v168 = (v105 & 0xC000000000000001);
        v165 = v105 & 0xFFFFFFFFFFFFFF8;
        v164 = (v105 + 32);
        v166 = v105;

        v107 = 0;
        v167 = v106;
        while (1)
        {
          if (v168)
          {
            v112 = v107;
            v113 = MEMORY[0x2319016F0](v107, v166);
          }

          else
          {
            if (v107 >= *(v165 + 16))
            {
              goto LABEL_123;
            }

            v112 = v107;
            v113 = *&v164[8 * v107];
          }

          v171 = v113;
          v46 = __OFADD__(v112, 1);
          v114 = v112 + 1;
          if (v46)
          {
            goto LABEL_121;
          }

          v169 = v114;
          v202 = MEMORY[0x277D84FA0];
          v115 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_momentsAtThisLocation;
          v116 = v171;
          swift_beginAccess();
          v117 = *(v116 + v115);
          v118 = v117;
          if (v117 >> 62)
          {
            if (v117 < 0)
            {
              v149 = *(v116 + v115);
            }

            v117 = *(v116 + v115);
            v119 = sub_22F741A00();
          }

          else
          {
            v119 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v120 = v181;
          v170 = v38;

          if (v119)
          {
            break;
          }

          v196 = MEMORY[0x277D84F90];
LABEL_97:

          v190 = v196[2];
          if (v190)
          {
            v38 = 0;
            v189 = (v196 + ((*(v195 + 80) + 32) & ~*(v195 + 80)));
            v122 = v178;
            v137 = v196;
            v138 = v173;
            while (v38 < v137[2])
            {
              (*(v195 + 16))(v122, v189 + *(v195 + 72) * v38, v9);
              v139 = sub_22F30731C(v122);
              v140 = v139[2];
              if (v140)
              {
                v193 = v38;
                v141 = *(v180 + 80);
                v194 = v139;
                v142 = v139 + ((v141 + 32) & ~v141);
                v198 = *(v180 + 72);
                v143 = *(v180 + 16);
                v144 = v138;
                v145 = v177;
                v146 = v182;
                v147 = v179;
                do
                {
                  v143(v145, v142, v146);
                  v143(v144, v145, v146);
                  sub_22F10C984(v147, v144);
                  v148 = *v25;
                  (*v25)(v147, v146);
                  v148(v145, v146);
                  v142 += v198;
                  --v140;
                }

                while (v140);

                v122 = v178;
                v138 = v144;
                v4 = v176;
                v137 = v196;
                v38 = v193;
              }

              else
              {
              }

              ++v38;
              v9 = v184;
              (*v183)(v122, v184);
              if (v38 == v190)
              {
                goto LABEL_68;
              }
            }

LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

LABEL_68:

          v30 = v171;
          v108 = *(v202 + 16) / v99;
          v109 = *(v171 + OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode);
          v110 = v170;
          v111 = swift_isUniquelyReferenced_nonNull_native();
          v199 = v110;
          sub_22F132408(v109, v111, v108);

          v38 = v199;
          v107 = v169;
          v25 = v191;
          if (v169 == v167)
          {

            v102 = v157;
            goto LABEL_57;
          }
        }

        v38 = 0;
        v198 = v117 & 0xC000000000000001;
        v194 = v117 & 0xFFFFFFFFFFFFFF8;
        v196 = MEMORY[0x277D84F90];
        v121 = v119;
        v122 = v192;
        while (1)
        {
          if (v198)
          {
            v123 = MEMORY[0x2319016F0](v38, v117);
          }

          else
          {
            if (v38 >= *(v194 + 16))
            {
              goto LABEL_116;
            }

            v123 = *(v117 + 8 * v38 + 32);
          }

          v124 = v123;
          v125 = (v38 + 1);
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v120[2])
          {
            v126 = sub_22F1234BC(v123);
            if (v127)
            {
              v122 = v192;
              (*(v195 + 16))(v192, v120[7] + *(v195 + 72) * v126, v9);
              v128 = 0;
            }

            else
            {
              v128 = 1;
              v122 = v192;
            }
          }

          else
          {
            v128 = 1;
          }

          (*v187)(v122, v128, 1, v9);

          if ((*v186)(v122, 1, v9) == 1)
          {
            sub_22F120ADC(v122, &qword_27DAB40E0, &unk_22F779200);
          }

          else
          {
            v129 = *v185;
            v130 = v175;
            (*v185)(v175, v122, v9);
            v129(v188, v130, v9);
            v131 = v196;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v131 = sub_22F13ED68(0, v131[2] + 1, 1, v131);
            }

            v132 = v131;
            v133 = v131[2];
            v196 = v132;
            v134 = v132[3];
            if (v133 >= v134 >> 1)
            {
              v196 = sub_22F13ED68(v134 > 1, v133 + 1, 1, v196);
            }

            v135 = v195;
            v136 = v196;
            v196[2] = v133 + 1;
            v129(&v136[((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v133], v188, v9);
            v120 = v181;
            v122 = v192;
          }

          ++v38;
          v25 = v191;
          v117 = v118;
          if (v125 == v121)
          {
            goto LABEL_97;
          }
        }

        __break(1u);
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }
    }

    else
    {
      v106 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v106)
      {
        goto LABEL_67;
      }
    }

LABEL_57:
    v98 = (v102 - 1) & v102;
    v103 = v174;
    sub_22F741680();
    v174 = v103;
    v101 = v160;
    if (v103)
    {

      return v38;
    }
  }

  __break(1u);
LABEL_130:

  __break(1u);
  return result;
}

void *sub_22F30731C(uint64_t a1)
{
  v54 = sub_22F73F870();
  v51 = *(v54 - 8);
  v2 = *(v51 + 64);
  MEMORY[0x28223BE20](v54);
  v55 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22F73F8D0();
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F73F830();
  v10 = *(v9 - 8);
  v11 = v10;
  v48 = v9;
  v49 = v10;
  v12 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F73F9B0();
  v52 = *(v15 - 8);
  v53 = v15;
  v16 = *(v52 + 64);
  MEMORY[0x28223BE20](v15);
  v56 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v50 = &v47 - v20;
  v21 = sub_22F73F690();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v57 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v47 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v47 - v29;
  sub_22F73F8F0();
  v58 = a1;
  sub_22F73F060();
  v31 = *MEMORY[0x277CC9878];
  v32 = *(v11 + 104);
  v47 = v14;
  v32(v14, v31, v9);
  (*(v60 + 104))(v8, *MEMORY[0x277CC9900], v59);
  v33 = v51;
  v34 = v54;
  v35 = v55;
  (*(v51 + 104))(v55, *MEMORY[0x277CC98E8], v54);
  v36 = v50;
  sub_22F73F910();
  (*(v33 + 8))(v35, v34);
  (*(v60 + 8))(v8, v59);
  (*(v49 + 8))(v47, v48);
  v59 = *(v22 + 8);
  v60 = v22 + 8;
  v59(v27, v21);
  (*(v52 + 8))(v56, v53);
  v37 = *(v22 + 48);
  if (v37(v36, 1, v21) == 1)
  {
    sub_22F73F060();
    if (v37(v36, 1, v21) != 1)
    {
      sub_22F120ADC(v36, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  else
  {
    (*(v22 + 32))(v30, v36, v21);
  }

  sub_22F73F030();
  v56 = sub_22F173D18();
  v38 = sub_22F740DB0();
  v59(v27, v21);
  if (v38)
  {
    v39 = MEMORY[0x277D84F90];
  }

  else
  {
    v41 = *(v22 + 16);
    v39 = MEMORY[0x277D84F90];
    v42 = v57;
    do
    {
      v41(v42, v30, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_22F13E15C(0, v39[2] + 1, 1, v39);
      }

      v44 = v39[2];
      v43 = v39[3];
      if (v44 >= v43 >> 1)
      {
        v39 = sub_22F13E15C(v43 > 1, v44 + 1, 1, v39);
      }

      v39[2] = v44 + 1;
      v45 = v39 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v44;
      v42 = v57;
      (*(v22 + 32))(v45, v57, v21);
      sub_22F73F580();
      sub_22F73F030();
      v46 = sub_22F740DB0();
      v59(v27, v21);
    }

    while ((v46 & 1) == 0);
  }

  v59(v30, v21);
  return v39;
}

uint64_t sub_22F3079D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = MEMORY[0x277D84F90];
  v96 = MEMORY[0x277D84F90];
  if (*(a4 + 16))
  {
    v7 = a3;
    v8 = a2;
    v9 = sub_22F1229E8(a2, a3);
    if (v10)
    {
      isUniquelyReferenced_nonNull_bridgeObject = *(*(a4 + 56) + 8 * v9);
      if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
      {
        goto LABEL_77;
      }

      v12 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        while (1)
        {
          v75 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
          v82 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
          v81 = OBJC_IVAR___PGTripFeatureProcessor_graph;
          v72 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
          v71 = isUniquelyReferenced_nonNull_bridgeObject + 32;
          v92 = a5 + 56;
          v73 = isUniquelyReferenced_nonNull_bridgeObject;

          v13 = 0;
          v14 = 0;
          v74 = v12;
          v83 = v7;
          while (1)
          {
            if (v75)
            {
              isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2319016F0](v13, v73);
            }

            else
            {
              if (v13 >= *(v72 + 16))
              {
                goto LABEL_76;
              }

              isUniquelyReferenced_nonNull_bridgeObject = *(v71 + 8 * v13);
            }

            v15 = isUniquelyReferenced_nonNull_bridgeObject;
            v16 = __OFADD__(v13, 1);
            v17 = v13 + 1;
            if (v16)
            {
              goto LABEL_73;
            }

            MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_bridgeObject);

            v19 = sub_22F30C2DC(v18, sub_22F30F2C8);
            v79 = v17;
            v78 = v14;
            v77 = v15;
            if ((v19 & 0xC000000000000001) != 0)
            {
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = sub_22F741CA0() | 0x8000000000000000;
            }

            else
            {
              v24 = -1 << *(v19 + 32);
              v21 = ~v24;
              v20 = v19 + 64;
              v25 = -v24;
              v26 = v25 < 64 ? ~(-1 << v25) : -1;
              v22 = v26 & *(v19 + 64);
              v23 = v19;
            }

            v27 = (v21 + 64) >> 6;
            v28 = 0.0;
            v80 = MEMORY[0x277D84F90];
            v85 = v20;
            v86 = v27;
            v7 = 0;
            if ((v23 & 0x8000000000000000) == 0)
            {
              break;
            }

LABEL_18:
            if (sub_22F741D10())
            {
              sub_22F120634(0, &qword_2810A90E0, off_27887B100);
              swift_dynamicCast();
              v29 = v94;
              type metadata accessor for MomentRelevanceData(0);
              swift_dynamicCast();
              v89 = v22;
              v90 = v94;
              v30 = v7;
              if (v94)
              {
                goto LABEL_26;
              }
            }

LABEL_68:
            sub_22F0FF590();

            v7 = v77;
            v64 = *&v77[OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode];
            v65 = type metadata accessor for TripLocationScore();
            v66 = objc_allocWithZone(v65);
            *&v66[OBJC_IVAR___PGTripLocationScore_locationNode] = v64;
            *&v66[OBJC_IVAR___PGTripLocationScore__score] = v28;
            *&v66[OBJC_IVAR___PGTripLocationScore_momentNodes] = v80;
            v95.receiver = v66;
            v95.super_class = v65;
            v67 = v64;
            objc_msgSendSuper2(&v95, sel_init);
            MEMORY[0x231900D00]();
            if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v68 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22F7411C0();
            }

            sub_22F741220();

            v13 = v79;
            v14 = v78;
            if (v79 == v74)
            {
              v69 = v96;

              return v69;
            }
          }

LABEL_21:
          v31 = v7;
          v32 = v22;
          v30 = v7;
          if (v22)
          {
            break;
          }

          while (1)
          {
            v30 = (v31 + 1);
            if (__OFADD__(v31, 1))
            {
              break;
            }

            if (v30 >= v27)
            {
              goto LABEL_68;
            }

            v32 = *(v20 + 8 * v30);
            ++v31;
            if (v32)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          v70 = isUniquelyReferenced_nonNull_bridgeObject;
          v12 = sub_22F741A00();
          isUniquelyReferenced_nonNull_bridgeObject = v70;
          if (!v12)
          {
            return MEMORY[0x277D84F90];
          }
        }

LABEL_25:
        v89 = (v32 - 1) & v32;
        v33 = (v30 << 9) | (8 * __clz(__rbit64(v32)));
        v34 = *(*(v23 + 56) + v33);
        v29 = *(*(v23 + 48) + v33);
        v90 = v34;

        if (!v29)
        {
          goto LABEL_68;
        }

LABEL_26:
        v35 = *(v84 + v82);
        v88 = [v35 addressNodesByMomentNodeAdjacency];
        v87 = [v88 targetsForSourceIdentifier_];
        v36 = [objc_allocWithZone(PGGraphAddressNodeCollection) initWithGraph:*(v84 + v81) elementIdentifiers:v87];
        v91 = v36;
        if (sub_22F740E20() == v8 && v37 == v83)
        {

LABEL_30:
          v39 = [v35 cityNodesFromAddressNodes_];
          v40 = [v39 isEmpty];

          v41 = v40 ^ 1;
          goto LABEL_31;
        }

        v38 = sub_22F742040();

        if (v38)
        {
          goto LABEL_30;
        }

        if (sub_22F740E20() == v8 && v52 == v83)
        {

LABEL_47:
          v54 = [v35 cityNodesFromAddressNodes_];
          v55 = [v35 stateNodesFromAddressNodes_];
          if ([v54 isEmpty])
          {
            v56 = v55;
            v57 = [v56 isEmpty];

            v41 = v57 ^ 1;
          }

          else
          {

            v41 = 1;
          }

          goto LABEL_31;
        }

        v53 = sub_22F742040();

        v41 = 0;
        if (v53)
        {
          goto LABEL_47;
        }

LABEL_31:
        v42 = v23;
        v43 = v8;
        if ((a5 & 0xC000000000000001) != 0)
        {
          v44 = v29;
          v45 = sub_22F741A50();

          if (v45 & 1) != 0 || ((v41 ^ 1))
          {
            goto LABEL_50;
          }

LABEL_41:

          v7 = v30;
          v22 = v89;
          v8 = v43;
          v20 = v85;
          v23 = v42;
          v27 = v86;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (!*(a5 + 16) || (sub_22F120634(0, &qword_2810A90E0, off_27887B100), v46 = *(a5 + 40), v47 = sub_22F741800(), v48 = -1 << *(a5 + 32), v8 = v47 & ~v48, ((*(v92 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0))
          {
LABEL_40:
            if ((v41 & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_41;
          }

          v49 = ~v48;
          while (1)
          {
            v50 = *(*(a5 + 48) + 8 * v8);
            v51 = sub_22F741810();

            if (v51)
            {
              break;
            }

            v8 = (v8 + 1) & v49;
            if (((*(v92 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

LABEL_50:
          if (v90[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore + 8])
          {
            result = sub_22F741D40();
            __break(1u);
            return result;
          }

          v58 = *&v90[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22F771EB0;
          *(inited + 32) = v29;
          v7 = (v80 >> 62);
          if (v80 >> 62)
          {
            isUniquelyReferenced_nonNull_bridgeObject = sub_22F741A00();
            v60 = isUniquelyReferenced_nonNull_bridgeObject + 1;
            if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, 1))
            {
              goto LABEL_74;
            }
          }

          else
          {
            isUniquelyReferenced_nonNull_bridgeObject = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v60 = isUniquelyReferenced_nonNull_bridgeObject + 1;
            if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, 1))
            {
              goto LABEL_74;
            }
          }

          v8 = v43;
          v61 = v29;

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v23 = v42;
          if (!isUniquelyReferenced_nonNull_bridgeObject)
          {
            if (v7)
            {
LABEL_60:
              sub_22F741A00();
              v27 = v86;
            }

            else
            {
              v7 = (v80 & 0xFFFFFFFFFFFFFF8);
              v27 = v86;
LABEL_59:
              v63 = *(v7 + 2);
            }

            isUniquelyReferenced_nonNull_bridgeObject = sub_22F741B50();
            v62 = isUniquelyReferenced_nonNull_bridgeObject;
            v7 = (isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8);
            goto LABEL_62;
          }

          if (v7)
          {
            goto LABEL_60;
          }

          v7 = (v80 & 0xFFFFFFFFFFFFFF8);
          v62 = v80;
          v27 = v86;
          if (v60 > *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_59;
          }

LABEL_62:
          if (*(v7 + 2) >= *(v7 + 3) >> 1)
          {
            goto LABEL_75;
          }

          v76 = v62;
          sub_22F120634(0, &qword_2810A90E0, off_27887B100);
          swift_arrayInitWithCopy();

          ++*(v7 + 2);

          v28 = v28 + v58;

          v80 = v76;
          v20 = v85;
          v22 = v89;
          v7 = v30;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_18;
      }
    }

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22F308460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_momentsAtThisLocation;
  swift_beginAccess();
  v6 = *(a3 + v5);
  v9 = a1;
  v8[2] = &v9;

  LOBYTE(a1) = sub_22F1C39A8(sub_22F30F2D0, v8, v6);

  return a1 & 1;
}

uint64_t sub_22F3084FC(unint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = v3;
  v7 = sub_22F73F690();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v67 - v11;
  v12 = [objc_allocWithZone(MEMORY[0x277D22C88]) initWithProgressReporter_];
  v13 = [v12 childProgressReporterToCheckpoint_];
  v68 = v12;
  v14 = [v12 childProgressReporterToCheckpoint_];
  if (a1 >> 62)
  {
    goto LABEL_60;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v75 = v15;
  while (1)
  {
    v69 = v14;
    v78 = OBJC_IVAR___PGTripFeatureProcessor_totalNumberOfAssets;
    v79 = v2;
    if (!v15)
    {
      break;
    }

    v16 = 0;
    v73 = a1 & 0xFFFFFFFFFFFFFF8;
    v74 = a1 & 0xC000000000000001;
    v17 = 0.0;
    v18 = MEMORY[0x277D84F98];
    v71 = a1;
    v72 = v13;
    v70 = v15;
    while (1)
    {
      if (v74)
      {
        v14 = MEMORY[0x2319016F0](v16, a1);
      }

      else
      {
        if (v16 >= *(v73 + 16))
        {
          goto LABEL_54;
        }

        v14 = *(a1 + 8 * v16 + 32);
      }

      v19 = v14;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v83 = v18;
      v13 = [v14 numberOfAssetsInExtendedCuration];
      if (!v13)
      {
        v13 = [v19 numberOfAssets];
      }

      v20 = [v19 universalStartDate];
      a1 = v76;
      sub_22F73F640();

      v21 = [v19 universalEndDate];
      v22 = v77;
      sub_22F73F640();

      v23 = type metadata accessor for MomentRelevanceData(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      v26 = swift_allocObject();
      sub_22F309204(v13, a1, v22);
      if (isUniquelyReferenced_nonNull_native)
      {

        v47 = v83;
        goto LABEL_50;
      }

      v2 = v83;
      v80 = v16 + 1;
      if ((v83 & 0xC000000000000001) != 0)
      {
        if (v83 < 0)
        {
          v27 = v83;
        }

        else
        {
          v27 = v83 & 0xFFFFFFFFFFFFFF8;
        }

        v28 = v19;

        v14 = sub_22F741A00();
        if (__OFADD__(v14, 1))
        {
          goto LABEL_57;
        }

        v2 = sub_22F3F5FAC(v27, v14 + 1);
      }

      else
      {
        v29 = v19;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v2;
      v31 = sub_22F1234BC(v19);
      v32 = v2[2];
      v33 = (v30 & 1) == 0;
      v14 = (v32 + v33);
      if (__OFADD__(v32, v33))
      {
        goto LABEL_55;
      }

      a1 = v30;
      if (v2[3] >= v14)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = &v82;
          v14 = sub_22F137654();
        }
      }

      else
      {
        sub_22F12B228(v14, isUniquelyReferenced_nonNull_native);
        v2 = v82;
        v14 = sub_22F1234BC(v19);
        if ((a1 & 1) != (v34 & 1))
        {
          sub_22F120634(0, &qword_2810A90E0, off_27887B100);
          result = sub_22F7420C0();
          __break(1u);
          return result;
        }

        v31 = v14;
      }

      isUniquelyReferenced_nonNull_native = 0;
      v35 = v82;
      v81 = v82;
      if (a1)
      {
        v36 = v82[7];
        v2 = *(v36 + 8 * v31);
        *(v36 + 8 * v31) = v26;
      }

      else
      {
        v82[(v31 >> 6) + 8] |= 1 << v31;
        *(v35[6] + 8 * v31) = v19;
        *(v35[7] + 8 * v31) = v26;
        v37 = v35[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_58;
        }

        v35[2] = v39;
      }

      v40 = *(v79 + v78);
      v38 = __OFADD__(v40, v13);
      v41 = &v13[v40];
      a1 = v71;
      if (v38)
      {
        goto LABEL_56;
      }

      v42 = *(v26 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_density);
      *(v79 + v78) = v41;
      v43 = v80;
      v2 = v72;
      v44 = v72;
      sub_22F741680();
      v17 = v17 + v42;

      ++v16;
      v45 = v81;
      v18 = v81;
      v46 = v43 == v70;
      v13 = v44;
      if (v46)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v65 = v14;
    v75 = sub_22F741A00();
    v66 = sub_22F741A00();
    v14 = v65;
    v15 = v66;
  }

  v45 = MEMORY[0x277D84F98];
  v17 = 0.0;
LABEL_35:
  v47 = v45;
  sub_22F7416A0();
  if (isUniquelyReferenced_nonNull_native)
  {

LABEL_50:
  }

  else
  {
    if ((v47 & 0xC000000000000001) != 0)
    {

      sub_22F741A00();
    }

    else
    {
      v48 = *(v47 + 16);
    }

    v81 = v47;
    sub_22F2FBCA4(v47, &v82);
    sub_22F3D44B4();
    if (v50)
    {
      v2 = v49;
      v52 = v51;
      a1 = &unk_2810AA000;
      while (1)
      {

        v53 = *(v79 + v78);
        if (v17 <= 0.0 || v53 < 1)
        {
          break;
        }

        v55 = *(v52 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_density) / v17;
        v56 = v52 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__densityRatio;
        *v56 = v55;
        *(v56 + 8) = 0;
        v57 = *(v52 + 16) / v53;
        v58 = v52 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__assetRatio;
        *v58 = v57;
        *(v58 + 8) = 0;
        v59 = v52 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore;
        *v59 = v55 * v57;
        *(v59 + 8) = 0;
        v14 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_59;
        }

        sub_22F741680();

        sub_22F3D44B4();
        v2 = v60;
        v52 = v61;
        if (!v50)
        {
          goto LABEL_49;
        }
      }

      v47 = v81;

      sub_22F2FCEA4();
      swift_allocError();
      *v64 = 3;
      *(v64 + 8) = 0;
      *(v64 + 16) = 0;
      *(v64 + 24) = 0;
      *(v64 + 32) = 3;
      swift_willThrow();

      sub_22F0FF590();
    }

    else
    {
LABEL_49:
      sub_22F0FF590();
      v62 = v69;
      sub_22F7416A0();

      return v81;
    }
  }

  return v47;
}

id sub_22F308C7C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_22F308E1C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_22F740DF0();

  return v5;
}

uint64_t sub_22F308E8C()
{
  v1 = v0;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000013, 0x800000022F79A240);
  v2 = [*(v0 + OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode) description];
  v3 = sub_22F740E20();
  v5 = v4;

  MEMORY[0x231900B10](v3, v5);

  MEMORY[0x231900B10](0xD000000000000013, 0x800000022F79A260);
  v6 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_momentsAtThisLocation;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = sub_22F120634(0, &qword_2810A90E0, off_27887B100);

  v10 = MEMORY[0x231900D40](v9, v8);
  v12 = v11;

  MEMORY[0x231900B10](v10, v12);

  MEMORY[0x231900B10](0x72646C696863202CLL, 0xEC000000203A6E65);
  v13 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_children;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (v14 >> 62)
  {
    v15 = sub_22F741A00();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
LABEL_11:
    v23 = sub_22F120634(0, &qword_2810A9020, off_27887B138);
    v24 = MEMORY[0x231900D40](v16, v23);
    v26 = v25;

    MEMORY[0x231900B10](v24, v26);

    return 0;
  }

  v27 = MEMORY[0x277D84F90];

  result = sub_22F741BD0();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2319016F0](v18, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      v21 = *&v19[OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode];

      sub_22F741BA0();
      v22 = *(v27 + 16);
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
    }

    while (v15 != v18);

    v16 = v27;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

char *sub_22F309204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = &v4[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__densityRatio];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v4[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__assetRatio];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v4[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore];
  *v9 = 0;
  v9[8] = 1;
  *(v4 + 2) = a1;
  v10 = OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_startDate;
  v11 = sub_22F73F690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(&v4[v10], a2, v11);
  v14 = OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_endDate;
  v13(&v4[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_endDate], a3, v11);
  sub_22F73F590();
  if (v15 <= 900.0)
  {
    *&v4[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_deltaTimeInHours] = 0x3FF0000000000000;
    goto LABEL_5;
  }

  v16 = v15 / 3600.0;
  *&v4[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_deltaTimeInHours] = v16;
  if (v16 != 0.0)
  {
LABEL_5:
    v21 = *(v12 + 8);
    v21(a3, v11);
    v21(a2, v11);
    *&v4[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_density] = *(v4 + 2) / *&v4[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_deltaTimeInHours];
    return v4;
  }

  sub_22F2FCEA4();
  swift_allocError();
  *v17 = 3;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 3;
  swift_willThrow();
  v18 = *(v12 + 8);
  v18(a3, v11);
  v18(a2, v11);
  v18(&v4[v10], v11);
  v18(&v4[v14], v11);
  type metadata accessor for MomentRelevanceData(0);
  v19 = *(*v4 + 48);
  v20 = *(*v4 + 52);
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_22F309484()
{
  if (*(v0 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore + 8))
  {
    result = sub_22F741D40();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore);
    sub_22F7413B0();
    return 0;
  }

  return result;
}

uint64_t sub_22F309528()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_startDate;
  v2 = sub_22F73F690();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_endDate, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_22F309618(uint64_t a1, uint64_t a2)
{
  if (sub_22F740E20() == a1 && v5 == a2)
  {

    goto LABEL_20;
  }

  v7 = sub_22F742040();

  if (v7)
  {
LABEL_20:
    result = 1.0;
    if ((*(v2 + 16) & 1) == 0)
    {
      return result;
    }

    v16 = 24;
    return *(v2 + v16);
  }

  if (sub_22F740E20() == a1 && v8 == a2)
  {

    goto LABEL_25;
  }

  v10 = sub_22F742040();

  if (v10)
  {
LABEL_25:
    result = 1.0;
    if ((*(v2 + 16) & 1) == 0)
    {
      return result;
    }

    v16 = 32;
    return *(v2 + v16);
  }

  if (sub_22F740E20() == a1 && v11 == a2)
  {

    goto LABEL_28;
  }

  v13 = sub_22F742040();

  if (v13)
  {
LABEL_28:
    result = 1.0;
    if ((*(v2 + 16) & 1) == 0)
    {
      return result;
    }

    v16 = 40;
    return *(v2 + v16);
  }

  if (sub_22F740E20() == a1 && v14 == a2)
  {
  }

  else
  {
    v17 = sub_22F742040();

    result = 1.0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  result = 1.0;
  if (*(v2 + 16) == 1)
  {
    v16 = 48;
    return *(v2 + v16);
  }

  return result;
}

uint64_t sub_22F3097CC()
{
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

void sub_22F309804(void *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22F7419C0();
    sub_22F120634(0, &qword_2810A8FE0, off_27887AD90);
    sub_22F11FA28(&qword_2810A8FD0, &qword_2810A8FE0, off_27887AD90);
    sub_22F741470();
    v3 = v54;
    v4 = v55;
    v5 = v56;
    v6 = v57;
    v7 = v58;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v40 = v4;
  v41 = v3;
  v39 = v11;
LABEL_8:
  if (v3 < 0)
  {
    if (!sub_22F741A40())
    {
      goto LABEL_44;
    }

    sub_22F120634(0, &qword_2810A8FE0, off_27887AD90);
    swift_dynamicCast();
    v16 = v53;
    v14 = v6;
    v15 = v7;
    if (!v53)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_46;
        }

        if (v14 >= v11)
        {
          break;
        }

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_13;
        }
      }

LABEL_44:
      sub_22F0FF590();
      return;
    }

LABEL_13:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_44;
    }
  }

  v17 = [v16 addressNode];
  v18 = [a1 addressNodes];
  sub_22F120634(0, &qword_2810A90A8, off_27887AB90);
  sub_22F11FA28(&qword_2810A90A0, &qword_2810A90A8, off_27887AB90);
  v19 = sub_22F741420();

  v49 = [a3 cityNodeFromAddressNode_];
  v48 = [a3 stateNodeFromAddressNode_];
  v47 = [a3 countryNodeFromAddressNode_];
  v45 = v15;
  v46 = v14;
  v43 = v17;
  v44 = v16;
  if ((v19 & 0xC000000000000001) != 0)
  {
    sub_22F7419C0();
    sub_22F741470();
    v19 = v59;
    v20 = v60;
    v21 = v61;
    v22 = v62;
    v23 = v63;
  }

  else
  {
    v22 = 0;
    v24 = -1 << *(v19 + 32);
    v20 = v19 + 56;
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v19 + 56);
  }

  v27 = (v21 + 64) >> 6;
  v50 = v19;
  while (1)
  {
    v28 = v23;
    if ((v19 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_22F741A40() || (swift_dynamicCast(), v31 = v53, v30 = v28, !v53))
    {
LABEL_41:
      sub_22F0FF590();

      v7 = v45;
      v6 = v46;
      v4 = v40;
      v3 = v41;
      v11 = v39;
      goto LABEL_8;
    }

LABEL_34:
    v52 = v30;
    v32 = [a3 cityNodeFromAddressNode_];
    v33 = [v32 firstNode];

    v34 = [a3 stateNodeFromAddressNode_];
    v35 = [v34 firstNode];

    v36 = [a3 countryNodeFromAddressNode_];
    v37 = [v36 firstNode];

    if (v33 && [v49 containsNode_] || v35 && objc_msgSend(v48, sel_containsNode_, v35))
    {
      sub_22F0FF590();

      goto LABEL_43;
    }

    if (v37)
    {
      v38 = [v47 containsNode_];

      v19 = v50;
      v23 = v52;
      if (v38)
      {
        sub_22F0FF590();

LABEL_43:
        v4 = v40;
        v3 = v41;
        v11 = v39;
        v7 = v45;
        v6 = v46;
        goto LABEL_8;
      }
    }

    else
    {

      v19 = v50;
      v23 = v52;
    }
  }

  v29 = v22;
  if (v23)
  {
LABEL_30:
    v30 = (v23 - 1) & v23;
    v31 = *(*(v19 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v31)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  while (1)
  {
    v22 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v22 >= v27)
    {
      goto LABEL_41;
    }

    v23 = *(v20 + 8 * v22);
    ++v29;
    if (v23)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

double sub_22F309EDC(uint64_t a1, uint64_t a2)
{
  if (sub_22F740E20() == a1 && v5 == a2)
  {

    goto LABEL_20;
  }

  v7 = sub_22F742040();

  if (v7)
  {
LABEL_20:
    if ((*(v2 + 144) & 1) == 0)
    {
      return 0.85;
    }

    v15 = 24;
    return *(v2 + v15);
  }

  if (sub_22F740E20() == a1 && v8 == a2)
  {

LABEL_27:
    if (*(v2 + 144))
    {
      v15 = 32;
    }

    else
    {
      result = 2.0;
      if (*(v2 + 145))
      {
        return result;
      }

      v15 = 88;
    }

    return *(v2 + v15);
  }

  v10 = sub_22F742040();

  if (v10)
  {
    goto LABEL_27;
  }

  if (sub_22F740E20() == a1 && v11 == a2)
  {

LABEL_32:
    if (*(v2 + 144))
    {
      v15 = 40;
    }

    else
    {
      v15 = 96;
      if (*(v2 + 145))
      {
        v15 = 128;
      }
    }

    return *(v2 + v15);
  }

  v13 = sub_22F742040();

  if (v13)
  {
    goto LABEL_32;
  }

  if (sub_22F740E20() == a1 && v14 == a2)
  {

LABEL_38:
    if (*(v2 + 144) == 1)
    {
      v15 = 48;
      return *(v2 + v15);
    }

    return 1.2;
  }

  v18 = sub_22F742040();

  result = 1.0;
  if (v18)
  {
    goto LABEL_38;
  }

  return result;
}

double sub_22F30A0C8()
{
  if (*(v0 + 144) == 1)
  {
    result = *(v0 + 24);
    v2 = *(v0 + 32);
    v3 = *(v0 + 48);
    v4 = *(v0 + 40);
  }

  else
  {
    if (*(v0 + 145) == 1)
    {
      v5 = (v0 + 128);
    }

    else
    {
      v6 = *(v0 + 88);
      v5 = (v0 + 96);
    }

    result = 0.85;
    v7 = *v5;
  }

  return result;
}

uint64_t sub_22F30A128()
{
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

void sub_22F30A160(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F73F690();
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22F73F690() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F30A51C(v8, v9, a1, v4);
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
    sub_22F30A28C(0, v2, 1, a1);
  }
}

void sub_22F30A28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22F73F690();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = &v31 - v12;
  v15 = MEMORY[0x28223BE20](v13);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v18 = *(v14 + 72);
    v19 = (v14 + 8);
    v20 = (v17 + v18 * (a3 - 1));
    v38 = -v18;
    v39 = (v14 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v22, v8, v15);
      v25 = v45;
      v24(v45, v20, v8);
      sub_22F173D18();
      v26 = sub_22F740DB0();
      v27 = *v19;
      (*v19)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = &v36[v32];
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v20, v29, v8);
      v20 += v38;
      v22 += v38;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F30A51C(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v123 = a1;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v127 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v135 = &v120 - v14;
  MEMORY[0x28223BE20](v15);
  v140 = &v120 - v16;
  v18 = MEMORY[0x28223BE20](v17);
  v141 = &v120 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_134;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v114 = a4;
    }

    else
    {
LABEL_128:
      v114 = sub_22F3F5F98(a4);
    }

    v143 = v114;
    v115 = *(v114 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        a4 = v115 - 1;
        v116 = *&v114[16 * v115];
        v117 = v114;
        v118 = *&v114[16 * v115 + 24];
        sub_22F30AF0C(*a3 + v10[9] * v116, *a3 + v10[9] * *&v114[16 * v115 + 16], *a3 + v10[9] * v118, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v118 < v116)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_22F3F5F98(v117);
        }

        if (v115 - 2 >= *(v117 + 2))
        {
          goto LABEL_122;
        }

        v119 = &v117[16 * v115];
        *v119 = v116;
        *(v119 + 1) = v118;
        v143 = v117;
        sub_22F3F5F0C(a4);
        v114 = v143;
        v115 = *(v143 + 2);
        if (v115 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v21 = 0;
  v138 = (v10 + 1);
  v139 = v10 + 2;
  v137 = (v10 + 4);
  v22 = MEMORY[0x277D84F90];
  v125 = a3;
  v122 = a4;
  v142 = v9;
  v121 = v10;
  while (1)
  {
    v23 = v21;
    v128 = v22;
    if (v21 + 1 >= v20)
    {
      v37 = v21 + 1;
    }

    else
    {
      v133 = v20;
      v24 = v9;
      v25 = *a3;
      v26 = v10;
      v27 = v10[9];
      v5 = v25 + v27 * (v21 + 1);
      v129 = v25;
      v28 = v26[2];
      v28(v141, v5, v24, v18);
      v29 = v25 + v27 * v23;
      v30 = v26;
      v124 = v23;
      v31 = v140;
      v132 = v28;
      (v28)(v140, v29, v24);
      v32 = sub_22F173D18();
      v33 = v141;
      v131 = v32;
      LODWORD(v134) = sub_22F740DB0();
      v34 = v30[1];
      v34(v31, v24);
      v130 = v34;
      v34(v33, v24);
      v35 = v124 + 2;
      v136 = v27;
      v36 = v129 + v27 * (v124 + 2);
      while (1)
      {
        v37 = v133;
        if (v133 == v35)
        {
          break;
        }

        v39 = v141;
        v38 = v142;
        v40 = v132;
        (v132)(v141, v36, v142);
        v41 = v6;
        v42 = v140;
        v40(v140, v5, v38);
        v43 = sub_22F740DB0() & 1;
        v44 = v42;
        v6 = v41;
        v45 = v130;
        v130(v44, v38);
        v45(v39, v38);
        ++v35;
        v36 += v136;
        v5 += v136;
        if ((v134 & 1) != v43)
        {
          v37 = v35 - 1;
          break;
        }
      }

      v23 = v124;
      a3 = v125;
      v10 = v121;
      v22 = v128;
      a4 = v122;
      v9 = v142;
      if (v134)
      {
        if (v37 < v124)
        {
          goto LABEL_125;
        }

        if (v124 < v37)
        {
          v46 = v136 * (v37 - 1);
          v5 = v37 * v136;
          v133 = v37;
          v47 = v37;
          v48 = v124;
          v49 = v124 * v136;
          do
          {
            if (v48 != --v47)
            {
              v51 = *a3;
              if (!v51)
              {
                goto LABEL_131;
              }

              v134 = *v137;
              (v134)(v127, &v51[v49], v142, v22);
              if (v49 < v46 || &v51[v49] >= &v51[v5])
              {
                v50 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v50 = v142;
                if (v49 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v134(&v51[v46], v127, v50);
              a3 = v125;
              v22 = v128;
            }

            ++v48;
            v46 -= v136;
            v5 -= v136;
            v49 += v136;
          }

          while (v48 < v47);
          v10 = v121;
          a4 = v122;
          v9 = v142;
          v23 = v124;
          v37 = v133;
        }
      }
    }

    v52 = a3[1];
    if (v37 < v52)
    {
      if (__OFSUB__(v37, v23))
      {
        goto LABEL_124;
      }

      if (v37 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if ((v23 + a4) >= v52)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v23 + a4;
        }

        if (v5 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v37 != v5)
        {
          break;
        }
      }
    }

    v5 = v37;
    if (v37 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v22 = v128;
    }

    else
    {
      v22 = sub_22F13D970(0, *(v128 + 2) + 1, 1, v128);
    }

    a4 = *(v22 + 2);
    v53 = *(v22 + 3);
    v54 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      v22 = sub_22F13D970((v53 > 1), a4 + 1, 1, v22);
    }

    *(v22 + 2) = v54;
    v55 = &v22[16 * a4];
    *(v55 + 4) = v23;
    *(v55 + 5) = v5;
    v56 = *v123;
    if (!*v123)
    {
      goto LABEL_133;
    }

    v129 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v22 + 4);
          v58 = *(v22 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v22[16 * v5 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v5 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v22[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v22[16 * v5];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v54)
        {
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v94 = v22;
        v95 = *&v22[16 * a4 + 32];
        v96 = *&v22[16 * v5 + 40];
        sub_22F30AF0C(*a3 + v10[9] * v95, *a3 + v10[9] * *&v22[16 * v5 + 32], *a3 + v10[9] * v96, v56);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v96 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_22F3F5F98(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_109;
        }

        v97 = &v94[16 * a4];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v143 = v94;
        sub_22F3F5F0C(v5);
        v22 = v143;
        v54 = *(v143 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v22[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v22[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v22[16 * v5 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v5 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v129;
    a4 = v122;
    v9 = v142;
    if (v129 >= v20)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v98 = *a3;
  v99 = v10[9];
  v136 = v10[2];
  v100 = v98 + v99 * (v37 - 1);
  v101 = v23;
  v102 = -v99;
  v124 = v101;
  v103 = v101 - v37;
  v134 = v98;
  v126 = v99;
  a4 = v98 + v37 * v99;
  v129 = v5;
LABEL_85:
  v132 = v100;
  v133 = v37;
  v130 = a4;
  v131 = v103;
  v104 = v100;
  while (1)
  {
    v105 = v141;
    v106 = v136;
    (v136)(v141, a4, v9, v22);
    v107 = v140;
    v106(v140, v104, v142);
    sub_22F173D18();
    v108 = sub_22F740DB0();
    v109 = *v138;
    v110 = v107;
    v9 = v142;
    (*v138)(v110, v142);
    v109(v105, v9);
    if ((v108 & 1) == 0)
    {
LABEL_84:
      v37 = v133 + 1;
      v100 = &v132[v126];
      v103 = v131 - 1;
      a4 = v130 + v126;
      v5 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v6 = v120;
      v23 = v124;
      a3 = v125;
      v10 = v121;
      if (v129 < v124)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v111 = *v137;
    v112 = v135;
    (*v137)(v135, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v111(v104, v112, v9);
    v104 += v102;
    a4 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_22F30AF0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = sub_22F73F690();
  v8 = *(v56 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v56);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v44 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v55 = a3;
  v16 = (a2 - a1) / v14;
  v59 = a1;
  v58 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v18;
    if (v18 >= 1)
    {
      v29 = -v14;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v18;
      v31 = v55;
      v46 = a1;
      v47 = a4;
      v50 = v29;
      do
      {
        v44 = v28;
        v32 = a2 + v29;
        v33 = v28;
        v51 = a2;
        v52 = a2 + v29;
        while (1)
        {
          if (a2 <= a1)
          {
            v59 = a2;
            v28 = v44;
            goto LABEL_59;
          }

          v35 = v31;
          v45 = v33;
          v55 = v31 + v29;
          v36 = v30 + v29;
          v37 = *v49;
          v38 = v53;
          v39 = v30 + v29;
          v40 = v30;
          v41 = v56;
          (*v49)(v53, v39, v56);
          v42 = v54;
          (v37)(v54, v32, v41);
          sub_22F173D18();
          LOBYTE(v37) = sub_22F740DB0();
          v43 = *v48;
          (*v48)(v42, v41);
          v43(v38, v41);
          if (v37)
          {
            break;
          }

          v33 = v36;
          v31 = v55;
          if (v35 < v40 || v55 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v52;
            a1 = v46;
          }

          else
          {
            v32 = v52;
            a1 = v46;
            if (v35 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v36;
          v34 = v36 > v47;
          v29 = v50;
          a2 = v51;
          if (!v34)
          {
            v28 = v33;
            goto LABEL_58;
          }
        }

        v31 = v55;
        if (v35 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v46;
          v30 = v40;
        }

        else
        {
          a2 = v52;
          a1 = v46;
          v30 = v40;
          if (v35 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v45;
        v29 = v50;
      }

      while (v30 > v47);
    }

LABEL_58:
    v59 = a2;
LABEL_59:
    v57 = v28;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v17;
    v57 = a4 + v17;
    if (v17 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v14;
      v49 = (v8 + 8);
      do
      {
        v20 = v53;
        v21 = v56;
        v22 = v50;
        v50(v53, a2, v56);
        v23 = v54;
        v22(v54, a4, v21);
        sub_22F173D18();
        v24 = sub_22F740DB0();
        v25 = *v49;
        (*v49)(v23, v21);
        v25(v20, v21);
        if (v24)
        {
          v26 = v48;
          if (a1 < a2 || a1 >= v48 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

  sub_22F3B662C(&v59, &v58, &v57);
}

uint64_t sub_22F30B49C(void **a1, void **a2, void **a3, void **a4, void *a5)
{
  v68 = swift_allocObject();
  *(v68 + 16) = a5;
  v9 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v9 = a2 - a1;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v10 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      memmove(a4, a2, 8 * v12);
    }

    v73 = a5;
    v13 = &a4[v12];
    if (a3 - a2 < 8 || a2 <= a1)
    {
      goto LABEL_90;
    }

    v71 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
    v83 = a4;
LABEL_52:
    v79 = a2;
    v40 = a2 - 1;
    --a3;
    v41 = v13;
    v75 = v40;
    while (1)
    {
      v43 = *--v41;
      v42 = v43;
      v44 = *v40;
      v45 = *&v43[OBJC_IVAR___PGTripLocationScore__score];
      v46 = *(*v40 + OBJC_IVAR___PGTripLocationScore__score);
      if (v45 == v46)
      {
        v81 = v13;
        v47 = objc_opt_self();
        v48 = *&v42[OBJC_IVAR___PGTripLocationScore_locationNode];
        v49 = *&v73[v71];
        v77 = v42;
        v50 = v44;
        v51 = [v47 beautifiedLocationNodeStringWithPlaceNode:v48 locationHelper:v49];
        if (v51)
        {
          v52 = v51;
          v53 = sub_22F740E20();
          v55 = v54;
        }

        else
        {
          v53 = 0;
          v55 = 0;
        }

        v56 = [v47 beautifiedLocationNodeStringWithPlaceNode:*&v50[OBJC_IVAR___PGTripLocationScore_locationNode] locationHelper:{v49, v68}];
        if (v56)
        {
          v57 = v56;
          v58 = sub_22F740E20();
          v60 = v59;

          if (v55)
          {
            if (!v60)
            {
              a4 = v83;
              v13 = v81;
              v65 = v77;
LABEL_82:

              v40 = v75;
LABEL_83:
              if (a3 + 1 != v79)
              {
                *a3 = *v40;
              }

              if (v13 <= a4 || (a2 = v40, v40 <= a1))
              {
                a2 = v40;
                goto LABEL_90;
              }

              goto LABEL_52;
            }

            v70 = v50;
            v61 = sub_22F740F10();
            v62 = sub_22F740F10();
            if (v61 == v62)
            {
              if (v53 == v58 && v55 == v60)
              {

                a4 = v83;
                v13 = v81;
                v40 = v75;
              }

              else
              {
                v64 = sub_22F742040();

                a4 = v83;
                v13 = v81;
                v40 = v75;
                if (v64)
                {
                  goto LABEL_83;
                }
              }
            }

            else
            {
              v66 = v62;

              v39 = v61 < v66;
              a4 = v83;
              v13 = v81;
              v40 = v75;
              if (v39)
              {
                goto LABEL_83;
              }
            }

            goto LABEL_79;
          }

          a4 = v83;
          v13 = v81;
          v65 = v77;
        }

        else
        {
          a4 = v83;
          v13 = v81;
          v65 = v77;
          if (v55)
          {
            goto LABEL_82;
          }

          v60 = 0;
        }

        v40 = v75;
        if (!v60)
        {
          goto LABEL_83;
        }
      }

      else if (v46 < v45)
      {
        goto LABEL_83;
      }

LABEL_79:
      if (a3 + 1 != v13)
      {
        *a3 = *v41;
      }

      --a3;
      v13 = v41;
      if (v41 <= a4)
      {
        v13 = v41;
        a2 = v79;
        goto LABEL_90;
      }
    }
  }

  if (a4 != a1 || &a1[v10] <= a4)
  {
    memmove(a4, a1, 8 * v10);
  }

  v76 = a5;
  v13 = &a4[v10];
  if (a2 - a1 >= 8 && a2 < a3)
  {
    v74 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
    v80 = v13;
    while (1)
    {
      v14 = *a2;
      v15 = *a4;
      v16 = *(*a2 + OBJC_IVAR___PGTripLocationScore__score);
      v17 = *(*a4 + OBJC_IVAR___PGTripLocationScore__score);
      if (v16 != v17)
      {
        if (v17 < v16)
        {
          goto LABEL_35;
        }

        goto LABEL_43;
      }

      v78 = a2;
      v82 = a4;
      v18 = objc_opt_self();
      v19 = *&v14[OBJC_IVAR___PGTripLocationScore_locationNode];
      v20 = *&v76[v74];
      v21 = v14;
      v22 = v15;
      v23 = [v18 beautifiedLocationNodeStringWithPlaceNode:v19 locationHelper:v20];
      if (v23)
      {
        v24 = v23;
        v25 = sub_22F740E20();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = [v18 beautifiedLocationNodeStringWithPlaceNode:*&v22[OBJC_IVAR___PGTripLocationScore_locationNode] locationHelper:{v20, v68}];
      if (!v28)
      {
        break;
      }

      v29 = v28;
      v30 = sub_22F740E20();
      v32 = v31;

      if (!v27)
      {
        a4 = v82;
        v13 = v80;
        goto LABEL_31;
      }

      if (!v32)
      {
        a4 = v82;
        v13 = v80;
LABEL_34:

        a2 = v78;
LABEL_35:
        v37 = a2;
        v35 = a1 == a2++;
        if (v35)
        {
          goto LABEL_37;
        }

LABEL_36:
        *a1 = *v37;
        goto LABEL_37;
      }

      v72 = v21;
      v33 = sub_22F740F10();
      v34 = sub_22F740F10();
      if (v33 == v34)
      {
        v35 = v25 == v30 && v27 == v32;
        if (v35)
        {

          a4 = v82;
          a2 = v78;
          v13 = v80;
        }

        else
        {
          v36 = sub_22F742040();

          a4 = v82;
          a2 = v78;
          v13 = v80;
          if (v36)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v38 = v34;

        v39 = v33 < v38;
        a4 = v82;
        a2 = v78;
        v13 = v80;
        if (v39)
        {
          goto LABEL_35;
        }
      }

LABEL_43:
      v37 = a4;
      v35 = a1 == a4++;
      if (!v35)
      {
        goto LABEL_36;
      }

LABEL_37:
      ++a1;
      if (a4 >= v13 || a2 >= a3)
      {
        goto LABEL_88;
      }
    }

    a4 = v82;
    v13 = v80;
    if (v27)
    {
      goto LABEL_34;
    }

    v32 = 0;
LABEL_31:

    a2 = v78;
    if (!v32)
    {
      goto LABEL_35;
    }

    goto LABEL_43;
  }

LABEL_88:
  a2 = a1;
LABEL_90:
  if (a2 != a4 || a2 >= (a4 + ((v13 - a4 + (v13 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v13 - a4));
  }

  return 1;
}