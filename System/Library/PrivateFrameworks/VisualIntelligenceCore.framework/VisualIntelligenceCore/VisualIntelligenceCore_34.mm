uint64_t sub_1D8A91658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  sub_1D87A0E38(a1, &v13 - v10, &qword_1ECA67750);
  if ((*(a2 + 32) & 1) == 0)
  {
    sub_1D8A73CF4(v9, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
    sub_1D87A14E4(v11, &qword_1ECA67750);
    sub_1D881F6FC(v9, v11, &qword_1ECA67750);
  }

  sub_1D8A5CDD4(a3, 0.0);
  return sub_1D87A14E4(v11, &qword_1ECA67750);
}

uint64_t sub_1D8A917D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_1D8B13830();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FC0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  if ((sub_1D8B13200() & 1) == 0)
  {
    goto LABEL_15;
  }

  v16 = a3(0);
  if (*(a1 + *(v16 + 20)) != *(a2 + *(v16 + 20)))
  {
    goto LABEL_15;
  }

  v17 = v16;
  v18 = (a1 + *(v16 + 24));
  v19 = v18[3];
  v38[2] = v18[2];
  v38[3] = v19;
  v20 = v18[1];
  v38[0] = *v18;
  v38[1] = v20;
  v21 = (a2 + *(v16 + 24));
  v22 = v21[1];
  v37[0] = *v21;
  v37[1] = v22;
  v23 = v21[3];
  v37[2] = v21[2];
  v37[3] = v23;
  if (!_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v38, v37))
  {
    goto LABEL_15;
  }

  v24 = v17[7];
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  if ((v25 != *v27 || v26 != v27[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(a1 + v17[8]) != *(a2 + v17[8]) || *(a1 + v17[9]) != *(a2 + v17[9]))
  {
    goto LABEL_15;
  }

  v28 = v17[10];
  v29 = *(v13 + 48);
  sub_1D87A0E38(a1 + v28, v15, &qword_1ECA635E8);
  v36 = v29;
  sub_1D87A0E38(a2 + v28, &v15[v29], &qword_1ECA635E8);
  v30 = *(v7 + 48);
  if (v30(v15, 1, v6) == 1)
  {
    if (v30(&v15[v36], 1, v6) == 1)
    {
      sub_1D87A14E4(v15, &qword_1ECA635E8);
LABEL_18:
      v31 = _s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(a1 + v17[11], a2 + v17[11]);
      return v31 & 1;
    }

    goto LABEL_14;
  }

  sub_1D87A0E38(v15, v12, &qword_1ECA635E8);
  if (v30(&v15[v36], 1, v6) == 1)
  {
    (*(v7 + 8))(v12, v6);
LABEL_14:
    sub_1D87A14E4(v15, &qword_1ECA64FC0);
    goto LABEL_15;
  }

  (*(v7 + 32))(v9, &v15[v36], v6);
  sub_1D8A92E28(&qword_1ECA64FC8, MEMORY[0x1E69E0330]);
  v33 = sub_1D8B158C0();
  v34 = *(v7 + 8);
  v34(v9, v6);
  v34(v12, v6);
  sub_1D87A14E4(v15, &qword_1ECA635E8);
  if (v33)
  {
    goto LABEL_18;
  }

LABEL_15:
  v31 = 0;
  return v31 & 1;
}

BOOL _s22VisualIntelligenceCore19ParseDetectorResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D8B13200())
  {
    v4 = type metadata accessor for ParseDetectorResult(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      v5 = v4;
      v6 = (a1 + *(v4 + 24));
      v7 = v6[3];
      v26[2] = v6[2];
      v26[3] = v7;
      v8 = v6[1];
      v26[0] = *v6;
      v26[1] = v8;
      v9 = (a2 + *(v4 + 24));
      v10 = v9[1];
      v25[0] = *v9;
      v25[1] = v10;
      v11 = v9[3];
      v25[2] = v9[2];
      v25[3] = v11;
      if (_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v26, v25) && (sub_1D88E19B4(*(a1 + v5[7]), *(a2 + v5[7])) & 1) != 0 && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]))
      {
        if (v12 = v5[11], v13 = *(a1 + v12), v14 = *(a1 + v12 + 8), v15 = (a2 + v12), v13 == *v15) && v14 == v15[1] || (sub_1D8B16BA0())
        {
          if (v16 = v5[12], v17 = *(a1 + v16), v18 = *(a1 + v16 + 8), v19 = (a2 + v16), v17 == *v19) && v18 == v19[1] || (sub_1D8B16BA0())
          {
            if (_s22VisualIntelligenceCore0A22UnderstandingContainerV2eeoiySbAC_ACtFZ_0((a1 + v5[13]), (a2 + v5[13])))
            {
              v20 = v5[14];
              v21 = *(a1 + v20);
              v22 = *(a2 + v20);
              if (v21)
              {
                if (v22)
                {

                  v23 = sub_1D88E19FC(v21, v22);

                  if (v23)
                  {
                    return *(a1 + v5[15]) == *(a2 + v5[15]);
                  }
                }
              }

              else if (!v22)
              {
                return *(a1 + v5[15]) == *(a2 + v5[15]);
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

BOOL _s22VisualIntelligenceCore27GroundedParseDetectorResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D8B13200())
  {
    v4 = type metadata accessor for GroundedParseDetectorResult(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      v5 = v4;
      v6 = (a1 + *(v4 + 24));
      v7 = v6[3];
      v26[2] = v6[2];
      v26[3] = v7;
      v8 = v6[1];
      v26[0] = *v6;
      v26[1] = v8;
      v9 = (a2 + *(v4 + 24));
      v10 = v9[1];
      v25[0] = *v9;
      v25[1] = v10;
      v11 = v9[3];
      v25[2] = v9[2];
      v25[3] = v11;
      if (_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v26, v25) && (sub_1D88E19B4(*(a1 + v5[7]), *(a2 + v5[7])) & 1) != 0 && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]))
      {
        if (v12 = v5[11], v13 = *(a1 + v12), v14 = *(a1 + v12 + 8), v15 = (a2 + v12), v13 == *v15) && v14 == v15[1] || (sub_1D8B16BA0())
        {
          if (v16 = v5[12], v17 = *(a1 + v16), v18 = *(a1 + v16 + 8), v19 = (a2 + v16), v17 == *v19) && v18 == v19[1] || (sub_1D8B16BA0())
          {
            if (_s22VisualIntelligenceCore0A22UnderstandingContainerV2eeoiySbAC_ACtFZ_0((a1 + v5[13]), (a2 + v5[13])) && (_s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(a1 + v5[14], a2 + v5[14]) & 1) != 0)
            {
              v20 = v5[15];
              v21 = *(a1 + v20);
              v22 = *(a2 + v20);
              if (v21)
              {
                if (v22)
                {

                  v23 = sub_1D88E19FC(v21, v22);

                  if (v23)
                  {
                    return *(a1 + v5[16]) == *(a2 + v5[16]);
                  }
                }
              }

              else if (!v22)
              {
                return *(a1 + v5[16]) == *(a2 + v5[16]);
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D8A91FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s22VisualIntelligenceCore0aB12LookupResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13000();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63608);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44[-v18];
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D8B16BA0() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v20 = *(a1 + 40);
  v21 = *(a2 + 40);
  if (v20)
  {
    if (!v21 || (*(a1 + 32) != *(a2 + 32) || v20 != v21) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (v21)
  {
    goto LABEL_46;
  }

  v22 = *(a1 + 56);
  v23 = *(a2 + 56);
  if (v22)
  {
    if (!v23 || (*(a1 + 48) != *(a2 + 48) || v22 != v23) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (v23)
  {
    goto LABEL_46;
  }

  v24 = *(a1 + 72);
  v25 = *(a2 + 72);
  if (v24)
  {
    if (!v25 || (*(a1 + 64) != *(a2 + 64) || v24 != v25) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (v25)
  {
    goto LABEL_46;
  }

  if ((*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_1D8B16BA0() & 1) == 0 || *(a1 + 96) != *(a2 + 96))
  {
    goto LABEL_46;
  }

  v47 = type metadata accessor for VisualIntelligenceLookupResult(0);
  v26 = *(v14 + 48);
  v49 = v47[11];
  v50 = v26;
  sub_1D87A0E38(a1 + v49, v19, &qword_1ECA630C0);
  sub_1D87A0E38(a2 + v49, &v19[v50], &qword_1ECA630C0);
  v48 = v5;
  v28 = *(v5 + 48);
  v27 = v5 + 48;
  v49 = v28;
  if (v28(v19, 1, v4) == 1)
  {
    if ((v49)(&v19[v50], 1, v4) == 1)
    {
      v46 = v27;
      sub_1D87A14E4(v19, &qword_1ECA630C0);
      goto LABEL_39;
    }

LABEL_37:
    v29 = v19;
LABEL_45:
    sub_1D87A14E4(v29, &qword_1ECA63608);
    goto LABEL_46;
  }

  sub_1D87A0E38(v19, v13, &qword_1ECA630C0);
  v46 = v27;
  if ((v49)(&v19[v50], 1, v4) == 1)
  {
    (*(v48 + 8))(v13, v4);
    goto LABEL_37;
  }

  v30 = v48;
  (*(v48 + 32))(v7, &v19[v50], v4);
  sub_1D8A92E28(&qword_1ECA63610, MEMORY[0x1E6968FB0]);
  v45 = sub_1D8B158C0();
  v31 = v30 + 8;
  v32 = *(v30 + 8);
  v50 = v31;
  v32(v7, v4);
  v32(v13, v4);
  sub_1D87A14E4(v19, &qword_1ECA630C0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_39:
  v33 = v47[12];
  v34 = *(v14 + 48);
  sub_1D87A0E38(a1 + v33, v17, &qword_1ECA630C0);
  v35 = a2 + v33;
  v36 = v34;
  sub_1D87A0E38(v35, &v17[v34], &qword_1ECA630C0);
  v37 = v49;
  if ((v49)(v17, 1, v4) != 1)
  {
    sub_1D87A0E38(v17, v11, &qword_1ECA630C0);
    if (v37(&v17[v34], 1, v4) != 1)
    {
      v40 = v48;
      (*(v48 + 32))(v7, &v17[v36], v4);
      sub_1D8A92E28(&qword_1ECA63610, MEMORY[0x1E6968FB0]);
      v41 = sub_1D8B158C0();
      v42 = *(v40 + 8);
      v42(v7, v4);
      v42(v11, v4);
      sub_1D87A14E4(v17, &qword_1ECA630C0);
      if ((v41 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

    (*(v48 + 8))(v11, v4);
    goto LABEL_44;
  }

  if (v37(&v17[v34], 1, v4) != 1)
  {
LABEL_44:
    v29 = v17;
    goto LABEL_45;
  }

  sub_1D87A14E4(v17, &qword_1ECA630C0);
LABEL_49:
  v43 = v47;
  if (sub_1D885571C(*(a1 + v47[13]), *(a2 + v47[13])) & 1) != 0 && (sub_1D88E743C(*(a1 + v43[14]), *(a2 + v43[14])))
  {
    v38 = *(a1 + v43[15]) ^ *(a2 + v43[15]) ^ 1;
    return v38 & 1;
  }

LABEL_46:
  v38 = 0;
  return v38 & 1;
}

BOOL _s22VisualIntelligenceCore0A22UnderstandingContainerV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = sub_1D8B13830();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FC0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = type metadata accessor for VisualUnderstandingContainer(0);
  v15 = a1;
  v16 = a2;
  v33 = v14;
  v34 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_1D87A0E38(v15 + v17, v13, &qword_1ECA635E8);
  v19 = v16 + v17;
  v20 = v16;
  sub_1D87A0E38(v19, &v13[v18], &qword_1ECA635E8);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v18], 1, v4) == 1)
    {
      sub_1D87A14E4(v13, &qword_1ECA635E8);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1D87A0E38(v13, v10, &qword_1ECA635E8);
  if (v21(&v13[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1D87A14E4(v13, &qword_1ECA64FC0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v18], v4);
  sub_1D8A92E28(&qword_1ECA64FC8, MEMORY[0x1E69E0330]);
  v22 = sub_1D8B158C0();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  v20 = v16;
  sub_1D87A14E4(v13, &qword_1ECA635E8);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v24 = *(v33 + 24);
  v25 = v34 + v24;
  v27 = *(v34 + v24);
  v26 = *(v34 + v24 + 8);
  v28 = (v20 + v24);
  v30 = *v28;
  v29 = v28[1];
  if (v26 >> 60 == 15)
  {
    if (v29 >> 60 == 15)
    {
      sub_1D8883D78(*v25, *(v25 + 8));
      sub_1D8883D78(v30, v29);
      sub_1D87C12A4(v27, v26);
      return 1;
    }

    goto LABEL_13;
  }

  if (v29 >> 60 == 15)
  {
LABEL_13:
    sub_1D8883D78(*v25, *(v25 + 8));
    sub_1D8883D78(v30, v29);
    sub_1D87C12A4(v27, v26);
    sub_1D87C12A4(v30, v29);
    return 0;
  }

  sub_1D8883D78(*v25, *(v25 + 8));
  sub_1D8883D78(v30, v29);
  v32 = sub_1D87A057C(v27, v26, v30, v29);
  sub_1D87C12A4(v30, v29);
  sub_1D87C12A4(v27, v26);
  return (v32 & 1) != 0;
}

unint64_t sub_1D8A92C00()
{
  result = qword_1ECA685A8;
  if (!qword_1ECA685A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA685A8);
  }

  return result;
}

unint64_t sub_1D8A92C54()
{
  result = qword_1ECA685B8;
  if (!qword_1ECA685B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA630C0);
    sub_1D8A92E28(&qword_1ECA66268, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA685B8);
  }

  return result;
}

uint64_t sub_1D8A92D08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63660);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8A92D74()
{
  result = qword_1ECA685F0;
  if (!qword_1ECA685F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA630C0);
    sub_1D8A92E28(&qword_1ECA66260, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA685F0);
  }

  return result;
}

uint64_t sub_1D8A92E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8A92E70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA685C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8A92EDC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA685D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8A92F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8A92FBC()
{
  result = qword_1ECA68610;
  if (!qword_1ECA68610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68610);
  }

  return result;
}

uint64_t sub_1D8A93010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D8A93070()
{
  result = qword_1ECA68638;
  if (!qword_1ECA68638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68638);
  }

  return result;
}

unint64_t sub_1D8A930C4()
{
  result = qword_1ECA68558;
  if (!qword_1ECA68558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68520);
    sub_1D8A92E28(&qword_1ECA68560, MEMORY[0x1E69E03D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68558);
  }

  return result;
}

unint64_t sub_1D8A93178()
{
  result = qword_1ECA68528;
  if (!qword_1ECA68528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68520);
    sub_1D8A92E28(&qword_1ECA68530, MEMORY[0x1E69E03D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68528);
  }

  return result;
}

unint64_t sub_1D8A9322C()
{
  result = qword_1ECA68648;
  if (!qword_1ECA68648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA635E8);
    sub_1D8A92E28(&qword_1ECA68618, MEMORY[0x1E69E0330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68648);
  }

  return result;
}

unint64_t sub_1D8A932E0()
{
  result = qword_1ECA68658;
  if (!qword_1ECA68658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68650);
    sub_1D89980D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68658);
  }

  return result;
}

unint64_t sub_1D8A93364()
{
  result = qword_1ECA68668;
  if (!qword_1ECA68668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68668);
  }

  return result;
}

unint64_t sub_1D8A933B8()
{
  result = qword_1ECA68680;
  if (!qword_1ECA68680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68680);
  }

  return result;
}

unint64_t sub_1D8A9340C()
{
  result = qword_1ECA68698;
  if (!qword_1ECA68698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68698);
  }

  return result;
}

uint64_t sub_1D8A934F0(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681D0, type metadata accessor for ParseDetectorResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA68118, type metadata accessor for ParseDetectorResult);
  a1[3] = sub_1D8A92E28(&qword_1ECA686B8, type metadata accessor for ParseDetectorResult);
  result = sub_1D8A92E28(&qword_1ECA686C0, type metadata accessor for ParseDetectorResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8A935C4(uint64_t a1)
{
  result = sub_1D8A92E28(&qword_1ECA686C8, type metadata accessor for ParseDetectorResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8A93664(uint64_t a1)
{
  result = sub_1D8A92E28(&qword_1ECA686D0, type metadata accessor for ParseDetectorResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8A936BC(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681D8, type metadata accessor for GroundedParseDetectorResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA68138, type metadata accessor for GroundedParseDetectorResult);
  a1[3] = sub_1D8A92E28(&qword_1ECA686D8, type metadata accessor for GroundedParseDetectorResult);
  result = sub_1D8A92E28(&qword_1ECA686E0, type metadata accessor for GroundedParseDetectorResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8A93790(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681D8, type metadata accessor for GroundedParseDetectorResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA68138, type metadata accessor for GroundedParseDetectorResult);
  result = sub_1D8A92E28(&qword_1ECA686D8, type metadata accessor for GroundedParseDetectorResult);
  a1[3] = result;
  return result;
}

uint64_t sub_1D8A9383C(uint64_t a1)
{
  result = sub_1D8A92E28(&qword_1EE0E49A0, type metadata accessor for GroundedParseDetectorResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8A938DC(uint64_t a1)
{
  result = sub_1D8A92E28(qword_1EE0E49A8, type metadata accessor for GroundedParseDetectorResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8A93934(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681C8, type metadata accessor for GroundedParseEmbeddingsResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA680C8, type metadata accessor for GroundedParseEmbeddingsResult);
  a1[3] = sub_1D8A92E28(&qword_1ECA686E8, type metadata accessor for GroundedParseEmbeddingsResult);
  result = sub_1D8A92E28(&qword_1ECA686F0, type metadata accessor for GroundedParseEmbeddingsResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8A93A08(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681C8, type metadata accessor for GroundedParseEmbeddingsResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA680C8, type metadata accessor for GroundedParseEmbeddingsResult);
  result = sub_1D8A92E28(&qword_1ECA686E8, type metadata accessor for GroundedParseEmbeddingsResult);
  a1[3] = result;
  return result;
}

uint64_t sub_1D8A93AFC(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681C0, type metadata accessor for GroundedParseClassificationsResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA680B8, type metadata accessor for GroundedParseClassificationsResult);
  a1[3] = sub_1D8A92E28(&qword_1ECA68700, type metadata accessor for GroundedParseClassificationsResult);
  result = sub_1D8A92E28(&qword_1ECA68708, type metadata accessor for GroundedParseClassificationsResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8A93BD0(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681C0, type metadata accessor for GroundedParseClassificationsResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA680B8, type metadata accessor for GroundedParseClassificationsResult);
  result = sub_1D8A92E28(&qword_1ECA68700, type metadata accessor for GroundedParseClassificationsResult);
  a1[3] = result;
  return result;
}

void sub_1D8A93CEC()
{
  sub_1D8A6F590(319, &qword_1EE0E3A20);
  if (v0 <= 0x3F)
  {
    sub_1D8A93FF4(319, &qword_1EE0E98B8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D8A93E34();
      if (v2 <= 0x3F)
      {
        sub_1D8A93E90(319, &qword_1EE0E3928, &qword_1EE0E3760, 0x1E69CA390, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8A93E34()
{
  if (!qword_1EE0E3A30)
  {
    v0 = sub_1D8B15780();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3A30);
    }
  }
}

void sub_1D8A93E90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D881F764(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D8A93F20()
{
  sub_1D8A93FF4(319, &qword_1EE0E9878, MEMORY[0x1E69E0330], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D8A6F590(319, &qword_1EE0E98B0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8A93FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D8A940BC()
{
  sub_1D8B13240();
  if (v0 <= 0x3F)
  {
    sub_1D8A93FF4(319, &qword_1EE0E3A10, MEMORY[0x1E69E03D8], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for VisualUnderstandingContainer(319);
      if (v2 <= 0x3F)
      {
        sub_1D8A71668();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8A94214()
{
  sub_1D8B13240();
  if (v0 <= 0x3F)
  {
    sub_1D8A93FF4(319, &qword_1EE0E3A10, MEMORY[0x1E69E03D8], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for VisualUnderstandingContainer(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DetectionRequest.Originator(319);
        if (v3 <= 0x3F)
        {
          sub_1D8A71668();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_64Tm(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D8B13240();
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
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v15 = type metadata accessor for DetectionRequest.Originator(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t __swift_store_extra_inhabitant_index_65Tm(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D8B13240();
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
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = type metadata accessor for DetectionRequest.Originator(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

void sub_1D8A946B4()
{
  sub_1D8B13240();
  if (v0 <= 0x3F)
  {
    sub_1D8A93FF4(319, &qword_1EE0E9878, MEMORY[0x1E69E0330], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DetectionRequest.Originator(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D8A94800()
{
  result = sub_1D8B151E0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8A948F8()
{
  result = sub_1D8B151E0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LoggingSignposter(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D8A94A3C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D8A94ACC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8A94B90()
{
  result = qword_1ECA68750;
  if (!qword_1ECA68750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68750);
  }

  return result;
}

unint64_t sub_1D8A94BE8()
{
  result = qword_1ECA68758;
  if (!qword_1ECA68758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68758);
  }

  return result;
}

unint64_t sub_1D8A94C40()
{
  result = qword_1ECA68760;
  if (!qword_1ECA68760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68760);
  }

  return result;
}

unint64_t sub_1D8A94C98()
{
  result = qword_1ECA68768;
  if (!qword_1ECA68768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68768);
  }

  return result;
}

unint64_t sub_1D8A94CF0()
{
  result = qword_1ECA68770;
  if (!qword_1ECA68770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68770);
  }

  return result;
}

unint64_t sub_1D8A94D48()
{
  result = qword_1ECA68778;
  if (!qword_1ECA68778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68778);
  }

  return result;
}

unint64_t sub_1D8A94EBC()
{
  result = qword_1ECA68798;
  if (!qword_1ECA68798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68798);
  }

  return result;
}

unint64_t sub_1D8A94F14()
{
  result = qword_1ECA687A0;
  if (!qword_1ECA687A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687A0);
  }

  return result;
}

unint64_t sub_1D8A94F6C()
{
  result = qword_1ECA687A8;
  if (!qword_1ECA687A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687A8);
  }

  return result;
}

unint64_t sub_1D8A94FC4()
{
  result = qword_1ECA687B0;
  if (!qword_1ECA687B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687B0);
  }

  return result;
}

unint64_t sub_1D8A9501C()
{
  result = qword_1ECA687B8;
  if (!qword_1ECA687B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687B8);
  }

  return result;
}

unint64_t sub_1D8A95074()
{
  result = qword_1ECA687C0;
  if (!qword_1ECA687C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687C0);
  }

  return result;
}

unint64_t sub_1D8A950CC()
{
  result = qword_1ECA687C8;
  if (!qword_1ECA687C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687C8);
  }

  return result;
}

unint64_t sub_1D8A95124()
{
  result = qword_1ECA687D0;
  if (!qword_1ECA687D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687D0);
  }

  return result;
}

unint64_t sub_1D8A9517C()
{
  result = qword_1ECA687D8;
  if (!qword_1ECA687D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687D8);
  }

  return result;
}

unint64_t sub_1D8A951D4()
{
  result = qword_1ECA687E0;
  if (!qword_1ECA687E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687E0);
  }

  return result;
}

unint64_t sub_1D8A9522C()
{
  result = qword_1ECA687E8;
  if (!qword_1ECA687E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687E8);
  }

  return result;
}

unint64_t sub_1D8A95284()
{
  result = qword_1ECA687F0;
  if (!qword_1ECA687F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687F0);
  }

  return result;
}

uint64_t sub_1D8A952D8()
{
  v0 = sub_1D8B16930();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D8A95324()
{
  v0 = sub_1D8B16930();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D8A95370()
{
  v0 = sub_1D8B16930();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D8A953BC()
{
  v0 = sub_1D8B16930();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D8A95408()
{
  v0 = sub_1D8B16930();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D8A95454(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AE0);
    v3 = sub_1D8B16910();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D87EF838(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unsigned __int8 *sub_1D8A95558@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = 2;
  v5 = (v3 - 12) < 2 || v3 == 4;
  if (v5 || v3 == 1)
  {
    v10 = 0;
    v11 = 1;
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    v15 = 2;
    v16 = 1;
    v17 = 0;
    v18 = 0;
    result = sub_1D88C5438(&v10, v19);
    v6 = v19[0];
    v7 = v19[1];
    v8 = v19[2];
    v9 = v19[3];
    v4 = v20;
  }

  else
  {
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v4;
  return result;
}

uint64_t sub_1D8A95638()
{
  v1[9] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA687F8);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68800);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v1[12] = swift_task_alloc();
  sub_1D8B13970();
  v1[13] = swift_task_alloc();
  type metadata accessor for LoggingSignposter(0);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A9579C, v0, 0);
}

uint64_t sub_1D8A9579C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v14 = v0[9];
  sub_1D8A92F54(v14 + OBJC_IVAR____TtC22VisualIntelligenceCore36StreamingVisualIntelligenceProcessor_signposter, v2, type metadata accessor for LoggingSignposter);
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.StreamingVisualIntelligenceProcessor.prepare", 58, 2u, 1, 0, v0 + 4);
  sub_1D8A93010(v2, type metadata accessor for LoggingSignposter);
  sub_1D8B13980();
  v6 = sub_1D8B13000();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_1D8B155A0();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = sub_1D8B13B20();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1D8B13960();
  v9 = MEMORY[0x1DA71CDE0](v1);
  v10 = v0[7];
  v11 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v10);
  (*(v11 + 8))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1((v0 + 4));
  *(v14 + 112) = v9;

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D8A959F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6765526567616D69 && a2 == 0xEB000000006E6F69 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

float sub_1D8A95B18(uint64_t a1)
{
  v2 = v1;
  v113 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v103 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v108 = (&v98 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68808);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v104 = &v98 - v11;
  v12 = sub_1D8B13820();
  v105 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v98 - v16;
  v18 = sub_1D8B13AD0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68810);
  MEMORY[0x1EEE9AC00](v110);
  v112 = (&v98 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68818);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v111 = (&v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v98 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v98 - v28;
  v30 = type metadata accessor for ParseDetectorResult(0);
  v31 = *(v30 + 28);
  v107 = v2;
  v32 = *(v2 + v31);
  v33 = 0.0;
  if (!*(v32 + 16))
  {
    return v33;
  }

  v34 = v30;
  v98 = v15;
  v100 = v17;
  v99 = v10;
  v101 = v12;
  v35 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v36 = *(v19 + 16);
  v36(v29, v32 + v35, v18);
  v109 = v19;
  v37 = *(v19 + 56);
  v38 = 1;
  v37(v29, 0, 1, v18);
  v102 = v34;
  v39 = *(v113 + *(v34 + 28));
  if (*(v39 + 16))
  {
    v36(v27, v39 + v35, v18);
    v38 = 0;
  }

  v40 = v112;
  v41 = v111;
  v37(v27, v38, 1, v18);
  v42 = *(v110 + 48);
  sub_1D87A0E38(v29, v40, &qword_1ECA68818);
  sub_1D87A0E38(v27, v40 + v42, &qword_1ECA68818);
  v43 = v109;
  v44 = *(v109 + 48);
  if (v44(v40, 1, v18) != 1)
  {
    sub_1D87A0E38(v40, v41, &qword_1ECA68818);
    if (v44(v40 + v42, 1, v18) != 1)
    {
      v45 = v106;
      (*(v43 + 32))(v106, v40 + v42, v18);
      sub_1D8A92E28(&qword_1ECA64FD0, MEMORY[0x1E69E03D8]);
      v46 = sub_1D8B158C0();
      v47 = *(v43 + 8);
      v47(v45, v18);
      sub_1D87A14E4(v27, &qword_1ECA68818);
      sub_1D87A14E4(v29, &qword_1ECA68818);
      v47(v41, v18);
      sub_1D87A14E4(v40, &qword_1ECA68818);
      if ((v46 & 1) == 0)
      {
        return v33;
      }

      goto LABEL_11;
    }

    sub_1D87A14E4(v27, &qword_1ECA68818);
    sub_1D87A14E4(v29, &qword_1ECA68818);
    (*(v43 + 8))(v41, v18);
LABEL_9:
    sub_1D87A14E4(v40, &qword_1ECA68810);
    return v33;
  }

  sub_1D87A14E4(v27, &qword_1ECA68818);
  sub_1D87A14E4(v29, &qword_1ECA68818);
  if (v44(v40 + v42, 1, v18) != 1)
  {
    goto LABEL_9;
  }

  sub_1D87A14E4(v40, &qword_1ECA68818);
LABEL_11:
  v48 = v102;
  v49 = v107;
  v50 = (v107 + v102[6]);
  v51 = v50[1];
  v118 = *v50;
  v119 = v51;
  v52 = v50[3];
  v120 = v50[2];
  v121 = v52;
  Corners.bounds.getter();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = (v113 + v48[6]);
  v62 = v61[1];
  v114 = *v61;
  v115 = v62;
  v63 = v61[3];
  v116 = v61[2];
  v117 = v63;
  Corners.bounds.getter();
  v124.origin.x = v64;
  v124.origin.y = v65;
  v67 = v66;
  v69 = v68;
  v122.origin.x = v54;
  v122.origin.y = v56;
  v122.size.width = v58;
  v122.size.height = v60;
  v124.size.width = v67;
  v124.size.height = v69;
  v123 = CGRectIntersection(v122, v124);
  width = v123.size.width;
  height = v123.size.height;
  v72 = 0.0;
  if (!CGRectIsNull(v123))
  {
    v72 = width * height / (v58 * v60 + v67 * v69 - width * height);
  }

  v73 = v101;
  v74 = v108;
  if (*(v49 + v48[10]) != 1)
  {
    return v72;
  }

  v75 = v49 + v48[13];
  v76 = type metadata accessor for VisualUnderstandingContainer(0);
  sub_1D87A0E38(v75 + *(v76 + 20), v74, &qword_1ECA635E8);
  v77 = sub_1D8B13830();
  v78 = *(v77 - 8);
  v79 = *(v78 + 48);
  if (v79(v74, 1, v77) == 1)
  {
    sub_1D87A14E4(v74, &qword_1ECA635E8);
LABEL_19:
    v83 = v104;
    (*(v105 + 56))(v104, 1, 1, v73);
LABEL_20:
    v85 = v83;
LABEL_21:
    sub_1D87A14E4(v85, &qword_1ECA68808);
    return v72;
  }

  v80 = sub_1D8B137C0();
  v81 = *(v78 + 8);
  v81(v74, v77);
  if (!v80)
  {
    goto LABEL_19;
  }

  v111 = v81;
  if (*(v80 + 16))
  {
    v82 = v105;
    v83 = v104;
    (*(v105 + 16))(v104, v80 + ((*(v105 + 80) + 32) & ~*(v105 + 80)), v73);
    v84 = 0;
  }

  else
  {
    v84 = 1;
    v82 = v105;
    v83 = v104;
  }

  v112 = *(v82 + 56);
  v112(v83, v84, 1, v73);
  v110 = *(v82 + 48);
  if ((v110)(v83, 1, v73) == 1)
  {
    goto LABEL_20;
  }

  v109 = v82 + 56;
  v87 = v100;
  v108 = *(v82 + 32);
  v108(v100, v83, v73);
  v88 = v113 + v102[13] + *(v76 + 20);
  v89 = v103;
  sub_1D87A0E38(v88, v103, &qword_1ECA635E8);
  if (v79(v89, 1, v77) == 1)
  {
    (*(v82 + 8))(v87, v73);
    sub_1D87A14E4(v89, &qword_1ECA635E8);
    v90 = v99;
LABEL_32:
    v112(v90, 1, 1, v73);
LABEL_33:
    v85 = v90;
    goto LABEL_21;
  }

  v91 = sub_1D8B137C0();
  v111(v89, v77);
  v90 = v99;
  if (!v91)
  {
    (*(v105 + 8))(v100, v73);
    goto LABEL_32;
  }

  v92 = v105;
  v93 = v100;
  if (*(v91 + 16))
  {
    (*(v105 + 16))(v99, v91 + ((*(v105 + 80) + 32) & ~*(v105 + 80)), v73);
    v94 = 0;
  }

  else
  {
    v94 = 1;
  }

  v95 = v98;

  v112(v90, v94, 1, v73);
  if ((v110)(v90, 1, v73) == 1)
  {
    (*(v92 + 8))(v93, v73);
    goto LABEL_33;
  }

  v108(v95, v90, v73);
  v96 = sub_1D8A7B4DC();
  v97 = *(v92 + 8);
  v97(v95, v73);
  v97(v93, v73);
  if ((v96 & 0x100000000) != 0)
  {
    return v72;
  }

  v33 = 0.0;
  if (*&v96 > 0.55)
  {
    return (v72 * 0.5) + (*&v96 * 0.5);
  }

  return v33;
}

uint64_t sub_1D8A967C4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68840) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v1 + ((v6 + *(v5 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80));

  return sub_1D8A8FECC(a1, v1 + v6, v7, v3, v4);
}

uint64_t objectdestroy_169Tm(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v2 - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + *(v4 + 64) + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v5 | v8;

  (*(v4 + 8))(v1 + v6, v3);
  (*(v7 + 8))(v1 + v9, v2);

  return MEMORY[0x1EEE6BDD0](v1, v9 + v10, v11 | 7);
}

uint64_t sub_1D8A96AB8(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, uint64_t, char *, char *, uint64_t, uint64_t))
{
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = *(v5 + 4);
  v13 = *(v5 + 5);
  v14 = &v5[(v11 + *(v10 + 64) + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80)];

  return a5(a1, a2 & 1, v12, v13, &v5[v11], v14, v8, v9);
}

unint64_t sub_1D8A96C18()
{
  result = qword_1ECA688B8;
  if (!qword_1ECA688B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA688B0);
    sub_1D8A92E28(&qword_1ECA688C0, MEMORY[0x1E69E0410]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA688B8);
  }

  return result;
}

uint64_t sub_1D8A96CCC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 13);
  v7 = *(v1 + 14);
  v8 = v1[15];
  v9 = *(v1 + 16);
  v10 = *(v1 + 17);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D886553C;

  return sub_1D8A88CC0(v8, a1, v4, v5, (v1 + 4), v6, v7, v9, v10);
}

uint64_t sub_1D8A96DB4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = (*(*(v3 - 8) + 80) + 64) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA688D8) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  return sub_1D8A89D44(a1, v1[4], v1[5], v1[6], v1[7], v1 + v5, v1 + v8, v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8), v3, v4);
}

uint64_t sub_1D8A96ECC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8864FBC;

  return sub_1D8A8A328(a1, v4, v5, v1 + 32);
}

uint64_t sub_1D8A96F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  return sub_1D87DFC48(sub_1D8A97024, v9, a2, v6, MEMORY[0x1E69E73E0], a4, MEMORY[0x1E69E7410], v7);
}

uint64_t sub_1D8A97050(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68900) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1D8A81E7C(a1, a2, a3, v8);
}

uint64_t sub_1D8A970E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D886553C;

  return sub_1D8A81CF0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1D8A97194(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D886553C;

  return sub_1D8A80A0C(a1, v4, v5, v6);
}

void sub_1D8A97270()
{
  sub_1D8B13240();
  if (v0 <= 0x3F)
  {
    sub_1D8A93FF4(319, &qword_1EE0E3A08, MEMORY[0x1E69E0420], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8A9734C()
{
  sub_1D8B13240();
  if (v0 <= 0x3F)
  {
    sub_1D8A93E90(319, &unk_1ECA68960, &qword_1ECA66920, 0x1E6985C40, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D8A93FF4(319, &qword_1EE0E3A08, MEMORY[0x1E69E0420], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1D8B138B0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D8A974EC()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8A975F4()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8A97704()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8A97814()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8A97960()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8A97A50()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8A97B8C()
{
  sub_1D8B15A60();
}

uint64_t sub_1D8A97CC4()
{
  sub_1D8B15A60();
}

Swift::Float __swiftcall CGRect.intersectionOverUnion(with:)(__C::CGRect with)
{
  v5 = v4;
  v6 = v3;
  height = with.size.height;
  width = with.size.width;
  y = with.origin.y;
  x = with.origin.x;
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.width = v6;
  v15.size.height = v5;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v16 = CGRectIntersection(v15, v17);
  v11 = v16.size.width;
  v12 = v16.size.height;
  IsNull = CGRectIsNull(v16);
  result = 0.0;
  if (!IsNull)
  {
    return v11 * v12 / (width * height + v6 * v5 - v11 * v12);
  }

  return result;
}

__n128 ObjectDetectorResult.init(id:confidence:corners:label:rotationAngle:timestamp:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>, float a7@<S0>, double a8@<D1>)
{
  v15 = *a5;
  v16 = sub_1D8B13240();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for ObjectDetectorResult(0);
  *(a6 + v17[5]) = a7;
  v18 = a6 + v17[6];
  v19 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v19;
  result = *(a2 + 32);
  v21 = *(a2 + 48);
  *(v18 + 32) = result;
  *(v18 + 48) = v21;
  v22 = (a6 + v17[7]);
  *v22 = a3;
  v22[1] = a4;
  *(a6 + v17[8]) = v15;
  *(a6 + v17[9]) = a8;
  return result;
}

unint64_t sub_1D8A97FF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, unint64_t a6)
{
  v78[1] = *MEMORY[0x1E69E9840];
  v13 = sub_1D8B15A70();
  v14 = MEMORY[0x1E69E7CC0];
  LODWORD(v77) = a6;
  if (v13)
  {
    v15 = v13;
    v78[0] = MEMORY[0x1E69E7CC0];
    v14 = v78;
    sub_1D87F4EF8(0, v13 & ~(v13 >> 63), 0);
    if (v15 < 0)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v75 = a5;
    v76 = a4;
    v14 = v78[0];
    do
    {
      v16 = sub_1D8B15B80();
      v18 = v17;
      v78[0] = v14;
      a6 = *(v14 + 16);
      v19 = *(v14 + 24);
      v6 = a6 + 1;
      if (a6 >= v19 >> 1)
      {
        sub_1D87F4EF8((v19 > 1), a6 + 1, 1);
        v14 = v78[0];
      }

      *(v14 + 16) = v6;
      v20 = v14 + 16 * a6;
      *(v20 + 32) = v16;
      *(v20 + 40) = v18;
      sub_1D8B15A80();
      --v15;
    }

    while (v15);
    a5 = v75;
    a4 = v76;
  }

  v21 = sub_1D8B15A70();
  v7 = MEMORY[0x1E69E7CC0];
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = v21;
  v23 = v14;
  v78[0] = MEMORY[0x1E69E7CC0];
  v14 = v78;
  sub_1D87F4EF8(0, v21 & ~(v21 >> 63), 0);
  if (v22 < 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v7 = v78[0];
  v14 = v23;
  do
  {
    v24 = sub_1D8B15B80();
    v78[0] = v7;
    v27 = *(v7 + 16);
    v26 = *(v7 + 24);
    if (v27 >= v26 >> 1)
    {
      v75 = v24;
      v76 = a4;
      v29 = v25;
      sub_1D87F4EF8((v26 > 1), v27 + 1, 1);
      v14 = v23;
      v25 = v29;
      v24 = v75;
      v7 = v78[0];
    }

    *(v7 + 16) = v27 + 1;
    v28 = v7 + 16 * v27;
    *(v28 + 32) = v24;
    *(v28 + 40) = v25;
    sub_1D8B15A80();
    --v22;
  }

  while (v22);
LABEL_14:
  a6 = *(v14 + 16);
  a4 = *(v7 + 16);
  if (a6)
  {
    v30 = a4 == 0;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    if (a4 <= a6)
    {
      v6 = *(v14 + 16);
    }

    else
    {
      v6 = *(v7 + 16);
    }

    if (v77)
    {
      v32 = v6;
    }

    else
    {
      v32 = a5;
    }

    v74 = v32;
    v78[0] = 0;
    a3 = a4 + 1;
    a1 = (a6 + 1) * (a4 + 1);
    if (((a6 + 1) * (a4 + 1)) >> 64 == a1 >> 63)
    {
      if (a1 < 0)
      {
        __break(1u);
      }

      else if (!(a1 >> 60))
      {
        v77 = a6 + 1;

        if (8 * a1 < 1025)
        {
          goto LABEL_32;
        }

        goto LABEL_87;
      }

      __break(1u);
      goto LABEL_91;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v64 = swift_slowAlloc();

      sub_1D89C8EB8(v64, a1, v77, a3, a6, a4, v14, v7, v74, v78);
      MEMORY[0x1DA721330](v64, -1, -1);

      v61 = v78[0];
LABEL_69:

      return v61;
    }

LABEL_32:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v36 = (&v65 - v35);
    if (a6 > 3)
    {
      v39 = 0;
      v37 = a6 & 0x7FFFFFFFFFFFFFFCLL;
      v38 = v77;
      do
      {
        v40 = vdupq_n_s64(v39);
        v41 = vorrq_s8(v40, xmmword_1D8B1AB90);
        v42 = &v36[v41.i64[0]];
        *v42 = v41;
        v42[1] = vaddq_s64(v40, xmmword_1D8B30E60);
        v39 += 4;
      }

      while (v37 != v39);
      if (a6 == v37)
      {
LABEL_39:
        v45 = 0;
        *v36 = 0;
        do
        {
          ++v45;
          if ((v38 * v45) >> 64 != (v38 * v45) >> 63)
          {
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          v36[v38 * v45] = v45;
        }

        while (a4 != v45);
        v68 = v6;
        v69 = v34;
        v67 = a6;
        if (*(v14 + 16))
        {
          v6 = 0;
          v75 = (v14 + 40);
          v76 = v14 + 32;
          v70 = v7 + 40;
          v71 = a4;
          v46 = 1;
          v66 = v14 + 32;
          v72 = v14;
          v73 = v7;
          while (1)
          {
            a3 = 0;
            a6 = v70;
            while (1)
            {
              if (a3 >= *(v7 + 16))
              {
                goto LABEL_74;
              }

              v14 = a3 + 1;
              a1 = *v75;
              a4 = *a6;

              v7 = sub_1D8A98664();

              v47 = v77;
              v48 = v77 * (a3 + 1);
              if ((v77 * v14) >> 64 != (v77 * v14) >> 63)
              {
                goto LABEL_75;
              }

              if (__OFADD__(v48, v6))
              {
                goto LABEL_76;
              }

              v49 = v36[v48 + v6];
              v50 = __OFADD__(v49, 1);
              v51 = v49 + 1;
              if (v50)
              {
                goto LABEL_77;
              }

              v52 = v77 * a3;
              if ((v77 * a3) >> 64 != (v77 * a3) >> 63)
              {
                goto LABEL_78;
              }

              if (__OFADD__(v52, v46))
              {
                goto LABEL_79;
              }

              v53 = v36[v52 + v46];
              v50 = __OFADD__(v53, 1);
              v54 = v53 + 1;
              if (v50)
              {
                goto LABEL_80;
              }

              v50 = __OFADD__(v52, v6);
              v55 = v52 + v6;
              if (v50)
              {
                goto LABEL_81;
              }

              v56 = (v7 & 1) == 0;
              v57 = v36[v55];
              v50 = __OFADD__(v57, v56);
              v58 = v57 + v56;
              if (v50)
              {
                goto LABEL_82;
              }

              v50 = __OFADD__(v48, v46);
              v59 = v48 + v46;
              if (v50)
              {
                goto LABEL_83;
              }

              if (v54 < v51)
              {
                v51 = v54;
              }

              if (v58 < v51)
              {
                v51 = v58;
              }

              v36[v59] = v51;
              if (v74 < v51)
              {
                goto LABEL_67;
              }

              ++a3;
              a4 = v71;
              v14 = v72;
              v7 = v73;
              if (v71 == a3)
              {
                break;
              }

              a6 += 16;
              if (v6 >= *(v72 + 16))
              {
                goto LABEL_66;
              }
            }

            if (v46 == v67)
            {
              break;
            }

            v6 = v46;
            v76 = v66 + 16 * v46;
            v75 = (v76 + 8);
            if (v46++ >= *(v72 + 16))
            {
              goto LABEL_66;
            }
          }

          v62 = v47 * v71;
          if ((v47 * v71) >> 64 == (v47 * v71) >> 63)
          {
            v50 = __OFADD__(v62, v67);
            v63 = v62 + v67;
            if (!v50)
            {
              v61 = v36[v63];
              goto LABEL_68;
            }

LABEL_92:
            __break(1u);
          }

LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

LABEL_66:
        __break(1u);
LABEL_67:
        v61 = v68;
LABEL_68:

        goto LABEL_69;
      }
    }

    else
    {
      v37 = 0;
      v38 = v77;
    }

    v43 = a6 - v37;
    v44 = v37 + 1;
    do
    {
      v36[v44] = v44;
      ++v44;
      --v43;
    }

    while (v43);
    goto LABEL_39;
  }

  if (a4 <= a6)
  {
    return a6;
  }

  else
  {
    return a4;
  }
}

uint64_t sub_1D8A98664()
{

  while (1)
  {
    v0 = sub_1D8B15B50();
    v1 = sub_1D8B15B50();
    if (((v0 | v1) & 0x10000) != 0)
    {
      break;
    }

    if (v0 != v1)
    {
      v2 = 0;
      goto LABEL_6;
    }
  }

  v2 = ((v1 & v0) >> 16) & 1;
LABEL_6:

  return v2;
}

uint64_t sub_1D8A9872C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D87F43E0(0, v5, 0);
    v6 = v21;
    v12 = (a1 + 40);
    do
    {
      v13 = *v12;
      v14 = *(v12 - 1);
      v15 = v13;
      sub_1D8A9C1C0(v14, v15, a3, a2, a4, a5, &v20);

      v16 = v20;
      v21 = v6;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D87F43E0((v17 > 1), v18 + 1, 1);
        v6 = v21;
      }

      *(v6 + 16) = v18 + 1;
      *(v6 + 8 * v18 + 32) = v16;
      v12 += 2;
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t VisionProcessor.__allocating_init(configuration:enabledDetectionType:)(uint64_t *a1, char *a2)
{
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = *a2;
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_logger;
  if (qword_1EE0E4370 != -1)
  {
    swift_once();
  }

  v11 = sub_1D8B151E0();
  v12 = __swift_project_value_buffer(v11, qword_1EE0E4378);
  (*(*(v11 - 8) + 16))(v4 + v10, v12, v11);
  v13 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_sequenceHandler;
  *(v4 + v13) = [objc_allocWithZone(MEMORY[0x1E6984680]) init];
  v14 = v4 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_configuration;
  *v14 = v5;
  *(v14 + 8) = v6;
  *(v14 + 16) = v7;
  *(v14 + 24) = v8;
  *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType) = v9;
  return v4;
}

uint64_t ObjectDetectorResult.modifyWithPrediction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 80);
  v6 = sub_1D8B13240();
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  v7 = type metadata accessor for ObjectDetectorResult(0);
  v8 = (v2 + v7[7]);
  v9 = *(v2 + v7[8]);
  v11 = *v8;
  v10 = v8[1];
  *(a2 + v7[5]) = *(v2 + v7[5]);
  v12 = (a2 + v7[6]);
  v13 = *(a1 + 64);
  v12[2] = *(a1 + 48);
  v12[3] = v13;
  v14 = *(a1 + 32);
  *v12 = *(a1 + 16);
  v12[1] = v14;
  v15 = (a2 + v7[7]);
  *v15 = v11;
  v15[1] = v10;
  *(a2 + v7[8]) = v9;
  *(a2 + v7[9]) = v5;
}

uint64_t TextDetectorResult.modifyWithPrediction(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D8B13240();
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v49 = *(a1 + 16);
  v50 = v9;
  v10 = *(a1 + 64);
  v51 = *(a1 + 48);
  v52 = v10;
  v11 = *(a1 + 80);
  v12 = *(v48 + 16);
  v12(v8, v3, v6);
  v13 = type metadata accessor for TextDetectorResult(0);
  v14 = *(v3 + v13[5]);
  v15 = (v3 + v13[7]);
  v16 = *(v3 + v13[8]);
  v17 = *(v3 + v13[10]);
  v18 = *(v3 + v13[11]);
  v19 = *v15;
  v20 = v15[1];
  v21 = v3 + v13[12];
  v22 = *v21;
  v47 = *(v21 + 8);
  v23 = *(v21 + 16);
  v45 = v19;
  v46 = v23;
  v12(a2, v8, v6);
  *&a2[v13[5]] = v14;
  v24 = &a2[v13[6]];
  v25 = v50;
  *v24 = v49;
  *(v24 + 1) = v25;
  v26 = v52;
  *(v24 + 2) = v51;
  *(v24 + 3) = v26;
  v27 = &a2[v13[7]];
  *v27 = v45;
  *(v27 + 1) = v20;
  *&a2[v13[8]] = v16;
  *&a2[v13[9]] = v11;
  *&a2[v13[10]] = v17;
  *&a2[v13[11]] = v18;
  v28 = v22;
  v29 = v22;

  sub_1D8A9FD8C(v18);
  v30 = sub_1D881BE2C(400);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = MEMORY[0x1DA71EF10](v30, v32, v34, v36);
  v39 = v38;

  result = (*(v48 + 8))(v8, v6);
  v41 = &a2[v13[13]];
  *v41 = v37;
  v41[1] = v39;
  v42 = &a2[v13[12]];
  v43 = v46;
  v44 = v47;
  *v42 = v29;
  *(v42 + 1) = v44;
  *(v42 + 2) = v43;
  return result;
}

uint64_t ObjectDetectorResult.modifyWithRotation(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1D8B13240();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = type metadata accessor for ObjectDetectorResult(0);
  v7 = v6[6];
  v8 = *(v2 + v6[5]);
  v9 = *(v2 + v7 + 16);
  v22 = *(v2 + v7);
  v23 = v9;
  v10 = *(v2 + v7 + 48);
  v24 = *(v2 + v7 + 32);
  v25 = v10;
  v20 = *(v2 + v6[8]);
  v21 = v4;
  sub_1D8A5A9D8(&v21, &v20, v26);
  v11 = (v2 + v6[7]);
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v2 + v6[9]);
  *(a2 + v6[5]) = v8;
  v15 = (a2 + v6[6]);
  v16 = v26[1];
  *v15 = v26[0];
  v15[1] = v16;
  v17 = v26[3];
  v15[2] = v26[2];
  v15[3] = v17;
  v18 = (a2 + v6[7]);
  *v18 = v13;
  v18[1] = v12;
  *(a2 + v6[8]) = v4;
  *(a2 + v6[9]) = v14;
}

uint64_t TextDetectorResult.modifyWithRotation(_:)@<X0>(double *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D8B13240();
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(v46 + 16);
  v10(v8, v3, v6);
  v11 = type metadata accessor for TextDetectorResult(0);
  v12 = v11[6];
  v13 = *(v3 + v11[5]);
  v14 = *(v3 + v12 + 16);
  v49 = *(v3 + v12);
  v50 = v14;
  v15 = *(v3 + v12 + 48);
  v51 = *(v3 + v12 + 32);
  v52 = v15;
  v48 = v9;
  v47 = *(v3 + v11[8]);
  sub_1D8A5A9D8(&v48, &v47, v53);
  v16 = (v3 + v11[7]);
  v17 = v16[1];
  v43 = *v16;
  v18 = *(v3 + v11[9]);
  v19 = *(v3 + v11[10]);
  v20 = *(v3 + v11[11]);
  v21 = v3 + v11[12];
  v22 = *v21;
  v45 = *(v21 + 8);
  v44 = *(v21 + 16);
  v10(a2, v8, v6);
  *&a2[v11[5]] = v13;
  v23 = &a2[v11[6]];
  v24 = v53[1];
  *v23 = v53[0];
  *(v23 + 1) = v24;
  v25 = v53[3];
  *(v23 + 2) = v53[2];
  *(v23 + 3) = v25;
  v26 = &a2[v11[7]];
  *v26 = v43;
  *(v26 + 1) = v17;
  *&a2[v11[8]] = v9;
  *&a2[v11[9]] = v18;
  *&a2[v11[10]] = v19;
  *&a2[v11[11]] = v20;
  v27 = v22;
  v28 = v22;

  sub_1D8A9FD8C(v20);
  v29 = sub_1D881BE2C(400);
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = MEMORY[0x1DA71EF10](v29, v31, v33, v35);
  v38 = v37;

  result = (*(v46 + 8))(v8, v6);
  v40 = &a2[v11[13]];
  *v40 = v36;
  v40[1] = v38;
  v41 = &a2[v11[12]];
  v42 = v45;
  *v41 = v28;
  *(v41 + 1) = v42;
  *(v41 + 2) = v44;
  return result;
}

uint64_t sub_1D8A990D8()
{
  v0 = sub_1D87C4264(&unk_1F5428C58);
  result = swift_arrayDestroy();
  qword_1ECA68970 = v0;
  return result;
}

__n128 ObjectDetectorResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ObjectDetectorResult(0) + 24);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

double ObjectDetectorResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for ObjectDetectorResult(0) + 32));
  *a1 = result;
  return result;
}

uint64_t ObjectDetectorResult.safeAreaPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECA62278 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECA68970;
  v4 = type metadata accessor for ObjectDetectorResult(0);
  result = sub_1D89A4644(*(v1 + *(v4 + 28)), *(v1 + *(v4 + 28) + 8), v3);
  if (result)
  {
    v6 = 1;
  }

  else
  {
    v6 = 1065353216;
  }

  *a1 = v6;
  *(a1 + 4) = result & 1;
  return result;
}

uint64_t sub_1D8A99288()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6C6562616CLL;
  v4 = 0x6E6F697461746F72;
  if (v1 != 4)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E656469666E6F63;
  if (v1 != 1)
  {
    v5 = 0x7372656E726F63;
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

uint64_t sub_1D8A99348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8AA1D1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A99370(uint64_t a1)
{
  v2 = sub_1D8A9FED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A993AC(uint64_t a1)
{
  v2 = sub_1D8A9FED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ObjectDetectorResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68998);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9FED4();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  sub_1D8B13240();
  sub_1D8A9FF28(&qword_1ECA637D8, MEMORY[0x1E69695A8]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for ObjectDetectorResult(0);
    v20 = 1;
    sub_1D8B16AC0();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 2;
    sub_1D881BB78();
    sub_1D8B16AE0();
    LOBYTE(v16) = 3;
    sub_1D8B16A90();
    *&v16 = *(v3 + *(v9 + 32));
    v15 = 4;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 5;
    sub_1D8B16AB0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ObjectDetectorResult.hash(into:)()
{
  sub_1D8B13240();
  sub_1D8A9FF28(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v1 = type metadata accessor for ObjectDetectorResult(0);
  sub_1D8B16D60();
  v2 = (v0 + v1[6]);
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  sub_1D8818B80(*v2, v2[1]);
  sub_1D8818B80(v3, v4);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  sub_1D8B15A60();
  v9 = *(v0 + v1[8]);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x1DA720250](*&v9);
  v10 = *(v0 + v1[9]);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  return MEMORY[0x1DA720250](*&v10);
}

uint64_t ObjectDetectorResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1D8B13240();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA689B8);
  v7 = *(v6 - 8);
  v33 = v6;
  v34 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9FED4();
  v35 = v9;
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a1;
  v13 = v12;
  v14 = v31;
  LOBYTE(v39) = 0;
  sub_1D8A9FF28(&unk_1ECA689C0, MEMORY[0x1E69695A8]);
  v15 = v32;
  v16 = v33;
  sub_1D8B16A10();
  (*(v14 + 32))(v13, v15, v4);
  LOBYTE(v39) = 1;
  sub_1D8B169F0();
  *(v13 + v10[5]) = v17;
  v38 = 2;
  sub_1D881BC34();
  sub_1D8B16A10();
  v18 = v29;
  v19 = v34;
  v20 = (v13 + v10[6]);
  v21 = v40;
  *v20 = v39;
  v20[1] = v21;
  v22 = v42;
  v20[2] = v41;
  v20[3] = v22;
  LOBYTE(v37) = 3;
  v23 = sub_1D8B169C0();
  v24 = (v13 + v10[7]);
  *v24 = v23;
  v24[1] = v25;
  v36 = 4;
  sub_1D88913B8();
  sub_1D8B16A10();
  *(v13 + v10[8]) = v37;
  LOBYTE(v37) = 5;
  sub_1D8B169E0();
  v27 = v26;
  (*(v19 + 8))(v35, v16);
  *(v13 + v10[9]) = v27;
  sub_1D8AA006C(v13, v30, type metadata accessor for ObjectDetectorResult);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_1D8AA00D4(v13, type metadata accessor for ObjectDetectorResult);
}

uint64_t sub_1D8A99CD0@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = sub_1D8B13240();
  (*(*(v8 - 8) + 16))(a3, v5, v8);
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v12 = *(v5 + v11);
  v14 = *(v5 + v10);
  v13 = *(v5 + v10 + 8);
  *(a3 + a2[5]) = *(v5 + a2[5]);
  v15 = (a3 + v9);
  *v15 = v18;
  v15[1] = v19;
  v15[2] = v20;
  v15[3] = v21;
  v16 = (a3 + v10);
  *v16 = v14;
  v16[1] = v13;
  *(a3 + v11) = v12;
  *(a3 + a2[9]) = v7;
}

uint64_t sub_1D8A99DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1ECA62278 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  result = sub_1D89A4644(*(v2 + *(a1 + 28)), *(v2 + *(a1 + 28) + 8), qword_1ECA68970);
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = 1065353216;
  }

  *a2 = v5;
  *(a2 + 4) = result & 1;
  return result;
}

uint64_t sub_1D8A99ED8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8AA0EE0();
  *a1 = result;
  return result;
}

void sub_1D8A99F08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE900000000000073;
  v6 = 0x65676175676E616CLL;
  if (v2 != 6)
  {
    v6 = 0x73656E696CLL;
    v5 = 0xE500000000000000;
  }

  v7 = 0xED0000656C676E41;
  v8 = 0x6E6F697461746F72;
  if (v2 != 4)
  {
    v8 = 0x6D617473656D6974;
    v7 = 0xE900000000000070;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x7372656E726F63;
  if (v2 != 2)
  {
    v10 = 0x6C6562616CLL;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x6E656469666E6F63;
    v3 = 0xEA00000000006563;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1D8A9A010()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x65676175676E616CLL;
  if (v1 != 6)
  {
    v3 = 0x73656E696CLL;
  }

  v4 = 0x6E6F697461746F72;
  if (v1 != 4)
  {
    v4 = 0x6D617473656D6974;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7372656E726F63;
  if (v1 != 2)
  {
    v5 = 0x6C6562616CLL;
  }

  if (*v0)
  {
    v2 = 0x6E656469666E6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8A9A114@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8AA0EE0();
  *a1 = result;
  return result;
}

uint64_t sub_1D8A9A13C(uint64_t a1)
{
  v2 = sub_1D8A9FFC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A9A178(uint64_t a1)
{
  v2 = sub_1D8A9FFC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextDetectorResult.Line.transcript.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TextDetectorResult.Line.language.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t static TextDetectorResult.Line.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v6 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1D8B16BA0();
}

uint64_t sub_1D8A9A2D0()
{
  v1 = 0x697263736E617274;
  if (*v0 != 1)
  {
    v1 = 0x65676175676E616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656469666E6F63;
  }
}

uint64_t sub_1D8A9A330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8AA1F24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A9A358(uint64_t a1)
{
  v2 = sub_1D8A9FF70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A9A394(uint64_t a1)
{
  v2 = sub_1D8A9FF70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextDetectorResult.Line.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA689D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = v1[1];
  v10[1] = v1[2];
  v10[2] = v8;
  v10[0] = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9FF70();
  sub_1D8B16DD0();
  v13 = 0;
  sub_1D8B16AC0();
  if (!v2)
  {
    v12 = 1;
    sub_1D8B16A90();
    v11 = 2;
    sub_1D8B16A90();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TextDetectorResult.Line.hash(into:)()
{
  sub_1D8B16D60();
  sub_1D8B15A60();

  return sub_1D8B15A60();
}

uint64_t TextDetectorResult.Line.hashValue.getter()
{
  sub_1D8B16D20();
  sub_1D8B16D60();
  sub_1D8B15A60();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t TextDetectorResult.Line.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA689E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9FF70();
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_1D8B169F0();
  v10 = v9;
  v20 = 1;
  v11 = sub_1D8B169C0();
  v13 = v12;
  v18 = v11;
  v19 = 2;
  v14 = sub_1D8B169C0();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  *a2 = v10;
  *(a2 + 8) = v18;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D8A9A8E0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v6 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1D8B16BA0();
}

uint64_t sub_1D8A9A998()
{
  sub_1D8B16D60();
  sub_1D8B15A60();

  return sub_1D8B15A60();
}

uint64_t sub_1D8A9AA18()
{
  sub_1D8B16D20();
  sub_1D8B16D60();
  sub_1D8B15A60();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t TextDetectorResult.BackingData.hash(into:)()
{
  if (*v0)
  {
    v2 = v0[1];
    v1 = v0[2];
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
    MEMORY[0x1DA720210](v2);
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x1DA720210](v1);
}

uint64_t TextDetectorResult.BackingData.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1D8B16D20();
  if (v2)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
    MEMORY[0x1DA720210](v1);
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1DA720210](v3);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A9ABD8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1D8B16D20();
  if (v2)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
    MEMORY[0x1DA720210](v1);
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1DA720210](v3);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A9AC5C()
{
  if (*v0)
  {
    v2 = v0[1];
    v1 = v0[2];
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
    MEMORY[0x1DA720210](v2);
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x1DA720210](v1);
}

uint64_t sub_1D8A9ACD0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1D8B16D20();
  if (v2)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
    MEMORY[0x1DA720210](v1);
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1DA720210](v3);
  return sub_1D8B16D80();
}

__n128 TextDetectorResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TextDetectorResult(0) + 24);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1D8A9ADD0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));

  return v2;
}

double TextDetectorResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for TextDetectorResult(0) + 32));
  *a1 = result;
  return result;
}

uint64_t TextDetectorResult.languages.getter()
{
  type metadata accessor for TextDetectorResult(0);
}

uint64_t TextDetectorResult.lines.getter()
{
  type metadata accessor for TextDetectorResult(0);
}

id TextDetectorResult.backing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextDetectorResult(0) + 48));
  v4 = *(v3 + 2);
  v5 = *v3;
  *a1 = *v3;
  *(a1 + 16) = v4;

  return v5;
}

__n128 TextDetectorResult.init(id:confidence:corners:label:rotationAngle:timestamp:languages:lines:backing:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>)
{
  v20 = *a5;
  v43 = *a8;
  v42 = a8[1].n128_u64[0];
  v21 = sub_1D8B13240();
  v22 = *(v21 - 8);
  (*(v22 + 16))(a9, a1, v21);
  v23 = type metadata accessor for TextDetectorResult(0);
  *(a9 + v23[5]) = a10;
  v24 = (a9 + v23[6]);
  v25 = a2[1];
  *v24 = *a2;
  v24[1] = v25;
  v26 = a2[3];
  v24[2] = a2[2];
  v24[3] = v26;
  v27 = (a9 + v23[7]);
  *v27 = a3;
  v27[1] = a4;
  *(a9 + v23[8]) = v20;
  *(a9 + v23[9]) = a11;
  *(a9 + v23[10]) = a6;
  *(a9 + v23[11]) = a7;

  sub_1D8A9FD8C(v28);

  v29 = sub_1D881BE2C(400);
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = MEMORY[0x1DA71EF10](v29, v31, v33, v35);
  v38 = v37;

  (*(v22 + 8))(a1, v21);
  v39 = (a9 + v23[13]);
  *v39 = v36;
  v39[1] = v38;
  v40 = (a9 + v23[12]);
  result = v43;
  *v40 = v43;
  v40[1].n128_u64[0] = v42;
  return result;
}

uint64_t TextDetectorResult.init(forPreviewOnlyWithConfidence:corners:label:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  sub_1D8B13230();
  v10 = type metadata accessor for TextDetectorResult(0);
  *(a4 + v10[5]) = a5;
  v11 = (a4 + v10[6]);
  v12 = a1[1];
  *v11 = *a1;
  v11[1] = v12;
  v13 = a1[3];
  v11[2] = a1[2];
  v11[3] = v13;
  v14 = (a4 + v10[7]);
  *v14 = a2;
  v14[1] = a3;
  *(a4 + v10[8]) = 0;
  *(a4 + v10[9]) = 0;
  *(a4 + v10[10]) = MEMORY[0x1E69E7CD0];
  v15 = MEMORY[0x1E69E7CC0];
  *(a4 + v10[11]) = MEMORY[0x1E69E7CC0];
  sub_1D8A9FD8C(v15);
  v16 = sub_1D881BE2C(400);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = MEMORY[0x1DA71EF10](v16, v18, v20, v22);
  v25 = v24;

  v27 = (a4 + v10[13]);
  *v27 = v23;
  v27[1] = v25;
  v28 = (a4 + v10[12]);
  *v28 = 0;
  v28[1] = 0;
  v28[2] = 0;
  return result;
}

uint64_t TextDetectorResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_1D8B13240();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA689F0);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v7 = &v39 - v6;
  v8 = type metadata accessor for TextDetectorResult(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9FFC4();
  v44 = v7;
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v41;
  LOBYTE(v47) = 0;
  sub_1D8A9FF28(&unk_1ECA689C0, MEMORY[0x1E69695A8]);
  v12 = v42;
  sub_1D8B16A10();
  (*(v11 + 32))(v10, v12, v4);
  LOBYTE(v47) = 1;
  sub_1D8B169F0();
  *&v10[v8[5]] = v13;
  v52 = 2;
  sub_1D881BC34();
  sub_1D8B16A10();
  v14 = &v10[v8[6]];
  v15 = v48;
  *v14 = v47;
  *(v14 + 1) = v15;
  v16 = v50;
  *(v14 + 2) = v49;
  *(v14 + 3) = v16;
  LOBYTE(v46) = 3;
  v17 = sub_1D8B169C0();
  v18 = &v10[v8[7]];
  *v18 = v17;
  v18[1] = v19;
  v51 = 4;
  sub_1D88913B8();
  sub_1D8B16A10();
  *&v10[v8[8]] = v46;
  LOBYTE(v46) = 5;
  sub_1D8B169E0();
  *&v10[v8[9]] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68A00);
  v51 = 6;
  sub_1D8AA0134(&qword_1ECA68A08);
  sub_1D8B16A10();
  v21 = a1;
  *&v10[v8[10]] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68A10);
  v51 = 7;
  sub_1D8AA01A0(&qword_1ECA68A18, sub_1D8AA0018);
  sub_1D8B16A10();
  v22 = v43;
  *&v10[v8[11]] = v46;

  sub_1D8A9FD8C(v23);
  v42 = v10;

  v24 = sub_1D881BE2C(400);
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = MEMORY[0x1DA71EF10](v24, v26, v28, v30);
  v33 = v32;

  (*(v22 + 8))(v44, v45);
  v34 = v42;
  v35 = &v42[v8[13]];
  *v35 = v31;
  v35[1] = v33;
  v36 = (v34 + v8[12]);
  v37 = v34;
  *v36 = 0;
  v36[1] = 0;
  v36[2] = 0;
  sub_1D8AA006C(v34, v40, type metadata accessor for TextDetectorResult);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1D8AA00D4(v37, type metadata accessor for TextDetectorResult);
}

uint64_t TextDetectorResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68A28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9FFC4();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  sub_1D8B13240();
  sub_1D8A9FF28(&qword_1ECA637D8, MEMORY[0x1E69695A8]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for TextDetectorResult(0);
    v20 = 1;
    sub_1D8B16AC0();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 2;
    sub_1D881BB78();
    sub_1D8B16AE0();
    LOBYTE(v16) = 3;
    sub_1D8B16A90();
    *&v16 = *(v3 + v9[8]);
    v15 = 4;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 5;
    sub_1D8B16AB0();
    *&v16 = *(v3 + v9[10]);
    v15 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68A00);
    sub_1D8AA0134(&qword_1ECA68A30);
    sub_1D8B16AE0();
    *&v16 = *(v3 + v9[11]);
    v15 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68A10);
    sub_1D8AA01A0(&qword_1ECA68A38, sub_1D8AA0218);
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TextDetectorResult.hash(into:)(uint64_t a1)
{
  sub_1D8B13240();
  sub_1D8A9FF28(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v3 = type metadata accessor for TextDetectorResult(0);
  sub_1D8B16D60();
  v4 = (v1 + v3[6]);
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = v4[7];
  sub_1D8818B80(*v4, v4[1]);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  sub_1D8818B80(v9, v10);
  sub_1D8B15A60();
  v11 = *(v1 + v3[8]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1DA720250](*&v11);
  v12 = *(v1 + v3[9]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x1DA720250](*&v12);
  sub_1D8819418(a1, *(v1 + v3[10]));
  sub_1D87D0400(a1, *(v1 + v3[11]));
  v13 = (v1 + v3[12]);
  if (*v13)
  {
    v15 = v13[1];
    v14 = v13[2];
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
    MEMORY[0x1DA720210](v15);
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1DA720210](v14);

  return sub_1D8B15A60();
}

uint64_t sub_1D8A9BEA8(void (*a1)(_BYTE *))
{
  sub_1D8B16D20();
  a1(v3);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A9BF28(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D8B16D20();
  a3(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A9BF8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D8B16D20();
  a4(v6);
  return sub_1D8B16D80();
}

float sub_1D8A9C000(uint64_t a1, uint64_t a2)
{
  v4 = 1.0;
  v5 = 0.0;
  v6 = 0.0;
  if (a2 <= 10000)
  {
    v7 = type metadata accessor for TextDetectorResult(0);
    v8 = sub_1D8A97FF0(*(v2 + *(v7 + 52)), *(v2 + *(v7 + 52) + 8), *(a1 + *(v7 + 52)), *(a1 + *(v7 + 52) + 8), 0x32, 0);
    v9 = sub_1D8B15A70();
    v10 = sub_1D8B15A70();
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v5 = 1.0 - (v8 / v11);
    v6 = 0.5;
    v4 = 0.5;
  }

  v31 = v4;
  type metadata accessor for TextDetectorResult(0);
  Corners.bounds.getter();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  Corners.bounds.getter();
  v34.origin.x = v20;
  v34.origin.y = v21;
  v23 = v22;
  v25 = v24;
  v32.origin.x = v13;
  v32.origin.y = v15;
  v32.size.width = v17;
  v32.size.height = v19;
  v34.size.width = v23;
  v34.size.height = v25;
  v33 = CGRectIntersection(v32, v34);
  width = v33.size.width;
  height = v33.size.height;
  IsNull = CGRectIsNull(v33);
  v29 = 0.0;
  if (!IsNull)
  {
    v29 = width * height / (v17 * v19 + v23 * v25 - width * height);
  }

  return (v5 * v6) + (v31 * v29);
}

char *sub_1D8A9C1C0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v136 = a6;
  v134 = a5;
  v135 = a4;
  v133 = a3;
  v138 = a2;
  v132 = a7;
  v131 = sub_1D8B13240();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v139 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = a1;
  v9 = [a1 children];
  if (v9)
  {
    v10 = v9;
    sub_1D881F764(0, &qword_1EE0E3770);
    v11 = sub_1D8B15CF0();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = v11 & 0xFFFFFFFFFFFFFF8;
  v13 = v11 >> 62;
  if (v11 >> 62)
  {
LABEL_74:
    v14 = sub_1D8B16610();
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v142 = v11 & 0xC000000000000001;
  v15 = MEMORY[0x1E69E7CC0];
  v141 = v12;
  v16 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v17 = 0;
    while (2)
    {
      v18 = v17;
      while (1)
      {
        if (v142)
        {
          v19 = MEMORY[0x1DA71FC20](v18, v11);
        }

        else
        {
          if (v18 >= *(v12 + 16))
          {
            goto LABEL_71;
          }

          v19 = *(v11 + 8 * v18 + 32);
        }

        v20 = v19;
        v17 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v21 = [v19 recognizedLocale];
        if (v21)
        {
          break;
        }

        ++v18;
        if (v17 == v14)
        {
          goto LABEL_22;
        }
      }

      v22 = v21;
      v23 = sub_1D8B15970();
      v25 = v24;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D87C8284(0, *(v15 + 2) + 1, 1, v15);
      }

      v27 = *(v15 + 2);
      v26 = *(v15 + 3);
      if (v27 >= v26 >> 1)
      {
        v15 = sub_1D87C8284((v26 > 1), v27 + 1, 1, v15);
      }

      *(v15 + 2) = v27 + 1;
      v28 = &v15[16 * v27];
      *(v28 + 4) = v23;
      *(v28 + 5) = v25;
      v12 = v141;
      if (v17 != v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:
  v137 = sub_1D87C4264(v15);

  v29 = [v140 text];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1D8B15970();
    v33 = v32;

    if (!v13)
    {
LABEL_24:
      v34 = *(v12 + 16);
      goto LABEL_27;
    }
  }

  else
  {
    v31 = 0;
    v33 = 0;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  v34 = sub_1D8B16610();
LABEL_27:
  v35 = v16;
  v125 = v34 & ~(v34 >> 63);
  if (v34)
  {
    *&v145[0] = v16;
    result = sub_1D87F47F0(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v37 = 0;
    v38 = *&v145[0];
    do
    {
      if (v142)
      {
        v39 = MEMORY[0x1DA71FC20](v37, v11);
      }

      else
      {
        v39 = *(v11 + 8 * v37 + 32);
      }

      v40 = v39;
      [v39 rawConfidence];
      v42 = v41;

      *&v145[0] = v38;
      v13 = *(v38 + 16);
      v43 = *(v38 + 24);
      v44 = v13 + 1;
      if (v13 >= v43 >> 1)
      {
        sub_1D87F47F0((v43 > 1), v13 + 1, 1);
        v38 = *&v145[0];
      }

      ++v37;
      *(v38 + 16) = v44;
      *(v38 + 4 * v13 + 32) = v42 / v34;
    }

    while (v34 != v37);
  }

  else
  {
    v44 = *(v16 + 16);
    if (!v44)
    {
      v46 = 0.0;
      goto LABEL_46;
    }

    v38 = v16;
  }

  if (v44 <= 7)
  {
    v45 = 0;
    v46 = 0.0;
LABEL_44:
    v49 = v44 - v45;
    v50 = 4 * v45 + 32;
    do
    {
      v46 = v46 + *(v38 + v50);
      v50 += 4;
      --v49;
    }

    while (v49);
    goto LABEL_46;
  }

  v45 = v44 & 0xFFFFFFFFFFFFFFF8;
  v47 = v38 + 48;
  v46 = 0.0;
  v48 = v44 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v46 = (((((((v46 + COERCE_FLOAT(*(v47 - 16))) + COERCE_FLOAT(HIDWORD(*(v47 - 16)))) + COERCE_FLOAT(*(v47 - 8))) + COERCE_FLOAT(HIDWORD(*(v47 - 16)))) + COERCE_FLOAT(*v47)) + COERCE_FLOAT(HIDWORD(*v47))) + COERCE_FLOAT(*(v47 + 8))) + COERCE_FLOAT(HIDWORD(*v47));
    v47 += 32;
    v48 -= 8;
  }

  while (v48);
  if (v44 != v45)
  {
    goto LABEL_44;
  }

LABEL_46:

  *&v145[0] = 0;
  *(&v145[0] + 1) = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](91, 0xE100000000000000);
  *&v144[0] = v34;
  v51 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v51);

  MEMORY[0x1DA71EFA0](23389, 0xE200000000000000);
  *&v144[0] = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68A00);
  sub_1D881CF20(&unk_1EE0E3810, &qword_1ECA68A00);
  sub_1D87C12C0();
  v52 = sub_1D8B15C30();
  MEMORY[0x1DA71EFA0](v52);

  MEMORY[0x1DA71EFA0](23389, 0xE200000000000000);
  sub_1D8B16030();
  result = MEMORY[0x1DA71EFA0](5966429, 0xE300000000000000);
  if (v33)
  {
    MEMORY[0x1DA71EFA0](v31, v33);

    MEMORY[0x1DA71EFA0](93, 0xE100000000000000);
    v126 = *(&v145[0] + 1);
    v127 = *&v145[0];
    v53 = v140;
    v129 = [v138 rangeOfContentRegion_];
    v128 = v54;
    v55 = [v53 uuid];
    sub_1D8B13210();

    v56 = [v53 boundingQuad];
    if (!v56)
    {
      v56 = [objc_allocWithZone(MEMORY[0x1E69D9DD8]) initWithNormalizedBoundingBox:0.0 size:{0.0, 0.0, 0.0, 1.0, 1.0}];
    }

    type metadata accessor for CVCoordinator(0);
    [v56 topLeft];
    v140 = v57;
    v59 = v58;
    [v56 topRight];
    v61 = v60;
    v63 = v62;
    [v56 bottomLeft];
    v65 = v64;
    v67 = v66;
    [v56 bottomRight];
    v69 = v68;
    v71 = v70;

    *&v144[0] = v140;
    v144[1] = v59;
    v144[2] = v61;
    v144[3] = v63;
    v144[4] = v65;
    v144[5] = v67;
    v144[6] = v69;
    v144[7] = v71;
    Corners.bounds.getter();
    v12 = v135;
    v72 = v134;
    v73 = v136;
    sub_1D8A30194(v133, v136, v145, v74, v75, v76, v77);
    CameraSourceFrame.rotationAngle.getter(v73, v144);
    v78 = v144[0];
    v79 = CameraSourceFrame.timestamp.getter(v72, v73);
    if (!v34)
    {

      v81 = MEMORY[0x1E69E7CC0];
LABEL_68:
      v98 = type metadata accessor for TextDetectorResult(0);
      v142 = swift_allocBox();
      v100 = v99;
      v101 = v130;
      v102 = v131;
      (*(v130 + 16))(v99, v139, v131);
      *(v100 + v98[5]) = v46;
      v103 = (v100 + v98[6]);
      v104 = v145[3];
      v105 = v145[2];
      v106 = v145[1];
      *v103 = v145[0];
      v103[1] = v106;
      v103[2] = v105;
      v103[3] = v104;
      v107 = (v100 + v98[7]);
      v108 = v126;
      *v107 = v127;
      v107[1] = v108;
      *(v100 + v98[8]) = v78;
      *(v100 + v98[9]) = v79;
      *(v100 + v98[10]) = v137;
      *(v100 + v98[11]) = v81;
      v109 = v138;
      v110 = v138;

      sub_1D8A9FD8C(v111);

      v112 = sub_1D881BE2C(400);
      v114 = v113;
      v116 = v115;
      v118 = v117;

      v119 = MEMORY[0x1DA71EF10](v112, v114, v116, v118);
      v121 = v120;

      result = (*(v101 + 8))(v139, v102);
      v122 = (v100 + v98[13]);
      *v122 = v119;
      v122[1] = v121;
      v123 = (v100 + v98[12]);
      v124 = v129;
      *v123 = v109;
      v123[1] = v124;
      v123[2] = v128;
      *v132 = v142 | 0x5000000000000000;
      return result;
    }

    v143 = v35;
    result = sub_1D87F4F30(0, v125, 0);
    if ((v34 & 0x8000000000000000) == 0)
    {
      v80 = 0;
      v81 = v143;
      v140 = *MEMORY[0x1E69778B0];
      do
      {
        if (v142)
        {
          v82 = MEMORY[0x1DA71FC20](v80, v11);
        }

        else
        {
          if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_72;
          }

          if (v80 >= *(v141 + 16))
          {
            goto LABEL_73;
          }

          v82 = *(v11 + 8 * v80 + 32);
        }

        v83 = v82;
        [v82 rawConfidence];
        v85 = v84;
        v86 = [v83 text];
        if (v86)
        {
          v87 = v86;
          v12 = sub_1D8B15970();
          v13 = v88;
        }

        else
        {
          v12 = 0;
          v13 = 0xE000000000000000;
        }

        v89 = [v83 recognizedLocale];
        if (v89)
        {
          v90 = v89;
          v91 = sub_1D8B15970();
          v93 = v92;

          v83 = v90;
        }

        else
        {
          v91 = sub_1D8B15970();
          v93 = v94;
        }

        v143 = v81;
        v96 = *(v81 + 16);
        v95 = *(v81 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_1D87F4F30((v95 > 1), v96 + 1, 1);
          v81 = v143;
        }

        *(v81 + 16) = v96 + 1;
        v97 = v81 + 40 * v96;
        *(v97 + 32) = v85;
        ++v80;
        *(v97 + 40) = v12;
        *(v97 + 48) = v13;
        *(v97 + 56) = v91;
        *(v97 + 64) = v93;
      }

      while (v34 != v80);

      goto LABEL_68;
    }

    goto LABEL_76;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_1D8A9CD08()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x7463656A626FLL;
  }
}

uint64_t sub_1D8A9CD38(char a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E6984628]) init];
    [v1 setRecognitionLevel_];
    v2 = [objc_opt_self() preferredLanguages];
    if (!v2)
    {
      sub_1D8B15CF0();
      v2 = sub_1D8B15CD0();
    }

    [v1 setRecognitionLanguages_];

    [v1 setUsesAlternateLineGrouping_];
    [v1 setUsesLanguageDetection_];
    LODWORD(v3) = 1008981770;
    [v1 setMinimumTextHeight_];
    [v1 setKeepResourcesLoaded_];
    v12[0] = 0;
    if ([v1 setRevision:1 error:v12])
    {
      v4 = v12[0];
      return v1;
    }

    v10 = v12[0];
    v6 = sub_1D8B12EB0();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E6984630]) init];
    v12[0] = 0;
    v5 = [v1 setRevision:3737841667 error:v12];
    v6 = v12[0];
    if (v5)
    {
      v7 = v12[0];
      v8 = sub_1D8B15CD0();
      [v1 setTargetedIdentifiers_];

      return v1;
    }
  }

  v11 = v6;
  sub_1D8B12EB0();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

