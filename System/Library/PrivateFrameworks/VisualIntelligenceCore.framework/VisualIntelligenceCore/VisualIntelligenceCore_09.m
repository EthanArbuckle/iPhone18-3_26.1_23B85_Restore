uint64_t sub_1D8850A24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D885E420(v1, v13, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D89C5980(*v13, v4);

        v16 = sub_1D8B152F0();
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v4, 1, v16) == 1)
        {
          sub_1D87A14E4(v4, &qword_1ECA641A8);
        }

        else
        {
          v22 = sub_1D8B152D0();
          v24 = v23;
          (*(v17 + 8))(v4, v16);
          if (v24)
          {
            return v22;
          }
        }

        return 0;
      }

      else
      {
        return 0xD000000000000013;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      return 0x2E72656B61657073;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      return 0x74616C736E617274;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D881F6FC(v13, v10, &qword_1ECA641B0);
      sub_1D87A0E38(v10, v8, &qword_1ECA641B0);
      v20 = type metadata accessor for VisualLookupClassifier.Result(0);
      if ((*(*(v20 - 8) + 48))(v8, 1, v20) == 1)
      {
        sub_1D87A14E4(v8, &qword_1ECA641B0);
        v21 = 0xD000000000000017;
      }

      else
      {
        v21 = VisualLookupClassifier.Result.systemImage.getter();
        sub_1D885E3C0(v8, type metadata accessor for VisualLookupClassifier.Result);
      }

      sub_1D87A14E4(v10, &qword_1ECA641B0);
      return v21;
    }

    else
    {
      sub_1D885E3C0(v13, type metadata accessor for BundleClassification.ClassificationType);
      return 0xD00000000000001ALL;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v18 = *v13;
    v19 = v13[1];

    return v19;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0xD000000000000017;
  }

  else
  {
    sub_1D885E3C0(v13, type metadata accessor for BundleClassification.ClassificationType);
    return 0x2E657369726E7573;
  }
}

uint64_t sub_1D8850ED0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D885E420(v2, v9, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D8B13240();
    return (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  else
  {
    sub_1D885E538(v9, v6, type metadata accessor for CVTrackSnapshot);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 16))(a1, v6, v12);
    return sub_1D885E3C0(v6, type metadata accessor for CVTrackSnapshot);
  }
}

uint64_t sub_1D8851090()
{
  v0 = sub_1D8B14F20();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B14F00();
  sub_1D885E288(&qword_1EE0E3AA8, MEMORY[0x1E69DFB48]);
  sub_1D8B15C40();
  sub_1D8B15C40();
  (*(v1 + 8))(v3, v0);
  if (v6[1] == v6[0])
  {
    v4 = sub_1D8919304();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D88511E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = v44 - v3;
  v4 = sub_1D8B15910();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44[2] = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B15930();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v44[1] = v44 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v44 - v19;
  v21 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D885E420(v1, v23, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v31 = v45;
        sub_1D89C5980(*v23, v45);

        v32 = sub_1D8B152F0();
        v33 = *(v32 - 8);
        if ((*(v33 + 48))(v31, 1, v32) == 1)
        {
          sub_1D87A14E4(v31, &qword_1ECA641A8);
        }

        else
        {
          v35 = sub_1D8B152A0();
          v41 = v40;
          (*(v33 + 8))(v31, v32);
          if (v41)
          {
            return v35;
          }
        }

        return 0;
      }

      sub_1D8B158D0();
      sub_1D87D1F20();
      if (!sub_1D8B163E0())
      {
        v39 = [objc_opt_self() mainBundle];
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      sub_1D8B158D0();
      sub_1D87D1F20();
      if (!sub_1D8B163E0())
      {
        v36 = [objc_opt_self() mainBundle];
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      sub_1D8B158D0();
      sub_1D87D1F20();
      if (!sub_1D8B163E0())
      {
        v27 = [objc_opt_self() mainBundle];
      }
    }

    else
    {
      sub_1D8B158D0();
      sub_1D87D1F20();
      if (!sub_1D8B163E0())
      {
        v37 = [objc_opt_self() mainBundle];
      }
    }

LABEL_42:
    sub_1D8B132F0();
    return sub_1D8B159D0();
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D881F6FC(v23, v20, &qword_1ECA641B0);
      sub_1D87A0E38(v20, v18, &qword_1ECA641B0);
      v38 = type metadata accessor for VisualLookupClassifier.Result(0);
      if ((*(*(v38 - 8) + 48))(v18, 1, v38) == 1)
      {
        sub_1D87A14E4(v18, &qword_1ECA641B0);
        v30 = 0;
      }

      else
      {
        v30 = sub_1D89DDB60();
        sub_1D885E3C0(v18, type metadata accessor for VisualLookupClassifier.Result);
      }

      sub_1D87A14E4(v20, &qword_1ECA641B0);
    }

    else
    {
      v28 = *v23;
      v29 = *(*v23 + 16);
      if (v29)
      {
        v30 = *(v28 + 40);
      }

      else
      {
        sub_1D8B158D0();
        sub_1D87D1F20();
        if (!sub_1D8B163E0())
        {
          v42 = [objc_opt_self() mainBundle];
        }

        sub_1D8B132F0();
        v30 = sub_1D8B159D0();
        v29 = *(v28 + 16);
      }

      if (v29 >= 2)
      {
        sub_1D8B15900();
        sub_1D8B158F0();
        sub_1D8B158E0();

        sub_1D8B158F0();
        sub_1D8B15920();
        sub_1D87D1F20();
        if (!sub_1D8B163E0())
        {
          v43 = [objc_opt_self() mainBundle];
        }

        goto LABEL_42;
      }
    }

    return v30;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v34 = *v23;
    v35 = v23[3];

    return v35;
  }

  v25 = EnumCaseMultiPayload;
  result = 0x6E69646E756F7247;
  if (v25 != 3)
  {
    sub_1D885E3C0(v23, type metadata accessor for BundleClassification.ClassificationType);
    return 0x6E69646E756F7247;
  }

  return result;
}

uint64_t sub_1D8851AE0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v1 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D8834AF4();
  v5 = result;
  v25 = *(result + 16);
  if (!v25)
  {
LABEL_57:

    v20 = 1;
    v21 = v24;
    return (*(v1 + 56))(v21, v20, 1, v23);
  }

  v6 = 0;
  while (v6 < *(v5 + 16))
  {
    sub_1D885E420(v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6, v3, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    sub_1D8844D24(&v26);
    v7 = v26;
    v8 = byte_1F5426748;
    if (byte_1F5426748 <= 1u && !byte_1F5426748)
    {
      goto LABEL_26;
    }

    v9 = sub_1D8B16BA0();

    if (v9)
    {
      v8 = 0;
    }

    else
    {
      if (byte_1F5426749 <= 1u && !byte_1F5426749)
      {
        v8 = 1;
LABEL_26:

        goto LABEL_27;
      }

      v10 = sub_1D8B16BA0();

      if (v10)
      {
        v8 = 1;
      }

      else
      {
        if (byte_1F542674A <= 1u && !byte_1F542674A)
        {
          v8 = 2;
          goto LABEL_26;
        }

        v11 = sub_1D8B16BA0();

        if (v11)
        {
          v8 = 2;
        }

        else
        {
          if (byte_1F542674B <= 1u && !byte_1F542674B)
          {
            v8 = 3;
            goto LABEL_26;
          }

          v12 = sub_1D8B16BA0();

          if (v12)
          {
            v8 = 3;
          }

          else
          {
            if (byte_1F542674C <= 1u && !byte_1F542674C)
            {
              v8 = 4;
              goto LABEL_26;
            }

            v18 = sub_1D8B16BA0();

            if ((v18 & 1) == 0)
            {
              goto LABEL_61;
            }

            v8 = 4;
          }
        }
      }
    }

LABEL_27:
    v13 = byte_1F5426770;
    if (byte_1F5426770 <= 1u && !byte_1F5426770)
    {
      goto LABEL_49;
    }

    v14 = sub_1D8B16BA0();

    if (v14)
    {
      v13 = 0;
      goto LABEL_50;
    }

    if (byte_1F5426771 <= 1u && !byte_1F5426771)
    {
      v13 = 1;
LABEL_49:

      goto LABEL_50;
    }

    v15 = sub_1D8B16BA0();

    if (v15)
    {
      v13 = 1;
      goto LABEL_50;
    }

    if (byte_1F5426772 <= 1u && !byte_1F5426772)
    {
      v13 = 2;
      goto LABEL_49;
    }

    v16 = sub_1D8B16BA0();

    if (v16)
    {
      v13 = 2;
      goto LABEL_50;
    }

    if (byte_1F5426773 <= 1u && !byte_1F5426773)
    {
      v13 = 3;
      goto LABEL_49;
    }

    v17 = sub_1D8B16BA0();

    if (v17)
    {
      v13 = 3;
      goto LABEL_50;
    }

    if (byte_1F5426774 <= 1u && !byte_1F5426774)
    {
      v13 = 4;
      goto LABEL_49;
    }

    v19 = sub_1D8B16BA0();

    if ((v19 & 1) == 0)
    {
      goto LABEL_62;
    }

    v13 = 4;
LABEL_50:
    if (((1 << v8) & *&v7) == 1 << v13)
    {

      v22 = v24;
      sub_1D885E538(v3, v24, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v21 = v22;
      v20 = 0;
      return (*(v1 + 56))(v21, v20, 1, v23);
    }

    ++v6;
    result = sub_1D885E3C0(v3, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    if (v25 == v6)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1D88523FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642F8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v98 = &v80 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64300);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v94 = &v80 - v4;
  v5 = sub_1D8B15010();
  v92 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B152F0();
  v95 = *(v7 - 8);
  *&v96 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v80 - v13;
  v15 = sub_1D8B145A0();
  v90 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v80 - v19;
  v93 = sub_1D8B14EA0();
  v97 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D885E420(v0, v25, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = MEMORY[0x1E69E7CC0];
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v98 = *v25;
        v43 = v25[3];
        v44 = v25[4];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FC0);
        v45 = v97;
        v46 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v47 = swift_allocObject();
        v96 = xmmword_1D8B1AB90;
        *(v47 + 16) = xmmword_1D8B1AB90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634F0);
        v48 = v92;
        v49 = (v92[80] + 32) & ~v92[80];
        v50 = swift_allocObject();
        *(v50 + 16) = v96;
        v51 = (v50 + v49);
        *v51 = v43;
        v51[1] = v44;
        v48[13]();
        *(v47 + v46) = v50;
        (*(v45 + 104))(v47 + v46, *MEMORY[0x1E69DFB28], v93);

        return v47;
      }

      return v27;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1D881F6FC(v25, v14, &qword_1ECA641B0);
      sub_1D87A0E38(v14, v12, &qword_1ECA641B0);
      v52 = type metadata accessor for VisualLookupClassifier.Result(0);
      if ((*(*(v52 - 8) + 48))(v12, 1, v52) == 1)
      {
        sub_1D87A14E4(v12, &qword_1ECA641B0);
      }

      else
      {
        v79 = *&v12[*(v52 + 32)];

        sub_1D885E3C0(v12, type metadata accessor for VisualLookupClassifier.Result);
        if (v79)
        {
        }
      }

      sub_1D87A14E4(v14, &qword_1ECA641B0);
    }

    else
    {
      v28 = *v25;
      v29 = *(*v25 + 2);
      if (v29)
      {
        v99 = MEMORY[0x1E69E7CC0];
        sub_1D87F42D4(0, v29, 0);
        v30 = v99;
        LODWORD(v96) = *MEMORY[0x1E69DFB30];
        v94 = (v97 + 32);
        v95 = v97 + 104;
        v92 = v28;
        v31 = v28 + 64;
        v32 = v93;
        v33 = v22;
        do
        {
          v98 = v29;
          v34 = *(v31 - 4);

          v35 = v34;

          v36 = [v35 identifierString];
          sub_1D8B15970();

          sub_1D8B150A0();

          (*v95)(v33, v96, v32);
          v99 = v30;
          v38 = *(v30 + 16);
          v37 = *(v30 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1D87F42D4(v37 > 1, v38 + 1, 1);
            v30 = v99;
          }

          v31 += 40;
          *(v30 + 16) = v38 + 1;
          (*(v97 + 32))(v30 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v38, v33, v32);
          v29 = v98 - 1;
        }

        while (v98 != 1);

        return v30;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  if ((EnumCaseMultiPayload - 6) < 4)
  {
    return v27;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v39 = v90;
    (*(v90 + 4))(v20, v25, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FC0);
    v40 = v97;
    v41 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1D8B1AB90;
    (*(v39 + 2))(v18, v20, v15);
    sub_1D8B150B0();
    (*(v40 + 104))(v42 + v41, *MEMORY[0x1E69DFB18], v93);
    (*(v39 + 1))(v20, v15);
    return v42;
  }

  v88 = v5;
  v53 = *v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FC0);
  v82 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1D8B1AB90;
  v54 = v53 + 56;
  v55 = 1 << v53[32];
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v53 + 7);
  v58 = (v55 + 63) >> 6;
  v59 = (v95 + 8);
  v86 = (v92 + 48);
  v87 = v95 + 16;
  v81 = (v92 + 32);
  v85 = (v92 + 56);
  v90 = v53;

  v61 = 0;
  v84 = MEMORY[0x1E69E7CC0];
  v62 = v96;
  v63 = v91;
  while (v57)
  {
LABEL_27:
    v66 = __clz(__rbit64(v57));
    v57 &= v57 - 1;
    (*(v95 + 16))(v63, *(v90 + 6) + *(v95 + 72) * (v66 | (v61 << 6)), v62);
    sub_1D8B152B0();
    v67 = v98;
    v68 = sub_1D8B15240();
    v69 = *(v68 - 8);
    if ((*(v69 + 48))(v67, 1, v68) == 1)
    {
      (*v59)(v63, v62);
      sub_1D87A14E4(v67, &qword_1ECA642F8);
      v64 = v94;
      (*v85)(v94, 1, 1, v88);
      goto LABEL_21;
    }

    v70 = v94;
    sub_1D8B15200();
    v71 = v98;
    (*v59)(v63, v96);
    v72 = v68;
    v64 = v70;
    v62 = v96;
    (*(v69 + 8))(v71, v72);
    if ((*v86)(v64, 1, v88) == 1)
    {
LABEL_21:
      result = sub_1D87A14E4(v64, &qword_1ECA64300);
    }

    else
    {
      v73 = *v81;
      (*v81)(v89, v64, v88);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_1D87C7EB8(0, *(v84 + 2) + 1, 1, v84);
      }

      v75 = *(v84 + 2);
      v74 = *(v84 + 3);
      if (v75 >= v74 >> 1)
      {
        v84 = sub_1D87C7EB8(v74 > 1, v75 + 1, 1, v84);
      }

      v76 = v84;
      *(v84 + 2) = v75 + 1;
      result = v73(&v76[((v92[80] + 32) & ~v92[80]) + *(v92 + 9) * v75], v89, v88);
    }
  }

  while (1)
  {
    v65 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v65 >= v58)
    {

      v77 = v82;
      v78 = v83;
      *(v83 + v82) = v84;
      (*(v97 + 104))(v78 + v77, *MEMORY[0x1E69DFB28], v93);
      return v78;
    }

    v57 = *&v54[8 * v65];
    ++v61;
    if (v57)
    {
      v61 = v65;
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

char sub_1D8853008()
{
  v1 = sub_1D8B15050();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v3 = *(v0 + *(v2 + 44));
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  LOBYTE(v2) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v3 + 32));
  if (v7 == 181)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  LOBYTE(v2) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
  if (!*(v3 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  LOBYTE(v2) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v3 + 32));
  if (v6 == 181)
  {
LABEL_9:
    __break(1u);
    return v2;
  }

  v4 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.categories.getter();
  sub_1D881F800(v4);

  sub_1D8854004();
  LOBYTE(v2) = sub_1D8B14FD0();
  return v2;
}

