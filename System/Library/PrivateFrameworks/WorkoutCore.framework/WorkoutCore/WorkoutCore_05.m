uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C11_CLLocationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_16:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of Apple_Workout_Core_DateInterval(v14, v11, type metadata accessor for Apple_Workout_Core_CLLocation);
      outlined init with copy of Apple_Workout_Core_DateInterval(v15, v8, type metadata accessor for Apple_Workout_Core_CLLocation);
      if (*v11 != *v8 || v11[1] != v8[1] || v11[2] != v8[2] || v11[3] != v8[3] || v11[4] != v8[4] || v11[5] != v8[5])
      {
        break;
      }

      v17 = *(v4 + 40);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_CLLocation);
      outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_CLLocation);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_CLLocation);
    outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_CLLocation);
    goto LABEL_16;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            outlined copy of Data._Representation(v7, v6);
            outlined copy of Data._Representation(v9, v8);
            v22 = __DataStorage._bytes.getter();
            if (v22)
            {
              v23 = __DataStorage._offset.getter();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            MEMORY[0x20F2E42A0]();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            outlined copy of Data._Representation(v7, v6);
            outlined copy of Data._Representation(v9, v8);
            v27 = __DataStorage._bytes.getter();
            if (v27)
            {
              v28 = __DataStorage._offset.getter();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            MEMORY[0x20F2E42A0]();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            closure #1 in static Data.== infix(_:_:)(v24, v25, v26, v34);
            outlined consume of Data._Representation(v9, v8);
            outlined consume of Data._Representation(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
        }

        closure #1 in static Data.== infix(_:_:)(v34, v9, v8, &v33);
        outlined consume of Data._Representation(v9, v8);
        outlined consume of Data._Representation(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C15_RaceChartPointV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v30 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        outlined init with copy of Apple_Workout_Core_DateInterval(v14, v11, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
        outlined init with copy of Apple_Workout_Core_DateInterval(v15, v8, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
        v17 = v4[7];
        v18 = (v11 + v17);
        v19 = *(v11 + v17 + 8);
        v20 = (v8 + v17);
        v21 = *(v8 + v17 + 8);
        if (v19)
        {
          if (!v21)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (*v18 != *v20)
          {
            LOBYTE(v21) = 1;
          }

          if (v21)
          {
LABEL_23:
            outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
            outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
            goto LABEL_24;
          }
        }

        v22 = v4[8];
        v23 = (v11 + v22);
        v24 = *(v11 + v22 + 8);
        v25 = (v8 + v22);
        v26 = *(v8 + v22 + 8);
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (*v23 != *v25)
          {
            LOBYTE(v26) = 1;
          }

          if (v26)
          {
            goto LABEL_23;
          }
        }

        if (*v11 != *v8 || v11[1] != v8[1])
        {
          goto LABEL_23;
        }

        v27 = v4[6];
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
        outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
        if (v28)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }

    v28 = 1;
  }

  else
  {
LABEL_24:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B16ChartDataElementV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v30 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        outlined init with copy of Apple_Workout_Core_DateInterval(v14, v11, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
        outlined init with copy of Apple_Workout_Core_DateInterval(v15, v8, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
        v17 = v4[7];
        v18 = (v11 + v17);
        v19 = *(v11 + v17 + 8);
        v20 = (v8 + v17);
        v21 = *(v8 + v17 + 8);
        if (v19)
        {
          if (!v21)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (*v18 != *v20)
          {
            LOBYTE(v21) = 1;
          }

          if (v21)
          {
LABEL_23:
            outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
            outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
            goto LABEL_24;
          }
        }

        v22 = v4[8];
        v23 = (v11 + v22);
        v24 = *(v11 + v22 + 8);
        v25 = (v8 + v22);
        v26 = *(v8 + v22 + 8);
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (*v23 != *v25)
          {
            LOBYTE(v26) = 1;
          }

          if (v26)
          {
            goto LABEL_23;
          }
        }

        if (*v11 != *v8 || v11[1] != v8[1])
        {
          goto LABEL_23;
        }

        v27 = v4[6];
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
        outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
        if (v28)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }

    v28 = 1;
  }

  else
  {
LABEL_24:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C21_DataLinkMessageEntryV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v115 = type metadata accessor for Google_Protobuf_Timestamp();
  v112 = *(v115 - 8);
  v4 = *(v112 + 64);
  MEMORY[0x28223BE20](v115);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v89 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMR);
  v11 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v13 = &v89 - v12;
  v104 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v110 = *(v104 - 8);
  v14 = *(v110 + 64);
  MEMORY[0x28223BE20](v104);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v89 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMR);
  v21 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v111 = &v89 - v22;
  v113 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v109 = *(v113 - 8);
  v23 = *(v109 + 64);
  MEMORY[0x28223BE20](v113);
  v105 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v89 - v27;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMR);
  v29 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v31 = &v89 - v30;
  v114 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  v32 = *(*(v114 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v114);
  v108 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v107 = &v89 - v36;
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
LABEL_34:
    v85 = 0;
    return v85 & 1;
  }

  if (!v37 || a1 == a2)
  {
    v85 = 1;
    return v85 & 1;
  }

  v91 = v20;
  v90 = v16;
  v95 = v10;
  v93 = v6;
  v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v39 = a1 + v38;
  v40 = a2 + v38;
  v96 = (v110 + 48);
  v99 = (v112 + 48);
  v100 = (v109 + 48);
  v92 = (v112 + 32);
  v94 = (v112 + 8);
  v41 = *(v35 + 72);
  v97 = v28;
  v98 = v41;
  v42 = v13;
  v43 = v107;
  v44 = v108;
  v102 = v31;
  while (1)
  {
    v110 = v39;
    result = outlined init with copy of Apple_Workout_Core_DateInterval(v39, v43, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
    if (!v37)
    {
      break;
    }

    v109 = v37;
    v112 = v40;
    outlined init with copy of Apple_Workout_Core_DateInterval(v40, v44, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
    v46 = *(v114 + 20);
    v47 = *(v106 + 48);
    outlined init with copy of Apple_Workout_Core_Zone?(v43 + v46, v31, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
    outlined init with copy of Apple_Workout_Core_Zone?(v44 + v46, &v31[v47], &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
    v48 = *v100;
    v49 = v113;
    if ((*v100)(v31, 1, v113) == 1)
    {
      if (v48(&v31[v47], 1, v49) != 1)
      {
        goto LABEL_26;
      }

      outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v31, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
      v50 = v112;
    }

    else
    {
      v51 = v97;
      outlined init with copy of Apple_Workout_Core_Zone?(v31, v97, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
      if (v48(&v31[v47], 1, v49) == 1)
      {
        outlined destroy of Apple_Workout_Core_DateInterval(v51, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
        v44 = v108;
LABEL_26:
        v86 = &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMd;
        v87 = &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMR;
        v88 = v31;
        goto LABEL_29;
      }

      v52 = v105;
      outlined init with take of Apple_Workout_Core_Zone(&v31[v47], v105, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
      v53 = *(v101 + 48);
      v54 = v111;
      outlined init with copy of Apple_Workout_Core_Zone?(v51, v111, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
      outlined init with copy of Apple_Workout_Core_Zone?(v52, v54 + v53, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
      v55 = *v96;
      if ((*v96)(v54, 1, v104) == 1)
      {
        v56 = v51;
        v57 = v55(v111 + v53, 1, v104);
        v50 = v112;
        if (v57 != 1)
        {
          goto LABEL_31;
        }

        outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v111, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
        v58 = v102;
        v44 = v108;
      }

      else
      {
        v59 = v111;
        v60 = v91;
        outlined init with copy of Apple_Workout_Core_Zone?(v111, v91, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
        v61 = v55(v59 + v53, 1, v104);
        v50 = v112;
        if (v61 == 1)
        {
          outlined destroy of Apple_Workout_Core_DateInterval(v60, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
          v56 = v97;
LABEL_31:
          outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v111, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMR);
          v58 = v102;
          v44 = v108;
LABEL_32:
          outlined destroy of Apple_Workout_Core_DateInterval(v105, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
          outlined destroy of Apple_Workout_Core_DateInterval(v56, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
          outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v58, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
          v43 = v107;
          goto LABEL_33;
        }

        v62 = v42;
        v63 = v90;
        outlined init with take of Apple_Workout_Core_Zone(v59 + v53, v90, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
        v64 = static Apple_Workout_Core_DataLinkMessage.OneOf_Message.== infix(_:_:)(v60, v63);
        v65 = v63;
        v42 = v62;
        v66 = v108;
        outlined destroy of Apple_Workout_Core_DateInterval(v65, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
        v67 = v60;
        v44 = v66;
        outlined destroy of Apple_Workout_Core_DateInterval(v67, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
        outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v59, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
        v56 = v97;
        v58 = v102;
        if ((v64 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v68 = *(v113 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v69 = v105;
      v70 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_Core_DateInterval(v69, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
      outlined destroy of Apple_Workout_Core_DateInterval(v56, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
      outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v58, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
      v43 = v107;
      if ((v70 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v71 = *(v114 + 24);
    v72 = *(v103 + 48);
    outlined init with copy of Apple_Workout_Core_Zone?(v43 + v71, v42, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
    v73 = v44;
    outlined init with copy of Apple_Workout_Core_Zone?(v44 + v71, v42 + v72, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
    v74 = *v99;
    v75 = v42;
    v76 = v42;
    v77 = v115;
    if ((*v99)(v75, 1, v115) == 1)
    {
      v78 = v74(v76 + v72, 1, v77);
      v42 = v76;
      v44 = v73;
      if (v78 != 1)
      {
        goto LABEL_28;
      }

      outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v42, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
      v31 = v102;
    }

    else
    {
      v79 = v95;
      outlined init with copy of Apple_Workout_Core_Zone?(v76, v95, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
      if (v74(v76 + v72, 1, v77) == 1)
      {
        (*v94)(v79, v77);
        v42 = v76;
        v44 = v108;
LABEL_28:
        v86 = &_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMd;
        v87 = &_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMR;
        v88 = v42;
LABEL_29:
        outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v88, v86, v87);
LABEL_33:
        outlined destroy of Apple_Workout_Core_DateInterval(v44, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
        outlined destroy of Apple_Workout_Core_DateInterval(v43, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
        goto LABEL_34;
      }

      v80 = v93;
      (*v92)(v93, v76 + v72, v115);
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Google_Protobuf_Timestamp and conformance Google_Protobuf_Timestamp, MEMORY[0x277D21570]);
      v81 = dispatch thunk of static Equatable.== infix(_:_:)();
      v82 = *v94;
      v83 = v80;
      v43 = v107;
      v84 = v115;
      (*v94)(v83, v115);
      v82(v79, v84);
      outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v76, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
      v42 = v76;
      v44 = v108;
      v31 = v102;
      if ((v81 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v85 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_DateInterval(v44, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
    outlined destroy of Apple_Workout_Core_DateInterval(v43, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
    if (v85)
    {
      v37 = v109 - 1;
      v40 = v50 + v98;
      v39 = v110 + v98;
      if (v109 != 1)
      {
        continue;
      }
    }

    return v85 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C17_CyclingPowerZoneV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v41 - v11);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
  v13 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v41 - v14;
  v50 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  v15 = *(*(v50 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v50);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v41 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_27:
    v37 = 0;
    return v37 & 1;
  }

  if (v22 && a1 != a2)
  {
    v45 = v18;
    v46 = v4;
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v42 = *(v19 + 72);
    v43 = (v5 + 48);
    v44 = (&v41 - v20);
    v41 = v8;
    while (1)
    {
      outlined init with copy of Apple_Workout_Core_DateInterval(v24, v21, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
      outlined init with copy of Apple_Workout_Core_DateInterval(v25, v18, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
      if (*v21 != *v18 || v21[1] != v18[1])
      {
        break;
      }

      v47 = v24;
      v26 = v49;
      v27 = *(v50 + 28);
      v28 = v21;
      v29 = *(v48 + 48);
      outlined init with copy of Apple_Workout_Core_Zone?(v28 + v27, v49, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      outlined init with copy of Apple_Workout_Core_Zone?(v18 + v27, v26 + v29, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      v30 = *v43;
      v31 = v46;
      if ((*v43)(v26, 1, v46) == 1)
      {
        v32 = v30(v26 + v29, 1, v31);
        v21 = v44;
        v18 = v45;
        if (v32 != 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        outlined init with copy of Apple_Workout_Core_Zone?(v26, v12, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
        if (v30(v26 + v29, 1, v31) == 1)
        {
          outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_Zone);
          v21 = v44;
          v18 = v45;
LABEL_24:
          v38 = &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd;
          v39 = &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR;
          goto LABEL_25;
        }

        v33 = v41;
        outlined init with take of Apple_Workout_Core_Zone(v26 + v29, v41, type metadata accessor for Apple_Workout_Core_Zone);
        if (*v12 != *v33 || v12[1] != *(v33 + 8) || *(v12 + 4) != *(v33 + 16) || *(v12 + 5) != *(v33 + 20))
        {
          outlined destroy of Apple_Workout_Core_DateInterval(v33, type metadata accessor for Apple_Workout_Core_Zone);
          v21 = v44;
          v18 = v45;
LABEL_22:
          outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_Zone);
          v38 = &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd;
          v39 = &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR;
LABEL_25:
          outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v26, v38, v39);
          break;
        }

        v34 = *(v46 + 32);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v26 = v49;
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_DateInterval(v33, type metadata accessor for Apple_Workout_Core_Zone);
        v21 = v44;
        v18 = v45;
        if ((v35 & 1) == 0)
        {
          goto LABEL_22;
        }

        outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_Zone);
      }

      outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v26, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      v36 = *(v50 + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_Core_DateInterval(v18, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
      outlined destroy of Apple_Workout_Core_DateInterval(v21, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
      if (v37)
      {
        v25 += v42;
        v24 = v47 + v42;
        if (--v22)
        {
          continue;
        }
      }

      return v37 & 1;
    }

    outlined destroy of Apple_Workout_Core_DateInterval(v18, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
    outlined destroy of Apple_Workout_Core_DateInterval(v21, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
    goto LABEL_27;
  }

  v37 = 1;
  return v37 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C14_MetricPlatterV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v28 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_51:
    v27 = 0;
    return v27 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v27 = 1;
    return v27 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(v9 + 72);
  while (1)
  {
    result = outlined init with copy of Apple_Workout_Core_DateInterval(v15 + v17 * v13, v11, type metadata accessor for Apple_Workout_Core_MetricPlatter);
    if (v13 == v12)
    {
      break;
    }

    outlined init with copy of Apple_Workout_Core_DateInterval(v16 + v17 * v13, v8, type metadata accessor for Apple_Workout_Core_MetricPlatter);
    v19 = *v11;
    v20 = *v8;
    if (v8[8] == 1)
    {
      switch(v20)
      {
        case 1:
          if (v19 != 1)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 2:
          if (v19 != 2)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 3:
          if (v19 != 3)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 4:
          if (v19 != 4)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 5:
          if (v19 != 5)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 6:
          if (v19 != 6)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 7:
          if (v19 != 7)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 8:
          if (v19 != 8)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 9:
          if (v19 != 9)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 10:
          if (v19 != 10)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 11:
          if (v19 != 11)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 12:
          if (v19 != 12)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 13:
          if (v19 != 13)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 14:
          if (v19 != 14)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 15:
          if (v19 != 15)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        default:
          if (v19)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
      }
    }

    if (v19 != v20)
    {
      goto LABEL_50;
    }

LABEL_11:
    if (v11[9] != v8[9])
    {
      goto LABEL_50;
    }

    v21 = *(v11 + 2);
    v22 = *(v8 + 2);
    v23 = *(v21 + 16);
    if (v23 != *(v22 + 16))
    {
      goto LABEL_50;
    }

    if (v23 && v21 != v22)
    {
      v24 = (v21 + 32);
      v25 = (v22 + 32);
      while (*v24 == *v25)
      {
        ++v24;
        ++v25;
        if (!--v23)
        {
          goto LABEL_18;
        }
      }

LABEL_50:
      outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_MetricPlatter);
      outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_MetricPlatter);
      goto LABEL_51;
    }

LABEL_18:
    v26 = *(v4 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_MetricPlatter);
    outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_MetricPlatter);
    if ((v27 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v27 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B16NotificationUnitV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v19 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        outlined init with copy of Apple_Workout_Core_DateInterval(v14, v11, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);
        outlined init with copy of Apple_Workout_Core_DateInterval(v15, v8, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);
        v17 = specialized static Apple_Workout_Core_WorkoutNotificationUnit.== infix(_:_:)(v11, v8);
        outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);
        outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C18_PublisherSequenceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v20 = 1;
      return v20 & 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of Apple_Workout_Core_DateInterval(v14, v11, type metadata accessor for Apple_Workout_Core_PublisherSequence);
      outlined init with copy of Apple_Workout_Core_DateInterval(v15, v8, type metadata accessor for Apple_Workout_Core_PublisherSequence);
      v17 = *v11;
      v18 = *v8;
      if (v8[8] == 1)
      {
        switch(v18)
        {
          case 1:
            if (v17 != 1)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 2:
            if (v17 != 2)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 3:
            if (v17 != 3)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 4:
            if (v17 != 4)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 5:
            if (v17 != 5)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 6:
            if (v17 != 6)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 7:
            if (v17 != 7)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 8:
            if (v17 != 8)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 9:
            if (v17 != 9)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 10:
            if (v17 != 10)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 11:
            if (v17 != 11)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 12:
            if (v17 != 12)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 13:
            if (v17 != 13)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 14:
            if (v17 != 14)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 15:
            if (v17 != 15)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 16:
            if (v17 != 16)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 17:
            if (v17 != 17)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 18:
            if (v17 != 18)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          default:
            if (v17)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
        }
      }

      if (v17 != v18)
      {
        break;
      }

LABEL_10:
      if (*(v11 + 3) != *(v8 + 3))
      {
        break;
      }

      v19 = *(v4 + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_PublisherSequence);
      outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_PublisherSequence);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_49:
    outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_PublisherSequence);
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C9_LiveZoneV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v40 - v11);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
  v13 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v15 = &v40 - v14;
  v49 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  v16 = *(*(v49 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v49);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v22 = (&v40 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_24;
  }

  if (!v23 || a1 == a2)
  {
    v36 = 1;
    return v36 & 1;
  }

  v45 = (&v40 - v21);
  v46 = v4;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v43 = v19;
  v44 = (v5 + 48);
  v41 = *(v20 + 72);
  v42 = v15;
  v40 = v8;
  while (1)
  {
    outlined init with copy of Apple_Workout_Core_DateInterval(v25, v22, type metadata accessor for Apple_Workout_Core_LiveZone);
    outlined init with copy of Apple_Workout_Core_DateInterval(v26, v19, type metadata accessor for Apple_Workout_Core_LiveZone);
    if (*v22 != *v19)
    {
      goto LABEL_20;
    }

    v48 = v25;
    v27 = *(v49 + 24);
    v28 = *(v47 + 48);
    v29 = v42;
    outlined init with copy of Apple_Workout_Core_Zone?(v22 + v27, v42, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    outlined init with copy of Apple_Workout_Core_Zone?(v19 + v27, v29 + v28, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    v30 = *v44;
    v31 = v46;
    if ((*v44)(v29, 1, v46) == 1)
    {
      break;
    }

    outlined init with copy of Apple_Workout_Core_Zone?(v29, v12, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    if (v30(v29 + v28, 1, v31) == 1)
    {
      outlined destroy of Apple_Workout_Core_DateInterval(v43, type metadata accessor for Apple_Workout_Core_LiveZone);
      outlined destroy of Apple_Workout_Core_DateInterval(v45, type metadata accessor for Apple_Workout_Core_LiveZone);
      v37 = type metadata accessor for Apple_Workout_Core_Zone;
      v38 = v12;
      goto LABEL_23;
    }

    v32 = v40;
    outlined init with take of Apple_Workout_Core_Zone(v29 + v28, v40, type metadata accessor for Apple_Workout_Core_Zone);
    v19 = v43;
    if (*v12 != *v32 || v12[1] != *(v32 + 8) || *(v12 + 4) != *(v32 + 16) || *(v12 + 5) != *(v32 + 20))
    {
      outlined destroy of Apple_Workout_Core_DateInterval(v32, type metadata accessor for Apple_Workout_Core_Zone);
      outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_Zone);
      outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v29, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      v22 = v45;
LABEL_20:
      outlined destroy of Apple_Workout_Core_DateInterval(v19, type metadata accessor for Apple_Workout_Core_LiveZone);
      outlined destroy of Apple_Workout_Core_DateInterval(v22, type metadata accessor for Apple_Workout_Core_LiveZone);
      goto LABEL_24;
    }

    v33 = *(v46 + 32);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_DateInterval(v32, type metadata accessor for Apple_Workout_Core_Zone);
    outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_Zone);
    outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v29, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    v22 = v45;
    if ((v34 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_15:
    v35 = *(v49 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_DateInterval(v19, type metadata accessor for Apple_Workout_Core_LiveZone);
    outlined destroy of Apple_Workout_Core_DateInterval(v22, type metadata accessor for Apple_Workout_Core_LiveZone);
    if (v36)
    {
      v26 += v41;
      v25 = v48 + v41;
      if (--v23)
      {
        continue;
      }
    }

    return v36 & 1;
  }

  if (v30(v29 + v28, 1, v31) == 1)
  {
    outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v29, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    v22 = v45;
    v19 = v43;
    goto LABEL_15;
  }

  outlined destroy of Apple_Workout_Core_DateInterval(v43, type metadata accessor for Apple_Workout_Core_LiveZone);
  v38 = v45;
  v37 = type metadata accessor for Apple_Workout_Core_LiveZone;
LABEL_23:
  outlined destroy of Apple_Workout_Core_DateInterval(v38, v37);
  outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v29, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
LABEL_24:
  v36 = 0;
  return v36 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore0B16NotificationUnitC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F2E7A20](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = MEMORY[0x20F2E7A20](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = specialized static WorkoutNotificationUnit.== infix(_:_:)(v4, v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore0B6DeviceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    if (a1 != a2)
    {
      v4 = 0;
      v19 = a1;
      while (1)
      {
        v5 = *(a1 + v4 + 48);
        v6 = *(a1 + v4 + 56);
        v28 = *(a1 + v4 + 64);
        v7 = *(a1 + v4 + 72);
        v27 = *(a1 + v4 + 80);
        v22 = *(a1 + v4 + 96);
        v23 = *(a1 + v4 + 104);
        v8 = v3 + v4;
        v9 = *(v3 + v4 + 32);
        v10 = *(v3 + v4 + 40);
        v11 = *(v3 + v4 + 48);
        v12 = *(v8 + 56);
        v13 = *(v8 + 64);
        v14 = *(v8 + 72);
        v15 = *(v8 + 80);
        v25 = *(v8 + 88);
        v26 = *(a1 + v4 + 88);
        v21 = *(v8 + 96);
        v24 = *(v8 + 104);
        if ((*(a1 + v4 + 32) != v9 || *(a1 + v4 + 40) != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        if (v5 == v11 && v6 == v12)
        {
          if (v28 != v13)
          {
            return 0;
          }
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = 0;
          if ((v16 & 1) == 0 || v28 != v13)
          {
            return result;
          }
        }

        if (v7 == v14 && v27 == v15)
        {
          if (v26 != v25)
          {
            return 0;
          }
        }

        else
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = 0;
          if (v18 & 1) == 0 || ((v26 ^ v25))
          {
            return result;
          }
        }

        if (v23)
        {
          v3 = a2;
          if (!v24 || (v22 != v21 || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v3 = a2;
          if (v24)
          {
            return 0;
          }
        }

        v4 += 80;
        --v2;
        a1 = v19;
        if (!v2)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C11_TargetZoneV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_TargetZone(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v20 = 1;
      return v20 & 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of Apple_Workout_Core_DateInterval(v14, v11, type metadata accessor for Apple_Workout_Core_TargetZone);
      outlined init with copy of Apple_Workout_Core_DateInterval(v15, v8, type metadata accessor for Apple_Workout_Core_TargetZone);
      v17 = *v11;
      v18 = *v8;
      if (*(v8 + 8) == 1)
      {
        if (v18 > 3)
        {
          if (v18 > 5)
          {
            if (v18 == 6)
            {
              if (v17 != 6)
              {
                break;
              }
            }

            else if (v17 != 7)
            {
              break;
            }
          }

          else if (v18 == 4)
          {
            if (v17 != 4)
            {
              break;
            }
          }

          else if (v17 != 5)
          {
            break;
          }
        }

        else if (v18 > 1)
        {
          if (v18 == 2)
          {
            if (v17 != 2)
            {
              break;
            }
          }

          else if (v17 != 3)
          {
            break;
          }
        }

        else if (v18)
        {
          if (v17 != 1)
          {
            break;
          }
        }

        else if (v17)
        {
          break;
        }
      }

      else if (v17 != v18)
      {
        break;
      }

      if (v11[2] != v8[2] || v11[3] != v8[3] || *(v11 + 32) != *(v8 + 32))
      {
        break;
      }

      v19 = *(v4 + 32);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_TargetZone);
      outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_TargetZone);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_TargetZone);
    outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_TargetZone);
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore0B13ConfigurationC_Tt1g5Tm(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x20F2E7A20](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x20F2E7A20](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = __CocoaSet.count.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = __CocoaSet.count.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C13_DateIntervalV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_DateInterval(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_12:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of Apple_Workout_Core_DateInterval(v14, v11, type metadata accessor for Apple_Workout_Core_DateInterval);
      outlined init with copy of Apple_Workout_Core_DateInterval(v15, v8, type metadata accessor for Apple_Workout_Core_DateInterval);
      if (*v11 != *v8 || v11[1] != v8[1])
      {
        break;
      }

      v17 = *(v4 + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_DateInterval);
      outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_DateInterval);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_DateInterval);
    outlined destroy of Apple_Workout_Core_DateInterval(v11, type metadata accessor for Apple_Workout_Core_DateInterval);
    goto LABEL_12;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B14StatePublisherV0B12PausedReasonO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t Apple_Workout_Core_MetricPlatterType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x10;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_Core_MetricPlatterType@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Workout_Core_MetricPlatterType.rawValue.getter();
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_MetricPlatterType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MetricPlatterType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_MetricPlatterType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void Apple_Workout_Core_MetricPlatter.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_MetricPlatter.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Workout_Core_MetricPlatter.metrics.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Workout_Core_MetricPlatter.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MetricPlatter(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_MetricPlatter.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MetricPlatter(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_MetricPlatter.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_MetricPlatter(0) + 28);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_PlatterPublisher.metricPlatters.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Workout_Core_PlatterPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PlatterPublisher(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_PlatterPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PlatterPublisher(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_PlatterPublisher.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_PlatterPublisher(0) + 20);
  return UnknownStorage.init()();
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MetricPlatterType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MetricPlatterType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20B426280;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 0;
  *v5 = "STANDARD";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "STANDARD_SECOND";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "INTERVAL";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "PACER";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "RACE";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "SEGMENT";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ACTIVITY_RINGS";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "VIDEO";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "SPLIT";
  *(v22 + 8) = 5;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "HEART_RATE_ZONES";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "MULTISPORT";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "POWER";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "POWER_ZONES";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ELEVATION";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SPEEDOMETER";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "INTERVAL_SECOND";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MetricPlatter._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MetricPlatter._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "include";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "metrics";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PlatterPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PlatterPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A90;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "metricPlatters";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WaterTemperatureMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WaterTemperatureMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "currentWaterTemperature";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currentWaterTemperatureStale";
  *(v10 + 1) = 28;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "averageWaterTemperature";
  *(v11 + 8) = 23;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_TrackRunningMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_TrackRunningMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "trackInfo";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trackRunningCoordinator";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_HKQuantity._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_HKQuantity._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "unit";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutChartDataElement._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutChartDataElement._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dateSinceReference_deprecated";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value_deprecated";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "i_secondsSinceReference";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "i_value";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RaceFilter._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RaceFilter._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LAST";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BEST";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RaceInformationPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RaceInformationPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v6 = "routePoints";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 9;
  *v10 = "raceFilter";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "lastWorkoutDuration";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 11;
  *v14 = "bestWorkoutDuration";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RaceChartPoint._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RaceChartPoint._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "odometer_m_deprecated";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "altitude_m_deprecated";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "odometer_m";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "altitude_cm";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_Activity._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_Activity._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423940;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "auxiliaryIdentifier";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isIndoor";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isPartOfMultisport";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "metadata";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_ActivityMetadataValue._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_ActivityMetadataValue._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "stringValue";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "quantityValue";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "doubleValue";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dateValue";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_GoalType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_GoalType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "OPEN";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TIME";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DISTANCE";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ENERGY";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_Goal._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_Goal._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "requiredDistance";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_GoalPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_GoalPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "goal";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "progress";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RacePositionState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RacePositionState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20B423920;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "NOT_YET_ON_ROUTE";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "ON_ROUTE_AHEAD";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ON_ROUTE_BEHIND";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "OFF_ROUTE";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "COMPLETED";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "UNKNOWN";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "EXPIRED";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RacePositionStatePublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RacePositionStatePublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20B423920;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "racePositionState";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "racePosition";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "positionOnRoute";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "ghostPositionOnRoute";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "secondsAheadOfGhost";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "remainingRouteDistance";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "raceFinishTime";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RacePosition._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RacePosition._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20B423930;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "notYetOnRoute";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "onRoute";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "offRoute";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "completed";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "unknown";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "expired";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RacePositionOnRoute._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RacePositionOnRoute._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timeAhead";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "distanceAhead";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredHostStartSource._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredHostStartSource._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MIRRORED_HOST_START_SOURCE_HEAD_UP_DISPLAY";
  *(v6 + 8) = 42;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MIRRORED_HOST_START_SOURCE_MIRRORED_START";
  *(v10 + 1) = 41;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredBlobContentType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredBlobContentType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MIRRORED_BLOB_CONTENT_TYPE_PROTOBUF";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MIRRORED_BLOB_CONTENT_TYPE_NSKEYEDARCHIVER";
  *(v10 + 8) = 42;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MIRRORED_BLOB_CONTENT_TYPE_RACE_CODABLE";
  *(v12 + 1) = 39;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MIRRORED_BLOB_CONTENT_TYPE_INTERVAL_CODABLE";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredHostCommand._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredHostCommand._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MIRRORED_HOST_DELEGATE_READY";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MIRRORED_HOST_SAFETY_CHECK_IN_REQUEST";
  *(v10 + 1) = 37;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 100;
  *v11 = "PING_REQUEST";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredClientCommand._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredClientCommand._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MIRRORED_CLIENT_DELEGATE_READY";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MIRRORED_CLIENT_SAFETY_CHECK_IN_RESPONSE";
  *(v10 + 1) = 40;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 100;
  *v11 = "PING_RESPONSE";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredHostMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredHostMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mirroredHostCommand";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mirroredHostStartConfiguration";
  *(v10 + 8) = 30;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "mirroredHostMachTimestampRequest";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "mirroredHostCountdownStart";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "mirroredHostAlertStackRequest";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "mirroredHostSummaryUpdate";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredClientMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredClientMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mirroredClientCommand";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "mirroredClientMachTimestampResponse";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "mirroredClientPrecisionStart";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "mirroredClientAlertStackResponse";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredClientMachTimestampResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredClientMachTimestampResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hostMachTimestamp";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientMachTimestamp";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredHostCountdownStart._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredHostCountdownStart._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hostMachDelay";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientMachTimestamp";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredBlob._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredBlob._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contentType";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredHostStartConfiguration._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredHostStartConfiguration._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "startSource";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "usePrecisionStart";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "workoutConfigurationBlob";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "protocolVersion";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredHostAlertStackRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredHostAlertStackRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "alertTitle";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "alertMessage";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "continueOptionTitles";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredClientAlertStackResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredClientAlertStackResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "continueExecution";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "continueOption";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_LiveZones._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_LiveZones._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zones";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currentZoneIndex";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "isStale";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_LiveZone._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_LiveZone._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "elapsedTimeInZone";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_DataLinkMessageBatch._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_DataLinkMessageBatch._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A90;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "entries";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_DataLinkMessageEntry._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_DataLinkMessageEntry._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "message";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ts";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_HeartRateCurrentValueType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_HeartRateCurrentValueType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MOST_RECENT";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AVERAGE";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_HeartRateMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_HeartRateMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20B423930;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "currentHeartRate";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "currentHeartRateValueType";
  *(v8 + 8) = 25;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "averageHeartRate";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "maximumHeartRate";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "isStaleHeartRate";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "liveHeartRateZones";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RunningTrackProximity._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RunningTrackProximity._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ON";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "POSSIBLY_ON";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NEAR";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NOT_ON";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RunningTrackInfo._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RunningTrackInfo._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "location";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "proximity";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "laneNumber";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "lapNumber";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "laneCount";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "trackId";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_Command._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_Command._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20B43DE00;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "RESUME";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v24 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PAUSE";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v24 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "END";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v24 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MARK_SEGMENT";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v24 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "END_MIRRORING";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v24 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "NEXT_INTERVAL";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v24 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "NEXT_LEG";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v24 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "MUTE";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v24 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "UNMUTE";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PublisherKey._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PublisherKey._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20B43DE10;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "INVALID";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "TOP_LEVEL_PUBLISHER";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ACTIVITY_SUMMARY_PUBLISHER";
  *(v11 + 1) = 26;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ELAPSED_TIME_PUBLISHER";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ENERGY_PUBLISHER";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "HEART_RATE_PUBLISHER";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "INTERVALS_PUBLISHER";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "LAPS_PUBLISHER";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "MULTISPORT_PUBLISHER";
  *(v22 + 8) = 20;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "PLATTER_PUBLISHER";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "POWER_PUBLISHER";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "RACE_PUBLISHER";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "RACE_POSITION_PUBLISHER";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "TRACK_RUNNING_PUBLISHER";
  *(v32 + 1) = 23;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "WORKOUT_STATE_PUBLISHER";
  *(v34 + 1) = 23;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "GOAL_PUBLISHER";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "LOCATION_POSITION_PUBLISHER";
  *(v37 + 8) = 27;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "WATER_TEMPERATURE_PUBLISHER";
  *(v39 + 1) = 27;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "WORKOUT_BUDDY_STATE_PUBLISHER";
  *(v41 + 1) = 29;
  v41[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_NotificationType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_NotificationType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4238A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NOTIFICATION_INTERVAL";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NOTIFICATION_INTERVAL_WITH_RESULT";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NOTIFICATION_MILESTONE";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NOTIFICATION_PACER_COMPLETE";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NOTIFICATION_RACE_COMPLETE";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "NOTIFICATION_STANDARD";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "NOTIFICATION_ZONE";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "NOTIFICATION_TRANSCRIPT";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_NotificationUnitType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_NotificationUnitType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_20B43DE20;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 0;
  *v5 = "UNIT_TYPE_CADENCE";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "UNIT_TYPE_DISTANCE";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "UNIT_TYPE_ENERGY";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "UNIT_TYPE_HEADING";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "UNIT_TYPE_HEART_RATE";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "UNIT_TYPE_IMAGE";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "UNIT_TYPE_PACE";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "UNIT_TYPE_PACE_WITHOUT_GPS";
  *(v21 + 1) = 26;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "UNIT_TYPE_POWER";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "UNIT_TYPE_RACE_TIME";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "UNIT_TYPE_SPLIT";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "UNIT_TYPE_STRING";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "UNIT_TYPE_TIME";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "UNIT_TYPE_AVERAGE_CADENCE";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "UNIT_TYPE_AVERAGE_PACE";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "UNIT_TYPE_AVERAGE_POWER";
  *(v36 + 1) = 23;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "UNIT_TYPE_ROLLING_PACE";
  *(v37 + 8) = 22;
  *(v37 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_DataLinkMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_DataLinkMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423920;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "publisherUpdate";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "notificationUpdate";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "command";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deltaUpdate";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "sequenceReset";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "mirroredHostMessage";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "mirroredClientMessage";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MetricsDelta._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MetricsDelta._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sequences";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deltaPublisher";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PublisherSequence._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PublisherSequence._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sequence";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_SequenceReset._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_SequenceReset._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A90;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "sequences";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_NotificationUpdate._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_NotificationUpdate._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "notification";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "publisherUpdate";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutNotification._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutNotification._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "notificationType";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "units";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayDuration";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "createdAtSinceReferenceDate";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutNotificationUnit._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutNotificationUnit._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20B423940;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "key";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "value";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "activityType";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "stringLiteral";
  *(v14 + 8) = 13;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_StepType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_StepType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "WARM_UP";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "COOL_DOWN";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WORK";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "REST";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_ZoneType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_ZoneType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20B4238A0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "ROLLING_PACE";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "AVERAGE_PACE";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "INSTANTANEOUS_PACE";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "INSTANTANEOUS_CADENCE";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "AVERAGE_CADENCE";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "INSTANTANEOUS_POWER";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "AVERAGE_POWER";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "NONE";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_HeartRateZoneType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_HeartRateZoneType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AUTOMATIC";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CUSTOM";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "OFF";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_IntervalsMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_IntervalsMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20B426280;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "progress";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "thisStep";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "nextStep";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "distance";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "averagePace";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "currentPace";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "averagePower";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "currentPower";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "averageCadence";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "currentCadence";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "totalTime";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "startDateSinceReferenceDate";
  *(v28 + 1) = 27;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "activeEnergy";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "currentStepIndex";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "totalStepCount";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "distanceGoalAchievedDuration";
  *(v36 + 1) = 28;
  v36[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutStep._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutStep._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20B43F110;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "goal";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "targetZones";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "activity";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "uuid";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "hrTargetZone";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "powerTargetZone";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "displayName";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "version";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "optionalHrTargetZone";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "optionalPowerTargetZone";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_TargetZone._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_TargetZone._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "min";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "max";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "enabled";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_HeartRateTargetZone._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_HeartRateTargetZone._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lowerBound";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "upperBound";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "defaultZoneIndex";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PowerZonesAlertTargetZone._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PowerZonesAlertTargetZone._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "target";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "automatic";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "custom";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PowerZoneTarget._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PowerZoneTarget._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PowerZoneAutomatic._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PowerZoneAutomatic._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zoneIndex";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zones";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_CyclingPowerZone._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_CyclingPowerZone._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "percentageZoneLower";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "percentageZoneUpper";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "zone";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PowerZoneCustom._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PowerZoneCustom._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rangeLower";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rangeUpper";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_TrackRunningCoordinator._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_TrackRunningCoordinator._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A90;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v5 = "trackModeEnabledMirrored";
  *(v5 + 8) = 24;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PowerMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PowerMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20B423920;
  v4 = v21 + v3;
  v5 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v5 = "isFaked";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "currentPower";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "averagePower";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "thirtySecondAveragePower";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "powerMeanDistributionByTime";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "powerChartData";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "livePowerZones";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_ElapsedTimeMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_ElapsedTimeMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A90;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "elapsedTime";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_LapsMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_LapsMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A90;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "laps";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_LocationPositionPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_LocationPositionPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "locations";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "routePoints";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "routePosition";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutBuddyStatePublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutBuddyStatePublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "supportsWorkoutBuddy";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "state";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20B423930;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "LOADING";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "TALKING";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CONNECTED";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "DISCONNECTED";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "MUTED";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "NOT_AVAILABLE";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_ConfigurationType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_ConfigurationType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423940;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GOAL_CONFIG";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INTERVAL_CONFIG";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RACE_CONFIG";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PACER_CONFIG";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "MULTISPORT_CONFIG";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_20B449A90;
  v4 = v127 + v3;
  v5 = v127 + v3 + v1[14];
  *(v127 + v3) = 1;
  *v5 = "isFaked";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v127 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "workoutIdentifier_deprecated";
  *(v9 + 8) = 28;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v8();
  v11 = (v127 + v3 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "workoutConfigurationType";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v8();
  v13 = (v127 + v3 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "multisportWorkoutInAutoMode";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v8();
  v15 = (v127 + v3 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "elapsedTimeMetricsPublisher";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v8();
  v17 = (v127 + v3 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "activitySummaryMetricsPublisher";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v8();
  v19 = (v127 + v3 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "heartRateMetricsPublisher";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v8();
  v21 = (v127 + v3 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "energyMetricsPublisher";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v8();
  v23 = v127 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v23 = "distance";
  *(v23 + 8) = 8;
  *(v23 + 16) = 2;
  v8();
  v24 = (v127 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "secondsAheadOfPacer";
  *(v25 + 1) = 19;
  v25[16] = 2;
  v8();
  v26 = (v127 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "currentPace";
  *(v27 + 1) = 11;
  v27[16] = 2;
  v8();
  v28 = (v127 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 13;
  *v29 = "averagePace";
  *(v29 + 1) = 11;
  v29[16] = 2;
  v8();
  v30 = (v127 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 14;
  *v31 = "rollingPace";
  *(v31 + 1) = 11;
  v31[16] = 2;
  v8();
  v32 = (v127 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 15;
  *v33 = "requiredPace";
  *(v33 + 1) = 12;
  v33[16] = 2;
  v8();
  v34 = (v127 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 16;
  *v35 = "fastestPace";
  *(v35 + 1) = 11;
  v35[16] = 2;
  v8();
  v36 = (v127 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 17;
  *v37 = "lapsMetricsPublisher";
  *(v37 + 1) = 20;
  v37[16] = 2;
  v8();
  v38 = v127 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v38 = "elevationGain";
  *(v38 + 8) = 13;
  *(v38 + 16) = 2;
  v8();
  v39 = (v127 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 19;
  *v40 = "currentElevation";
  *(v40 + 1) = 16;
  v40[16] = 2;
  v8();
  v41 = (v127 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 20;
  *v42 = "elevationChartData";
  *(v42 + 1) = 18;
  v42[16] = 2;
  v8();
  v43 = (v127 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 21;
  *v44 = "elevationChartUnit";
  *(v44 + 1) = 18;
  v44[16] = 2;
  v8();
  v45 = (v127 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 22;
  *v46 = "currentCadence";
  *(v46 + 1) = 14;
  v46[16] = 2;
  v8();
  v47 = (v127 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 23;
  *v48 = "averageCadence";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v8();
  v49 = (v127 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 24;
  *v50 = "powerMetricsPublisher";
  *(v50 + 1) = 21;
  v50[16] = 2;
  v8();
  v51 = (v127 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 25;
  *v52 = "flightsClimbed";
  *(v52 + 1) = 14;
  v52[16] = 2;
  v8();
  v53 = (v127 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 26;
  *v54 = "workoutStatePublisher";
  *(v54 + 1) = 21;
  v54[16] = 2;
  v8();
  v55 = (v127 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 27;
  *v56 = "intervalsMetricsPublisher";
  *(v56 + 1) = 25;
  v56[16] = 2;
  v8();
  v57 = (v127 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 28;
  *v58 = "multisportMetricsPublisher";
  *(v58 + 1) = 26;
  v58[16] = 2;
  v8();
  v59 = (v127 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 30;
  *v60 = "distanceGoalFinishTime";
  *(v60 + 1) = 22;
  v60[16] = 2;
  v8();
  v61 = (v127 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 31;
  *v62 = "segmentIndex";
  *(v62 + 1) = 12;
  v62[16] = 2;
  v8();
  v63 = (v127 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 32;
  *v64 = "segmentDuration";
  *(v64 + 1) = 15;
  v64[16] = 2;
  v8();
  v65 = (v127 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 33;
  *v66 = "segmentDistance";
  *(v66 + 1) = 15;
  v66[16] = 2;
  v8();
  v67 = (v127 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 34;
  *v68 = "segmentPace";
  *(v68 + 1) = 11;
  v68[16] = 2;
  v8();
  v69 = v127 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 35;
  *v69 = "segmentActiveEnergy";
  *(v69 + 8) = 19;
  *(v69 + 16) = 2;
  v8();
  v70 = (v127 + v3 + 33 * v2);
  v71 = v70 + v1[14];
  *v70 = 36;
  *v71 = "segmentTotalEnergy";
  *(v71 + 1) = 18;
  v71[16] = 2;
  v8();
  v72 = (v127 + v3 + 34 * v2);
  v73 = v72 + v1[14];
  *v72 = 37;
  *v73 = "segmentAveragePower";
  *(v73 + 1) = 19;
  v73[16] = 2;
  v8();
  v74 = (v127 + v3 + 35 * v2);
  v75 = v74 + v1[14];
  *v74 = 38;
  *v75 = "splitIndex";
  *(v75 + 1) = 10;
  v75[16] = 2;
  v8();
  v76 = (v127 + v3 + 36 * v2);
  v77 = v76 + v1[14];
  *v76 = 39;
  *v77 = "splitStartDate";
  *(v77 + 1) = 14;
  v77[16] = 2;
  v8();
  v78 = (v127 + v3 + 37 * v2);
  v79 = v78 + v1[14];
  *v78 = 40;
  *v79 = "splitDuration";
  *(v79 + 1) = 13;
  v79[16] = 2;
  v8();
  v80 = (v127 + v3 + 38 * v2);
  v81 = v80 + v1[14];
  *v80 = 41;
  *v81 = "splitDistance";
  *(v81 + 1) = 13;
  v81[16] = 2;
  v8();
  v82 = (v127 + v3 + 39 * v2);
  v83 = v82 + v1[14];
  *v82 = 42;
  *v83 = "splitPace";
  *(v83 + 1) = 9;
  v83[16] = 2;
  v8();
  v84 = (v127 + v3 + 40 * v2);
  v85 = v84 + v1[14];
  *v84 = 43;
  *v85 = "splitAveragePower";
  *(v85 + 1) = 17;
  v85[16] = 2;
  v8();
  v86 = (v127 + v3 + 41 * v2);
  v87 = v86 + v1[14];
  *v86 = 44;
  *v87 = "timerRemainingTime";
  *(v87 + 1) = 18;
  v87[16] = 2;
  v8();
  v88 = (v127 + v3 + 42 * v2);
  v89 = v88 + v1[14];
  *v88 = 45;
  *v89 = "timerRemainingTimeWithOffset";
  *(v89 + 1) = 28;
  v89[16] = 2;
  v8();
  v90 = (v127 + v3 + 43 * v2);
  v91 = v90 + v1[14];
  *v90 = 46;
  *v91 = "timerDuration";
  *(v91 + 1) = 13;
  v91[16] = 2;
  v8();
  v92 = (v127 + v3 + 44 * v2);
  v93 = v92 + v1[14];
  *v92 = 47;
  *v93 = "currentStrideLength";
  *(v93 + 1) = 19;
  v93[16] = 2;
  v8();
  v94 = (v127 + v3 + 45 * v2);
  v95 = v94 + v1[14];
  *v94 = 48;
  *v95 = "averageStrideLength";
  *(v95 + 1) = 19;
  v95[16] = 2;
  v8();
  v96 = (v127 + v3 + 46 * v2);
  v97 = v96 + v1[14];
  *v96 = 49;
  *v97 = "currentVerticalOscillation";
  *(v97 + 1) = 26;
  v97[16] = 2;
  v8();
  v98 = (v127 + v3 + 47 * v2);
  v99 = v98 + v1[14];
  *v98 = 50;
  *v99 = "averageVerticalOscillation";
  *(v99 + 1) = 26;
  v99[16] = 2;
  v8();
  v100 = (v127 + v3 + 48 * v2);
  v101 = v100 + v1[14];
  *v100 = 51;
  *v101 = "currentGroundContactTime";
  *(v101 + 1) = 24;
  v101[16] = 2;
  v8();
  v102 = (v127 + v3 + 49 * v2);
  v103 = v102 + v1[14];
  *v102 = 52;
  *v103 = "averageGroundContactTime";
  *(v103 + 1) = 24;
  v103[16] = 2;
  v8();
  v104 = (v127 + v3 + 50 * v2);
  v105 = v104 + v1[14];
  *v104 = 53;
  *v105 = "platterPublisher";
  *(v105 + 1) = 16;
  v105[16] = 2;
  v8();
  v106 = (v127 + v3 + 51 * v2);
  v107 = v106 + v1[14];
  *v106 = 54;
  *v107 = "goalPublisher";
  *(v107 + 1) = 13;
  v107[16] = 2;
  v8();
  v108 = (v127 + v3 + 52 * v2);
  v109 = v108 + v1[14];
  *v108 = 55;
  *v109 = "workoutIdentifierBytes";
  *(v109 + 1) = 22;
  v109[16] = 2;
  v8();
  v110 = (v127 + v3 + 53 * v2);
  v111 = v110 + v1[14];
  *v110 = 56;
  *v111 = "raceInformationPublisher";
  *(v111 + 1) = 24;
  v111[16] = 2;
  v8();
  v112 = (v127 + v3 + 54 * v2);
  v113 = v112 + v1[14];
  *v112 = 57;
  *v113 = "racePositionStatePublisher";
  *(v113 + 1) = 26;
  v113[16] = 2;
  v8();
  v114 = (v127 + v3 + 55 * v2);
  v115 = v114 + v1[14];
  *v114 = 58;
  *v115 = "locationPositionPublisher";
  *(v115 + 1) = 25;
  v115[16] = 2;
  v8();
  v116 = (v127 + v3 + 56 * v2);
  v117 = v116 + v1[14];
  *v116 = 59;
  *v117 = "waterTemperatureMetricsPublisher";
  *(v117 + 1) = 32;
  v117[16] = 2;
  v8();
  v118 = (v127 + v3 + 57 * v2);
  v119 = v118 + v1[14];
  *v118 = 60;
  *v119 = "descent";
  *(v119 + 1) = 7;
  v119[16] = 2;
  v8();
  v120 = (v127 + v3 + 58 * v2);
  v121 = v120 + v1[14];
  *v120 = 61;
  *v121 = "downhillRunCount";
  *(v121 + 1) = 16;
  v121[16] = 2;
  v8();
  v122 = (v127 + v3 + 59 * v2);
  v123 = v122 + v1[14];
  *v122 = 62;
  *v123 = "trackRunningMetricsPublisher";
  *(v123 + 1) = 28;
  v123[16] = 2;
  v8();
  v124 = (v127 + v3 + 60 * v2);
  v125 = v124 + v1[14];
  *v124 = 63;
  *v125 = "workoutBuddyStatePublisher";
  *(v125 + 1) = 26;
  v125[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_EnergyMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_EnergyMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activeEnergy";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalEnergy";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_ActivityMoveMode._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_ActivityMoveMode._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ACTIVE_ENERGY";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "APPLE_MOVE_TIME";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_ActivitySummaryMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_ActivitySummaryMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activitySummary";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isWheelchairUser";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_HKActivitySummary._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_HKActivitySummary._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20B43DE00;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "moveMode";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "activeEnergyBurned";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "appleMoveTime";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "appleExerciseTime";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "appleStandHours";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "activeEnergyBurnedGoal";
  *(v17 + 1) = 22;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "appleMoveTimeGoal";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "exerciseTimeGoal";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "standHoursGoal";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MultisportTransitionState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MultisportTransitionState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NOT_IN_TRANSITION";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IN_AUTOMATIC_TRANSITION";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "IN_MANUAL_TRANSITION";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MultiSportMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MultiSportMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20B43DE00;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "currentActivityStartSinceReference";
  *(v5 + 8) = 34;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "currentActivity";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "lastLegTime";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "lastLegDistance";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "lastLegAveragePace";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "transitionState";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "remainingLegCount";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lastEffectiveTransitionDateSinceReference";
  *(v21 + 1) = 41;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "nextMultisportActivity";
  *(v22 + 8) = 22;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_Zone._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_Zone._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "displaySpanBottom";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "displaySpanTop";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "configurationIndex";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "configurationCount";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_CLLocation._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_CLLocation._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "latitude";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "longitude";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "altitude";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "horizontalAccuracy";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "verticalAccuracy";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "timestampSinceReference";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutStatePublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutStatePublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20B432BD0;
  v4 = v45 + v3;
  v5 = v45 + v3 + v1[14];
  *(v45 + v3) = 1;
  *v5 = "workoutStarted";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "workoutStartDateReferenceTime";
  *(v9 + 8) = 29;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "workoutActive";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "pauseTimes";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "lastUnbalancedPauseStartReferenceTime";
  *(v15 + 1) = 37;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "gpsLock";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "gpsUnavailable";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "showGymKitConnectionStatus";
  *(v21 + 1) = 26;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "lowPowerModeAnimationSuspended";
  *(v22 + 8) = 30;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "activityType";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "mirroringToCompanion";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "mirrorModeEnabled";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "isGymKit";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "multisportWorkoutInAutoMode";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "segmentIndex";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "speedSensor";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "cadenceSensor";
  *(v37 + 8) = 13;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "powerSensor";
  *(v39 + 1) = 11;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "checkingGpsLock";
  *(v41 + 1) = 15;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "pausedReasons";
  *(v43 + 1) = 13;
  v43[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "USER";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MOTION";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "HEART_RATE";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_DateInterval._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_DateInterval._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startReferenceTime";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endReferenceTime";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Apple_Workout_Core_MetricPlatter.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_MetricPlatter.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    if (*(v0 + 9) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0[2] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Apple_Workout_Core_MetricPlatter(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType);
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MetricPlatter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_MetricPlatter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MetricPlatter;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter, type metadata accessor for Apple_Workout_Core_MetricPlatter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MetricPlatter(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter, type metadata accessor for Apple_Workout_Core_MetricPlatter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MetricPlatter()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter, type metadata accessor for Apple_Workout_Core_MetricPlatter);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_MetricPlatterType._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Apple_Workout_Core_PlatterPublisher.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
        lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter, type metadata accessor for Apple_Workout_Core_MetricPlatter);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_PlatterPublisher.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Workout_Core_MetricPlatter(0), lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter, type metadata accessor for Apple_Workout_Core_MetricPlatter), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Workout_Core_PlatterPublisher(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Apple_Workout_Core_PlatterPublisher.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C14_MetricPlatterV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Workout_Core_PlatterPublisher(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Apple_Workout_Core_MetricPlatter.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_PlatterPublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_PlatterPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_PlatterPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PlatterPublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PlatterPublisher;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PlatterPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher, type metadata accessor for Apple_Workout_Core_PlatterPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_MetricPlatterType@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PlatterPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher, type metadata accessor for Apple_Workout_Core_PlatterPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_MetricPlatter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PlatterPublisher()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher, type metadata accessor for Apple_Workout_Core_PlatterPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_MetricPlatter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_PlatterPublisher(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C14_MetricPlatterV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x20F2E42A0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x20F2E42A0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized static Apple_Workout_Core_MetricPlatter.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v2 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v2 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v2 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v2 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v2 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v2 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v2 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v2 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v2 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      case 11:
        if (v2 != 11)
        {
          return 0;
        }

        goto LABEL_6;
      case 12:
        if (v2 != 12)
        {
          return 0;
        }

        goto LABEL_6;
      case 13:
        if (v2 != 13)
        {
          return 0;
        }

        goto LABEL_6;
      case 14:
        if (v2 != 14)
        {
          return 0;
        }

        goto LABEL_6;
      case 15:
        if (v2 != 15)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v2)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v2 == v3)
  {
LABEL_6:
    if (*(a1 + 9) == *(a2 + 9) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(a1[2], a2[2]) & 1) != 0)
    {
      v4 = *(type metadata accessor for Apple_Workout_Core_MetricPlatter(0) + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_MetricPlatterType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_MetricPlatterType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_MetricPlatterType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B18_MetricPlatterTypeOGMd, &_sSay11WorkoutCore06Apple_a1_B18_MetricPlatterTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_MetricPlatterType] and conformance [A]);
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

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_MetricPlatterType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_MetricPlatterType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Apple_Workout_Core_MetricPlatterType(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_MetricPlatterType(uint64_t result, int a2)
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

void type metadata completion function for Apple_Workout_Core_MetricPlatter()
{
  type metadata accessor for [UInt32]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [UInt32]()
{
  if (!lazy cache variable for type metadata for [UInt32])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UInt32]);
    }
  }
}

void type metadata completion function for Apple_Workout_Core_PlatterPublisher()
{
  type metadata accessor for [Apple_Workout_Core_MetricPlatter]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [Apple_Workout_Core_MetricPlatter]()
{
  if (!lazy cache variable for type metadata for [Apple_Workout_Core_MetricPlatter])
  {
    type metadata accessor for Apple_Workout_Core_MetricPlatter(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Apple_Workout_Core_MetricPlatter]);
    }
  }
}

uint64_t outlined init with copy of Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_Core_Zone?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for NSString(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t ReducedActivityTypesProvider.reducedActivityTypes.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ReducedActivityTypesProvider.reducedActivityTypes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v5)
    {

      v7 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo23FIUIWorkoutActivityTypeC_Tt1g5(v6, v5);

      if (v7)
      {
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  v8 = [*(v1 + OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30WOReducedActivityTypesObserver_pMd, &_sSo30WOReducedActivityTypesObserver_pMR);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_20;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
LABEL_8:
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F2E7A20](v11, v9);
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v13 = *(v9 + 8 * v11 + 32);
        swift_unknownObjectRetain();
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v10 = __CocoaSet.count.getter();
          if (!v10)
          {
            break;
          }

          goto LABEL_8;
        }
      }

      if (*(v1 + v3))
      {
        type metadata accessor for FIUIWorkoutActivityType();

        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        isa = 0;
      }

      [v13 reducedActivityTypesDidChange_];
      swift_unknownObjectRelease();

      ++v11;
    }

    while (v14 != v10);
  }
}

unint64_t type metadata accessor for FIUIWorkoutActivityType()
{
  result = lazy cache variable for type metadata for FIUIWorkoutActivityType;
  if (!lazy cache variable for type metadata for FIUIWorkoutActivityType)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  }

  return result;
}

void (*ReducedActivityTypesProvider.reducedActivityTypes.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return ReducedActivityTypesProvider.reducedActivityTypes.modify;
}

void ReducedActivityTypesProvider.reducedActivityTypes.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    ReducedActivityTypesProvider.reducedActivityTypes.setter(v5);
    v6 = *v3;
  }

  else
  {
    ReducedActivityTypesProvider.reducedActivityTypes.setter(*v3);
  }

  free(v2);
}

id ReducedActivityTypesProvider.__allocating_init(reducedActivityTypes:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes;
  *&v3[OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes] = 0;
  v5 = [objc_opt_self() weakObjectsHashTable];
  *&v3[OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_observers] = v5;
  swift_beginAccess();
  v6 = *&v3[v4];
  *&v3[v4] = a1;

  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ReducedActivityTypesProvider.init(reducedActivityTypes:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes;
  *&v1[OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes] = 0;
  v4 = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_observers] = v4;
  swift_beginAccess();
  v5 = *&v1[v3];
  *&v1[v3] = a1;

  v7.receiver = v1;
  v7.super_class = type metadata accessor for ReducedActivityTypesProvider();
  return objc_msgSendSuper2(&v7, sel_init);
}

id ReducedActivityTypesProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReducedActivityTypesProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReducedActivityTypesProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double MetricsPublisher.doubleValue(for:)(uint64_t a1)
{
  result = 0.0;
  switch(a1)
  {
    case 1:
    case 4:
    case 8:
    case 13:
    case 14:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 34:
    case 35:
    case 36:
    case 44:
    case 45:
    case 48:
      swift_getKeyPath();
      goto LABEL_21;
    case 2:
    case 7:
      v6 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_energyMetricsPublisher);
      swift_getKeyPath();
      goto LABEL_21;
    case 5:
      v12 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher);
      swift_getKeyPath();
      goto LABEL_16;
    case 9:
      v7 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_lapsMetricsPublisher);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      return *&v16;
    case 10:
    case 15:
    case 16:
    case 17:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 53:
      swift_getKeyPath();
      goto LABEL_16;
    case 11:
      v14 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher);
      swift_getKeyPath();
      goto LABEL_16;
    case 12:
    case 49:
      v13 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher);
      swift_getKeyPath();
      goto LABEL_16;
    case 37:
    case 40:
      v5 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher);
      swift_getKeyPath();
LABEL_16:
      swift_getKeyPath();
      static Published.subscript.getter();

      result = v16;
      v3 = v17;
      goto LABEL_17;
    case 39:
      v8 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher);
      swift_getKeyPath();
      goto LABEL_8;
    case 41:
      v15 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher);
      swift_getKeyPath();
LABEL_21:
      swift_getKeyPath();
      static Published.subscript.getter();

      return v16;
    case 43:
      v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher);
      swift_getKeyPath();
LABEL_8:
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v16 == 0.0)
      {
        result = 0.0;
      }

      else
      {
        v9 = COERCE_DOUBLE(specialized LiveZones.elapsedTimeInCurrentZone.getter());
        v11 = v10;

        result = 0.0;
        if ((v11 & 1) == 0)
        {
          result = v9;
        }
      }

      break;
    case 54:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v3 = v17;
      result = *&v16;
LABEL_17:
      if (v3)
      {
        result = 0.0;
      }

      break;
    default:
      return result;
  }

  return result;
}

unint64_t specialized LiveZones.elapsedTimeInCurrentZone.getter()
{
  swift_beginAccess();
  if (*(v0 + 32))
  {
    return 0;
  }

  v1 = *(v0 + 24);
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v6 = *(v0 + 16);
    }

    result = __CocoaSet.count.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 >= result)
  {
    return 0;
  }

  v0 = *(v0 + 16);
  if ((v0 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v4 = MEMORY[0x20F2E7A20](v1, v0);

    goto LABEL_8;
  }

  if (v1 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v0 + 8 * v1 + 32);

LABEL_8:
    swift_beginAccess();
    v5 = *(v4 + 48);

    return v5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall MetricsPublisher.workout(_:didBeginNewActivity:)(NLWorkout *_, HKWorkoutActivity didBeginNewActivity)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.multisport);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20AEA4000, v17, v18, "Publisher has noticed that NLWorkout has begun a new activity", v19, 2u);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  v20 = [(objc_class *)didBeginNewActivity.super.isa startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = *&v34[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher];
  (*(v12 + 16))(v10, v15, v11);
  v33 = *(v12 + 56);
  v33(v10, 0, 1, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v10, v8);

  static Published.subscript.setter();
  outlined destroy of Date?(v10);
  v22 = [(NLWorkout *)_ sessionActivity];
  v23 = [(NLSessionActivity *)v22 configuration];

  v24 = LiveWorkoutConfiguration.currentActivityType.getter();
  LODWORD(v23) = [v24 supportsDistanceSplits];

  if (v23)
  {
    v32 = v15;
    v25 = [(NLWorkout *)_ sessionActivity];
    v26 = [(NLSessionActivity *)v25 dataProvider];

    v27 = [(NLSessionDataProvider *)v26 splitProvider];
    swift_unknownObjectRelease();
    if (v27)
    {
      v28 = [v27 splitStartDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v33(v10, 0, 1, v11);
      swift_getKeyPath();
      swift_getKeyPath();
      outlined init with copy of Date?(v10, v8);
      v29 = v34;
      static Published.subscript.setter();
      outlined destroy of Date?(v10);
      v30 = [v27 splitIndex];
      swift_getKeyPath();
      swift_getKeyPath();
      v35 = v30;
      v31 = v29;
      static Published.subscript.setter();
      swift_unknownObjectRelease();
    }

    (*(v12 + 8))(v32, v11);
  }

  else
  {
    (*(v12 + 8))(v15, v11);
  }
}

uint64_t key path getter for MultisportMetricsPublisher.currentActivityStart : MultisportMetricsPublisher(uint64_t *a1)
{
  return key path getter for MultisportMetricsPublisher.currentActivityStart : MultisportMetricsPublisher(a1);
}

{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for MultisportMetricsPublisher.currentActivityStart : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  outlined init with copy of Date?(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v10, v8);

  static Published.subscript.setter();
  return outlined destroy of Date?(v10);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path getter for MetricsPublisher.splitIndex : MetricsPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for MetricsPublisher.splitIndex : MetricsPublisher(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t key path setter for MetricsPublisher.splitStartDate : MetricsPublisher(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  outlined init with copy of Date?(a1, &v14 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v10, v8);
  v12 = v11;
  static Published.subscript.setter();
  return outlined destroy of Date?(v10);
}

Swift::Bool __swiftcall occurrences_debug_enabled(userDefaults:)(NSUserDefaults userDefaults)
{
  isa = userDefaults.super.isa;
  v2 = MEMORY[0x20F2E6C00](0xD000000000000024, 0x800000020B455FD0, userDefaults._identifier_, userDefaults._container_);
  LOBYTE(isa) = [(objc_class *)isa BOOLForKey:v2];

  return isa;
}

uint64_t Occurrence.count.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Occurrence.count.setter(int a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for Occurrence.countModificationDate : Occurrence@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = type metadata accessor for Date();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t key path setter for Occurrence.countModificationDate : Occurrence(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *a2;
  v14 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v13 + v14, v12, v8);
  return swift_endAccess();
}

uint64_t Occurrence.countModificationDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t Occurrence.countModificationDate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Occurrence.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Occurrence.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Occurrence.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Occurrence.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Occurrence.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Occurrence.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x746E756F63;
  v4 = 0xEC00000065746144;
  v5 = 0x6E6F697461657263;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000020B454000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x800000020B453FE0;
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance Occurrence.CodingKeys()
{
  v1 = 0x746E756F63;
  v2 = 0x6E6F697461657263;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance Occurrence.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized Occurrence.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Occurrence.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Occurrence.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id Occurrence.__allocating_init(count:countModificationDate:creationDate:modificationDate:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR____TtC11WorkoutCore10Occurrence_count] = a1;
  v11 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(&v10[v11], a2, v12);
  v14(&v10[OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate], a3, v12);
  v14(&v10[OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate], a4, v12);
  v18.receiver = v10;
  v18.super_class = v5;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = *(v13 + 8);
  v16(a4, v12);
  v16(a3, v12);
  v16(a2, v12);
  return v15;
}

id Occurrence.init(count:countModificationDate:creationDate:modificationDate:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC11WorkoutCore10Occurrence_count] = a1;
  v8 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(&v4[v8], a2, v9);
  v11(&v4[OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate], a3, v9);
  v11(&v4[OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate], a4, v9);
  v15.receiver = v4;
  v15.super_class = type metadata accessor for Occurrence();
  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = *(v10 + 8);
  v13(a4, v9);
  v13(a3, v9);
  v13(a2, v9);
  return v12;
}

uint64_t Occurrence.encode(to:)(void *a1)
{
  v2 = v1;
  v41 = type metadata accessor for Date();
  v43 = *(v41 - 8);
  v4 = v43[8];
  v5 = MEMORY[0x28223BE20](v41);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore10OccurrenceC10CodingKeys33_C92B60A0D8B8B40FD3BB79DBEB79A6BELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore10OccurrenceC10CodingKeys33_C92B60A0D8B8B40FD3BB79DBEB79A6BELLOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  v19 = *(v2 + v18);
  v46 = 0;
  v20 = v12;
  v21 = v42;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v21)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v37 = v7;
  v38 = v10;
  v42 = v13;
  v23 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v24 = v43[2];
  v25 = v40;
  v24(v40, v2 + v23, v41);
  v45 = 1;
  v39 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v26 = v43[1];
  v27 = v25;
  v28 = v41;
  ++v43;
  v40 = v26;
  (v26)(v27, v41);
  v29 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v30 = v38;
  v24(v38, v2 + v29, v28);
  v44 = 2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v31 = v42;
  v32 = v30;
  v33 = v41;
  (v40)(v32, v41);
  v34 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v35 = v37;
  v24(v37, v2 + v34, v33);
  v47 = 3;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (v40)(v35, v41);
  return (*(v31 + 8))(v16, v20);
}

uint64_t Occurrence.init(from:)(uint64_t *a1)
{
  v2 = type metadata accessor for Date();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore10OccurrenceC10CodingKeys33_C92B60A0D8B8B40FD3BB79DBEB79A6BELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore10OccurrenceC10CodingKeys33_C92B60A0D8B8B40FD3BB79DBEB79A6BELLOGMR);
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v40);
  v15 = &v34 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys();
  v18 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v22 = v43;
    __swift_destroy_boxed_opaque_existential_1(v42);
    type metadata accessor for Occurrence();
    v23 = *((*MEMORY[0x277D85000] & *v22) + 0x30);
    v24 = *((*MEMORY[0x277D85000] & *v22) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v37 = v6;
    v38 = v9;
    v19 = v12;
    v41 = v2;
    v45 = 0;
    v20 = v40;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v43;
    *(v43 + OBJC_IVAR____TtC11WorkoutCore10Occurrence_count) = v21;
    v45 = 1;
    v27 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
    v28 = v41;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v35 = *(v39 + 32);
    v35(&v26[OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate], v11, v28);
    v45 = 2;
    v29 = v38;
    v36 = v27;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = v29;
    v31 = v35;
    v35(v43 + OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate, v30, v28);
    v45 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v15, v20);
    v32 = v43;
    v31(v43 + OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate, v37, v28);
    v33 = type metadata accessor for Occurrence();
    v44.receiver = v32;
    v44.super_class = v33;
    v2 = objc_msgSendSuper2(&v44, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return v2;
}

Swift::Int Occurrence.hash.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  v7 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + v7));
  v8 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v9 = v3[2];
  v9(v6, v1 + v8, v2);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
  dispatch thunk of Hashable.hash(into:)();
  v10 = v3[1];
  v10(v6, v2);
  v11 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v9(v6, v1 + v11, v2);
  dispatch thunk of Hashable.hash(into:)();
  v10(v6, v2);
  v12 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v9(v6, v1 + v12, v2);
  dispatch thunk of Hashable.hash(into:)();
  v10(v6, v2);
  return Hasher.finalize()();
}

uint64_t Occurrence.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(76);
  v38 = v36;
  v39 = v37;
  MEMORY[0x20F2E6D80](0x203A746E756F63, 0xE700000000000000);
  v7 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  v35 = *(v1 + v7);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v8);

  MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B456000);
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v9 = static WOLog.logDateFormatter;
  v34 = static WOLog.logDateFormatter;
  v10 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v11 = v3[2];
  v11(v6, v1 + v10, v2);
  v32 = v11;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v33 = v3[1];
  v33(v6, v2);
  v13 = [v9 stringFromDate_];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  MEMORY[0x20F2E6D80](v14, v16);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B456020);
  v17 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v11(v6, v1 + v17, v2);
  v18 = Date._bridgeToObjectiveC()().super.isa;
  v19 = v33;
  v33(v6, v2);
  v20 = [v34 stringFromDate_];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  MEMORY[0x20F2E6D80](v21, v23);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B456040);
  v24 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v32(v6, v1 + v24, v2);
  v25 = Date._bridgeToObjectiveC()().super.isa;
  v19(v6, v2);
  v26 = [v34 stringFromDate_];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  MEMORY[0x20F2E6D80](v27, v29);

  return v38;
}

id Occurrence.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Occurrence.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Occurrence();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Occurrence@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Occurrence());
  result = Occurrence.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys;
  if (!lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys;
  if (!lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys;
  if (!lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys;
  if (!lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized Occurrence.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Occurrence.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized static Occurrence.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + v12);
  v13 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  if (v12 != *(a2 + v13))
  {
    goto LABEL_5;
  }

  v14 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v15 = v5[2];
  v15(v11, a1 + v14, v4);
  v16 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v15(v9, a2 + v16, v4);
  LOBYTE(v16) = static Date.== infix(_:_:)();
  v17 = v5[1];
  v17(v9, v4);
  v17(v11, v4);
  if ((v16 & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v15(v11, a1 + v18, v4);
  v19 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v15(v9, a2 + v19, v4);
  LOBYTE(v19) = static Date.== infix(_:_:)();
  v17(v9, v4);
  v17(v11, v4);
  if (v19)
  {
    v20 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
    swift_beginAccess();
    v15(v11, a1 + v20, v4);
    v21 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
    swift_beginAccess();
    v15(v9, a2 + v21, v4);
    v22 = static Date.== infix(_:_:)();
    v17(v9, v4);
    v17(v11, v4);
  }

  else
  {
LABEL_5:
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t type metadata completion function for Occurrence()
{
  result = type metadata accessor for Date();
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

uint64_t getEnumTagSinglePayload for Occurrence.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Occurrence.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t closure #1 in CoreAnalyticsReporter.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](closure #1 in CoreAnalyticsReporter.send(_:), 0, 0);
}

uint64_t closure #1 in CoreAnalyticsReporter.send(_:)()
{
  v30 = v0;
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.analytics);
  outlined init with copy of CoreAnalyticsEvent(v1, (v0 + 2));

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315394;
    v9 = v0[5];
    v10 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v29);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    type metadata accessor for NSObject();
    v15 = Dictionary.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v29);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Preparing to send analytics. eventName=%s event=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v18 = v0[8];
  v19 = v0[9];
  v20 = v18[3];
  v21 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v20);
  v22 = (*(v21 + 8))(v20, v21);
  v23 = MEMORY[0x20F2E6C00](v22);

  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  v0[6] = partial apply for closure #1 in closure #1 in CoreAnalyticsReporter.send(_:);
  v0[7] = v24;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[5] = &block_descriptor_0;
  v25 = _Block_copy(v0 + 2);
  v26 = v0[7];

  AnalyticsSendEventLazy();
  _Block_release(v25);

  v27 = v0[1];

  return v27();
}

void specialized CoreAnalyticsReporter.send(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = [objc_opt_self() sharedConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isHealthDataSubmissionAllowed];

    if (v8)
    {
      v9 = a1[3];
      v10 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v9);
      v11 = (*(v10 + 16))(v9, v10);
      static TaskPriority.low.getter();
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
      outlined init with copy of CoreAnalyticsEvent(a1, v19);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      outlined init with take of CoreAnalyticsEvent(v19, (v13 + 4));
      v13[9] = v11;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in CoreAnalyticsReporter.send(_:), v13);

      outlined destroy of TaskPriority?(v5);
    }

    else
    {
      if (one-time initialization token for analytics != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static WOLog.analytics);
      v18 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_20AEA4000, v18, v15, "Health data submission not allowed. Not sending analytics.", v16, 2u);
        MEMORY[0x20F2E9420](v16, -1, -1);
      }

      v17 = v18;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t outlined init with copy of CoreAnalyticsEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of CoreAnalyticsEvent(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t partial apply for closure #1 in CoreAnalyticsReporter.send(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CoreAnalyticsReporter.send(_:);

  return closure #1 in CoreAnalyticsReporter.send(_:)(a1, v4, v5, (v1 + 4), v6);
}

uint64_t partial apply for closure #1 in CoreAnalyticsReporter.send(_:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

double Apple_Workout_Core_WaterTemperatureMetricsPublisher.currentWaterTemperature.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher() + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher()
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_WaterTemperatureMetricsPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_WaterTemperatureMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.currentWaterTemperature.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_WaterTemperatureMetricsPublisher.currentWaterTemperature.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher() + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_WaterTemperatureMetricsPublisher.currentWaterTemperature.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_WaterTemperatureMetricsPublisher.clearCurrentWaterTemperature()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher() + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Apple_Workout_Core_WaterTemperatureMetricsPublisher.averageWaterTemperature.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher() + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.averageWaterTemperature.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_WaterTemperatureMetricsPublisher.averageWaterTemperature.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher() + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_WaterTemperatureMetricsPublisher.averageWaterTemperature.modify;
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.averageWaterTemperature.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_WaterTemperatureMetricsPublisher.clearAverageWaterTemperature()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher() + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher() + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher() + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v3 = &a1[v2[5]];
  result = UnknownStorage.init()();
  v5 = &a1[v2[6]];
  *v5 = 0;
  v5[8] = 1;
  v6 = &a1[v2[7]];
  *v6 = 0;
  v6[8] = 1;
  return result;
}

uint64_t static Apple_Workout_Core_WaterTemperatureMetricsPublisher._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_WaterTemperatureMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v4 = *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher() + 28);
LABEL_10:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 1:
        v3 = *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher() + 24);
        goto LABEL_10;
    }
  }
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.traverse<A>(visitor:)()
{
  result = closure #1 in Apple_Workout_Core_WaterTemperatureMetricsPublisher.traverse<A>(visitor:)(v0);
  if (!v1)
  {
    if (*v0 == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    closure #2 in Apple_Workout_Core_WaterTemperatureMetricsPublisher.traverse<A>(visitor:)(v0);
    v3 = &v0[*(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher() + 20)];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_WaterTemperatureMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_WaterTemperatureMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

Swift::Int Apple_Workout_Core_WaterTemperatureMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[a1[5]];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = &a2[a1[6]];
  *v7 = 0;
  v7[8] = 1;
  v8 = &a2[v6];
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_WaterTemperatureMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_WaterTemperatureMetricsPublisher.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v5 = v4[6];
  v6 = &a1[v5];
  v7 = a1[v5 + 8];
  v8 = &a2[v5];
  v9 = a2[v5 + 8];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = &a1[v11];
  v13 = a1[v11 + 8];
  v14 = &a2[v11];
  v15 = a2[v11 + 8];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v4[5];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void type metadata completion function for Apple_Workout_Core_WaterTemperatureMetricsPublisher()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Double?()
{
  if (!lazy cache variable for type metadata for Double?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Double?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(unint64_t *a1, void (*a2)(uint64_t))
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

id TrainerTimerStartEventAlert.init(startTime:duration:)(double a1, double a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC11WorkoutCore27TrainerTimerStartEventAlert_startTime] = a1;
  *&v2[OBJC_IVAR____TtC11WorkoutCore27TrainerTimerStartEventAlert_duration] = a2;
  started = type metadata accessor for TrainerTimerStartEventAlert();
  v14.receiver = v2;
  v14.super_class = started;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  [v11 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);
  [v11 setEventDate_];

  return v11;
}

id TrainerTimerStartEventAlert.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TrainerTimerStartEventAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrainerTimerStartEventAlert();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for LastWorkoutQueryError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LastWorkoutQueryError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LastWorkoutQueryError and conformance LastWorkoutQueryError()
{
  result = lazy protocol witness table cache variable for type LastWorkoutQueryError and conformance LastWorkoutQueryError;
  if (!lazy protocol witness table cache variable for type LastWorkoutQueryError and conformance LastWorkoutQueryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LastWorkoutQueryError and conformance LastWorkoutQueryError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LastWorkoutQueryError and conformance LastWorkoutQueryError;
  if (!lazy protocol witness table cache variable for type LastWorkoutQueryError and conformance LastWorkoutQueryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LastWorkoutQueryError and conformance LastWorkoutQueryError);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LastWorkoutQueryError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LastWorkoutQueryError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateTargetZone.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HeartRateTargetZone.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateTargetZone.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HeartRateTargetZone.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized HeartRateTargetZone.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance HeartRateTargetZone.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0x756F427265707075;
  v5 = 0xEA0000000000646ELL;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000010;
    v5 = 0x800000020B454030;
  }

  if (*v1)
  {
    v3 = 0x756F427265776F6CLL;
    v2 = 0xEA0000000000646ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance HeartRateTargetZone.CodingKeys()
{
  v1 = 1701869940;
  v2 = 0x756F427265707075;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x756F427265776F6CLL;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance HeartRateTargetZone.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized HeartRateTargetZone.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HeartRateTargetZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HeartRateTargetZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int HeartRateTargetZone.hash.getter()
{
  v1 = v0;
  Hasher.init()();
  if (*(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    *(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type);
  }

  String.hash(into:)();

  v2 = v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *v2;
    v3 = *(v2 + 8);
    Hasher._combine(_:)(1u);
    if (v4 == 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v4;
    }

    MEMORY[0x20F2E8020](*&v5);
    if (v3 == 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v3;
    }

    MEMORY[0x20F2E8020](*&v6);
  }

  v7 = (v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex);
  swift_beginAccess();
  if (*(v7 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v8 = *v7;
    Hasher._combine(_:)(1u);
    MEMORY[0x20F2E7FF0](v8);
  }

  return Hasher.finalize()();
}

uint64_t HeartRateTargetZone.customRange.getter()
{
  v1 = (v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange);
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}