char *sub_1D8A9CFA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v53 = a7;
  v51 = a6;
  v52 = a3;
  v50 = a2;
  v9 = [a1 description];
  v10 = sub_1D8B15970();
  v12 = v11;

  if ((a5 & 1) == 0)
  {
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (v38)
    {
      v39 = v38;
      v40 = a1;
      v41 = [v39 results];
      if (v41)
      {
        v42 = v41;

        sub_1D881F764(0, &qword_1ECA68B00);
        v43 = sub_1D8B15CF0();

        MEMORY[0x1EEE9AC00](v44);
        v48[2] = v51;
        v48[3] = v53;
        v48[4] = v50;
        v48[5] = v52;
        v12 = sub_1D8865524(sub_1D8AA227C, v48, v43);

        return v12;
      }

      goto LABEL_30;
    }

LABEL_31:
    sub_1D88C53E4();
    swift_allocError();
    *v45 = v10;
    *(v45 + 8) = v12;
    *(v45 + 16) = 1;
    swift_willThrow();
    return v12;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    goto LABEL_31;
  }

  v14 = v13;
  v49 = a1;
  v15 = [v14 results];
  if (!v15)
  {
LABEL_30:

    goto LABEL_31;
  }

  v16 = v15;

  sub_1D881F764(0, &unk_1ECA68B08);
  v17 = sub_1D8B15CF0();

  v64 = MEMORY[0x1E69E7CC0];
  if (v17 >> 62)
  {
    goto LABEL_38;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v20 = 0;
    v57 = v17 & 0xFFFFFFFFFFFFFF8;
    v58 = v17 & 0xC000000000000001;
    v55 = v17;
    v56 = v17 + 32;
    v54 = v18;
    while (1)
    {
      if (v58)
      {
        v21 = MEMORY[0x1DA71FC20](v20, v17);
      }

      else
      {
        if (v20 >= *(v57 + 16))
        {
          goto LABEL_36;
        }

        v21 = *(v56 + 8 * v20);
      }

      v22 = v21;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v18 = sub_1D8B16610();
        goto LABEL_6;
      }

      v62 = [v21 getCRDocumentOutputRegion];
      v24 = sub_1D8A2C358();
      v25 = v24;
      if (v24 >> 62)
      {
        v26 = sub_1D8B16610();
        if (!v26)
        {
LABEL_26:

          v28 = v19;
          goto LABEL_8;
        }
      }

      else
      {
        v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_26;
        }
      }

      v63 = v19;
      sub_1D87F4CE0(0, v26 & ~(v26 >> 63), 0);
      if (v26 < 0)
      {
        goto LABEL_37;
      }

      v60 = v20;
      v61 = v26;
      v59 = v22;
      v27 = 0;
      v28 = v63;
      v29 = v25;
      v30 = v25 & 0xC000000000000001;
      v31 = v25;
      do
      {
        if (v30)
        {
          v32 = MEMORY[0x1DA71FC20](v27, v29);
        }

        else
        {
          v32 = *(v29 + 8 * v27 + 32);
        }

        v33 = v32;
        v63 = v28;
        v35 = v28[2];
        v34 = v28[3];
        v36 = v62;
        if (v35 >= v34 >> 1)
        {
          sub_1D87F4CE0((v34 > 1), v35 + 1, 1);
          v28 = v63;
        }

        ++v27;
        v28[2] = v35 + 1;
        v37 = &v28[2 * v35];
        v37[4] = v33;
        v37[5] = v36;
        v29 = v31;
      }

      while (v61 != v27);

      v18 = v54;
      v17 = v55;
      v19 = MEMORY[0x1E69E7CC0];
      v20 = v60;
