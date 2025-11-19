uint64_t sub_1BCC334D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BCE1BC20();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B318);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1BCC33C14(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BCE1B7E0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1BCE1D8C0();
    v13 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BCC336BC@<X0>(void *a1@<X8>)
{
  result = sub_1BCE1B980();
  *a1 = v3;
  return result;
}

uint64_t sub_1BCC336E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1BCE1B7E0() - 8) + 64);
  v7 = 8;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v10 = *(v9 + 84);
  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_25;
  }

  v14 = ((v13 + v12 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v12 + 17) & ~v12)) & ~v12) + v13;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_25:
      if (v10 > 0xFE)
      {

        return __swift_getEnumTagSinglePayload((((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + v12 + 9) & ~v12, v10, v8);
      }

      else
      {
        v20 = *(a1 + v7);
        if (v20 >= 2)
        {
          return (v20 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_25;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    switch(v14)
    {
      case 2:
        LODWORD(v14) = *a1;
        break;
      case 3:
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v14) = *a1;
        break;
      default:
        LODWORD(v14) = *a1;
        break;
    }
  }

  return v11 + (v14 | v19) + 1;
}

void sub_1BCC338F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1BCE1B7E0() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = ((*(v11 + 64) + v14 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v14 + 17) & ~v14)) & ~v14) + *(v11 + 64);
  v16 = 8 * v15;
  if (a3 <= v13)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v21))
    {
      v17 = 4;
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
        v17 = v22;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v13 >= a2)
  {
    v20 = v9 + 1;
    switch(v17)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v12 > 0xFE)
          {

            __swift_storeEnumTagSinglePayload(((&a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14, a2, v12, v10);
          }

          else if (a2 > 0xFE)
          {
            if (v20 <= 3)
            {
              v24 = ~(-1 << (8 * v20));
            }

            else
            {
              v24 = -1;
            }

            if (v9 != -1)
            {
              v25 = v24 & (a2 - 255);
              if (v20 <= 3)
              {
                v26 = v9 + 1;
              }

              else
              {
                v26 = 4;
              }

              bzero(a1, v20);
              switch(v26)
              {
                case 2:
                  *a1 = v25;
                  break;
                case 3:
                  *a1 = v25;
                  a1[2] = BYTE2(v25);
                  break;
                case 4:
                  *a1 = v25;
                  break;
                default:
                  *a1 = v25;
                  break;
              }
            }
          }

          else
          {
            a1[v9] = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v13 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      if (v15)
      {
        v23 = v18 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v15] = v19;
        break;
      case 2:
        *&a1[v15] = v19;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1BCC33C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InterpolatedMoonDataProvider.__allocating_init(interpolationProvider:moonDataProvider:moonStringBuilder:startOfDayCalculator:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  InterpolatedMoonDataProvider.init(interpolationProvider:moonDataProvider:moonStringBuilder:startOfDayCalculator:)(a1, a2, a3, a4);
  return v8;
}

uint64_t InterpolatedMoonDataProvider.init(interpolationProvider:moonDataProvider:moonStringBuilder:startOfDayCalculator:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  sub_1BC947AB4(a1, v4 + 16);
  sub_1BC947AB4(a2, v4 + 56);
  sub_1BC947AB4(a3, v4 + 96);
  sub_1BC947AB4(a4, v4 + 136);
  return v4;
}

uint64_t InterpolatedMoonDataProvider.makeMoonDataForCurrentDate(location:selectedDate:currentWeatherDate:dayMoonPhase:moonrise:moonset:moonRiseSetEvents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, double *a8@<X8>)
{
  v93 = a7;
  v89 = a6;
  v88 = a5;
  v100 = a4;
  v104 = a3;
  v97 = a2;
  v98 = a8;
  v94 = sub_1BCE1A7E0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v95 = v12 - v11;
  OUTLINED_FUNCTION_13();
  sub_1BCE1A6F0();
  OUTLINED_FUNCTION_2();
  v91 = v14;
  v92 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_42();
  v90 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_4_44(v17, v83);
  MEMORY[0x1EEE9AC00](v18);
  v105 = &v83 - v19;
  OUTLINED_FUNCTION_13();
  v96 = sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v101 = v27;
  v102 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_39();
  v87 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v83 - v30;
  v86 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v83 - v34;
  v36 = v8[20];
  v37 = v8[21];
  __swift_project_boxed_opaque_existential_1(v8 + 17, v36);
  sub_1BCE1A6E0();
  v38 = *(v37 + 8);
  v103 = v35;
  v38(v97, v25, v36, v37);
  (*(v21 + 8))(v25, v96);
  v40 = v101;
  v39 = v102;
  v41 = *(v101 + 16);
  v41(v31, v104, v102);
  v42 = v8[10];
  v43 = v8[11];
  v104 = v8;
  __swift_project_boxed_opaque_existential_1(v8 + 7, v42);
  v97 = a1;
  sub_1BCE1A6A0();
  v44 = (*(v43 + 16))(v31, v42, v43);
  if (v44)
  {
    v45 = v44;
    v46 = v103;
    v47 = v40;
    [*(v44 + 16) illuminatedFraction];
    v49 = v48;
    GEOCelestialEphemeris.moonPhaseAngle.getter();
    v51 = v50;
    v52 = CelestialEphemeris.radiusVector.getter();
    v96 = v45;
    v53 = CelestialEphemeris.librationPositionAngle.getter();
    if (v100 == 8)
    {
      v100 = MoonPhase.init(illuminatedFraction:phaseAngle:)(v49, v51);
    }

    sub_1BC952ABC(v88, v105, &qword_1EBD07868);
    sub_1BC952ABC(v89, v99, &qword_1EBD07868);
    v54 = v97;
    v89 = sub_1BCC344D8(v97, v46);
    v88 = v55;
    v84 = v56;
    v57 = v87;
    v85 = v31;
    v58 = v31;
    v59 = v39;
    v41(v87, v58, v39);
    v61 = v90;
    v60 = v91;
    v62 = v92;
    (*(v91 + 16))(v90, v54, v92);
    v63 = (*(v47 + 80) + 24) & ~*(v47 + 80);
    v64 = (v86 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = (*(v60 + 80) + v64 + 8) & ~*(v60 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = v104;
    (*(v47 + 32))(v66 + v63, v57, v59);
    *(v66 + v64) = v93;
    (*(v60 + 32))(v66 + v65, v61, v62);
    v67 = v98;
    *v98 = v49;
    *(v67 + 8) = v100;
    v67[2] = v52;
    v68 = type metadata accessor for InterpolatedMoonData();
    sub_1BC952ABC(v105, v67 + v68[7], &qword_1EBD07868);
    v69 = v99;
    sub_1BC952ABC(v99, v67 + v68[8], &qword_1EBD07868);
    v70 = v67 + v68[9];
    v71 = v88;
    *v70 = v89;
    *(v70 + 1) = v71;
    v70[16] = v84;
    *(v67 + v68[10]) = v53;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1BCC384DC;
    *(v72 + 24) = v66;
    v106 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_2_57();
    sub_1BCC368E0(v73, v74);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C510);
    sub_1BC96DFE0();
    sub_1BCE1DC30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B320);
    swift_allocObject();
    v75 = sub_1BCE1A940();

    sub_1BC94C05C(v69, &qword_1EBD07868);
    sub_1BC94C05C(v105, &qword_1EBD07868);
    v76 = v102;
    v77 = *(v101 + 8);
    v77(v85, v102);
    v77(v103, v76);
    *(v67 + v68[11]) = v75;
    v78 = v67;
    v79 = 0;
    v80 = v68;
  }

  else
  {
    v81 = *(v40 + 8);
    v81(v31, v39);
    v81(v103, v39);
    v80 = type metadata accessor for InterpolatedMoonData();
    v78 = v98;
    v79 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v78, v79, 1, v80);
}

uint64_t sub_1BCC344D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v5 = sub_1BCE19470();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_1BCE19060();
  v27 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v26 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v3[10];
  v14 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v15);
  sub_1BCE1A6E0();
  v28 = a1;
  sub_1BCE1A6A0();
  (*(v14 + 40))(v31, v8, v15, v14);
  v16 = *(v6 + 8);
  v29 = v6 + 8;
  v30 = v5;
  v16(v8, v5);
  v17 = v12;
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1BC94C05C(v11, &qword_1EBD07868);
    return 0;
  }

  else
  {
    v19 = v26;
    v20 = v27;
    v21 = v11;
    v22 = v17;
    (*(v27 + 32))(v26, v21, v17);
    v23 = v3[15];
    v24 = v3[16];
    __swift_project_boxed_opaque_existential_1(v3 + 12, v23);
    sub_1BCE1A6E0();
    v18 = (*(v24 + 8))(v19, v31, v8, v23, v24);
    v16(v8, v30);
    (*(v20 + 8))(v19, v22);
  }

  return v18;
}

BOOL sub_1BCC347D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BCE1A6F0();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BCE19060();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MoonRiseSet();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BCE19470();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D28);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v46 - v18;
  v20 = sub_1BCC35838(a1, a2);
  if (v20 == 2)
  {
    sub_1BCE1A6E0();
    v46 = a3;
    sub_1BCE1A6A0();
    sub_1BCC35E48(a1, v16, v19, v21, v22);
    (*(v14 + 8))(v16, v13);
    if (__swift_getEnumTagSinglePayload(v19, 1, v10) == 1)
    {
      sub_1BC94C05C(v19, &qword_1EBD08D28);
      if (qword_1EBD070C0 != -1)
      {
        swift_once();
      }

      v23 = sub_1BCE1ACC0();
      __swift_project_value_buffer(v23, qword_1EBD094E0);
      v24 = v47;
      v25 = v48;
      v26 = v49;
      (*(v48 + 16))(v47, a1, v49);
      v28 = v50;
      v27 = v51;
      v29 = v52;
      (*(v51 + 16))(v50, v46, v52);
      v30 = sub_1BCE1ACA0();
      v31 = sub_1BCE1D8B0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v53 = v46;
        *v32 = 136446723;
        sub_1BCC368E0(&qword_1EDA1BF08, MEMORY[0x1E6969530]);
        v33 = sub_1BCE1E050();
        v34 = v26;
        v35 = v33;
        v37 = v36;
        (*(v25 + 8))(v24, v34);
        v38 = sub_1BC98FE38(v35, v37, &v53);

        *(v32 + 4) = v38;
        *(v32 + 12) = 2160;
        *(v32 + 14) = 1752392040;
        *(v32 + 22) = 2081;
        sub_1BCC368E0(&qword_1EBD0B328, MEMORY[0x1E69E17A8]);
        v39 = sub_1BCE1E050();
        v41 = v40;
        (*(v27 + 8))(v28, v29);
        v42 = sub_1BC98FE38(v39, v41, &v53);

        *(v32 + 24) = v42;
        _os_log_impl(&dword_1BC940000, v30, v31, "Failed to find nextMoonEvent for date: %{public}s,  location: %{private,mask.hash}s", v32, 0x20u);
        v43 = v46;
        swift_arrayDestroy();
        MEMORY[0x1BFB31B10](v43, -1, -1);
        MEMORY[0x1BFB31B10](v32, -1, -1);
      }

      else
      {

        (*(v27 + 8))(v28, v29);
        (*(v25 + 8))(v24, v26);
      }

      return 1;
    }

    else
    {
      sub_1BCC36AC8(v19, v12, type metadata accessor for MoonRiseSet);
      v44 = swift_getEnumCaseMultiPayload() == 1;
      sub_1BCC38484(v12, type metadata accessor for MoonRiseSet);
      sub_1BCC38484(v19, type metadata accessor for MoonRiseSet);
    }
  }

  else
  {
    return v20;
  }

  return v44;
}

uint64_t InterpolatedMoonDataProvider.makeInterpolatedMoonData(location:selectedDate:dayMoonPhase:moonrise:moonset:moonRiseSetEvents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v94 = a6;
  v90 = a5;
  v89 = a4;
  v108 = a3;
  v104 = a2;
  v102 = a7;
  v95 = sub_1BCE1A7E0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v96 = v10 - v9;
  OUTLINED_FUNCTION_13();
  v93 = sub_1BCE1A6F0();
  OUTLINED_FUNCTION_2();
  v92 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_42();
  v91 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_4_44(v15, v83);
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v83 - v17;
  OUTLINED_FUNCTION_13();
  v103 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v99 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_39();
  v88 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v105 = &v83 - v22;
  v87 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v83 - v25;
  v27 = sub_1BCE19470();
  v97 = v27;
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  v32 = sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v83 - v39;
  v98 = a1;
  sub_1BCE1A6E0();
  sub_1BCE192A0();
  v41 = *(v28 + 8);
  v41(v31, v27);
  sub_1BCE1A6E0();
  sub_1BCE192A0();
  v42 = v104;
  sub_1BCE19290();
  v44 = *(v34 + 8);
  v43 = v34 + 8;
  v100 = v44;
  v101 = v32;
  v44(v37, v32);
  v41(v31, v97);
  v45 = v105;
  sub_1BCE18EF0();
  v46 = v109[6];
  v47 = v26;
  v48 = v45;
  __swift_project_boxed_opaque_existential_1(v109 + 2, v109[5]);
  v49 = v98;
  sub_1BCE1A6A0();
  v50 = v42;
  v51 = v108;
  (*(v46 + 8))(v110, v50, v47, v48);
  if (v111)
  {
    v52 = *(v99 + 8);
    v53 = v103;
    v52(v48, v103);
    v52(v47, v53);
    v100(v40, v101);
    v54 = type metadata accessor for InterpolatedMoonData();
    v55 = v102;
    v56 = 1;
  }

  else
  {
    v86 = v40;
    v97 = v43;
    v57 = v99;
    v58 = v103;
    v59 = v110[0];
    v61 = v110[2];
    v60 = v110[3];
    if (v51 == 8)
    {
      v51 = MoonPhase.init(illuminatedFraction:phaseAngle:)(v110[0], v110[1]);
    }

    v108 = v51;
    sub_1BC952ABC(v89, v106, &qword_1EBD07868);
    sub_1BC952ABC(v90, v107, &qword_1EBD07868);
    v90 = v47;
    v89 = sub_1BCC344D8(v49, v47);
    v85 = v62;
    v84 = v63;
    v64 = v88;
    (*(v57 + 16))(v88, v104, v58);
    v65 = v92;
    v66 = v91;
    v67 = v93;
    (*(v92 + 16))(v91, v49, v93);
    v68 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v69 = (v87 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = (*(v65 + 80) + v69 + 8) & ~*(v65 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = v109;
    (*(v57 + 32))(v71 + v68, v64, v58);
    *(v71 + v69) = v94;
    (*(v65 + 32))(v71 + v70, v66, v67);
    v72 = v102;
    *v102 = v59;
    *(v72 + 8) = v108;
    v72[2] = v61;
    v73 = type metadata accessor for InterpolatedMoonData();
    sub_1BC952ABC(v106, v72 + v73[7], &qword_1EBD07868);
    sub_1BC952ABC(v107, v72 + v73[8], &qword_1EBD07868);
    v74 = v72 + v73[9];
    v75 = v85;
    *v74 = v89;
    *(v74 + 1) = v75;
    v74[16] = v84;
    *(v72 + v73[10]) = v60;
    v76 = swift_allocObject();
    *(v76 + 16) = sub_1BCC36788;
    *(v76 + 24) = v71;
    *&v110[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_2_57();
    sub_1BCC368E0(v77, v78);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C510);
    sub_1BC96DFE0();
    sub_1BCE1DC30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B320);
    swift_allocObject();
    v79 = sub_1BCE1A940();

    sub_1BC94C05C(v107, &qword_1EBD07868);
    sub_1BC94C05C(v106, &qword_1EBD07868);
    v80 = *(v57 + 8);
    v81 = v103;
    v80(v105, v103);
    v80(v90, v81);
    v100(v86, v101);
    *(v72 + v73[11]) = v79;
    v55 = v72;
    v56 = 0;
    v54 = v73;
  }

  return __swift_storeEnumTagSinglePayload(v55, v56, 1, v54);
}

uint64_t sub_1BCC35684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_weakInit();
  v7 = sub_1BCC356EC(v9, a2, a3, a4);
  swift_weakDestroy();
  return v7;
}

uint64_t sub_1BCC356EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = sub_1BCC347D0(a2, a3, a4);

    return v7;
  }

  else
  {
    if (qword_1EBD070C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v9, qword_1EBD094E0);
    v10 = sub_1BCE1ACA0();
    v11 = sub_1BCE1D8B0();
    if (os_log_type_enabled(v10, v11))
    {
      v8 = 2;
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BC940000, v10, v11, "Failed to determine moonrise or moonset for the day", v12, 2u);
      MEMORY[0x1BFB31B10](v12, -1, -1);
    }

    else
    {

      return 2;
    }
  }

  return v8;
}

uint64_t sub_1BCC35838(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v3 = type metadata accessor for MoonTimeEvent();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v56 = type metadata accessor for MoonRiseSet();
  MEMORY[0x1EEE9AC00](v56);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v50 - v21;
  v23 = *(a2 + 16);
  if (v23)
  {
    v24 = a2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v25 = *(v20 + 72);
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1BCC36AC8(v24, v22, type metadata accessor for MoonRiseSet);
      sub_1BC960198(v22, v18, type metadata accessor for MoonRiseSet);
      swift_getEnumCaseMultiPayload();
      v27 = sub_1BCE19060();
      (*(*(v27 - 8) + 32))(v13, v18, v27);
      swift_storeEnumTagMultiPayload();
      sub_1BC960198(v13, v16, type metadata accessor for MoonTimeEvent);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BCB66130();
        v26 = v29;
      }

      v28 = *(v26 + 16);
      if (v28 >= *(v26 + 24) >> 1)
      {
        sub_1BCB66130();
        v26 = v30;
      }

      *(v26 + 16) = v28 + 1;
      sub_1BC960198(v16, v26 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v28, type metadata accessor for MoonTimeEvent);
      v24 += v25;
      --v23;
    }

    while (v23);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v26 + 16))
  {
    goto LABEL_23;
  }

  v31 = sub_1BCE19060();
  v32 = *(*(v31 - 8) + 16);
  v33 = v54;
  v32(v55, v54, v31);
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BCB66130();
    v26 = v48;
  }

  v34 = *(v26 + 16);
  if (v34 >= *(v26 + 24) >> 1)
  {
    sub_1BCB66130();
    v26 = v49;
  }

  *(v26 + 16) = v34 + 1;
  v35 = v26 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
  v36 = *(v57 + 72);
  sub_1BC960198(v55, v35 + v36 * v34, type metadata accessor for MoonTimeEvent);
  v37 = *(v26 + 16);
  v59[0] = v35;
  v59[1] = v37;
  sub_1BCC36998(v59);
  v38 = v53;
  v32(v53, v33, v31);
  swift_storeEnumTagMultiPayload();
  v39 = sub_1BCD87790(v38, v26);
  v41 = v40;
  result = sub_1BCC38484(v38, type metadata accessor for MoonTimeEvent);
  if ((v41 & 1) != 0 || (v43 = *(v26 + 16), v43 < 2))
  {
LABEL_23:

    return 2;
  }

  if (v39 < 1)
  {
LABEL_21:
    v46 = v52;
    sub_1BCC36AC8(v35 + v36, v52, type metadata accessor for MoonTimeEvent);
    v47 = sub_1BCB3C0A8();
    sub_1BCC38484(v46, type metadata accessor for MoonTimeEvent);

    if (v47 != 2)
    {
      return (v47 & 1) == 0;
    }

    return 2;
  }

  if (v39 <= v43)
  {
    v44 = v51;
    sub_1BCC36AC8(v35 + (v39 - 1) * v36, v51, type metadata accessor for MoonTimeEvent);
    v45 = sub_1BCB3C0A8();
    result = sub_1BCC38484(v44, type metadata accessor for MoonTimeEvent);
    if (v45 != 2)
    {

      return v45;
    }

    if (*(v26 + 16) >= 2uLL)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCC35E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v68 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v59 - v11;
  v12 = type metadata accessor for DayMoonData();
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D28);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v59 - v19;
  v60 = sub_1BCE19060();
  v20 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v59 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v80 = &v59 - v26;
  v63 = sub_1BCE193E0();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE192A0();
  v29 = v5[20];
  v30 = v5[21];
  v74 = v5;
  __swift_project_boxed_opaque_existential_1(v5 + 17, v29);
  v31 = *(v30 + 8);
  v73 = a2;
  v32 = a2;
  v33 = &qword_1EBD08D28;
  v34 = v30;
  v35 = v60;
  v31(v68, v32, v29, v34);
  v75 = v28;
  sub_1BCE18EF0();
  v36 = *(v20 + 8);
  v20 += 8;
  v71 = v24;
  v77 = v36;
  v36(v24, v35);
  v37 = type metadata accessor for MoonRiseSet();
  __swift_storeEnumTagSinglePayload(a3, 1, 1, v37);
  v64 = (v20 + 8);
  v78 = v20;
  v69 = (v20 + 24);
  v38 = v61;
  v39 = 30;
  v70 = v37;
  while (1)
  {
    v40 = v76;
    sub_1BC952ABC(a3, v76, v33);
    if (__swift_getEnumTagSinglePayload(v40, 1, v37) != 1)
    {
      v77(v80, v35);
      (*(v62 + 8))(v75, v63);
      return sub_1BC94C05C(v40, &qword_1EBD08D28);
    }

    sub_1BC94C05C(v40, v33);
    if (!v39)
    {
      break;
    }

    v79 = v39;
    v41 = v35;
    v42 = v33;
    v43 = a3;
    v44 = v74[10];
    v45 = v74[11];
    __swift_project_boxed_opaque_existential_1(v74 + 7, v44);
    v46 = v12;
    v47 = v72;
    (*(v45 + 56))(v80, v73, v44, v45, a4, a5);
    v48 = v47;
    v12 = v46;
    if (__swift_getEnumTagSinglePayload(v48, 1, v46) == 1)
    {
      sub_1BC94C05C(v48, &qword_1EBD08D30);
      a3 = v43;
      v33 = v42;
      v35 = v41;
      v37 = v70;
    }

    else
    {
      v49 = v67;
      sub_1BC960198(v48, v67, type metadata accessor for DayMoonData);
      v35 = v41;
      v50 = (*v64)(v38, v68, v41);
      MEMORY[0x1EEE9AC00](v50);
      *(&v59 - 2) = v38;
      v51 = v66;
      sub_1BC9602E8();
      v52 = v51;
      sub_1BCC38484(v49, type metadata accessor for DayMoonData);
      a3 = v43;
      v53 = v43;
      v33 = v42;
      sub_1BC94C05C(v53, v42);
      v37 = v70;
      if (__swift_getEnumTagSinglePayload(v52, 1, v70) == 1)
      {
        sub_1BC94C05C(v52, v42);
        v77(v38, v35);
        v54 = v65;
        __swift_storeEnumTagSinglePayload(v65, 1, 1, v37);
      }

      else
      {
        v55 = v52;
        v54 = v65;
        sub_1BC960198(v55, v65, type metadata accessor for MoonRiseSet);
        __swift_storeEnumTagSinglePayload(v54, 0, 1, v37);
        v77(v38, v35);
      }

      sub_1BCC36928(v54, a3);
    }

    v56 = v71;
    v57 = v80;
    sub_1BCE18EF0();
    v77(v57, v35);
    (*v69)(v57, v56, v35);
    v39 = v79 - 1;
  }

  v77(v80, v35);
  return (*(v62 + 8))(v75, v63);
}

uint64_t InterpolatedMoonDataProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  return v0;
}

uint64_t InterpolatedMoonDataProvider.__deallocating_deinit()
{
  InterpolatedMoonDataProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1BCE1A6F0();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 8) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;

  (*(v3 + 8))(v0 + v5, v1);

  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v15, v16 | 7);
}

uint64_t sub_1BCC3678C()
{
  v1 = *(sub_1BCE19060() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1BCE1A6F0() - 8);
  return sub_1BCC35684(*(v0 + 16), v0 + v2, *(v0 + v3), v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80)));
}

uint64_t sub_1BCC368E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BCC36928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BCC36998(unint64_t *a1)
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
        type metadata accessor for MoonTimeEvent();
        v6 = sub_1BCE1D5A0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for MoonTimeEvent() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BCC36F28(v8, v9, a1, v4);
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
    sub_1BCC36B28(0, v2, 1, a1);
  }
}