uint64_t sub_1D8853168(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v30 - v6);
  v8 = type metadata accessor for BundleClassification.ClassificationType(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  sub_1D87A0E38(a1, &v30 - v18, &qword_1ECA63F98);
  v20 = *(v14 + 48);
  sub_1D885E420(&v19[v20], v13, type metadata accessor for BundleClassification.ClassificationType);
  sub_1D885E3C0(&v19[v20], type metadata accessor for BundleClassification);
  BundleClassification.ClassificationType.builtInAction.getter(v7);
  sub_1D885E3C0(v13, type metadata accessor for BundleClassification.ClassificationType);
  v21 = type metadata accessor for BuiltInAction(0);
  v22 = *(*(v21 - 8) + 48);
  result = v22(v7, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = sub_1D87EC3AC();
    sub_1D885E3C0(v7, type metadata accessor for BuiltInAction);
    sub_1D87A0E38(v32, v17, &qword_1ECA63F98);
    v24 = *(v14 + 48);
    sub_1D885E420(&v17[v24], v11, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D885E3C0(&v17[v24], type metadata accessor for BundleClassification);
    v25 = v33;
    BundleClassification.ClassificationType.builtInAction.getter(v33);
    sub_1D885E3C0(v11, type metadata accessor for BundleClassification.ClassificationType);
    result = v22(v25, 1, v21);
    if (result != 1)
    {
      v26 = sub_1D87EC3AC();
      sub_1D885E3C0(v25, type metadata accessor for BuiltInAction);
      v27 = v26 < v31;
      v28 = sub_1D8B14D80();
      v29 = *(*(v28 - 8) + 8);
      v29(v17, v28);
      v29(v19, v28);
      return v27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8853530@<X0>(char *a1@<X1>, void *a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for TextDetectorResult(0);
  v4 = *(v3 - 8);
  v73 = v3;
  v74 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13240();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v83 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1D8B14EA0();
  v9 = *(v82 - 8);
  v10 = MEMORY[0x1EEE9AC00](v82);
  v72 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v79 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v59 - v14;
  v81 = sub_1D8B14EB0();
  v15 = *(v81 - 8);
  v16 = MEMORY[0x1EEE9AC00](v81);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - v19;
  v21 = sub_1D88523FC();
  v22 = *(v21 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  v63 = v6;
  v80 = v15;
  v62 = v18;
  if (v22)
  {
    v69 = a1;
    v85 = MEMORY[0x1E69E7CC0];
    v24 = v21;
    sub_1D87F4358(0, v22, 0);
    v25 = v85;
    v67 = v24;
    v68 = v9;
    v26 = v9 + 16;
    v27 = *(v9 + 16);
    v28 = v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v75 = *(v26 + 56);
    v76 = v27;
    v77 = v26;
    v70 = v15 + 32;
    v71 = (v26 - 8);
    do
    {
      v29 = v78;
      v30 = v82;
      v31 = v76;
      (v76)(v78, v28, v82);
      v31(v79, v29, v30);
      sub_1D8B13230();
      LOBYTE(v84) = 1;
      sub_1D8B14E90();
      (*v71)(v29, v30);
      v85 = v25;
      v33 = *(v25 + 2);
      v32 = *(v25 + 3);
      if (v33 >= v32 >> 1)
      {
        sub_1D87F4358(v32 > 1, v33 + 1, 1);
        v25 = v85;
      }

      *(v25 + 2) = v33 + 1;
      v15 = v80;
      (*(v80 + 32))(&v25[((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v33], v20, v81);
      v28 += v75;
      --v22;
    }

    while (v22);
    v60 = v25;

    v6 = v63;
    v18 = v62;
    v23 = MEMORY[0x1E69E7CC0];
    v9 = v68;
  }

  else
  {

    v60 = MEMORY[0x1E69E7CC0];
  }

  v34 = CVBundle.textDetectorResults.getter();
  v35 = v34[2];
  if (v35)
  {
    v85 = v23;
    v36 = v34;
    sub_1D87F4358(0, v35, 0);
    result = v36;
    v38 = 0;
    v39 = v85;
    v69 = v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    LODWORD(v68) = *MEMORY[0x1E69DFBA0];
    LODWORD(v67) = *MEMORY[0x1E69DFB28];
    v65 = v15 + 32;
    v66 = (v9 + 104);
    v64 = xmmword_1D8B1AB90;
    v70 = v35;
    v71 = v36;
    while (v38 < *(result + 16))
    {
      v78 = v38;
      v79 = v39;
      sub_1D885E420(&v69[*(v74 + 72) * v38], v6, type metadata accessor for TextDetectorResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634F0);
      v77 = sub_1D8B15010();
      v40 = *(v77 - 8);
      v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = v64;
      v42 = *&v6[*(v73 + 44)];
      v43 = *(v42 + 16);
      if (v43)
      {
        v75 = v41;
        v84 = v23;
        sub_1D87F3F54(0, v43, 0);
        v44 = v84;
        v45 = (v42 + 48);
        do
        {
          v46 = *(v45 - 1);
          v47 = *v45;
          v84 = v44;
          v49 = *(v44 + 2);
          v48 = *(v44 + 3);

          if (v49 >= v48 >> 1)
          {
            sub_1D87F3F54((v48 > 1), v49 + 1, 1);
            v44 = v84;
          }

          *(v44 + 2) = v49 + 1;
          v50 = &v44[16 * v49];
          *(v50 + 4) = v46;
          *(v50 + 5) = v47;
          v45 += 5;
          --v43;
        }

        while (v43);
        v6 = v63;
        v18 = v62;
        v41 = v75;
      }

      else
      {
        v44 = v23;
      }

      v51 = v76;
      v52 = (v76 + v41);
      v84 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
      v53 = sub_1D8B15810();
      v55 = v54;

      *v52 = v53;
      v52[1] = v55;
      (*(v40 + 104))(v52, v68, v77);
      v56 = v72;
      *v72 = v51;
      (*v66)(v56, v67, v82);
      sub_1D8B13230();
      LOBYTE(v84) = 1;
      sub_1D8B14E90();
      sub_1D885E3C0(v6, type metadata accessor for TextDetectorResult);
      v39 = v79;
      v85 = v79;
      v58 = *(v79 + 2);
      v57 = *(v79 + 3);
      if (v58 >= v57 >> 1)
      {
        sub_1D87F4358(v57 > 1, v58 + 1, 1);
        v39 = v85;
      }

      v38 = (v78 + 1);
      *(v39 + 16) = v58 + 1;
      (*(v80 + 32))(v39 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v58, v18, v81);
      result = v71;
      v23 = MEMORY[0x1E69E7CC0];
      if (v38 == v70)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {

    v39 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v85 = v60;
    result = sub_1D88F3BB0(v39);
    *v61 = v85;
  }

  return result;
}

uint64_t sub_1D8853D68()
{
  v0 = sub_1D8B13240();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D8B14EA0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11[-v6];
  CVBundle.latestEstimate.getter(&v12);
  if (v12 >> 60)
  {

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = swift_projectBox();
    sub_1D87A0E38(v8, v7, &qword_1ECA67750);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634E8);
    sub_1D8B14EB0();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D8B1AB90;
    sub_1D8853008();
    (*(v2 + 104))(v4, *MEMORY[0x1E69DFB20], v1);
    sub_1D8B13230();
    v11[4] = 1;
    sub_1D8B14E90();
    sub_1D87A14E4(v7, &qword_1ECA67750);
    return v9;
  }
}

uint64_t sub_1D8854004()
{
  v1 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750) + 48));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v4 = sub_1D87F4010(0, v2, 0);
    v8 = 0;
    v3 = v13;
    while (v8 < *(v1 + 16))
    {
      v9 = *(v1 + 32 + 2 * v8);
      v14 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        v4 = sub_1D87F4010((v10 > 1), v11 + 1, 1);
        v3 = v14;
      }

      ++v8;
      *(v3 + 16) = v11 + 1;
      *(v3 + 2 * v11 + 32) = v9;
      if (v2 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v4 = 0x6E69646E756F7267;
    v5 = 0xE900000000000067;
    v6 = 3223094;
    v7 = 0xE300000000000000;
  }

  return MEMORY[0x1EEE4F260](v4, v5, v6, v7, v3);
}

uint64_t sub_1D8854138@<X0>(char *a1@<X8>)
{
  v2 = sub_1D8B14DB0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B14DD0();
  v6 = sub_1D8B14D90();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_1D8854220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v64 = a3;
  v4 = type metadata accessor for ActionPin.Pill(0);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642A0);
  MEMORY[0x1EEE9AC00](v55);
  v61 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641A0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v56 = (&v51 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v57 = (&v51 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64270);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v51 - v23;
  v25 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v62 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87A0E38(a1, v18, &qword_1ECA640E0);
  v28 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v29 = *(*(v28 - 8) + 48);
  v30 = v29(v18, 1, v28);
  v63 = v26;
  if (v30 != 1)
  {
    sub_1D8851AE0(v24);
    sub_1D885E3C0(v18, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    v31 = *(v26 + 48);
    if (v31(v24, 1, v25) == 1)
    {
      goto LABEL_4;
    }

    v52 = v25;
    sub_1D885E538(v24, v62, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    sub_1D87A0E38(v54, v16, &qword_1ECA640E0);
    if (v29(v16, 1, v28) == 1)
    {
      sub_1D87A14E4(v16, &qword_1ECA640E0);
      v36 = 1;
      v38 = v59;
      v37 = v60;
      v40 = v57;
      v39 = v58;
      v41 = v56;
    }

    else
    {
      sub_1D8851AE0(v22);
      sub_1D885E3C0(v16, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v42 = v31(v22, 1, v52);
      v37 = v60;
      v39 = v58;
      v41 = v56;
      if (v42 == 1)
      {
        sub_1D87A14E4(v22, &qword_1ECA64270);
        v36 = 1;
        v38 = v59;
        v40 = v57;
      }

      else
      {
        v40 = v57;
        sub_1D88353FC(v57);
        sub_1D885E3C0(v22, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v36 = 0;
        v38 = v59;
      }
    }

    v43 = *(v38 + 56);
    v43(v40, v36, 1, v37);
    sub_1D88353FC(v41);
    v43(v41, 0, 1, v37);
    v44 = *(v55 + 48);
    v45 = v61;
    sub_1D87A0E38(v40, v61, &qword_1ECA641A0);
    sub_1D87A0E38(v41, v45 + v44, &qword_1ECA641A0);
    v46 = *(v38 + 48);
    if (v46(v45, 1, v37) == 1)
    {
      sub_1D87A14E4(v41, &qword_1ECA641A0);
      sub_1D87A14E4(v40, &qword_1ECA641A0);
      v47 = v46(v45 + v44, 1, v37);
      v34 = v63;
      if (v47 == 1)
      {
        sub_1D87A14E4(v45, &qword_1ECA641A0);
        v25 = v52;
LABEL_19:
        sub_1D885E3C0(v62, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v32 = 1;
        v33 = v64;
        return (*(v34 + 56))(v33, v32, 1, v25);
      }
    }

    else
    {
      sub_1D87A0E38(v45, v39, &qword_1ECA641A0);
      if (v46(v45 + v44, 1, v37) != 1)
      {
        v49 = v53;
        sub_1D885E538(v45 + v44, v53, type metadata accessor for ActionPin.Pill);
        v50 = _s22VisualIntelligenceCore9ActionPinV4PillV2eeoiySbAE_AEtFZ_0(v39, v49);
        sub_1D885E3C0(v49, type metadata accessor for ActionPin.Pill);
        sub_1D87A14E4(v41, &qword_1ECA641A0);
        sub_1D87A14E4(v40, &qword_1ECA641A0);
        sub_1D885E3C0(v39, type metadata accessor for ActionPin.Pill);
        sub_1D87A14E4(v45, &qword_1ECA641A0);
        v25 = v52;
        v34 = v63;
        if (v50)
        {
          goto LABEL_19;
        }

LABEL_17:
        v48 = v64;
        sub_1D885E538(v62, v64, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v33 = v48;
        v32 = 0;
        return (*(v34 + 56))(v33, v32, 1, v25);
      }

      sub_1D87A14E4(v41, &qword_1ECA641A0);
      sub_1D87A14E4(v40, &qword_1ECA641A0);
      sub_1D885E3C0(v39, type metadata accessor for ActionPin.Pill);
      v34 = v63;
    }

    sub_1D87A14E4(v45, &qword_1ECA642A0);
    v25 = v52;
    goto LABEL_17;
  }

  sub_1D87A14E4(v18, &qword_1ECA640E0);
  (*(v26 + 56))(v24, 1, 1, v25);
LABEL_4:
  sub_1D87A14E4(v24, &qword_1ECA64270);
  v32 = 1;
  v34 = v63;
  v33 = v64;
  return (*(v34 + 56))(v33, v32, 1, v25);
}

uint64_t sub_1D8854A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RefinementState(0);
  v67 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v56 - v8;
  v9 = type metadata accessor for BundleClassification.ClassificationType(0);
  v62 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641C8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v56 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v59 = a1;
  v60 = v7;
  v20 = 0;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v57 = (v24 + 63) >> 6;
  v58 = v22;
  v27 = &qword_1ECA641D0;
  v28 = &unk_1D8B23AE8;
  v65 = &v56 - v18;
  while (v26)
  {
    v29 = __clz(__rbit64(v26));
    v30 = (v26 - 1) & v26;
    v31 = v29 | (v20 << 6);
LABEL_16:
    v36 = v59;
    v37 = v61;
    sub_1D885E420(*(v59 + 48) + *(v62 + 72) * v31, v61, type metadata accessor for BundleClassification.ClassificationType);
    v38 = v66;
    sub_1D885E420(*(v36 + 56) + *(v67 + 72) * v31, v66, type metadata accessor for RefinementState);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(v27);
    v40 = *(v39 + 48);
    sub_1D885E538(v37, v16, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D885E538(v38, &v16[v40], type metadata accessor for RefinementState);
    (*(*(v39 - 8) + 56))(v16, 0, 1, v39);
    v19 = v65;
LABEL_17:
    sub_1D881F6FC(v16, v19, &qword_1ECA641C8);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(v27);
    v42 = (*(*(v41 - 8) + 48))(v19, 1, v41);
    v64 = v42 == 1;
    if (v42 == 1)
    {
      return v64;
    }

    v43 = v30;
    v44 = v28;
    v45 = v27;
    v46 = v16;
    v47 = *(v41 + 48);
    v48 = v63;
    sub_1D885E538(v19, v63, type metadata accessor for BundleClassification.ClassificationType);
    v49 = &v19[v47];
    v50 = v60;
    sub_1D885E538(v49, v60, type metadata accessor for RefinementState);
    v51 = sub_1D87EF6AC(v48);
    LOBYTE(v47) = v52;
    sub_1D885E3C0(v48, type metadata accessor for BundleClassification.ClassificationType);
    if ((v47 & 1) == 0)
    {
      sub_1D885E3C0(v50, type metadata accessor for RefinementState);
      return 0;
    }

    v53 = v66;
    sub_1D885E420(*(a2 + 56) + *(v67 + 72) * v51, v66, type metadata accessor for RefinementState);
    v54 = _s22VisualIntelligenceCore15RefinementStateO2eeoiySbAC_ACtFZ_0(v53, v50);
    sub_1D885E3C0(v53, type metadata accessor for RefinementState);
    result = sub_1D885E3C0(v50, type metadata accessor for RefinementState);
    v16 = v46;
    v19 = v65;
    v27 = v45;
    v28 = v44;
    v26 = v43;
    if ((v54 & 1) == 0)
    {
      return v64;
    }
  }

  if (v57 <= v20 + 1)
  {
    v32 = v20 + 1;
  }

  else
  {
    v32 = v57;
  }

  v33 = v32 - 1;
  while (1)
  {
    v34 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v34 >= v57)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(v27);
      (*(*(v55 - 8) + 56))(v16, 1, 1, v55);
      v30 = 0;
      v20 = v33;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v20;
    if (v35)
    {
      v30 = (v35 - 1) & v35;
      v31 = __clz(__rbit64(v35)) | (v34 << 6);
      v20 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8855000(uint64_t result, uint64_t a2)
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
    v13 = *(v3 + 56) + 8 * v12;
    v14 = *(v13 + 4);
    v15 = v14 == 255;
    if (v14 == 255)
    {
      return v15;
    }

    v16 = *v13;
    result = sub_1D881F7DC(*(*(v3 + 48) + v12));
    if ((v17 & 1) == 0)
    {
      return v15;
    }

    v18 = *(a2 + 56) + 8 * result;
    v19 = *v18;
    v20 = *(v18 + 4);
    if (!v20)
    {
      v21 = v19;
      v22 = v16;
      v23 = v14 == 0;
      goto LABEL_19;
    }

    if (v20 == 1)
    {
      v21 = v19;
      v22 = v16;
      v23 = v14 == 1;
LABEL_19:
      if (!v23 || v21 != v22)
      {
        return v15;
      }
    }

    else if (v14 != 2 || LODWORD(v16) != 0)
    {
      return v15;
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

uint64_t sub_1D8855170(uint64_t a1, uint64_t a2)
{
  v56 = sub_1D8B13240();
  v51 = *(v56 - 8);
  v4 = MEMORY[0x1EEE9AC00](v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641F0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = v46 - v11;
  v12 = 0;
  v47 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v46[0] = v14;
  v46[1] = v51 + 16;
  v54 = (v51 + 32);
  v48 = (v51 + 8);
  while (v18)
  {
    v55 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
    v25 = v47;
    v26 = v50;
    v27 = v51;
    v28 = v56;
    (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v20, v56);
    v29 = *(*(v25 + 56) + 8 * v20);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641F8);
    v31 = *(v30 + 48);
    v32 = *(v27 + 32);
    v33 = v53;
    v32(v53, v26, v28);
    *(v33 + v31) = v29;
    (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
    v34 = v49;
    sub_1D881F6FC(v33, v49, &qword_1ECA641F0);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641F8);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v35 + 48);
    v39 = v52;
    v40 = v56;
    (*v54)(v52, v34, v56);
    v41 = *(v34 + v38);
    sub_1D87EF764(v39);
    LOBYTE(v38) = v42;
    (*v48)(v39, v40);
    if ((v38 & 1) == 0)
    {

      return 0;
    }

    v44 = sub_1D894EFE8(v43, v41);

    v18 = v55;
    if ((v44 & 1) == 0)
    {
      return v37;
    }
  }

  if (v19 <= v12 + 1)
  {
    v21 = v12 + 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641F8);
      v33 = v53;
      (*(*(v45 - 8) + 56))(v53, 1, 1, v45);
      v55 = 0;
      v12 = v22;
      goto LABEL_17;
    }

    v24 = *(v46[0] + 8 * v23);
    ++v12;
    if (v24)
    {
      v55 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v12 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88555FC(uint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 56) + v12);
    v14 = v13 == 3;
    if (v13 != 3)
    {
      result = sub_1D881F7DC(*(*(v3 + 48) + v12));
      if ((v15 & 1) != 0 && *(*(a2 + 56) + result) == v13)
      {
        continue;
      }
    }

    return v14;
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

uint64_t sub_1D885571C(uint64_t result, uint64_t a2)
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

    v20 = sub_1D87EF838(v15, v16);
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
      v25 = sub_1D8B16BA0();

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

uint64_t sub_1D88558C0(void **a1)
{
  v2 = *(type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D885D31C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D8855A1C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D8855968(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D885D330(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D8855B48(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D8855A1C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D8B16B30();
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
        type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
        v6 = sub_1D8B15D60();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D8857104(v8, v9, a1, v4);
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
    return sub_1D8855C8C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D8855B48(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D8B16B30();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98);
        v6 = sub_1D8B15D60();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D885856C(v8, v9, a1, v4);
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
    return sub_1D88563DC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D8855C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = type metadata accessor for ActionPin.Pill(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v73 = (&v56 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v70 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v56 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v72 = &v56 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v71 = &v56 - v23;
  v66 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v24 = MEMORY[0x1EEE9AC00](v66);
  v65 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v79 = &v56 - v27;
  result = MEMORY[0x1EEE9AC00](v26);
  v31 = &v56 - v30;
  v58 = a2;
  if (a3 != a2)
  {
    v69 = v13;
    v32 = *a4;
    v33 = *(v29 + 72);
    v34 = *a4 + v33 * (a3 - 1);
    v63 = -v33;
    v64 = v32;
    v35 = a1 - a3;
    v57 = v33;
    v36 = v32 + v33 * a3;
    v67 = &v56 - v30;
    v68 = v20;
LABEL_6:
    v61 = v34;
    v62 = a3;
    v59 = v36;
    v60 = v35;
    v37 = v35;
    v38 = v73;
    while (1)
    {
      v74 = v37;
      sub_1D885E420(v36, v31, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D885E420(v34, v79, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v39 = sub_1D88353FC(v38);
      if (qword_1EE0E8888 != -1)
      {
        v39 = swift_once();
      }

      MEMORY[0x1EEE9AC00](v39);
      *(&v56 - 2) = v38;
      v40 = v72;
      v78 = v41;
      sub_1D87ED90C(sub_1D886555C, v41, v72);
      v77 = v5;
      v42 = type metadata accessor for BuiltInAction(0);
      v43 = *(v42 - 8);
      v44 = *(v43 + 48);
      if (v44(v40, 1, v42) == 1)
      {
        sub_1D87A14E4(v40, &qword_1ECA63188);
        sub_1D885E3C0(v38, type metadata accessor for ActionPin.Pill);
        v45 = v71;
        v76 = *(v43 + 56);
        v76(v71, 1, 1, v42);
      }

      else
      {
        v46 = v40;
        v45 = v71;
        sub_1D885E538(v46, v71, type metadata accessor for BuiltInAction);
        v76 = *(v43 + 56);
        v76(v45, 0, 1, v42);
        sub_1D885E3C0(v38, type metadata accessor for ActionPin.Pill);
      }

      result = (v44)(v45, 1, v42);
      if (result == 1)
      {
        break;
      }

      v75 = sub_1D87EC3AC();
      sub_1D885E3C0(v45, type metadata accessor for BuiltInAction);
      v47 = v69;
      v48 = sub_1D88353FC(v69);
      MEMORY[0x1EEE9AC00](v48);
      *(&v56 - 2) = v47;
      v49 = v70;
      v50 = v77;
      sub_1D87ED90C(sub_1D886555C, v78, v70);
      v78 = v50;
      if (v44(v49, 1, v42) == 1)
      {
        sub_1D87A14E4(v49, &qword_1ECA63188);
        sub_1D885E3C0(v47, type metadata accessor for ActionPin.Pill);
        v51 = v68;
        v76(v68, 1, 1, v42);
      }

      else
      {
        v51 = v68;
        sub_1D885E538(v49, v68, type metadata accessor for BuiltInAction);
        v76(v51, 0, 1, v42);
        sub_1D885E3C0(v47, type metadata accessor for ActionPin.Pill);
      }

      result = (v44)(v51, 1, v42);
      v38 = v73;
      if (result == 1)
      {
        goto LABEL_23;
      }

      v52 = sub_1D87EC3AC();
      sub_1D885E3C0(v51, type metadata accessor for BuiltInAction);
      sub_1D885E3C0(v79, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v31 = v67;
      result = sub_1D885E3C0(v67, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      if (v52 >= v75)
      {
        v5 = v78;
LABEL_5:
        a3 = v62 + 1;
        v34 = v61 + v57;
        v35 = v60 - 1;
        v36 = v59 + v57;
        if (v62 + 1 == v58)
        {
          return result;
        }

        goto LABEL_6;
      }

      v5 = v78;
      v53 = v74;
      if (!v64)
      {
        goto LABEL_24;
      }

      v54 = v65;
      sub_1D885E538(v36, v65, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D885E538(v54, v34, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v34 += v63;
      v36 += v63;
      v55 = __CFADD__(v53, 1);
      v37 = v53 + 1;
      if (v55)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D88563DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BuiltInAction(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v89 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v88 = (&v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v75 - v16);
  v101 = type metadata accessor for BundleClassification.ClassificationType(0);
  v18 = MEMORY[0x1EEE9AC00](v101);
  v92 = (&v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v100 = &v75 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v93 = (&v75 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v102 = &v75 - v24;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98);
  v25 = MEMORY[0x1EEE9AC00](v103);
  v86 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v98 = &v75 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v99 = &v75 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v104 = &v75 - v32;
  result = MEMORY[0x1EEE9AC00](v31);
  v36 = &v75 - v35;
  v77 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v37 = *a4;
  v38 = *(v34 + 72);
  v96 = (v9 + 56);
  v97 = (v9 + 48);
  v39 = v37 + v38 * (a3 - 1);
  v84 = -v38;
  v85 = v37;
  v40 = a1 - a3;
  v76 = v38;
  v41 = v37 + v38 * a3;
  v91 = v17;
  v87 = &v75 - v35;
LABEL_5:
  v81 = a3;
  v78 = v41;
  v79 = v40;
  v42 = v40;
  v80 = v39;
  while (1)
  {
    sub_1D87A0E38(v41, v36, &qword_1ECA63F98);
    sub_1D87A0E38(v39, v104, &qword_1ECA63F98);
    v43 = v99;
    sub_1D87A0E38(v36, v99, &qword_1ECA63F98);
    v44 = v102;
    v45 = *(v103 + 48);
    sub_1D885E420(v43 + v45, v102, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D885E3C0(v43 + v45, type metadata accessor for BundleClassification);
    sub_1D885E420(v44, v93, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v95 = v42;
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        *v17 = *v93;
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        swift_storeEnumTagMultiPayload();
        v47 = *v96;
        (*v96)(v17, 0, 1, v8);
        sub_1D885E3C0(v93, type metadata accessor for BundleClassification.ClassificationType);
        goto LABEL_20;
      }

      *v17 = *v93;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v48 = *v93;
      v49 = v93[1];
      v50 = v93[2];
      v51 = v93[3];
      v52 = v93[4];

      *v91 = v49;
      v91[1] = v50;
      v91[2] = v51;
      v91[3] = v52;
      v17 = v91;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v47 = *v96;
      (*v96)(v17, 0, 1, v8);
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 3)
    {
      sub_1D885E3C0(v93, type metadata accessor for BundleClassification.ClassificationType);
    }

    v47 = *v96;
    (*v96)(v17, 1, 1, v8);
LABEL_20:
    sub_1D885E3C0(v102, type metadata accessor for BundleClassification.ClassificationType);
    v53 = *v97;
    result = (*v97)(v17, 1, v8);
    if (result == 1)
    {
      break;
    }

    sub_1D885E420(v17, v90, type metadata accessor for BuiltInAction);
    v54 = swift_getEnumCaseMultiPayload();
    v55 = 1000;
    switch(v54)
    {
      case 1:
        sub_1D885E3C0(v90, type metadata accessor for BuiltInAction);
        v55 = 900;
        break;
      case 2:
        sub_1D885E3C0(v90, type metadata accessor for BuiltInAction);
        goto LABEL_27;
      case 3:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
        v56 = v90;

        sub_1D87A14E4(v56, &qword_1ECA635B8);
        goto LABEL_29;
      case 4:
        break;
      case 5:
        v55 = 600;
        break;
      case 6:
      case 13:
      case 14:
LABEL_27:
        v55 = 50;
        break;
      case 7:
        v55 = 350;
        break;
      case 8:
        v55 = 20;
        break;
      case 9:
        v55 = 400;
        break;
      case 10:
        v55 = 850;
        break;
      case 11:
      case 12:
        v55 = 100;
        break;
      case 15:
      case 16:
LABEL_29:
        v55 = 0;
        break;
      default:
        sub_1D885E3C0(v90, type metadata accessor for BuiltInAction);
        v55 = 700;
        break;
    }

    v94 = v55;
    sub_1D885E3C0(v17, type metadata accessor for BuiltInAction);
    v57 = v98;
    sub_1D87A0E38(v104, v98, &qword_1ECA63F98);
    v58 = *(v103 + 48);
    v59 = v100;
    sub_1D885E420(v57 + v58, v100, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D885E3C0(v57 + v58, type metadata accessor for BundleClassification);
    sub_1D885E420(v59, v92, type metadata accessor for BundleClassification.ClassificationType);
    v60 = swift_getEnumCaseMultiPayload();
    if (v60 > 4)
    {
      v61 = v88;
      if (v60 == 5)
      {
        *v88 = *v92;
      }

LABEL_47:
      swift_storeEnumTagMultiPayload();
      v62 = v61;
      v63 = 0;
      goto LABEL_48;
    }

    v61 = v88;
    if (v60 > 1)
    {
      if (v60 == 2)
      {
        v65 = *v92;
        v64 = v92[1];
        v66 = v92[2];
        v83 = v92[3];
        v82 = v92[4];

        v61 = v88;
        *v88 = v64;
        v61[1] = v66;
        v67 = v82;
        v61[2] = v83;
        v61[3] = v67;
        goto LABEL_47;
      }

      if (v60 != 3)
      {
        sub_1D885E3C0(v92, type metadata accessor for BundleClassification.ClassificationType);
      }

      v62 = v61;
      v63 = 1;
LABEL_48:
      v47(v62, v63, 1, v8);
      goto LABEL_49;
    }

    if (!v60)
    {
      *v88 = *v92;
      goto LABEL_47;
    }

    swift_storeEnumTagMultiPayload();
    v47(v61, 0, 1, v8);
    sub_1D885E3C0(v92, type metadata accessor for BundleClassification.ClassificationType);
LABEL_49:
    sub_1D885E3C0(v100, type metadata accessor for BundleClassification.ClassificationType);
    result = v53(v61, 1, v8);
    v68 = v95;
    if (result == 1)
    {
      goto LABEL_69;
    }

    sub_1D885E420(v61, v89, type metadata accessor for BuiltInAction);
    v69 = 1000;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1D885E3C0(v89, type metadata accessor for BuiltInAction);
        v69 = 900;
        break;
      case 2u:
        sub_1D885E3C0(v89, type metadata accessor for BuiltInAction);
        goto LABEL_56;
      case 3u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
        v70 = v89;

        sub_1D87A14E4(v70, &qword_1ECA635B8);
        goto LABEL_58;
      case 4u:
        break;
      case 5u:
        v69 = 600;
        break;
      case 6u:
      case 0xDu:
      case 0xEu:
LABEL_56:
        v69 = 50;
        break;
      case 7u:
        v69 = 350;
        break;
      case 8u:
        v69 = 20;
        break;
      case 9u:
        v69 = 400;
        break;
      case 0xAu:
        v69 = 850;
        break;
      case 0xBu:
      case 0xCu:
        v69 = 100;
        break;
      case 0xFu:
      case 0x10u:
LABEL_58:
        v69 = 0;
        break;
      default:
        sub_1D885E3C0(v89, type metadata accessor for BuiltInAction);
        v69 = 700;
        break;
    }

    sub_1D885E3C0(v61, type metadata accessor for BuiltInAction);
    v71 = sub_1D8B14D80();
    v72 = *(*(v71 - 8) + 8);
    v72(v98, v71);
    v72(v99, v71);
    sub_1D87A14E4(v104, &qword_1ECA63F98);
    v36 = v87;
    result = sub_1D87A14E4(v87, &qword_1ECA63F98);
    v17 = v91;
    if (v69 < v94)
    {
      if (!v85)
      {
        goto LABEL_70;
      }

      v73 = v86;
      sub_1D881F6FC(v41, v86, &qword_1ECA63F98);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D881F6FC(v73, v39, &qword_1ECA63F98);
      v39 += v84;
      v41 += v84;
      v74 = __CFADD__(v68, 1);
      v42 = v68 + 1;
      if (!v74)
      {
        continue;
      }
    }

    a3 = v81 + 1;
    v39 = v80 + v76;
    v40 = v79 - 1;
    v41 = v78 + v76;
    if (v81 + 1 == v77)
    {
      return result;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_1D8857104(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v159 = a1;
  v8 = type metadata accessor for ActionPin.Pill(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v184 = (&v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v154 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v169 = (&v154 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v154 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v183 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v182 = &v154 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v186 = &v154 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v185 = &v154 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v168 = &v154 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v167 = &v154 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v171 = &v154 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v170 = &v154 - v33;
  v181 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v173 = *(v181 - 8);
  v34 = MEMORY[0x1EEE9AC00](v181);
  v162 = &v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v180 = &v154 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v194 = &v154 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v193 = &v154 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v177 = &v154 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v175 = &v154 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  result = MEMORY[0x1EEE9AC00](v46);
  v174 = a3;
  v50 = *(a3 + 8);
  if (v50 >= 1)
  {
    v155 = &v154 - v48;
    v156 = v49;
    v51 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v158 = a4;
    v187 = v13;
    v172 = v17;
    while (1)
    {
      v53 = v51;
      v54 = v51 + 1;
      v163 = v52;
      if (v51 + 1 >= v50)
      {
        v61 = v51 + 1;
        goto LABEL_35;
      }

      v176 = v50;
      v55 = *v174;
      v56 = *(v173 + 72);
      v192 = *v174 + v56 * v54;
      a3 = v53;
      v57 = v155;
      sub_1D885E420(v192, v155, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v58 = v156;
      sub_1D885E420(v55 + v56 * a3, v156, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      LODWORD(v178) = sub_1D8845324(v57, v58);
      if (v5)
      {
        break;
      }

      sub_1D885E3C0(v58, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      result = sub_1D885E3C0(v57, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v157 = a3;
      v59 = a3 + 2;
      v60 = v55 + v56 * (a3 + 2);
      v61 = v176;
      v62 = v56;
      v179 = v56;
      v63 = v192;
      do
      {
        if (v61 == v59)
        {
          goto LABEL_21;
        }

        v189 = v59;
        sub_1D885E420(v60, v175, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v192 = v63;
        sub_1D885E420(v63, v177, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v64 = sub_1D88353FC(v17);
        if (qword_1EE0E8888 != -1)
        {
          v64 = swift_once();
        }

        v65 = off_1EE0E8890;
        MEMORY[0x1EEE9AC00](v64);
        *(&v154 - 2) = v17;
        v66 = v171;
        sub_1D87ED90C(sub_1D886555C, v65, v171);
        v191 = v5;
        v67 = type metadata accessor for BuiltInAction(0);
        v68 = *(v67 - 8);
        v69 = *(v68 + 48);
        if (v69(v66, 1, v67) == 1)
        {
          sub_1D87A14E4(v66, &qword_1ECA63188);
          sub_1D885E3C0(v17, type metadata accessor for ActionPin.Pill);
          v70 = v170;
          v190 = *(v68 + 56);
          v190(v170, 1, 1, v67);
        }

        else
        {
          v70 = v170;
          sub_1D885E538(v66, v170, type metadata accessor for BuiltInAction);
          v190 = *(v68 + 56);
          v190(v70, 0, 1, v67);
          sub_1D885E3C0(v17, type metadata accessor for ActionPin.Pill);
        }

        result = (v69)(v70, 1, v67);
        if (result == 1)
        {
          goto LABEL_158;
        }

        v188 = sub_1D87EC3AC();
        sub_1D885E3C0(v70, type metadata accessor for BuiltInAction);
        v71 = v169;
        v72 = sub_1D88353FC(v169);
        MEMORY[0x1EEE9AC00](v72);
        *(&v154 - 2) = v71;
        v73 = v168;
        v74 = v191;
        sub_1D87ED90C(sub_1D886555C, v65, v168);
        a3 = v74;
        if (v69(v73, 1, v67) == 1)
        {
          sub_1D87A14E4(v73, &qword_1ECA63188);
          sub_1D885E3C0(v71, type metadata accessor for ActionPin.Pill);
          v75 = v167;
          v190(v167, 1, 1, v67);
        }

        else
        {
          v76 = v73;
          v75 = v167;
          sub_1D885E538(v76, v167, type metadata accessor for BuiltInAction);
          v190(v75, 0, 1, v67);
          sub_1D885E3C0(v71, type metadata accessor for ActionPin.Pill);
        }

        result = (v69)(v75, 1, v67);
        v13 = v187;
        v17 = v172;
        if (result == 1)
        {
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        v5 = v74;
        v77 = v75;
        v78 = sub_1D87EC3AC();
        sub_1D885E3C0(v77, type metadata accessor for BuiltInAction);
        sub_1D885E3C0(v177, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        result = sub_1D885E3C0(v175, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v59 = v189 + 1;
        v62 = v179;
        v60 += v179;
        v63 = v192 + v179;
        v61 = v176;
      }

      while (((v178 ^ (v78 >= v188)) & 1) != 0);
      v61 = v189;
LABEL_21:
      a4 = v158;
      v53 = v157;
      if (v178)
      {
        if (v61 >= v157)
        {
          if (v157 < v61)
          {
            a3 = v62 * (v61 - 1);
            v79 = v61 * v62;
            v176 = v61;
            v80 = v157 * v62;
            do
            {
              if (v53 != --v61)
              {
                v81 = *v174;
                if (!*v174)
                {
                  goto LABEL_161;
                }

                sub_1D885E538(v81 + v80, v162, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
                if (v80 < a3 || v81 + v80 >= (v81 + v79))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v80 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_1D885E538(v162, v81 + a3, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
                v62 = v179;
              }

              ++v53;
              a3 -= v62;
              v79 -= v62;
              v80 += v62;
            }

            while (v53 < v61);
            a4 = v158;
            v53 = v157;
            v61 = v176;
          }

          goto LABEL_35;
        }

LABEL_153:
        __break(1u);
LABEL_154:
        result = sub_1D885CC68(a4);
        goto LABEL_121;
      }

LABEL_35:
      v82 = v174[1];
      if (v61 >= v82)
      {
        goto LABEL_44;
      }

      if (__OFSUB__(v61, v53))
      {
        goto LABEL_150;
      }

      if (v61 - v53 >= a4)
      {
        goto LABEL_44;
      }

      if (__OFADD__(v53, a4))
      {
        goto LABEL_151;
      }

      if ((v53 + a4) >= v82)
      {
        v83 = v174[1];
      }

      else
      {
        v83 = v53 + a4;
      }

      if (v83 < v53)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      if (v61 == v83)
      {
LABEL_44:
        v51 = v61;
        if (v61 < v53)
        {
          goto LABEL_149;
        }
      }

      else
      {
        v128 = *v174;
        v129 = *(v173 + 72);
        v130 = *v174 + v129 * (v61 - 1);
        v178 = -v129;
        v157 = v53;
        v131 = v53 - v61;
        v179 = v128;
        v160 = v129;
        v132 = v128 + v61 * v129;
        v161 = v83;
        do
        {
          v176 = v61;
          v164 = v132;
          v165 = v131;
          v133 = v131;
          v166 = v130;
          v134 = v130;
          while (1)
          {
            v188 = v133;
            sub_1D885E420(v132, v193, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
            sub_1D885E420(v134, v194, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
            v135 = sub_1D88353FC(v13);
            if (qword_1EE0E8888 != -1)
            {
              v135 = swift_once();
            }

            MEMORY[0x1EEE9AC00](v135);
            *(&v154 - 2) = v13;
            v136 = v186;
            v192 = v137;
            sub_1D87ED90C(sub_1D881CA7C, v137, v186);
            v191 = v5;
            v138 = type metadata accessor for BuiltInAction(0);
            v139 = *(v138 - 8);
            v140 = *(v139 + 48);
            if (v140(v136, 1, v138) == 1)
            {
              sub_1D87A14E4(v136, &qword_1ECA63188);
              sub_1D885E3C0(v13, type metadata accessor for ActionPin.Pill);
              v141 = *(v139 + 56);
              v142 = v185;
              v141(v185, 1, 1, v138);
            }

            else
            {
              v143 = v136;
              v142 = v185;
              sub_1D885E538(v143, v185, type metadata accessor for BuiltInAction);
              v141 = *(v139 + 56);
              v141(v142, 0, 1, v138);
              sub_1D885E3C0(v13, type metadata accessor for ActionPin.Pill);
            }

            result = (v140)(v142, 1, v138);
            if (result == 1)
            {
              goto LABEL_156;
            }

            v190 = v141;
            v189 = sub_1D87EC3AC();
            sub_1D885E3C0(v142, type metadata accessor for BuiltInAction);
            v144 = v184;
            v145 = sub_1D88353FC(v184);
            MEMORY[0x1EEE9AC00](v145);
            *(&v154 - 2) = v144;
            v146 = v183;
            v147 = v191;
            sub_1D87ED90C(sub_1D886555C, v192, v183);
            v192 = v147;
            if (v140(v146, 1, v138) == 1)
            {
              sub_1D87A14E4(v146, &qword_1ECA63188);
              sub_1D885E3C0(v144, type metadata accessor for ActionPin.Pill);
              a3 = v182;
              v190(v182, 1, 1, v138);
            }

            else
            {
              a3 = v182;
              sub_1D885E538(v146, v182, type metadata accessor for BuiltInAction);
              v190(a3, 0, 1, v138);
              sub_1D885E3C0(v144, type metadata accessor for ActionPin.Pill);
            }

            result = (v140)(a3, 1, v138);
            v13 = v187;
            if (result == 1)
            {
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
              goto LABEL_159;
            }

            a4 = sub_1D87EC3AC();
            sub_1D885E3C0(a3, type metadata accessor for BuiltInAction);
            sub_1D885E3C0(v194, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
            result = sub_1D885E3C0(v193, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
            if (a4 >= v189)
            {
              break;
            }

            v5 = v192;
            v148 = v188;
            if (!v179)
            {
              goto LABEL_157;
            }

            a4 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action;
            a3 = v180;
            sub_1D885E538(v132, v180, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
            swift_arrayInitWithTakeFrontToBack();
            sub_1D885E538(a3, v134, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
            v134 += v178;
            v132 += v178;
            v149 = __CFADD__(v148, 1);
            v133 = v148 + 1;
            if (v149)
            {
              goto LABEL_96;
            }
          }

          v5 = v192;
LABEL_96:
          v61 = v176 + 1;
          v130 = v166 + v160;
          v131 = v165 - 1;
          v132 = v164 + v160;
          v51 = v161;
        }

        while (v176 + 1 != v161);
        v53 = v157;
        if (v161 < v157)
        {
          goto LABEL_149;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v52 = v163;
      }

      else
      {
        result = sub_1D87C7C5C(0, *(v163 + 2) + 1, 1, v163);
        v52 = result;
      }

      a3 = *(v52 + 2);
      v84 = *(v52 + 3);
      a4 = a3 + 1;
      if (a3 >= v84 >> 1)
      {
        result = sub_1D87C7C5C((v84 > 1), a3 + 1, 1, v52);
        v52 = result;
      }

      *(v52 + 2) = a4;
      v85 = &v52[16 * a3];
      *(v85 + 4) = v53;
      *(v85 + 5) = v51;
      v86 = *v159;
      if (!*v159)
      {
        goto LABEL_163;
      }

      if (a3)
      {
        while (1)
        {
          v87 = a4 - 1;
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v88 = *(v52 + 4);
            v89 = *(v52 + 5);
            v98 = __OFSUB__(v89, v88);
            v90 = v89 - v88;
            v91 = v98;
LABEL_64:
            if (v91)
            {
              goto LABEL_138;
            }

            v104 = &v52[16 * a4];
            v106 = *v104;
            v105 = *(v104 + 1);
            v107 = __OFSUB__(v105, v106);
            v108 = v105 - v106;
            v109 = v107;
            if (v107)
            {
              goto LABEL_141;
            }

            v110 = &v52[16 * v87 + 32];
            v112 = *v110;
            v111 = *(v110 + 1);
            v98 = __OFSUB__(v111, v112);
            v113 = v111 - v112;
            if (v98)
            {
              goto LABEL_144;
            }

            if (__OFADD__(v108, v113))
            {
              goto LABEL_145;
            }

            if (v108 + v113 >= v90)
            {
              if (v90 < v113)
              {
                v87 = a4 - 2;
              }

              goto LABEL_85;
            }

            goto LABEL_78;
          }

          v114 = &v52[16 * a4];
          v116 = *v114;
          v115 = *(v114 + 1);
          v98 = __OFSUB__(v115, v116);
          v108 = v115 - v116;
          v109 = v98;
LABEL_78:
          if (v109)
          {
            goto LABEL_140;
          }

          v117 = &v52[16 * v87];
          v119 = *(v117 + 4);
          v118 = *(v117 + 5);
          v98 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v98)
          {
            goto LABEL_143;
          }

          if (v120 < v108)
          {
            goto LABEL_3;
          }

LABEL_85:
          a3 = v87 - 1;
          if (v87 - 1 >= a4)
          {
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
LABEL_142:
            __break(1u);
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
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

          if (!*v174)
          {
            goto LABEL_160;
          }

          v125 = v52;
          a4 = *&v52[16 * a3 + 32];
          v126 = *&v52[16 * v87 + 40];
          sub_1D885A588(*v174 + *(v173 + 72) * a4, *v174 + *(v173 + 72) * *&v52[16 * v87 + 32], *v174 + *(v173 + 72) * v126, v86);
          if (v5)
          {
          }

          if (v126 < a4)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_1D885CC68(v125);
          }

          if (a3 >= *(v125 + 2))
          {
            goto LABEL_135;
          }

          v127 = &v125[16 * a3];
          *(v127 + 4) = a4;
          *(v127 + 5) = v126;
          v195 = v125;
          result = sub_1D885CBDC(v87);
          v52 = v195;
          a4 = *(v195 + 16);
          if (a4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v92 = &v52[16 * a4 + 32];
        v93 = *(v92 - 64);
        v94 = *(v92 - 56);
        v98 = __OFSUB__(v94, v93);
        v95 = v94 - v93;
        if (v98)
        {
          goto LABEL_136;
        }

        v97 = *(v92 - 48);
        v96 = *(v92 - 40);
        v98 = __OFSUB__(v96, v97);
        v90 = v96 - v97;
        v91 = v98;
        if (v98)
        {
          goto LABEL_137;
        }

        v99 = &v52[16 * a4];
        v101 = *v99;
        v100 = *(v99 + 1);
        v98 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v98)
        {
          goto LABEL_139;
        }

        v98 = __OFADD__(v90, v102);
        v103 = v90 + v102;
        if (v98)
        {
          goto LABEL_142;
        }

        if (v103 >= v95)
        {
          v121 = &v52[16 * v87 + 32];
          v123 = *v121;
          v122 = *(v121 + 1);
          v98 = __OFSUB__(v122, v123);
          v124 = v122 - v123;
          if (v98)
          {
            goto LABEL_146;
          }

          if (v90 < v124)
          {
            v87 = a4 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_64;
      }

LABEL_3:
      v50 = v174[1];
      a4 = v158;
      v17 = v172;
      if (v51 >= v50)
      {
        goto LABEL_118;
      }
    }

    sub_1D885E3C0(v58, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    sub_1D885E3C0(v57, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_118:
  a3 = *v159;
  if (*v159)
  {
    a4 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_154;
    }

    result = a4;
LABEL_121:
    v195 = result;
    a4 = *(result + 16);
    if (a4 < 2)
    {
    }

    while (*v174)
    {
      v150 = *(result + 16 * a4);
      v151 = result;
      v152 = *(result + 16 * (a4 - 1) + 40);
      sub_1D885A588(*v174 + *(v173 + 72) * v150, *v174 + *(v173 + 72) * *(result + 16 * (a4 - 1) + 32), *v174 + *(v173 + 72) * v152, a3);
      if (v5)
      {
      }

      if (v152 < v150)
      {
        goto LABEL_147;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v151 = sub_1D885CC68(v151);
      }

      if (a4 - 2 >= *(v151 + 2))
      {
        goto LABEL_148;
      }

      v153 = &v151[16 * a4];
      *v153 = v150;
      *(v153 + 1) = v152;
      v195 = v151;
      sub_1D885CBDC(a4 - 1);
      result = v195;
      a4 = *(v195 + 16);
      if (a4 <= 1)
      {
      }
    }

LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D885856C(unint64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v5 = v4;
  v209 = a1;
  v236 = type metadata accessor for BuiltInAction(0);
  v8 = *(v236 - 8);
  v9 = MEMORY[0x1EEE9AC00](v236);
  v237 = &v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v238 = &v202 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v216 = &v202 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v217 = &v202 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v239 = (&v202 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v240 = (&v202 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v230 = (&v202 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v231 = (&v202 - v23);
  v253 = type metadata accessor for BundleClassification.ClassificationType(0);
  v24 = MEMORY[0x1EEE9AC00](v253);
  v242 = (&v202 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v24);
  v249 = &v202 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v243 = (&v202 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v250 = &v202 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v219 = (&v202 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v227 = &v202 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v220 = (&v202 - v37);
  MEMORY[0x1EEE9AC00](v36);
  v228 = &v202 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98);
  v218 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v203 = &v202 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v235 = &v202 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v246 = &v202 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v248 = &v202 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v254 = &v202 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v247 = &v202 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v224 = &v202 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v226 = &v202 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v232 = &v202 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v225 = &v202 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  result = MEMORY[0x1EEE9AC00](v60);
  v223 = a3;
  v64 = a3[1];
  if (v64 < 1)
  {
    v66 = MEMORY[0x1E69E7CC0];
LABEL_211:
    v8 = *v209;
    if (*v209)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_246;
      }

      goto LABEL_213;
    }

    goto LABEL_256;
  }

  v204 = &v202 - v62;
  v205 = v63;
  v65 = 0;
  v251 = (v8 + 48);
  v252 = (v8 + 56);
  v66 = MEMORY[0x1E69E7CC0];
  v208 = a4;
  v241 = v39;
LABEL_4:
  if (v65 + 1 >= v64)
  {
    v75 = v65 + 1;
    goto LABEL_83;
  }

  v229 = v64;
  v67 = *v223;
  v68 = *(v218 + 72);
  v245 = (*v223 + v68 * (v65 + 1));
  v69 = v204;
  sub_1D87A0E38(v245, v204, &qword_1ECA63F98);
  v244 = v67;
  v70 = v67 + v68 * v65;
  v71 = v205;
  sub_1D87A0E38(v70, v205, &qword_1ECA63F98);
  LODWORD(v233) = sub_1D8853168(v69, v71);
  if (v5)
  {
    sub_1D87A14E4(v71, &qword_1ECA63F98);
    sub_1D87A14E4(v69, &qword_1ECA63F98);
  }

  v207 = 0;
  sub_1D87A14E4(v71, &qword_1ECA63F98);
  result = sub_1D87A14E4(v69, &qword_1ECA63F98);
  v206 = v65;
  v8 = v65 + 2;
  v72 = v245;
  v73 = v244 + v68 * (v65 + 2);
  v74 = v236;
  v234 = v68;
  v215 = v66;
  do
  {
    if (v229 == v8)
    {
      v75 = v229;
      goto LABEL_69;
    }

    v81 = v225;
    sub_1D87A0E38(v73, v225, &qword_1ECA63F98);
    v245 = v72;
    sub_1D87A0E38(v72, v232, &qword_1ECA63F98);
    v82 = v226;
    sub_1D87A0E38(v81, v226, &qword_1ECA63F98);
    v83 = *(v39 + 48);
    v84 = v228;
    sub_1D885E420(v82 + v83, v228, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D885E3C0(v82 + v83, type metadata accessor for BundleClassification);
    sub_1D885E420(v84, v220, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      v86 = v231;
      if (EnumCaseMultiPayload == 5)
      {
        *v231 = *v220;
      }

      goto LABEL_25;
    }

    v86 = v231;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        swift_storeEnumTagMultiPayload();
        v87 = *v252;
        (*v252)(v86, 0, 1, v74);
        sub_1D885E3C0(v220, type metadata accessor for BundleClassification.ClassificationType);
        goto LABEL_26;
      }

      *v231 = *v220;
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v88 = *v220;
      v89 = v220[1];
      v90 = v220[2];
      v91 = v220[3];
      v92 = v220[4];

      *v231 = v89;
      v231[1] = v90;
      v86 = v231;
      v231[2] = v91;
      v86[3] = v92;
LABEL_25:
      swift_storeEnumTagMultiPayload();
      v87 = *v252;
      (*v252)(v86, 0, 1, v74);
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload != 3)
    {
      sub_1D885E3C0(v220, type metadata accessor for BundleClassification.ClassificationType);
    }

    v87 = *v252;
    (*v252)(v86, 1, 1, v74);
LABEL_26:
    sub_1D885E3C0(v228, type metadata accessor for BundleClassification.ClassificationType);
    v93 = *v251;
    result = (*v251)(v86, 1, v74);
    if (result == 1)
    {
      goto LABEL_250;
    }

    sub_1D885E420(v86, v217, type metadata accessor for BuiltInAction);
    v94 = swift_getEnumCaseMultiPayload();
    v95 = 1000;
    switch(v94)
    {
      case 1:
        sub_1D885E3C0(v217, type metadata accessor for BuiltInAction);
        v95 = 900;
        break;
      case 2:
        sub_1D885E3C0(v217, type metadata accessor for BuiltInAction);
        goto LABEL_33;
      case 3:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
        v96 = v217;

        sub_1D87A14E4(v96, &qword_1ECA635B8);
        goto LABEL_35;
      case 4:
        break;
      case 5:
        v95 = 600;
        break;
      case 6:
      case 13:
      case 14:
LABEL_33:
        v95 = 50;
        break;
      case 7:
        v95 = 350;
        break;
      case 8:
        v95 = 20;
        break;
      case 9:
        v95 = 400;
        break;
      case 10:
        v95 = 850;
        break;
      case 11:
      case 12:
        v95 = 100;
        break;
      case 15:
      case 16:
LABEL_35:
        v95 = 0;
        break;
      default:
        sub_1D885E3C0(v217, type metadata accessor for BuiltInAction);
        v95 = 700;
        break;
    }

    v244 = v95;
    sub_1D885E3C0(v231, type metadata accessor for BuiltInAction);
    v97 = v224;
    sub_1D87A0E38(v232, v224, &qword_1ECA63F98);
    v98 = *(v241 + 48);
    v99 = v227;
    sub_1D885E420(v97 + v98, v227, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D885E3C0(v97 + v98, type metadata accessor for BundleClassification);
    sub_1D885E420(v99, v219, type metadata accessor for BundleClassification.ClassificationType);
    v100 = swift_getEnumCaseMultiPayload();
    if (v100 > 4)
    {
      v101 = v230;
      v66 = v215;
      if (v100 == 5)
      {
        *v230 = *v219;
      }
    }

    else
    {
      v101 = v230;
      v66 = v215;
      if (v100 <= 1)
      {
        if (v100)
        {
          swift_storeEnumTagMultiPayload();
          (v87)(v101, 0, 1, v74);
          sub_1D885E3C0(v219, type metadata accessor for BundleClassification.ClassificationType);
          goto LABEL_55;
        }

        *v230 = *v219;
      }

      else
      {
        if (v100 != 2)
        {
          if (v100 != 3)
          {
            sub_1D885E3C0(v219, type metadata accessor for BundleClassification.ClassificationType);
          }

          v102 = v101;
          v103 = 1;
          goto LABEL_54;
        }

        v104 = *v219;
        v222 = v219[1];
        v105 = v219[2];
        v221 = v219[3];
        v214 = v219[4];

        *v230 = v222;
        v230[1] = v105;
        v101 = v230;
        v106 = v214;
        v230[2] = v221;
        v101[3] = v106;
      }
    }

    swift_storeEnumTagMultiPayload();
    v102 = v101;
    v103 = 0;
LABEL_54:
    (v87)(v102, v103, 1, v74);
LABEL_55:
    sub_1D885E3C0(v227, type metadata accessor for BundleClassification.ClassificationType);
    result = v93(v101, 1, v74);
    if (result == 1)
    {
      goto LABEL_251;
    }

    sub_1D885E420(v101, v216, type metadata accessor for BuiltInAction);
    v77 = 1000;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1D885E3C0(v216, type metadata accessor for BuiltInAction);
        v77 = 900;
        break;
      case 2u:
        sub_1D885E3C0(v216, type metadata accessor for BuiltInAction);
        goto LABEL_62;
      case 3u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
        v76 = v216;

        sub_1D87A14E4(v76, &qword_1ECA635B8);
        goto LABEL_9;
      case 4u:
        break;
      case 5u:
        v77 = 600;
        break;
      case 6u:
      case 0xDu:
      case 0xEu:
LABEL_62:
        v77 = 50;
        break;
      case 7u:
        v77 = 350;
        break;
      case 8u:
        v77 = 20;
        break;
      case 9u:
        v77 = 400;
        break;
      case 0xAu:
        v77 = 850;
        break;
      case 0xBu:
      case 0xCu:
        v77 = 100;
        break;
      case 0xFu:
      case 0x10u:
LABEL_9:
        v77 = 0;
        break;
      default:
        sub_1D885E3C0(v216, type metadata accessor for BuiltInAction);
        v77 = 700;
        break;
    }

    sub_1D885E3C0(v230, type metadata accessor for BuiltInAction);
    v78 = sub_1D8B14D80();
    v79 = *(*(v78 - 8) + 8);
    v79(v224, v78);
    v79(v226, v78);
    sub_1D87A14E4(v232, &qword_1ECA63F98);
    result = sub_1D87A14E4(v225, &qword_1ECA63F98);
    v80 = v77 >= v244;
    ++v8;
    v68 = v234;
    v73 += v234;
    v72 = &v245[v234];
    v39 = v241;
  }

  while (((v233 ^ v80) & 1) != 0);
  v75 = v8 - 1;
LABEL_69:
  v5 = v207;
  a4 = v208;
  v65 = v206;
  if ((v233 & 1) == 0)
  {
LABEL_83:
    v112 = v223[1];
    if (v75 >= v112)
    {
      goto LABEL_159;
    }

    if (__OFSUB__(v75, v65))
    {
      goto LABEL_242;
    }

    if (v75 - v65 >= a4)
    {
      goto LABEL_159;
    }

    if (__OFADD__(v65, a4))
    {
      goto LABEL_243;
    }

    if (v65 + a4 < v112)
    {
      v112 = v65 + a4;
    }

    if (v112 < v65)
    {
LABEL_244:
      __break(1u);
      goto LABEL_245;
    }

    v211 = v112;
    if (v75 == v112)
    {
      goto LABEL_159;
    }

    v215 = v66;
    v207 = v5;
    v113 = *v223;
    v114 = *(v218 + 72);
    v115 = *v223 + v114 * (v75 - 1);
    v233 = -v114;
    v206 = v65;
    v8 = v65 - v75;
    v234 = v113;
    v210 = v114;
    v116 = v113 + v75 * v114;
    v117 = v236;
LABEL_94:
    v229 = v75;
    v212 = v116;
    v213 = v8;
    v214 = v115;
    v118 = v115;
    while (1)
    {
      v119 = v247;
      sub_1D87A0E38(v116, v247, &qword_1ECA63F98);
      sub_1D87A0E38(v118, v254, &qword_1ECA63F98);
      v120 = v248;
      sub_1D87A0E38(v119, v248, &qword_1ECA63F98);
      v121 = *(v39 + 48);
      v122 = v250;
      sub_1D885E420(v120 + v121, v250, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D885E3C0(v120 + v121, type metadata accessor for BundleClassification);
      sub_1D885E420(v122, v243, type metadata accessor for BundleClassification.ClassificationType);
      v123 = swift_getEnumCaseMultiPayload();
      if (v123 > 4)
      {
        break;
      }

      v124 = v240;
      if (v123 <= 1)
      {
        if (v123)
        {
          swift_storeEnumTagMultiPayload();
          v125 = *v252;
          (*v252)(v124, 0, 1, v117);
          sub_1D885E3C0(v243, type metadata accessor for BundleClassification.ClassificationType);
          goto LABEL_109;
        }

        *v240 = *v243;
        goto LABEL_108;
      }

      if (v123 == 2)
      {
        v126 = *v243;
        v127 = v243[1];
        v128 = v243[2];
        v129 = v243[3];
        v130 = v243[4];

        *v240 = v127;
        v39 = v241;
        v240[1] = v128;
        v124 = v240;
        v240[2] = v129;
        *(v124 + 24) = v130;
LABEL_108:
        swift_storeEnumTagMultiPayload();
        v125 = *v252;
        (*v252)(v124, 0, 1, v117);
        goto LABEL_109;
      }

      if (v123 != 3)
      {
        sub_1D885E3C0(v243, type metadata accessor for BundleClassification.ClassificationType);
      }

      v125 = *v252;
      (*v252)(v124, 1, 1, v117);
LABEL_109:
      sub_1D885E3C0(v250, type metadata accessor for BundleClassification.ClassificationType);
      v131 = *v251;
      result = (*v251)(v124, 1, v117);
      if (result == 1)
      {
        goto LABEL_248;
      }

      sub_1D885E420(v124, v238, type metadata accessor for BuiltInAction);
      v132 = swift_getEnumCaseMultiPayload();
      v133 = 1000;
      v245 = v125;
      switch(v132)
      {
        case 1:
          sub_1D885E3C0(v238, type metadata accessor for BuiltInAction);
          v133 = 900;
          break;
        case 2:
          sub_1D885E3C0(v238, type metadata accessor for BuiltInAction);
          goto LABEL_116;
        case 3:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
          v134 = v238;

          sub_1D87A14E4(v134, &qword_1ECA635B8);
          goto LABEL_118;
        case 4:
          break;
        case 5:
          v133 = 600;
          break;
        case 6:
        case 13:
        case 14:
LABEL_116:
          v133 = 50;
          break;
        case 7:
          v133 = 350;
          break;
        case 8:
          v133 = 20;
          break;
        case 9:
          v133 = 400;
          break;
        case 10:
          v133 = 850;
          break;
        case 11:
        case 12:
          v133 = 100;
          break;
        case 15:
        case 16:
LABEL_118:
          v133 = 0;
          break;
        default:
          sub_1D885E3C0(v238, type metadata accessor for BuiltInAction);
          v133 = 700;
          break;
      }

      v244 = v133;
      sub_1D885E3C0(v124, type metadata accessor for BuiltInAction);
      v135 = v246;
      sub_1D87A0E38(v254, v246, &qword_1ECA63F98);
      v136 = *(v39 + 48);
      v137 = v249;
      sub_1D885E420(v135 + v136, v249, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D885E3C0(v135 + v136, type metadata accessor for BundleClassification);
      sub_1D885E420(v137, v242, type metadata accessor for BundleClassification.ClassificationType);
      v138 = swift_getEnumCaseMultiPayload();
      if (v138 > 4)
      {
        v139 = v239;
        if (v138 <= 6)
        {
          v39 = v241;
          if (v138 == 5)
          {
            *v239 = *v242;
          }
        }

        else
        {
          v39 = v241;
        }
      }

      else
      {
        v139 = v239;
        if (v138 <= 1)
        {
          v39 = v241;
          if (v138)
          {
            swift_storeEnumTagMultiPayload();
            (v245)(v139, 0, 1, v117);
            sub_1D885E3C0(v242, type metadata accessor for BundleClassification.ClassificationType);
            goto LABEL_139;
          }

          *v239 = *v242;
        }

        else
        {
          v39 = v241;
          if (v138 != 2)
          {
            if (v138 != 3)
            {
              sub_1D885E3C0(v242, type metadata accessor for BundleClassification.ClassificationType);
            }

            v140 = v139;
            v141 = 1;
            goto LABEL_138;
          }

          v142 = *v242;
          v143 = v242[1];
          v144 = v242[2];
          v222 = v242[3];
          v221 = v242[4];

          *v239 = v143;
          v117 = v236;
          v239[1] = v144;
          v139 = v239;
          v145 = v221;
          v239[2] = v222;
          *(v139 + 24) = v145;
        }
      }

      swift_storeEnumTagMultiPayload();
      v140 = v139;
      v141 = 0;
LABEL_138:
      (v245)(v140, v141, 1, v117);
LABEL_139:
      sub_1D885E3C0(v249, type metadata accessor for BundleClassification.ClassificationType);
      result = v131(v139, 1, v117);
      if (result == 1)
      {
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
        goto LABEL_255;
      }

      sub_1D885E420(v139, v237, type metadata accessor for BuiltInAction);
      v146 = 1000;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_1D885E3C0(v237, type metadata accessor for BuiltInAction);
          v146 = 900;
          break;
        case 2u:
          sub_1D885E3C0(v237, type metadata accessor for BuiltInAction);
          goto LABEL_146;
        case 3u:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
          v147 = v237;

          sub_1D87A14E4(v147, &qword_1ECA635B8);
          goto LABEL_148;
        case 4u:
          break;
        case 5u:
          v146 = 600;
          break;
        case 6u:
        case 0xDu:
        case 0xEu:
LABEL_146:
          v146 = 50;
          break;
        case 7u:
          v146 = 350;
          break;
        case 8u:
          v146 = 20;
          break;
        case 9u:
          v146 = 400;
          break;
        case 0xAu:
          v146 = 850;
          break;
        case 0xBu:
        case 0xCu:
          v146 = 100;
          break;
        case 0xFu:
        case 0x10u:
LABEL_148:
          v146 = 0;
          break;
        default:
          sub_1D885E3C0(v237, type metadata accessor for BuiltInAction);
          v146 = 700;
          break;
      }

      sub_1D885E3C0(v139, type metadata accessor for BuiltInAction);
      v148 = sub_1D8B14D80();
      v149 = *(*(v148 - 8) + 8);
      v149(v246, v148);
      v149(v248, v148);
      sub_1D87A14E4(v254, &qword_1ECA63F98);
      result = sub_1D87A14E4(v247, &qword_1ECA63F98);
      if (v146 >= v244)
      {
        v117 = v236;
LABEL_93:
        v75 = v229 + 1;
        v115 = v214 + v210;
        v8 = v213 - 1;
        v116 = v212 + v210;
        if (v229 + 1 != v211)
        {
          goto LABEL_94;
        }

        v5 = v207;
        v66 = v215;
        v65 = v206;
        v75 = v211;
LABEL_159:
        if (v75 < v65)
        {
          goto LABEL_241;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D87C7C5C(0, *(v66 + 2) + 1, 1, v66);
          v66 = result;
        }

        v8 = *(v66 + 2);
        v152 = *(v66 + 3);
        v153 = v8 + 1;
        if (v8 >= v152 >> 1)
        {
          result = sub_1D87C7C5C((v152 > 1), v8 + 1, 1, v66);
          v66 = result;
        }

        *(v66 + 2) = v153;
        v154 = &v66[16 * v8];
        *(v154 + 4) = v65;
        *(v154 + 5) = v75;
        v211 = v75;
        if (*v209)
        {
          if (!v8)
          {
LABEL_3:
            v64 = v223[1];
            v65 = v211;
            a4 = v208;
            if (v211 >= v64)
            {
              goto LABEL_211;
            }

            goto LABEL_4;
          }

          v155 = *v209;
          while (2)
          {
            v156 = v153 - 1;
            if (v153 >= 4)
            {
              v161 = &v66[16 * v153 + 32];
              v162 = *(v161 - 64);
              v163 = *(v161 - 56);
              v167 = __OFSUB__(v163, v162);
              v164 = v163 - v162;
              if (v167)
              {
                goto LABEL_228;
              }

              v166 = *(v161 - 48);
              v165 = *(v161 - 40);
              v167 = __OFSUB__(v165, v166);
              v159 = v165 - v166;
              v160 = v167;
              if (v167)
              {
                goto LABEL_229;
              }

              v168 = &v66[16 * v153];
              v170 = *v168;
              v169 = *(v168 + 1);
              v167 = __OFSUB__(v169, v170);
              v171 = v169 - v170;
              if (v167)
              {
                goto LABEL_231;
              }

              v167 = __OFADD__(v159, v171);
              v172 = v159 + v171;
              if (v167)
              {
                goto LABEL_234;
              }

              if (v172 >= v164)
              {
                v190 = &v66[16 * v156 + 32];
                v192 = *v190;
                v191 = *(v190 + 1);
                v167 = __OFSUB__(v191, v192);
                v193 = v191 - v192;
                if (v167)
                {
                  goto LABEL_238;
                }

                if (v159 < v193)
                {
                  v156 = v153 - 2;
                }
              }

              else
              {
LABEL_180:
                if (v160)
                {
                  goto LABEL_230;
                }

                v173 = &v66[16 * v153];
                v175 = *v173;
                v174 = *(v173 + 1);
                v176 = __OFSUB__(v174, v175);
                v177 = v174 - v175;
                v178 = v176;
                if (v176)
                {
                  goto LABEL_233;
                }

                v179 = &v66[16 * v156 + 32];
                v181 = *v179;
                v180 = *(v179 + 1);
                v167 = __OFSUB__(v180, v181);
                v182 = v180 - v181;
                if (v167)
                {
                  goto LABEL_236;
                }

                if (__OFADD__(v177, v182))
                {
                  goto LABEL_237;
                }

                if (v177 + v182 < v159)
                {
                  goto LABEL_194;
                }

                if (v159 < v182)
                {
                  v156 = v153 - 2;
                }
              }
            }

            else
            {
              if (v153 == 3)
              {
                v157 = *(v66 + 4);
                v158 = *(v66 + 5);
                v167 = __OFSUB__(v158, v157);
                v159 = v158 - v157;
                v160 = v167;
                goto LABEL_180;
              }

              v183 = &v66[16 * v153];
              v185 = *v183;
              v184 = *(v183 + 1);
              v167 = __OFSUB__(v184, v185);
              v177 = v184 - v185;
              v178 = v167;
LABEL_194:
              if (v178)
              {
                goto LABEL_232;
              }

              v186 = &v66[16 * v156];
              v188 = *(v186 + 4);
              v187 = *(v186 + 5);
              v167 = __OFSUB__(v187, v188);
              v189 = v187 - v188;
              if (v167)
              {
                goto LABEL_235;
              }

              if (v189 < v177)
              {
                goto LABEL_3;
              }
            }

            v8 = v156 - 1;
            if (v156 - 1 >= v153)
            {
              __break(1u);
LABEL_226:
              __break(1u);
LABEL_227:
              __break(1u);
LABEL_228:
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
              goto LABEL_244;
            }

            if (!*v223)
            {
              goto LABEL_252;
            }

            v194 = *&v66[16 * v8 + 32];
            v195 = *&v66[16 * v156 + 40];
            sub_1D885ABCC(*v223 + *(v218 + 72) * v194, (*v223 + *(v218 + 72) * *&v66[16 * v156 + 32]), (*v223 + *(v218 + 72) * v195), v155);
            if (v5)
            {
            }

            if (v195 < v194)
            {
              goto LABEL_226;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v66 = sub_1D885CC68(v66);
            }

            if (v8 >= *(v66 + 2))
            {
              goto LABEL_227;
            }

            v196 = &v66[16 * v8];
            *(v196 + 4) = v194;
            *(v196 + 5) = v195;
            v255 = v66;
            result = sub_1D885CBDC(v156);
            v66 = v255;
            v153 = *(v255 + 2);
            if (v153 <= 1)
            {
              goto LABEL_3;
            }

            continue;
          }
        }

LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
        return result;
      }

      if (!v234)
      {
        goto LABEL_249;
      }

      v150 = v235;
      sub_1D881F6FC(v116, v235, &qword_1ECA63F98);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D881F6FC(v150, v118, &qword_1ECA63F98);
      v118 += v233;
      v116 += v233;
      v151 = __CFADD__(v8++, 1);
      v117 = v236;
      if (v151)
      {
        goto LABEL_93;
      }
    }

    v124 = v240;
    if (v123 == 5)
    {
      *v240 = *v243;
    }

    goto LABEL_108;
  }

  if (v75 >= v206)
  {
    if (v206 < v75)
    {
      v8 = v68 * (v75 - 1);
      v107 = v75 * v68;
      v229 = v75;
      v108 = v206;
      v109 = v206 * v68;
      v110 = v203;
      do
      {
        if (v108 != --v75)
        {
          v111 = *v223;
          if (!*v223)
          {
            goto LABEL_253;
          }

          sub_1D881F6FC(v111 + v109, v110, &qword_1ECA63F98);
          if (v109 < v8 || v111 + v109 >= v111 + v107)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v109 != v8)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1D881F6FC(v110, v111 + v8, &qword_1ECA63F98);
          v68 = v234;
        }

        ++v108;
        v8 -= v68;
        v107 -= v68;
        v109 += v68;
      }

      while (v108 < v75);
      v5 = v207;
      a4 = v208;
      v39 = v241;
      v75 = v229;
      v65 = v206;
    }

    goto LABEL_83;
  }

LABEL_245:
  __break(1u);
LABEL_246:
  result = sub_1D885CC68(v66);
  v66 = result;
LABEL_213:
  v255 = v66;
  v197 = *(v66 + 2);
  if (v197 >= 2)
  {
    while (*v223)
    {
      v198 = v66;
      v66 = (v197 - 1);
      v199 = *&v198[16 * v197];
      v200 = *&v198[16 * v197 + 24];
      sub_1D885ABCC(*v223 + *(v218 + 72) * v199, (*v223 + *(v218 + 72) * *&v198[16 * v197 + 16]), (*v223 + *(v218 + 72) * v200), v8);
      if (v5)
      {
      }

      if (v200 < v199)
      {
        goto LABEL_239;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v198 = sub_1D885CC68(v198);
      }

      if (v197 - 2 >= *(v198 + 2))
      {
        goto LABEL_240;
      }

      v201 = &v198[16 * v197];
      *v201 = v199;
      *(v201 + 1) = v200;
      v255 = v198;
      result = sub_1D885CBDC(v66);
      v66 = v255;
      v197 = *(v255 + 2);
      if (v197 <= 1)
      {
      }
    }

    goto LABEL_254;
  }
}

uint64_t sub_1D885A588(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v9 = MEMORY[0x1EEE9AC00](v64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v53 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v53 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_64;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_65;
  }

  v23 = (a2 - a1) / v21;
  v67 = a1;
  v66 = a4;
  v63 = v21;
  if (v23 >= v22 / v21)
  {
    v26 = v22 / v21 * v21;
    v59 = v17;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v12;
    }

    else
    {
      v27 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v36 = a4 + v26;
    v37 = v4;
    if (v26 >= 1)
    {
      v38 = -v63;
      v39 = a4 + v26;
      v56 = a4;
      v57 = a1;
      v55 = -v63;
      do
      {
        v53 = v36;
        v40 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v67 = a2;
            v65 = v53;
            goto LABEL_62;
          }

          v62 = a3;
          v63 = v39;
          v54 = v36;
          v61 = (v39 + v38);
          sub_1D885E420(v39 + v38, v27, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
          v43 = v27;
          v44 = v59;
          sub_1D885E420(v40, v59, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
          v45 = sub_1D8845324(v43, v44);
          if (v37)
          {
            sub_1D885E3C0(v44, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
            sub_1D885E3C0(v43, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
            v67 = v58;
            v65 = v54;
            goto LABEL_62;
          }

          v46 = v45;
          v60 = 0;
          v47 = v40;
          v48 = v62;
          v49 = v62 + v38;
          sub_1D885E3C0(v44, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
          sub_1D885E3C0(v43, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
          v27 = v43;
          if (v46)
          {
            break;
          }

          v50 = v61;
          v36 = v61;
          a3 = v48 + v38;
          if (v48 < v63 || v49 >= v63)
          {
            v41 = v61;
            swift_arrayInitWithTakeFrontToBack();
            v36 = v41;
            v40 = v47;
            v37 = v60;
          }

          else
          {
            v51 = v48 == v63;
            v40 = v47;
            v37 = v60;
            if (!v51)
            {
              v52 = v61;
              swift_arrayInitWithTakeBackToFront();
              v36 = v52;
            }
          }

          v39 = v36;
          a1 = v57;
          v42 = v50 > v56;
          v38 = v55;
          a2 = v58;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v48 + v38;
        if (v48 < v58 || v49 >= v58)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          v38 = v55;
        }

        else
        {
          a2 = v47;
          v37 = v60;
          v38 = v55;
          if (v48 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v63;
        v36 = v54;
      }

      while (v63 > v56);
    }

LABEL_58:
    v67 = a2;
    v65 = v36;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v25 = v4;
    }

    else
    {
      v25 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v62 = a4 + v24;
    v65 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v29 = v63;
      v60 = v19;
      v61 = v15;
      while (1)
      {
        v30 = a3;
        sub_1D885E420(a2, v19, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        sub_1D885E420(a4, v15, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v31 = sub_1D8845324(v19, v15);
        if (v25)
        {
          break;
        }

        v32 = v31;
        v33 = v15;
        v34 = a4;
        sub_1D885E3C0(v33, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        sub_1D885E3C0(v19, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        if (v32)
        {
          v35 = a2 + v29;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v34 + v29;
        }

        v15 = v61;
        v29 = v63;
        a1 += v63;
        v67 = a1;
        v19 = v60;
        if (a4 >= v62 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D885E3C0(v15, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D885E3C0(v19, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    }
  }

LABEL_62:
  sub_1D885CD84(&v67, &v66, &v65, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  return 1;
}

uint64_t sub_1D885ABCC(unint64_t a1, void *a2, _BYTE *a3, unint64_t a4)
{
  v8 = type metadata accessor for BuiltInAction(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v143 = &v140[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v144 = &v140[-v13];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v150 = &v140[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v151 = &v140[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v141 = &v140[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v140[-v21];
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v140[-v24];
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v140[-v26];
  v166 = type metadata accessor for BundleClassification.ClassificationType(0);
  v28 = MEMORY[0x1EEE9AC00](v166);
  v145 = &v140[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v153 = &v140[-v31];
  v32 = MEMORY[0x1EEE9AC00](v30);
  v146 = &v140[-v33];
  v34 = MEMORY[0x1EEE9AC00](v32);
  v156 = &v140[-v35];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v154 = &v140[-v37];
  v38 = MEMORY[0x1EEE9AC00](v36);
  v161 = &v140[-v39];
  v40 = MEMORY[0x1EEE9AC00](v38);
  v155 = &v140[-v41];
  MEMORY[0x1EEE9AC00](v40);
  v162 = &v140[-v42];
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98);
  v43 = MEMORY[0x1EEE9AC00](v167);
  v147 = &v140[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = MEMORY[0x1EEE9AC00](v43);
  v149 = &v140[-v46];
  v47 = MEMORY[0x1EEE9AC00](v45);
  v157 = &v140[-v48];
  v49 = MEMORY[0x1EEE9AC00](v47);
  v148 = &v140[-v50];
  v51 = MEMORY[0x1EEE9AC00](v49);
  v158 = &v140[-v52];
  v53 = MEMORY[0x1EEE9AC00](v51);
  v160 = &v140[-v54];
  v55 = MEMORY[0x1EEE9AC00](v53);
  v165 = &v140[-v56];
  result = MEMORY[0x1EEE9AC00](v55);
  v159 = &v140[-v58];
  v152 = *(v59 + 72);
  if (!v152)
  {
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if ((a2 - a1) == 0x8000000000000000 && v152 == -1)
  {
    goto LABEL_177;
  }

  v60 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v152 != -1)
  {
    v61 = (a2 - a1) / v152;
    v170 = a1;
    v169 = a4;
    if (v61 < v60 / v152)
    {
      v62 = v61 * v152;
      if (a4 < a1 || a1 + v62 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v148 = (a4 + v62);
      v168 = (a4 + v62);
      v64 = v62 < 1 || a2 >= a3;
      if (!v64)
      {
        v156 = (v9 + 56);
        v157 = (v9 + 48);
        v147 = a3;
        v149 = v25;
        v153 = v27;
        while (1)
        {
          v163 = a4;
          v65 = v159;
          sub_1D87A0E38(a2, v159, &qword_1ECA63F98);
          sub_1D87A0E38(a4, v165, &qword_1ECA63F98);
          v66 = v160;
          sub_1D87A0E38(v65, v160, &qword_1ECA63F98);
          v67 = *(v167 + 48);
          v68 = v162;
          sub_1D885E420(v66 + v67, v162, type metadata accessor for BundleClassification.ClassificationType);
          sub_1D885E3C0(v66 + v67, type metadata accessor for BundleClassification);
          sub_1D885E420(v68, v155, type metadata accessor for BundleClassification.ClassificationType);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v164 = a2;
          if (EnumCaseMultiPayload > 4)
          {
            break;
          }

          if (EnumCaseMultiPayload <= 1)
          {
            if (EnumCaseMultiPayload)
            {
              swift_storeEnumTagMultiPayload();
              v70 = *v156;
              (*v156)(v27, 0, 1, v8);
              sub_1D885E3C0(v155, type metadata accessor for BundleClassification.ClassificationType);
              goto LABEL_35;
            }

            *v27 = *v155;
            goto LABEL_34;
          }

          if (EnumCaseMultiPayload == 2)
          {
            v71 = *v155;
            v72 = v155[1];
            v73 = v155[2];
            v74 = v155[3];
            v75 = v155[4];

            *v153 = v72;
            v153[1] = v73;
            v153[2] = v74;
            v153[3] = v75;
            v27 = v153;
LABEL_34:
            swift_storeEnumTagMultiPayload();
            v70 = *v156;
            (*v156)(v27, 0, 1, v8);
            goto LABEL_35;
          }

          if (EnumCaseMultiPayload != 3)
          {
            sub_1D885E3C0(v155, type metadata accessor for BundleClassification.ClassificationType);
          }

          v70 = *v156;
          (*v156)(v27, 1, 1, v8);
LABEL_35:
          sub_1D885E3C0(v162, type metadata accessor for BundleClassification.ClassificationType);
          v76 = *v157;
          result = (*v157)(v27, 1, v8);
          if (result == 1)
          {
            goto LABEL_179;
          }

          sub_1D885E420(v27, v151, type metadata accessor for BuiltInAction);
          v77 = 1000;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_1D885E3C0(v151, type metadata accessor for BuiltInAction);
              v77 = 900;
              break;
            case 2u:
              sub_1D885E3C0(v151, type metadata accessor for BuiltInAction);
              goto LABEL_42;
            case 3u:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
              v78 = v151;

              sub_1D87A14E4(v78, &qword_1ECA635B8);
              goto LABEL_44;
            case 4u:
              break;
            case 5u:
              v77 = 600;
              break;
            case 6u:
            case 0xDu:
            case 0xEu:
LABEL_42:
              v77 = 50;
              break;
            case 7u:
              v77 = 350;
              break;
            case 8u:
              v77 = 20;
              break;
            case 9u:
              v77 = 400;
              break;
            case 0xAu:
              v77 = 850;
              break;
            case 0xBu:
            case 0xCu:
              v77 = 100;
              break;
            case 0xFu:
            case 0x10u:
LABEL_44:
              v77 = 0;
              break;
            default:
              sub_1D885E3C0(v151, type metadata accessor for BuiltInAction);
              v77 = 700;
              break;
          }

          sub_1D885E3C0(v27, type metadata accessor for BuiltInAction);
          v79 = v158;
          sub_1D87A0E38(v165, v158, &qword_1ECA63F98);
          v80 = *(v167 + 48);
          v81 = v161;
          sub_1D885E420(&v79[v80], v161, type metadata accessor for BundleClassification.ClassificationType);
          sub_1D885E3C0(&v79[v80], type metadata accessor for BundleClassification);
          sub_1D885E420(v81, v154, type metadata accessor for BundleClassification.ClassificationType);
          v82 = swift_getEnumCaseMultiPayload();
          if (v82 > 4)
          {
            v83 = v149;
            if (v82 == 5)
            {
              *v149 = *v154;
            }

LABEL_62:
            swift_storeEnumTagMultiPayload();
            v84 = v83;
            v85 = 0;
            goto LABEL_63;
          }

          v83 = v149;
          if (v82 > 1)
          {
            if (v82 == 2)
            {
              v87 = *v154;
              v86 = v154[1];
              v142 = a1;
              v88 = v154[2];
              v89 = v154[3];
              v90 = v154[4];

              v83 = v149;
              *v149 = v86;
              v83[1] = v88;
              v83[2] = v89;
              v83[3] = v90;
              a1 = v142;
              goto LABEL_62;
            }

            if (v82 != 3)
            {
              sub_1D885E3C0(v154, type metadata accessor for BundleClassification.ClassificationType);
            }

            v84 = v83;
            v85 = 1;
LABEL_63:
            v70(v84, v85, 1, v8);
            goto LABEL_64;
          }

          if (!v82)
          {
            *v149 = *v154;
            goto LABEL_62;
          }

          swift_storeEnumTagMultiPayload();
          v70(v83, 0, 1, v8);
          sub_1D885E3C0(v154, type metadata accessor for BundleClassification.ClassificationType);
LABEL_64:
          sub_1D885E3C0(v161, type metadata accessor for BundleClassification.ClassificationType);
          result = v76(v83, 1, v8);
          a2 = v164;
          if (result == 1)
          {
            goto LABEL_180;
          }

          sub_1D885E420(v83, v150, type metadata accessor for BuiltInAction);
          v91 = 1000;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_1D885E3C0(v150, type metadata accessor for BuiltInAction);
              v91 = 900;
              break;
            case 2u:
              sub_1D885E3C0(v150, type metadata accessor for BuiltInAction);
              goto LABEL_71;
            case 3u:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
              v92 = v150;

              sub_1D87A14E4(v92, &qword_1ECA635B8);
              goto LABEL_73;
            case 4u:
              break;
            case 5u:
              v91 = 600;
              break;
            case 6u:
            case 0xDu:
            case 0xEu:
LABEL_71:
              v91 = 50;
              break;
            case 7u:
              v91 = 350;
              break;
            case 8u:
              v91 = 20;
              break;
            case 9u:
              v91 = 400;
              break;
            case 0xAu:
              v91 = 850;
              break;
            case 0xBu:
            case 0xCu:
              v91 = 100;
              break;
            case 0xFu:
            case 0x10u:
LABEL_73:
              v91 = 0;
              break;
            default:
              sub_1D885E3C0(v150, type metadata accessor for BuiltInAction);
              v91 = 700;
              break;
          }

          sub_1D885E3C0(v83, type metadata accessor for BuiltInAction);
          v93 = sub_1D8B14D80();
          v94 = *(*(v93 - 8) + 8);
          v94(v158, v93);
          v94(v160, v93);
          sub_1D87A14E4(v165, &qword_1ECA63F98);
          sub_1D87A14E4(v159, &qword_1ECA63F98);
          if (v91 >= v77)
          {
            v95 = v152;
            v27 = v153;
            a4 = v163 + v152;
            v96 = v147;
            if (a1 < v163 || a1 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v163)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v169 = a4;
          }

          else
          {
            v95 = v152;
            v27 = v153;
            a4 = v163;
            v96 = v147;
            if (a1 < a2 || a1 >= a2 + v152)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = (a2 + v95);
          }

          a1 += v95;
          v170 = a1;
          if (a4 >= v148 || a2 >= v96)
          {
            goto LABEL_175;
          }
        }

        if (EnumCaseMultiPayload == 5)
        {
          *v27 = *v155;
        }

        goto LABEL_34;
      }

      goto LABEL_175;
    }

    v63 = v60 / v152 * v152;
    if (a4 < a2 || a2 + v63 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v97 = (a4 + v63);
    if (v63 < 1)
    {
LABEL_174:
      v170 = a2;
      v168 = v97;
LABEL_175:
      sub_1D885CC7C(&v170, &v169, &v168);
      return 1;
    }

    v98 = -v152;
    v161 = (v9 + 48);
    v162 = (v9 + 56);
    v99 = v97;
    v142 = a1;
    v163 = a4;
    v160 = -v152;
LABEL_97:
    v100 = v97;
    v101 = a2;
    v164 = (a2 + v98);
    v150 = v100;
    v102 = v100;
    v155 = v101;
    while (1)
    {
      v165 = a3;
      if (v101 <= a1)
      {
        v170 = v101;
        v168 = v150;
        goto LABEL_175;
      }

      v154 = v102;
      v159 = v99;
      v102 = &v99[v98];
      v103 = &v99[v98];
      v104 = v148;
      sub_1D87A0E38(v103, v148, &qword_1ECA63F98);
      sub_1D87A0E38(v164, v157, &qword_1ECA63F98);
      v105 = v149;
      sub_1D87A0E38(v104, v149, &qword_1ECA63F98);
      v106 = *(v167 + 48);
      v107 = v156;
      sub_1D885E420(v105 + v106, v156, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D885E3C0(v105 + v106, type metadata accessor for BundleClassification);
      sub_1D885E420(v107, v146, type metadata accessor for BundleClassification.ClassificationType);
      v108 = swift_getEnumCaseMultiPayload();
      if (v108 > 4)
      {
        break;
      }

      if (v108 <= 1)
      {
        if (v108)
        {
          swift_storeEnumTagMultiPayload();
          v109 = *v162;
          (*v162)(v22, 0, 1, v8);
          sub_1D885E3C0(v146, type metadata accessor for BundleClassification.ClassificationType);
          goto LABEL_115;
        }

        *v22 = *v146;
        goto LABEL_114;
      }

      if (v108 == 2)
      {
        v110 = *v146;
        v111 = v146[1];
        v113 = v146[2];
        v112 = v146[3];
        v114 = v146[4];

        *v22 = v111;
        v22[1] = v113;
        v22[2] = v112;
        v22[3] = v114;
LABEL_114:
        swift_storeEnumTagMultiPayload();
        v109 = *v162;
        (*v162)(v22, 0, 1, v8);
        goto LABEL_115;
      }

      if (v108 != 3)
      {
        sub_1D885E3C0(v146, type metadata accessor for BundleClassification.ClassificationType);
      }

      v109 = *v162;
      (*v162)(v22, 1, 1, v8);
LABEL_115:
      sub_1D885E3C0(v156, type metadata accessor for BundleClassification.ClassificationType);
      v115 = *v161;
      result = (*v161)(v22, 1, v8);
      if (result == 1)
      {
        goto LABEL_181;
      }

      sub_1D885E420(v22, v144, type metadata accessor for BuiltInAction);
      v116 = swift_getEnumCaseMultiPayload();
      v117 = 1000;
      switch(v116)
      {
        case 1:
          sub_1D885E3C0(v144, type metadata accessor for BuiltInAction);
          v117 = 900;
          break;
        case 2:
          sub_1D885E3C0(v144, type metadata accessor for BuiltInAction);
          goto LABEL_122;
        case 3:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
          v118 = v144;

          sub_1D87A14E4(v118, &qword_1ECA635B8);
          goto LABEL_124;
        case 4:
          break;
        case 5:
          v117 = 600;
          break;
        case 6:
        case 13:
        case 14:
LABEL_122:
          v117 = 50;
          break;
        case 7:
          v117 = 350;
          break;
        case 8:
          v117 = 20;
          break;
        case 9:
          v117 = 400;
          break;
        case 10:
          v117 = 850;
          break;
        case 11:
        case 12:
          v117 = 100;
          break;
        case 15:
        case 16:
LABEL_124:
          v117 = 0;
          break;
        default:
          sub_1D885E3C0(v144, type metadata accessor for BuiltInAction);
          v117 = 700;
          break;
      }

      v158 = v117;
      sub_1D885E3C0(v22, type metadata accessor for BuiltInAction);
      v119 = v147;
      sub_1D87A0E38(v157, v147, &qword_1ECA63F98);
      v120 = *(v167 + 48);
      v121 = v153;
      sub_1D885E420(&v119[v120], v153, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D885E3C0(&v119[v120], type metadata accessor for BundleClassification);
      sub_1D885E420(v121, v145, type metadata accessor for BundleClassification.ClassificationType);
      v122 = swift_getEnumCaseMultiPayload();
      if (v122 > 4)
      {
        v123 = v141;
        v124 = v165;
        if (v122 == 5)
        {
          *v141 = *v145;
        }
      }

      else
      {
        v123 = v141;
        v124 = v165;
        if (v122 <= 1)
        {
          if (v122)
          {
            swift_storeEnumTagMultiPayload();
            v109(v123, 0, 1, v8);
            sub_1D885E3C0(v145, type metadata accessor for BundleClassification.ClassificationType);
            goto LABEL_144;
          }

          *v141 = *v145;
        }

        else
        {
          if (v122 != 2)
          {
            if (v122 != 3)
            {
              sub_1D885E3C0(v145, type metadata accessor for BundleClassification.ClassificationType);
            }

            v125 = v123;
            v126 = 1;
            goto LABEL_143;
          }

          v127 = *v145;
          v128 = v145[1];
          v130 = v145[2];
          v129 = v145[3];
          v151 = v145[4];
          v152 = v129;

          v123 = v141;
          *v141 = v128;
          v123[1] = v130;
          v131 = v151;
          v123[2] = v152;
          v123[3] = v131;
        }
      }

      swift_storeEnumTagMultiPayload();
      v125 = v123;
      v126 = 0;
LABEL_143:
      v109(v125, v126, 1, v8);
LABEL_144:
      sub_1D885E3C0(v153, type metadata accessor for BundleClassification.ClassificationType);
      result = v115(v123, 1, v8);
      if (result == 1)
      {
        goto LABEL_182;
      }

      sub_1D885E420(v123, v143, type metadata accessor for BuiltInAction);
      v132 = 1000;
      v133 = v22;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_1D885E3C0(v143, type metadata accessor for BuiltInAction);
          v132 = 900;
          break;
        case 2u:
          sub_1D885E3C0(v143, type metadata accessor for BuiltInAction);
          goto LABEL_151;
        case 3u:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
          v134 = v143;

          sub_1D87A14E4(v134, &qword_1ECA635B8);
          goto LABEL_153;
        case 4u:
          break;
        case 5u:
          v132 = 600;
          break;
        case 6u:
        case 0xDu:
        case 0xEu:
LABEL_151:
          v132 = 50;
          break;
        case 7u:
          v132 = 350;
          break;
        case 8u:
          v132 = 20;
          break;
        case 9u:
          v132 = 400;
          break;
        case 0xAu:
          v132 = 850;
          break;
        case 0xBu:
        case 0xCu:
          v132 = 100;
          break;
        case 0xFu:
        case 0x10u:
LABEL_153:
          v132 = 0;
          break;
        default:
          sub_1D885E3C0(v143, type metadata accessor for BuiltInAction);
          v132 = 700;
          break;
      }

      v135 = &v124[v160];
      sub_1D885E3C0(v123, type metadata accessor for BuiltInAction);
      v136 = sub_1D8B14D80();
      v137 = *(*(v136 - 8) + 8);
      v137(v147, v136);
      v137(v149, v136);
      sub_1D87A14E4(v157, &qword_1ECA63F98);
      sub_1D87A14E4(v148, &qword_1ECA63F98);
      if (v132 < v158)
      {
        v64 = v124 >= v155;
        a1 = v142;
        v139 = v163;
        a3 = v135;
        if (v64 && v135 < v155)
        {
          a2 = v164;
          v22 = v133;
          v98 = v160;
          if (v165 != v155)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v164;
          swift_arrayInitWithTakeFrontToBack();
          v22 = v133;
          v98 = v160;
        }

        v99 = v159;
        v97 = v154;
        if (v159 <= v139)
        {
          goto LABEL_174;
        }

        goto LABEL_97;
      }

      v64 = v124 >= v159;
      a1 = v142;
      v138 = v163;
      a3 = v135;
      if (v64 && v135 < v159)
      {
        v22 = v133;
        v98 = v160;
        if (v165 != v159)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      else
      {
        swift_arrayInitWithTakeFrontToBack();
        v22 = v133;
        v98 = v160;
      }

      v99 = v102;
      v101 = v155;
      if (v102 <= v138)
      {
        v97 = v102;
        a2 = v155;
        goto LABEL_174;
      }
    }

    if (v108 == 5)
    {
      *v22 = *v146;
    }

    goto LABEL_114;
  }

LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_1D885C584(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a5;
  v61 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v11 = MEMORY[0x1EEE9AC00](v61);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v52 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v52 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_64;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_65;
  }

  v25 = (a2 - a1) / v23;
  v66 = a1;
  v65 = a4;
  v60 = v23;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    v59 = v19;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v27;
    if (v27 >= 1)
    {
      v38 = -v60;
      v39 = a4 + v27;
      v40 = v14;
      v56 = a4;
      v57 = a1;
      v55 = -v60;
      do
      {
        v41 = a1;
        v53 = v37;
        v42 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= v41)
          {
            v66 = a2;
            v64 = v53;
            goto LABEL_62;
          }

          v44 = a3;
          v54 = v37;
          v60 = v39;
          v45 = v39 + v38;
          sub_1D885E420(v39 + v38, v40, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          v46 = v6;
          v47 = v40;
          v48 = v59;
          sub_1D885E420(v42, v59, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          v49 = sub_1D884D2D8(v47, v48, v62);
          if (v46)
          {
            sub_1D885E3C0(v48, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
            sub_1D885E3C0(v47, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
            v66 = v58;
            v64 = v54;
            goto LABEL_62;
          }

          v50 = v49;
          v63 = 0;
          v51 = v44 + v38;
          sub_1D885E3C0(v48, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          sub_1D885E3C0(v47, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          v40 = v47;
          if (v50)
          {
            break;
          }

          v37 = v45;
          a3 = v44 + v38;
          if (v44 < v60 || v51 >= v60)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v45;
            v6 = v63;
          }

          else
          {
            v6 = v63;
            if (v44 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
              v37 = v45;
            }
          }

          v39 = v37;
          v41 = v57;
          v43 = v45 > v56;
          v38 = v55;
          a2 = v58;
          if (!v43)
          {
            goto LABEL_58;
          }
        }

        a3 = v44 + v38;
        if (v44 < v58 || v51 >= v58)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v63;
          v38 = v55;
        }

        else
        {
          a2 = v42;
          v6 = v63;
          v38 = v55;
          if (v44 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v60;
        v37 = v54;
      }

      while (v60 > v56);
    }

LABEL_58:
    v66 = a2;
    v64 = v37;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v26;
    v64 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v29 = v60;
      v58 = v21;
      while (1)
      {
        v30 = a3;
        sub_1D885E420(a2, v21, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        sub_1D885E420(a4, v17, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v31 = sub_1D884D2D8(v21, v17, v62);
        if (v6)
        {
          break;
        }

        v32 = v31;
        v63 = 0;
        v33 = v17;
        v34 = a4;
        v35 = v33;
        sub_1D885E3C0(v33, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        sub_1D885E3C0(v21, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        if (v32)
        {
          v36 = a2 + v29;
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v36;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v36;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v34 + v29;
        }

        v17 = v35;
        v29 = v60;
        a1 += v60;
        v66 = a1;
        v21 = v58;
        v6 = v63;
        if (a4 >= v59 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D885E3C0(v17, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D885E3C0(v21, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    }
  }

LABEL_62:
  sub_1D885CD84(&v66, &v65, &v64, type metadata accessor for ActionPredictor.BundleActionPredictionResult);

  return 1;
}

uint64_t sub_1D885CBDC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D885CC68(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D885CC7C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1D885CD84(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1D885CEE4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1D87C7E90(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1D885D08C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1D885CFB8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1D87CA2CC(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1D885D218(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1D885D08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for CVBundle(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1D87A14E4(a4, &qword_1ECA64110);
  }

  if (v17 < 1)
  {
    return sub_1D87A14E4(a4, &qword_1ECA64110);
  }

  result = sub_1D885E420(a4, v15, type metadata accessor for CVBundle);
  if (v12 >= v17)
  {
    return sub_1D87A14E4(a4, &qword_1ECA64110);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_1D885D218(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = v7 + 32 + 88 * result;
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = v8 + 88 * a3;
      v12 = (v7 + 32 + 88 * a2);
      if (result != v12 || result >= v12 + 88 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 88 * v11);
        a4 = v15;
        a3 = v14;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    v18 = *(a4 + 48);
    *(v8 + 32) = *(a4 + 32);
    *(v8 + 48) = v18;
    *(v8 + 64) = *(a4 + 64);
    *(v8 + 80) = *(a4 + 80);
    v19 = *(a4 + 16);
    *v8 = *a4;
    *(v8 + 16) = v19;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1D885D45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a5;
  v7[9] = a7;
  v7[7] = a3;
  v14 = *(a5 - 8);
  v7[10] = v14;
  v15 = swift_task_alloc();
  v7[11] = v15;
  v7[5] = a4;
  v7[6] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  (*(v14 + 16))(v15, a2, a5);

  return MEMORY[0x1EEE6DFA0](sub_1D885D5A8, a3, 0);
}

uint64_t sub_1D885D5A8()
{
  (*(*(v0 + 72) + 8))(*(v0 + 64));
  if (*(v0 + 144))
  {
    if (*(v0 + 144) == 1)
    {
      v1 = *(v0 + 56) + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_visionProvider;
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v0 + 104) = Strong;
      if (Strong)
      {
        v3 = *(v1 + 8);
        ObjectType = swift_getObjectType();
        v16 = (*(v3 + 8) + **(v3 + 8));
        v5 = swift_task_alloc();
        *(v0 + 128) = v5;
        *v5 = v0;
        v5[1] = sub_1D885DAF4;
        v6 = v0 + 16;
        v7 = 1;
LABEL_7:

        return v16(v6, v7, ObjectType, v3);
      }
    }
  }

  else
  {
    v8 = *(v0 + 56) + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_visionProvider;
    v9 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 96) = v9;
    if (v9)
    {
      v3 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v16 = (*(v3 + 8) + **(v3 + 8));
      v10 = swift_task_alloc();
      *(v0 + 112) = v10;
      *v10 = v0;
      v10[1] = sub_1D885D878;
      v6 = v0 + 16;
      v7 = 0;
      goto LABEL_7;
    }
  }

  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  (*(v13 + 8))(v12, v14);

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_1D885D878(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 56);

    swift_unknownObjectRelease();
    v6 = sub_1D885DA60;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 56);
    *(v4 + 120) = a1;
    v6 = sub_1D885D9C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1D885D9C0()
{
  swift_unknownObjectRelease();
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_1D885DA60()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1D885DAF4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 56);

    swift_unknownObjectRelease();
    v6 = sub_1D886557C;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 56);
    *(v4 + 136) = a1;
    v6 = sub_1D885DC3C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1D885DC3C()
{
  swift_unknownObjectRelease();
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5(v1);
}

BOOL _s22VisualIntelligenceCore15ActionPredictorC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0 && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

unint64_t sub_1D885DD50()
{
  result = qword_1ECA64060;
  if (!qword_1ECA64060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64060);
  }

  return result;
}

uint64_t _s22VisualIntelligenceCore15ActionPredictorC6OutputV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionPin(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64070);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64380);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v27 - v13;
  v15 = *(v12 + 56);
  sub_1D87A0E38(a1, v27 - v13, &qword_1ECA64070);
  sub_1D87A0E38(a2, &v14[v15], &qword_1ECA64070);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D87A0E38(v14, v10, &qword_1ECA64070);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1D885E538(&v14[v15], v7, type metadata accessor for ActionPin);
      v17 = _s22VisualIntelligenceCore9ActionPinV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1D885E3C0(v7, type metadata accessor for ActionPin);
      sub_1D885E3C0(v10, type metadata accessor for ActionPin);
      sub_1D87A14E4(v14, &qword_1ECA64070);
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_12:
      v25 = 0;
      return v25 & 1;
    }

    sub_1D885E3C0(v10, type metadata accessor for ActionPin);
LABEL_6:
    sub_1D87A14E4(v14, &qword_1ECA64380);
    goto LABEL_12;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D87A14E4(v14, &qword_1ECA64070);
LABEL_8:
  v18 = type metadata accessor for ActionPredictor.Output(0);
  v19 = (a1 + v18[5]);
  v20 = v19[3];
  v28[2] = v19[2];
  v28[3] = v20;
  v28[4] = v19[4];
  v21 = v19[1];
  v28[0] = *v19;
  v28[1] = v21;
  v22 = (a2 + v18[5]);
  v23 = v22[3];
  v27[2] = v22[2];
  v27[3] = v23;
  v27[4] = v22[4];
  v24 = v22[1];
  v27[0] = *v22;
  v27[1] = v24;
  if (!_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v28, v27) || (sub_1D88E4158(*(a1 + v18[6]), *(a2 + v18[6])) & 1) == 0 || (sub_1D894E12C(*(a1 + v18[7]), *(a2 + v18[7])) & 1) == 0)
  {
    goto LABEL_12;
  }

  v25 = *(a1 + v18[8]) ^ *(a2 + v18[8]) ^ 1;
  return v25 & 1;
}

unint64_t sub_1D885E144()
{
  result = qword_1ECA64080;
  if (!qword_1ECA64080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64080);
  }

  return result;
}

unint64_t sub_1D885E198()
{
  result = qword_1ECA64090;
  if (!qword_1ECA64090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64090);
  }

  return result;
}

uint64_t sub_1D885E1EC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA640A8);
    sub_1D885E288(a2, type metadata accessor for ActionPin);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D885E288(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D885E2D0()
{
  result = qword_1ECA640C8;
  if (!qword_1ECA640C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA640C8);
  }

  return result;
}

uint64_t sub_1D885E324(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA64098);
    sub_1D885E288(a2, type metadata accessor for ActionPin);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D885E3C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D885E420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D885E4A8()
{
  result = qword_1ECA640F8;
  if (!qword_1ECA640F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA640F8);
  }

  return result;
}

uint64_t sub_1D885E538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D885E5C8(void *a1)
{
  a1[1] = sub_1D885E600();
  a1[2] = sub_1D885E654();
  result = sub_1D885E6A8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D885E600()
{
  result = qword_1ECA64130;
  if (!qword_1ECA64130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64130);
  }

  return result;
}

unint64_t sub_1D885E654()
{
  result = qword_1ECA64138;
  if (!qword_1ECA64138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64138);
  }

  return result;
}

unint64_t sub_1D885E6A8()
{
  result = qword_1ECA64140;
  if (!qword_1ECA64140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64140);
  }

  return result;
}

unint64_t sub_1D885E748()
{
  result = qword_1ECA64150;
  if (!qword_1ECA64150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64150);
  }

  return result;
}

uint64_t sub_1D885E7A8(uint64_t a1)
{
  result = sub_1D885E288(&qword_1EE0E7928, type metadata accessor for ActionPredictor);
  *(a1 + 16) = result;
  return result;
}

void sub_1D885E81C()
{
  sub_1D885ED78(319, qword_1EE0E8010, type metadata accessor for BundleSelector.Output, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D885ED78(319, qword_1EE0E7A68, type metadata accessor for ActionPredictor.BundleActionPredictionResult, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D885ED78(319, &qword_1EE0E3900, type metadata accessor for ActionPredictor.Output, MEMORY[0x1E69E8658]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of ActionPredictor.executeAction<A, B>(_:pill:executionParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 288) + **(*v8 + 288));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1D886553C;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of ActionPredictor.setSelectionTo(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 504) + **(*v2 + 504));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D886553C;

  return v8(a1, a2);
}

void sub_1D885ED78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D885EDDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D885EE30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1D885EEB4()
{
  sub_1D885ED78(319, qword_1EE0E3C58, type metadata accessor for ActionPin, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D885ED78(319, &qword_1EE0E3978, type metadata accessor for ActionPin, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D885EFC0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D885EFC0()
{
  if (!qword_1EE0E3830)
  {
    type metadata accessor for ActionPin(255);
    sub_1D885E288(qword_1EE0E3CB0, type metadata accessor for ActionPin);
    v0 = sub_1D8B16080();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3830);
    }
  }
}

uint64_t dispatch thunk of ActionVisionProvider.pixels(for:upright:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D87D34C4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ActionVisionProvider.detectionResult(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D886553C;

  return v11(a1, a2, a3, a4);
}

void sub_1D885F320()
{
  sub_1D885F3A8();
  if (v0 <= 0x3F)
  {
    sub_1D8B14E80();
    if (v1 <= 0x3F)
    {
      sub_1D885F424();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D885F3A8()
{
  if (!qword_1EE0E5740[0])
  {
    type metadata accessor for BundleClassification.ClassificationType(255);
    sub_1D8B13240();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_1EE0E5740);
    }
  }
}

void sub_1D885F424()
{
  if (!qword_1EE0E3AB0)
  {
    sub_1D8B14E80();
    type metadata accessor for ActionPin.PermanentPill(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0E3AB0);
    }
  }
}

void sub_1D885F4D0()
{
  type metadata accessor for CVBundle(319);
  if (v0 <= 0x3F)
  {
    sub_1D885ED78(319, &unk_1EE0E39E0, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D8B14F20();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D885F5C8()
{
  result = qword_1ECA64158;
  if (!qword_1ECA64158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64158);
  }

  return result;
}

unint64_t sub_1D885F620()
{
  result = qword_1ECA64160;
  if (!qword_1ECA64160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64160);
  }

  return result;
}

unint64_t sub_1D885F708()
{
  result = qword_1ECA64170;
  if (!qword_1ECA64170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64170);
  }

  return result;
}

unint64_t sub_1D885F7A8()
{
  result = qword_1ECA64180;
  if (!qword_1ECA64180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64180);
  }

  return result;
}

unint64_t sub_1D885F800()
{
  result = qword_1ECA64188;
  if (!qword_1ECA64188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64188);
  }

  return result;
}

unint64_t sub_1D885F858()
{
  result = qword_1ECA64190;
  if (!qword_1ECA64190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64190);
  }

  return result;
}

unint64_t sub_1D885F8B0()
{
  result = qword_1ECA64198;
  if (!qword_1ECA64198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64198);
  }

  return result;
}

BOOL sub_1D885F904(uint64_t a1, uint64_t a2)
{
  if (sub_1D891C4D0() & 1) != 0 && (v4 = type metadata accessor for CVBundle(0), (sub_1D88E4444(*(a1 + v4[5]), *(a2 + v4[5]))) && (sub_1D88E4444(*(a1 + v4[6]), *(a2 + v4[6])) & 1) != 0 && (sub_1D8854A60(*(a1 + v4[7]), *(a2 + v4[7])) & 1) != 0 && (v5 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0), (sub_1D88E43F0(*(a1 + *(v5 + 20)), *(a2 + *(v5 + 20)))) && (sub_1D8B14F20(), sub_1D885E288(&qword_1EE0E3AA8, MEMORY[0x1E69DFB48]), sub_1D8B15C40(), sub_1D8B15C40(), v8 == v7))
  {
    return *(a1 + *(v5 + 28)) == *(a2 + *(v5 + 28));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D885FA50(uint64_t a1, uint64_t a2)
{
  v86 = a1;
  v3 = type metadata accessor for ActionPin.PermanentPill(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v80 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v77 - v6;
  v7 = sub_1D8B14E80();
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v79 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v77 - v10;
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  v82 = v11;
  v83 = v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v77 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v77 - v15;
  v17 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v77 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v77 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641C0);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v77 - v31;
  v33 = &v77 + *(v30 + 56) - v31;
  sub_1D885E420(v86, &v77 - v31, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  sub_1D885E420(a2, v33, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  v34 = v32;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v86 = v16;
    v42 = v19;
    v43 = v82;
    sub_1D885E420(v32, v28, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0);
    v45 = *(v44 + 48);
    v46 = *(v44 + 64);
    v47 = *&v28[v46];
    v48 = *&v28[v46 + 8];
    if (swift_getEnumCaseMultiPayload())
    {

      (*(v83 + 8))(&v28[v45], v43);
      sub_1D885E3C0(v28, type metadata accessor for BundleClassification.ClassificationType);
LABEL_13:
      sub_1D87A14E4(v34, &qword_1ECA641C0);
LABEL_24:
      v40 = 0;
      return v40 & 1;
    }

    v58 = *&v33[v46 + 8];
    v80 = *&v33[v46];
    v81 = v47;
    v84 = v58;
    v85 = v48;
    sub_1D885E538(v33, v42, type metadata accessor for BundleClassification.ClassificationType);
    v59 = v83;
    v60 = *(v83 + 32);
    v61 = v86;
    v60(v86, &v28[v45], v43);
    v62 = &v33[v45];
    v63 = v43;
    v64 = v42;
    v65 = v77;
    v60(v77, v62, v63);
    v66 = static BundleClassification.ClassificationType.== infix(_:_:)(v28, v64);
    sub_1D885E3C0(v28, type metadata accessor for BundleClassification.ClassificationType);
    if (v66)
    {
      v67 = v84;
      v68 = v61;
      if (sub_1D8B13200())
      {
        v69 = v83;
        if (v81 == v80 && v85 == v67)
        {

          v70 = *(v69 + 8);
          v70(v77, v63);
          v70(v61, v63);
          sub_1D885E3C0(v64, type metadata accessor for BundleClassification.ClassificationType);
        }

        else
        {
          v75 = sub_1D8B16BA0();

          v76 = *(v69 + 8);
          v76(v77, v63);
          v76(v68, v63);
          sub_1D885E3C0(v64, type metadata accessor for BundleClassification.ClassificationType);
          if ((v75 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        sub_1D885E3C0(v34, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v40 = 1;
        return v40 & 1;
      }

      v72 = v65;
      v73 = *(v83 + 8);
      v73(v72, v63);
      v73(v61, v63);
    }

    else
    {

      v71 = *(v59 + 8);
      v71(v65, v63);
      v71(v61, v63);
    }

    sub_1D885E3C0(v64, type metadata accessor for BundleClassification.ClassificationType);
LABEL_23:
    sub_1D885E3C0(v34, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D885E420(v32, v23, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0) + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1D885E3C0(&v23[v49], type metadata accessor for ActionPin.PermanentPill);
      (*(v84 + 8))(v23, v85);
      goto LABEL_13;
    }

    v50 = v84;
    v51 = v85;
    v52 = v79;
    (*(v84 + 32))(v79, v33, v85);
    v53 = v81;
    sub_1D885E538(&v23[v49], v81, type metadata accessor for ActionPin.PermanentPill);
    v54 = &v33[v49];
    v55 = v80;
    sub_1D885E538(v54, v80, type metadata accessor for ActionPin.PermanentPill);
    v56 = MEMORY[0x1DA71E300](v23, v52);
    v57 = *(v50 + 8);
    v57(v23, v51);
    if (v56)
    {
      v40 = _s22VisualIntelligenceCore9ActionPinV13PermanentPillO2eeoiySbAE_AEtFZ_0(v53, v55);
      sub_1D885E3C0(v55, type metadata accessor for ActionPin.PermanentPill);
      sub_1D885E3C0(v53, type metadata accessor for ActionPin.PermanentPill);
      v57(v52, v51);
      goto LABEL_10;
    }

    sub_1D885E3C0(v55, type metadata accessor for ActionPin.PermanentPill);
    sub_1D885E3C0(v53, type metadata accessor for ActionPin.PermanentPill);
    v57(v52, v51);
    goto LABEL_23;
  }

  sub_1D885E420(v32, v26, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v84 + 8))(v26, v85);
    goto LABEL_13;
  }

  v36 = v84;
  v37 = v78;
  v38 = v33;
  v39 = v85;
  (*(v84 + 32))(v78, v38, v85);
  v40 = MEMORY[0x1DA71E300](v26, v37);
  v41 = *(v36 + 8);
  v41(v37, v39);
  v41(v26, v39);
LABEL_10:
  sub_1D885E3C0(v34, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  return v40 & 1;
}

uint64_t sub_1D8860378(uint64_t a1, uint64_t *a2)
{
  v58 = a2;
  v3 = type metadata accessor for BundleClassification.ClassificationType(0);
  v54 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v62 = &v51 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v65 = (&v51 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v51 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v51 - v14);
  v16 = type metadata accessor for BundleClassification(0) - 8;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = *(v19 + 80);
    v64 = *(v19 + 72);
    v53 = (v24 + 32) & ~v24;
    v63 = a1 + v53;
    v52 = *MEMORY[0x1E69C9C08];
    v51 = xmmword_1D8B190C0;
    v56 = MEMORY[0x1E69E7CC0];
    v57 = v3;
    v60 = &v51 - v20;
    v61 = v12;
    v59 = v22;
    while (1)
    {
      sub_1D885E420(v63 + v64 * v23, v21, type metadata accessor for BundleClassification);
      sub_1D885E420(v21, v12, type metadata accessor for BundleClassification.ClassificationType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          *v15 = *v12;
        }

        v27 = type metadata accessor for BuiltInAction(0);
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v27 = type metadata accessor for BuiltInAction(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
          sub_1D885E3C0(v12, type metadata accessor for BundleClassification.ClassificationType);
          goto LABEL_17;
        }

        *v15 = *v12;
        v27 = type metadata accessor for BuiltInAction(0);
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
            sub_1D885E3C0(v12, type metadata accessor for BundleClassification.ClassificationType);
          }

          v26 = type metadata accessor for BuiltInAction(0);
          (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
          goto LABEL_18;
        }

        v28 = *v12;
        v29 = v12[1];
        v30 = v12[2];
        v31 = v12[3];
        v32 = v61[4];

        *v15 = v29;
        v15[1] = v30;
        v15[2] = v31;
        v15[3] = v32;
        v22 = v59;
        v21 = v60;
        v12 = v61;
        v27 = type metadata accessor for BuiltInAction(0);
      }

      swift_storeEnumTagMultiPayload();
      (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
LABEL_17:
      type metadata accessor for BuiltInAction(0);
      if ((*(*(v27 - 8) + 48))(v15, 1, v27) != 1)
      {
        sub_1D87A14E4(v15, &qword_1ECA63188);
        v33 = *v58;
        sub_1D885E420(v21, v62, type metadata accessor for BundleClassification.ClassificationType);
        v34 = swift_getEnumCaseMultiPayload();
        if (v34 > 4)
        {
          if (v34 != 5)
          {
LABEL_36:
            swift_storeEnumTagMultiPayload();

            if (!*(v33 + 16))
            {
              goto LABEL_41;
            }

            goto LABEL_37;
          }

          sub_1D885E3C0(v62, type metadata accessor for BundleClassification.ClassificationType);
          *v65 = MEMORY[0x1E69E7CD0];
        }

        else if (v34 <= 1)
        {
          if (v34)
          {
            v39 = type metadata accessor for VisualLookupClassifier.Result(0);
            (*(*(v39 - 8) + 56))(v65, 1, 1, v39);
            goto LABEL_34;
          }

          sub_1D885E3C0(v62, type metadata accessor for BundleClassification.ClassificationType);
          v35 = v65;
          *v65 = MEMORY[0x1E69E7CC0];
          v35[1] = 0xBFF0000000000000;
        }

        else
        {
          if (v34 != 2)
          {
            if (v34 == 3)
            {
              *v65 = 0;
              goto LABEL_36;
            }

            v37 = v65;
            *v65 = 0x7974706D65;
            v37[1] = 0xE500000000000000;
            v38 = sub_1D8B145A0();
            (*(*(v38 - 8) + 104))(v37, v52, v38);
LABEL_34:
            swift_storeEnumTagMultiPayload();

            sub_1D885E3C0(v62, type metadata accessor for BundleClassification.ClassificationType);
            if (!*(v33 + 16))
            {
LABEL_41:

              sub_1D885E3C0(v65, type metadata accessor for BundleClassification.ClassificationType);
              v21 = v60;
              v12 = v61;
              v22 = v59;
              goto LABEL_42;
            }

LABEL_37:
            sub_1D8B16D20();
            BundleClassification.ClassificationType.hash(into:)(v66);
            v40 = sub_1D8B16D80();
            v41 = -1 << *(v33 + 32);
            v42 = v40 & ~v41;
            if ((*(v33 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
            {
              v43 = ~v41;
              v44 = *(v54 + 72);
              while (1)
              {
                sub_1D885E420(*(v33 + 48) + v44 * v42, v6, type metadata accessor for BundleClassification.ClassificationType);
                v45 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v6, v65);
                sub_1D885E3C0(v6, type metadata accessor for BundleClassification.ClassificationType);
                if (v45)
                {
                  break;
                }

                v42 = (v42 + 1) & v43;
                if (((*(v33 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
                {
                  goto LABEL_41;
                }
              }

              sub_1D885E3C0(v65, type metadata accessor for BundleClassification.ClassificationType);
              v21 = v60;
              sub_1D885E538(v60, v55, type metadata accessor for BundleClassification);
              v46 = v56;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v67 = v46;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D87F3FCC(0, *(v46 + 16) + 1, 1);
                v46 = v67;
              }

              v12 = v61;
              v49 = *(v46 + 16);
              v48 = *(v46 + 24);
              if (v49 >= v48 >> 1)
              {
                sub_1D87F3FCC(v48 > 1, v49 + 1, 1);
                v46 = v67;
              }

              *(v46 + 16) = v49 + 1;
              v56 = v46;
              sub_1D885E538(v55, v46 + v53 + v49 * v64, type metadata accessor for BundleClassification);
              v22 = v59;
              goto LABEL_43;
            }

            goto LABEL_41;
          }

          sub_1D885E3C0(v62, type metadata accessor for BundleClassification.ClassificationType);
          v36 = v65;
          *v65 = v51;
          v36[2] = 0xE700000000000000;
          v36[3] = 0x7974706D65;
          v36[4] = 0xE500000000000000;
          v36[5] = 0;
        }

        swift_storeEnumTagMultiPayload();
        if (!*(v33 + 16))
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

LABEL_18:
      sub_1D87A14E4(v15, &qword_1ECA63188);
LABEL_42:
      sub_1D885E3C0(v21, type metadata accessor for BundleClassification);
LABEL_43:
      if (++v23 == v22)
      {
        return v56;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D8860DE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D8B42470 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D8B42490 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B424B0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974636964657270 && a2 == 0xEF74696D694C6E6FLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B424D0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D8860FA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001DLL && 0x80000001D8B424F0 == a2;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B42510 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D8B42530 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B42550 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C616E69467369 && a2 == 0xEB0000000064657ALL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8861160(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64070);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v58 - v4;
  v72 = type metadata accessor for ActionPin(0);
  v63 = *(v72 - 8);
  v5 = MEMORY[0x1EEE9AC00](v72);
  v71 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v58 - v7;
  v8 = type metadata accessor for CVBundle(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D8B13240();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v58 - v21;
  v74 = MEMORY[0x1E69E7CC8];
  v23 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642A8);
  sub_1D8B15760();
  if (v23)
  {
    v24 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v67 = *(v9 + 72);
    v68 = (v17 + 16);
    v69 = (v17 + 32);
    v60 = v17;
    v65 = v15;
    v66 = (v17 + 8);
    while (1)
    {
      sub_1D885E420(v24, v15, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = *v69;
        (*v69)(v20, v15, v16);
      }

      else
      {
        v26 = v61;
        sub_1D885E538(v15, v61, type metadata accessor for CVTrackSnapshot);
        (*v68)(v20, v26, v16);
        sub_1D885E3C0(v26, type metadata accessor for CVTrackSnapshot);
        v25 = *v69;
      }

      v27 = v20;
      v25(v22, v20, v16);
      v28 = v11;
      sub_1D885E420(v24, v11, type metadata accessor for CVBundle);
      v29 = v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v29;
      v32 = sub_1D87EF764(v22);
      v33 = v29[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        break;
      }

      v36 = v31;
      if (v29[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D896754C();
        }
      }

      else
      {
        sub_1D896D99C(v35, isUniquelyReferenced_nonNull_native);
        v37 = sub_1D87EF764(v22);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_32;
        }

        v32 = v37;
      }

      v11 = v28;
      v39 = v73;
      v40 = v67;
      if (v36)
      {
        sub_1D8864DC8(v11, v73[7] + v32 * v67, type metadata accessor for CVBundle);
        (*v66)(v22, v16);
      }

      else
      {
        v73[(v32 >> 6) + 8] |= 1 << v32;
        v41 = v60;
        (*(v60 + 16))(v39[6] + *(v60 + 72) * v32, v22, v16);
        sub_1D885E538(v11, v39[7] + v32 * v40, type metadata accessor for CVBundle);
        (*(v41 + 8))(v22, v16);
        v42 = v39[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_31;
        }

        v39[2] = v44;
      }

      v74 = v39;
      v24 += v40;
      --v23;
      v15 = v65;
      v20 = v27;
      if (!v23)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_1D8B16C30();
    __break(1u);
  }

  else
  {
    v39 = v74;
LABEL_18:
    v45 = v59;
    v46 = *(v59 + 16);
    if (v46)
    {
      v47 = *(type metadata accessor for ActionPredictor.BundleActionPredictionResult(0) - 8);
      v48 = v64;
      v49 = (v63 + 48);
      v50 = v45 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v51 = *(v47 + 72);
      v52 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D884D894(v50, v39, v48);
        if ((*v49)(v48, 1, v72) == 1)
        {
          sub_1D87A14E4(v48, &qword_1ECA64070);
        }

        else
        {
          v53 = v48;
          v54 = v62;
          sub_1D885E538(v53, v62, type metadata accessor for ActionPin);
          sub_1D885E538(v54, v71, type metadata accessor for ActionPin);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_1D87C7DC8(0, v52[2] + 1, 1, v52);
          }

          v56 = v52[2];
          v55 = v52[3];
          if (v56 >= v55 >> 1)
          {
            v52 = sub_1D87C7DC8(v55 > 1, v56 + 1, 1, v52);
          }

          v52[2] = v56 + 1;
          sub_1D885E538(v71, v52 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v56, type metadata accessor for ActionPin);
          v48 = v64;
        }

        v50 += v51;
        --v46;
      }

      while (v46);
    }

    else
    {
      v52 = MEMORY[0x1E69E7CC0];
    }

    return v52;
  }

  return result;
}

uint64_t sub_1D8861908(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B14F20();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BundleSelector.Output(0);
  if (*(a1 + *(v11 + 32)) == 1)
  {
    MEMORY[0x1EEE9AC00](v11);
    *(&v17 - 2) = a1;

    result = sub_1D87C6D34(sub_1D8864E30, (&v17 - 4), a2);
    v13 = result;
    v14 = 0;
    v18 = *(result + 16);
    v15 = (v5 + 8);
    while (1)
    {
      v16 = v18 == v14;
      if (v18 == v14)
      {
LABEL_6:

        return v16;
      }

      if (v14 >= *(v13 + 16))
      {
        break;
      }

      sub_1D885E420(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14++, v10, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D8B14F00();
      sub_1D885E288(&qword_1EE0E3AA8, MEMORY[0x1E69DFB48]);
      sub_1D8B15C40();
      sub_1D8B15C40();
      (*v15)(v7, v4);
      result = sub_1D885E3C0(v10, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      if (v21 != v20)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void *sub_1D8861BE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for ActionPin(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v28 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v27 = &v25 - v11;
  v12 = sub_1D8B13240();
  v29 = v12;
  v30 = type metadata accessor for CVBundle(0);
  v31 = v30;
  v32 = v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642D0);
  v34 = sub_1D885E288(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  v35 = v34;
  v36 = sub_1D881CF20(&qword_1ECA642D8, &qword_1ECA642D0);
  KeyPath = swift_getKeyPath();
  v14 = sub_1D8AD0930(a2, sub_1D884D6E0, 0, sub_1D88650B0, KeyPath);

  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(type metadata accessor for ActionPredictor.BundleActionPredictionResult(0) - 8);
    v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v18 = *(v16 + 72);
    v19 = MEMORY[0x1E69E7CC0];
    v25 = v18;
    v26 = v14;
    do
    {
      sub_1D884D894(v17, v14, v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_1D87A14E4(v6, &qword_1ECA64070);
      }

      else
      {
        v20 = v7;
        v21 = v27;
        sub_1D885E538(v6, v27, type metadata accessor for ActionPin);
        sub_1D885E538(v21, v28, type metadata accessor for ActionPin);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D87C7DC8(0, v19[2] + 1, 1, v19);
        }

        v23 = v19[2];
        v22 = v19[3];
        if (v23 >= v22 >> 1)
        {
          v19 = sub_1D87C7DC8(v22 > 1, v23 + 1, 1, v19);
        }

        v19[2] = v23 + 1;
        sub_1D885E538(v28, v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23, type metadata accessor for ActionPin);
        v7 = v20;
        v18 = v25;
        v14 = v26;
      }

      v17 += v18;
      --v15;
    }

    while (v15);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  return v19;
}

uint64_t sub_1D8861FDC(uint64_t a1)
{
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v18 - v6);
  v8 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D885E420(a1, v10, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return sub_1D885E3C0(v10, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0);
      sub_1D885E3C0(&v10[*(v14 + 48)], type metadata accessor for ActionPin.PermanentPill);
      v15 = sub_1D8B14E80();
      return (*(*(v15 - 8) + 8))(v10, v15);
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0);

    sub_1D885E538(v10, v7, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D885E420(v7, v5, type metadata accessor for BundleClassification.ClassificationType);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D885E3C0(v7, type metadata accessor for BundleClassification.ClassificationType);
      v7 = v5;
    }

    else
    {
      sub_1D89B9AAC(*v5);
    }

    sub_1D885E3C0(v7, type metadata accessor for BundleClassification.ClassificationType);
    v16 = *(v13 + 48);
    v17 = sub_1D8B13240();
    return (*(*(v17 - 8) + 8))(&v10[v16], v17);
  }
}

uint64_t sub_1D886228C(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v193 = a4;
  v194 = a1;
  v7 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v227 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for CVBundle.BundleType(0);
  v9 = MEMORY[0x1EEE9AC00](v234);
  v221 = &v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v222 = &v189 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v204 = &v189 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v189 - v15;
  v17 = sub_1D8B13240();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v220 = &v189 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v219 = &v189 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v223 = &v189 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v189 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v203 = &v189 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v202 = &v189 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v205 = &v189 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v211 = &v189 - v34;
  v224 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v207 = *(v224 - 8);
  v35 = MEMORY[0x1EEE9AC00](v224);
  v200 = &v189 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v218 = &v189 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v235 = &v189 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v233 = &v189 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v213 = &v189 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v210 = &v189 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](v47);
  v209 = a3;
  v50 = a3[1];
  if (v50 >= 1)
  {
    v190 = &v189 - v48;
    v191 = v49;
    v51 = (v18 + 32);
    v225 = (v18 + 8);
    v226 = (v18 + 16);
    swift_bridgeObjectRetain_n();
    v52 = 0;
    v53 = MEMORY[0x1E69E7CC0];
    v229 = v27;
    v206 = v16;
    v228 = (v18 + 32);
    v215 = v17;
    v214 = a5;
    while (1)
    {
      v54 = v52 + 1;
      v55 = v51 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v230 = v55;
      v199 = v53;
      if (v52 + 1 >= v50)
      {
        v65 = v52 + 1;
        v87 = v193;
      }

      else
      {
        v208 = v50;
        v56 = v52;
        v57 = *v209;
        v58 = *(v207 + 72);
        v59 = *v209 + v58 * v54;
        v60 = v190;
        sub_1D885E420(v59, v190, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v61 = v191;
        sub_1D885E420(v57 + v58 * v56, v191, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v62 = v212;
        LODWORD(v231) = sub_1D884D2D8(v60, v61, a5);
        v212 = v62;
        if (v62)
        {
          sub_1D885E3C0(v61, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          sub_1D885E3C0(v60, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          swift_bridgeObjectRelease_n();
        }

        v55 = type metadata accessor for ActionPredictor.BundleActionPredictionResult;
        sub_1D885E3C0(v61, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        sub_1D885E3C0(v60, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v192 = v56;
        v63 = v56 + 2;
        v217 = v58;
        a5 = (v57 + v58 * (v56 + 2));
        v64 = v206;
        while (1)
        {
          v65 = v208;
          if (v208 == v63)
          {
            break;
          }

          v66 = v210;
          sub_1D885E420(a5, v210, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          sub_1D885E420(v59, v213, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          sub_1D885E420(v66, v64, type metadata accessor for CVBundle.BundleType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v67 = *v228;
            v68 = v205;
            v69 = v215;
            (*v228)(v205, v64, v215);
          }

          else
          {
            v70 = v227;
            sub_1D885E538(v64, v227, type metadata accessor for CVTrackSnapshot);
            v68 = v205;
            v69 = v215;
            (*v226)(v205, v70, v215);
            sub_1D885E3C0(v70, type metadata accessor for CVTrackSnapshot);
            v67 = *v228;
          }

          v71 = v211;
          v55 = v214;
          v67(v211, v68, v69);
          if (!*(v55 + 16))
          {
            goto LABEL_134;
          }

          v72 = sub_1D87EF764(v71);
          if ((v73 & 1) == 0)
          {
            goto LABEL_135;
          }

          v74 = *(*(v55 + 56) + 8 * v72);
          v75 = v204;
          sub_1D885E420(v213, v204, type metadata accessor for CVBundle.BundleType);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v232 = v74;
          if (EnumCaseMultiPayload == 1)
          {
            v77 = v203;
            v78 = v215;
            v67(v203, v75, v215);
          }

          else
          {
            v79 = v75;
            v80 = v227;
            sub_1D885E538(v79, v227, type metadata accessor for CVTrackSnapshot);
            v77 = v203;
            v78 = v215;
            (*v226)(v203, v80, v215);
            sub_1D885E3C0(v80, type metadata accessor for CVTrackSnapshot);
          }

          v81 = v202;
          v67(v202, v77, v78);
          v55 = v214;
          if (!*(v214 + 2))
          {
            goto LABEL_136;
          }

          v82 = sub_1D87EF764(v81);
          if ((v83 & 1) == 0)
          {
            goto LABEL_137;
          }

          v84 = *(*(v55 + 56) + 8 * v82);
          v85 = *v225;
          v86 = v215;
          (*v225)(v81, v215);
          v85(v211, v86);
          v55 = type metadata accessor for ActionPredictor.BundleActionPredictionResult;
          sub_1D885E3C0(v213, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          sub_1D885E3C0(v210, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          ++v63;
          a5 += v217;
          v59 += v217;
          v64 = v206;
          v27 = v229;
          if (((v231 ^ (v232 >= v84)) & 1) == 0)
          {
            v65 = v63 - 1;
            break;
          }
        }

        v87 = v193;
        v17 = v215;
        v52 = v192;
        a5 = v214;
        if (v231)
        {
          if (v65 < v192)
          {
            __break(1u);
LABEL_160:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_161:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_162:

            __break(1u);
LABEL_163:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_164:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_165:
            result = swift_bridgeObjectRelease_n();
            __break(1u);
            return result;
          }

          if (v192 < v65)
          {
            v88 = v217;
            v55 = v217 * (v65 - 1);
            v89 = v65 * v217;
            v208 = v65;
            v90 = v65;
            v91 = v192;
            v92 = v192 * v217;
            do
            {
              if (v91 != --v90)
              {
                v93 = *v209;
                if (!*v209)
                {
                  goto LABEL_163;
                }

                sub_1D885E538(v93 + v92, v200, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
                if (v92 < v55 || v93 + v92 >= (v93 + v89))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v92 != v55)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1D885E538(v200, v93 + v55, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
              }

              ++v91;
              v55 -= v88;
              v89 -= v88;
              v92 += v88;
            }

            while (v91 < v90);
            v87 = v193;
            v27 = v229;
            v17 = v215;
            v52 = v192;
            v65 = v208;
            a5 = v214;
          }
        }
      }

      v94 = v209[1];
      if (v65 >= v94)
      {
        goto LABEL_43;
      }

      if (__OFSUB__(v65, v52))
      {
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if (v65 - v52 >= v87)
      {
        goto LABEL_43;
      }

      if (__OFADD__(v52, v87))
      {
        goto LABEL_156;
      }

      if (v52 + v87 >= v94)
      {
        v95 = v209[1];
      }

      else
      {
        v95 = v52 + v87;
      }

      if (v95 < v52)
      {
        goto LABEL_157;
      }

      if (v65 == v95)
      {
LABEL_43:
        v96 = v65;
        if (v65 < v52)
        {
          goto LABEL_154;
        }

        goto LABEL_44;
      }

      v152 = a5;
      v153 = *v209;
      v154 = *(v207 + 72);
      a5 = (*v209 + v154 * (v65 - 1));
      v216 = -v154;
      v192 = v52;
      v155 = v52 - v65;
      v208 = v65;
      v217 = v153;
      v195 = v154;
      v156 = v153 + v65 * v154;
      v157 = v223;
      v201 = v95;
      while (2)
      {
        v196 = v156;
        v158 = v156;
        v197 = v155;
        v198 = a5;
        while (1)
        {
          v231 = v155;
          v159 = v233;
          sub_1D885E420(v158, v233, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          sub_1D885E420(a5, v235, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          v55 = v222;
          sub_1D885E420(v159, v222, type metadata accessor for CVBundle.BundleType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v160 = *v228;
            (*v228)(v157, v55, v17);
          }

          else
          {
            v161 = v55;
            v55 = v227;
            sub_1D885E538(v161, v227, type metadata accessor for CVTrackSnapshot);
            (*v226)(v157, v55, v17);
            sub_1D885E3C0(v55, type metadata accessor for CVTrackSnapshot);
            v160 = *v228;
          }

          v160(v27, v157, v17);
          if (!*(v152 + 2))
          {
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
LABEL_142:
            __break(1u);
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
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
            goto LABEL_155;
          }

          v55 = v152;
          v162 = sub_1D87EF764(v27);
          if ((v163 & 1) == 0)
          {
            goto LABEL_131;
          }

          v164 = v17;
          v165 = v152;
          v232 = *(*(v152 + 7) + 8 * v162);
          v55 = v221;
          sub_1D885E420(v235, v221, type metadata accessor for CVBundle.BundleType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v166 = v220;
            v167 = v164;
            v160(v220, v55, v164);
          }

          else
          {
            v168 = v55;
            v55 = v227;
            sub_1D885E538(v168, v227, type metadata accessor for CVTrackSnapshot);
            v166 = v220;
            v167 = v164;
            (*v226)(v220, v55, v164);
            sub_1D885E3C0(v55, type metadata accessor for CVTrackSnapshot);
          }

          v169 = v219;
          v160(v219, v166, v167);
          if (!*(v165 + 16))
          {
            goto LABEL_132;
          }

          v55 = v165;
          v170 = sub_1D87EF764(v169);
          if ((v171 & 1) == 0)
          {
            goto LABEL_133;
          }

          v152 = v165;
          v172 = *(*(v165 + 56) + 8 * v170);
          v173 = *v225;
          v17 = v164;
          (*v225)(v169, v164);
          v27 = v229;
          v173(v229, v17);
          v55 = type metadata accessor for ActionPredictor.BundleActionPredictionResult;
          sub_1D885E3C0(v235, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          sub_1D885E3C0(v233, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          if (v232 >= v172)
          {
            break;
          }

          v157 = v223;
          v174 = v231;
          if (!v217)
          {
            goto LABEL_160;
          }

          v55 = type metadata accessor for ActionPredictor.BundleActionPredictionResult;
          v175 = v218;
          sub_1D885E538(v158, v218, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          swift_arrayInitWithTakeFrontToBack();
          sub_1D885E538(v175, a5, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          a5 += v216;
          v158 += v216;
          v176 = __CFADD__(v174, 1);
          v155 = v174 + 1;
          if (v176)
          {
            goto LABEL_95;
          }
        }

        v157 = v223;
LABEL_95:
        a5 = &v198[v195];
        v155 = v197 - 1;
        v156 = v196 + v195;
        ++v208;
        v96 = v201;
        if (v208 != v201)
        {
          continue;
        }

        break;
      }

      v52 = v192;
      a5 = v152;
      if (v201 < v192)
      {
        goto LABEL_154;
      }

LABEL_44:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v201 = v96;
      if (isUniquelyReferenced_nonNull_native)
      {
        v53 = v199;
      }

      else
      {
        v53 = sub_1D87C7C5C(0, *(v199 + 2) + 1, 1, v199);
      }

      v99 = *(v53 + 2);
      v98 = *(v53 + 3);
      v55 = v99 + 1;
      if (v99 >= v98 >> 1)
      {
        v53 = sub_1D87C7C5C((v98 > 1), v99 + 1, 1, v53);
      }

      *(v53 + 2) = v55;
      v100 = &v53[16 * v99];
      v101 = v201;
      *(v100 + 4) = v52;
      *(v100 + 5) = v101;
      v232 = *v194;
      if (!v232)
      {
        goto LABEL_164;
      }

      if (v99)
      {
        while (1)
        {
          v102 = v55 - 1;
          if (v55 >= 4)
          {
            break;
          }

          if (v55 == 3)
          {
            v103 = *(v53 + 4);
            v104 = *(v53 + 5);
            v113 = __OFSUB__(v104, v103);
            v105 = v104 - v103;
            v106 = v113;
LABEL_63:
            if (v106)
            {
              goto LABEL_143;
            }

            v119 = &v53[16 * v55];
            v121 = *v119;
            v120 = *(v119 + 1);
            v122 = __OFSUB__(v120, v121);
            v123 = v120 - v121;
            v124 = v122;
            if (v122)
            {
              goto LABEL_146;
            }

            v125 = &v53[16 * v102 + 32];
            v127 = *v125;
            v126 = *(v125 + 1);
            v113 = __OFSUB__(v126, v127);
            v128 = v126 - v127;
            if (v113)
            {
              goto LABEL_149;
            }

            if (__OFADD__(v123, v128))
            {
              goto LABEL_150;
            }

            if (v123 + v128 >= v105)
            {
              if (v105 < v128)
              {
                v102 = v55 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          v129 = &v53[16 * v55];
          v131 = *v129;
          v130 = *(v129 + 1);
          v113 = __OFSUB__(v130, v131);
          v123 = v130 - v131;
          v124 = v113;
LABEL_77:
          if (v124)
          {
            goto LABEL_145;
          }

          v132 = &v53[16 * v102];
          v134 = *(v132 + 4);
          v133 = *(v132 + 5);
          v113 = __OFSUB__(v133, v134);
          v135 = v133 - v134;
          if (v113)
          {
            goto LABEL_148;
          }

          if (v135 < v123)
          {
            goto LABEL_3;
          }

LABEL_84:
          v140 = v102 - 1;
          if (v102 - 1 >= v55)
          {
            goto LABEL_138;
          }

          v141 = *v209;
          if (!*v209)
          {
            goto LABEL_161;
          }

          v142 = v53;
          v143 = *&v53[16 * v140 + 32];
          a5 = v102;
          v144 = *&v53[16 * v102 + 40];
          v145 = *(v207 + 72);
          v146 = v141 + v145 * v143;
          v55 = v141 + v145 * *&v53[16 * v102 + 32];
          v147 = v141 + v145 * v144;
          v148 = v214;

          v149 = v146;
          v150 = v212;
          sub_1D885C584(v149, v55, v147, v232, v148);
          if (v150)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v144 < v143)
          {
            goto LABEL_139;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = sub_1D885CC68(v142);
          }

          v27 = v229;
          if (v140 >= *(v142 + 2))
          {
            goto LABEL_140;
          }

          v212 = 0;
          v151 = &v142[16 * v140];
          *(v151 + 4) = v143;
          *(v151 + 5) = v144;
          v236 = v142;
          sub_1D885CBDC(a5);
          v53 = v236;
          v55 = *(v236 + 16);
          v17 = v215;
          a5 = v214;
          if (v55 <= 1)
          {
            goto LABEL_3;
          }
        }

        v107 = &v53[16 * v55 + 32];
        v108 = *(v107 - 64);
        v109 = *(v107 - 56);
        v113 = __OFSUB__(v109, v108);
        v110 = v109 - v108;
        if (v113)
        {
          goto LABEL_141;
        }

        v112 = *(v107 - 48);
        v111 = *(v107 - 40);
        v113 = __OFSUB__(v111, v112);
        v105 = v111 - v112;
        v106 = v113;
        if (v113)
        {
          goto LABEL_142;
        }

        v114 = &v53[16 * v55];
        v116 = *v114;
        v115 = *(v114 + 1);
        v113 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v113)
        {
          goto LABEL_144;
        }

        v113 = __OFADD__(v105, v117);
        v118 = v105 + v117;
        if (v113)
        {
          goto LABEL_147;
        }

        if (v118 >= v110)
        {
          v136 = &v53[16 * v102 + 32];
          v138 = *v136;
          v137 = *(v136 + 1);
          v113 = __OFSUB__(v137, v138);
          v139 = v137 - v138;
          if (v113)
          {
            goto LABEL_153;
          }

          if (v105 < v139)
          {
            v102 = v55 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_63;
      }

LABEL_3:
      v50 = v209[1];
      v52 = v201;
      v51 = v228;
      if (v201 >= v50)
      {
        goto LABEL_118;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  v53 = MEMORY[0x1E69E7CC0];
LABEL_118:
  v235 = *v194;
  if (!v235)
  {
    goto LABEL_165;
  }

  v55 = v53;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_158:
    v55 = sub_1D885CC68(v55);
  }

  v178 = a5;
  v236 = v55;
  v179 = *(v55 + 16);
  if (v179 >= 2)
  {
    do
    {
      v180 = *v209;
      if (!*v209)
      {
        goto LABEL_162;
      }

      v181 = *(v55 + 16 * v179);
      a5 = v55;
      v182 = *(v55 + 16 * (v179 - 1) + 40);
      v183 = *(v207 + 72);
      v184 = v180 + v183 * v181;
      v55 = v180 + v183 * *(v55 + 16 * (v179 - 1) + 32);
      v185 = v180 + v183 * v182;

      v186 = v184;
      v187 = v212;
      sub_1D885C584(v186, v55, v185, v235, v178);
      v212 = v187;
      if (v187)
      {
        break;
      }

      if (v182 < v181)
      {
        goto LABEL_151;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a5 = sub_1D885CC68(a5);
      }

      if (v179 - 2 >= *(a5 + 2))
      {
        goto LABEL_152;
      }

      v188 = &a5[16 * v179];
      *v188 = v181;
      *(v188 + 1) = v182;
      v236 = a5;
      sub_1D885CBDC(v179 - 1);
      v55 = v236;
      v179 = *(v236 + 16);
    }

    while (v179 > 1);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D88636AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v72 = a5;
  v9 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v70 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = type metadata accessor for CVBundle.BundleType(0);
  v11 = MEMORY[0x1EEE9AC00](v78);
  v75 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v54[-v13];
  v14 = sub_1D8B13240();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v69 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v54[-v19];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v71 = &v54[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v54[-v23];
  v64 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v24 = MEMORY[0x1EEE9AC00](v64);
  v63 = &v54[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v80 = &v54[-v27];
  result = MEMORY[0x1EEE9AC00](v26);
  v76 = &v54[-v30];
  v56 = a2;
  if (a3 != a2)
  {
    v31 = v20;
    v32 = *a4;
    v33 = *(v29 + 72);
    v68 = (v15 + 16);
    v34 = (v15 + 32);
    v65 = (v15 + 8);
    v35 = v32 + v33 * (a3 - 1);
    v61 = -v33;
    v62 = v32;
    v36 = a1 - a3;
    v55 = v33;
    v37 = v32 + v33 * a3;
    v66 = (v15 + 32);
    v67 = v31;
LABEL_5:
    v60 = a3;
    v57 = v37;
    v58 = v36;
    v59 = v35;
    v38 = v71;
    while (1)
    {
      v74 = v36;
      v39 = v76;
      sub_1D885E420(v37, v76, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D885E420(v35, v80, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D885E420(v39, v79, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v40 = *v34;
        (*v34)(v38, v79, v14);
      }

      else
      {
        v41 = v70;
        sub_1D885E538(v79, v70, type metadata accessor for CVTrackSnapshot);
        (*v68)(v38, v41, v14);
        sub_1D885E3C0(v41, type metadata accessor for CVTrackSnapshot);
        v40 = *v34;
      }

      v42 = v77;
      result = v40(v77, v38, v14);
      v43 = v72;
      if (!*(v72 + 16))
      {
        break;
      }

      result = sub_1D87EF764(v42);
      if ((v44 & 1) == 0)
      {
        goto LABEL_22;
      }

      v73 = *(*(v43 + 56) + 8 * result);
      sub_1D885E420(v80, v75, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = v69;
        v40(v69, v75, v14);
      }

      else
      {
        v46 = v70;
        sub_1D885E538(v75, v70, type metadata accessor for CVTrackSnapshot);
        v45 = v69;
        (*v68)(v69, v46, v14);
        v43 = v72;
        sub_1D885E3C0(v46, type metadata accessor for CVTrackSnapshot);
      }

      v34 = v66;
      v47 = v67;
      result = v40(v67, v45, v14);
      if (!*(v43 + 16))
      {
        goto LABEL_23;
      }

      result = sub_1D87EF764(v47);
      if ((v48 & 1) == 0)
      {
        goto LABEL_24;
      }

      v49 = *(*(v43 + 56) + 8 * result);
      v50 = *v65;
      (*v65)(v47, v14);
      v50(v77, v14);
      sub_1D885E3C0(v80, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      result = sub_1D885E3C0(v76, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v51 = v74;
      v38 = v71;
      if (v73 < v49)
      {
        if (!v62)
        {
          goto LABEL_25;
        }

        v52 = v63;
        sub_1D885E538(v37, v63, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D885E538(v52, v35, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v35 += v61;
        v37 += v61;
        v53 = __CFADD__(v51, 1);
        v36 = v51 + 1;
        if (!v53)
        {
          continue;
        }
      }

      a3 = v60 + 1;
      v35 = v59 + v55;
      v36 = v58 - 1;
      v37 = v57 + v55;
      if (v60 + 1 == v56)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8863D30(uint64_t *a1, char *a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1D8B16B30();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
        v8 = sub_1D8B15D60();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for ActionPredictor.BundleActionPredictionResult(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_1D886228C(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_1D88636AC(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D8863EB4(void **a1, char *a2)
{
  v4 = *(type metadata accessor for ActionPredictor.BundleActionPredictionResult(0) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D885D344(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D8863D30(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_1D8863F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for CVBundle(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = (v11 + 32) & ~v11;
  v15 = v9 + v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = __OFSUB__(a3, v13);
  v17 = a3 - v13;
  if (v16)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = *(v9 + 16);
  if (__OFSUB__(v18, a2))
  {
    goto LABEL_23;
  }

  result = v15 + v12 * a3;
  v19 = v9 + v14 + v12 * a2;
  if (result < v19 || result >= v19 + (v18 - a2) * v12)
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v19)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v21 = *(v9 + 16);
  v16 = __OFADD__(v21, v17);
  v22 = v21 + v17;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v9 + 16) = v22;
LABEL_15:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_1D8864124(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > v5[3] >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1D87C7E90(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1D8863F9C(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1D88641F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for BundleClassification.ClassificationType(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1D8864340(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = v11 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = v12 + 16 * a3;
      v17 = (v11 + 32 + 16 * a2);
      v18 = 16 * v16;
      v19 = &v17[16 * v16];
      if (result != v17 || result >= v19)
      {
        result = memmove(result, v17, v18);
      }

      v21 = *(v11 + 16);
      v13 = __OFADD__(v21, v14);
      v22 = v21 + v14;
      if (!v13)
      {
        *(v11 + 16) = v22;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    *(v12 + 8) = a5;
    result = sub_1D881F4C0(a4, a5);
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1D886442C(unint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_1D87CA1C0(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_1D8864340(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_1D8864508(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D886460C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 56 * result + 56 * a3;
  v10 = (v6 + 32 + 56 * a2);
  if (result != v10 || result >= v10 + 56 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 56 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D88646F0(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1D88647C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for CVTrackedDetection(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1D8B16610();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1D8B16610();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}