LABEL_8:
      sub_1D88F6210(v28);
      if (v20 == v18)
      {
        v19 = v64;
        break;
      }
    }
  }

  v47 = sub_1D8A9872C(v19, v50, v52, v51, v53);

  return v47;
}

uint64_t sub_1D8A9D424@<X0>(id *a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v102 = *&a4;
  v103 = a2;
  v100 = *&a3;
  v104 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v91 - v10;
  v12 = sub_1D8B13240();
  v101 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [*a1 labels];
  sub_1D881F764(0, &qword_1ECA68B18);
  v17 = sub_1D8B15CF0();

  if (v17 >> 62)
  {
    v23 = sub_1D8B16610();
    v97 = v11;
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_8:

    v11 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_9;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v97 = v11;
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1DA71FC20](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:
      swift_once();
      goto LABEL_14;
    }

    v19 = *(v17 + 32);
  }

  v20 = v19;

  v21 = [v20 identifier];

  v11 = sub_1D8B15970();
  v6 = v22;

LABEL_9:
  if (qword_1ECA62278 != -1)
  {
    swift_once();
  }

  if (sub_1D89A4644(v11, v6, qword_1ECA68970))
  {
    v24 = type metadata accessor for ObjectDetectorResult(0);
    v98 = v11;
    v25 = v24;
    v97 = swift_allocBox();
    v99 = v6;
    v27 = v26;
    v28 = [v15 uuid];
    sub_1D8B13210();

    [v15 confidence];
    v96 = v29;
    v95 = type metadata accessor for CVCoordinator(0);
    [v15 boundingBox];
    x = v120.origin.x;
    width = v120.size.width;
    height = v120.size.height;
    v120.origin.y = 1.0 - v33 - v120.size.height;
    y = v120.origin.y;
    MinX = CGRectGetMinX(v120);
    v121.origin.x = x;
    v121.origin.y = y;
    v121.size.width = width;
    v121.size.height = height;
    MinY = CGRectGetMinY(v121);
    v122.origin.x = x;
    v122.origin.y = y;
    v122.size.width = width;
    v122.size.height = height;
    MaxX = CGRectGetMaxX(v122);
    v123.origin.x = x;
    v123.origin.y = y;
    v123.size.width = width;
    v123.size.height = height;
    v35 = CGRectGetMinY(v123);
    v124.origin.x = x;
    v124.origin.y = y;
    v124.size.width = width;
    v124.size.height = height;
    v36 = CGRectGetMinX(v124);
    v125.origin.x = x;
    v125.origin.y = y;
    v125.size.width = width;
    v125.size.height = height;
    MaxY = CGRectGetMaxY(v125);
    v126.origin.x = x;
    v126.origin.y = y;
    v126.size.width = width;
    v126.size.height = height;
    v38 = CGRectGetMaxX(v126);
    v127.origin.x = x;
    v127.origin.y = y;
    v127.size.width = width;
    v127.size.height = height;
    v39 = CGRectGetMaxY(v127);
    *&v105 = MinX;
    *(&v105 + 1) = MinY;
    *&v106 = MaxX;
    *(&v106 + 1) = v35;
    *&v107 = v36;
    *(&v107 + 1) = MaxY;
    *&v108 = v38;
    *(&v108 + 1) = v39;
    Corners.bounds.getter();
    v40 = v12;
    v41 = *&v102;
    sub_1D8A30194(*&v100, a5, &v115, v42, v43, v44, v45);
    CameraSourceFrame.rotationAngle.getter(a5, &v105);
    v46 = v105;
    v47 = CameraSourceFrame.timestamp.getter(v41, a5);
    result = (*(v101 + 32))(v27, v14, v40);
    *(v27 + v25[5]) = v96;
    v49 = (v27 + v25[6]);
    v51 = v117;
    v50 = v118;
    v52 = v116;
    *v49 = v115;
    v49[1] = v52;
    v49[2] = v51;
    v49[3] = v50;
    v53 = (v27 + v25[7]);
    v54 = v99;
    *v53 = v98;
    v53[1] = v54;
    *(v27 + v25[8]) = v46;
    *(v27 + v25[9]) = v47;
    v55 = v97 | 0x3000000000000000;
    goto LABEL_18;
  }

  if (qword_1EE0E54C0 != -1)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (sub_1D8B0AAA4())
  {
    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    sub_1D8B16720();

    *&v115 = 0xD000000000000018;
    *(&v115 + 1) = 0x80000001D8B48610;
    MEMORY[0x1DA71EFA0](v11, v6);
    MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
    v56 = [v15 uuid];
    sub_1D8B13210();

    sub_1D8A9FF28(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v57 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v57);

    (*(v101 + 8))(v14, v12);
    v58 = *(&v115 + 1);
    v99 = v6;
    v100 = *&v115;
    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    v59 = v6;
    MEMORY[0x1DA71EFA0](v11, v6);
    MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
    [v15 confidence];
    sub_1D8B16030();
    v60 = *(&v115 + 1);
    v101 = v115;
    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    sub_1D8B16720();

    *&v115 = 0x6420646573756E55;
    *(&v115 + 1) = 0xEF203A6E69616D6FLL;
    MEMORY[0x1DA71EFA0](v11, v59);
    v98 = v11;
    v61 = v115;
    v62 = CameraSourceFrame.timestamp.getter(*&v102, a5);
    v112 = MEMORY[0x1E69E6158];
    v113 = MEMORY[0x1E69E6160];
    v111 = v61;
    v114 = 3;
    *v110 = v100;
    v110[1] = v58;
    *&v110[2] = v62;
    [v15 boundingBox];
    v63 = v128.origin.x;
    v64 = v128.size.width;
    v65 = v128.size.height;
    v128.origin.y = 1.0 - v66 - v128.size.height;
    v67 = v128.origin.y;
    v103 = CGRectGetMinX(v128);
    v129.origin.x = v63;
    v129.origin.y = v67;
    v129.size.width = v64;
    v129.size.height = v65;
    v102 = CGRectGetMinY(v129);
    v130.origin.x = v63;
    v130.origin.y = v67;
    v130.size.width = v64;
    v130.size.height = v65;
    v100 = CGRectGetMaxX(v130);
    v131.origin.x = v63;
    v131.origin.y = v67;
    v131.size.width = v64;
    v131.size.height = v65;
    v68 = CGRectGetMinY(v131);
    v132.origin.x = v63;
    v132.origin.y = v67;
    v132.size.width = v64;
    v132.size.height = v65;
    v69 = CGRectGetMinX(v132);
    v133.origin.x = v63;
    v133.origin.y = v67;
    v133.size.width = v64;
    v133.size.height = v65;
    v70 = CGRectGetMaxY(v133);
    v134.origin.x = v63;
    v134.origin.y = v67;
    v134.size.width = v64;
    v134.size.height = v65;
    v71 = CGRectGetMaxX(v134);
    v135.origin.x = v63;
    v135.origin.y = v67;
    v135.size.width = v64;
    v135.size.height = v65;
    v72 = CGRectGetMaxY(v135);
    *&v115 = v103;
    *(&v115 + 1) = v102;
    *&v116 = v100;
    *(&v116 + 1) = v68;
    *&v117 = v69;
    *(&v117 + 1) = v70;
    *&v118 = v71;
    *(&v118 + 1) = v72;
    Corners.bounds.getter();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 0.0, 0.8);
    LOBYTE(v105) = 1;
    *&v115 = v74;
    *(&v115 + 1) = v76;
    *&v116 = v78;
    *(&v116 + 1) = v80;
    *&v117 = 0x3F689374BC6A7EFALL;
    *(&v117 + 1) = GenericRGB;
    *&v118 = v101;
    *(&v118 + 1) = v60;
    memset(v119, 0, 24);
    v119[24] = 1;
    v82 = sub_1D8B15EA0();
    v83 = v97;
    (*(*(v82 - 8) + 56))(v97, 1, 1, v82);
    sub_1D88C4BD0(v110, &v105);
    v84 = swift_allocObject();
    v85 = v108;
    *(v84 + 64) = v107;
    *(v84 + 80) = v85;
    v86 = v106;
    *(v84 + 32) = v105;
    *(v84 + 48) = v86;
    *(v84 + 177) = *&v119[9];
    v87 = v118;
    *(v84 + 168) = *v119;
    v88 = v116;
    v89 = v117;
    *(v84 + 152) = v87;
    *(v84 + 136) = v89;
    *(v84 + 104) = v115;
    *(v84 + 16) = 0;
    *(v84 + 24) = 0;
    *(v84 + 96) = v109;
    *(v84 + 120) = v88;
    v90 = v99;
    *(v84 + 200) = v98;
    *(v84 + 208) = v90;
    sub_1D88E0F34(&v115, &v105);
    sub_1D8891CA0(0, 0, v83, &unk_1D8B3BA30, v84);

    sub_1D88E0F90(&v115);
    result = sub_1D87DC9A0(v110);
  }

  else
  {
  }

  v55 = 0xF000000000000007;