uint64_t sub_1BCC36AC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_1BCC36B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v56 = sub_1BCE19060();
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v40 - v11;
  v50 = type metadata accessor for MoonTimeEvent();
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v40 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v40 - v21;
  v42 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v20 + 72);
    v51 = (v8 + 8);
    v52 = (v8 + 32);
    v24 = v22 + v23 * (a3 - 1);
    v47 = -v23;
    v48 = v22;
    v25 = a1 - a3;
    v41 = v23;
    v26 = v22 + v23 * a3;
    while (2)
    {
      v45 = v24;
      v46 = a3;
      v43 = v26;
      v44 = v25;
      v58 = v25;
      do
      {
        v27 = v59;
        sub_1BCC36AC8(v26, v59, type metadata accessor for MoonTimeEvent);
        v28 = v60;
        sub_1BCC36AC8(v24, v60, type metadata accessor for MoonTimeEvent);
        v29 = v53;
        sub_1BCC36AC8(v27, v53, type metadata accessor for MoonTimeEvent);
        v30 = *v52;
        v31 = v55;
        v32 = v29;
        v33 = v56;
        (*v52)(v55, v32, v56);
        v34 = v54;
        sub_1BCC36AC8(v28, v54, type metadata accessor for MoonTimeEvent);
        v35 = v57;
        v30(v57, v34, v33);
        v36 = sub_1BCE18FD0();
        v37 = *v51;
        (*v51)(v35, v33);
        v37(v31, v33);
        sub_1BCC38484(v60, type metadata accessor for MoonTimeEvent);
        sub_1BCC38484(v59, type metadata accessor for MoonTimeEvent);
        if ((v36 & 1) == 0)
        {
          break;
        }

        if (!v48)
        {
          __break(1u);
          return;
        }

        v38 = v49;
        sub_1BC960198(v26, v49, type metadata accessor for MoonTimeEvent);
        swift_arrayInitWithTakeFrontToBack();
        sub_1BC960198(v38, v24, type metadata accessor for MoonTimeEvent);
        v24 += v47;
        v26 += v47;
      }

      while (!__CFADD__(v58++, 1));
      a3 = v46 + 1;
      v24 = v45 + v41;
      v25 = v44 - 1;
      v26 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1BCC36F28(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v162 = a1;
  v190 = sub_1BCE19060();
  v6 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v187 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v186 = &v156 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v172 = &v156 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v171 = &v156 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v159 = &v156 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v158 = &v156 - v17;
  v183 = type metadata accessor for MoonTimeEvent();
  v175 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v165 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v182 = &v156 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v185 = &v156 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v184 = &v156 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v193 = &v156 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v192 = &v156 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v170 = &v156 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v169 = &v156 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v168 = &v156 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v178 = &v156 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v157 = &v156 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v161 = &v156 - v40;
  v176 = a3;
  v41 = a3[1];
  if (v41 < 1)
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v193 = *v162;
    if (!v193)
    {
      goto LABEL_141;
    }

    v147 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v177;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_102:
      v149 = (v147 + 16);
      for (i = *(v147 + 2); i >= 2; *v149 = i)
      {
        if (!*v176)
        {
          goto LABEL_138;
        }

        v151 = &v147[16 * i];
        v152 = *v151;
        v153 = &v149[2 * i];
        v154 = *(v153 + 1);
        sub_1BCC37CD4(*v176 + *(v175 + 72) * *v151, (*v176 + *(v175 + 72) * *v153), (*v176 + *(v175 + 72) * v154), v193);
        if (v43)
        {
          break;
        }

        if (v154 < v152)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v149)
        {
          goto LABEL_127;
        }

        *v151 = v152;
        *(v151 + 1) = v154;
        v155 = *v149 - i;
        if (*v149 < i)
        {
          goto LABEL_128;
        }

        i = *v149 - 1;
        sub_1BCBECE14(v153 + 16, v155, v153);
      }

LABEL_110:

      return;
    }

LABEL_135:
    v147 = sub_1BCBECBBC();
    goto LABEL_102;
  }

  v156 = a4;
  v42 = 0;
  v188 = (v6 + 32);
  v189 = (v6 + 8);
  v43 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v44 = v42++;
    v166 = v44;
    if (v42 < v41)
    {
      v160 = v43;
      v45 = *(v175 + 72);
      v46 = *v176 + v45 * v42;
      v191 = *v176;
      v47 = v191;
      v48 = v44;
      v43 = (v191 + v45 * v42);
      v180 = v41;
      sub_1BCC36AC8(v46, v161, type metadata accessor for MoonTimeEvent);
      v49 = v47 + v45 * v48;
      v50 = v157;
      sub_1BCC36AC8(v49, v157, type metadata accessor for MoonTimeEvent);
      v51 = v158;
      sub_1BCB3C014(v158);
      v52 = v159;
      sub_1BCB3C014(v159);
      LODWORD(v174) = sub_1BCE18FD0();
      v53 = v190;
      v54 = *v189;
      (*v189)(v52, v190);
      v173 = v54;
      v54(v51, v53);
      sub_1BCC38484(v50, type metadata accessor for MoonTimeEvent);
      sub_1BCC38484(v161, type metadata accessor for MoonTimeEvent);
      v55 = v180;
      v56 = v166 + 2;
      v181 = v45;
      v57 = v191 + v45 * (v166 + 2);
      while (1)
      {
        v58 = v56;
        v59 = v42 + 1;
        if (v59 >= v55)
        {
          break;
        }

        v179 = v59;
        v60 = v178;
        v191 = v56;
        sub_1BCC36AC8(v57, v178, type metadata accessor for MoonTimeEvent);
        v61 = v168;
        sub_1BCC36AC8(v43, v168, type metadata accessor for MoonTimeEvent);
        v62 = v60;
        v63 = v169;
        sub_1BCC36AC8(v62, v169, type metadata accessor for MoonTimeEvent);
        v64 = *v188;
        v65 = v171;
        v66 = v190;
        (*v188)(v171, v63, v190);
        v67 = v170;
        sub_1BCC36AC8(v61, v170, type metadata accessor for MoonTimeEvent);
        v68 = v172;
        v64(v172, v67, v66);
        LODWORD(v64) = sub_1BCE18FD0() & 1;
        v69 = v68;
        v70 = v173;
        (v173)(v69, v66);
        v70(v65, v66);
        sub_1BCC38484(v61, type metadata accessor for MoonTimeEvent);
        v42 = v179;
        sub_1BCC38484(v178, type metadata accessor for MoonTimeEvent);
        v58 = v191;
        v57 += v181;
        v43 += v181;
        v56 = v191 + 1;
        v55 = v180;
        if ((v174 & 1) != v64)
        {
          goto LABEL_9;
        }
      }

      v42 = v55;
LABEL_9:
      if ((v174 & 1) == 0)
      {
        v44 = v166;
LABEL_30:
        v43 = v160;
        goto LABEL_31;
      }

      v44 = v166;
      if (v42 < v166)
      {
        goto LABEL_132;
      }

      if (v166 >= v42)
      {
        goto LABEL_30;
      }

      if (v55 >= v58)
      {
        v71 = v58;
      }

      else
      {
        v71 = v55;
      }

      v72 = v181 * (v71 - 1);
      v73 = v181 * v71;
      v74 = v166 * v181;
      v75 = v42;
      v76 = v166;
      v43 = v160;
      do
      {
        if (v76 != --v75)
        {
          v77 = *v176;
          if (!*v176)
          {
            goto LABEL_139;
          }

          sub_1BC960198(v77 + v74, v165, type metadata accessor for MoonTimeEvent);
          v78 = v74 < v72 || v77 + v74 >= v77 + v73;
          if (v78)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v74 != v72)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1BC960198(v165, v77 + v72, type metadata accessor for MoonTimeEvent);
          v44 = v166;
        }

        ++v76;
        v72 -= v181;
        v73 -= v181;
        v74 += v181;
      }

      while (v76 < v75);
    }

LABEL_31:
    v79 = v176[1];
    if (v42 < v79)
    {
      if (__OFSUB__(v42, v44))
      {
        goto LABEL_131;
      }

      if (v42 - v44 < v156)
      {
        break;
      }
    }

LABEL_47:
    if (v42 < v44)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BCB65134(0, *(v43 + 2) + 1, 1, v43);
      v43 = v145;
    }

    v103 = *(v43 + 2);
    v102 = *(v43 + 3);
    v104 = v103 + 1;
    if (v103 >= v102 >> 1)
    {
      sub_1BCB65134(v102 > 1, v103 + 1, 1, v43);
      v43 = v146;
    }

    *(v43 + 2) = v104;
    v105 = v43 + 32;
    v106 = &v43[16 * v103 + 32];
    *v106 = v166;
    *(v106 + 1) = v42;
    v191 = *v162;
    if (!v191)
    {
      goto LABEL_140;
    }

    if (v103)
    {
      while (1)
      {
        v107 = v104 - 1;
        v108 = &v105[2 * v104 - 2];
        v109 = &v43[16 * v104];
        if (v104 >= 4)
        {
          break;
        }

        if (v104 == 3)
        {
          v110 = *(v43 + 4);
          v111 = *(v43 + 5);
          v120 = __OFSUB__(v111, v110);
          v112 = v111 - v110;
          v113 = v120;
LABEL_67:
          if (v113)
          {
            goto LABEL_117;
          }

          v125 = *v109;
          v124 = *(v109 + 1);
          v126 = __OFSUB__(v124, v125);
          v127 = v124 - v125;
          v128 = v126;
          if (v126)
          {
            goto LABEL_120;
          }

          v129 = v108[1];
          v130 = v129 - *v108;
          if (__OFSUB__(v129, *v108))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v127, v130))
          {
            goto LABEL_125;
          }

          if (v127 + v130 >= v112)
          {
            if (v112 < v130)
            {
              v107 = v104 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v104 < 2)
        {
          goto LABEL_119;
        }

        v132 = *v109;
        v131 = *(v109 + 1);
        v120 = __OFSUB__(v131, v132);
        v127 = v131 - v132;
        v128 = v120;
LABEL_82:
        if (v128)
        {
          goto LABEL_122;
        }

        v134 = *v108;
        v133 = v108[1];
        v120 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v120)
        {
          goto LABEL_124;
        }

        if (v135 < v127)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v107 - 1 >= v104)
        {
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
          goto LABEL_134;
        }

        if (!*v176)
        {
          goto LABEL_137;
        }

        v139 = &v105[2 * v107 - 2];
        v140 = *v139;
        v141 = &v105[2 * v107];
        v142 = *(v141 + 1);
        v143 = v177;
        sub_1BCC37CD4(*v176 + *(v175 + 72) * *v139, (*v176 + *(v175 + 72) * *v141), (*v176 + *(v175 + 72) * v142), v191);
        v177 = v143;
        if (v143)
        {
          goto LABEL_110;
        }

        if (v142 < v140)
        {
          goto LABEL_112;
        }

        v144 = *(v43 + 2);
        if (v107 > v144)
        {
          goto LABEL_113;
        }

        *v139 = v140;
        v139[1] = v142;
        if (v107 >= v144)
        {
          goto LABEL_114;
        }

        v104 = v144 - 1;
        sub_1BCBECE14(v141 + 16, v144 - 1 - v107, &v105[2 * v107]);
        *(v43 + 2) = v144 - 1;
        if (v144 <= 2)
        {
          goto LABEL_96;
        }
      }

      v114 = &v105[2 * v104];
      v115 = *(v114 - 8);
      v116 = *(v114 - 7);
      v120 = __OFSUB__(v116, v115);
      v117 = v116 - v115;
      if (v120)
      {
        goto LABEL_115;
      }

      v119 = *(v114 - 6);
      v118 = *(v114 - 5);
      v120 = __OFSUB__(v118, v119);
      v112 = v118 - v119;
      v113 = v120;
      if (v120)
      {
        goto LABEL_116;
      }

      v121 = *(v109 + 1);
      v122 = v121 - *v109;
      if (__OFSUB__(v121, *v109))
      {
        goto LABEL_118;
      }

      v120 = __OFADD__(v112, v122);
      v123 = v112 + v122;
      if (v120)
      {
        goto LABEL_121;
      }

      if (v123 >= v117)
      {
        v137 = *v108;
        v136 = v108[1];
        v120 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v120)
        {
          goto LABEL_129;
        }

        if (v112 < v138)
        {
          v107 = v104 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v41 = v176[1];
    if (v42 >= v41)
    {
      goto LABEL_100;
    }
  }

  v80 = v44 + v156;
  if (__OFADD__(v44, v156))
  {
    goto LABEL_133;
  }

  if (v80 >= v79)
  {
    v80 = v176[1];
  }

  if (v80 < v44)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v42 == v80)
  {
    goto LABEL_47;
  }

  v160 = v43;
  v81 = *v176;
  v82 = *(v175 + 72);
  v83 = *v176 + v82 * (v42 - 1);
  v180 = -v82;
  v181 = v81;
  v84 = (v44 - v42);
  v163 = v82;
  v85 = v81 + v42 * v82;
  v164 = v80;