LABEL_18:
  *v104 = v55;
  return result;
}

uint64_t sub_1D8A9DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for BundleClassification.ClassificationType(0);
  v7[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A9DDF8, 0, 0);
}

uint64_t sub_1D8A9DDF8()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 64) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D8A9DE90, v1, 0);
}

uint64_t sub_1D8A9DE90()
{
  sub_1D8A3B1F4(*(v0 + 16), 0x7463616669747261, 0xE900000000000073);

  return MEMORY[0x1EEE6DFA0](sub_1D8A9DF14, 0, 0);
}

uint64_t sub_1D8A9DF14()
{
  v1 = *(v0 + 64);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D8A9DF84, v1, 0);
}

uint64_t sub_1D8A9DF84()
{
  v11 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[3];
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v10[0] = v3[4];
  *(v10 + 9) = *(v3 + 73);
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  v6 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B420(v9, v6, v7);

  sub_1D8AA00D4(v2, type metadata accessor for BundleClassification.ClassificationType);

  return MEMORY[0x1EEE6DFA0](sub_1D8A9E064, v1, 0);
}

uint64_t sub_1D8A9E064()
{
  sub_1D8A3B67C(v0[4], v0[5]);

  v1 = v0[1];

  return v1();
}

void sub_1D8A9E0D0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 pixelsWideRange];
  v5 = [v1 pixelsHighRange];
  v6 = [v1 idealImageFormat];
  v7 = [v4 idealDimension];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v5 idealDimension];
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v2 isOrientationAgnostic];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v2 idealOrientation];
  }

  v13 = [v2 aspectRatioHandling];
  if (v13 == 2)
  {
    GenericGray = CGColorCreateGenericGray(0.0, 0.0);

    goto LABEL_12;
  }

  if (v13 == 1)
  {

    GenericGray = 1;
LABEL_12:
    *a1 = v6;
    *(a1 + 4) = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = v10;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    *(a1 + 52) = v12;
    *(a1 + 56) = v11;
    *(a1 + 64) = GenericGray;
    return;
  }

  if (!v13)
  {

    GenericGray = 0;
    goto LABEL_12;
  }

LABEL_15:
  type metadata accessor for VNSizeRangeAspectRatioHandling(0);
  sub_1D8B16C10();
  __break(1u);
}

uint64_t VisionProcessor.init(configuration:enabledDetectionType:)(uint64_t *a1, char *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *a2;
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_logger;
  if (qword_1EE0E4370 != -1)
  {
    swift_once();
  }

  v9 = sub_1D8B151E0();
  v10 = __swift_project_value_buffer(v9, qword_1EE0E4378);
  (*(*(v9 - 8) + 16))(v2 + v8, v10, v9);
  v11 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_sequenceHandler;
  *(v2 + v11) = [objc_allocWithZone(MEMORY[0x1E6984680]) init];
  v12 = v2 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_configuration;
  *v12 = v3;
  *(v12 + 8) = v4;
  *(v12 + 16) = v5;
  *(v12 + 24) = v6;
  *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType) = v7;
  return v2;
}

unsigned __int8 *sub_1D8A9E3A4@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = 0uLL;
  if (v3 != *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType))
  {
    v6 = 2;
    v5 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    goto LABEL_10;
  }

  v5 = 0uLL;
  v6 = 2;
  v7 = 0uLL;
  v8 = 0uLL;
  if (((1 << v3) & 0x3FD7) != 0)
  {
LABEL_10:
    *a2 = v4;
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
    *(a2 + 64) = v6;
    return result;
  }

  v9 = a2;
  v10 = sub_1D8A9CD38(v3 != 3);
  v23 = &unk_1F544D1C8;
  v11 = [swift_dynamicCastObjCProtocolUnconditional() supportedImageSizeSet];

  sub_1D881F764(0, &unk_1ECA68B90);
  v12 = sub_1D8B15CF0();

  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_12:

    if (v3 != 5)
    {
      v4 = 0uLL;
      v6 = 2;
      v5 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      goto LABEL_15;
    }

    LOBYTE(v15[0]) = 0;
    strcpy(v17, "f024");
    *&v17[8] = vdupq_n_s64(0x560uLL);
    v18 = 0uLL;
    *&v17[24] = 0;
    LOBYTE(v19) = 0;
    DWORD1(v19) = 1;
    BYTE8(v19) = 0;
    v20 = 1;
LABEL_14:
    result = sub_1D88C5438(v17, v21);
    v4 = v21[0];
    v5 = v21[1];
    v7 = v21[2];
    v8 = v21[3];
    v6 = v22;
LABEL_15:
    a2 = v9;
    goto LABEL_10;
  }

  result = sub_1D8B16610();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1DA71FC20](0, v12);
    goto LABEL_8;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_8:
    v14 = v13;

    sub_1D8A9E0D0(v15);

    v18 = v15[2];
    v19 = v15[3];
    v20 = v16;
    *v17 = v15[0];
    *&v17[16] = v15[1];
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A9E5D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA68B20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for DetectionRequest(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_1D8AA1130(v9, v1);

  v11 = v10[2];
  if (!v11)
  {

    v12 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_4;
    }

LABEL_7:

    return 0;
  }

  v12 = sub_1D87F3A18(v10[2], 0);
  v13 = sub_1D881788C(&v19, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v11, v10);
  result = sub_1D888A84C();
  if (v13 != v11)
  {
    __break(1u);
    return result;
  }

  if (!*(v12 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1D8A305B4(v12, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_1D8A299A4(v4);
    return 0;
  }

  sub_1D8A12450(v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DB0);
  v15 = (type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D8B1AB90;
  v18 = (v17 + v16);
  sub_1D8AA006C(v8, v18 + v15[7], type metadata accessor for DetectionRequest);
  *v18 = v12;
  sub_1D8AA00D4(v8, type metadata accessor for DetectionRequest);
  return v17;
}

uint64_t sub_1D8A9E8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = a8;
  v9[11] = v8;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8A9E958, v8, 0);
}

uint64_t sub_1D8A9E958()
{
  v42 = v0;
  v41[1] = *MEMORY[0x1E69E9840];
  v1 = v0[11];
  v2 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType);
  if (((1 << v2) & 0x3FD7) != 0)
  {
    v3 = v0[6];
    v4 = v0[3];
    v5 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v6 = type metadata accessor for CVProcessorTaskDescriptor(0);
    sub_1D8AA006C(v3 + *(v6 + 20), v4, type metadata accessor for DetectionRequest);
    *(v0[3] + *(type metadata accessor for DetectionResult(0) + 20)) = v5;
    v7 = v0[1];
    goto LABEL_4;
  }

  v9 = v2 != 3;
  v10 = v0[4];
  v11 = sub_1D8A26854(v0[7], v0[5], v0[9], v0[10]);
  v12 = sub_1D8A9CD38(v9);
  v13 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_sequenceHandler);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D8B23DF0;
  *(v14 + 32) = v12;
  sub_1D881F764(0, &qword_1EE0E3690);
  v15 = v12;
  v16 = sub_1D8B15CD0();

  v0[2] = 0;
  LODWORD(v11) = [v13 performRequests:v16 onCVPixelBuffer:v10 orientation:v11 error:v0 + 2];

  v17 = v0[2];
  if (v11)
  {
    v18 = qword_1EE0E54C0;
    v19 = v17;
    if (v18 != -1)
    {
      goto LABEL_28;
    }

    while (1)
    {
      if (sub_1D8B0AAA4())
      {
        v20 = [v15 results];

        if (v20)
        {
          v21 = v0[11];
          v22 = v0[5];
          sub_1D881F764(0, &unk_1ECA68AF0);
          v39 = *(v0 + 9);
          v23 = sub_1D8B15CF0();

          v24 = swift_task_alloc();
          *(v24 + 16) = v39;
          *(v24 + 32) = v21;
          *(v24 + 40) = v22;
          sub_1D8965BE8(sub_1D8AA2048, v24, v23);
        }
      }

      else
      {
      }

      v26 = v0[10];
      v28 = v0[8];
      v27 = v0[9];
      v29 = v0[5];

      v31 = sub_1D8A9CFA4(v15, v29, v28, v30, v9, v27, v26);

      v32 = *(v31 + 2);
      if (!v32)
      {
        break;
      }

      v33 = 0;
      v5 = MEMORY[0x1E69E7CC0];
      while (v33 < *(v31 + 2))
      {
        v41[0] = *&v31[8 * v33 + 32];

        v34 = sub_1D8AA16CC(v41, v9);
        v35 = v41[0];
        if (v34)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D87F43E0(0, *(v5 + 16) + 1, 1);
          }

          v36 = *(v5 + 16);
          v37 = *(v5 + 24);
          v38 = v36 + 1;
          if (v36 >= v37 >> 1)
          {
            v40 = *(v5 + 16);
            sub_1D87F43E0((v37 > 1), v36 + 1, 1);
            v36 = v40;
          }

          *(v5 + 16) = v38;
          *(v5 + 8 * v36 + 32) = v35;
        }

        else
        {
        }

        if (v32 == ++v33)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_28:
      swift_once();
    }

    v5 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v3 = v0[6];
    v4 = v0[3];

    goto LABEL_3;
  }

  v25 = v17;

  sub_1D8B12EB0();
  swift_willThrow();

  v7 = v0[1];