LABEL_40:
  v179 = v42;
  v167 = v85;
  v173 = v84;
  v174 = v83;
  v86 = v84;
  while (1)
  {
    v191 = v86;
    v87 = v192;
    sub_1BCC36AC8(v85, v192, type metadata accessor for MoonTimeEvent);
    v88 = v193;
    sub_1BCC36AC8(v83, v193, type metadata accessor for MoonTimeEvent);
    v89 = v87;
    v90 = v184;
    sub_1BCC36AC8(v89, v184, type metadata accessor for MoonTimeEvent);
    v91 = *v188;
    v92 = v186;
    v93 = v90;
    v94 = v190;
    (*v188)(v186, v93, v190);
    v95 = v88;
    v96 = v185;
    sub_1BCC36AC8(v95, v185, type metadata accessor for MoonTimeEvent);
    v97 = v187;
    v91(v187, v96, v94);
    v98 = sub_1BCE18FD0();
    v99 = *v189;
    (*v189)(v97, v94);
    v99(v92, v94);
    sub_1BCC38484(v193, type metadata accessor for MoonTimeEvent);
    sub_1BCC38484(v192, type metadata accessor for MoonTimeEvent);
    if ((v98 & 1) == 0)
    {
LABEL_45:
      v42 = v179 + 1;
      v83 = v174 + v163;
      v84 = v173 - 1;
      v85 = v167 + v163;
      if (v179 + 1 == v164)
      {
        v42 = v164;
        v43 = v160;
        v44 = v166;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    v100 = v191;
    if (!v181)
    {
      break;
    }

    v101 = v182;
    sub_1BC960198(v85, v182, type metadata accessor for MoonTimeEvent);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BC960198(v101, v83, type metadata accessor for MoonTimeEvent);
    v83 += v180;
    v85 += v180;
    v78 = __CFADD__(v100, 1);
    v86 = v100 + 1;
    if (v78)
    {
      goto LABEL_45;
    }
  }

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
}

void sub_1BCC37CD4(unint64_t a1, _BYTE *a2, _BYTE *a3, unint64_t a4)
{
  v95 = sub_1BCE19060();
  v8 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v83 = &v79[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v79[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v79[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v79[-v15];
  v92 = type metadata accessor for MoonTimeEvent();
  MEMORY[0x1EEE9AC00](v92);
  v81 = &v79[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v79[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v79[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v79[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v89 = &v79[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v88 = &v79[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v87 = &v79[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v96 = &v79[-v30];
  v32 = *(v31 + 72);
  if (!v32)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v33 = &a2[-a1] == 0x8000000000000000 && v32 == -1;
  if (v33)
  {
    goto LABEL_61;
  }

  v34 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v32 == -1)
  {
    goto LABEL_62;
  }

  v36 = &a2[-a1] / v32;
  v101 = a1;
  v100 = a4;
  v93 = (v8 + 8);
  v94 = (v8 + 32);
  v37 = v34 / v32;
  if (v36 >= v34 / v32)
  {
    sub_1BCA15028(a2, v34 / v32, a4);
    v55 = (a4 + v37 * v32);
    v56 = -v32;
    v57 = v55;
    v97 = a1;
    v98 = a4;
    v88 = -v32;
LABEL_37:
    v58 = &a2[v56];
    v96 = a3;
    v59 = v57;
    v89 = &a2[v56];
    v90 = a2;
    v87 = v57;
    while (1)
    {
      if (v55 <= a4)
      {
        v101 = a2;
        v99 = v59;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v84 = v59;
      v91 = &v55[v56];
      v60 = v85;
      sub_1BCC36AC8(&v55[v56], v85, type metadata accessor for MoonTimeEvent);
      v61 = v86;
      sub_1BCC36AC8(v58, v86, type metadata accessor for MoonTimeEvent);
      v62 = v55;
      v63 = v80;
      sub_1BCC36AC8(v60, v80, type metadata accessor for MoonTimeEvent);
      v64 = v95;
      v65 = *v94;
      v66 = v56;
      v67 = v82;
      (*v94)(v82, v63, v95);
      v68 = v81;
      sub_1BCC36AC8(v61, v81, type metadata accessor for MoonTimeEvent);
      v69 = v83;
      v65(v83, v68, v64);
      a3 = &v96[v66];
      v70 = v96;
      v71 = sub_1BCE18FD0();
      v72 = *v93;
      (*v93)(v69, v64);
      v72(v67, v64);
      sub_1BCC38484(v86, type metadata accessor for MoonTimeEvent);
      sub_1BCC38484(v85, type metadata accessor for MoonTimeEvent);
      if (v71)
      {
        v55 = v62;
        v76 = v70 < v90 || a3 >= v90;
        a4 = v98;
        if (v76)
        {
          a2 = v89;
          swift_arrayInitWithTakeFrontToBack();
          v57 = v84;
          a1 = v97;
          v56 = v88;
        }

        else
        {
          v77 = v84;
          v57 = v84;
          v33 = v70 == v90;
          v56 = v88;
          v78 = v89;
          a2 = v89;
          a1 = v97;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v78;
            v57 = v77;
          }
        }

        goto LABEL_37;
      }

      v73 = v70 < v62 || a3 >= v62;
      a4 = v98;
      if (v73)
      {
        v74 = v91;
        swift_arrayInitWithTakeFrontToBack();
        v96 = a3;
        v55 = v74;
        v59 = v74;
        v58 = v89;
        a2 = v90;
        a1 = v97;
        v57 = v87;
        v56 = v88;
      }

      else
      {
        a2 = v90;
        v75 = v91;
        v59 = v91;
        v33 = v62 == v70;
        v96 = a3;
        v55 = v91;
        a1 = v97;
        v56 = v88;
        v58 = v89;
        v57 = v87;
        if (!v33)
        {
          swift_arrayInitWithTakeBackToFront();
          v96 = a3;
          v55 = v75;
          v59 = v75;
        }
      }
    }

    v101 = a2;
    v99 = v57;
  }

  else
  {
    sub_1BCA15028(a1, &a2[-a1] / v32, a4);
    v85 = a3;
    v86 = (a4 + v36 * v32);
    v99 = v86;
    v84 = v32;
    while (a4 < v86 && a2 < v85)
    {
      v97 = a1;
      v39 = v96;
      sub_1BCC36AC8(a2, v96, type metadata accessor for MoonTimeEvent);
      v40 = v87;
      sub_1BCC36AC8(a4, v87, type metadata accessor for MoonTimeEvent);
      v41 = v88;
      sub_1BCC36AC8(v39, v88, type metadata accessor for MoonTimeEvent);
      v98 = a4;
      v42 = v95;
      v43 = *v94;
      v44 = v90;
      (*v94)(v90, v41, v95);
      v45 = v89;
      sub_1BCC36AC8(v40, v89, type metadata accessor for MoonTimeEvent);
      v46 = a2;
      v47 = v91;
      v43(v91, v45, v42);
      v48 = sub_1BCE18FD0();
      v49 = *v93;
      (*v93)(v47, v42);
      v49(v44, v42);
      sub_1BCC38484(v40, type metadata accessor for MoonTimeEvent);
      sub_1BCC38484(v96, type metadata accessor for MoonTimeEvent);
      if (v48)
      {
        v50 = v97;
        v51 = v98;
        v52 = v84;
        a2 = &v84[v46];
        if (v97 < v46 || v97 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v97 != v46)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a4 = v51;
      }

      else
      {
        v52 = v84;
        v50 = v97;
        a4 = &v84[v98];
        if (v97 < v98 || v97 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v46;
        }

        else
        {
          a2 = v46;
          if (v97 != v98)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v100 = a4;
      }

      a1 = &v52[v50];
      v101 = a1;
    }
  }

LABEL_59:
  sub_1BCBECD14(&v101, &v100, &v99);
}

uint64_t sub_1BCC38484(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void BoundEntity.rawValue.getter()
{
  switch(*v0)
  {
    case 7:
    case 0x14:
      OUTLINED_FUNCTION_5_18();
      break;
    case 0x1B:
      OUTLINED_FUNCTION_1_56(0x7553u);
      break;
    case 0x23:
    case 0x24:
    case 0x25:
      OUTLINED_FUNCTION_5_43();
      break;
    case 0x26:
    case 0x27:
    case 0x28:
      OUTLINED_FUNCTION_2_58(0x6F43u);
      break;
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
      OUTLINED_FUNCTION_0_55();
      break;
    default:
      return;
  }
}

void BoundPropertyName.rawValue.getter()
{
  switch(*v0)
  {
    case 2:
    case 3:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xD:
    case 0xF:
    case 0x10:
    case 0x16:
    case 0x17:
    case 0x19:
    case 0x20:
    case 0x23:
    case 0x25:
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2F:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x37:
    case 0x38:
    case 0x3B:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0x3F:
    case 0x41:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x49:
    case 0x4F:
    case 0x51:
    case 0x52:
    case 0x53:
    case 0x54:
    case 0x55:
    case 0x56:
    case 0x58:
    case 0x5C:
    case 0x5D:
    case 0x5E:
    case 0x5F:
    case 0x62:
    case 0x63:
    case 0x64:
    case 0x66:
    case 0x67:
    case 0x68:
    case 0x69:
    case 0x6F:
    case 0x70:
    case 0x71:
    case 0x72:
    case 0x74:
    case 0x75:
    case 0x76:
    case 0x77:
    case 0x78:
    case 0x7B:
    case 0x7F:
    case 0x82:
    case 0x86:
    case 0x89:
    case 0x8A:
    case 0x8E:
    case 0x8F:
    case 0x92:
    case 0x97:
    case 0x99:
    case 0x9B:
    case 0xA0:
    case 0xA2:
    case 0xA4:
    case 0xA5:
    case 0xA9:
    case 0xAA:
    case 0xAC:
    case 0xAD:
    case 0xAF:
    case 0xB0:
    case 0xB1:
    case 0xB2:
    case 0xB3:
    case 0xB4:
    case 0xB5:
    case 0xB6:
    case 0xB7:
    case 0xB8:
    case 0xB9:
    case 0xBA:
    case 0xBB:
    case 0xBC:
    case 0xBD:
    case 0xBF:
    case 0xC0:
    case 0xC1:
    case 0xC2:
    case 0xC7:
    case 0xC8:
    case 0xC9:
    case 0xCC:
    case 0xD1:
    case 0xD3:
    case 0xD4:
    case 0xDA:
    case 0xE5:
    case 0xE6:
    case 0xE7:
    case 0xE8:
    case 0xE9:
      OUTLINED_FUNCTION_3_54();
      break;
    case 0xE:
    case 0x18:
    case 0x2D:
    case 0x35:
    case 0x42:
    case 0x4A:
    case 0x59:
    case 0x6A:
    case 0x6E:
    case 0x73:
    case 0x79:
    case 0x7A:
    case 0x83:
    case 0x84:
    case 0x90:
    case 0x98:
    case 0xA1:
    case 0xAB:
    case 0xAE:
    case 0xBE:
    case 0xC4:
    case 0xCF:
    case 0xDC:
    case 0xDD:
    case 0xDE:
    case 0xDF:
    case 0xE0:
    case 0xE1:
    case 0xE2:
      OUTLINED_FUNCTION_5_18();
      break;
    case 0xD2:
      OUTLINED_FUNCTION_1_56(0x7573u);
      break;
    case 0xE3:
    case 0xE4:
      OUTLINED_FUNCTION_2_58(0x6F63u);
      break;
    default:
      return;
  }
}

WeatherUI::BoundEntity_optional __swiftcall BoundEntity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BCE1E0B0();

  v5 = 0;
  v6 = 29;
  switch(v3)
  {
    case 0:
      goto LABEL_46;
    case 1:
      v5 = 1;
      goto LABEL_46;
    case 2:
      v5 = 2;
      goto LABEL_46;
    case 3:
      v5 = 3;
      goto LABEL_46;
    case 4:
      v5 = 4;
      goto LABEL_46;
    case 5:
      v5 = 5;
      goto LABEL_46;
    case 6:
      v5 = 6;
      goto LABEL_46;
    case 7:
      v5 = 7;
      goto LABEL_46;
    case 8:
      v5 = 8;
      goto LABEL_46;
    case 9:
      v5 = 9;
      goto LABEL_46;
    case 10:
      v5 = 10;
      goto LABEL_46;
    case 11:
      v5 = 11;
      goto LABEL_46;
    case 12:
      v5 = 12;
      goto LABEL_46;
    case 13:
      v5 = 13;
      goto LABEL_46;
    case 14:
      v5 = 14;
      goto LABEL_46;
    case 15:
      v5 = 15;
      goto LABEL_46;
    case 16:
      v5 = 16;
      goto LABEL_46;
    case 17:
      v5 = 17;
      goto LABEL_46;
    case 18:
      v5 = 18;
      goto LABEL_46;
    case 19:
      v5 = 19;
      goto LABEL_46;
    case 20:
      v5 = 20;
      goto LABEL_46;
    case 21:
      v5 = 21;
      goto LABEL_46;
    case 22:
      v5 = 22;
      goto LABEL_46;
    case 23:
      v5 = 23;
      goto LABEL_46;
    case 24:
      v5 = 24;
      goto LABEL_46;
    case 25:
      v5 = 25;
      goto LABEL_46;
    case 26:
      v5 = 26;
      goto LABEL_46;
    case 27:
      v5 = 27;
      goto LABEL_46;
    case 28:
      v5 = 28;
LABEL_46:
      v6 = v5;
      break;
    case 29:
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    default:
      v6 = 47;
      break;
  }

  *v2 = v6;
  return result;
}

void sub_1BCC39E34(void *a1@<X8>)
{
  BoundEntity.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

WeatherUI::BoundPropertyName_optional __swiftcall BoundPropertyName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B330);
  v3 = swift_allocObject();
  v4 = sub_1BCB0057C(v3, 239);
  *v5 = "cameraPosition";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  *(v5 + 24) = "cameraRotation";
  *(v5 + 32) = 14;
  *(v5 + 40) = 2;
  *(v5 + 48) = "cameraFocalLength";
  *(v5 + 56) = 17;
  *(v5 + 64) = 2;
  *(v5 + 72) = "cameraOrthographicScale";
  *(v5 + 80) = 23;
  *(v5 + 88) = 2;
  *(v5 + 96) = "bloomIntensity";
  *(v5 + 104) = 14;
  *(v5 + 112) = 2;
  *(v5 + 120) = "filmOffset";
  *(v5 + 128) = 10;
  *(v5 + 136) = 2;
  *(v5 + 144) = "lightningNumberOfBranches";
  *(v5 + 152) = 25;
  *(v5 + 160) = 2;
  *(v5 + 168) = "lightningRoughness";
  *(v5 + 176) = 18;
  *(v5 + 184) = 2;
  *(v5 + 192) = "lightningBranchSpread";
  *(v5 + 200) = 21;
  *(v5 + 208) = 2;
  *(v5 + 216) = "lightningThickness";
  *(v5 + 224) = 18;
  *(v5 + 232) = 2;
  *(v5 + 240) = "lightningBoltThicknessMultiplyer";
  *(v5 + 248) = 32;
  *(v5 + 256) = 2;
  *(v5 + 264) = "lightningFrequencyAnim";
  *(v5 + 272) = 22;
  *(v5 + 280) = 2;
  *(v5 + 288) = "lightningGlow";
  *(v5 + 296) = 13;
  *(v5 + 304) = 2;
  *(v5 + 312) = "lightningGrowLength";
  *(v5 + 320) = 19;
  *(v5 + 328) = 2;
  *(v5 + 336) = "lightningFlashLength";
  *(v5 + 344) = 20;
  *(v5 + 352) = 2;
  *(v5 + 360) = "lightningFadeLength";
  *(v5 + 368) = 19;
  *(v5 + 376) = 2;
  *(v5 + 384) = "lightningBranchFadeLength";
  *(v5 + 392) = 25;
  *(v5 + 400) = 2;
  *(v5 + 408) = "lightningScreenFlashFadeLength";
  *(v5 + 416) = 30;
  *(v5 + 424) = 2;
  *(v5 + 432) = "lightningScreenFlashProbability";
  *(v5 + 440) = 31;
  *(v5 + 448) = 2;
  *(v5 + 456) = "lightningScreenFlashBrightness";
  *(v5 + 464) = 30;
  *(v5 + 472) = 2;
  *(v5 + 480) = "lightningCloudFlashBrightness";
  *(v5 + 488) = 29;
  *(v5 + 496) = 2;
  *(v5 + 504) = "lightningCloudFlashProbability";
  *(v5 + 512) = 30;
  *(v5 + 520) = 2;
  *(v5 + 528) = "lightningDrawSpaceWidth";
  *(v5 + 536) = 23;
  *(v5 + 544) = 2;
  *(v5 + 552) = "lightningUseRespawn";
  *(v5 + 560) = 19;
  *(v5 + 568) = 2;
  *(v5 + 576) = "lightningRespawnSeed";
  *(v5 + 584) = 20;
  *(v5 + 592) = 2;
  *(v5 + 600) = "lightningFadeProgress";
  *(v5 + 608) = 21;
  *(v5 + 616) = 2;
  *(v5 + 624) = "moonElevation";
  *(v5 + 632) = 13;
  *(v5 + 640) = 2;
  *(v5 + 648) = "moonImage";
  *(v5 + 656) = 9;
  *(v5 + 664) = 2;
  *(v5 + 672) = "moonRiseToSet";
  *(v5 + 680) = 13;
  *(v5 + 688) = 2;
  *(v5 + 696) = "moonAngle";
  *(v5 + 704) = 9;
  *(v5 + 712) = 2;
  *(v5 + 720) = "moonScaleRange";
  *(v5 + 728) = 14;
  *(v5 + 736) = 2;
  *(v5 + 744) = "moonColor";
  *(v5 + 752) = 9;
  *(v5 + 760) = 2;
  *(v5 + 768) = "moonColorAtHorizon";
  *(v5 + 776) = 18;
  *(v5 + 784) = 2;
  *(v5 + 792) = "moonLightRadius";
  *(v5 + 800) = 15;
  *(v5 + 808) = 2;
  *(v5 + 816) = "moonPhaseAngle";
  *(v5 + 824) = 14;
  *(v5 + 832) = 2;
  *(v5 + 840) = "moonLightIntensity";
  *(v5 + 848) = 18;
  *(v5 + 856) = 2;
  *(v5 + 864) = "moonLightColor";
  *(v5 + 872) = 14;
  *(v5 + 880) = 2;
  *(v5 + 888) = "moonBrightenDarks";
  *(v5 + 896) = 17;
  *(v5 + 904) = 2;
  *(v5 + 912) = "gradientTop";
  *(v5 + 920) = 11;
  *(v5 + 928) = 2;
  *(v5 + 936) = "gradientMiddle";
  *(v5 + 944) = 14;
  *(v5 + 952) = 2;
  *(v5 + 960) = "gradientBottom";
  *(v5 + 968) = 14;
  *(v5 + 976) = 2;
  *(v5 + 984) = "rainFGParticleCount";
  *(v5 + 992) = 19;
  *(v5 + 1000) = 2;
  *(v5 + 1008) = "rainFGParticleVelocity";
  *(v5 + 1016) = 22;
  *(v5 + 1024) = 2;
  *(v5 + 1032) = "rainFGMinMaxSize";
  *(v5 + 1040) = 16;
  *(v5 + 1048) = 2;
  *(v5 + 1056) = "rainFGRandomColorStart";
  *(v5 + 1064) = 22;
  *(v5 + 1072) = 2;
  *(v5 + 1080) = "rainFGRandomColorEnd";
  *(v5 + 1088) = 20;
  *(v5 + 1096) = 2;
  *(v5 + 1104) = "rainFGSpread";
  *(v5 + 1112) = 12;
  *(v5 + 1120) = 2;
  *(v5 + 1128) = "rainFGNoiseFieldIntensity";
  *(v5 + 1136) = 25;
  *(v5 + 1144) = 2;
  *(v5 + 1152) = "rainFGNoiseFieldScale";
  *(v5 + 1160) = 21;
  *(v5 + 1168) = 2;
  *(v5 + 1176) = "rainBGParticleCount";
  *(v5 + 1184) = 19;
  *(v5 + 1192) = 2;
  *(v5 + 1200) = "rainBGParticleVelocity";
  *(v5 + 1208) = 22;
  *(v5 + 1216) = 2;
  *(v5 + 1224) = "rainBGMinMaxSize";
  *(v5 + 1232) = 16;
  *(v5 + 1240) = 2;
  *(v5 + 1248) = "rainBGRandomColorStart";
  *(v5 + 1256) = 22;
  *(v5 + 1264) = 2;
  *(v5 + 1272) = "rainBGRandomColorEnd";
  *(v5 + 1280) = 20;
  *(v5 + 1288) = 2;
  *(v5 + 1296) = "rainBGSpread";
  *(v5 + 1304) = 12;
  *(v5 + 1312) = 2;
  *(v5 + 1320) = "rainBGNoiseFieldIntensity";
  *(v5 + 1328) = 25;
  *(v5 + 1336) = 2;
  *(v5 + 1344) = "rainBGNoiseFieldScale";
  *(v5 + 1352) = 21;
  *(v5 + 1360) = 2;
  *(v5 + 1368) = "blowingSpeed";
  *(v5 + 1376) = 12;
  *(v5 + 1384) = 2;
  *(v5 + 1392) = "blowingAmount";
  *(v5 + 1400) = 13;
  *(v5 + 1408) = 2;
  *(v5 + 1416) = "snowFGParticleCount";
  *(v5 + 1424) = 19;
  *(v5 + 1432) = 2;
  *(v5 + 1440) = "snowFGParticleVelocity";
  *(v5 + 1448) = 22;
  *(v5 + 1456) = 2;
  *(v5 + 1464) = "snowFGMinMaxSize";
  *(v5 + 1472) = 16;
  *(v5 + 1480) = 2;
  *(v5 + 1488) = "snowFGNoiseFieldIntensity";
  *(v5 + 1496) = 25;
  *(v5 + 1504) = 2;
  *(v5 + 1512) = "snowFGNoiseFieldScale";
  *(v5 + 1520) = 21;
  *(v5 + 1528) = 2;
  *(v5 + 1536) = "snowFGSpread";
  *(v5 + 1544) = 12;
  *(v5 + 1552) = 2;
  *(v5 + 1560) = "snowFGRandomColorStart";
  *(v5 + 1568) = 22;
  *(v5 + 1576) = 2;
  *(v5 + 1584) = "snowFGRandomColorEnd";
  *(v5 + 1592) = 20;
  *(v5 + 1600) = 2;
  *(v5 + 1608) = "snowBGParticleCount";
  *(v5 + 1616) = 19;
  *(v5 + 1624) = 2;
  *(v5 + 1632) = "snowBGParticleVelocity";
  *(v5 + 1640) = 22;
  *(v5 + 1648) = 2;
  *(v5 + 1656) = "snowBGMinMaxSize";
  *(v5 + 1664) = 16;
  *(v5 + 1672) = 2;
  *(v5 + 1680) = "snowBGNoiseFieldIntensity";
  *(v5 + 1688) = 25;
  *(v5 + 1696) = 2;
  *(v5 + 1704) = "snowBGNoiseFieldScale";
  *(v5 + 1712) = 21;
  *(v5 + 1720) = 2;
  *(v5 + 1728) = "snowBGSpread";
  *(v5 + 1736) = 12;
  *(v5 + 1744) = 2;
  *(v5 + 1752) = "snowBGRandomColorStart";
  *(v5 + 1760) = 22;
  *(v5 + 1768) = 2;
  *(v5 + 1776) = "snowBGRandomColorEnd";
  *(v5 + 1784) = 20;
  *(v5 + 1792) = 2;
  *(v5 + 1800) = "useSnowFast";
  *(v5 + 1808) = 11;
  *(v5 + 1824) = "starOpacity";
  *(v5 + 1848) = "starSize";
  *(v5 + 1872) = "starSpeed";
  *(v5 + 1896) = "starParticleCount";
  *(v5 + 1920) = "starBrightSize";
  *(v5 + 1944) = "starBrightParticleCount";
  *(v5 + 1968) = "starBrightTwinkleAmount";
  *(v5 + 1992) = "starBrightTwinkleSpeed";
  *(v5 + 2184) = "lightSunColor";
  *(v5 + 2280) = "lightAmbientIntensity";
  *(v5 + 2376) = "noiseParticleVelocity";
  *(v5 + 2472) = "noiseRandomColorEnd";
  *(v5 + 2568) = "hailMinMaxSize";
  *(v5 + 2664) = "sleetFGParticleVelocity";
  *(v5 + 2760) = "sleetBGParticleCount";
  *(v5 + 2856) = "sleetBGRandomColorEnd";
  *(v5 + 2952) = "windRandomColorEnd";
  *(v5 + 3048) = "fringeParticleCount";
  *(v5 + 3144) = "fringeScaleFrequency";
  *(v5 + 3240) = "fringeColor";
  *(v5 + 3480) = "cloudBGColor";
  *(v5 + 3576) = "cloudBGOffsetY";
  *(v5 + 3672) = "cloudBGEmitterScale";
  *(v5 + 3648) = "cloudBGParticleCount";
  *(v5 + 3640) = 2;
  *(v5 + 3656) = 20;
  *(v5 + 3664) = 2;
  *(v5 + 3624) = "cloudBGUseLighting";
  *(v5 + 3608) = 14;
  *(v5 + 3616) = 2;
  *(v5 + 3632) = 18;
  *(v5 + 1816) = 2;
  *(v5 + 3600) = "cloudBGOffsetZ";
  *(v5 + 3584) = 14;
  *(v5 + 3592) = 2;
  *(v5 + 3552) = "cloudBGScale";
  *(v5 + 3544) = 2;
  *(v5 + 3560) = 12;
  *(v5 + 3568) = 2;
  *(v5 + 3528) = "cloudBGVelocity";
  *(v5 + 3512) = 17;
  *(v5 + 3520) = 2;
  *(v5 + 3536) = 15;
  *(v5 + 1832) = 11;
  *(v5 + 3504) = "cloudBGBrightness";
  *(v5 + 3488) = 12;
  *(v5 + 3496) = 2;
  *(v5 + 3456) = "cloudBBGEmitterScale";
  *(v5 + 3448) = 2;
  *(v5 + 3464) = 20;
  *(v5 + 3472) = 2;
  *(v5 + 3432) = "cloudBBGParticleCount";
  *(v5 + 3416) = 19;
  *(v5 + 3424) = 2;
  *(v5 + 3440) = 21;
  *(v5 + 1840) = 2;
  *(v5 + 3408) = "cloudBBGUseLighting";
  *(v5 + 3392) = 15;
  *(v5 + 3400) = 2;
  *(v5 + 3360) = "cloudBBGOffsetY";
  *(v5 + 3368) = 15;
  *(v5 + 3376) = 2;
  *(v5 + 3384) = "cloudBBGOffsetZ";
  *(v5 + 3328) = 2;
  *(v5 + 3336) = "cloudBBGScale";
  *(v5 + 3344) = 13;
  *(v5 + 3352) = 2;
  *(v5 + 3296) = 18;
  *(v5 + 3304) = 2;
  *(v5 + 3312) = "cloudBBGVelocity";
  *(v5 + 3320) = 16;
  *(v5 + 3288) = "cloudBBGBrightness";
  *(v5 + 3272) = 13;
  *(v5 + 3280) = 2;
  *(v5 + 1856) = 8;
  *(v5 + 3264) = "cloudBBGColor";
  *(v5 + 3248) = 11;
  *(v5 + 3256) = 2;
  *(v5 + 3216) = "fringeAngularVelocity";
  *(v5 + 3208) = 2;
  *(v5 + 3224) = 21;
  *(v5 + 3232) = 2;
  *(v5 + 3192) = "fringeOffsetY";
  *(v5 + 3176) = 20;
  *(v5 + 3184) = 2;
  *(v5 + 3200) = 13;
  *(v5 + 1864) = 2;
  *(v5 + 3168) = "fringeScaleAmplitude";
  *(v5 + 3152) = 20;
  *(v5 + 3160) = 2;
  *(v5 + 3120) = "fringeEmitterScale";
  *(v5 + 3112) = 2;
  *(v5 + 3128) = 18;
  *(v5 + 3136) = 2;
  *(v5 + 3096) = "fringeScale";
  *(v5 + 3080) = 14;
  *(v5 + 3088) = 2;
  *(v5 + 3104) = 11;
  *(v5 + 1880) = 9;
  *(v5 + 3072) = "fringeVelocity";
  *(v5 + 3056) = 19;
  *(v5 + 3064) = 2;
  *(v5 + 3024) = "windSize";
  *(v5 + 3016) = 2;
  *(v5 + 3032) = 8;
  *(v5 + 3040) = 2;
  *(v5 + 3000) = "windMinMaxY";
  *(v5 + 2984) = 11;
  *(v5 + 2992) = 2;
  *(v5 + 3008) = 11;
  *(v5 + 1888) = 2;
  *(v5 + 2976) = "windMinMaxX";
  *(v5 + 2960) = 18;
  *(v5 + 2968) = 2;
  *(v5 + 2928) = "windRandomColorStart";
  *(v5 + 2920) = 2;
  *(v5 + 2936) = 20;
  *(v5 + 2944) = 2;
  *(v5 + 2904) = "windParticleVelocity";
  *(v5 + 2888) = 18;
  *(v5 + 2896) = 2;
  *(v5 + 2912) = 20;
  *(v5 + 1904) = 17;
  *(v5 + 2880) = "windParticleAmount";
  *(v5 + 2864) = 21;
  *(v5 + 2872) = 2;
  *(v5 + 2832) = "sleetBGRandomColorStart";
  *(v5 + 2824) = 2;
  *(v5 + 2840) = 23;
  *(v5 + 2848) = 2;
  *(v5 + 2808) = "sleetBGMinMaxSize";
  *(v5 + 2792) = 23;
  *(v5 + 2800) = 2;
  *(v5 + 2816) = 17;
  *(v5 + 1912) = 2;
  *(v5 + 2784) = "sleetBGParticleVelocity";
  *(v5 + 2768) = 20;
  *(v5 + 2776) = 2;
  *(v5 + 2736) = "sleetFGRandomColorEnd";
  *(v5 + 2728) = 2;
  *(v5 + 2744) = 21;
  *(v5 + 2752) = 2;
  *(v5 + 2712) = "sleetFGRandomColorStart";
  *(v5 + 2696) = 17;
  *(v5 + 2704) = 2;
  *(v5 + 2720) = 23;
  *(v5 + 1928) = 14;
  *(v5 + 2688) = "sleetFGMinMaxSize";
  *(v5 + 2672) = 23;
  *(v5 + 2680) = 2;
  *(v5 + 2640) = "sleetFGParticleCount";
  *(v5 + 2632) = 2;
  *(v5 + 2648) = 20;
  *(v5 + 2656) = 2;
  *(v5 + 2616) = "hailColorEnd";
  *(v5 + 2600) = 14;
  *(v5 + 2608) = 2;
  *(v5 + 2624) = 12;
  *(v5 + 1936) = 2;
  *(v5 + 2592) = "hailColorStart";
  *(v5 + 2576) = 14;
  *(v5 + 2584) = 2;
  *(v5 + 2544) = "hailParticleVelocity";
  *(v5 + 2536) = 2;
  *(v5 + 2552) = 20;
  *(v5 + 2560) = 2;
  *(v5 + 2520) = "hailParticleCount";
  *(v5 + 2504) = 18;
  *(v5 + 2512) = 2;
  *(v5 + 2528) = 17;
  *(v5 + 1952) = 23;
  *(v5 + 2496) = "noiseAngleVelocity";
  *(v5 + 2480) = 19;
  *(v5 + 2488) = 2;
  *(v5 + 2448) = "noiseRandomColorStart";
  *(v5 + 2440) = 2;
  *(v5 + 2456) = 21;
  *(v5 + 2464) = 2;
  *(v5 + 2424) = "noiseMinMaxSize";
  *(v5 + 2408) = 18;
  *(v5 + 2416) = 2;
  *(v5 + 2432) = 15;
  *(v5 + 1960) = 2;
  *(v5 + 2400) = "noiseParticleCount";
  *(v5 + 2384) = 21;
  *(v5 + 2392) = 2;
  *(v5 + 2352) = "sunRayStartPosition";
  *(v5 + 2344) = 2;
  *(v5 + 2360) = 19;
  *(v5 + 2368) = 2;
  *(v5 + 2328) = "sunRayAngle";
  *(v5 + 2312) = 8;
  *(v5 + 2320) = 2;
  *(v5 + 2336) = 11;
  *(v5 + 1976) = 23;
  *(v5 + 2304) = "sunAngle";
  *(v5 + 2288) = 21;
  *(v5 + 2296) = 2;
  *(v5 + 2256) = "lightSunIntensity";
  *(v5 + 2248) = 2;
  *(v5 + 2264) = 17;
  *(v5 + 2272) = 2;
  *(v5 + 2232) = "lightFillIntensity";
  *(v5 + 2216) = 17;
  *(v5 + 2224) = 2;
  *(v5 + 2240) = 18;
  *(v5 + 1984) = 2;
  *(v5 + 2208) = "lightAmbientColor";
  *(v5 + 2192) = 13;
  *(v5 + 2200) = 2;
  *(v5 + 2160) = "lightFillColor";
  *(v5 + 2152) = 2;
  *(v5 + 2168) = 14;
  *(v5 + 2176) = 2;
  *(v5 + 2136) = "particleEmitterWidth";
  *(v5 + 2120) = 21;
  *(v5 + 2128) = 2;
  *(v5 + 2144) = 20;
  *(v5 + 2000) = 22;
  *(v5 + 2112) = "particleEmitterOffset";
  *(v5 + 2096) = 9;
  *(v5 + 2104) = 2;
  *(v5 + 2064) = "starCloudParticleCount";
  *(v5 + 2072) = 22;
  *(v5 + 2080) = 2;
  *(v5 + 2088) = "FallAngle";
  *(v5 + 2032) = 2;
  *(v5 + 2040) = "starTwinkleAmount";
  *(v5 + 2048) = 17;
  *(v5 + 2056) = 2;
  *(v5 + 2008) = 2;
  *(v5 + 2016) = "starTwinkleSpeed";
  *(v5 + 2024) = 16;
  *(v5 + 3680) = 19;
  *(v5 + 3688) = 2;
  *(v5 + 3696) = "cloudFGColor";
  *(v5 + 3704) = 12;
  *(v5 + 3712) = 2;
  *(v5 + 3720) = "cloudFGBrightness";
  *(v5 + 3728) = 17;
  *(v5 + 3736) = 2;
  *(v5 + 3744) = "cloudFGVelocity";
  *(v5 + 3752) = 15;
  *(v5 + 3760) = 2;
  *(v5 + 3768) = "cloudFGScale";
  *(v5 + 3776) = 12;
  *(v5 + 3784) = 2;
  *(v5 + 3792) = "cloudFGOffsetY";
  *(v5 + 3800) = 14;
  *(v5 + 3808) = 2;
  *(v5 + 3816) = "cloudFGOffsetZ";
  *(v5 + 3824) = 14;
  *(v5 + 3832) = 2;
  *(v5 + 3840) = "cloudFGUseLighting";
  *(v5 + 3848) = 18;
  *(v5 + 3856) = 2;
  *(v5 + 3864) = "cloudFGParticleCount";
  *(v5 + 3872) = 20;
  *(v5 + 3880) = 2;
  *(v5 + 3888) = "cloudFGEmitterScale";
  *(v5 + 3896) = 19;
  *(v5 + 3904) = 2;
  *(v5 + 3912) = "cloudFFGColor";
  *(v5 + 3920) = 13;
  *(v5 + 3928) = 2;
  *(v5 + 3936) = "cloudFFGBrightness";
  *(v5 + 3944) = 18;
  *(v5 + 3952) = 2;
  *(v5 + 3960) = "cloudFFGVelocity";
  *(v5 + 3968) = 16;
  *(v5 + 3976) = 2;
  *(v5 + 3984) = "cloudFFGScale";
  *(v5 + 3992) = 13;
  *(v5 + 4000) = 2;
  *(v5 + 4008) = "cloudFFGOffsetY";
  *(v5 + 4016) = 15;
  *(v5 + 4024) = 2;
  *(v5 + 4032) = "cloudFFGOffsetZ";
  *(v5 + 4040) = 15;
  *(v5 + 4048) = 2;
  *(v5 + 4056) = "cloudFFGUseLighting";
  *(v5 + 4064) = 19;
  *(v5 + 4072) = 2;
  *(v5 + 4080) = "cloudFFGParticleCount";
  *(v5 + 4088) = 21;
  *(v5 + 4096) = 2;
  *(v5 + 4104) = "cloudFFGEmitterScale";
  *(v5 + 4112) = 20;
  *(v5 + 4120) = 2;
  *(v5 + 4128) = "cloudBlanketColor";
  *(v5 + 4136) = 17;
  *(v5 + 4144) = 2;
  *(v5 + 4152) = "cloudBlanketBrightness";
  *(v5 + 4160) = 22;
  *(v5 + 4168) = 2;
  *(v5 + 4176) = "cloudBlanketVelocity";
  *(v5 + 4184) = 20;
  *(v5 + 4192) = 2;
  *(v5 + 4200) = "cloudBlanketScale";
  *(v5 + 4208) = 17;
  *(v5 + 4216) = 2;
  *(v5 + 4224) = "cloudBlanketOffsetY";
  *(v5 + 4232) = 19;
  *(v5 + 4240) = 2;
  *(v5 + 4248) = "cloudBlanketOffsetZ";
  *(v5 + 4256) = 19;
  *(v5 + 4264) = 2;
  *(v5 + 4272) = "cloudBlanketUseLighting";
  *(v5 + 4280) = 23;
  *(v5 + 4288) = 2;
  *(v5 + 4296) = "foregroundParticlesSize";
  *(v5 + 4304) = 23;
  *(v5 + 4312) = 2;
  *(v5 + 4320) = "foregroundParticlesParticleVelocity";
  *(v5 + 4328) = 35;
  *(v5 + 4336) = 2;
  *(v5 + 4344) = "foregroundParticlesParticleCount";
  *(v5 + 4352) = 32;
  *(v5 + 4360) = 2;
  *(v5 + 4368) = "foregroundParticlesSpread";
  *(v5 + 4376) = 25;
  *(v5 + 4384) = 2;
  *(v5 + 4392) = "foregroundParticlesRandomColorStart";
  *(v5 + 4400) = 35;
  *(v5 + 4408) = 2;
  *(v5 + 4416) = "foregroundParticlesRandomColorEnd";
  *(v5 + 4424) = 33;
  *(v5 + 4432) = 2;
  *(v5 + 4440) = "foregroundParticlesNoiseFieldIntensity";
  *(v5 + 4448) = 38;
  *(v5 + 4456) = 2;
  *(v5 + 4464) = "foregroundParticlesNoiseFieldScale";
  *(v5 + 4472) = 34;
  *(v5 + 4480) = 2;
  *(v5 + 4488) = "foregroundParticlesLife";
  *(v5 + 4496) = 23;
  *(v5 + 4504) = 2;
  *(v5 + 4512) = "foregroundParticlesAngleVelocity";
  *(v5 + 4520) = 32;
  *(v5 + 4528) = 2;
  *(v5 + 4536) = "foregroundParticlesImage";
  *(v5 + 4544) = 24;
  *(v5 + 4552) = 2;
  *(v5 + 4560) = "sunFlareOverAllScale";
  *(v5 + 4568) = 20;
  *(v5 + 4576) = 2;
  *(v5 + 4584) = "sunIrisScaleFrequency";
  *(v5 + 4592) = 21;
  *(v5 + 4600) = 2;
  *(v5 + 4608) = "sunIrisScaleAmplitude";
  *(v5 + 4616) = 21;
  *(v5 + 4624) = 2;
  *(v5 + 4632) = "sunIrisRotationFrequency";
  *(v5 + 4640) = 24;
  *(v5 + 4648) = 2;
  *(v5 + 4656) = "sunIrisRotationAmplitude";
  *(v5 + 4664) = 24;
  *(v5 + 4672) = 2;
  *(v5 + 4680) = "sunIrisLength";
  *(v5 + 4688) = 13;
  *(v5 + 4696) = 2;
  *(v5 + 4704) = "sunIrisParticleCount";
  *(v5 + 4712) = 20;
  *(v5 + 4720) = 2;
  *(v5 + 4728) = "sunIrisOpacity";
  *(v5 + 4736) = 14;
  *(v5 + 4744) = 2;
  *(v5 + 4752) = "sunIrisSize";
  *(v5 + 4760) = 11;
  *(v5 + 4768) = 2;
  *(v5 + 4776) = "sunSpikeBallScale";
  *(v5 + 4784) = 17;
  *(v5 + 4792) = 2;
  *(v5 + 4800) = "sunSpikeBallColor";
  *(v5 + 4808) = 17;
  *(v5 + 4816) = 2;
  *(v5 + 4824) = "sunSpikeBallAngle";
  *(v5 + 4832) = 17;
  *(v5 + 4840) = 2;
  *(v5 + 4848) = "sunSpikeBallRotationFrequency";
  *(v5 + 4856) = 29;
  *(v5 + 4864) = 2;
  *(v5 + 4872) = "sunSpikeBallRotationAmplitude";
  *(v5 + 4880) = 29;
  *(v5 + 4888) = 2;
  *(v5 + 4896) = "sunSpikeBallImage";
  *(v5 + 4904) = 17;
  *(v5 + 4912) = 2;
  *(v5 + 4920) = "sunRaysSpread";
  *(v5 + 4928) = 13;
  *(v5 + 4936) = 2;
  *(v5 + 4944) = "sunRaysColor";
  *(v5 + 4952) = 12;
  *(v5 + 4960) = 2;
  *(v5 + 4968) = "sunRaysParticleCount";
  *(v5 + 4976) = 20;
  *(v5 + 4984) = 2;
  *(v5 + 4992) = "sunRaysLength";
  *(v5 + 5000) = 13;
  *(v5 + 5008) = 2;
  *(v5 + 5016) = "sunRaysCenterOffset";
  *(v5 + 5024) = 19;
  *(v5 + 5032) = 2;
  *(v5 + 5040) = "sunRainbowScale";
  *(v5 + 5048) = 15;
  *(v5 + 5056) = 2;
  *(v5 + 5064) = "sunRainbowOpacity";
  *(v5 + 5072) = 17;
  *(v5 + 5080) = 2;
  *(v5 + 5088) = "sunRainbowSunPathOpacity";
  *(v5 + 5096) = 24;
  *(v5 + 5104) = 2;
  *(v5 + 5112) = "rainLife";
  *(v5 + 5120) = 8;
  *(v5 + 5128) = 2;
  *(v5 + 5136) = "snowLife";
  *(v5 + 5144) = 8;
  *(v5 + 5152) = 2;
  *(v5 + 5160) = "sleetLife";
  *(v5 + 5168) = 9;
  *(v5 + 5176) = 2;
  *(v5 + 5184) = "hailLife";
  *(v5 + 5192) = 8;
  *(v5 + 5200) = 2;
  *(v5 + 5208) = "noiseLife";
  *(v5 + 5216) = 9;
  *(v5 + 5224) = 2;
  *(v5 + 5232) = "starCloudsOpacity";
  *(v5 + 5240) = 17;
  *(v5 + 5248) = 2;
  *(v5 + 5256) = "scaleFactor";
  *(v5 + 5264) = 11;
  *(v5 + 5272) = 2;
  *(v5 + 5280) = "colliderACoordinates";
  *(v5 + 5288) = 20;
  *(v5 + 5296) = 2;
  *(v5 + 5304) = "colliderBCoordinates";
  *(v5 + 5312) = 20;
  *(v5 + 5320) = 2;
  *(v5 + 5328) = "colliderCCoordinates";
  *(v5 + 5336) = 20;
  *(v5 + 5344) = 2;
  *(v5 + 5352) = "colliderDCoordinates";
  *(v5 + 5360) = 20;
  *(v5 + 5368) = 2;
  *(v5 + 5376) = "colliderECoordinates";
  *(v5 + 5384) = 20;
  *(v5 + 5392) = 2;
  *(v5 + 5400) = "colliderFCoordinates";
  *(v5 + 5408) = 20;
  *(v5 + 5416) = 2;
  *(v5 + 5424) = "colliderCornerRadius";
  *(v5 + 5432) = 20;
  *(v5 + 5440) = 2;
  *(v5 + 5448) = "collisionSize";
  *(v5 + 5456) = 13;
  *(v5 + 5464) = 2;
  *(v5 + 5472) = "collisionLife";
  *(v5 + 5480) = 13;
  *(v5 + 5488) = 2;
  *(v5 + 5496) = "collisionVelocity";
  *(v5 + 5504) = 17;
  *(v5 + 5512) = 2;
  *(v5 + 5520) = "collisionGravity";
  *(v5 + 5528) = 16;
  *(v5 + 5536) = 2;
  *(v5 + 5544) = "collisionRandomColorStart";
  *(v5 + 5552) = 25;
  *(v5 + 5560) = 2;
  *(v5 + 5568) = "collisionRandomColorEnd";
  *(v5 + 5576) = 23;
  *(v5 + 5584) = 2;
  *(v5 + 5592) = "collisionOccursProbability";
  *(v5 + 5600) = 26;
  *(v5 + 5608) = 2;
  *(v5 + 5616) = "SunIrisSeed";
  *(v5 + 5624) = 11;
  *(v5 + 5632) = 2;
  *(v5 + 5640) = "CloudBBGSeed";
  *(v5 + 5648) = 12;
  *(v5 + 5656) = 2;
  *(v5 + 5664) = "CloudBGSeed";
  *(v5 + 5672) = 11;
  *(v5 + 5680) = 2;
  *(v5 + 5688) = "CloudFGSeed";
  *(v5 + 5696) = 11;
  *(v5 + 5704) = 2;
  *(v5 + 5712) = "CloudFFGSeed";
  *(v5 + 5720) = 12;
  *(v5 + 5728) = 2;
  GEOLocationCoordinate2DMake(v4, v6);
  v7 = sub_1BCE1DEC0();

  if (v7 < 0x80 || (v7 & 0xFFFFFFFFFFFFFFC0) == 0x80)
  {
LABEL_3:
    v9 = v7;
  }

  else
  {
    v10 = v7 - 192;
    v9 = -35;
    LOBYTE(v7) = -64;
    switch(v10)
    {
      case 0uLL:
        goto LABEL_3;
      case 1uLL:
        LOBYTE(v7) = -63;
        goto LABEL_3;
      case 2uLL:
        LOBYTE(v7) = -62;
        goto LABEL_3;
      case 3uLL:
        LOBYTE(v7) = -61;
        goto LABEL_3;
      case 4uLL:
        LOBYTE(v7) = -60;
        goto LABEL_3;
      case 5uLL:
        LOBYTE(v7) = -59;
        goto LABEL_3;
      case 6uLL:
        LOBYTE(v7) = -58;
        goto LABEL_3;
      case 7uLL:
        LOBYTE(v7) = -57;
        goto LABEL_3;
      case 8uLL:
        LOBYTE(v7) = -56;
        goto LABEL_3;
      case 9uLL:
        LOBYTE(v7) = -55;
        goto LABEL_3;
      case 0xAuLL:
        LOBYTE(v7) = -54;
        goto LABEL_3;
      case 0xBuLL:
        LOBYTE(v7) = -53;
        goto LABEL_3;
      case 0xCuLL:
        LOBYTE(v7) = -52;
        goto LABEL_3;
      case 0xDuLL:
        LOBYTE(v7) = -51;
        goto LABEL_3;
      case 0xEuLL:
        LOBYTE(v7) = -50;
        goto LABEL_3;
      case 0xFuLL:
        LOBYTE(v7) = -49;
        goto LABEL_3;
      case 0x10uLL:
        LOBYTE(v7) = -48;
        goto LABEL_3;
      case 0x11uLL:
        LOBYTE(v7) = -47;
        goto LABEL_3;
      case 0x12uLL:
        LOBYTE(v7) = -46;
        goto LABEL_3;
      case 0x13uLL:
        LOBYTE(v7) = -45;
        goto LABEL_3;
      case 0x14uLL:
        LOBYTE(v7) = -44;
        goto LABEL_3;
      case 0x15uLL:
        LOBYTE(v7) = -43;
        goto LABEL_3;
      case 0x16uLL:
        LOBYTE(v7) = -42;
        goto LABEL_3;
      case 0x17uLL:
        LOBYTE(v7) = -41;
        goto LABEL_3;
      case 0x18uLL:
        LOBYTE(v7) = -40;
        goto LABEL_3;
      case 0x19uLL:
        LOBYTE(v7) = -39;
        goto LABEL_3;
      case 0x1AuLL:
        LOBYTE(v7) = -38;
        goto LABEL_3;
      case 0x1BuLL:
        LOBYTE(v7) = -37;
        goto LABEL_3;
      case 0x1CuLL:
        LOBYTE(v7) = -36;
        goto LABEL_3;
      case 0x1DuLL:
        break;
      case 0x1EuLL:
        v9 = -34;
        break;
      case 0x1FuLL:
        v9 = -33;
        break;
      case 0x20uLL:
        v9 = -32;
        break;
      case 0x21uLL:
        v9 = -31;
        break;
      case 0x22uLL:
        v9 = -30;
        break;
      case 0x23uLL:
        v9 = -29;
        break;
      case 0x24uLL:
        v9 = -28;
        break;
      case 0x25uLL:
        v9 = -27;
        break;
      case 0x26uLL:
        v9 = -26;
        break;
      case 0x27uLL:
        v9 = -25;
        break;
      case 0x28uLL:
        v9 = -24;
        break;
      case 0x29uLL:
        v9 = -23;
        break;
      case 0x2AuLL:
        v9 = -22;
        break;
      case 0x2BuLL:
        v9 = -21;
        break;
      case 0x2CuLL:
        v9 = -20;
        break;
      case 0x2DuLL:
        v9 = -19;
        break;
      case 0x2EuLL:
        v9 = -18;
        break;
      default:
        v9 = -17;
        break;
    }
  }

  *v2 = v9;
  return result;
}

void sub_1BCC3B3B4(void *a1@<X8>)
{
  BoundPropertyName.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1BCC3B3E0()
{
  result = qword_1EBD0B338;
  if (!qword_1EBD0B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B338);
  }

  return result;
}

unint64_t sub_1BCC3B438()
{
  result = qword_1EBD0B340;
  if (!qword_1EBD0B340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0B348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B340);
  }

  return result;
}

unint64_t sub_1BCC3B4A0()
{
  result = qword_1EBD0B350;
  if (!qword_1EBD0B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B350);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BoundEntity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD2)
  {
    if (a2 + 46 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 46) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 47;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2F;
  v5 = v6 - 47;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BoundEntity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 46 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 46) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD1)
  {
    v6 = ((a2 - 210) >> 8) + 1;
    *result = a2 + 46;
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
          *result = a2 + 46;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BoundPropertyName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x12)
  {
    if (a2 + 238 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 238) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 239;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xEF;
  v5 = v6 - 239;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BoundPropertyName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 238 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 238) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x12)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x11)
  {
    v6 = ((a2 - 18) >> 8) + 1;
    *result = a2 - 18;
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
          *result = a2 - 18;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BCC3B7D8()
{
  sub_1BCE1D370();
}

uint64_t sub_1BCC3B840()
{
  sub_1BCE1D370();
}

uint64_t sub_1BCC3B890()
{
  OUTLINED_FUNCTION_82_3();
  switch(v0)
  {
    case 7:
    case 8:
      OUTLINED_FUNCTION_82_3();
      break;
    default:
      break;
  }

  sub_1BCE1D370();
}

uint64_t sub_1BCC3B9A8()
{
  sub_1BCE1D370();
}

uint64_t sub_1BCC3BA84()
{
  sub_1BCE1D370();
}

uint64_t sub_1BCC3BB24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_101_1();
}

uint64_t sub_1BCC3BB74()
{
  sub_1BCE1D370();
}

uint64_t sub_1BCC3BBB4()
{
  sub_1BCE1D370();
}

uint64_t sub_1BCC3BCF0()
{
  sub_1BCE1D370();
}

uint64_t sub_1BCC3BD78()
{
  sub_1BCE1D370();
}

uint64_t WeatherConditionBackgroundConfig.cloudBBGAssetType.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_71_1(*(v1 + 776), a1);
}

__n128 WeatherConditionBackgroundConfig.cloudBBGAssetType.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_50_4(a1);

  result = v4;
  *(v1 + 768) = v5;
  *(v1 + 784) = v4;
  *(v1 + 800) = v2;
  return result;
}

uint64_t WeatherConditionBackgroundConfig.cloudBGAssetType.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_71_1(*(v1 + 904), a1);
}

__n128 WeatherConditionBackgroundConfig.cloudBGAssetType.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_50_4(a1);

  result = v4;
  *(v1 + 896) = v5;
  *(v1 + 912) = v4;
  *(v1 + 928) = v2;
  return result;
}

uint64_t WeatherConditionBackgroundConfig.cloudFGAssetType.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_71_1(*(v1 + 1032), a1);
}

__n128 WeatherConditionBackgroundConfig.cloudFGAssetType.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_50_4(a1);

  result = v4;
  *(v1 + 1024) = v5;
  *(v1 + 1040) = v4;
  *(v1 + 1056) = v2;
  return result;
}