LABEL_4:

  return v7();
}

void sub_1D8A9EE54(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v44 = a3;
  v42 = a2;
  v51 = *MEMORY[0x1E69E9840];
  v47 = a4;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = v8;
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_1D8B13240();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = objc_opt_self();
  v49 = 0;
  v18 = [v17 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v49];
  v19 = v49;
  if (v18)
  {
    v20 = sub_1D8B13050();
    v40 = v21;
    v41 = v20;

    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1D8B16720();
    v48 = *(v42 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType);
    v22 = CVDetection.DetectionType.description.getter();
    v42 = v5;
    v24 = v23;

    v49 = v22;
    v50 = v24;
    MEMORY[0x1DA71EFA0](0x726573624F4E562DLL, 0xEF2D6E6F69746176);
    v25 = [v16 uuid];
    sub_1D8B13210();

    sub_1D8A9FF28(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v26 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v26);

    (*(v13 + 8))(v15, v12);
    v27 = v49;
    v28 = v50;
    v29 = sub_1D8B15EA0();
    (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
    v30 = v45;
    v31 = v47;
    (*(v7 + 16))(v45, v44, v47);
    v32 = (*(v7 + 80) + 64) & ~*(v7 + 80);
    v33 = (v43 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    v35 = v46;
    *(v34 + 4) = v31;
    *(v34 + 5) = v35;
    *(v34 + 6) = v27;
    *(v34 + 7) = v28;
    (*(v7 + 32))(&v34[v32], v30, v31);
    v36 = &v34[v33];
    v37 = v40;
    *v36 = v41;
    v36[1] = v37;
    sub_1D8891CA0(0, 0, v11, &unk_1D8B3BA08, v34);
  }

  else
  {
    v38 = v19;
    v39 = sub_1D8B12EB0();

    swift_willThrow();
  }
}

uint64_t sub_1D8A9F2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for BundleClassification.ClassificationType(0);
  v6[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A9F33C, 0, 0);
}

uint64_t sub_1D8A9F33C()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 56) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D8A9F3D4, v1, 0);
}

uint64_t sub_1D8A9F3D4()
{
  sub_1D8A3B1F4(*(v0 + 16), 0x7463616669747261, 0xE900000000000073);

  return MEMORY[0x1EEE6DFA0](sub_1D8A9F458, 0, 0);
}

uint64_t sub_1D8A9F458()
{
  v1 = *(v0 + 56);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D8A9F4C8, v1, 0);
}

uint64_t sub_1D8A9F4C8()
{
  v10 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[3];
  v8[2] = v2[2];
  v8[3] = v3;
  v9[0] = v2[4];
  *(v9 + 9) = *(v2 + 73);
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v5 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B420(v8, v5, v6);

  sub_1D8AA00D4(v1, type metadata accessor for BundleClassification.ClassificationType);

  return MEMORY[0x1EEE6DFA0](sub_1D8A271D8, 0, 0);
}

uint64_t VisionProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_logger;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VisionProcessor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_logger;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 sub_1D8A9F6D4@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8A9E3A4(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D8A9F74C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D886553C;

  return sub_1D8AA1468();
}

uint64_t sub_1D8A9F7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D8864FBC;

  return sub_1D8A9E8B8(a1, a2, a3, a4, a5, a6, a7, a8);
}

unint64_t *sub_1D8A9F8E8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1D8AA0F2C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

BOOL _s22VisualIntelligenceCore18TextDetectorResultV11BackingDataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    return !v3;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  sub_1D881F764(0, &qword_1EE0E36A0);
  v8 = v3;
  v9 = v2;
  v10 = sub_1D8B16400();

  v12 = v4 == v6 && v5 == v7;
  return (v10 & 1) != 0 && v12;
}

uint64_t _s22VisualIntelligenceCore18TextDetectorResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TextDetectorResult(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = (a1 + *(v4 + 24));
  v7 = v6[3];
  v36[2] = v6[2];
  v36[3] = v7;
  v8 = v6[1];
  v36[0] = *v6;
  v36[1] = v8;
  v9 = (a2 + *(v4 + 24));
  v10 = v9[1];
  v35[0] = *v9;
  v35[1] = v10;
  v11 = v9[3];
  v35[2] = v9[2];
  v35[3] = v11;
  if (!_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v36, v35))
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if ((v13 != *v15 || v14 != v15[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[8]) != *(a2 + v5[8]) || *(a1 + v5[9]) != *(a2 + v5[9]) || (sub_1D894DBC4(*(a1 + v5[10]), *(a2 + v5[10])) & 1) == 0 || (sub_1D88E351C(*(a1 + v5[11]), *(a2 + v5[11])) & 1) == 0)
  {
    return 0;
  }

  v16 = v5[12];
  v17 = a1 + v16;
  v18 = *(a1 + v16);
  v19 = a2 + v16;
  v20 = *v19;
  if (v18)
  {
    if (v20)
    {
      v22 = *(v17 + 8);
      v21 = *(v17 + 16);
      v24 = *(v19 + 8);
      v23 = *(v19 + 16);
      sub_1D881F764(0, &qword_1EE0E36A0);
      v25 = v18;
      v26 = v20;
      v27 = v25;
      v28 = v26;
      v29 = sub_1D8B16400();

      result = 0;
      if ((v29 & 1) == 0 || v22 != v24 || v21 != v23)
      {
        return result;
      }

      goto LABEL_20;
    }

    return 0;
  }

  if (v20)
  {
    return 0;
  }

LABEL_20:
  v31 = v5[13];
  v32 = *(a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  if (v32 == *v34 && v33 == v34[1])
  {
    return 1;
  }

  return sub_1D8B16BA0();
}

BOOL _s22VisualIntelligenceCore20ObjectDetectorResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D8B13200() & 1) != 0 && (v4 = type metadata accessor for ObjectDetectorResult(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && (v5 = v4, v6 = (a1 + *(v4 + 24)), v7 = v6[3], v18[2] = v6[2], v18[3] = v7, v8 = v6[1], v18[0] = *v6, v18[1] = v8, v9 = (a2 + *(v4 + 24)), v10 = v9[1], v17[0] = *v9, v17[1] = v10, v11 = v9[3], v17[2] = v9[2], v17[3] = v11, _s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v18, v17)) && ((v12 = v5[7], v13 = *(a1 + v12), v14 = *(a1 + v12 + 8), v15 = (a2 + v12), v13 == *v15) && v14 == v15[1] || (sub_1D8B16BA0()) && *(a1 + v5[8]) == *(a2 + v5[8]))
  {
    return *(a1 + v5[9]) == *(a2 + v5[9]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A9FD8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v1, 0);
    v3 = (a1 + 48);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_1D87F3F54((v6 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 5;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
  v9 = sub_1D8B15810();

  return v9;
}

unint64_t sub_1D8A9FED4()
{
  result = qword_1ECA689A0;
  if (!qword_1ECA689A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA689A0);
  }

  return result;
}

uint64_t sub_1D8A9FF28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8A9FF70()
{
  result = qword_1ECA689E0;
  if (!qword_1ECA689E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA689E0);
  }

  return result;
}

unint64_t sub_1D8A9FFC4()
{
  result = qword_1ECA689F8;
  if (!qword_1ECA689F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA689F8);
  }

  return result;
}

unint64_t sub_1D8AA0018()
{
  result = qword_1ECA68A20;
  if (!qword_1ECA68A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68A20);
  }

  return result;
}

uint64_t sub_1D8AA006C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8AA00D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8AA0134(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68A00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8AA01A0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68A10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8AA0218()
{
  result = qword_1ECA68A40;
  if (!qword_1ECA68A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68A40);
  }

  return result;
}

uint64_t sub_1D8AA026C(void *a1)
{
  a1[1] = sub_1D8A9FF28(&unk_1ECA68A50, type metadata accessor for ObjectDetectorResult);
  a1[2] = sub_1D8A9FF28(&qword_1ECA680F0, type metadata accessor for ObjectDetectorResult);
  a1[3] = sub_1D8A9FF28(&qword_1ECA68A60, type metadata accessor for ObjectDetectorResult);
  result = sub_1D8A9FF28(&qword_1ECA68A68, type metadata accessor for ObjectDetectorResult);
  a1[4] = result;
  return result;
}

unint64_t sub_1D8AA038C()
{
  result = qword_1ECA68A78;
  if (!qword_1ECA68A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68A78);
  }

  return result;
}

unint64_t sub_1D8AA03E4()
{
  result = qword_1ECA68A80;
  if (!qword_1ECA68A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68A80);
  }

  return result;
}

uint64_t sub_1D8AA0438(void *a1)
{
  a1[1] = sub_1D8A9FF28(&unk_1EE0E5FD0, type metadata accessor for TextDetectorResult);
  a1[2] = sub_1D8A9FF28(&unk_1EE0E5FF8, type metadata accessor for TextDetectorResult);
  a1[3] = sub_1D8A9FF28(&qword_1EE0E5FF0, type metadata accessor for TextDetectorResult);
  result = sub_1D8A9FF28(&qword_1EE0E5FC8, type metadata accessor for TextDetectorResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8AA057C()
{
  result = sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B13240();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1D8AA07C0()
{
  sub_1D8B13240();
  if (v0 <= 0x3F)
  {
    sub_1D8AA08A0();
    if (v1 <= 0x3F)
    {
      sub_1D8AA08F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8AA08A0()
{
  if (!qword_1EE0E3820)
  {
    v0 = sub_1D8B16080();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3820);
    }
  }
}

void sub_1D8AA08F8()
{
  if (!qword_1EE0E39B8)
  {
    v0 = sub_1D8B15DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E39B8);
    }
  }
}

uint64_t sub_1D8AA0958(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1D8AA09A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1D8AA0A00(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
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

uint64_t sub_1D8AA0A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a8 + 24);
  v9 = *(a3 + 32);
  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  v13 = v9;
  return v8(a1, a2, v12);
}

uint64_t sub_1D8AA0AB0()
{
  result = sub_1D8B151E0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D8AA0BCC()
{
  result = qword_1ECA68AA8;
  if (!qword_1ECA68AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AA8);
  }

  return result;
}

unint64_t sub_1D8AA0C24()
{
  result = qword_1ECA68AB0;
  if (!qword_1ECA68AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AB0);
  }

  return result;
}

unint64_t sub_1D8AA0C7C()
{
  result = qword_1ECA68AB8;
  if (!qword_1ECA68AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AB8);
  }

  return result;
}

unint64_t sub_1D8AA0CD4()
{
  result = qword_1ECA68AC0;
  if (!qword_1ECA68AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AC0);
  }

  return result;
}

unint64_t sub_1D8AA0D2C()
{
  result = qword_1ECA68AC8;
  if (!qword_1ECA68AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AC8);
  }

  return result;
}

unint64_t sub_1D8AA0D84()
{
  result = qword_1ECA68AD0;
  if (!qword_1ECA68AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AD0);
  }

  return result;
}

unint64_t sub_1D8AA0DDC()
{
  result = qword_1ECA68AD8;
  if (!qword_1ECA68AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AD8);
  }

  return result;
}

unint64_t sub_1D8AA0E34()
{
  result = qword_1ECA68AE0;
  if (!qword_1ECA68AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AE0);
  }

  return result;
}

unint64_t sub_1D8AA0E8C()
{
  result = qword_1ECA68AE8;
  if (!qword_1ECA68AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AE8);
  }

  return result;
}

uint64_t sub_1D8AA0EE0()
{
  v0 = sub_1D8B16930();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D8AA0F2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v26 = a4;
  v22 = a1;
  v5 = type metadata accessor for DetectionRequest(0);
  v25 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v23 = 0;
  v24 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType;
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    sub_1D8AA006C(*(a3 + 48) + *(v25 + 72) * v17, v8, type metadata accessor for DetectionRequest);
    v18 = *v8;
    v19 = *(v26 + v24);
    result = sub_1D8AA00D4(v8, type metadata accessor for DetectionRequest);
    if (v18 == v19)
    {
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_1D88BE398(v22, v21, v23, a3);
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      goto LABEL_15;
    }

    v16 = *(a3 + 56 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AA1130(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for DetectionRequest(0);
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;
  v36 = a2;

  if (v9 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30 = v10;
    v31 = v3;
    v29[1] = v29;
    MEMORY[0x1EEE9AC00](v12);
    v32 = v29 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v11);
    v13 = 0;
    v14 = a1;
    v16 = *(a1 + 56);
    a1 += 56;
    v15 = v16;
    v17 = 1 << *(a1 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v10 = v18 & v15;
    v33 = 0;
    v34 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType;
    v11 = (v17 + 63) >> 6;
    while (v10)
    {
      v19 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v22 = v19 | (v13 << 6);
      sub_1D8AA006C(*(v14 + 48) + *(v35 + 72) * v22, v8, type metadata accessor for DetectionRequest);
      v23 = *v8;
      v3 = *(v36 + v34);
      sub_1D8AA00D4(v8, type metadata accessor for DetectionRequest);
      if (v23 == v3)
      {
        *&v32[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_1D88BE398(v32, v30, v33, v14);

          return v25;
        }
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_16;
      }

      v21 = *(a1 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v10 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v36;

  v25 = sub_1D8A9F8E8(v27, v10, a1, v28);

  MEMORY[0x1DA721330](v27, -1, -1);

  return v25;
}

uint64_t sub_1D8AA1468()
{
  *(v1 + 24) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1D8AA14F8, v0, 0);
}

uint64_t sub_1D8AA14F8()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType);
  if (((1 << v2) & 0x3FD7) != 0)
  {
    goto LABEL_2;
  }

  v5 = sub_1D8A9CD38(v2 != 3);
  v6 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_sequenceHandler);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8B23DF0;
  *(v7 + 32) = v5;
  sub_1D881F764(0, &qword_1EE0E3690);
  v8 = v5;
  v9 = sub_1D8B15CD0();

  v0[2] = 0;
  v10 = [v6 prepareForPerformingRequests:v9 error:v0 + 2];

  v11 = v0[2];
  if (v10)
  {
    v12 = v11;

LABEL_2:
    v3 = v0[1];
    goto LABEL_3;
  }

  v13 = v11;
  sub_1D8B12EB0();

  swift_willThrow();
  v3 = v0[1];
LABEL_3:

  return v3();
}

BOOL sub_1D8AA16CC(uint64_t *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = &v51 - v5;
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  *&v52 = *a1;
  CVDetection.detection.getter(&v63);
  v11 = *(&v64 + 1);
  v12 = v65;
  __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
  v13 = (*(v12 + 56))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  if (a2)
  {
    v14 = 0.1;
  }

  else
  {
    v14 = 0.2;
  }

  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if ((sub_1D8B0AAA4() & 1) != 0 && v14 >= v13)
  {
    *&v63 = 0;
    *(&v63 + 1) = 0xE000000000000000;
    sub_1D8B16720();

    *&v52 = 0xD000000000000022;
    *(&v52 + 1) = 0x80000001D8B47800;
    *&v63 = v10;
    CVDetection.detectionType.getter(&v57);
    v15 = CVDetection.DetectionType.description.getter();
    MEMORY[0x1DA71EFA0](v15);

    MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
    *&v57 = v10;
    CVDetection.detection.getter(&v63);
    v16 = *(&v64 + 1);
    v17 = v65;
    __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    (*(v17 + 48))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(&v63);
    sub_1D8A9FF28(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v18 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v18);

    (*(v7 + 8))(v9, v6);
    v19 = v52;
    *&v63 = v10;
    CVDetection.detectionType.getter(&v57);
    *&v52 = CVDetection.DetectionType.description.getter();
    *(&v52 + 1) = v20;
    MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D8B1AB90;
    *&v57 = v10;
    CVDetection.detection.getter(&v63);
    v22 = *(&v64 + 1);
    v23 = v65;
    __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    v24 = (*(v23 + 56))(v22, v23);
    __swift_destroy_boxed_opaque_existential_1(&v63);
    v25 = MEMORY[0x1E69E64A8];
    *(v21 + 56) = MEMORY[0x1E69E6448];
    *(v21 + 64) = v25;
    *(v21 + 32) = v24;
    v26 = sub_1D8B159A0();
    MEMORY[0x1DA71EFA0](v26);

    v27 = v52;
    *&v52 = v10;
    CVDetection.detection.getter(&v63);
    v28 = *(&v64 + 1);
    v29 = v65;
    __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    v30 = (*(v29 + 88))(v28, v29);
    __swift_destroy_boxed_opaque_existential_1(&v63);
    v60 = &type metadata for CVDetection;
    v61 = sub_1D8A29858();
    v59 = v10;
    v62 = 3;
    v57 = v19;
    v58 = v30;
    v68 = v10;
    CVDetection.detection.getter(&v52);
    v31 = *(&v53 + 1);
    v32 = v54;
    __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
    v33 = *(v32 + 64);

    v33(&v63, v31, v32);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    Corners.bounds.getter();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 1.0, 0.8);
    LOBYTE(v52) = 1;
    *&v63 = v35;
    *(&v63 + 1) = v37;
    *&v64 = v39;
    *(&v64 + 1) = v41;
    *&v65 = 0x3F689374BC6A7EFALL;
    *(&v65 + 1) = GenericRGB;
    v66 = v27;
    memset(v67, 0, 24);
    BYTE8(v67[1]) = 1;
    v43 = sub_1D8B15EA0();
    v44 = v51;
    (*(*(v43 - 8) + 56))(v51, 1, 1, v43);
    sub_1D88C4BD0(&v57, &v52);
    v45 = swift_allocObject();
    v46 = v55;
    *(v45 + 64) = v54;
    *(v45 + 80) = v46;
    v47 = v53;
    *(v45 + 32) = v52;
    *(v45 + 48) = v47;
    *(v45 + 177) = *(v67 + 9);
    *(v45 + 168) = v67[0];
    v48 = v65;
    *(v45 + 152) = v66;
    *(v45 + 136) = v48;
    v49 = v64;
    *(v45 + 104) = v63;
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    *(v45 + 96) = v56;
    *(v45 + 120) = v49;
    *(v45 + 200) = v10;

    sub_1D88E0F34(&v63, &v52);
    sub_1D8891CA0(0, 0, v44, &unk_1D8B3BA20, v45);

    sub_1D88E0F90(&v63);
    sub_1D87DC9A0(&v57);
  }

  return v14 < v13;
}

uint64_t sub_1D8AA1D1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372656E726F63 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xED0000656C676E41 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8AA1F24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8AA2068(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = (v1 + ((*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D886553C;

  return sub_1D8A26CF4(a1, v6, v7, v8, v9, v1 + v5, v11, v12);
}

uint64_t sub_1D8AA21B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[25];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D8A9F2A4(a1, v4, v5, (v1 + 4), (v1 + 13), v6);
}

uint64_t sub_1D8AA229C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[25];
  v7 = v1[26];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D886553C;

  return sub_1D8A9DD60(a1, v4, v5, (v1 + 4), (v1 + 13), v6, v7);
}

unint64_t sub_1D8AA2378()
{
  result = qword_1ECA68BA0;
  if (!qword_1ECA68BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68BA0);
  }

  return result;
}

uint64_t BundleRankerConfiguration.rankingGridWidth.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t BundleRankerConfiguration.rankingGridHeight.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t BundleRankerConfiguration.dataRange.setter(uint64_t result, char a2)
{
  *(v2 + 60) = result;
  *(v2 + 68) = a2 & 1;
  return result;
}