uint64_t WeatherConditionBackgroundConfig.cloudFFGAssetType.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_71_1(*(v1 + 1160), a1);
}

__n128 WeatherConditionBackgroundConfig.cloudFFGAssetType.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_50_4(a1);

  result = v4;
  *(v1 + 1152) = v5;
  *(v1 + 1168) = v4;
  *(v1 + 1184) = v2;
  return result;
}

uint64_t WeatherConditionBackgroundConfig.cloudBlanketAssetType.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_71_1(*(v1 + 1248), a1);
}

__n128 WeatherConditionBackgroundConfig.cloudBlanketAssetType.setter(__n128 *a1)
{
  OUTLINED_FUNCTION_50_4(a1);

  result = v4;
  *(v1 + 1240) = v5;
  *(v1 + 1256) = v4;
  *(v1 + 1272) = v2;
  return result;
}

uint64_t WeatherConditionBackgroundConfig.moonImageName.getter()
{
  v1 = *(v0 + 1512);

  return v1;
}

uint64_t WeatherConditionBackgroundConfig.moonImageName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 1512) = a1;
  *(v2 + 1520) = a2;
  return result;
}

__n128 WeatherConditionBackgroundConfig.layers.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 1629);
  *a1 = result;
  a1[1].n128_u64[0] = *(v1 + 1645);
  return result;
}

__n128 WeatherConditionBackgroundConfig.layers.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 1629) = *a1;
  *(v1 + 1645) = a1[1].n128_u64[0];
  return result;
}

void sub_1BCC3E09C(uint64_t a1@<X8>)
{
  v2 = sub_1BC9A7DFC(&unk_1F3B4DDE8);
  v3 = sub_1BC9A7DFC(&unk_1F3B4DE10);
  *a1 = 0;
  *(a1 + 4) = 1066611507;
  *(a1 + 8) = v2;
  *(a1 + 16) = 3;
  *(a1 + 24) = xmmword_1BCE3C000;
  *(a1 + 40) = xmmword_1BCE3C010;
  *(a1 + 56) = xmmword_1BCE3C020;
  *(a1 + 72) = v3;
  *(a1 + 80) = 0x3E800000453B8000;
}

__n128 WeatherConditionBackgroundConfig.hazeEffect.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[109];
  *a1 = result;
  return result;
}

__n128 WeatherConditionBackgroundConfig.hazeEffect.setter(__n128 *a1)
{
  result = *a1;
  v1[109] = *a1;
  return result;
}

uint64_t WeatherConditionBackgroundConfig.lightingKeyframes.setter(uint64_t a1)
{

  *(v1 + 2312) = a1;
  return result;
}

uint64_t WeatherConditionBackgroundConfig.moonLightingKeyframes.setter(uint64_t a1)
{

  *(v1 + 2320) = a1;
  return result;
}

void WeatherConditionBackgroundConfig.Layers.cloudLayers.getter(_BYTE *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[22];
  *a1 = v1[17];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
}

_BYTE *WeatherConditionBackgroundConfig.Layers.cloudLayers.setter(_BYTE *result)
{
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  v6 = result[5];
  v1[17] = *result;
  v1[18] = v2;
  v1[19] = v3;
  v1[20] = v4;
  v1[21] = v5;
  v1[22] = v6;
  return result;
}

uint64_t sub_1BCC3F37C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616E45796E61 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4574656B6E616C62 && a2 == 0xEE0064656C62616ELL;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C62616E45676262 && a2 == 0xEA00000000006465;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C62616E456762 && a2 == 0xE900000000000064;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C62616E456766 && a2 == 0xE900000000000064;
          if (v9 || (sub_1BCE1E090() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6C62616E45676666 && a2 == 0xEA00000000006465)
          {

            return 5;
          }

          else
          {
            v11 = sub_1BCE1E090();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BCC3F57C(char a1)
{
  result = 0x6C62616E45796E61;
  switch(a1)
  {
    case 1:
      result = 0x4574656B6E616C62;
      break;
    case 2:
      result = 0x6C62616E45676262;
      break;
    case 3:
      result = 0x656C62616E456762;
      break;
    case 4:
      result = 0x656C62616E456766;
      break;
    case 5:
      result = 0x6C62616E45676666;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCC3F64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCC3F37C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCC3F674(uint64_t a1)
{
  v2 = sub_1BCC3F8C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCC3F6B0(uint64_t a1)
{
  v2 = sub_1BCC3F8C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WeatherConditionBackgroundConfig.Layers.CloudLayers.encode(to:)()
{
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B358);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = v0[1];
  v12[6] = v0[2];
  v12[7] = v10;
  v11 = v0[3];
  v12[4] = v0[4];
  v12[5] = v11;
  v12[3] = v0[5];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BCC3F8C4();
  sub_1BCE1E170();
  sub_1BCE1DFE0();
  if (!v1)
  {
    OUTLINED_FUNCTION_72_2();
    OUTLINED_FUNCTION_72_2();
    OUTLINED_FUNCTION_72_2();
    OUTLINED_FUNCTION_72_2();
    OUTLINED_FUNCTION_46_3(5);
    OUTLINED_FUNCTION_72_2();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_17_1();
}

unint64_t sub_1BCC3F8C4()
{
  result = qword_1EBD0B360;
  if (!qword_1EBD0B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0B360);
  }

  return result;
}

uint64_t WeatherConditionBackgroundConfig.Layers.CloudLayers.hash(into:)()
{
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  return sub_1BCE1E120();
}

uint64_t WeatherConditionBackgroundConfig.Layers.CloudLayers.hashValue.getter()
{
  sub_1BCE1E100();
  WeatherConditionBackgroundConfig.Layers.CloudLayers.hash(into:)();
  return sub_1BCE1E150();
}

void WeatherConditionBackgroundConfig.Layers.CloudLayers.init(from:)()
{
  OUTLINED_FUNCTION_18_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B368);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  OUTLINED_FUNCTION_83_2();
  sub_1BCC3F8C4();
  OUTLINED_FUNCTION_84();
  sub_1BCE1E160();
  if (!v0)
  {
    v11 = OUTLINED_FUNCTION_65_1();
    v12 = OUTLINED_FUNCTION_65_1();
    v22 = OUTLINED_FUNCTION_65_1();
    v21 = OUTLINED_FUNCTION_65_1();
    v20 = OUTLINED_FUNCTION_65_1();
    OUTLINED_FUNCTION_45_4(5);
    v13 = OUTLINED_FUNCTION_65_1();
    v18 = v12 & 1;
    v19 = v11 & 1;
    v22 &= 1u;
    v14 = v21 & 1;
    v15 = v20 & 1;
    (*(v7 + 8))(v10, v5);
    v16 = v18;
    *v4 = v19;
    v4[1] = v16;
    v4[2] = v22;
    v4[3] = v14;
    v4[4] = v15;
    v4[5] = v13 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_17_1();
}

uint64_t sub_1BCC3FC4C()
{
  sub_1BCE1E100();
  WeatherConditionBackgroundConfig.Layers.CloudLayers.hash(into:)();
  return sub_1BCE1E150();
}

WeatherUI::WeatherConditionBackgroundConfig::Layers::CollisionType_optional __swiftcall WeatherConditionBackgroundConfig.Layers.CollisionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BCE1DEC0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BCC3FD70@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherConditionBackgroundConfig.Layers.CollisionType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t static WeatherConditionBackgroundConfig.Layers.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((a1[1] ^ a2[1]))
  {
    return 0;
  }

  if ((a1[2] ^ a2[2]))
  {
    return 0;
  }

  if ((a1[3] ^ a2[3]))
  {
    return 0;
  }

  if ((a1[4] ^ a2[4]))
  {
    return 0;
  }

  if ((a1[5] ^ a2[5]))
  {
    return 0;
  }

  if ((a1[6] ^ a2[6]))
  {
    return 0;
  }

  if ((a1[7] ^ a2[7]))
  {
    return 0;
  }

  if ((a1[8] ^ a2[8]))
  {
    return 0;
  }

  if ((a1[9] ^ a2[9]))
  {
    return 0;
  }

  if ((a1[10] ^ a2[10]))
  {
    return 0;
  }

  if ((a1[11] ^ a2[11]))
  {
    return 0;
  }

  if ((a1[12] ^ a2[12]))
  {
    return 0;
  }

  if ((a1[13] ^ a2[13]))
  {
    return 0;
  }

  if ((a1[14] ^ a2[14]))
  {
    return 0;
  }

  if ((a1[15] ^ a2[15]))
  {
    return 0;
  }

  if ((a1[16] ^ a2[16]))
  {
    return 0;
  }

  v2 = a1[23];
  v3 = a2[23];
  v4 = a2[22];
  v5 = a2[21];
  v6 = a2[20];
  v7 = a2[19];
  v8 = a2[18];
  v9 = a2[17];
  v10 = a1[22];
  v11 = a1[21];
  v12 = a1[20];
  v13 = a1[19];
  v14 = a1[18];
  v17[0] = a1[17];
  v17[1] = v14;
  v17[2] = v13;
  v17[3] = v12;
  v17[4] = v11;
  v17[5] = v10;
  v16[0] = v9;
  v16[1] = v8;
  v16[2] = v7;
  v16[3] = v6;
  v16[4] = v5;
  v16[5] = v4;
  if (!static WeatherConditionBackgroundConfig.Layers.CloudLayers.== infix(_:_:)(v17, v16))
  {
    return 0;
  }

  return sub_1BCA68B30(v2, v3);
}

uint64_t sub_1BCC40034(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x62616E456E696172 && a2 == 0xEB0000000064656CLL;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x62616E45776F6E73 && a2 == 0xEB0000000064656CLL;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C62616E45676F66 && a2 == 0xEA00000000006465;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001BCE877A0 == a2;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x80000001BCE877C0 == a2;
          if (v9 || (sub_1BCE1E090() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x616E457372617473 && a2 == 0xEC00000064656C62;
            if (v10 || (sub_1BCE1E090() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001BCE877E0 == a2;
              if (v11 || (sub_1BCE1E090() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x45737961526E7573 && a2 == 0xEE0064656C62616ELL;
                if (v12 || (sub_1BCE1E090() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001BCE87800 == a2;
                  if (v13 || (sub_1BCE1E090() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x80000001BCE87820 == a2;
                    if (v14 || (sub_1BCE1E090() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x45736972496E7573 && a2 == 0xEE0064656C62616ELL;
                      if (v15 || (sub_1BCE1E090() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x62616E456E6F6F6DLL && a2 == 0xEB0000000064656CLL;
                        if (v16 || (sub_1BCE1E090() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x62616E456C696168 && a2 == 0xEB0000000064656CLL;
                          if (v17 || (sub_1BCE1E090() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x616E457465656C73 && a2 == 0xEC00000064656C62;
                            if (v18 || (sub_1BCE1E090() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x62616E45646E6977 && a2 == 0xEB0000000064656CLL;
                              if (v19 || (sub_1BCE1E090() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6E4565676E697266 && a2 == 0xED000064656C6261;
                                if (v20 || (sub_1BCE1E090() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD00000000000001ALL && 0x80000001BCE87840 == a2;
                                  if (v21 || (sub_1BCE1E090() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x79614C64756F6C63 && a2 == 0xEB00000000737265;
                                    if (v22 || (sub_1BCE1E090() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0x6F6973696C6C6F63 && a2 == 0xED0000657079546ELL)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1BCE1E090();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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
          }
        }
      }
    }
  }
}

uint64_t sub_1BCC40610(char a1)
{
  result = 0x62616E456E696172;
  switch(a1)
  {
    case 1:
      v3 = 2003791475;
      goto LABEL_7;
    case 2:
      return 0x6C62616E45676F66;
    case 3:
      return 0xD000000000000010;
    case 4:
    case 16:
      return 0xD00000000000001ALL;
    case 5:
      v5 = 0x457372617473;
      return v5 & 0xFFFFFFFFFFFFLL | 0x616E000000000000;
    case 6:
      return 0xD000000000000013;
    case 7:
      v4 = 0x7961526E7573;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4573000000000000;
    case 8:
      return 0xD000000000000013;
    case 9:
      return 0xD000000000000011;
    case 10:
      v4 = 0x6972496E7573;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4573000000000000;
    case 11:
      v3 = 1852796781;
      goto LABEL_7;
    case 12:
      v3 = 1818845544;
      goto LABEL_7;
    case 13:
      v5 = 0x457465656C73;
      return v5 & 0xFFFFFFFFFFFFLL | 0x616E000000000000;
    case 14:
      v3 = 1684957559;
LABEL_7:
      result = v3 | 0x62616E4500000000;
      break;
    case 15:
      result = 0x6E4565676E697266;
      break;
    case 17:
      result = 0x79614C64756F6C63;
      break;
    case 18:
      result = 0x6F6973696C6C6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCC40818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCC40034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCC40840@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BCC40608();
  *a1 = result;
  return result;
}

uint64_t sub_1BCC40868(uint64_t a1)
{
  v2 = sub_1BCC51B20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCC408A4(uint64_t a1)
{
  v2 = sub_1BCC51B20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WeatherConditionBackgroundConfig.Layers.encode(to:)()
{
  OUTLINED_FUNCTION_18_0();
  v26 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B370);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  v9 = v0[1];
  v25[20] = v0[2];
  v25[21] = v9;
  v10 = v0[3];
  v25[18] = v0[4];
  v25[19] = v10;
  v11 = v0[5];
  v25[16] = v0[6];
  v25[17] = v11;
  v12 = v0[7];
  v25[14] = v0[8];
  v25[15] = v12;
  v13 = v0[9];
  v25[12] = v0[10];
  v25[13] = v13;
  v14 = v0[11];
  v25[10] = v0[12];
  v25[11] = v14;
  v15 = v0[13];
  v25[8] = v0[14];
  v25[9] = v15;
  v16 = v0[15];
  v25[6] = v0[16];
  v25[7] = v16;
  v17 = v0[17];
  v18 = v0[18];
  v25[4] = v0[19];
  v25[5] = v18;
  v25[3] = v0[20];
  LODWORD(v7) = v0[21];
  v25[1] = v17;
  v25[2] = v7;
  v19 = v0[22];
  v20 = v3[3];
  v21 = v3;
  v23 = v22;
  __swift_project_boxed_opaque_existential_1(v21, v20);
  sub_1BCC51B20();
  sub_1BCE1E170();
  v24 = v26;
  sub_1BCE1DFE0();
  if (!v24)
  {
    LODWORD(v26) = v19;
    OUTLINED_FUNCTION_46_3(1);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_46_3(2);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_46_3(3);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_46_3(4);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_46_3(5);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_46_3(6);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_46_3(7);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_46_3(8);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_46_3(9);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_46_3(10);
    sub_1BCE1DFE0();
    OUTLINED_FUNCTION_46_3(11);
    OUTLINED_FUNCTION_27_8();
    sub_1BCE1DFE0();
    OUTLINED_FUNCTION_46_3(12);
    OUTLINED_FUNCTION_27_8();
    sub_1BCE1DFE0();
    OUTLINED_FUNCTION_46_3(13);
    OUTLINED_FUNCTION_27_8();
    sub_1BCE1DFE0();
    OUTLINED_FUNCTION_46_3(14);
    OUTLINED_FUNCTION_27_8();
    sub_1BCE1DFE0();
    OUTLINED_FUNCTION_46_3(15);
    OUTLINED_FUNCTION_27_8();
    sub_1BCE1DFE0();
    OUTLINED_FUNCTION_46_3(16);
    OUTLINED_FUNCTION_27_8();
    sub_1BCE1DFE0();
    sub_1BCC51B74();
    OUTLINED_FUNCTION_27_8();
    sub_1BCE1E020();
    sub_1BCC51BC8();
    OUTLINED_FUNCTION_27_8();
    sub_1BCE1E020();
  }

  (*(v5 + 8))(v8, v23);
  OUTLINED_FUNCTION_17_1();
}

uint64_t WeatherConditionBackgroundConfig.Layers.hash(into:)()
{
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  sub_1BCE1E120();
  WeatherConditionBackgroundConfig.Layers.CloudLayers.hash(into:)();

  return sub_1BCC3BB74();
}

uint64_t WeatherConditionBackgroundConfig.Layers.hashValue.getter()
{
  OUTLINED_FUNCTION_114();
  WeatherConditionBackgroundConfig.Layers.hash(into:)();
  return sub_1BCE1E150();
}

void WeatherConditionBackgroundConfig.Layers.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16)
{
  OUTLINED_FUNCTION_18_0();
  v18 = v17;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B390);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_83_2();
  sub_1BCC51B20();
  OUTLINED_FUNCTION_84();
  sub_1BCE1E160();
  if (!v16)
  {
    OUTLINED_FUNCTION_18_19();
    v22 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(1);
    OUTLINED_FUNCTION_18_19();
    v23 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(2);
    OUTLINED_FUNCTION_18_19();
    v40 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(3);
    OUTLINED_FUNCTION_18_19();
    v39 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(4);
    OUTLINED_FUNCTION_18_19();
    v38 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(5);
    OUTLINED_FUNCTION_18_19();
    v37 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(6);
    OUTLINED_FUNCTION_18_19();
    v36 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(7);
    OUTLINED_FUNCTION_18_19();
    v35 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(8);
    OUTLINED_FUNCTION_18_19();
    v34 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(9);
    OUTLINED_FUNCTION_18_19();
    v33 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(10);
    OUTLINED_FUNCTION_18_19();
    v32 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(11);
    OUTLINED_FUNCTION_18_19();
    v31 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(12);
    OUTLINED_FUNCTION_18_19();
    v30 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(13);
    OUTLINED_FUNCTION_18_19();
    v29 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(14);
    OUTLINED_FUNCTION_18_19();
    v28 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(15);
    OUTLINED_FUNCTION_18_19();
    v27 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_45_4(16);
    OUTLINED_FUNCTION_18_19();
    v26 = sub_1BCE1DF30();
    sub_1BCC51C1C();
    OUTLINED_FUNCTION_37_8();
    sub_1BCE1DF70();
    sub_1BCC51C70();
    OUTLINED_FUNCTION_37_8();
    sub_1BCE1DF70();
    v24 = OUTLINED_FUNCTION_63_2();
    v25(v24);
    *v20 = v22 & 1;
    v20[1] = v23 & 1;
    v20[2] = v40 & 1;
    v20[3] = v39 & 1;
    v20[4] = v38 & 1;
    v20[5] = v37 & 1;
    v20[6] = v36 & 1;
    v20[7] = v35 & 1;
    v20[8] = v34 & 1;
    v20[9] = v33 & 1;
    v20[10] = v32 & 1;
    v20[11] = v31 & 1;
    v20[12] = v30 & 1;
    v20[13] = v29 & 1;
    v20[14] = v28 & 1;
    v20[15] = v27 & 1;
    v20[16] = v26 & 1;
    v20[17] = 0;
    v20[18] = a12;
    v20[19] = a13;
    v20[20] = a14;
    v20[21] = a15;
    v20[22] = a16;
    v20[23] = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_17_1();
}

uint64_t sub_1BCC413B0()
{
  sub_1BCE1E100();
  WeatherConditionBackgroundConfig.Layers.hash(into:)();
  return sub_1BCE1E150();
}

uint64_t static WeatherConditionBackgroundConfig.LightningConfig.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && *(a1 + 1) == *(a2 + 1))
  {
    v4 = vceq_f32(*(a1 + 8), *(a2 + 8));
    if (v4.i8[0])
    {
      result = 0;
      if (v4.i8[4])
      {
        v5 = ~vaddvq_s32(vandq_s8(vceqq_f32(*(a1 + 56), *(a2 + 56)), xmmword_1BCE54AE0)) & 0xF;
        if (vaddvq_s16(vandq_s8(vuzp1q_s16(vceqq_f32(*(a1 + 24), *(a2 + 24)), vceqq_f32(*(a1 + 40), *(a2 + 40))), xmmword_1BCE59EE0)) == 255 && v5 == 0)
        {
          v7 = *(a1 + 72);
          v8 = *(a2 + 9);
          if ((vceq_f32(v7, *&v8).u8[0] & 1) != 0 && *(a1 + 2) == *(a2 + 2))
          {
            v7.i32[0] = *(a1 + 20);
            v9 = OUTLINED_FUNCTION_64_2(v7, v8, *(a2 + 20)).u8[0];
            return v12 & (v9 & (v10 == v11));
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BCC41834(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6170736552657375 && a2 == 0xEA00000000006E77;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001BCE87860 == a2;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E49656B69727473 && a2 == 0xEE006C6176726574;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F4368636E617262 && a2 == 0xEB00000000746E75;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73656E6867756F72 && a2 == 0xE900000000000073;
          if (v9 || (sub_1BCE1E090() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73656E6B63696874 && a2 == 0xE900000000000073;
            if (v10 || (sub_1BCE1E090() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000001BCE87880 == a2;
              if (v11 || (sub_1BCE1E090() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6361705377617264 && a2 == 0xEE00687464695765;
                if (v12 || (sub_1BCE1E090() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x705368636E617262 && a2 == 0xEC00000064616572;
                  if (v13 || (sub_1BCE1E090() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001BCE878A0 == a2;
                    if (v14 || (sub_1BCE1E090() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x756F6D41776F7267 && a2 == 0xEA0000000000746ELL;
                      if (v15 || (sub_1BCE1E090() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6F6D416873616C66 && a2 == 0xEB00000000746E75;
                        if (v16 || (sub_1BCE1E090() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x756F6D4165646166 && a2 == 0xEA0000000000746ELL;
                          if (v17 || (sub_1BCE1E090() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 2003790951 && a2 == 0xE400000000000000;
                            if (v18 || (sub_1BCE1E090() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000015 && 0x80000001BCE878C0 == a2;
                              if (v19 || (sub_1BCE1E090() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000016 && 0x80000001BCE878E0 == a2;
                                if (v20 || (sub_1BCE1E090() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000015 && 0x80000001BCE87900 == a2;
                                  if (v21 || (sub_1BCE1E090() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000014 && 0x80000001BCE87920 == a2;
                                    if (v22 || (sub_1BCE1E090() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0xD000000000000015 && 0x80000001BCE87940 == a2)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1BCE1E090();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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
          }
        }
      }
    }
  }
}

uint64_t sub_1BCC41DEC(char a1)
{
  result = 0x6170736552657375;
  switch(a1)
  {
    case 1:
      return 0xD000000000000011;
    case 2:
      return 0x6E49656B69727473;
    case 3:
      return 0x6F4368636E617262;
    case 4:
      v3 = 0x6E6867756F72;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
    case 5:
      v3 = 0x6E6B63696874;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
    case 6:
      return 0xD000000000000017;
    case 7:
      return 0x6361705377617264;
    case 8:
      return 0x705368636E617262;
    case 9:
      return 0xD000000000000010;
    case 10:
      v4 = 2003792487;
      goto LABEL_22;
    case 11:
      return 0x6F6D416873616C66;
    case 12:
      v4 = 1701077350;
LABEL_22:
      result = v4 | 0x756F6D4100000000;
      break;
    case 13:
      result = 2003790951;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCC4201C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCC41834(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCC42044(uint64_t a1)
{
  v2 = sub_1BCC51CC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCC42080(uint64_t a1)
{
  v2 = sub_1BCC51CC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WeatherConditionBackgroundConfig.LightningConfig.encode(to:)()
{
  OUTLINED_FUNCTION_76_2();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B3A8);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  v40 = *(v0 + 4);
  v39 = *(v0 + 8);
  v9 = *(v0 + 24);
  v37 = *(v0 + 28);
  v38 = v9;
  v10 = *(v0 + 32);
  v35 = *(v0 + 36);
  v36 = v10;
  v11 = *(v0 + 40);
  v33 = *(v0 + 44);
  v34 = v11;
  v12 = *(v0 + 52);
  v32 = *(v0 + 48);
  v14 = *(v0 + 56);
  v13 = *(v0 + 60);
  v16 = *(v0 + 64);
  v15 = *(v0 + 68);
  v17 = *(v0 + 72);
  v19 = *(v0 + 80);
  v18 = *(v0 + 84);
  v20 = v3[3];
  v21 = v3;
  v23 = v22;
  __swift_project_boxed_opaque_existential_1(v21, v20);
  sub_1BCC51CC4();
  sub_1BCE1E170();
  OUTLINED_FUNCTION_43_5();
  sub_1BCE1DFE0();
  if (!v1)
  {
    v30 = v14;
    v31 = v12;
    v28 = v16;
    v29 = v13;
    v27 = v15;
    v26 = v17;
    v25[0] = v18;
    v25[1] = v19;
    OUTLINED_FUNCTION_39_6(1);
    OUTLINED_FUNCTION_43_5();
    sub_1BCE1E000();
    v41 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07DA8);
    OUTLINED_FUNCTION_55_4();
    sub_1BC957184(v24, &qword_1EBD07DA8);
    OUTLINED_FUNCTION_43_5();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_43_5();
    sub_1BCE1E010();
    OUTLINED_FUNCTION_39_6(4);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_39_6(5);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_39_6(6);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_39_6(7);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_39_6(8);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_39_6(9);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_39_6(10);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_39_6(11);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_39_6(12);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_39_6(13);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_39_6(14);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_39_6(15);
    OUTLINED_FUNCTION_42_5();
    v41 = 16;
    OUTLINED_FUNCTION_43_5();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_39_6(17);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_39_6(18);
    OUTLINED_FUNCTION_42_5();
  }

  (*(v5 + 8))(v8, v23);
  OUTLINED_FUNCTION_75();
}

uint64_t WeatherConditionBackgroundConfig.LightningConfig.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_1BCE1E120();
  sub_1BCE1E130();
  sub_1BCA4DD54();
  MEMORY[0x1BFB30850](v1);
  sub_1BCE1E130();
  sub_1BCE1E130();
  sub_1BCE1E130();
  sub_1BCE1E130();
  sub_1BCE1E130();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_52_3();
  sub_1BCA4DD54();
  OUTLINED_FUNCTION_52_3();
  return OUTLINED_FUNCTION_52_3();
}

uint64_t WeatherConditionBackgroundConfig.LightningConfig.hashValue.getter()
{
  OUTLINED_FUNCTION_114();
  WeatherConditionBackgroundConfig.LightningConfig.hash(into:)();
  return sub_1BCE1E150();
}

void WeatherConditionBackgroundConfig.LightningConfig.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_76_2();
  v20 = v19;
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B3B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1BC9A7DFC(&unk_1F3B4E000);
  sub_1BC9A7DFC(&unk_1F3B4E028);
  OUTLINED_FUNCTION_83_2();
  sub_1BCC51CC4();
  OUTLINED_FUNCTION_84();
  sub_1BCE1E160();
  if (!v18)
  {
    LOBYTE(a18) = 0;
    OUTLINED_FUNCTION_18_19();
    v24 = sub_1BCE1DF30();
    OUTLINED_FUNCTION_8_40(1);
    sub_1BCE1DF50();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07DA8);
    OUTLINED_FUNCTION_54_1();
    sub_1BC957184(v27, v28);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_37_8();
    sub_1BCE1DF70();
    OUTLINED_FUNCTION_8_40(3);
    v59 = sub_1BCE1DF60();
    OUTLINED_FUNCTION_8_40(4);
    sub_1BCE1DF50();
    v30 = v29;
    OUTLINED_FUNCTION_8_40(5);
    sub_1BCE1DF50();
    v32 = v31;
    OUTLINED_FUNCTION_8_40(6);
    sub_1BCE1DF50();
    v34 = v33;
    OUTLINED_FUNCTION_8_40(7);
    sub_1BCE1DF50();
    v36 = v35;
    OUTLINED_FUNCTION_8_40(8);
    sub_1BCE1DF50();
    v38 = v37;
    OUTLINED_FUNCTION_8_40(9);
    sub_1BCE1DF50();
    v40 = v39;
    OUTLINED_FUNCTION_8_40(10);
    sub_1BCE1DF50();
    v58 = v41;
    OUTLINED_FUNCTION_8_40(11);
    sub_1BCE1DF50();
    v57 = v42;
    OUTLINED_FUNCTION_8_40(12);
    sub_1BCE1DF50();
    v56 = v43;
    OUTLINED_FUNCTION_8_40(13);
    sub_1BCE1DF50();
    v55 = v44;
    OUTLINED_FUNCTION_8_40(14);
    sub_1BCE1DF50();
    v54 = v45;
    OUTLINED_FUNCTION_8_40(15);
    sub_1BCE1DF50();
    v53 = v46;
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_37_8();
    sub_1BCE1DF70();
    OUTLINED_FUNCTION_8_40(17);
    sub_1BCE1DF50();
    v52 = v47;
    OUTLINED_FUNCTION_8_40(18);
    sub_1BCE1DF50();
    v51 = v48;
    v49 = OUTLINED_FUNCTION_63_2();
    v50(v49);
    *v22 = v24 & 1;
    *(v22 + 4) = v26;
    *(v22 + 8) = a18;
    *(v22 + 16) = v59;
    *(v22 + 24) = v30;
    *(v22 + 28) = v32;
    *(v22 + 32) = v34;
    *(v22 + 36) = v36;
    *(v22 + 40) = v38;
    *(v22 + 44) = v40;
    *(v22 + 48) = v58;
    *(v22 + 52) = v57;
    *(v22 + 56) = v56;
    *(v22 + 60) = v55;
    *(v22 + 64) = v54;
    *(v22 + 68) = v53;
    *(v22 + 72) = a18;
    *(v22 + 80) = v52;
    *(v22 + 84) = v51;
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_1BCC42A4C()
{
  sub_1BCE1E100();
  WeatherConditionBackgroundConfig.LightningConfig.hash(into:)();
  return sub_1BCE1E150();
}

void static WeatherConditionBackgroundConfig.== infix(_:_:)()
{
  OUTLINED_FUNCTION_107_1();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v1;
  v4 = v3;
  v5 = *v3;
  v6 = v1 + 384;
  v812 = *(v3 + 16);
  v7 = *(v3 + 24);
  v814 = *(v3 + 32);
  v811 = *(v3 + 48);
  v809 = *(v3 + 64);
  v808 = *(v3 + 68);
  v807 = *(v3 + 72);
  v802 = *(v3 + 112);
  v801 = *(v3 + 160);
  v798 = *(v3 + 184);
  v794 = *(v3 + 224);
  v792 = *(v3 + 244);
  v793 = *(v3 + 248);
  v796 = *(v3 + 256);
  v788 = *(v3 + 264);
  v786 = *(v3 + 268);
  v785 = *(v3 + 272);
  v776 = *(v3 + 320);
  v775 = *(v3 + 324);
  v779 = *(v3 + 328);
  v772 = *(v3 + 336);
  v770 = *(v3 + 340);
  v782 = *(v3 + 352);
  v780 = *(v3 + 368);
  v765 = *(v3 + 384);
  v766 = *(v3 + 388);
  v763 = *(v3 + 400);
  v764 = *(v3 + 408);
  v815 = *(v3 + 1629);
  v760 = *(v3 + 416);
  v761 = *(v3 + 424);
  v594 = *(v3 + 736);
  v595 = *(v3 + 744);
  v608 = *(v3 + 864);
  v609 = *(v3 + 872);
  v630 = *(v3 + 992);
  v631 = *(v3 + 1000);
  v816 = *(v3 + 1645);
  v642 = *(v3 + 1120);
  v643 = *(v3 + 1128);
  v651 = *(v3 + 1236);
  v662 = *(v3 + 1280);
  v682 = *(v3 + 1368);
  v689 = *(v3 + 1432);
  v8 = (v3 + 1436);
  v702 = *(v3 + 1512);
  v701 = *(v3 + 1520);
  v714 = *(v3 + 1628);
  v9 = (v3 + 1828);
  v10 = (v3 + 1844);
  v758 = *(v3 + 432);
  v759 = *(v3 + 448);
  v768 = *(v3 + 464);
  v762 = *(v3 + 480);
  v543 = *(v3 + 496);
  v542 = *(v3 + 500);
  v541 = *(v3 + 504);
  v544 = *(v3 + 512);
  v546 = *(v3 + 528);
  v547 = *(v3 + 544);
  v549 = *(v3 + 560);
  v548 = *(v3 + 564);
  v550 = *(v3 + 568);
  v559 = *(v3 + 576);
  v560 = *(v3 + 592);
  v562 = *(v3 + 608);
  v561 = *(v3 + 612);
  v564 = *(v3 + 624);
  v574 = *(v3 + 640);
  v575 = *(v3 + 656);
  v576 = *(v3 + 664);
  v577 = *(v3 + 672);
  v578 = *(v3 + 688);
  v579 = *(v3 + 704);
  v580 = *(v3 + 712);
  v581 = *(v3 + 720);
  v583 = *(v3 + 728);
  v582 = *(v3 + 732);
  v585 = *(v3 + 752);
  v596 = *(v3 + 816);
  v597 = *(v3 + 832);
  v598 = *(v3 + 840);
  v599 = *(v3 + 848);
  v601 = *(v3 + 856);
  v600 = *(v3 + 860);
  v603 = *(v3 + 880);
  v615 = *(v3 + 944);
  v616 = *(v3 + 960);
  v617 = *(v3 + 968);
  v618 = *(v3 + 976);
  v621 = *(v3 + 984);
  v620 = *(v3 + 988);
  v622 = *(v3 + 1008);
  v632 = *(v3 + 1072);
  v633 = *(v3 + 1088);
  v635 = *(v3 + 1096);
  v636 = *(v3 + 1104);
  v638 = *(v3 + 1112);
  v637 = *(v3 + 1116);
  v639 = *(v3 + 1136);
  v647 = *(v3 + 1200);
  v648 = *(v3 + 1232);
  v656 = *(v3 + 1288);
  v655 = *(v3 + 1296);
  v659 = *(v3 + 1300);
  v658 = *(v3 + 1304);
  v663 = *(v3 + 1312);
  v670 = *(v3 + 1328);
  v673 = *(v3 + 1344);
  v672 = *(v3 + 1348);
  v671 = *(v3 + 1352);
  v674 = *(v3 + 1360);
  v679 = *(v3 + 1376);
  v683 = *(v3 + 1392);
  v684 = *(v3 + 1408);
  v685 = *(v3 + 1424);
  v686 = *(v3 + 1456);
  v688 = *(v3 + 1472);
  v691 = *(v3 + 1488);
  v693 = *(v3 + 1504);
  v692 = *(v3 + 1508);
  v694 = *(v3 + 1528);
  v695 = *(v3 + 1536);
  v699 = *(v3 + 1552);
  v698 = *(v3 + 1556);
  v697 = *(v3 + 1560);
  v696 = *(v3 + 1564);
  v700 = *(v3 + 1568);
  v703 = *(v3 + 1584);
  v704 = *(v3 + 1600);
  v706 = *(v3 + 1616);
  v705 = *(v3 + 1624);
  v806 = *(v3 + 96);
  v805 = *(v3 + 80);
  memcpy(v817, (v3 + 1656), sizeof(v817));
  v708 = *(v4 + 1760);
  v709 = *(v4 + 1776);
  v710 = *(v4 + 1808);
  v718 = *(v4 + 1824);
  v716 = *v9;
  v715 = *v10;
  v800 = *(v4 + 164);
  v712 = *(v4 + 1852);
  v711 = *(v4 + 1856);
  v713 = *(v4 + 1864);
  v719 = *(v4 + 1872);
  v717 = *(v4 + 1880);
  v720 = *(v4 + 1888);
  v725 = *(v4 + 1904);
  v724 = *(v4 + 1908);
  v723 = *(v4 + 1912);
  v721 = *(v4 + 1920);
  v722 = *(v4 + 1928);
  v726 = *(v4 + 1936);
  v727 = *(v4 + 1952);
  v729 = *(v4 + 1960);
  v728 = *(v4 + 1984);
  v730 = *(v4 + 1988);
  v731 = *(v4 + 1992);
  v732 = *(v4 + 2000);
  v733 = *(v4 + 2008);
  v734 = *(v4 + 2016);
  v739 = *(v4 + 2032);
  v741 = *(v4 + 2048);
  v742 = *(v4 + 2064);
  v746 = *(v4 + 2080);
  v747 = *(v4 + 2200);
  v748 = *(v4 + 2272);
  v749 = *(v4 + 2312);
  v11 = *(v2 + 24);
  v755 = *(v2 + 384);
  v756 = *(v6 + 4);
  v12 = *(v2 + 400);
  v754 = *(v2 + 408);
  v757 = *(v2 + 424);
  v563 = *(v2 + 736);
  v818 = *(v2 + 1629);
  v661 = *v8;
  v553 = *(v2 + 744);
  v13 = *(v2 + 792);
  v565 = *(v2 + 864);
  v568 = *(v2 + 872);
  v819 = *(v2 + 1645);
  v584 = *(v2 + 992);
  v587 = *(v2 + 1000);
  v602 = *(v2 + 1120);
  v606 = *(v2 + 1128);
  v619 = *(v2 + 1236);
  v624 = *(v2 + 1280);
  v641 = *(v2 + 1368);
  v657 = *(v2 + 1432);
  v677 = *(v2 + 1512);
  v676 = *(v2 + 1520);
  v687 = *(v2 + 1628);
  v735 = *(v4 + 2112);
  v736 = *(v4 + 2120);
  v737 = *(v4 + 2128);
  v740 = *(v4 + 2136);
  v738 = *(v4 + 2144);
  v743 = *(v4 + 2192);
  v744 = *(v4 + 2224);
  v611 = *(v4 + 1216);
  v690 = *(v4 + 1792);
  v707 = *(v4 + 1968);
  v745 = *(v4 + 2240);
  v650 = *(v2 + 1436);
  v14 = *v2;
  v15 = *(v2 + 16);
  v813 = *(v2 + 32);
  v810 = *(v2 + 48);
  v17 = *(v2 + 64);
  v16 = *(v2 + 68);
  v18 = *(v2 + 72);
  v804 = *(v2 + 96);
  v803 = *(v2 + 80);
  v19 = *(v2 + 112);
  v20 = *(v2 + 160);
  v799 = *(v2 + 164);
  v797 = *(v2 + 184);
  v791 = *(v2 + 224);
  v789 = *(v2 + 244);
  v790 = *(v2 + 248);
  v795 = *(v2 + 256);
  v787 = *(v2 + 264);
  v784 = *(v2 + 268);
  v783 = *(v2 + 272);
  v774 = *(v2 + 320);
  v773 = *(v2 + 324);
  v777 = *(v2 + 328);
  v771 = *(v2 + 336);
  v769 = *(v2 + 340);
  v781 = *(v2 + 352);
  v778 = *(v2 + 368);
  v750 = *(v2 + 416);
  v751 = *(v2 + 432);
  v752 = *(v2 + 448);
  v767 = *(v2 + 464);
  v753 = *(v2 + 480);
  v519 = *(v2 + 496);
  v518 = *(v2 + 500);
  v517 = *(v2 + 504);
  v520 = *(v2 + 512);
  v521 = *(v2 + 528);
  v522 = *(v2 + 544);
  v524 = *(v2 + 560);
  v523 = *(v2 + 564);
  v525 = *(v2 + 568);
  v526 = *(v2 + 576);
  v527 = *(v2 + 592);
  v529 = *(v2 + 608);
  v528 = *(v2 + 612);
  v530 = *(v2 + 624);
  v531 = *(v2 + 640);
  v532 = *(v2 + 656);
  v533 = *(v2 + 664);
  v534 = *(v2 + 672);
  v535 = *(v2 + 688);
  v536 = *(v2 + 704);
  v537 = *(v2 + 712);
  v538 = *(v2 + 720);
  v540 = *(v2 + 728);
  v539 = *(v2 + 732);
  v545 = *(v2 + 752);
  v551 = *(v2 + 816);
  v552 = *(v2 + 832);
  v554 = *(v2 + 840);
  v555 = *(v2 + 848);
  v557 = *(v2 + 856);
  v556 = *(v2 + 860);
  v558 = *(v2 + 880);
  v566 = *(v2 + 944);
  v567 = *(v2 + 960);
  v569 = *(v2 + 968);
  v570 = *(v2 + 976);
  v572 = *(v2 + 984);
  v571 = *(v2 + 988);
  v573 = *(v2 + 1008);
  v586 = *(v2 + 1072);
  v588 = *(v2 + 1088);
  v589 = *(v2 + 1096);
  v590 = *(v2 + 1104);
  v592 = *(v2 + 1112);
  v591 = *(v2 + 1116);
  v593 = *(v2 + 1136);
  v605 = *(v2 + 1200);
  v607 = *(v2 + 1216);
  v604 = *(v2 + 1232);
  v612 = *(v2 + 1288);
  v610 = *(v2 + 1296);
  v614 = *(v2 + 1300);
  v613 = *(v2 + 1304);
  v623 = *(v2 + 1312);
  v625 = *(v2 + 1328);
  v628 = *(v2 + 1344);
  v627 = *(v2 + 1348);
  v626 = *(v2 + 1352);
  v629 = *(v2 + 1360);
  v634 = *(v2 + 1376);
  v640 = *(v2 + 1392);
  v644 = *(v2 + 1408);
  v645 = *(v2 + 1424);
  v646 = *(v2 + 1456);
  v649 = *(v2 + 1472);
  v652 = *(v2 + 1488);
  v654 = *(v2 + 1504);
  v653 = *(v2 + 1508);
  v660 = *(v2 + 1528);
  v664 = *(v2 + 1536);
  v668 = *(v2 + 1552);
  v667 = *(v2 + 1556);
  v666 = *(v2 + 1560);
  v665 = *(v2 + 1564);
  v669 = *(v2 + 1568);
  v675 = *(v2 + 1584);
  v678 = *(v2 + 1600);
  v681 = *(v2 + 1616);
  v680 = *(v2 + 1624);
  memcpy(v820, (v2 + 1656), 0x58uLL);
  if (v5 != v14)
  {
    goto LABEL_10;
  }

  v478 = *(v2 + 1760);
  v479 = *(v2 + 1776);
  v480 = *(v2 + 1792);
  v486 = *(v2 + 1824);
  v484 = *(v2 + 1844);
  v485 = *(v2 + 1828);
  v481 = *(v2 + 1808);
  v482 = *(v2 + 1852);
  v21 = *(v2 + 1856);
  v483 = *(v2 + 1864);
  v488 = *(v2 + 1872);
  v487 = *(v2 + 1880);
  v489 = *(v2 + 1888);
  v493 = *(v2 + 1908);
  v494 = *(v2 + 1904);
  v490 = *(v2 + 1920);
  v491 = *(v2 + 1928);
  v492 = *(v2 + 1912);
  v495 = *(v2 + 1936);
  v496 = *(v2 + 1952);
  v499 = *(v2 + 1960);
  v500 = *(v2 + 1968);
  v497 = *(v2 + 1984);
  v498 = *(v2 + 1988);
  v501 = *(v2 + 1992);
  v502 = *(v2 + 2000);
  v503 = *(v2 + 2008);
  v504 = *(v2 + 2016);
  v505 = *(v2 + 2032);
  v506 = *(v2 + 2048);
  v507 = *(v2 + 2064);
  v508 = *(v2 + 2080);
  v510 = *(v2 + 2112);
  v22 = *(v2 + 2120);
  v515 = *(v2 + 2200);
  v516 = *(v2 + 2272);
  v477 = *(v2 + 2312);
  v509 = *(v2 + 2128);
  v512 = *(v2 + 2136);
  v511 = *(v2 + 2144);
  v23 = *(v2 + 2192);
  v513 = *(v2 + 2224);
  v514 = *(v2 + 2240);
  if ((sub_1BC970874() & 1) == 0)
  {
    goto LABEL_10;
  }

  v24 = v812 == v15 && v7 == v11;
  if (!v24)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_33_11(v814, v813);
  if ((v25 & 1) == 0 || (vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(v814, v814, 0xCuLL), v811, 8uLL), vextq_s8(vextq_s8(v813, v813, 0xCuLL), v810, 8uLL)))) & 1) == 0 || (vmovn_s32(vceqq_f32(v811, v810)).i32[1] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v809 != v17 || v808 != v16)
  {
    goto LABEL_10;
  }

  v27 = vceq_f32(v807, v18);
  if ((v27.i8[0] & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v27.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (vaddvq_s16(vandq_s8(vuzp1q_s16(vceqq_f32(v805, v803), vceqq_f32(v806, v804)), xmmword_1BCE59EE0)) != 255)
  {
    goto LABEL_10;
  }

  v28 = vceq_f32(v802, v19);
  if ((v28.i32[0] & v28.i32[1] & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v30 & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    OUTLINED_FUNCTION_16_24(v29);
    OUTLINED_FUNCTION_15_25();
    if (v29 == 3)
    {
      break;
    }

    while (1)
    {
      ++v29;
      if (v31)
      {
        break;
      }

LABEL_24:
      if (v29 == 3)
      {
        goto LABEL_10;
      }

      v31 = 0;
    }
  }

  if (v32 != v33)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v35 & 1) == 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
    OUTLINED_FUNCTION_16_24(v34);
    OUTLINED_FUNCTION_15_25();
    if (v34 == 3)
    {
      break;
    }

    while (1)
    {
      ++v34;
      if (v36)
      {
        break;
      }

LABEL_32:
      if (v34 == 3)
      {
        goto LABEL_10;
      }

      v36 = 0;
    }
  }

  v39 = vaddvq_s32(vandq_s8(vceqq_f32(v800, v799), xmmword_1BCE54AE0));
  v40 = v37 == v38 && v801 == v20;
  v41 = ~v39 & 0xF;
  if (!v40 || v41 != 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_21(v798, v797);
  if ((v43 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v45 & 1) == 0)
  {
    goto LABEL_48;
  }

  while (1)
  {
    OUTLINED_FUNCTION_16_24(v44);
    OUTLINED_FUNCTION_15_25();
    if (v44 == 3)
    {
      break;
    }

    while (1)
    {
      ++v44;
      if (v46)
      {
        break;
      }

LABEL_48:
      if (v44 == 3)
      {
        goto LABEL_10;
      }

      v46 = 0;
    }
  }

  if (v47 != v48)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v50 & 1) == 0)
  {
    goto LABEL_56;
  }

  while (1)
  {
    OUTLINED_FUNCTION_16_24(v49);
    OUTLINED_FUNCTION_15_25();
    if (v49 == 3)
    {
      break;
    }

    while (1)
    {
      ++v49;
      if (v51)
      {
        break;
      }

LABEL_56:
      if (v49 == 3)
      {
        goto LABEL_10;
      }

      v51 = 0;
    }
  }

  OUTLINED_FUNCTION_59_2();
  v55 = v53 == v54 && v794 == v791;
  v56 = ~v52 & 0xF;
  v57 = v55 && v56 == 0;
  v58 = !v57 || v792 != v789;
  if (v58 || v793 != v790)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_56_0(v796, *&v795);
  if ((v60 & 1) == 0)
  {
    goto LABEL_10;
  }

  v61 = OUTLINED_FUNCTION_64_2(__PAIR64__(v796.u32[1], v788), v795, v787).u8[0];
  if ((v62 & 1) == 0 || (v61 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v786 != v784 || v785 != v783)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v65 & 1) == 0)
  {
    goto LABEL_84;
  }

  while (1)
  {
    OUTLINED_FUNCTION_16_24(v64);
    OUTLINED_FUNCTION_15_25();
    if (v64 == 3)
    {
      break;
    }

    while (1)
    {
      ++v64;
      if (v66)
      {
        break;
      }

LABEL_84:
      if (v64 == 3)
      {
        goto LABEL_10;
      }

      v66 = 0;
    }
  }

  if (v67 != v68)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v70 & 1) == 0)
  {
    goto LABEL_92;
  }

  while (1)
  {
    OUTLINED_FUNCTION_16_24(v69);
    OUTLINED_FUNCTION_15_25();
    if (v69 == 3)
    {
      break;
    }

    while (1)
    {
      ++v69;
      if (v71)
      {
        break;
      }

LABEL_92:
      if (v69 == 3)
      {
        goto LABEL_10;
      }

      v71 = 0;
    }
  }

  v74 = v72 == v73 && v776 == v774;
  if (!v74 || v775 != v773)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_56_0(v779, *&v777);
  if ((v76 & 1) == 0)
  {
    goto LABEL_10;
  }

  v77 = OUTLINED_FUNCTION_64_2(__PAIR64__(v779.u32[1], v772), v777, v771).u8[0];
  if ((v78 & 1) == 0 || (v77 & 1) == 0 || v770 != v769)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v80 & 1) == 0)
  {
    goto LABEL_111;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v81 + 1024) = v782;
    OUTLINED_FUNCTION_16_24(v82);
    *(v83 + 1040) = v781;
    OUTLINED_FUNCTION_15_25();
    if (v79 == 3)
    {
      break;
    }

    while (1)
    {
      ++v79;
      if (v84)
      {
        break;
      }

LABEL_111:
      if (v79 == 3)
      {
        goto LABEL_10;
      }

      v84 = 0;
    }
  }

  if (v85 != v86)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v88 & 1) == 0)
  {
    goto LABEL_119;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v89 + 992) = v780;
    OUTLINED_FUNCTION_16_24(v90);
    *(v91 + 1008) = v778;
    OUTLINED_FUNCTION_15_25();
    if (v87 == 3)
    {
      break;
    }

    while (1)
    {
      ++v87;
      if (v92)
      {
        break;
      }

LABEL_119:
      if (v87 == 3)
      {
        goto LABEL_10;
      }

      v92 = 0;
    }
  }

  if (v93 != v94 || v765 != v755)
  {
    goto LABEL_10;
  }

  v96.i64[0] = v766;
  v96.i64[1] = v760;
  v97.i64[0] = v756;
  v97.i64[1] = v750;
  v98 = vaddvq_s16(vandq_s8(vuzp1q_s16(vceqq_f32(v96, v97), vceqq_f32(v758, v751)), xmmword_1BCE59EE0)) != 255 || v763 != v12;
  v99 = v98 || v764 != v754;
  if (v99 || v761 != v757)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_21(v759, v752);
  if ((v101 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v103 & 1) == 0)
  {
    goto LABEL_143;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v104 + 944) = v768;
    OUTLINED_FUNCTION_16_24(v105);
    *(v106 + 960) = v767;
    OUTLINED_FUNCTION_15_25();
    if (v102 == 3)
    {
      break;
    }

    while (1)
    {
      ++v102;
      if (v107)
      {
        break;
      }

LABEL_143:
      if (v102 == 3)
      {
        goto LABEL_10;
      }

      v107 = 0;
    }
  }

  if (v108 != v109)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v111 & 1) == 0)
  {
    goto LABEL_151;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v112 + 912) = v762;
    OUTLINED_FUNCTION_16_24(v113);
    *(v114 + 928) = v753;
    OUTLINED_FUNCTION_15_25();
    if (v110 == 3)
    {
      break;
    }

    while (1)
    {
      ++v110;
      if (v115)
      {
        break;
      }

LABEL_151:
      if (v110 == 3)
      {
        goto LABEL_10;
      }

      v115 = 0;
    }
  }

  v118 = v116 == v117 && v543 == v519;
  v119 = v118 && v542 == v518;
  if (!v119 || v541 != v517)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_21(v544, v520);
  if ((v121 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v123 & 1) == 0)
  {
    goto LABEL_170;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v124 + 880) = v546;
    OUTLINED_FUNCTION_16_24(v125);
    *(v126 + 896) = v521;
    OUTLINED_FUNCTION_15_25();
    if (v122 == 3)
    {
      break;
    }

    while (1)
    {
      ++v122;
      if (v127)
      {
        break;
      }

LABEL_170:
      if (v122 == 3)
      {
        goto LABEL_10;
      }

      v127 = 0;
    }
  }

  if (v128 != v129)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v131 & 1) == 0)
  {
    goto LABEL_178;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v132 + 848) = v547;
    OUTLINED_FUNCTION_16_24(v133);
    *(v134 + 864) = v522;
    OUTLINED_FUNCTION_15_25();
    if (v130 == 3)
    {
      break;
    }

    while (1)
    {
      ++v130;
      if (v135)
      {
        break;
      }

LABEL_178:
      if (v130 == 3)
      {
        goto LABEL_10;
      }

      v135 = 0;
    }
  }

  v138 = v136 == v137 && v549 == v524;
  if (!v138 || v548 != v523)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_21(v550, v525);
  if ((v140 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v142 & 1) == 0)
  {
    goto LABEL_194;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v143 + 816) = v559;
    OUTLINED_FUNCTION_16_24(v144);
    *(v145 + 832) = v526;
    OUTLINED_FUNCTION_15_25();
    if (v141 == 3)
    {
      break;
    }

    while (1)
    {
      ++v141;
      if (v146)
      {
        break;
      }

LABEL_194:
      if (v141 == 3)
      {
        goto LABEL_10;
      }

      v146 = 0;
    }
  }

  if (v147 != v148)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v150 & 1) == 0)
  {
    goto LABEL_202;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v151 + 784) = v560;
    OUTLINED_FUNCTION_16_24(v152);
    *(v153 + 800) = v527;
    OUTLINED_FUNCTION_15_25();
    if (v149 == 3)
    {
      break;
    }

    while (1)
    {
      ++v149;
      if (v154)
      {
        break;
      }

LABEL_202:
      if (v149 == 3)
      {
        goto LABEL_10;
      }

      v154 = 0;
    }
  }

  v157 = v155 == v156 && v562 == v529;
  if (!v157 || v561 != v528)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v160 & 1) == 0)
  {
    goto LABEL_217;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v161 + 752) = v564;
    OUTLINED_FUNCTION_16_24(v162);
    *(v163 + 768) = v530;
    OUTLINED_FUNCTION_15_25();
    if (v159 == 3)
    {
      break;
    }

    while (1)
    {
      ++v159;
      if (v164)
      {
        break;
      }

LABEL_217:
      if (v159 == 3)
      {
        goto LABEL_10;
      }

      v164 = 0;
    }
  }

  if (v165 != v166)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v168 & 1) == 0)
  {
    goto LABEL_225;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v169 + 720) = v574;
    OUTLINED_FUNCTION_16_24(v170);
    *(v171 + 736) = v531;
    OUTLINED_FUNCTION_15_25();
    if (v167 == 3)
    {
      break;
    }

    while (1)
    {
      ++v167;
      if (v172)
      {
        break;
      }

LABEL_225:
      if (v167 == 3)
      {
        goto LABEL_10;
      }

      v172 = 0;
    }
  }

  if (v173 != v174)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_21(v575, v532);
  if ((v175 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_21(v576, v533);
  if ((v176 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_21(v577, v534);
  if ((v177 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v179 & 1) == 0)
  {
    goto LABEL_236;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v180 + 688) = v578;
    OUTLINED_FUNCTION_16_24(v181);
    *(v182 + 704) = v535;
    OUTLINED_FUNCTION_15_25();
    if (v178 == 3)
    {
      break;
    }

    while (1)
    {
      ++v178;
      if (v183)
      {
        break;
      }

LABEL_236:
      if (v178 == 3)
      {
        goto LABEL_10;
      }

      v183 = 0;
    }
  }

  if (v184 != v185 || v579 != v536)
  {
    goto LABEL_10;
  }

  v187 = OUTLINED_FUNCTION_56_0(v580, v537);
  if ((v188 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v187.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  v189 = OUTLINED_FUNCTION_56_0(v581, v538);
  if ((v190 & 1) == 0 || (v189.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v583 != v540 || v582 != v539)
  {
    goto LABEL_10;
  }

  if (v594 != v563)
  {
    goto LABEL_10;
  }

  if (v595 != v553)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_33_11(v585, v545);
  if ((v192 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_66_1();
  if ((v193 & 1) == 0)
  {
    goto LABEL_10;
  }

  v194 = OUTLINED_FUNCTION_22_19();
  static CloudAssetType.== infix(_:_:)(v194, v195);
  OUTLINED_FUNCTION_78_2();

  OUTLINED_FUNCTION_103_1();

  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v197 & 1) == 0)
  {
    goto LABEL_262;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v198 + 656) = v596;
    OUTLINED_FUNCTION_16_24(v199);
    *(v200 + 672) = v551;
    OUTLINED_FUNCTION_15_25();
    if (v196 == 3)
    {
      break;
    }

    while (1)
    {
      ++v196;
      if (v201)
      {
        break;
      }

LABEL_262:
      if (v196 == 3)
      {
        goto LABEL_10;
      }

      v201 = 0;
    }
  }

  if (v202 != v203 || v597 != v552)
  {
    goto LABEL_10;
  }

  v205 = OUTLINED_FUNCTION_56_0(v598, v554);
  if ((v206 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v205.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  v207 = OUTLINED_FUNCTION_56_0(v599, v555);
  if ((v208 & 1) == 0 || (v207.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v601 != v557 || v600 != v556)
  {
    goto LABEL_10;
  }

  if (v608 != v565)
  {
    goto LABEL_10;
  }

  if (v609 != v568)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_33_11(v603, v558);
  if ((v210 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_66_1();
  if ((v211 & 1) == 0)
  {
    goto LABEL_10;
  }

  v212 = OUTLINED_FUNCTION_22_19();
  static CloudAssetType.== infix(_:_:)(v212, v213);
  OUTLINED_FUNCTION_78_2();

  OUTLINED_FUNCTION_103_1();

  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v215 & 1) == 0)
  {
    goto LABEL_288;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v216 + 624) = v615;
    OUTLINED_FUNCTION_16_24(v217);
    *(v218 + 640) = v566;
    OUTLINED_FUNCTION_15_25();
    if (v214 == 3)
    {
      break;
    }

    while (1)
    {
      ++v214;
      if (v219)
      {
        break;
      }

LABEL_288:
      if (v214 == 3)
      {
        goto LABEL_10;
      }

      v219 = 0;
    }
  }

  if (v220 != v221 || v616 != v567)
  {
    goto LABEL_10;
  }

  v223 = OUTLINED_FUNCTION_56_0(v617, v569);
  if ((v224 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v223.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  v225 = OUTLINED_FUNCTION_56_0(v618, v570);
  if ((v226 & 1) == 0 || (v225.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v621 != v572 || v620 != v571)
  {
    goto LABEL_10;
  }

  if (v630 != v584)
  {
    goto LABEL_10;
  }

  if (v631 != v587)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_33_11(v622, v573);
  if ((v228 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_66_1();
  if ((v229 & 1) == 0)
  {
    goto LABEL_10;
  }

  v230 = OUTLINED_FUNCTION_22_19();
  static CloudAssetType.== infix(_:_:)(v230, v231);
  OUTLINED_FUNCTION_78_2();

  OUTLINED_FUNCTION_103_1();

  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v233 & 1) == 0)
  {
    goto LABEL_314;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v234 + 592) = v632;
    OUTLINED_FUNCTION_16_24(v235);
    *(v236 + 608) = v586;
    OUTLINED_FUNCTION_15_25();
    if (v232 == 3)
    {
      break;
    }

    while (1)
    {
      ++v232;
      if (v237)
      {
        break;
      }

LABEL_314:
      if (v232 == 3)
      {
        goto LABEL_10;
      }

      v237 = 0;
    }
  }

  if (v238 != v239 || v633 != v588)
  {
    goto LABEL_10;
  }

  v241 = OUTLINED_FUNCTION_56_0(v635, v589);
  if ((v242 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v241.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  v243 = OUTLINED_FUNCTION_56_0(v636, v590);
  if ((v244 & 1) == 0 || (v243.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v638 != v592 || v637 != v591)
  {
    goto LABEL_10;
  }

  if (v642 != v602)
  {
    goto LABEL_10;
  }

  if (v643 != v606)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_33_11(v639, v593);
  if ((v246 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_66_1();
  if ((v247 & 1) == 0)
  {
    goto LABEL_10;
  }

  v248 = OUTLINED_FUNCTION_22_19();
  static CloudAssetType.== infix(_:_:)(v248, v249);
  OUTLINED_FUNCTION_109_1();

  OUTLINED_FUNCTION_103_1();

  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v251 & 1) == 0)
  {
    goto LABEL_340;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v252 + 560) = v647;
    OUTLINED_FUNCTION_16_24(v253);
    *(v254 + 576) = v605;
    OUTLINED_FUNCTION_15_25();
    if (v250 == 3)
    {
      break;
    }

    while (1)
    {
      ++v250;
      if (v255)
      {
        break;
      }

LABEL_340:
      if (v250 == 3)
      {
        goto LABEL_10;
      }

      v255 = 0;
    }
  }

  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v611, v607)))))
  {
    goto LABEL_10;
  }

  if (v648 != v604)
  {
    goto LABEL_10;
  }

  if (v256 != v257)
  {
    goto LABEL_10;
  }

  if ((v651 ^ v619))
  {
    goto LABEL_10;
  }

  v258 = OUTLINED_FUNCTION_22_19();
  static CloudAssetType.== infix(_:_:)(v258, v259);
  OUTLINED_FUNCTION_109_1();

  OUTLINED_FUNCTION_103_1();

  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v662 != v624)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_56_0(v656, *&v612);
  if ((v260 & 1) == 0)
  {
    goto LABEL_10;
  }

  v261 = OUTLINED_FUNCTION_64_2(__PAIR64__(v656.u32[1], v655), v612, v610).u8[0];
  if ((v262 & 1) == 0 || (v261 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v659 != v614 || v658 != v613)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v265 & 1) == 0)
  {
    goto LABEL_361;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v266 + 528) = v663;
    OUTLINED_FUNCTION_16_24(v267);
    *(v268 + 544) = v623;
    OUTLINED_FUNCTION_15_25();
    if (v264 == 3)
    {
      break;
    }

    while (1)
    {
      ++v264;
      if (v269)
      {
        break;
      }

LABEL_361:
      if (v264 == 3)
      {
        goto LABEL_10;
      }

      v269 = 0;
    }
  }

  if (v270 != v271)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v273 & 1) == 0)
  {
    goto LABEL_369;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v274 + 496) = v670;
    OUTLINED_FUNCTION_16_24(v275);
    *(v276 + 512) = v625;
    OUTLINED_FUNCTION_15_25();
    if (v272 == 3)
    {
      break;
    }

    while (1)
    {
      ++v272;
      if (v277)
      {
        break;
      }

LABEL_369:
      if (v272 == 3)
      {
        goto LABEL_10;
      }

      v277 = 0;
    }
  }

  v280 = v278 == v279 && v673 == v628;
  v281 = v280 && v672 == v627;
  if (!v281 || v671 != v626)
  {
    goto LABEL_10;
  }

  v283 = OUTLINED_FUNCTION_56_0(v674, v629);
  if ((v284 & 1) == 0 || (v283.i8[4] & 1) == 0 || v682 != v641)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v286 & 1) == 0)
  {
    goto LABEL_390;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v287 + 464) = v679;
    OUTLINED_FUNCTION_16_24(v288);
    *(v289 + 480) = v634;
    OUTLINED_FUNCTION_15_25();
    if (v285 == 3)
    {
      break;
    }

    while (1)
    {
      ++v285;
      if (v290)
      {
        break;
      }

LABEL_390:
      if (v285 == 3)
      {
        goto LABEL_10;
      }

      v290 = 0;
    }
  }

  if (v291 != v292)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v294 & 1) == 0)
  {
    goto LABEL_398;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v295 + 432) = v683;
    OUTLINED_FUNCTION_16_24(v296);
    *(v297 + 448) = v640;
    OUTLINED_FUNCTION_15_25();
    if (v293 == 3)
    {
      break;
    }

    while (1)
    {
      ++v293;
      if (v298)
      {
        break;
      }

LABEL_398:
      if (v293 == 3)
      {
        goto LABEL_10;
      }

      v298 = 0;
    }
  }

  if (v299 != v300)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v302 & 1) == 0)
  {
    goto LABEL_406;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v303 + 400) = v684;
    OUTLINED_FUNCTION_16_24(v304);
    *(v305 + 416) = v644;
    OUTLINED_FUNCTION_15_25();
    if (v301 == 3)
    {
      break;
    }

    while (1)
    {
      ++v301;
      if (v306)
      {
        break;
      }

LABEL_406:
      if (v301 == 3)
      {
        goto LABEL_10;
      }

      v306 = 0;
    }
  }

  if (v307 != v308)
  {
    goto LABEL_10;
  }

  v309 = OUTLINED_FUNCTION_56_0(v685, v645);
  if ((v310 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v309.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_34_9(v661, v650);
  if (!v24)
  {
    goto LABEL_10;
  }

  if ((v689 ^ v657))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_21(v686, v646);
  if ((v311 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v313 & 1) == 0)
  {
    goto LABEL_420;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v314 + 368) = v688;
    OUTLINED_FUNCTION_16_24(v315);
    *(v316 + 384) = v649;
    OUTLINED_FUNCTION_15_25();
    if (v312 == 3)
    {
      break;
    }

    while (1)
    {
      ++v312;
      if (v317)
      {
        break;
      }

LABEL_420:
      if (v312 == 3)
      {
        goto LABEL_10;
      }

      v317 = 0;
    }
  }

  if (v318 != v319)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v321 & 1) == 0)
  {
    goto LABEL_428;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v322 + 336) = v691;
    OUTLINED_FUNCTION_16_24(v323);
    *(v324 + 352) = v652;
    OUTLINED_FUNCTION_15_25();
    if (v320 == 3)
    {
      break;
    }

    while (1)
    {
      ++v320;
      if (v325)
      {
        break;
      }

LABEL_428:
      if (v320 == 3)
      {
        goto LABEL_10;
      }

      v325 = 0;
    }
  }

  v328 = v326 == v327 && v693 == v654;
  if (!v328 || v692 != v653)
  {
    goto LABEL_10;
  }

  v330 = v702 == v677 && v701 == v676;
  if (!v330 && (sub_1BCE1E090() & 1) == 0 || v694 != v660)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v332 & 1) == 0)
  {
    goto LABEL_449;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v333 + 304) = v695;
    OUTLINED_FUNCTION_16_24(v334);
    *(v335 + 320) = v664;
    OUTLINED_FUNCTION_15_25();
    if (v331 == 3)
    {
      break;
    }

    while (1)
    {
      ++v331;
      if (v336)
      {
        break;
      }

LABEL_449:
      if (v331 == 3)
      {
        goto LABEL_10;
      }

      v336 = 0;
    }
  }

  v339 = v337 == v338 && v699 == v668;
  v340 = v339 && v698 == v667;
  v341 = v340 && v697 == v666;
  if (!v341 || v696 != v665)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_21(v700, v669);
  if ((v343 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v345 & 1) == 0)
  {
    goto LABEL_471;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v346 + 272) = v703;
    OUTLINED_FUNCTION_16_24(v347);
    *(v348 + 288) = v675;
    OUTLINED_FUNCTION_15_25();
    if (v344 == 3)
    {
      break;
    }

    while (1)
    {
      ++v344;
      if (v349)
      {
        break;
      }

LABEL_471:
      if (v344 == 3)
      {
        goto LABEL_10;
      }

      v349 = 0;
    }
  }

  if (v350 != v351)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v353 & 1) == 0)
  {
    goto LABEL_479;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v354 + 240) = v704;
    OUTLINED_FUNCTION_16_24(v355);
    *(v356 + 256) = v678;
    OUTLINED_FUNCTION_15_25();
    if (v352 == 3)
    {
      break;
    }

    while (1)
    {
      ++v352;
      if (v357)
      {
        break;
      }

LABEL_479:
      if (v352 == 3)
      {
        goto LABEL_10;
      }

      v357 = 0;
    }
  }

  if (v358 != v359)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_56_0(v706, v681);
  if ((v360 & 1) == 0)
  {
    goto LABEL_10;
  }

  v361 = vmvn_s8(vceq_f32(__PAIR64__(v706.u32[1], v705), __PAIR64__(v681.u32[1], v680)));
  if (v361.i8[4])
  {
    goto LABEL_10;
  }

  if (v361.i8[0])
  {
    goto LABEL_10;
  }

  if ((v714 ^ v687))
  {
    goto LABEL_10;
  }

  if ((static WeatherConditionBackgroundConfig.Layers.== infix(_:_:)(&v815, &v818) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((static WeatherConditionBackgroundConfig.LightningConfig.== infix(_:_:)(v817, v820) & 1) == 0)
  {
    goto LABEL_10;
  }

  v362 = OUTLINED_FUNCTION_22_19();
  if (!static HazeEffect.== infix(_:_:)(v362, v363))
  {
    goto LABEL_10;
  }

  if ((sub_1BCA689C0(v708, v478) & 1) == 0)
  {
    goto LABEL_10;
  }

  v364 = OUTLINED_FUNCTION_33_11(v709, v479);
  if ((v365 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v364.i8[2] & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v364.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_34_9(v690, v480);
  if (!v24)
  {
    goto LABEL_10;
  }

  v366 = OUTLINED_FUNCTION_33_11(v710, v481);
  if ((v367 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v366.i8[2] & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v366.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  v368.i64[0] = v715;
  v368.i64[1] = __PAIR64__(v713, v712);
  v369.i64[0] = v484;
  v369.i64[1] = __PAIR64__(v483, v482);
  if (vaddvq_s16(vandq_s8(vuzp1q_s16(vceqq_f32(v716, v485), vceqq_f32(v368, v369)), xmmword_1BCE59EE0)) != 255)
  {
    goto LABEL_10;
  }

  if ((vceq_f32(v719, *&v488).u8[0] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v711 != v21)
  {
    goto LABEL_10;
  }

  if ((v718 ^ v486))
  {
    goto LABEL_10;
  }

  v370 = OUTLINED_FUNCTION_64_2(__PAIR64__(v719.u32[1], v717), v488, v487).u32[0];
  if ((v371 & v370 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v373 & 1) == 0)
  {
    goto LABEL_508;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v374 + 192) = v720;
    OUTLINED_FUNCTION_16_24(v375);
    *(v376 + 208) = v489;
    OUTLINED_FUNCTION_15_25();
    if (v372 == 3)
    {
      break;
    }

    while (1)
    {
      ++v372;
      if (v377)
      {
        break;
      }

LABEL_508:
      if (v372 == 3)
      {
        goto LABEL_10;
      }

      v377 = 0;
    }
  }

  v380 = v378 == v379 && v725 == v494;
  v381 = v380 && v724 == v493;
  v382 = v381 && v723 == v492;
  v383 = v382 && v721 == v490;
  if (!v383 || v722 != v491)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v386 & 1) == 0)
  {
    goto LABEL_532;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v387 + 160) = v726;
    OUTLINED_FUNCTION_16_24(v388);
    *(v389 + 176) = v495;
    OUTLINED_FUNCTION_15_25();
    if (v385 == 3)
    {
      break;
    }

    while (1)
    {
      ++v385;
      if (v390)
      {
        break;
      }

LABEL_532:
      if (v385 == 3)
      {
        goto LABEL_10;
      }

      v390 = 0;
    }
  }

  if (v391 != v392 || v727 != v496)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_56_0(v729, v499);
  if ((v394 & 1) == 0)
  {
    goto LABEL_10;
  }

  v395 = vceq_f32(__PAIR64__(v729.u32[1], v728), __PAIR64__(v499.u32[1], v497));
  if ((v395.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((~vaddvq_s32(vandq_s8(vceqq_f32(v707, v500), xmmword_1BCE54AE0)) & 0xF) != 0)
  {
    goto LABEL_10;
  }

  if ((v395.i8[0] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v730 != v498)
  {
    goto LABEL_10;
  }

  if (v731 != v501)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_21(v732, v502);
  if ((v396 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_21(v733, v503);
  if ((v397 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v399 & 1) == 0)
  {
    goto LABEL_552;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v400 + 128) = v734;
    OUTLINED_FUNCTION_16_24(v401);
    *(v402 + 144) = v504;
    OUTLINED_FUNCTION_15_25();
    if (v398 == 3)
    {
      break;
    }

    while (1)
    {
      ++v398;
      if (v403)
      {
        break;
      }

LABEL_552:
      if (v398 == 3)
      {
        goto LABEL_10;
      }

      v403 = 0;
    }
  }

  if (v404 != v405)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v407 & 1) == 0)
  {
    goto LABEL_560;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v408 + 96) = v739;
    OUTLINED_FUNCTION_16_24(v409);
    *(v410 + 112) = v505;
    OUTLINED_FUNCTION_15_25();
    if (v406 == 3)
    {
      break;
    }

    while (1)
    {
      ++v406;
      if (v411)
      {
        break;
      }

LABEL_560:
      if (v406 == 3)
      {
        goto LABEL_10;
      }

      v411 = 0;
    }
  }

  if (v412 != v413)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v415 & 1) == 0)
  {
    goto LABEL_568;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v416 + 64) = v741;
    OUTLINED_FUNCTION_16_24(v417);
    *(v418 + 80) = v506;
    OUTLINED_FUNCTION_15_25();
    if (v414 == 3)
    {
      break;
    }

    while (1)
    {
      ++v414;
      if (v419)
      {
        break;
      }

LABEL_568:
      if (v414 == 3)
      {
        goto LABEL_10;
      }

      v419 = 0;
    }
  }

  if (v420 != v421)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v423 & 1) == 0)
  {
    goto LABEL_576;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *(v424 + 32) = v742;
    OUTLINED_FUNCTION_16_24(v425);
    *(v426 + 48) = v507;
    OUTLINED_FUNCTION_15_25();
    if (v422 == 3)
    {
      break;
    }

    while (1)
    {
      ++v422;
      if (v427)
      {
        break;
      }

LABEL_576:
      if (v422 == 3)
      {
        goto LABEL_10;
      }

      v427 = 0;
    }
  }

  if (v428 != v429)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v431 & 1) == 0)
  {
    goto LABEL_584;
  }

  while (1)
  {
    OUTLINED_FUNCTION_38_9();
    *v432 = v746;
    OUTLINED_FUNCTION_16_24(v433);
    *(v434 + 16) = v508;
    OUTLINED_FUNCTION_15_25();
    if (v430 == 3)
    {
      break;
    }

    while (1)
    {
      ++v430;
      if (v435)
      {
        break;
      }

LABEL_584:
      if (v430 == 3)
      {
        goto LABEL_10;
      }

      v435 = 0;
    }
  }

  if (v436 != v437)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v439 & 1) == 0)
  {
    goto LABEL_592;
  }

  while (1)
  {
    OUTLINED_FUNCTION_16_24(v438);
    OUTLINED_FUNCTION_15_25();
    if (v438 == 3)
    {
      break;
    }

    while (1)
    {
      ++v438;
      if (v440)
      {
        break;
      }

LABEL_592:
      if (v438 == 3)
      {
        goto LABEL_10;
      }

      v440 = 0;
    }
  }

  if (v441 != v442 || v735 != v510)
  {
    goto LABEL_10;
  }

  v444 = vceq_f32(v736, v22);
  if ((v444.i32[0] & v444.i32[1] & 1) == 0)
  {
    goto LABEL_10;
  }

  v445 = OUTLINED_FUNCTION_56_0(v737, v509);
  if ((v446 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v445.i8[4] & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_56_0(v740, *&v512);
  if ((v447 & 1) == 0)
  {
    goto LABEL_10;
  }

  v448 = OUTLINED_FUNCTION_64_2(__PAIR64__(v740.u32[1], v738), v512, v511).u32[0];
  if ((v449 & v448 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v451 & 1) == 0)
  {
    goto LABEL_609;
  }

  while (1)
  {
    OUTLINED_FUNCTION_16_24(v450);
    OUTLINED_FUNCTION_15_25();
    if (v450 == 3)
    {
      break;
    }

    while (1)
    {
      ++v450;
      if (v452)
      {
        break;
      }

LABEL_609:
      if (v450 == 3)
      {
        goto LABEL_10;
      }

      v452 = 0;
    }
  }

  if (v453 != v454)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v456 & 1) == 0)
  {
    goto LABEL_617;
  }

  while (1)
  {
    OUTLINED_FUNCTION_16_24(v455);
    OUTLINED_FUNCTION_15_25();
    if (v455 == 3)
    {
      break;
    }

    while (1)
    {
      ++v455;
      if (v457)
      {
        break;
      }

LABEL_617:
      if (v455 == 3)
      {
        goto LABEL_10;
      }

      v457 = 0;
    }
  }

  OUTLINED_FUNCTION_59_2();
  v461 = v459 == v460 && v743 == v23;
  v462 = ~v458 & 0xF;
  v463 = v461 && v462 == 0;
  if (!v463 || v747 != v515)
  {
    goto LABEL_10;
  }

  if ((vmovn_s32(vceqq_f32(v744, v513)).i32[1] & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_34_9(v745, v514);
  if (!v24)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_8();
  if ((v466 & 1) == 0)
  {
    goto LABEL_638;
  }

  while (1)
  {
    OUTLINED_FUNCTION_16_24(v465);
    OUTLINED_FUNCTION_15_25();
    if (v465 == 3)
    {
      break;
    }

    while (1)
    {
      ++v465;
      if (v467)
      {
        break;
      }

LABEL_638:
      if (v465 == 3)
      {
        goto LABEL_10;
      }

      v467 = 0;
    }
  }

  OUTLINED_FUNCTION_59_2();
  v471 = v469 == v470 && v748 == v516;
  v472 = ~v468 & 0xF;
  v473 = v471 && v472 == 0;
  if (v473 && (sub_1BCABA37C(v749, v477) & 1) != 0)
  {
    OUTLINED_FUNCTION_74_2();

    sub_1BCABA37C(v474, v475);
  }

  else
  {
LABEL_10:
    OUTLINED_FUNCTION_74_2();
  }
}

uint64_t sub_1BCC45644(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6953746567726174 && a2 == 0xEF7373616C43657ALL;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x636146656C616373 && a2 == 0xEB00000000726F74;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x80000001BCE87960 == a2;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F506172656D6163 && a2 == 0xEE006E6F69746973;
          if (v9 || (sub_1BCE1E090() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000001BCE87980 == a2;
            if (v10 || (sub_1BCE1E090() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001BCE87350 == a2;
              if (v11 || (sub_1BCE1E090() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001BLL && 0x80000001BCE879A0 == a2;
                if (v12 || (sub_1BCE1E090() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x80000001BCE879C0 == a2;
                  if (v13 || (sub_1BCE1E090() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000017 && 0x80000001BCE87330 == a2;
                    if (v14 || (sub_1BCE1E090() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x746E496D6F6F6C62 && a2 == 0xEE00797469736E65;
                      if (v15 || (sub_1BCE1E090() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000011 && 0x80000001BCE879E0 == a2;
                        if (v16 || (sub_1BCE1E090() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000015 && 0x80000001BCE86BE0 == a2;
                          if (v17 || (sub_1BCE1E090() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000014 && 0x80000001BCE86BC0 == a2;
                            if (v18 || (sub_1BCE1E090() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6566694C6E696172 && a2 == 0xE800000000000000;
                              if (v19 || (sub_1BCE1E090() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000016 && 0x80000001BCE87020 == a2;
                                if (v20 || (sub_1BCE1E090() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000013 && 0x80000001BCE87040 == a2;
                                  if (v21 || (sub_1BCE1E090() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000017 && 0x80000001BCE87A00 == a2;
                                    if (v22 || (sub_1BCE1E090() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000016 && 0x80000001BCE86FE0 == a2;
                                      if (v23 || (sub_1BCE1E090() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000014 && 0x80000001BCE86FC0 == a2;
                                        if (v24 || (sub_1BCE1E090() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x705347466E696172 && a2 == 0xEC00000064616572;
                                          if (v25 || (sub_1BCE1E090() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000019 && 0x80000001BCE86FA0 == a2;
                                            if (v26 || (sub_1BCE1E090() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000015 && 0x80000001BCE86F80 == a2;
                                              if (v27 || (sub_1BCE1E090() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000016 && 0x80000001BCE86F40 == a2;
                                                if (v28 || (sub_1BCE1E090() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000013 && 0x80000001BCE86F60 == a2;
                                                  if (v29 || (sub_1BCE1E090() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000017 && 0x80000001BCE87A20 == a2;
                                                    if (v30 || (sub_1BCE1E090() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000016 && 0x80000001BCE86F00 == a2;
                                                      if (v31 || (sub_1BCE1E090() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000014 && 0x80000001BCE86EE0 == a2;
                                                        if (v32 || (sub_1BCE1E090() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x705347426E696172 && a2 == 0xEC00000064616572;
                                                          if (v33 || (sub_1BCE1E090() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000019 && 0x80000001BCE86EC0 == a2;
                                                            if (v34 || (sub_1BCE1E090() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000015 && 0x80000001BCE86EA0 == a2;
                                                              if (v35 || (sub_1BCE1E090() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x6566694C776F6E73 && a2 == 0xE800000000000000;
                                                                if (v36 || (sub_1BCE1E090() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x70534742776F6E73 && a2 == 0xEC00000064616572;
                                                                  if (v37 || (sub_1BCE1E090() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000016 && 0x80000001BCE86E60 == a2;
                                                                    if (v38 || (sub_1BCE1E090() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000013 && 0x80000001BCE86E80 == a2;
                                                                      if (v39 || (sub_1BCE1E090() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000017 && 0x80000001BCE87A40 == a2;
                                                                        if (v40 || (sub_1BCE1E090() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000019 && 0x80000001BCE86E20 == a2;
                                                                          if (v41 || (sub_1BCE1E090() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000015 && 0x80000001BCE86E00 == a2;
                                                                            if (v42 || (sub_1BCE1E090() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0x70534746776F6E73 && a2 == 0xEC00000064616572;
                                                                              if (v43 || (sub_1BCE1E090() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000016 && 0x80000001BCE86DE0 == a2;
                                                                                if (v44 || (sub_1BCE1E090() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD000000000000014 && 0x80000001BCE86DC0 == a2;
                                                                                  if (v45 || (sub_1BCE1E090() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD000000000000016 && 0x80000001BCE86D80 == a2;
                                                                                    if (v46 || (sub_1BCE1E090() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000013 && 0x80000001BCE86DA0 == a2;
                                                                                      if (v47 || (sub_1BCE1E090() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0xD000000000000017 && 0x80000001BCE87A60 == a2;
                                                                                        if (v48 || (sub_1BCE1E090() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0xD000000000000019 && 0x80000001BCE86D40 == a2;
                                                                                          if (v49 || (sub_1BCE1E090() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0xD000000000000015 && 0x80000001BCE86D20 == a2;
                                                                                            if (v50 || (sub_1BCE1E090() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0xD000000000000016 && 0x80000001BCE86D00 == a2;
                                                                                              if (v51 || (sub_1BCE1E090() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v52 = a1 == 0xD000000000000014 && 0x80000001BCE86CE0 == a2;
                                                                                                if (v52 || (sub_1BCE1E090() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v53 = a1 == 0x46776F6E53657375 && a2 == 0xEB00000000747361;
                                                                                                  if (v53 || (sub_1BCE1E090() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v54 = a1 == 0x6361704F72617473 && a2 == 0xEB00000000797469;
                                                                                                    if (v54 || (sub_1BCE1E090() & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v55 = a1 == 0x6565705372617473 && a2 == 0xE900000000000064;
                                                                                                      if (v55 || (sub_1BCE1E090() & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v56 = a1 == 0xD000000000000011 && 0x80000001BCE86CC0 == a2;
                                                                                                        if (v56 || (sub_1BCE1E090() & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v57 = a1 == 0xD000000000000017 && 0x80000001BCE86CA0 == a2;
                                                                                                          if (v57 || (sub_1BCE1E090() & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v58 = a1 == 0xD000000000000017 && 0x80000001BCE86C80 == a2;
                                                                                                            if (v58 || (sub_1BCE1E090() & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v59 = a1 == 0xD000000000000016 && 0x80000001BCE86C60 == a2;
                                                                                                              if (v59 || (sub_1BCE1E090() & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v60 = a1 == 0xD000000000000016 && 0x80000001BCE86C00 == a2;
                                                                                                                if (v60 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v61 = a1 == 0xD000000000000011 && 0x80000001BCE86150 == a2;
                                                                                                                  if (v61 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v62 = a1 == 0x6566694C6C696168 && a2 == 0xE800000000000000;
                                                                                                                    if (v62 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v63 = a1 == 0xD000000000000011 && 0x80000001BCE86A60 == a2;
                                                                                                                      if (v63 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v64 = a1 == 0xD000000000000014 && 0x80000001BCE86A40 == a2;
                                                                                                                        if (v64 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v65 = a1 == 0xD000000000000015 && 0x80000001BCE87A80 == a2;
                                                                                                                          if (v65 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                          {

                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v66 = a1 == 0xD000000000000014 && 0x80000001BCE87AA0 == a2;
                                                                                                                            if (v66 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                            {

                                                                                                                              return 61;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v67 = a1 == 0xD000000000000012 && 0x80000001BCE87AC0 == a2;
                                                                                                                              if (v67 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                              {

                                                                                                                                return 62;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v68 = a1 == 0x66694C7465656C73 && a2 == 0xE900000000000065;
                                                                                                                                if (v68 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                {

                                                                                                                                  return 63;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v69 = a1 == 0xD000000000000014 && 0x80000001BCE86A20 == a2;
                                                                                                                                  if (v69 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                  {

                                                                                                                                    return 64;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v70 = a1 == 0xD000000000000017 && 0x80000001BCE86A00 == a2;
                                                                                                                                    if (v70 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                    {

                                                                                                                                      return 65;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v71 = a1 == 0xD000000000000018 && 0x80000001BCE87AE0 == a2;
                                                                                                                                      if (v71 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                      {

                                                                                                                                        return 66;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v72 = a1 == 0xD000000000000017 && 0x80000001BCE869C0 == a2;
                                                                                                                                        if (v72 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                        {

                                                                                                                                          return 67;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v73 = a1 == 0xD000000000000015 && 0x80000001BCE869A0 == a2;
                                                                                                                                          if (v73 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                          {

                                                                                                                                            return 68;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v74 = a1 == 0xD000000000000014 && 0x80000001BCE86980 == a2;
                                                                                                                                            if (v74 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                            {

                                                                                                                                              return 69;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v75 = a1 == 0xD000000000000017 && 0x80000001BCE86960 == a2;
                                                                                                                                              if (v75 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                              {

                                                                                                                                                return 70;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v76 = a1 == 0xD000000000000018 && 0x80000001BCE87B00 == a2;
                                                                                                                                                if (v76 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  return 71;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v77 = a1 == 0xD000000000000017 && 0x80000001BCE86920 == a2;
                                                                                                                                                  if (v77 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    return 72;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v78 = a1 == 0xD000000000000015 && 0x80000001BCE86900 == a2;
                                                                                                                                                    if (v78 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      return 73;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v79 = a1 == 0xD000000000000012 && 0x80000001BCE868E0 == a2;
                                                                                                                                                      if (v79 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                      {

                                                                                                                                                        return 74;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v80 = a1 == 0xD000000000000014 && 0x80000001BCE868C0 == a2;
                                                                                                                                                        if (v80 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                        {

                                                                                                                                                          return 75;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v81 = a1 == 0xD000000000000014 && 0x80000001BCE868A0 == a2;
                                                                                                                                                          if (v81 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                          {

                                                                                                                                                            return 76;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v82 = a1 == 0xD000000000000012 && 0x80000001BCE86880 == a2;
                                                                                                                                                            if (v82 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                            {

                                                                                                                                                              return 77;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v83 = a1 == 0x6E615258646E6977 && a2 == 0xEA00000000006567;
                                                                                                                                                              if (v83 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                              {

                                                                                                                                                                return 78;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v84 = a1 == 0x6E615259646E6977 && a2 == 0xEA00000000006567;
                                                                                                                                                                if (v84 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                {

                                                                                                                                                                  return 79;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v85 = a1 == 0x657A6953646E6977 && a2 == 0xE800000000000000;
                                                                                                                                                                  if (v85 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                  {

                                                                                                                                                                    return 80;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v86 = a1 == 0x47424264756F6C63 && a2 == 0xED0000726F6C6F43;
                                                                                                                                                                    if (v86 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                    {

                                                                                                                                                                      return 81;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v87 = a1 == 0xD000000000000012 && 0x80000001BCE867C0 == a2;
                                                                                                                                                                      if (v87 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                      {

                                                                                                                                                                        return 82;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v88 = a1 == 0xD000000000000010 && 0x80000001BCE867A0 == a2;
                                                                                                                                                                        if (v88 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                        {

                                                                                                                                                                          return 83;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v89 = a1 == 0x47424264756F6C63 && a2 == 0xED0000656C616353;
                                                                                                                                                                          if (v89 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                          {

                                                                                                                                                                            return 84;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v90 = a1 == 0x47424264756F6C63 && a2 == 0xEF5974657366664FLL;
                                                                                                                                                                            if (v90 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                            {

                                                                                                                                                                              return 85;
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v91 = a1 == 0x47424264756F6C63 && a2 == 0xEF5A74657366664FLL;
                                                                                                                                                                              if (v91 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                              {

                                                                                                                                                                                return 86;
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v92 = a1 == 0xD000000000000013 && 0x80000001BCE86780 == a2;
                                                                                                                                                                                if (v92 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                {

                                                                                                                                                                                  return 87;
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v93 = a1 == 0xD000000000000015 && 0x80000001BCE86760 == a2;
                                                                                                                                                                                  if (v93 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                  {

                                                                                                                                                                                    return 88;
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    v94 = a1 == 0xD000000000000014 && 0x80000001BCE86740 == a2;
                                                                                                                                                                                    if (v94 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                    {

                                                                                                                                                                                      return 89;
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      v95 = a1 == 0xD000000000000011 && 0x80000001BCE87B20 == a2;
                                                                                                                                                                                      if (v95 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                      {

                                                                                                                                                                                        return 90;
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v96 = a1 == 0x43474264756F6C63 && a2 == 0xEC000000726F6C6FLL;
                                                                                                                                                                                        if (v96 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                        {

                                                                                                                                                                                          return 91;
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          v97 = a1 == 0xD000000000000011 && 0x80000001BCE86720 == a2;
                                                                                                                                                                                          if (v97 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                          {

                                                                                                                                                                                            return 92;
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v98 = a1 == 0x56474264756F6C63 && a2 == 0xEF797469636F6C65;
                                                                                                                                                                                            if (v98 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                            {

                                                                                                                                                                                              return 93;
                                                                                                                                                                                            }

                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                              v99 = a1 == 0x53474264756F6C63 && a2 == 0xEC000000656C6163;
                                                                                                                                                                                              if (v99 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                              {

                                                                                                                                                                                                return 94;
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                v100 = a1 == 0x4F474264756F6C63 && a2 == 0xEE00597465736666;
                                                                                                                                                                                                if (v100 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                {

                                                                                                                                                                                                  return 95;
                                                                                                                                                                                                }

                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                  v101 = a1 == 0x4F474264756F6C63 && a2 == 0xEE005A7465736666;
                                                                                                                                                                                                  if (v101 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                  {

                                                                                                                                                                                                    return 96;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v102 = a1 == 0xD000000000000012 && 0x80000001BCE86700 == a2;
                                                                                                                                                                                                    if (v102 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                    {

                                                                                                                                                                                                      return 97;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v103 = a1 == 0xD000000000000014 && 0x80000001BCE866E0 == a2;
                                                                                                                                                                                                      if (v103 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                      {

                                                                                                                                                                                                        return 98;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v104 = a1 == 0xD000000000000013 && 0x80000001BCE866C0 == a2;
                                                                                                                                                                                                        if (v104 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                        {

                                                                                                                                                                                                          return 99;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v105 = a1 == 0xD000000000000010 && 0x80000001BCE87B40 == a2;
                                                                                                                                                                                                          if (v105 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                          {

                                                                                                                                                                                                            return 100;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v106 = a1 == 0x43474664756F6C63 && a2 == 0xEC000000726F6C6FLL;
                                                                                                                                                                                                            if (v106 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                            {

                                                                                                                                                                                                              return 101;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v107 = a1 == 0xD000000000000011 && 0x80000001BCE866A0 == a2;
                                                                                                                                                                                                              if (v107 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                              {

                                                                                                                                                                                                                return 102;
                                                                                                                                                                                                              }

                                                                                                                                                                                                              else
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v108 = a1 == 0x56474664756F6C63 && a2 == 0xEF797469636F6C65;
                                                                                                                                                                                                                if (v108 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                {

                                                                                                                                                                                                                  return 103;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v109 = a1 == 0x53474664756F6C63 && a2 == 0xEC000000656C6163;
                                                                                                                                                                                                                  if (v109 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                  {

                                                                                                                                                                                                                    return 104;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v110 = a1 == 0x4F474664756F6C63 && a2 == 0xEE00597465736666;
                                                                                                                                                                                                                    if (v110 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                    {

                                                                                                                                                                                                                      return 105;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v111 = a1 == 0x4F474664756F6C63 && a2 == 0xEE005A7465736666;
                                                                                                                                                                                                                      if (v111 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                      {

                                                                                                                                                                                                                        return 106;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      else
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v112 = a1 == 0xD000000000000012 && 0x80000001BCE86680 == a2;
                                                                                                                                                                                                                        if (v112 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                        {

                                                                                                                                                                                                                          return 107;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v113 = a1 == 0xD000000000000014 && 0x80000001BCE86660 == a2;
                                                                                                                                                                                                                          if (v113 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                          {

                                                                                                                                                                                                                            return 108;
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          else
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v114 = a1 == 0xD000000000000013 && 0x80000001BCE86640 == a2;
                                                                                                                                                                                                                            if (v114 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                            {

                                                                                                                                                                                                                              return 109;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v115 = a1 == 0xD000000000000010 && 0x80000001BCE87B60 == a2;
                                                                                                                                                                                                                              if (v115 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                return 110;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v116 = a1 == 0x47464664756F6C63 && a2 == 0xED0000726F6C6F43;
                                                                                                                                                                                                                                if (v116 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                  return 111;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v117 = a1 == 0xD000000000000012 && 0x80000001BCE86620 == a2;
                                                                                                                                                                                                                                  if (v117 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                    return 112;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v118 = a1 == 0xD000000000000010 && 0x80000001BCE86600 == a2;
                                                                                                                                                                                                                                    if (v118 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                      return 113;
                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v119 = a1 == 0x47464664756F6C63 && a2 == 0xED0000656C616353;
                                                                                                                                                                                                                                      if (v119 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                        return 114;
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v120 = a1 == 0x47464664756F6C63 && a2 == 0xEF5974657366664FLL;
                                                                                                                                                                                                                                        if (v120 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                          return 115;
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v121 = a1 == 0x47464664756F6C63 && a2 == 0xEF5A74657366664FLL;
                                                                                                                                                                                                                                          if (v121 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                            return 116;
                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            v122 = a1 == 0xD000000000000013 && 0x80000001BCE865E0 == a2;
                                                                                                                                                                                                                                            if (v122 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                              return 117;
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              v123 = a1 == 0xD000000000000015 && 0x80000001BCE865C0 == a2;
                                                                                                                                                                                                                                              if (v123 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                return 118;
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                v124 = a1 == 0xD000000000000014 && 0x80000001BCE865A0 == a2;
                                                                                                                                                                                                                                                if (v124 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                  return 119;
                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  v125 = a1 == 0xD000000000000011 && 0x80000001BCE87B80 == a2;
                                                                                                                                                                                                                                                  if (v125 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                    return 120;
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    v126 = a1 == 0xD000000000000011 && 0x80000001BCE86580 == a2;
                                                                                                                                                                                                                                                    if (v126 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                      return 121;
                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      v127 = a1 == 0xD000000000000016 && 0x80000001BCE86560 == a2;
                                                                                                                                                                                                                                                      if (v127 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                        return 122;
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        v128 = a1 == 0xD000000000000014 && 0x80000001BCE86540 == a2;
                                                                                                                                                                                                                                                        if (v128 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                          return 123;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          v129 = a1 == 0xD000000000000011 && 0x80000001BCE86520 == a2;
                                                                                                                                                                                                                                                          if (v129 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                            return 124;
                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            v130 = a1 == 0xD000000000000013 && 0x80000001BCE86500 == a2;
                                                                                                                                                                                                                                                            if (v130 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                              return 125;
                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              v131 = a1 == 0xD000000000000013 && 0x80000001BCE864E0 == a2;
                                                                                                                                                                                                                                                              if (v131 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                return 126;
                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                v132 = a1 == 0xD000000000000017 && 0x80000001BCE864C0 == a2;
                                                                                                                                                                                                                                                                if (v132 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                  return 127;
                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  v133 = a1 == 0xD000000000000015 && 0x80000001BCE87BA0 == a2;
                                                                                                                                                                                                                                                                  if (v133 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                    return 128;
                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    v134 = a1 == 0xD000000000000022 && 0x80000001BCE87BC0 == a2;
                                                                                                                                                                                                                                                                    if (v134 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                      return 129;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      v135 = a1 == 0xD000000000000017 && 0x80000001BCE864A0 == a2;
                                                                                                                                                                                                                                                                      if (v135 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                        return 130;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        v136 = a1 == 0xD000000000000023 && 0x80000001BCE86470 == a2;
                                                                                                                                                                                                                                                                        if (v136 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                          return 131;
                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          v137 = a1 == 0xD000000000000020 && 0x80000001BCE86440 == a2;
                                                                                                                                                                                                                                                                          if (v137 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                            return 132;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            v138 = a1 == 0xD000000000000019 && 0x80000001BCE86420 == a2;
                                                                                                                                                                                                                                                                            if (v138 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                                              return 133;
                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                              v139 = a1 == 0xD000000000000023 && 0x80000001BCE863F0 == a2;
                                                                                                                                                                                                                                                                              if (v139 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                                return 134;
                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                v140 = a1 == 0xD000000000000021 && 0x80000001BCE863C0 == a2;
                                                                                                                                                                                                                                                                                if (v140 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                                  return 135;
                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                  v141 = a1 == 0xD000000000000026 && 0x80000001BCE86390 == a2;
                                                                                                                                                                                                                                                                                  if (v141 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                                    return 136;
                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                    v142 = a1 == 0xD000000000000022 && 0x80000001BCE86360 == a2;
                                                                                                                                                                                                                                                                                    if (v142 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                                      return 137;
                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                      v143 = a1 == 0xD000000000000017 && 0x80000001BCE86340 == a2;
                                                                                                                                                                                                                                                                                      if (v143 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                                        return 138;
                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                        v144 = a1 == 0xD000000000000020 && 0x80000001BCE86310 == a2;
                                                                                                                                                                                                                                                                                        if (v144 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                                          return 139;
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          v145 = a1 == 0xD000000000000018 && 0x80000001BCE862F0 == a2;
                                                                                                                                                                                                                                                                                          if (v145 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                            return 140;
                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                            v146 = a1 == 0x6C6946746867696CLL && a2 == 0xEE00726F6C6F436CLL;
                                                                                                                                                                                                                                                                                            if (v146 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                                                              return 141;
                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                              v147 = a1 == 0x6E7553746867696CLL && a2 == 0xED0000726F6C6F43;
                                                                                                                                                                                                                                                                                              if (v147 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                                                return 142;
                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                v148 = a1 == 0xD000000000000011 && 0x80000001BCE86BA0 == a2;
                                                                                                                                                                                                                                                                                                if (v148 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                                                  return 143;
                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                  v149 = a1 == 0xD000000000000013 && 0x80000001BCE87BF0 == a2;
                                                                                                                                                                                                                                                                                                  if (v149 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                                                    return 144;
                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                    v150 = a1 == 0xD000000000000019 && 0x80000001BCE87C10 == a2;
                                                                                                                                                                                                                                                                                                    if (v150 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                                                      return 145;
                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                      v151 = a1 == 0x6C616353656D6974 && a2 == 0xE900000000000065;
                                                                                                                                                                                                                                                                                                      if (v151 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                                                        return 146;
                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                        v152 = a1 == 0x76656C456E6F6F6DLL && a2 == 0xED00006E6F697461;
                                                                                                                                                                                                                                                                                                        if (v152 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                                                          return 147;
                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                          v153 = a1 == 0x657369526E6F6F6DLL && a2 == 0xED00007465536F54;
                                                                                                                                                                                                                                                                                                          if (v153 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                                            return 148;
                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                            v154 = a1 == 0x6C676E416E6F6F6DLL && a2 == 0xE900000000000065;
                                                                                                                                                                                                                                                                                                            if (v154 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                                                                              return 149;
                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                              v155 = a1 == 0x6C6163536E6F6F6DLL && a2 == 0xEE0065676E615265;
                                                                                                                                                                                                                                                                                                              if (v155 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                                                                return 150;
                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                v156 = a1 == 0x6F6C6F436E6F6F6DLL && a2 == 0xE900000000000072;
                                                                                                                                                                                                                                                                                                                if (v156 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                                                                  return 151;
                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                  v157 = a1 == 0xD000000000000012 && 0x80000001BCE870A0 == a2;
                                                                                                                                                                                                                                                                                                                  if (v157 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                                                                    return 152;
                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                    v158 = a1 == 0x6867694C6E6F6F6DLL && a2 == 0xEF73756964615274;
                                                                                                                                                                                                                                                                                                                    if (v158 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                                                                      return 153;
                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                      v159 = a1 == 0x736168506E6F6F6DLL && a2 == 0xEE00656C676E4165;
                                                                                                                                                                                                                                                                                                                      if (v159 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                                                                        return 154;
                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                        v160 = a1 == 0x67616D496E6F6F6DLL && a2 == 0xED0000656D614E65;
                                                                                                                                                                                                                                                                                                                        if (v160 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                                                                          return 155;
                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                          v161 = a1 == 0xD000000000000012 && 0x80000001BCE87080 == a2;
                                                                                                                                                                                                                                                                                                                          if (v161 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                                                            return 156;
                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                            v162 = a1 == 0x6867694C6E6F6F6DLL && a2 == 0xEE00726F6C6F4374;
                                                                                                                                                                                                                                                                                                                            if (v162 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                                                                                              return 157;
                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                              v163 = a1 == 0xD000000000000011 && 0x80000001BCE87060 == a2;
                                                                                                                                                                                                                                                                                                                              if (v163 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                                                                                return 158;
                                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                v164 = a1 == 0x66694C6573696F6ELL && a2 == 0xE900000000000065;
                                                                                                                                                                                                                                                                                                                                if (v164 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                                                                                  return 159;
                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                  v165 = a1 == 0xD000000000000015 && 0x80000001BCE86B00 == a2;
                                                                                                                                                                                                                                                                                                                                  if (v165 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                                                                                    return 160;
                                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                    v166 = a1 == 0xD000000000000012 && 0x80000001BCE86AE0 == a2;
                                                                                                                                                                                                                                                                                                                                    if (v166 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                                                                                      return 161;
                                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                      v167 = a1 == 0xD000000000000016 && 0x80000001BCE87C30 == a2;
                                                                                                                                                                                                                                                                                                                                      if (v167 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                                                                                        return 162;
                                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                        v168 = a1 == 0xD000000000000015 && 0x80000001BCE86AC0 == a2;
                                                                                                                                                                                                                                                                                                                                        if (v168 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                                                                                          return 163;
                                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                          v169 = a1 == 0xD000000000000013 && 0x80000001BCE86AA0 == a2;
                                                                                                                                                                                                                                                                                                                                          if (v169 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                                                                            return 164;
                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                            v170 = a1 == 0xD000000000000012 && 0x80000001BCE86A80 == a2;
                                                                                                                                                                                                                                                                                                                                            if (v170 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                                                                                                              return 165;
                                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                              v171 = a1 == 0xD00000000000001CLL && 0x80000001BCE87C50 == a2;
                                                                                                                                                                                                                                                                                                                                              if (v171 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                                                                                                return 166;
                                                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                v172 = a1 == 0x7261504433657375 && a2 == 0xED000078616C6C61;
                                                                                                                                                                                                                                                                                                                                                if (v172 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                                                                                                  return 167;
                                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                  v173 = a1 == 0x73726579616CLL && a2 == 0xE600000000000000;
                                                                                                                                                                                                                                                                                                                                                  if (v173 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                                                                                                    return 168;
                                                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                    v174 = a1 == 0x6E696E746867696CLL && a2 == 0xEF6769666E6F4367;
                                                                                                                                                                                                                                                                                                                                                    if (v174 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                                                                                                      return 169;
                                                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                      v175 = a1 == 0x65666645657A6168 && a2 == 0xEA00000000007463;
                                                                                                                                                                                                                                                                                                                                                      if (v175 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                                                                                                        return 170;
                                                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                        v176 = a1 == 0xD000000000000011 && 0x80000001BCE87C70 == a2;
                                                                                                                                                                                                                                                                                                                                                        if (v176 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                                                                                                          return 171;
                                                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                          v177 = a1 == 0x656C676E416E7573 && a2 == 0xE800000000000000;
                                                                                                                                                                                                                                                                                                                                                          if (v177 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                                                                                            return 172;
                                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                            v178 = a1 == 0xD000000000000012 && 0x80000001BCE87C90 == a2;
                                                                                                                                                                                                                                                                                                                                                            if (v178 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                                                                                                                              return 173;
                                                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                              v179 = a1 == 0xD000000000000011 && 0x80000001BCE87CB0 == a2;
                                                                                                                                                                                                                                                                                                                                                              if (v179 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                                                                                                                return 174;
                                                                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                v180 = a1 == 0xD000000000000015 && 0x80000001BCE87CD0 == a2;
                                                                                                                                                                                                                                                                                                                                                                if (v180 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                                                                                                                  return 175;
                                                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                  v181 = a1 == 0x6E417961526E7573 && a2 == 0xEB00000000656C67;
                                                                                                                                                                                                                                                                                                                                                                  if (v181 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                                                                                                                    return 176;
                                                                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                    v182 = a1 == 0xD000000000000013 && 0x80000001BCE86B20 == a2;
                                                                                                                                                                                                                                                                                                                                                                    if (v182 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                                                                                                                      return 177;
                                                                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                      v183 = a1 == 0xD00000000000001ELL && 0x80000001BCE87CF0 == a2;
                                                                                                                                                                                                                                                                                                                                                                      if (v183 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                                                                                                                        return 178;
                                                                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                        v184 = a1 == 0xD000000000000013 && 0x80000001BCE86190 == a2;
                                                                                                                                                                                                                                                                                                                                                                        if (v184 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                                                                                                                          return 179;
                                                                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                          v185 = a1 == 0xD000000000000014 && 0x80000001BCE862D0 == a2;
                                                                                                                                                                                                                                                                                                                                                                          if (v185 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                                                                                                            return 180;
                                                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                            v186 = a1 == 0xD000000000000015 && 0x80000001BCE7A610 == a2;
                                                                                                                                                                                                                                                                                                                                                                            if (v186 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                                                                                                                                              return 181;
                                                                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                              v187 = a1 == 0xD000000000000015 && 0x80000001BCE7A630 == a2;
                                                                                                                                                                                                                                                                                                                                                                              if (v187 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                                                                                                                                return 182;
                                                                                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                v188 = a1 == 0xD000000000000018 && 0x80000001BCE862B0 == a2;
                                                                                                                                                                                                                                                                                                                                                                                if (v188 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                                                                                                                                  return 183;
                                                                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                  v189 = a1 == 0xD000000000000018 && 0x80000001BCE86290 == a2;
                                                                                                                                                                                                                                                                                                                                                                                  if (v189 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                                                                                                                                    return 184;
                                                                                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                    v190 = a1 == 0x4C736972496E7573 && a2 == 0xED00006874676E65;
                                                                                                                                                                                                                                                                                                                                                                                    if (v190 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                                                                                                                                      return 185;
                                                                                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                      v191 = a1 == 0xD000000000000014 && 0x80000001BCE7A5F0 == a2;
                                                                                                                                                                                                                                                                                                                                                                                      if (v191 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                                                                                                                                        return 186;
                                                                                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                        v192 = a1 == 0x4F736972496E7573 && a2 == 0xEE00797469636170;
                                                                                                                                                                                                                                                                                                                                                                                        if (v192 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                                                                                                                                          return 187;
                                                                                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                          v193 = a1 == 0x53736972496E7573 && a2 == 0xEB00000000657A69;
                                                                                                                                                                                                                                                                                                                                                                                          if (v193 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                                                                                                                            return 188;
                                                                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                            v194 = a1 == 0xD000000000000011 && 0x80000001BCE86270 == a2;
                                                                                                                                                                                                                                                                                                                                                                                            if (v194 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                                                                                                                                                              return 189;
                                                                                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                              v195 = a1 == 0xD000000000000011 && 0x80000001BCE86250 == a2;
                                                                                                                                                                                                                                                                                                                                                                                              if (v195 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                                                                                                                                                return 190;
                                                                                                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                v196 = a1 == 0xD000000000000011 && 0x80000001BCE86230 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                if (v196 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                                                                                                                                                  return 191;
                                                                                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                  v197 = a1 == 0xD00000000000001DLL && 0x80000001BCE86210 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                  if (v197 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                                                                                                                                                    return 192;
                                                                                                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                    v198 = a1 == 0xD00000000000001DLL && 0x80000001BCE861F0 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                    if (v198 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                                                                                                                                                      return 193;
                                                                                                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                      v199 = a1 == 0xD000000000000011 && 0x80000001BCE861D0 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                      if (v199 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                                                                                                                                                        return 194;
                                                                                                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                        v200 = a1 == 0x53737961526E7573 && a2 == 0xED00006461657270;
                                                                                                                                                                                                                                                                                                                                                                                                        if (v200 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                                                                                                                                                          return 195;
                                                                                                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                          v201 = a1 == 0x43737961526E7573 && a2 == 0xEC000000726F6C6FLL;
                                                                                                                                                                                                                                                                                                                                                                                                          if (v201 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                                                                                                                                            return 196;
                                                                                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                            v202 = a1 == 0xD000000000000014 && 0x80000001BCE861B0 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                            if (v202 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                                                                                                                                                                              return 197;
                                                                                                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                              v203 = a1 == 0x4C737961526E7573 && a2 == 0xED00006874676E65;
                                                                                                                                                                                                                                                                                                                                                                                                              if (v203 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                                                                                                                                                                return 198;
                                                                                                                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                v204 = a1 == 0x626E6961526E7573 && a2 == 0xEF656C616353776FLL;
                                                                                                                                                                                                                                                                                                                                                                                                                if (v204 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                                                                                                                                                                  return 199;
                                                                                                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                  v205 = a1 == 0xD000000000000011 && 0x80000001BCE86170 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                  if (v205 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                                                                                                                                                                    return 200;
                                                                                                                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                    v206 = a1 == 0xD000000000000018 && 0x80000001BCE7A5D0 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                    if (v206 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                                                                                                                                                                      return 201;
                                                                                                                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                      v207 = a1 == 0x53676E69776F6C62 && a2 == 0xEC00000064656570;
                                                                                                                                                                                                                                                                                                                                                                                                                      if (v207 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                                                                                                                                                                        return 202;
                                                                                                                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                        v208 = a1 == 0x41676E69776F6C62 && a2 == 0xED0000746E756F6DLL;
                                                                                                                                                                                                                                                                                                                                                                                                                        if (v208 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                                                                                                                                                                          return 203;
                                                                                                                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                          v209 = a1 == 0xD000000000000010 && 0x80000001BCE86C40 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                          if (v209 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                                                                                                                                                            return 204;
                                                                                                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                            v210 = a1 == 0xD000000000000011 && 0x80000001BCE86C20 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                            if (v210 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                                                                                                                                                                                              return 205;
                                                                                                                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                              v211 = a1 == 0x657A695372617473 && a2 == 0xE800000000000000;
                                                                                                                                                                                                                                                                                                                                                                                                                              if (v211 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                                                                                                                                                                                return 206;
                                                                                                                                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                v212 = a1 == 0x6769724272617473 && a2 == 0xEE00657A69537468;
                                                                                                                                                                                                                                                                                                                                                                                                                                if (v212 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                                                                                                                                                                                  return 207;
                                                                                                                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                  v213 = a1 == 0xD000000000000014 && 0x80000001BCE86130 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                  if (v213 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                                                                                                                                                                                    return 208;
                                                                                                                                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                    v214 = a1 == 0xD000000000000014 && 0x80000001BCE86110 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                    if (v214 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                                                                                                                                                                                      return 209;
                                                                                                                                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                      v215 = a1 == 0xD000000000000014 && 0x80000001BCE860F0 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                      if (v215 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                                                                                                                                                                                        return 210;
                                                                                                                                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                        v216 = a1 == 0xD000000000000014 && 0x80000001BCE860D0 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                        if (v216 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                                                                                                                                                                                          return 211;
                                                                                                                                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                          v217 = a1 == 0xD000000000000014 && 0x80000001BCE860B0 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                          if (v217 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                                                                                                                                                                            return 212;
                                                                                                                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                            v218 = a1 == 0xD000000000000014 && 0x80000001BCE86090 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                            if (v218 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                                                                                                                                                                                                              return 213;
                                                                                                                                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                              v219 = a1 == 0xD000000000000014 && 0x80000001BCE86070 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                              if (v219 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                                                                                                                                                                                                return 214;
                                                                                                                                                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                v220 = a1 == 0x6F6973696C6C6F63 && a2 == 0xED0000657A69536ELL;
                                                                                                                                                                                                                                                                                                                                                                                                                                                if (v220 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                                                                                                                                                                                                  return 215;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                  v221 = a1 == 0x6F6973696C6C6F63 && a2 == 0xED00006566694C6ELL;
                                                                                                                                                                                                                                                                                                                                                                                                                                                  if (v221 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                                                                                                                                                                                                    return 216;
                                                                                                                                                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                    v222 = a1 == 0xD000000000000011 && 0x80000001BCE86050 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                                    if (v222 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                                                                                                                                                                                                      return 217;
                                                                                                                                                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      v223 = a1 == 0xD000000000000010 && 0x80000001BCE86030 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if (v223 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                                                                                                                                                                                                        return 218;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                        v224 = a1 == 0xD000000000000019 && 0x80000001BCE86010 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                                        if (v224 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                                                                                                                                                                                                          return 219;
                                                                                                                                                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                          v225 = a1 == 0xD000000000000017 && 0x80000001BCE85FF0 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                                          if (v225 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                                                                                                                                                                                            return 220;
                                                                                                                                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            v226 = a1 == 0xD00000000000001ELL && 0x80000001BCE87D10 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if (v226 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                                                                                                                                                                                                                              return 221;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                              v227 = a1 == 0xD000000000000013 && 0x80000001BCE86860 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                                              if (v227 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                return 222;
                                                                                                                                                                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                v228 = a1 == 0x655665676E697266 && a2 == 0xEE00797469636F6CLL;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                if (v228 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                  return 223;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  v229 = a1 == 0x635365676E697266 && a2 == 0xEB00000000656C61;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if (v229 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                    return 224;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    v230 = a1 == 0xD000000000000012 && 0x80000001BCE86840 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if (v230 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                      return 225;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      v231 = a1 == 0xD000000000000014 && 0x80000001BCE86820 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if (v231 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                        return 226;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        v232 = a1 == 0xD000000000000014 && 0x80000001BCE86800 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if (v232 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                          return 227;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          v233 = a1 == 0x664F65676E697266 && a2 == 0xED00005974657366;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if (v233 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                            return 228;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            v234 = a1 == 0xD000000000000015 && 0x80000001BCE867E0 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if (v234 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                              return 229;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              v235 = a1 == 0x6F4365676E697266 && a2 == 0xEB00000000726F6CLL;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if (v235 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                return 230;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                v236 = a1 == 0x53736972496E7573 && a2 == 0xEB00000000646565;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if (v236 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  return 231;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  v237 = a1 == 0x47424264756F6C63 && a2 == 0xEC00000064656553;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if (v237 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    return 232;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    v238 = a1 == 0x53474264756F6C63 && a2 == 0xEB00000000646565;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if (v238 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      return 233;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      v239 = a1 == 0x53474664756F6C63 && a2 == 0xEB00000000646565;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if (v239 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        return 234;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        v240 = a1 == 0x47464664756F6C63 && a2 == 0xEC00000064656553;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if (v240 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          return 235;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          v241 = a1 == 0xD000000000000011 && 0x80000001BCE87D30 == a2;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if (v241 || (sub_1BCE1E090() & 1) != 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            return 236;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          else if (a1 == 0xD000000000000015 && 0x80000001BCE87D50 == a2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            return 237;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            v243 = sub_1BCE1E090();

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if (v243)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              return 4294967277;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              return 4294967278;
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
}