void sub_1D8AA24F4(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = (*a2 - v5) * 180.0 / 3.14159265 / 90.0;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = *(v3 + 40);
  v14 = *(v3 + 48);
  v15 = *(v3 + 56);
  v16 = *(v3 + 60);
  v17 = v7;
  v18 = *(v3 + 68);
  v41 = v9 + v11 * -0.5;
  v42 = v8 + v10 * -0.5;
  CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
  tx = t1.tx;
  ty = t1.ty;
  v35 = *&t1.c;
  v36 = *&t1.a;
  CGAffineTransformMakeRotation(&t1, -(v5 - v6));
  v21 = t1.tx;
  v22 = t1.ty;
  v37 = *&t1.c;
  v38 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
  v23 = t1.tx;
  v24 = t1.ty;
  v39 = *&t1.c;
  v40 = *&t1.a;
  v25 = *(MEMORY[0x1E695EFD0] + 16);
  *&t1.a = *MEMORY[0x1E695EFD0];
  *&t1.c = v25;
  *&t1.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&t2.a = v36;
  *&t2.c = v35;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v43, &t1, &t2);
  t1 = v43;
  *&t2.a = v38;
  *&t2.c = v37;
  t2.tx = v21;
  t2.ty = v22;
  CGAffineTransformConcat(&v43, &t1, &t2);
  t1 = v43;
  *&t2.a = v40;
  *&t2.c = v39;
  t2.tx = v23;
  t2.ty = v24;
  CGAffineTransformConcat(&v43, &t1, &t2);
  t1 = v43;
  v46.origin.y = v41;
  v46.origin.x = v42;
  v46.size.width = v10;
  v46.size.height = v11;
  v47 = CGRectApplyAffineTransform(v46, &t1);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  v30 = (v17 & 1) == 0;
  if (v17)
  {
    v31 = v14;
  }

  else
  {
    v31 = v12;
  }

  if (v30)
  {
    v32 = v13;
  }

  else
  {
    v32 = v15;
  }

  if (v30)
  {
    v12 = v14;
    v13 = v15;
  }

  MidX = CGRectGetMidX(v47);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  MidY = CGRectGetMidY(v48);
  *a3 = MidX;
  *(a3 + 8) = MidY;
  *(a3 + 16) = width;
  *(a3 + 24) = height;
  *(a3 + 32) = v31;
  *(a3 + 40) = v32;
  *(a3 + 48) = v12;
  *(a3 + 56) = v13;
  *(a3 + 60) = v16;
  *(a3 + 68) = v18;
}

uint64_t sub_1D8AA27D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a4;
  LODWORD(v26) = a5;
  v23 = a1;
  v24 = a3;
  v14 = (v10 + *(a6 + 36));
  v15 = v14[3];
  v47 = v14[2];
  v48[0] = v15;
  *(v48 + 13) = *(v14 + 61);
  v16 = v14[1];
  v45 = *v14;
  v46 = v16;
  v44 = 0;
  sub_1D8AA24F4(a2, &v44, v49);
  v18 = *(a6 + 24);
  v36 = *(a6 + 16);
  v17 = v36;
  v37 = a7;
  v38 = a8;
  v39 = v18;
  v40 = a9;
  v41 = a10;
  v42 = v10;
  v43 = v49;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *&v45 = sub_1D87DFC48(sub_1D8AA3B88, &v35, a8, TupleTypeMetadata2, MEMORY[0x1E69E73E0], a10, MEMORY[0x1E69E7410], v20);
  v23 = v17;
  v27 = v17;
  v28 = a7;
  v29 = a8;
  v30 = v18;
  v31 = a9;
  v32 = a10;
  v33 = v24;
  v34 = v25 & 1;
  sub_1D8B15DB0();
  swift_getWitnessTable();
  result = sub_1D8B167D0();
  if (v26)
  {
    v26 = &v23;
    *&v45 = result;
    MEMORY[0x1EEE9AC00](result);
    swift_getWitnessTable();
    v22 = sub_1D8B15C00();

    return v22;
  }

  return result;
}

void sub_1D8AA2A24(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v14 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a4 - 8) + 16))(a7, a1, a4);
  v15 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v18[0] = v15;
  *(v18 + 13) = *(a2 + 61);
  v16 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v16;
  *(a7 + v14) = (*(a5 + 24))(a1, v17, a4, a6, a3, a5);
}

__n128 sub_1D8AA2B30@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v4;
  *(a2 + 61) = *(v3 + 61);
  result = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D8AA2BC8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v44[2] = *(a1 + 32);
  *v45 = v2;
  *&v45[13] = *(a1 + 61);
  v3 = *(a1 + 16);
  v44[0] = *a1;
  v44[1] = v3;
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v47 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  *v50 = *(v1 + 65);
  *&v50[3] = *(v1 + 68);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v53 = *(v1 + 81);
  v54 = *(v1 + 83);
  v10 = *(v1 + 84);
  v11 = *(v1 + 92);
  *v46 = v4;
  *&v46[1] = v5;
  v48 = v6;
  v49 = v7;
  v51 = v8;
  v52 = v9;
  v55 = v10;
  v56 = v11;
  result = _s22VisualIntelligenceCore25BundleRankerConfigurationV2eeoiySbAC_ACtFZ_0(v46, v44);
  if ((result & 1) != 0 && *(*(v1 + 96) + 16))
  {
    return result;
  }

  if (v7 & 1) != 0 || (v9)
  {
    goto LABEL_68;
  }

  if (v11)
  {
LABEL_69:
    result = sub_1D8B168C0();
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_66;
  }

  v13 = (*(&v10 + 1) - *&v10) / 6.0;
  if (v6)
  {
    v14 = sub_1D87C892C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v15 = 0;
    v16 = *(v14 + 2);
    do
    {
      v17 = *(v14 + 3);
      if (v16 >= v17 >> 1)
      {
        v14 = sub_1D87C892C((v17 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      *&v14[4 * v16++ + 32] = ((v13 * 6.0) * (v15++ / (v6 - 1))) - (v13 * 3.0);
    }

    while (v6 != v15);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v8 < 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v18 = v13 * 3.0;
  if (v8)
  {
    v19 = sub_1D87C892C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v20 = 0;
    v21 = *(v19 + 2);
    do
    {
      v22 = *(v19 + 3);
      if (v21 >= v22 >> 1)
      {
        v19 = sub_1D87C892C((v22 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      *&v19[4 * v21++ + 32] = ((v13 * 6.0) * (v20++ / (v8 - 1))) - v18;
    }

    while (v8 != v20);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v42 = v1;
  if (v6)
  {
    v23 = sub_1D8B15D60();
    *(v23 + 16) = v6;
    bzero((v23 + 32), 4 * v6);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v24 = sub_1D8AA3CB8(v23, v8);

  if (v8)
  {
    v43 = v8;
    v25 = 0;
    v26 = v4;
    v27 = v5;
    v28 = (((v26 + v26) * 3.0) * v13) - v18;
    v29 = (((v27 + v27) * 3.0) * v13) - v18;
    v30 = v13 * (v13 + v13);
    v31 = 0.0;
    while (1)
    {
      v32 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_62;
      }

      if (v6)
      {
        break;
      }

LABEL_27:
      ++v25;
      if (v32 == v43)
      {
        if (v31 <= 0.0)
        {
          goto LABEL_55;
        }

        v37 = 0;
        while (1)
        {
          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v6)
          {
            v39 = 0;
            do
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v24 = sub_1D8939464(v24);
              }

              if (v37 >= v24[2])
              {
                goto LABEL_60;
              }

              v40 = v24[v37 + 4];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v24[v37 + 4] = v40;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v40 = sub_1D8939450(v40);
                v24[v37 + 4] = v40;
              }

              if (v39 >= *(v40 + 2))
              {
                goto LABEL_61;
              }

              *&v40[4 * v39 + 32] = *&v40[4 * v39 + 32] / v31;
            }

            while (v6 != ++v39);
          }

          ++v37;
          if (v38 == v43)
          {
            goto LABEL_55;
          }
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    if (v6 <= *(v14 + 2))
    {
      if (v25 >= *(v19 + 2))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v33 = 0;
      while (1)
      {
        v34 = expf(-(((*&v14[4 * v33 + 32] - v28) * (*&v14[4 * v33 + 32] - v28)) + ((*&v19[4 * v25 + 32] - v29) * (*&v19[4 * v25 + 32] - v29))) / v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D8939464(v24);
        }

        if (v25 >= v24[2])
        {
          break;
        }

        v35 = v24[v25 + 4];
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v24[v25 + 4] = v35;
        if ((v36 & 1) == 0)
        {
          v35 = sub_1D8939450(v35);
          v24[v25 + 4] = v35;
        }

        if (v33 >= *(v35 + 2))
        {
          goto LABEL_59;
        }

        *&v35[4 * v33 + 32] = v34;
        v31 = v31 + v34;
        if (v6 == ++v33)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
    }

    __break(1u);
    goto LABEL_64;
  }

LABEL_55:

  *(v42 + 96) = v24;
}

void sub_1D8AA3158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(v4 + 40);
  v9 = *(v4 + 72);
  v45[2] = *(v4 + 56);
  v46[0] = v9;
  v45[0] = *(v4 + 24);
  v45[1] = v8;
  v10 = *(a2 + 16);
  *(v4 + 24) = *a2;
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  *(v46 + 13) = *(v4 + 85);
  *(v4 + 40) = v10;
  *(v4 + 56) = v11;
  *(v4 + 64) = v12;
  *(v4 + 65) = *(a2 + 41);
  *(v4 + 68) = *(a2 + 44);
  *(v4 + 72) = v13;
  *(v4 + 80) = v14;
  *(v4 + 81) = *(a2 + 57);
  *(v4 + 89) = *(a2 + 65);
  sub_1D8AA2BC8(v45);
  if (v14 & 1) != 0 || (v12)
  {
    goto LABEL_59;
  }

  v47.origin.x = (*(a4 + 8))(a3, a4);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  MinX = CGRectGetMinX(v47);
  v20 = v11 * MinX;
  if (COERCE_INT(fabs(v20)) > 2139095039)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v20 <= -9.2234e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v20 >= 9.2234e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v21 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  MaxX = CGRectGetMaxX(v48);
  v23 = v11 * MaxX;
  if ((LODWORD(v23) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v23 <= -9.2234e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v23 >= 9.2234e18)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v21 >= v23)
  {
    v21 = v23;
  }

  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  MinY = CGRectGetMinY(v49);
  v25 = v13 * MinY;
  if (COERCE_INT(fabs(v25)) > 2139095039)
  {
    goto LABEL_51;
  }

  if (v25 <= -9.2234e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v25 >= 9.2234e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (__OFSUB__(v13, 1))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MaxY = CGRectGetMaxY(v50);
  v27 = v13 * MaxY;
  if ((LODWORD(v27) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v27 <= -9.2234e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v27 < 9.2234e18)
  {
    v28 = v20 & ~(v20 >> 63);
    v29 = v25 & ~(v25 >> 63);
    v30 = v27;
    if (v13 - 1 < v27)
    {
      v30 = v13 - 1;
    }

    v31 = v21 - v28;
    if (v21 < v28 || v30 < v29)
    {
      goto LABEL_58;
    }

    v33 = *(v5 + 96);
    v34 = v33 + 32;
    v35 = *(v33 + 16);
    if (v31 >= (v28 ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v31 = v28 ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v36 = 0.0;
    while (v29 < v35)
    {
      v37 = *(v34 + 8 * v29);
      v38 = v37 + 32;
      v39 = *(v37 + 16);
      v40 = v39 >= v28;
      v41 = v39 - v28;
      if (v40)
      {
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }

      v43 = v20 & ~(v20 >> 63);
      if (v42 <= v31)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v36 = v36 + *(v38 + 4 * v43);
        if (v21 == v43)
        {
          break;
        }

        v44 = __OFADD__(v43++, 1);
        if (v44)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      if (v29 == v30)
      {
        return;
      }

      v44 = __OFADD__(v29++, 1);
      if (v44)
      {
        __break(1u);
        return;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

uint64_t sub_1D8AA34B8()
{

  return swift_deallocClassInstance();
}

BOOL _s22VisualIntelligenceCore25BundleRankerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 60);
  v4 = *(a2 + 40);
  v5 = *(a2 + 60);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) == *(a2 + 48))
    {
      v6 = *(a2 + 56);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  if ((*(a1 + 68) & 1) == 0)
  {
    return (*(a2 + 68) & 1) == 0 && *&v3 == *&v5 && *(&v3 + 1) == *(&v5 + 1);
  }

  return (*(a2 + 68) & 1) != 0;
}

__n128 __swift_memcpy69_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8AA362C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 69))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8AA364C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = (a2 - 1);
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

  *(result + 69) = v3;
  return result;
}

uint64_t sub_1D8AA3764()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8AA37DC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  if (*(a1 + ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 69))
  {
    return v5 + *a1 + 1;
  }

  if (v5)
  {
    return (*(v4 + 48))();
  }

  else
  {
    return 0;
  }
}

void sub_1D8AA3878(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 69;
  if (v7 >= a2)
  {
    if (v7 < a3)
    {
      a1[v8] = 0;
    }

    if (a2)
    {
      v10 = *(v6 + 56);

      v10();
    }
  }

  else
  {
    v9 = ~v7 + a2;
    bzero(a1, v8);
    *a1 = v9;
    if (v7 < a3)
    {
      a1[v8] = 1;
    }
  }
}

unint64_t sub_1D8AA3998(uint64_t a1)
{
  result = sub_1D8AA39C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8AA39C0()
{
  result = qword_1ECA68BB0;
  if (!qword_1ECA68BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68BB0);
  }

  return result;
}

unint64_t sub_1D8AA3A14(uint64_t a1)
{
  result = sub_1D8AA3A3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8AA3A3C()
{
  result = qword_1EE0E4DF0;
  if (!qword_1EE0E4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E4DF0);
  }

  return result;
}

unint64_t sub_1D8AA3A90(uint64_t a1)
{
  result = sub_1D8AA3AB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8AA3AB8()
{
  result = qword_1EE0E6EE0;
  if (!qword_1EE0E6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E6EE0);
  }

  return result;
}

unint64_t sub_1D8AA3B0C(uint64_t a1)
{
  result = sub_1D8AA3B34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8AA3B34()
{
  result = qword_1ECA68BB8;
  if (!qword_1ECA68BB8)
  {
    type metadata accessor for GaussianIntegralBundleRanker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68BB8);
  }

  return result;
}

BOOL sub_1D8AA3BC0(uint64_t a1)
{
  if (*(v1 + 72))
  {
    return 1;
  }

  v3 = *(v1 + 64);
  v4 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
  return v4 > *&v3 && v4 < *(&v3 + 1);
}

uint64_t sub_1D8AA3CB8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63420);
    v4 = sub_1D8B15D60();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

BOOL sub_1D8AA3D54(double a1, double a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1 - a3 * 0.5;
  v10 = a2 - a4 * 0.5;
  v12.origin.x = (*(a7 + 8))(a6, a7);
  v14.origin.x = v9;
  v14.origin.y = v10;
  v14.size.width = a3;
  v14.size.height = a4;
  v13 = CGRectIntersection(v12, v14);
  return CGRectIsNull(v13);
}

void sub_1D8AA3E10(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15.origin.x = (*(a5 + 8))(a4, a5);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidY = CGRectGetMidY(v16);
  v10.n128_f64[0] = a1;
  v10.n128_f64[1] = a2;
  v11.n128_f64[0] = MidX;
  v11.n128_f64[1] = MidY;
  sub_1D8990398(v11, v10);
}

uint64_t sub_1D8AA3EFC(uint64_t a1)
{
  v3 = type metadata accessor for CVBundle(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v29[1] = v1;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D87F4074(0, v9, 0);
  v10 = v38;
  v37 = a1 + 56;
  result = sub_1D8B16580();
  v12 = result;
  v13 = 0;
  v30 = a1 + 64;
  v31 = v9;
  v32 = a1;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v37 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    v16 = *(a1 + 36);
    v34 = v13;
    v35 = v16;
    v17 = *(a1 + 48);
    v36 = *(v4 + 72);
    v18 = v33;
    sub_1D8ABD1B8(v17 + v36 * v12, v33, type metadata accessor for CVBundle);
    CVBundle.sanitizeForJSON()(v8);
    sub_1D8ABD158(v18, type metadata accessor for CVBundle);
    v38 = v10;
    v20 = *(v10 + 16);
    v19 = *(v10 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1D87F4074(v19 > 1, v20 + 1, 1);
      v10 = v38;
    }

    *(v10 + 16) = v20 + 1;
    result = sub_1D8ABD220(v8, v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + v20 * v36, type metadata accessor for CVBundle);
    a1 = v32;
    v14 = 1 << *(v32 + 32);
    if (v12 >= v14)
    {
      goto LABEL_23;
    }

    v21 = *(v37 + 8 * v15);
    if ((v21 & (1 << v12)) == 0)
    {
      goto LABEL_24;
    }

    if (v35 != *(v32 + 36))
    {
      goto LABEL_25;
    }

    v22 = v21 & (-2 << (v12 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v4;
      v24 = v15 << 6;
      v25 = v15 + 1;
      v26 = (v30 + 8 * v15);
      while (v25 < (v14 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1D87977B4(v12, v35, 0);
          v14 = __clz(__rbit64(v27)) + v24;
          goto LABEL_19;
        }
      }

      result = sub_1D87977B4(v12, v35, 0);
LABEL_19:
      v4 = v23;
    }

    v13 = v34 + 1;
    v12 = v14;
    if (v34 + 1 == v31)
    {
      return v10;
    }
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
  return result;
}

void *sub_1D8AA4334(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v22 = *(v9 + 72);
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    result = a1(&v24, v10);
    if (v6)
    {

      return v11;
    }

    v13 = v24;
    v14 = *(v24 + 16);
    v15 = *(v11 + 16);
    if (__OFADD__(v15, v14))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native() && v15 + v14 <= *(v11 + 24) >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = a5();
      if (*(v13 + 16))
      {
LABEL_12:
        v16 = (*(v11 + 24) >> 1) - *(v11 + 16);
        result = a6(0);
        if (v16 < v14)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v17 = *(v11 + 16);
          v18 = __OFADD__(v17, v14);
          v19 = v17 + v14;
          if (v18)
          {
            goto LABEL_22;
          }

          *(v11 + 16) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_20;
    }

LABEL_4:
    v10 += v22;
    if (!--v7)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

size_t sub_1D8AA4554(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a1;
  v29 = a2;
  v25 = type metadata accessor for DetectionRequest(0);
  v31 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v30 = a3;

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v26 = a3 + 56;
  for (i = v7; ; v7 = i)
  {
    if (!v11)
    {
      while (1)
      {
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v16 >= v12)
        {
          goto LABEL_26;
        }

        v11 = *(v8 + 8 * v16);
        ++v14;
        if (v11)
        {
          v14 = v16;
          goto LABEL_11;
        }
      }

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

LABEL_11:
    sub_1D8ABD1B8(*(v30 + 48) + *(v31 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v7, type metadata accessor for DetectionRequest);
    v28(&v33, v7);
    if (v4)
    {
      break;
    }

    v32 = 0;
    result = sub_1D8ABD158(v7, type metadata accessor for DetectionRequest);
    v17 = v33;
    v18 = *(v33 + 16);
    v19 = v15[2];
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_28;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v20 <= v15[3] >> 1)
    {
      if (!*(v17 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v21 = v19 + v18;
      }

      else
      {
        v21 = v19;
      }

      result = sub_1D87C8C08(result, v21, 1, v15);
      v15 = result;
      if (!*(v17 + 16))
      {
LABEL_4:

        if (v18)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    if ((v15[3] >> 1) - v15[2] < v18)
    {
      goto LABEL_30;
    }

    swift_arrayInitWithCopy();

    if (v18)
    {
      v22 = v15[2];
      v23 = __OFADD__(v22, v18);
      v24 = v22 + v18;
      if (v23)
      {
        goto LABEL_31;
      }

      v15[2] = v24;
    }

LABEL_5:
    v11 &= v11 - 1;
    v4 = v32;
    v8 = v26;
  }

  sub_1D8ABD158(v7, type metadata accessor for DetectionRequest);

LABEL_26:

  return v15;
}

uint64_t BundleSelector.Configuration.RankingAlgorithmPreset.rank<A, B>(_:frameMetadata:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2[3];
  v18[2] = a2[2];
  v18[3] = v12;
  v18[4] = a2[4];
  v13 = a2[1];
  v18[0] = *a2;
  v18[1] = v13;
  v22 = *v6;
  BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter(v19);
  v14 = v20;
  v15 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v16 = (*(v15 + 24))(a1, v18, a3, a4, a5, a6, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

uint64_t sub_1D8AA48F4(uint64_t a1)
{
  v2 = type metadata accessor for CVBundle(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - v11;
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  for (i = (v14 + 63) >> 6; v16; result = sub_1D8ABD158(v9, type metadata accessor for CVBundle))
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_1D8ABD1B8(*(a1 + 48) + *(v3 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for CVBundle);
    sub_1D8ABD220(v12, v6, type metadata accessor for CVBundle);
    sub_1D87F99C4(v9, v6);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= i)
    {
    }

    v16 = *(a1 + 56 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AA4AE0(uint64_t a1)
{
  v2 = type metadata accessor for DetectionRequest(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - v11;
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  for (i = (v14 + 63) >> 6; v16; result = sub_1D8ABD158(v9, type metadata accessor for DetectionRequest))
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_1D8ABD1B8(*(a1 + 48) + *(v3 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for DetectionRequest);
    sub_1D8ABD220(v12, v6, type metadata accessor for DetectionRequest);
    sub_1D87FB834(v9, v6);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= i)
    {
    }

    v16 = *(a1 + 56 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AA4CF8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v26 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v25 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = v25 - v13;
  v15 = 0;
  v27 = a1;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v27 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      v26(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double static BundleSelector.Configuration.factorySettings.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = 16908290;
  *&result = 10;
  *(a1 + 48) = xmmword_1D8B190E0;
  *(a1 + 64) = 1;
  return result;
}

uint64_t sub_1D8AA4F50(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CVBundle(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1D8ABD1B8(a3 + v15 + v16 * v13, v12, type metadata accessor for CVBundle);
      v17 = a1(v12);
      if (v3)
      {
        sub_1D8ABD158(v12, type metadata accessor for CVBundle);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1D8ABD220(v12, v24, type metadata accessor for CVBundle);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F4074(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D87F4074(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_1D8ABD220(v24, v14 + v15 + v20 * v16, type metadata accessor for CVBundle);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1D8ABD158(v12, type metadata accessor for CVBundle);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_1D8AA51DC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v5 = type metadata accessor for DetectionRequest(0);
  v38 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - v12;
  v14 = 0;
  v39 = a3;
  v17 = *(a3 + 56);
  v16 = a3 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v35 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

LABEL_8:
    v23 = *(v38 + 72);
    sub_1D8ABD1B8(*(v39 + 48) + v23 * (__clz(__rbit64(v20)) | (v14 << 6)), v10, type metadata accessor for DetectionRequest);
    sub_1D8ABD220(v10, v13, type metadata accessor for DetectionRequest);
    v24 = v36(v13);
    if (v3)
    {
      sub_1D8ABD158(v13, type metadata accessor for DetectionRequest);
      v31 = v35;

      return v31;
    }

    v20 &= v20 - 1;
    if (v24)
    {
      sub_1D8ABD220(v13, v34, type metadata accessor for DetectionRequest);
      v25 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F45E4(0, *(v25 + 16) + 1, 1);
        v25 = v40;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v35 = v28 + 1;
        v33 = v28;
        sub_1D87F45E4(v27 > 1, v28 + 1, 1);
        v29 = v35;
        v28 = v33;
        v25 = v40;
      }

      *(v25 + 16) = v29;
      v30 = *(v38 + 80);
      v35 = v25;
      result = sub_1D8ABD220(v34, v25 + ((v30 + 32) & ~v30) + v28 * v23, type metadata accessor for DetectionRequest);
    }

    else
    {
      result = sub_1D8ABD158(v13, type metadata accessor for DetectionRequest);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return v35;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 > 1u)
  {
    if (*v1 != 2)
    {
      LOBYTE(v13) = 3;
      BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter(v11);
      type metadata accessor for GaussianIntegralBundleRanker();
      v7 = swift_allocObject();
      *(v7 + 16) = 0x3F80000000000000;
      v8 = v11[0];
      *(v7 + 40) = v11[1];
      v9 = *v12;
      *(v7 + 56) = v11[2];
      *(v7 + 72) = v9;
      *(v7 + 96) = MEMORY[0x1E69E7CC0];
      *(v7 + 85) = *&v12[13];
      *(v7 + 24) = v8;
      sub_1D8AA2BC8(v11);
      BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter(&v13);
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68BC0);
      a1[4] = &off_1F5437188;
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v7;
      v5 = v13;
      *(result + 40) = v14;
      v10 = *v16;
      *(result + 56) = v15;
      *(result + 72) = v10;
      goto LABEL_9;
    }

    BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter(&v13);
    v3 = &unk_1ECA68BD0;
  }

  else if (*v1)
  {
    BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter(&v13);
    v3 = &unk_1ECA68BC8;
  }

  else
  {
    BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter(&v13);
    v3 = &unk_1ECA68BD8;
  }

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  a1[4] = &off_1F5437188;
  result = swift_allocObject();
  *(result + 16) = 0x3F80000000000000;
  v5 = v13;
  *(result + 40) = v14;
  v6 = *v16;
  *(result + 56) = v15;
  *(result + 72) = v6;
  *a1 = result;
LABEL_9:
  *(result + 85) = *&v16[13];
  *(result + 24) = v5;
  return result;
}

__n128 sub_1D8AA5700@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVBundle(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  sub_1D87A0E38(v2, v14, &qword_1ECA67980);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_1D87A14E4(v14, &qword_1ECA67980);
    v17 = 1;
  }

  else
  {
    CVBundle.sanitizeForJSON()(v16);
    sub_1D8ABD158(v14, type metadata accessor for CVBundle);
    v17 = 0;
  }

  v18 = *(v5 + 56);
  v42 = v16;
  v18(v16, v17, 1, v4);
  v19 = type metadata accessor for BundleSelector.Output(0);
  v20 = v19;
  v21 = (v2 + *(v19 + 20));
  v22 = v21[4];
  v48 = v21[3];
  v49 = v22;
  v23 = v21[2];
  v46 = v21[1];
  v47 = v23;
  v45 = *v21;
  v24 = *(v19 + 24);
  v43 = v2;
  v25 = *(v2 + v24);
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v40 = v19;
    v41 = a1;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v26, 0);
    v27 = v44;
    v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v29 = v25 + v28;
    v30 = *(v5 + 72);
    do
    {
      sub_1D8ABD1B8(v29, v8, type metadata accessor for CVBundle);
      CVBundle.sanitizeForJSON()(v10);
      sub_1D8ABD158(v8, type metadata accessor for CVBundle);
      v44 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D87F4074(v31 > 1, v32 + 1, 1);
        v27 = v44;
      }

      *(v27 + 16) = v32 + 1;
      sub_1D8ABD220(v10, v27 + v28 + v32 * v30, type metadata accessor for CVBundle);
      v29 += v30;
      --v26;
    }

    while (v26);
    v20 = v40;
    a1 = v41;
  }

  v33 = v43;
  v34 = sub_1D8AA3EFC(*(v43 + v20[7]));
  v35 = sub_1D87C4460(v34);

  v36 = *(v33 + v20[8]);
  sub_1D881F6FC(v42, a1, &qword_1ECA67980);
  v37 = a1 + v20[5];
  v38 = v48;
  *(v37 + 32) = v47;
  *(v37 + 48) = v38;
  *(v37 + 64) = v49;
  result = v46;
  *v37 = v45;
  *(v37 + 16) = result;
  *(a1 + v20[6]) = v27;
  *(a1 + v20[7]) = v35;
  *(a1 + v20[8]) = v36;
  return result;
}

uint64_t sub_1D8AA5AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v9 = sub_1D8B13240();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  v16 = sub_1D8B15EA0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a3, v9);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a2;
  (*(v10 + 32))(&v19[v17], v12, v9);
  *&v19[v18] = a4;

  sub_1D8B06D68(0, 0, v15, 0, 0, v22, v19);

  return sub_1D87A14E4(v15, &unk_1ECA675E0);
}

uint64_t sub_1D8AA5D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  sub_1D8ABD1B8(a1, v10, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(v12 + 32);
    v18(v15, v10, v11);
  }

  else
  {
    sub_1D8ABD220(v10, v7, type metadata accessor for CVTrackSnapshot);
    (*(v12 + 16))(v15, v7, v11);
    sub_1D8ABD158(v7, type metadata accessor for CVTrackSnapshot);
    v18 = *(v12 + 32);
  }

  v18(v17, v15, v11);
  if (*(a2 + 16) && (v19 = sub_1D87EF764(v17), (v20 & 1) != 0))
  {
    v21 = *(*(a2 + 56) + 8 * v19);
    v22 = *(v12 + 8);

    v23 = v22(v17, v11);
    MEMORY[0x1EEE9AC00](v23);
    *(&v25 - 2) = v26;
    return sub_1D8AA51DC(sub_1D8ABD358, (&v25 - 4), v21);
  }

  else
  {
    (*(v12 + 8))(v17, v11);
    return MEMORY[0x1E69E7CC0];
  }
}

__n128 BundleSelector.Output.latestFrameMetadata.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BundleSelector.Output(0) + 20);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t BundleSelector.Output.saliencyRankedBundles.getter()
{
  type metadata accessor for BundleSelector.Output(0);
}

uint64_t BundleSelector.Output.guaranteedBundles.getter()
{
  type metadata accessor for BundleSelector.Output(0);
}

unint64_t sub_1D8AA6170()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  v3 = 0xD000000000000020;
  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000013;
  if (!*v0)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8AA6200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8ABC484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8AA6228(uint64_t a1)
{
  v2 = sub_1D8AB84AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AA6264(uint64_t a1)
{
  v2 = sub_1D8AB84AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleSelector.Output.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68BE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AB84AC();
  sub_1D8B16DD0();
  v21 = 0;
  type metadata accessor for CVBundle(0);
  sub_1D8AB859C(&qword_1ECA64370, type metadata accessor for CVBundle);
  sub_1D8B16A80();
  if (!v2)
  {
    v9 = type metadata accessor for BundleSelector.Output(0);
    v10 = (v3 + v9[5]);
    v11 = v10[3];
    v18 = v10[2];
    v19 = v11;
    v20 = v10[4];
    v12 = v10[1];
    v16 = *v10;
    v17 = v12;
    v15 = 1;
    sub_1D885E198();
    sub_1D8B16AE0();
    *&v16 = *(v3 + v9[6]);
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758);
    sub_1D8AB85E4(&qword_1ECA65760, &qword_1ECA64370);
    sub_1D8B16AE0();
    *&v16 = *(v3 + v9[7]);
    v15 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642D0);
    sub_1D8AB8500(&qword_1ECA68BF0, &qword_1ECA64370);
    sub_1D8B16AE0();
    LOBYTE(v16) = 4;
    sub_1D8B16AA0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BundleSelector.Output.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68BF8);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for BundleSelector.Output(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AB84AC();
  v25 = v9;
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v23;
  v14 = v12;
  type metadata accessor for CVBundle(0);
  LOBYTE(v27) = 0;
  sub_1D8AB859C(&qword_1ECA65798, type metadata accessor for CVBundle);
  v15 = v24;
  sub_1D8B169B0();
  sub_1D881F6FC(v6, v14, &qword_1ECA67980);
  v33 = 1;
  sub_1D885E2D0();
  sub_1D8B16A10();
  v16 = (v14 + v10[5]);
  v17 = v30;
  v16[2] = v29;
  v16[3] = v17;
  v16[4] = v31;
  v18 = v28;
  *v16 = v27;
  v16[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758);
  v32 = 2;
  sub_1D8AB85E4(&qword_1ECA65790, &qword_1ECA65798);
  sub_1D8B16A10();
  *(v14 + v10[6]) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642D0);
  v32 = 3;
  sub_1D8AB8500(&qword_1ECA68C00, &qword_1ECA65798);
  sub_1D8B16A10();
  *(v14 + v10[7]) = v26;
  LOBYTE(v26) = 4;
  v19 = sub_1D8B169D0();
  (*(v13 + 8))(v25, v15);
  *(v14 + v10[8]) = v19 & 1;
  sub_1D8ABD1B8(v14, v22, type metadata accessor for BundleSelector.Output);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D8ABD158(v14, type metadata accessor for BundleSelector.Output);
}

__n128 BundleSelector.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration;
  v3 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 48);
  *(a1 + 32) = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v2 + 64);
  result = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8AA6B5C(uint64_t a1)
{
  v2 = v1;
  v69 = type metadata accessor for DetectionRequest(0);
  v4 = *(v69 - 8);
  v5 = MEMORY[0x1EEE9AC00](v69);
  result = MEMORY[0x1EEE9AC00](v5);
  if (!a1)
  {
    return result;
  }

  v68 = v59 - v7;
  v66 = v8;

  v9 = sub_1D8B151C0();
  v10 = sub_1D8B16200();

  if (!os_log_type_enabled(v9, v10))
  {

    return sub_1D8AF5A04(a1);
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v75[0] = v12;
  *v11 = 134218754;
  v71 = *(a1 + 16);
  *(v11 + 4) = v71;

  *(v11 + 12) = 2080;
  v13 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 24);
  v63 = v10;
  v62 = v12;
  if (v13 == 2)
  {
    v14 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
  }

  else
  {
    v16 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 40);
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_1D8B16020();
    if (v16)
    {
      v17 = 0x296C6C6974532820;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    MEMORY[0x1DA71EFA0](v17, v18);

    v15 = v73;
    v14 = v74;
  }

  v19 = sub_1D89AC714(v15, v14, v75);

  *(v11 + 14) = v19;
  v64 = v11;
  *(v11 + 22) = 2080;
  v20 = MEMORY[0x1E69E7CC0];
  v21 = v71;
  v65 = v9;
  v61 = v4;
  if (!v71)
  {
    v36 = *(MEMORY[0x1E69E7CC0] + 16);
    v73 = MEMORY[0x1E69E7CD0];
    if (v36)
    {
      goto LABEL_23;
    }

LABEL_26:

    sub_1D8B13240();
    sub_1D8AB859C(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
    v40 = sub_1D8B16040();
    v42 = v41;

    v43 = sub_1D89AC714(v40, v42, v75);

    v44 = v64;
    *(v64 + 24) = v43;
    *(v44 + 32) = 2080;
    if (v21)
    {
      v73 = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v21, 0);
      v45 = v73;
      v46 = a1 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v47 = *(v61 + 72);
      v48 = v66;
      do
      {
        sub_1D8ABD1B8(v46, v48, type metadata accessor for DetectionRequest);
        v49 = *v48;
        sub_1D8ABD158(v48, type metadata accessor for DetectionRequest);
        v73 = v45;
        v51 = *(v45 + 16);
        v50 = *(v45 + 24);
        v52 = v51 + 1;
        if (v51 >= v50 >> 1)
        {
          sub_1D87F4534((v50 > 1), v51 + 1, 1);
          v48 = v66;
          v45 = v73;
        }

        *(v45 + 16) = v52;
        *(v45 + v51 + 32) = v49;
        v46 += v47;
        --v71;
      }

      while (v71);
      v73 = MEMORY[0x1E69E7CD0];
      v9 = v65;
    }

    else
    {
      v45 = MEMORY[0x1E69E7CC0];
      v52 = *(MEMORY[0x1E69E7CC0] + 16);
      v73 = MEMORY[0x1E69E7CD0];
      if (!v52)
      {
LABEL_35:

        sub_1D87C4938();
        v54 = sub_1D8B16040();
        v56 = v55;

        v57 = sub_1D89AC714(v54, v56, v75);

        *(v44 + 34) = v57;
        _os_log_impl(&dword_1D8783000, v9, v63, "Sending DRQs: count = %ld, t = %s, originatorTrackIds: %s, types: %s", v44, 0x2Au);
        v58 = v62;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v58, -1, -1);
        MEMORY[0x1DA721330](v44, -1, -1);

        return sub_1D8AF5A04(a1);
      }
    }

    v53 = 32;
    do
    {
      sub_1D87FC140(&v72, *(v45 + v53++));
      --v52;
    }

    while (v52);
    goto LABEL_35;
  }

  v59[1] = v2;
  v73 = MEMORY[0x1E69E7CC0];
  sub_1D87F468C(0, v71, 0);
  v20 = v73;
  v22 = *(v4 + 80);
  v60 = a1;
  v23 = a1 + ((v22 + 32) & ~v22);
  v67 = *(v4 + 72);
  v70 = xmmword_1D8B1AB90;
  v24 = v68;
  do
  {
    sub_1D8ABD1B8(v23, v24, type metadata accessor for DetectionRequest);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E8);
    v25 = *(type metadata accessor for DetectionRequest.Originator(0) - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v70;
    v28 = *(v69 + 20);
    sub_1D8ABD1B8(v24 + v28, v27 + v26, type metadata accessor for DetectionRequest.Originator);
    v29 = sub_1D8AD1E10(v27);
    swift_setDeallocating();
    sub_1D8ABD158(v27 + v26, type metadata accessor for DetectionRequest.Originator);
    swift_deallocClassInstance();
    v30 = *(v29 + 16);

    if (v30)
    {
      v31 = swift_allocObject();
      *(v31 + 16) = v70;
      v24 = v68;
      sub_1D8ABD1B8(&v68[v28], v31 + v26, type metadata accessor for DetectionRequest.Originator);
      v32 = sub_1D8AD1E10(v31);
      swift_setDeallocating();
      sub_1D8ABD158(v31 + v26, type metadata accessor for DetectionRequest.Originator);
      swift_deallocClassInstance();
      v33 = sub_1D87C4B18(v32);
    }

    else
    {
      v33 = MEMORY[0x1E69E7CD0];
      v24 = v68;
    }

    result = sub_1D8ABD158(v24, type metadata accessor for DetectionRequest);
    v73 = v20;
    v35 = *(v20 + 16);
    v34 = *(v20 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_1D87F468C((v34 > 1), v35 + 1, 1);
      v20 = v73;
    }

    *(v20 + 16) = v36;
    *(v20 + 8 * v35 + 32) = v33;
    v23 += v67;
    --v21;
  }

  while (v21);
  v73 = MEMORY[0x1E69E7CD0];
  a1 = v60;
  v9 = v65;
  v21 = v71;
LABEL_23:
  v37 = 0;
  while (v37 < *(v20 + 16))
  {
    v38 = v37 + 1;

    result = sub_1D8AA4CF8(v39, MEMORY[0x1E69695A8], sub_1D87FC15C);
    v37 = v38;
    if (v36 == v38)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

double sub_1D8AA736C()
{
  v1 = v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector____lazy_storage___allowableRegion;
  if ((*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector____lazy_storage___allowableRegion + 32) & 1) == 0)
  {
    return *v1;
  }

  sub_1D8AA73BC(v0);
  *v1 = result;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  return result;
}

void sub_1D8AA73BC(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata);
  if (*(a1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 24) == 2)
  {
    sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    v2 = v1[6];
    v31 = v1[7];
    r1 = v1[9];
    v3 = v1[2];
    v28 = *(a1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 8);
    v30 = v1[8];
    v24 = *(a1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 24);
    v26 = *(a1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 16);
    r2 = *(a1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 32);
    CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
    tx = t1.tx;
    ty = t1.ty;
    v16 = *&t1.c;
    v17 = *&t1.a;
    CGAffineTransformMakeRotation(&t1, -v3);
    v6 = t1.tx;
    v7 = t1.ty;
    v18 = *&t1.c;
    v19 = *&t1.a;
    CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
    v8 = t1.tx;
    v9 = t1.ty;
    v20 = *&t1.c;
    v21 = *&t1.a;
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    *&t1.a = *MEMORY[0x1E695EFD0];
    *&t1.c = v10;
    *&t1.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&t2.a = v17;
    *&t2.c = v16;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v33, &t1, &t2);
    t1 = v33;
    *&t2.a = v19;
    *&t2.c = v18;
    t2.tx = v6;
    t2.ty = v7;
    CGAffineTransformConcat(&v33, &t1, &t2);
    t1 = v33;
    *&t2.a = v21;
    *&t2.c = v20;
    t2.tx = v8;
    t2.ty = v9;
    CGAffineTransformConcat(&v33, &t1, &t2);
    t1 = v33;
    v36.origin.y = v26;
    v36.origin.x = v28;
    v36.size.height = r2;
    v36.size.width = v24;
    v37 = CGRectApplyAffineTransform(v36, &t1);
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    v37.origin.x = v2;
    v37.origin.y = v31;
    v37.size.width = v30;
    v37.size.height = r1;
    v29 = v2 + x * CGRectGetWidth(v37);
    v38.origin.x = v2;
    v38.origin.y = v31;
    v38.size.width = v30;
    v38.size.height = r1;
    v27 = v31 + y * CGRectGetHeight(v38);
    v39.origin.x = v2;
    v39.origin.y = v31;
    v39.size.width = v30;
    v39.size.height = r1;
    v14 = CGRectGetWidth(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    r2a = v14 * CGRectGetWidth(v40);
    v41.origin.x = v2;
    v41.origin.y = v31;
    v41.size.width = v30;
    v41.size.height = r1;
    v15 = CGRectGetHeight(v41);
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v44.size.height = v15 * CGRectGetHeight(v42);
    v43.origin.x = v2;
    v43.origin.y = v31;
    v43.size.width = v30;
    v43.size.height = r1;
    v44.origin.y = v27;
    v44.origin.x = v29;
    v44.size.width = r2a;
    CGRectIntersection(v43, v44);
  }
}