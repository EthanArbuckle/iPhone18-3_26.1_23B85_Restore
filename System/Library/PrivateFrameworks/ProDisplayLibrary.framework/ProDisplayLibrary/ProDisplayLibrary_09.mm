unsigned int *sub_25F7F9C08(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_25F7F9E3C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F7F9EB4(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_25F7F9FB8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void BrightnessControl.init(val:)(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 == 0.0)
  {
    LOWORD(v2) = 0;
LABEL_3:
    v3 = 0;
LABEL_14:
    *a1 = v2;
    *(a1 + 2) = v3;
    return;
  }

  v5 = round(a2 * 32768.0);
  if (v5 <= 4095.0)
  {
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -1.0)
    {
      if (v5 < 65536.0)
      {
        v3 = 0;
        v2 = v5;
        goto LABEL_14;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = a1;
  v7 = -15;
  while (1)
  {
    v8 = a2 - ldexp(1.0, v7 + 12);
    v9 = round(v8 / ldexp(1.0, v7));
    if (v9 <= 4095.0)
    {
      break;
    }

    if (__CFADD__(v7++, 1))
    {
      LOWORD(v2) = 0;
      v3 = 1;
      a1 = v6;
      goto LABEL_14;
    }
  }

  if ((v7 + 16) >> 16)
  {
    goto LABEL_24;
  }

  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v9 <= -1.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v9 >= 65536.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v2 = v9 + ((v7 + 16) << 12);
  if ((v2 & 0x10000) == 0)
  {
    a1 = v6;
    goto LABEL_3;
  }

LABEL_28:
  __break(1u);
}

void Double.init(_:)(unsigned __int16 *a1)
{
  v1 = *a1;
  if (v1 > 0xFFF)
  {
    ldexp(1.0, (v1 >> 12) - 4);
  }
}

uint64_t getEnumTagSinglePayload for BrightnessControl(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for BrightnessControl(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t UserAdjustment.Inputs.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UserAdjustment();
  v5 = (a1 + v4[7]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + v4[8]);
  v9 = (a1 + v4[9]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(a1 + v4[10]);
  result = sub_25F7FC958(a1, type metadata accessor for UserAdjustment);
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = 0;
  *(a2 + 48) = v10;
  *(a2 + 56) = 0;
  *(a2 + 64) = v11;
  *(a2 + 72) = 0;
  *(a2 + 80) = v12;
  *(a2 + 88) = 0;
  return result;
}

BOOL UserAdjustment.Ranges.contains(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v25 = v1[11];
  v26 = v1[10];
  v11 = type metadata accessor for UserAdjustment();
  v12 = (a1 + v11[7]);
  v13 = v3 > *v12 || *v12 > v4;
  result = 0;
  if (!v13)
  {
    v14 = v12[1];
    if (v1[2] <= v14 && v14 <= v1[3])
    {
      v16 = *(a1 + v11[8]);
      if (v5 <= v16 && v16 <= v6)
      {
        v18 = (a1 + v11[9]);
        if (v7 <= *v18 && *v18 <= v8)
        {
          v20 = v18[1];
          if (v9 <= v20 && v20 <= v10)
          {
            v22 = *(a1 + v11[10]);
            if (v26 <= v22 && v22 <= v25)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

{
  if (*(a1 + 8) & 1) != 0 || *v1 > *a1 || *a1 > v1[1] || (*(a1 + 24))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = v1[2] > v3;
  if (v3 > v1[3])
  {
    v4 = 1;
  }

  if ((v4 | *(a1 + 40)))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = v1[4] > v5;
  if (v5 > v1[5])
  {
    v6 = 1;
  }

  if ((v6 | *(a1 + 56)))
  {
    return 0;
  }

  v7 = *(a1 + 48);
  v8 = v1[6] > v7;
  if (v7 > v1[7])
  {
    v8 = 1;
  }

  if ((v8 | *(a1 + 72)))
  {
    return 0;
  }

  v9 = *(a1 + 64);
  v10 = v1[8] > v9;
  if (v9 > v1[9])
  {
    v10 = 1;
  }

  if ((v10 | *(a1 + 88)))
  {
    return 0;
  }

  v11 = *(a1 + 80);
  return v1[10] <= v11 && v11 <= v1[11];
}

uint64_t sub_25F7FA660@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v9 = a1[5];
  v8 = a1[6];
  v38 = a1[7];
  v39 = a1[8];
  v40 = a1[9];
  v41 = a1[10];
  v42 = a1[12];
  v10 = type metadata accessor for UserAdjustment();
  v11 = v10;
  v12 = (v2 + v10[9]);
  v13 = *v12;
  if (*v12 <= v4)
  {
    v13 = v4;
  }

  if (v5 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v5;
  }

  if (v12[1] > v7)
  {
    v15 = v12[1];
  }

  else
  {
    v15 = v7;
  }

  if (v6 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v6;
  }

  v17 = (v2 + v10[7]);
  v18 = *v17;
  v19 = v17[1];
  if (*v17 <= v4)
  {
    v18 = v4;
  }

  if (v5 < v18)
  {
    v18 = v5;
  }

  if (v19 <= v7)
  {
    v19 = v7;
  }

  if (v6 < v19)
  {
    v19 = v6;
  }

  v20 = v18 - v14;
  v21 = v19 - v16;
  if (v18 - v14 < v38)
  {
    v18 = v14 - v38;
  }

  if (v39 < v20)
  {
    v22 = v39 + v14;
  }

  else
  {
    v22 = v18;
  }

  v23 = v16 - v40;
  if (v21 >= v40)
  {
    v23 = v19;
  }

  if (v41 < v21)
  {
    v24 = v41 + v16;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v2 + v10[10]);
  if (v25 <= v9)
  {
    v25 = v9;
  }

  if (v8 >= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v8;
  }

  v27 = *(v2 + v10[8]);
  if (v27 <= v9)
  {
    v27 = v9;
  }

  if (v8 < v27)
  {
    v27 = v8;
  }

  if (v42 >= v26 / v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26 / v42;
  }

  v29 = v10[5];
  v30 = (v2 + v10[6]);
  v32 = *v30;
  v31 = v30[1];
  v33 = sub_25F82210C();
  (*(*(v33 - 8) + 16))(a2 + v29, v2 + v29, v33);

  result = sub_25F82216C();
  v35 = (a2 + v11[6]);
  *v35 = v32;
  v35[1] = v31;
  v36 = (a2 + v11[7]);
  *v36 = v22;
  v36[1] = v24;
  *(a2 + v11[8]) = v28;
  v37 = (a2 + v11[9]);
  *v37 = v14;
  v37[1] = v16;
  *(a2 + v11[10]) = v26;
  return result;
}

void UserAdjustment.Attributes.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 104))(v18);
  v14 = v18[0];
  v15 = v18[1];
  v16 = v19;
  v17 = v20;
  ColorSpace.primaries.getter(v11, *&v19);
  v6 = v12;
  v7 = v13;
  v9 = v11[1];
  v10 = v11[0];
  v8 = (*(a2 + 72))(a1, a2);
  *a3 = v10;
  *(a3 + 16) = v9;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
}

void static UserAdjustment.computeRanges(userInputs:displayAttributes:validationRules:luminanceLimits:existingAdjustment:)(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X3>, uint64_t a5@<X4>, float64_t *a6@<X8>)
{
  v12 = type metadata accessor for UserAdjustment();
  v13 = *(v12 - 1);
  v14 = MEMORY[0x28223BE20](v12);
  v117 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v128 = &v116 - v17;
  MEMORY[0x28223BE20](v16);
  v127 = &v116 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v121 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v116 - v22;
  v24 = *a1;
  LODWORD(v143) = *(a1 + 8);
  v146 = *(a1 + 16);
  v147 = v24;
  LODWORD(v153.f64[0]) = *(a1 + 24);
  v136 = *(a1 + 32);
  v135 = *(a1 + 40);
  v148 = *(a1 + 48);
  LODWORD(v152.f64[0]) = *(a1 + 56);
  v144 = *(a1 + 64);
  v25 = *(a1 + 72);
  v27 = *a2;
  v26 = a2[1];
  v28 = a2[3];
  v131 = a2[2];
  v132 = v26;
  v29 = a2[5];
  v129 = a2[4];
  v130 = v28;
  v134 = v29;
  v30 = a2[6];
  v123 = *a3;
  v31 = a3[1];
  v139 = a3[2];
  v140 = v31;
  v32 = a3[3];
  v141 = a3[4];
  v142 = v32;
  v33 = a3[5];
  v151 = a3[6];
  v34 = a3[7];
  v35 = a3[8];
  v36 = a3[9];
  v37 = a3[10];
  v39 = a3[11];
  v38 = a3[12];
  v40 = a4[1];
  v125 = *a4;
  v126 = v38;
  v124 = v40;
  v122 = a5;
  sub_25F7FB1EC(a5, &v116 - v22);
  v41 = *(v13 + 48);
  v120 = v13 + 48;
  v42 = v41(v23, 1, v12);
  v145 = v33;
  v133 = v27;
  if (v42 == 1)
  {
    sub_25F7FB25C(v23);
    v43 = 0uLL;
  }

  else
  {
    v150 = vsubq_f64(*&v23[v12[7]], *&v23[v12[9]]);
    sub_25F7FC958(v23, type metadata accessor for UserAdjustment);
    v43 = v150;
  }

  v44 = v34 - v43.f64[0];
  v45 = v35 - v43.f64[0];
  v46 = v36 - v43.f64[1];
  v47 = v37 - v43.f64[1];
  v48 = v34 + v43.f64[0];
  v49 = v35 + v43.f64[0];
  v43.f64[0] = v36 + v43.f64[1];
  v50 = v37 + v43.f64[1];
  v53 = v36 + v43.f64[1] > v37 + v43.f64[1] || v48 > v49 || v44 > v45 || v46 > v47;
  v54 = v147;
  v55 = v148;
  v56 = v146;
  if (v53)
  {
    goto LABEL_53;
  }

  v118 = v39;
  v119 = v30;
  v58 = v139;
  v57 = v140;
  v137 = v43.f64[0];
  v138 = v50;
  sub_25F7FC868(*&v148, SLOBYTE(v152.f64[0]), v140, v139, v44, v45);
  v149 = v60;
  v150.f64[0] = v59;
  v61 = v144;
  v63 = v141;
  v62 = v142;
  sub_25F7FC868(*&v144, v25, v142, v141, v46, v47);
  v65 = v64;
  v67 = v66;
  v68 = LOBYTE(v143);
  sub_25F7FC868(*&v54, SLOBYTE(v143), v57, v58, v48, v49);
  v70 = v69;
  v72 = v71;
  sub_25F7FC868(v56, SLOBYTE(v153.f64[0]), v62, v63, v137, v138);
  v76 = v149;
  v75 = v150.f64[0];
  v77 = v145;
  v140 = v72;
  if (v68)
  {
    goto LABEL_15;
  }

  v85 = v150.f64[0] > v54 || v149 < v54;
  if (v85 || (LOBYTE(v153.f64[0]) & 1) != 0)
  {
    goto LABEL_15;
  }

  v86 = v65 > *&v56 || v67 < *&v56;
  if (v86 || (LOBYTE(v152.f64[0]) & 1) != 0)
  {
    goto LABEL_15;
  }

  v87 = v70 > v55 || v72 < v55;
  if (v87 || (v25 & 1) != 0)
  {
    goto LABEL_15;
  }

  v88 = v73 > v61;
  if (v74 < v61)
  {
    v88 = 1;
  }

  if (((v88 | v135) & 1) != 0 || v145 > v136 || v136 > v151)
  {
LABEL_15:
    v78 = v67;
    v79 = round(v145 * 10.0) / 10.0;
    v80 = round(v151 * 10.0) / 10.0;
    v81 = v80;
    v82 = v79;
    v83 = v80;
    if (v79 > v80)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_16;
  }

  v142 = v73;
  v143 = v74;
  v89 = v56;
  v90 = v127;
  sub_25F8220FC();
  sub_25F82216C();
  v91 = (v90 + v12[6]);
  *v91 = 0;
  v91[1] = 0xE000000000000000;
  v92 = v90 + v12[7];
  *v92 = v54;
  *(v92 + 8) = v89;
  v93 = v136;
  *(v90 + v12[8]) = v136;
  v94 = (v90 + v12[9]);
  *v94 = v55;
  v94[1] = v61;
  *(v90 + v12[10]) = v93;
  v95 = v121;
  sub_25F7FB1EC(v122, v121);
  if (v41(v95, 1, v12) == 1)
  {
    sub_25F7FB25C(v95);
    v96 = v128;
    sub_25F7D7BBC(v90, v128);
  }

  else
  {
    v97 = v95;
    v98 = v117;
    sub_25F7FC8F4(v97, v117);
    v159.affineTransformMatrix.columns[0].f64[0] = v133;
    v159.affineTransformMatrix.columns[0].f64[1] = v132;
    v159.affineTransformMatrix.columns[0].f64[2] = v131;
    v159.affineTransformMatrix.columns[0].f64[3] = v130;
    v159.affineTransformMatrix.columns[1].f64[0] = v129;
    v159.affineTransformMatrix.columns[1].f64[1] = v134;
    v96 = v128;
    sub_25F7D5BD0(v90, &v159, v128);
    sub_25F7FC958(v98, type metadata accessor for UserAdjustment);
  }

  v99 = v123;
  v147 = v65;
  v100 = v132;
  v101 = v133;
  v155.red.x = v133;
  v155.red.y = v132;
  v103 = v130;
  v102 = v131;
  v155.green.x = v131;
  v155.green.y = v130;
  v104 = v129;
  v155.blue.x = v129;
  v155.blue.y = v134;
  UserAdjustment.ccm(with:)(&v159, &v155);
  CCM.normalized.getter(&v155);
  v152 = vaddq_f64(v157, vaddq_f64(v155.red, v155.blue));
  v153 = vaddq_f64(v158, vaddq_f64(v155.green, v156));
  v155.red.x = v101;
  v155.red.y = v100;
  v155.green.x = v102;
  v155.green.y = v103;
  v155.blue.x = v104;
  v155.blue.y = v134;
  v154[0] = v55;
  v154[1] = v61;
  sub_25F81B470(&v155.red.x, v154, &v159);
  v105 = 1.0 / COERCE_DOUBLE(*&vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*&v159, *&v152), *(&v159 + 32), v152, 1), *(&v159 + 64), *&v153).f64[1]);
  v106 = *(v96 + v12[10]) / *(v96 + v12[8]);
  v107 = v125 / v119;
  if (v99)
  {
    v107 = v124 / v119;
  }

  v108 = v107 / v105;
  v109 = v126;
  if (v108 < v126)
  {
    v109 = v108;
  }

  v110 = v109 / v106;
  if (v108 >= v118)
  {
    v108 = v118;
  }

  v111 = v108 / v106;
  v112 = v136 * (v108 / v106);
  v113 = v136 * v110;
  if (v111 > v110 || v112 > v113)
  {
    goto LABEL_55;
  }

  v115 = v77;
  v82 = round(v112 * 10.0) / 10.0;
  v83 = round(v113 * 10.0) / 10.0;
  if (v82 <= v83)
  {
    v78 = v67;
    v81 = round(v136 * (v124 / v119 / (v105 * v106)) * 10.0) / 10.0;
    sub_25F7FC958(v96, type metadata accessor for UserAdjustment);
    sub_25F7FC958(v90, type metadata accessor for UserAdjustment);
    v79 = round(v115 * 10.0) / 10.0;
    v80 = round(v151 * 10.0) / 10.0;
    v73 = v142;
    v74 = v143;
    v76 = v149;
    v75 = v150.f64[0];
    v65 = v147;
    if (v79 > v80)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_16:
    *a6 = v75;
    a6[1] = v76;
    a6[2] = v65;
    a6[3] = v78;
    a6[4] = v79;
    a6[5] = v80;
    v84 = v140;
    a6[6] = v70;
    a6[7] = v84;
    a6[8] = v73;
    a6[9] = v74;
    a6[10] = v82;
    a6[11] = v83;
    a6[12] = v81;
    return;
  }

LABEL_56:
  __break(1u);
}

uint64_t UserAdjustment.Attributes.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + *(type metadata accessor for Preset(0) + 20);
  v5 = *(v4 + 48);
  v6 = *(v4 + 16);
  v18 = *v4;
  v19 = v6;
  v20 = *(v4 + 32);
  v21 = v5;
  ColorSpace.primaries.getter(v15, *&v20);
  v7 = v16;
  v8 = v17;
  v13 = v15[1];
  v14 = v15[0];
  v10 = *(v4 + 160);
  v9 = *(v4 + 168);
  result = sub_25F7FC958(a1, type metadata accessor for Preset);
  if (v9 > v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  *a2 = v14;
  *(a2 + 16) = v13;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v12;
  return result;
}

uint64_t UserAdjustment.Inputs.init(measuredWhitePointX:measuredWhitePointY:measuredLuminance:targetWhitePointX:targetWhitePointY:targetLuminance:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  return result;
}

_BYTE *UserAdjustment.RuleSet.init(capTarget:absoluteWhitePointXRange:absoluteWhitePointYRange:absoluteLuminanceRange:relativeWhitePointXRange:relativeWhitePointYRange:relativeLuminanceScaleRange:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>, __int128 a11, uint64_t a12, uint64_t a13)
{
  *a2 = *result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = a9;
  *(a2 + 64) = a10;
  *(a2 + 72) = a11;
  *(a2 + 88) = a12;
  *(a2 + 96) = a13;
  return result;
}

uint64_t sub_25F7FB1EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F7FB25C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UserAdjustment.RuleSet.CapTarget.hashValue.getter()
{
  v1 = *v0;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](v1);
  return sub_25F822E0C();
}

uint64_t UserAdjustment.Inputs.measuredWhitePointX.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t UserAdjustment.Inputs.measuredWhitePointY.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t UserAdjustment.Inputs.measuredLuminance.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t UserAdjustment.Inputs.targetWhitePointX.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t UserAdjustment.Inputs.targetWhitePointY.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t UserAdjustment.Inputs.targetLuminance.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

unint64_t sub_25F7FB638()
{
  v1 = *v0;
  v2 = 0x754C746567726174;
  if (v1 == 4)
  {
    v2 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000011;
  }

  v3 = 0xD000000000000013;
  v4 = 0xD000000000000011;
  if (v1 == 1)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F7FB708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F7FCEB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F7FB730(uint64_t a1)
{
  v2 = sub_25F7FC9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7FB76C(uint64_t a1)
{
  v2 = sub_25F7FC9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserAdjustment.Inputs.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0ED0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v19 = *(v1 + 16);
  v18 = *(v1 + 24);
  v17 = *(v1 + 32);
  v16 = *(v1 + 40);
  v15 = *(v1 + 48);
  v14 = *(v1 + 56);
  v13 = *(v1 + 64);
  v7 = *(v1 + 72);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7FC9B8();
  sub_25F822E5C();
  v26 = 0;
  v8 = v20;
  sub_25F822BAC();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v25 = 1;
  sub_25F822BAC();
  v24 = 2;
  sub_25F822BAC();
  v23 = 3;
  sub_25F822BAC();
  v22 = 4;
  sub_25F822BAC();
  v21 = 5;
  sub_25F822BAC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t UserAdjustment.Inputs.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0EE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7FC9B8();
  sub_25F822E3C();
  if (!v2)
  {
    v43 = 0;
    v9 = sub_25F822ACC();
    v37 = v10 & 1;
    v42 = 1;
    v11 = sub_25F822ACC();
    v36 = v12 & 1;
    v41 = 2;
    v13 = sub_25F822ACC();
    v35 = v14 & 1;
    v40 = 3;
    v31 = sub_25F822ACC();
    v34 = v15 & 1;
    v39 = 4;
    v30 = sub_25F822ACC();
    v33 = v17 & 1;
    v38 = 5;
    v18 = sub_25F822ACC();
    v19 = *(v6 + 8);
    v29 = v18;
    v20 = v8;
    v22 = v21;
    v19(v20, v5);
    v32 = v22 & 1;
    v23 = v37;
    v24 = v36;
    v25 = v35;
    v26 = v34;
    v27 = v33;
    *a2 = v9;
    *(a2 + 8) = v23;
    *(a2 + 16) = v11;
    *(a2 + 24) = v24;
    *(a2 + 32) = v13;
    *(a2 + 40) = v25;
    v28 = v30;
    *(a2 + 48) = v31;
    *(a2 + 56) = v26;
    *(a2 + 64) = v28;
    *(a2 + 72) = v27;
    *(a2 + 80) = v29;
    *(a2 + 88) = v22 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void UserAdjustment.Ranges.init(measuredWhitePointXRange:measuredWhitePointYRange:measuredLuminanceRange:targetWhitePointXRange:targetWhitePointYRange:targetLuminanceRange:fullScreenMaxLuminanceThreshold:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, __int128 a10, __int128 a11, uint64_t a12)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  *(a1 + 80) = a11;
  *(a1 + 96) = a12;
}

unint64_t sub_25F7FBE44()
{
  v1 = 0xD000000000000016;
  v2 = *v0;
  v3 = 0xD000000000000014;
  if (v2 != 5)
  {
    v3 = 0xD00000000000001FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = 0xD000000000000016;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F7FBEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F7FD0C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F7FBF24(uint64_t a1)
{
  v2 = sub_25F7FCA0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7FBF60(uint64_t a1)
{
  v2 = sub_25F7FCA0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserAdjustment.Ranges.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0EE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v26 = v1[3];
  v27 = v10;
  v11 = v1[4];
  v24 = v1[5];
  v25 = v11;
  v12 = v1[7];
  v23 = v1[6];
  v14 = v1[8];
  v13 = v1[9];
  v16 = v1[10];
  v15 = v1[11];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7FCA0C();
  sub_25F822E5C();
  v29 = v8;
  v30 = v9;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0780);
  sub_25F7D26D8(&qword_27FDB0788);
  sub_25F822C4C();
  if (!v2)
  {
    v18 = v24;
    v17 = v25;
    v22 = v12;
    v19 = v23;
    v29 = v27;
    v30 = v26;
    v28 = 1;
    sub_25F822C4C();
    v29 = v17;
    v30 = v18;
    v28 = 2;
    sub_25F822C4C();
    v29 = v19;
    v30 = v22;
    v28 = 3;
    sub_25F822C4C();
    v29 = v14;
    v30 = v13;
    v28 = 4;
    sub_25F822C4C();
    v29 = v16;
    v30 = v15;
    v28 = 5;
    sub_25F822C4C();
    LOBYTE(v29) = 6;
    sub_25F822C0C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t UserAdjustment.Ranges.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0EF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7FCA0C();
  sub_25F822E3C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0780);
    v33 = 0;
    sub_25F7D26D8(&qword_27FDB07E8);
    sub_25F822B6C();
    v9 = v31;
    v10 = v32;
    v33 = 1;
    sub_25F822B6C();
    v11 = v31;
    v12 = v32;
    v33 = 2;
    sub_25F822B6C();
    v13 = v31;
    v14 = v32;
    v33 = 3;
    sub_25F822B6C();
    v16 = v31;
    v15 = v32;
    v33 = 4;
    sub_25F822B6C();
    v29 = v16;
    v30 = v15;
    v17 = v31;
    v18 = v32;
    v33 = 5;
    sub_25F822B6C();
    v27 = v18;
    v28 = v17;
    v20 = v31;
    v21 = v32;
    LOBYTE(v31) = 6;
    sub_25F822B2C();
    v26 = v22;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
    a2[3] = v12;
    a2[4] = v13;
    a2[5] = v14;
    v23 = v30;
    a2[6] = v29;
    a2[7] = v23;
    v24 = v27;
    a2[8] = v28;
    a2[9] = v24;
    a2[10] = v20;
    a2[11] = v21;
    a2[12] = v26;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

BOOL _s17ProDisplayLibrary14UserAdjustmentV6InputsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v12 = *(a2 + 8);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v13 = *(a2 + 24);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 48))
    {
      v15 = *(a2 + 56);
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v8 == *(a2 + 64))
    {
      v16 = *(a2 + 72);
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if ((v11 & 1) == 0)
  {
    if (v10 == *(a2 + 80))
    {
      v18 = *(a2 + 88);
    }

    else
    {
      v18 = 1;
    }

    return (v18 & 1) == 0;
  }

  return (*(a2 + 88) & 1) != 0;
}

BOOL _s17ProDisplayLibrary14UserAdjustmentV6RangesV2eeoiySbAE_AEtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])), vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3]))))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(a1[4], a2[4]), vceqq_f64(a1[5], a2[5])), xmmword_25F829380)) & 0xF) == 0)
  {
    return a1[6].f64[0] == a2[6].f64[0];
  }

  return result;
}

BOOL _s17ProDisplayLibrary14UserAdjustmentV7RuleSetV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))), vuzp1q_s32(vceqq_f64(*(a1 + 40), *(a2 + 40)), vceqq_f64(*(a1 + 56), *(a2 + 56)))))) & 1) != 0 && *(a1 + 9) == *(a2 + 9) && ((*a1 ^ *a2) & 1) == 0 && *(a1 + 10) == *(a2 + 10))
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 11) == *(a2 + 11);
    return v4 == *(a2 + 12) && v5;
  }

  return result;
}

uint64_t sub_25F7FC868(uint64_t result, char a2, double a3, double a4, double a5, double a6)
{
  v6 = a3;
  v7 = a4;
  if ((a2 & 1) == 0)
  {
    v8 = *&result < a3 || *&result > a4;
    v6 = a3;
    v7 = a4;
    if (!v8)
    {
      v6 = *&result + a5;
      v7 = *&result + a6;
      if (*&result + a5 > *&result + a6)
      {
        goto LABEL_18;
      }
    }
  }

  if (v6 <= a4)
  {
    v9 = v6;
  }

  else
  {
    v9 = a4;
  }

  if (v6 < a3)
  {
    v9 = a3;
  }

  if (v7 >= a3)
  {
    a3 = v7;
  }

  if (v7 <= a4)
  {
    a4 = a3;
  }

  if (round(v9 * 10000.0) / 10000.0 > round(a4 * 10000.0) / 10000.0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F7FC8F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAdjustment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F7FC958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25F7FC9B8()
{
  result = qword_27FDB0ED8;
  if (!qword_27FDB0ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0ED8);
  }

  return result;
}

unint64_t sub_25F7FCA0C()
{
  result = qword_27FDB0EF0;
  if (!qword_27FDB0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0EF0);
  }

  return result;
}

unint64_t sub_25F7FCA64()
{
  result = qword_27FDB0F00;
  if (!qword_27FDB0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0F00);
  }

  return result;
}

unint64_t sub_25F7FCABC()
{
  result = qword_27FDB0F08;
  if (!qword_27FDB0F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0F08);
  }

  return result;
}

uint64_t sub_25F7FCB20(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[104])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25F7FCB64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25F7FCC1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F7FCC3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

unint64_t sub_25F7FCCA8()
{
  result = qword_27FDB0F18;
  if (!qword_27FDB0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0F18);
  }

  return result;
}

unint64_t sub_25F7FCD00()
{
  result = qword_27FDB0F20;
  if (!qword_27FDB0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0F20);
  }

  return result;
}

unint64_t sub_25F7FCD58()
{
  result = qword_27FDB0F28;
  if (!qword_27FDB0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0F28);
  }

  return result;
}

unint64_t sub_25F7FCDB0()
{
  result = qword_27FDB0F30;
  if (!qword_27FDB0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0F30);
  }

  return result;
}

unint64_t sub_25F7FCE08()
{
  result = qword_27FDB0F38;
  if (!qword_27FDB0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0F38);
  }

  return result;
}

unint64_t sub_25F7FCE60()
{
  result = qword_27FDB0F40;
  if (!qword_27FDB0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0F40);
  }

  return result;
}

uint64_t sub_25F7FCEB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000025F830AB0 == a2;
  if (v3 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025F830AD0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025F82FBF0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025F830AF0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025F830B10 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x754C746567726174 && a2 == 0xEF65636E616E696DLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_25F822CBC();

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

uint64_t sub_25F7FD0C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x800000025F830B30 == a2;
  if (v3 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025F830B50 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025F830B70 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025F830B90 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025F830BB0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025F830BD0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000025F830BF0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_25F822CBC();

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

uint64_t sub_25F7FD310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

double sub_25F7FD438(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    v25[0] = a2;
    LOWORD(v25[1]) = a3;
    BYTE2(v25[1]) = BYTE2(a3);
    v5 = a3 >> 40;
    BYTE3(v25[1]) = BYTE3(a3);
    BYTE4(v25[1]) = BYTE4(a3);
    BYTE5(v25[1]) = BYTE5(a3);
    if (a1 <= BYTE6(a3))
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_5:
    if (v5 == 2)
    {
      v6 = *(a2 + 16);
      v7 = *(a2 + 24);
      v8 = sub_25F821E4C();
      if (v8)
      {
        v9 = sub_25F821E7C();
        if (__OFSUB__(v6, v9))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v8 += v6 - v9;
      }

      v10 = __OFSUB__(v7, v6);
      v11 = v7 - v6;
      if (!v10)
      {
        v12 = sub_25F821E6C();
        if (v8)
        {
          if (v12 >= v11)
          {
            v14 = v11;
          }

          else
          {
            v14 = v12;
          }

          if (v14 >= a1)
          {
            if (v8 + a1)
            {
              LOWORD(v13) = *(v8 + a1);
              return v13 / 10.0;
            }

            return 0.0;
          }

          goto LABEL_40;
        }

        goto LABEL_33;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    memset(v25, 0, 14);
    if (a1 <= 0)
    {
LABEL_28:
      LOWORD(a4) = *(v25 + a1);
      return *&a4 / 10.0;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v16 = a2;
  v17 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_36;
  }

  v18 = sub_25F821E4C();
  if (v18)
  {
    v19 = v18;
    v20 = sub_25F821E7C();
    if (__OFSUB__(v16, v20))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    v21 = v16 - v20 + v19;
    v22 = sub_25F821E6C();
    if (v21)
    {
      if (v22 >= v17)
      {
        v24 = v17;
      }

      else
      {
        v24 = v22;
      }

      if (v24 >= a1)
      {
        if (v21 + a1)
        {
          LOWORD(v23) = *(v21 + a1);
          return v23 / 10.0;
        }

        return 0.0;
      }

      goto LABEL_41;
    }
  }

  else
  {
    sub_25F821E6C();
  }

  result = 0.0;
  if (a1 <= 0)
  {
    return result;
  }

  __break(1u);
LABEL_33:
  result = 0.0;
  if (a1 > 0)
  {
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_25F7FD73C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v4)
    {
      goto LABEL_16;
    }

    v22[0] = a2;
    LOWORD(v22[1]) = a3;
    BYTE2(v22[1]) = BYTE2(a3);
    v4 = a3 >> 40;
    BYTE3(v22[1]) = BYTE3(a3);
    BYTE4(v22[1]) = BYTE4(a3);
    BYTE5(v22[1]) = BYTE5(a3);
    if (a1 <= BYTE6(a3))
    {
      return *(v22 + a1) & 0xFFF;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    memset(v22, 0, 14);
    if (a1 > 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    return *(v22 + a1) & 0xFFF;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = sub_25F821E4C();
  if (v7)
  {
    v8 = sub_25F821E7C();
    if (__OFSUB__(v5, v8))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v7 += v5 - v8;
  }

  v9 = __OFSUB__(v6, v5);
  v10 = v6 - v5;
  if (v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = sub_25F821E6C();
  if (!v7)
  {
    goto LABEL_30;
  }

  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= a1)
  {
    return *(v7 + a1) & 0xFFF;
  }

  __break(1u);
LABEL_16:
  v13 = a2;
  v14 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_34;
  }

  v15 = sub_25F821E4C();
  if (!v15)
  {
    sub_25F821E6C();
    goto LABEL_28;
  }

  v16 = v15;
  v17 = sub_25F821E7C();
  if (__OFSUB__(v13, v17))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  v7 = v13 - v17 + v16;
  v18 = sub_25F821E6C();
  if (!v7)
  {
LABEL_28:
    if (a1 <= 0)
    {
      return 0;
    }

    __break(1u);
LABEL_30:
    if (a1 > 0)
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (v18 >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  if (v19 < a1)
  {
    goto LABEL_38;
  }

  return *(v7 + a1) & 0xFFF;
}

unint64_t sub_25F7FD958(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v4)
    {
      goto LABEL_16;
    }

    v21[0] = a2;
    LOWORD(v21[1]) = a3;
    BYTE2(v21[1]) = BYTE2(a3);
    v4 = a3 >> 40;
    BYTE3(v21[1]) = BYTE3(a3);
    BYTE4(v21[1]) = BYTE4(a3);
    BYTE5(v21[1]) = BYTE5(a3);
    if (a1 <= BYTE6(a3))
    {
      return *(v21 + a1) >> 4;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    memset(v21, 0, 14);
    if (a1 > 0)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    return *(v21 + a1) >> 4;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = sub_25F821E4C();
  if (v7)
  {
    v8 = sub_25F821E7C();
    if (__OFSUB__(v5, v8))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 += v5 - v8;
  }

  v9 = __OFSUB__(v6, v5);
  v10 = v6 - v5;
  if (v9)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v11 = sub_25F821E6C();
  if (!v7)
  {
    if (a1 <= 0)
    {
      return 0;
    }

LABEL_42:
    __break(1u);
  }

  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= a1)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_16:
  v13 = a2;
  v14 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_36;
  }

  v15 = sub_25F821E4C();
  if (!v15)
  {
    sub_25F821E6C();
LABEL_30:
    if (a1 <= 0)
    {
      return 0;
    }

    goto LABEL_40;
  }

  v16 = v15;
  v17 = sub_25F821E7C();
  if (__OFSUB__(v13, v17))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v7 = v13 - v17 + v16;
  v18 = sub_25F821E6C();
  if (!v7)
  {
    goto LABEL_30;
  }

  if (v18 >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  if (v19 < a1)
  {
    goto LABEL_41;
  }

LABEL_24:
  if (v7 + a1)
  {
    return *(v7 + a1) >> 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F7FDBE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v4)
    {
      goto LABEL_16;
    }

    v22[0] = a2;
    LOWORD(v22[1]) = a3;
    BYTE2(v22[1]) = BYTE2(a3);
    v4 = a3 >> 40;
    BYTE3(v22[1]) = BYTE3(a3);
    BYTE4(v22[1]) = BYTE4(a3);
    BYTE5(v22[1]) = BYTE5(a3);
    if (a1 <= BYTE6(a3))
    {
      return *(v22 + a1);
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    memset(v22, 0, 14);
    if (a1 > 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    return *(v22 + a1);
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = sub_25F821E4C();
  if (v7)
  {
    v8 = sub_25F821E7C();
    if (__OFSUB__(v5, v8))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v7 += v5 - v8;
  }

  v9 = __OFSUB__(v6, v5);
  v10 = v6 - v5;
  if (v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = sub_25F821E6C();
  if (!v7)
  {
    goto LABEL_30;
  }

  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= a1)
  {
    return *(v7 + a1);
  }

  __break(1u);
LABEL_16:
  v13 = a2;
  v14 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_34;
  }

  v15 = sub_25F821E4C();
  if (!v15)
  {
    sub_25F821E6C();
    goto LABEL_28;
  }

  v16 = v15;
  v17 = sub_25F821E7C();
  if (__OFSUB__(v13, v17))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  v7 = v13 - v17 + v16;
  v18 = sub_25F821E6C();
  if (!v7)
  {
LABEL_28:
    if (a1 <= 0)
    {
      return 0;
    }

    __break(1u);
LABEL_30:
    if (a1 > 0)
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (v18 >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  if (v19 < a1)
  {
    goto LABEL_38;
  }

  return *(v7 + a1);
}

double sub_25F7FDE48(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    goto LABEL_5;
  }

  if (v4)
  {
LABEL_16:
    v14 = a2;
    v15 = (a2 >> 32) - a2;
    if (a2 >> 32 >= a2)
    {
      v16 = sub_25F821E4C();
      if (!v16)
      {
        sub_25F821E6C();
LABEL_32:
        if (a1 <= 0)
        {
          return result;
        }

        __break(1u);
LABEL_34:
        if (a1 <= 0)
        {
          return result;
        }

LABEL_43:
        __break(1u);
      }

      v17 = v16;
      v18 = sub_25F821E7C();
      if (!__OFSUB__(v14, v18))
      {
        v7 = v14 - v18 + v17;
        v19 = sub_25F821E6C();
        if (v7)
        {
          if (v19 >= v15)
          {
            v20 = v15;
          }

          else
          {
            v20 = v19;
          }

          if (v20 >= a1)
          {
LABEL_24:
            if (v7 + a1)
            {
              v21 = *(v7 + a1);
              if (v21 != 0x8000)
              {
                sub_25F7F1F40(v21);
              }
            }

            return result;
          }

          goto LABEL_42;
        }

        goto LABEL_32;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_38;
  }

  v23[0] = a2;
  LOWORD(v23[1]) = a3;
  BYTE2(v23[1]) = BYTE2(a3);
  v4 = a3 >> 40;
  BYTE3(v23[1]) = BYTE3(a3);
  BYTE4(v23[1]) = BYTE4(a3);
  BYTE5(v23[1]) = BYTE5(a3);
  if (a1 > BYTE6(a3))
  {
    __break(1u);
LABEL_5:
    if (v4 == 2)
    {
      v5 = *(a2 + 16);
      v6 = *(a2 + 24);
      v7 = sub_25F821E4C();
      if (v7)
      {
        v8 = sub_25F821E7C();
        if (__OFSUB__(v5, v8))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v7 += v5 - v8;
      }

      v9 = __OFSUB__(v6, v5);
      v10 = v6 - v5;
      if (v9)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v11 = sub_25F821E6C();
      if (!v7)
      {
        goto LABEL_34;
      }

      if (v11 >= v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = v11;
      }

      if (v13 >= a1)
      {
        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_16;
    }

    memset(v23, 0, 14);
    if (a1 > 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  v22 = *(v23 + a1);
  if (v22 != 0x8000)
  {
    sub_25F7F1F40(v22);
  }

  return result;
}

uint64_t sub_25F7FE0A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v4)
    {
      goto LABEL_16;
    }

    v21[0] = a2;
    LOWORD(v21[1]) = a3;
    BYTE2(v21[1]) = BYTE2(a3);
    v4 = a3 >> 40;
    BYTE3(v21[1]) = BYTE3(a3);
    BYTE4(v21[1]) = BYTE4(a3);
    BYTE5(v21[1]) = BYTE5(a3);
    if (a1 <= BYTE6(a3))
    {
      return *(v21 + a1) & 0xFFFFFF;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    memset(v21, 0, 14);
    if (a1 > 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    return *(v21 + a1) & 0xFFFFFF;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = sub_25F821E4C();
  if (v7)
  {
    v8 = sub_25F821E7C();
    if (__OFSUB__(v5, v8))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v7 += v5 - v8;
  }

  v9 = __OFSUB__(v6, v5);
  v10 = v6 - v5;
  if (v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = sub_25F821E6C();
  if (!v7)
  {
    goto LABEL_30;
  }

  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= a1)
  {
    return *(v7 + a1) & 0xFFFFFF;
  }

  __break(1u);
LABEL_16:
  v13 = a2;
  v14 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_34;
  }

  v15 = sub_25F821E4C();
  if (!v15)
  {
    sub_25F821E6C();
    goto LABEL_28;
  }

  v16 = v15;
  v17 = sub_25F821E7C();
  if (__OFSUB__(v13, v17))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  v7 = v13 - v17 + v16;
  v18 = sub_25F821E6C();
  if (v7)
  {
    if (v18 >= v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = v18;
    }

    if (v19 >= a1)
    {
      return *(v7 + a1) & 0xFFFFFF;
    }

    goto LABEL_38;
  }

LABEL_28:
  if (a1 > 0)
  {
    __break(1u);
LABEL_30:
    if (a1 > 0)
    {
      goto LABEL_39;
    }
  }

  return 0;
}

uint64_t sub_25F7FE2B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v4)
    {
      goto LABEL_16;
    }

    v19[0] = a2;
    LOWORD(v19[1]) = a3;
    BYTE2(v19[1]) = BYTE2(a3);
    v4 = a3 >> 40;
    BYTE3(v19[1]) = BYTE3(a3);
    BYTE4(v19[1]) = BYTE4(a3);
    BYTE5(v19[1]) = BYTE5(a3);
    if (a1 <= BYTE6(a3))
    {
      return *(v19 + a1);
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    memset(v19, 0, 14);
    if (a1 > 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    return *(v19 + a1);
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = sub_25F821E4C();
  if (v7)
  {
    v8 = sub_25F821E7C();
    if (__OFSUB__(v5, v8))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v7 += v5 - v8;
  }

  v9 = __OFSUB__(v6, v5);
  v10 = v6 - v5;
  if (v9)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_25F821E6C();
  if (!v7)
  {
    goto LABEL_30;
  }

  if (result >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = result;
  }

  if (v12 >= a1)
  {
    return *(v7 + a1);
  }

  __break(1u);
LABEL_16:
  v13 = a2;
  v14 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_33;
  }

  v15 = sub_25F821E4C();
  if (v15)
  {
    v16 = v15;
    v17 = sub_25F821E7C();
    if (!__OFSUB__(v13, v17))
    {
      v7 = v13 - v17 + v16;
      result = sub_25F821E6C();
      if (v7)
      {
        if (result >= v14)
        {
          v18 = v14;
        }

        else
        {
          v18 = result;
        }

        if (v18 >= a1)
        {
          return *(v7 + a1);
        }

        goto LABEL_37;
      }

      goto LABEL_28;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  result = sub_25F821E6C();
LABEL_28:
  if (a1 <= 0)
  {
    return result;
  }

  __break(1u);
LABEL_30:
  if (a1 > 0)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_25F7FE4C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v4)
    {
      goto LABEL_16;
    }

    v19[0] = a2;
    LOWORD(v19[1]) = a3;
    BYTE2(v19[1]) = BYTE2(a3);
    v4 = a3 >> 40;
    BYTE3(v19[1]) = BYTE3(a3);
    BYTE4(v19[1]) = BYTE4(a3);
    BYTE5(v19[1]) = BYTE5(a3);
    if (a1 <= BYTE6(a3))
    {
      return *(v19 + a1);
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    memset(v19, 0, 14);
    if (a1 > 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    return *(v19 + a1);
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = sub_25F821E4C();
  if (v7)
  {
    v8 = sub_25F821E7C();
    if (__OFSUB__(v5, v8))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v7 += v5 - v8;
  }

  v9 = __OFSUB__(v6, v5);
  v10 = v6 - v5;
  if (v9)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_25F821E6C();
  if (!v7)
  {
    goto LABEL_30;
  }

  if (result >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = result;
  }

  if (v12 >= a1)
  {
    return *(v7 + a1);
  }

  __break(1u);
LABEL_16:
  v13 = a2;
  v14 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_33;
  }

  v15 = sub_25F821E4C();
  if (v15)
  {
    v16 = v15;
    v17 = sub_25F821E7C();
    if (!__OFSUB__(v13, v17))
    {
      v7 = v13 - v17 + v16;
      result = sub_25F821E6C();
      if (v7)
      {
        if (result >= v14)
        {
          v18 = v14;
        }

        else
        {
          v18 = result;
        }

        if (v18 >= a1)
        {
          return *(v7 + a1);
        }

        goto LABEL_37;
      }

      goto LABEL_28;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  result = sub_25F821E6C();
LABEL_28:
  if (a1 <= 0)
  {
    return result;
  }

  __break(1u);
LABEL_30:
  if (a1 > 0)
  {
    goto LABEL_38;
  }

  return result;
}

int64_t sub_25F7FE6D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v5)
    {
LABEL_16:
      v16 = a2;
      v17 = (a2 >> 32) - a2;
      if (a2 >> 32 >= a2)
      {
        v6 = v3;
        v18 = sub_25F821E4C();
        if (!v18)
        {
          result = sub_25F821E6C();
LABEL_31:
          if (a1 <= 0)
          {
            LODWORD(v22) = 0;
            if (!v3)
            {
              goto LABEL_26;
            }

            return result;
          }

          goto LABEL_43;
        }

        v19 = v18;
        v20 = sub_25F821E7C();
        if (!__OFSUB__(v16, v20))
        {
          v9 = v16 - v20 + v19;
          result = sub_25F821E6C();
          if (v9)
          {
            if (result >= v17)
            {
              v21 = v17;
            }

            else
            {
              v21 = result;
            }

            if (v21 >= a1)
            {
              goto LABEL_24;
            }

            goto LABEL_44;
          }

          goto LABEL_31;
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_39;
    }

    v24[0] = a2;
    LOWORD(v24[1]) = a3;
    BYTE2(v24[1]) = BYTE2(a3);
    v5 = a3 >> 40;
    BYTE3(v24[1]) = BYTE3(a3);
    BYTE4(v24[1]) = BYTE4(a3);
    BYTE5(v24[1]) = BYTE5(a3);
    if (a1 <= BYTE6(a3))
    {
LABEL_28:
      LODWORD(v22) = *(v24 + a1);
      v23 = v22 == 0;
      goto LABEL_29;
    }

    __break(1u);
  }

  if (v5 != 2)
  {
    memset(v24, 0, 14);
    if (a1 > 0)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    goto LABEL_28;
  }

  v6 = v3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = sub_25F821E4C();
  if (v9)
  {
    v10 = sub_25F821E7C();
    if (__OFSUB__(v7, v10))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v9 += v7 - v10;
  }

  v11 = __OFSUB__(v8, v7);
  v12 = v8 - v7;
  if (v11)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = sub_25F821E6C();
  if (!v9)
  {
    if (a1 <= 0)
    {
      LODWORD(v22) = 0;
LABEL_36:
      if (!v3)
      {
        goto LABEL_26;
      }

      return result;
    }

LABEL_45:
    __break(1u);
  }

  if (result >= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = result;
  }

  if (v15 < a1)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_24:
  v3 = v6;
  v22 = (v9 + a1);
  if (!(v9 + a1))
  {
    goto LABEL_36;
  }

  LODWORD(v22) = *v22;
  v14 = v22 == 0;
  if (!v6)
  {
LABEL_26:
    v23 = v14;
LABEL_29:
    LOBYTE(v24[0]) = v23;
    return v22 | (v23 << 32);
  }

  return result;
}

uint64_t Array.init<A>(tuple:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(*(a2 - 8) + 64);
  if (v4)
  {
    if (*(*(a3 - 8) + 64) != 0x8000000000000000 || v4 != -1)
    {
      v7 = result;
      MEMORY[0x28223BE20](result);
      v13[2] = v8;
      v13[3] = v9;
      v13[4] = v10;
      v11 = sub_25F82256C();
      sub_25F7FD310(v7, sub_25F7FF3A0, v13, a3, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v12);
      (*(v3 + 8))(v7, a3);
      return v13[7];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t withUnsafeBufferPointer<A, B, C>(to:type:capacity:offsetBy:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[2] = a7;
  v13[3] = a8;
  v13[4] = a9;
  v13[5] = a4;
  v13[6] = a3;
  v13[7] = a5;
  v13[8] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD70);
  return sub_25F7FD310(a1, sub_25F7FF3C4, v13, a7, v11, a9, MEMORY[0x277D84950], &v14);
}

uint64_t withUnsafeMutableBufferPointer<A, B, C>(to:type:capacity:offsetBy:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[2] = a7;
  v13[3] = a8;
  v13[4] = a9;
  v13[5] = a4;
  v13[6] = a3;
  v13[7] = a5;
  v13[8] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD70);
  return sub_25F7FEDBC(a1, sub_25F7FF3F4, v13, a7, v11, a9, MEMORY[0x277D84950], &v14);
}

uint64_t sub_25F7FEC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD70);
  result = sub_25F7FECEC(a7, a3, a10, v18, a1 + a2, a7, v16, a8, MEMORY[0x277D84950], &v25);
  if (v10)
  {
    *a9 = v25;
  }

  return result;
}

uint64_t sub_25F7FECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = MEMORY[0x28223BE20](a5);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v10)
  {
    return (*(v12 + 32))(a10, v15, a7);
  }

  return result;
}

uint64_t sub_25F7FEDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_25F7FEE98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _WORD *a4@<X8>)
{
  if (result)
  {
    if (a2 - result >= a3)
    {
      *a4 = *(result + a3);
      return result;
    }

    __break(1u);
  }

  else if (a3 <= 0)
  {
    *a4 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7FEEFC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  a3(v13);
  result = (*(v11 + 8))(v13, a5);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t sub_25F7FF060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a9 - 8);
  v14 = MEMORY[0x28223BE20](a8);
  v23 = v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19)
  {
    v24 = v19 + v18;
  }

  else
  {
    v24 = 0;
  }

  if (v19)
  {
    v25 = v19 + v17;
  }

  else
  {
    v25 = 0;
  }

  result = sub_25F7FF6F8(v14, v15, v16, v25, v24, v14, a9, v20, v22, v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v12)
  {
    return (*(v13 + 32))(a12, v23, a9);
  }

  return result;
}

uint64_t sub_25F7FF1CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  if (result)
  {
    v7 = a2 - result;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < a3)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v21[2] = a6;
    v21[3] = v21;
    v21[1] = a7;
    MEMORY[0x28223BE20](result);
    v20[2] = v13;
    v20[3] = v14;
    v20[4] = v15;
    v20[5] = v16;
    v18 = v17;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD70);
    return sub_25F7FF060(a4, v18, v20, a3, v7, v12, a2, a4, v19, a5, MEMORY[0x277D84950], &v22);
  }

  return result;
}

uint64_t sub_25F7FF2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v13 = a4;
  v14 = a2;
  v8 = sub_25F82256C();
  return sub_25F7FF588(a3, a2, sub_25F7FF920, v11, a1, a4, a3, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v10);
}

uint64_t sub_25F7FF500@<X0>(uint64_t *a1@<X8>)
{
  sub_25F82233C();
  sub_25F82234C();
  swift_getWitnessTable();
  result = sub_25F82257C();
  *a1 = result;
  return result;
}

uint64_t sub_25F7FF588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a8 - 8);
  v14 = MEMORY[0x28223BE20](a5);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v14, v16);
  if (v11)
  {
    return (*(v13 + 32))(a11, v16, a8);
  }

  return result;
}

uint64_t sub_25F7FF658(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 32);
  result = sub_25F82232C();
  if (result)
  {
    result = v6();
    if (v4)
    {
      *a3 = v4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F7FF6C0(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 32))();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_25F7FF6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v22 = v24 - v21;
  if (v17)
  {
    v23 = *(*(v19 - 8) + 72);
    if (v23)
    {
      if (v18 - v17 != 0x8000000000000000 || v23 != -1)
      {
        result = v20(v17, (v18 - v17) / v23, v15);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v15, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v20(0, 0, v24 - v21);
  v15 = v22;
  if (v10)
  {
    return (*(v12 + 32))(a10, v15, a7);
  }

  return result;
}

uint64_t sub_25F7FF8B4(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void, void))
{
  v6 = v3[6];
  v7 = a3(a1, v3[5], v3[3]);
  result = v6(v7);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_25F7FFAE8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0F80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F800344();
  sub_25F822E5C();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  sub_25F76100C(&qword_27FDAFE38, &qword_27FDAFBB0);
  sub_25F822C4C();
  if (!v2)
  {
    v9 = type metadata accessor for ProDataOnDiskV1();
    v12 = *(v3 + v9[5]);
    HIBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0F60);
    sub_25F800700();
    sub_25F822C4C();
    v12 = *(v3 + v9[6]);
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0F70);
    sub_25F8007E8();
    sub_25F822C4C();
    v12 = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFE18);
    sub_25F763F7C();
    sub_25F822C4C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25F7FFD88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0F50);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ProDataOnDiskV1();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F800344();
  v20 = v7;
  sub_25F822E3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11 = v17;
  v12 = v10;
  LOBYTE(v22) = 0;
  sub_25F76100C(&qword_27FDAFDD8, &qword_27FDAFBB0);
  v14 = v18;
  v13 = v19;
  sub_25F822B6C();
  sub_25F800398(v14, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0F60);
  v21 = 1;
  sub_25F800408();
  sub_25F822B6C();
  *(v12 + v8[5]) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0F70);
  v21 = 2;
  sub_25F800558();
  sub_25F822B6C();
  *(v12 + v8[6]) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFE18);
  v21 = 3;
  sub_25F763C78();
  sub_25F822B6C();
  (*(v11 + 8))(v20, v13);
  *(v12 + v8[7]) = v22;
  sub_25F800640(v12, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_25F8006A4(v12);
}

uint64_t sub_25F8001C0(uint64_t a1)
{
  v2 = sub_25F800344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F8001FC(uint64_t a1)
{
  v2 = sub_25F800344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F800274(uint64_t a1)
{
  *(a1 + 8) = sub_25F8008D0(&qword_27FDB04A8, type metadata accessor for ProDataOnDiskV1);
  result = sub_25F8008D0(&qword_27FDB0F48, type metadata accessor for ProDataOnDiskV1);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for ProDataOnDiskV1()
{
  result = qword_27FDB0FA8;
  if (!qword_27FDB0FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25F800344()
{
  result = qword_27FDB0F58;
  if (!qword_27FDB0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0F58);
  }

  return result;
}

uint64_t sub_25F800398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F800408()
{
  result = qword_27FDB0F68;
  if (!qword_27FDB0F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0F60);
    sub_25F76100C(&qword_27FDAFDD8, &qword_27FDAFBB0);
    sub_25F8008D0(&qword_27FDB0498, type metadata accessor for PresetV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0F68);
  }

  return result;
}

uint64_t sub_25F8004F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F800558()
{
  result = qword_27FDB0F78;
  if (!qword_27FDB0F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0F70);
    sub_25F76100C(&qword_27FDAFE08, &qword_27FDAFC18);
    sub_25F8008D0(&qword_27FDB04F8, type metadata accessor for UserAdjustmentV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0F78);
  }

  return result;
}

uint64_t sub_25F800640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProDataOnDiskV1();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F8006A4(uint64_t a1)
{
  v2 = type metadata accessor for ProDataOnDiskV1();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F800700()
{
  result = qword_27FDB0F88;
  if (!qword_27FDB0F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0F60);
    sub_25F76100C(&qword_27FDAFE38, &qword_27FDAFBB0);
    sub_25F8008D0(&qword_27FDB0F90, type metadata accessor for PresetV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0F88);
  }

  return result;
}

unint64_t sub_25F8007E8()
{
  result = qword_27FDB0F98;
  if (!qword_27FDB0F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB0F70);
    sub_25F76100C(&qword_27FDAFE58, &qword_27FDAFC18);
    sub_25F8008D0(&qword_27FDB0FA0, type metadata accessor for UserAdjustmentV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0F98);
  }

  return result;
}

uint64_t sub_25F8008D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F80093C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
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

uint64_t sub_25F800A18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
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

void sub_25F800ADC()
{
  sub_25F761BC0();
  if (v0 <= 0x3F)
  {
    sub_25F800B90();
    if (v1 <= 0x3F)
    {
      sub_25F800C4C();
      if (v2 <= 0x3F)
      {
        sub_25F761D90();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25F800B90()
{
  if (!qword_27FDB0FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFBB0);
    type metadata accessor for PresetV1(255);
    sub_25F76100C(&qword_27FDAFD90, &qword_27FDAFBB0);
    v0 = sub_25F8222AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDB0FB8);
    }
  }
}

void sub_25F800C4C()
{
  if (!qword_27FDB0FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFC18);
    type metadata accessor for UserAdjustmentV1();
    sub_25F76100C(&qword_27FDAFC48, &qword_27FDAFC18);
    v0 = sub_25F8222AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FDB0FC0);
    }
  }
}

unint64_t sub_25F800D0C()
{
  result = qword_27FDB0FC8;
  if (!qword_27FDB0FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0FC8);
  }

  return result;
}

unint64_t sub_25F800D64()
{
  result = qword_27FDB0FD0;
  if (!qword_27FDB0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0FD0);
  }

  return result;
}

unint64_t sub_25F800DBC()
{
  result = qword_27FDB0FD8;
  if (!qword_27FDB0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0FD8);
  }

  return result;
}

ProDisplayLibrary::Chromaticity __swiftcall Chromaticity.init(x:y:)(Swift::Double x, Swift::Double y)
{
  *v2 = x;
  v2[1] = y;
  result.y = y;
  result.x = x;
  return result;
}

uint64_t sub_25F800E54()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_25F800E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_25F822CBC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_25F800F34(uint64_t a1)
{
  v2 = sub_25F801134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F800F70(uint64_t a1)
{
  v2 = sub_25F801134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chromaticity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0FE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F801134();
  sub_25F822E5C();
  v8[15] = 0;
  sub_25F822C0C();
  if (!v1)
  {
    v8[14] = 1;
    sub_25F822C0C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_25F801134()
{
  result = qword_27FDB0FE8;
  if (!qword_27FDB0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0FE8);
  }

  return result;
}

uint64_t Chromaticity.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x25F8E7EA0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x25F8E7EA0](*&v3);
}

uint64_t Chromaticity.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F822DCC();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x25F8E7EA0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x25F8E7EA0](*&v4);
  return sub_25F822E0C();
}

uint64_t Chromaticity.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0FF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F801134();
  sub_25F822E3C();
  if (!v2)
  {
    v16 = 0;
    sub_25F822B2C();
    v10 = v9;
    v15 = 1;
    sub_25F822B2C();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25F801434()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F822DCC();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x25F8E7EA0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x25F8E7EA0](*&v4);
  return sub_25F822E0C();
}

uint64_t Chromaticity.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0058);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25F824480;
  v4 = MEMORY[0x277D839F8];
  v5 = MEMORY[0x277D83A80];
  *(v3 + 56) = MEMORY[0x277D839F8];
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = v2;
  return sub_25F8223AC();
}

uint64_t sub_25F80153C()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0058);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25F824480;
  v4 = MEMORY[0x277D839F8];
  v5 = MEMORY[0x277D83A80];
  *(v3 + 56) = MEMORY[0x277D839F8];
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = v2;
  return sub_25F8223AC();
}

unint64_t sub_25F8015DC()
{
  result = qword_27FDB0FF8;
  if (!qword_27FDB0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0FF8);
  }

  return result;
}

unint64_t sub_25F801654()
{
  result = qword_27FDB1000;
  if (!qword_27FDB1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1000);
  }

  return result;
}

unint64_t sub_25F8016AC()
{
  result = qword_27FDB1008;
  if (!qword_27FDB1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1008);
  }

  return result;
}

unint64_t sub_25F801704()
{
  result = qword_27FDB1010;
  if (!qword_27FDB1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1010);
  }

  return result;
}

uint64_t sub_25F801758()
{
  if (qword_27FDAFAA0 != -1)
  {
    swift_once();
  }

  qword_27FDC1360 = qword_27FDC1340;
}

uint64_t sub_25F8017CC()
{
  result = sub_25F792BB0(&unk_2871C3C40);
  qword_27FDC1368 = result;
  return result;
}

double sub_25F8017F4()
{
  v0 = sub_25F792BD8(&unk_2871C4890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0098);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F823D00;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 56) = xmmword_25F824920;
  *(inited + 72) = 1;
  *(inited + 80) = xmmword_25F824930;
  *(inited + 96) = 1;
  *(inited + 104) = 0;
  *(inited + 112) = 0;
  *(inited + 120) = 0;
  v2 = sub_25F792FCC(inited);
  swift_setDeallocating();
  v3 = sub_25F7932C0(&unk_2871C4990);
  xmmword_27FDC1370 = xmmword_25F824940;
  qword_27FDC1380 = v0;
  unk_27FDC1388 = v2;
  xmmword_27FDC1390 = xmmword_25F824950;
  xmmword_27FDC13A0 = xmmword_25F824960;
  *&xmmword_27FDC13B0 = v3;
  *(&xmmword_27FDC13B0 + 8) = xmmword_25F824970;
  *&qword_27FDC13C8 = xmmword_25F824980;
  qword_27FDC13D8 = 0;
  LOBYTE(xmmword_27FDC13E0) = 0;
  *(&xmmword_27FDC13E0 + 8) = xmmword_25F8279E0;
  *&result = 48;
  *(&xmmword_27FDC13F0 + 8) = xmmword_25F8249A0;
  byte_27FDC1408 = 0;
  *&xmmword_27FDC1410 = 1000;
  WORD4(xmmword_27FDC1410) = 0;
  qword_27FDC1420 = 0;
  return result;
}

int64x2_t sub_25F801928()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v38 - v1;
  v40 = &v38 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Preset(0);
  v42 = v7;
  __swift_allocate_value_buffer(v7, qword_27FDC1428);
  v41 = __swift_project_value_buffer(v7, qword_27FDC1428);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v39 = *(*(v8 - 8) + 56);
  v39(v2, 1, 1, v8);
  sub_25F82216C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  sub_25F8220FC();
  v12 = sub_25F82210C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v14 = v4[10];
  v13(&v6[v14], 1, 1, v12);
  v15 = v4[11];
  v39(&v6[v15], 1, 1, v8);
  v16 = &v6[v4[7]];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  v17 = &v6[v4[8]];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  v6[v4[9]] = 1;
  sub_25F760E58(v11, &v6[v14], &qword_27FDAFC20);
  sub_25F760E58(v40, &v6[v15], &qword_27FDAFC10);
  v46 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25F8249B0;
  LOBYTE(v59[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  LOBYTE(v56[0]) = 0;
  *(v18 + 32) = 0;
  *(v18 + 33) = *v51;
  *(v18 + 36) = *&v51[3];
  *(v18 + 40) = 0;
  *(v18 + 48) = 1;
  v19 = *v50;
  *(v18 + 52) = *&v50[3];
  *(v18 + 49) = v19;
  *(v18 + 56) = 0;
  *(v18 + 64) = 1;
  v20 = *v49;
  *(v18 + 68) = *&v49[3];
  *(v18 + 65) = v20;
  *(v18 + 72) = 0;
  *(v18 + 80) = 1;
  v21 = *v48;
  *(v18 + 84) = *&v48[3];
  *(v18 + 81) = v21;
  *(v18 + 88) = 0x400199999999999ALL;
  *(v18 + 96) = 0;
  v22 = *v47;
  *(v18 + 100) = *&v47[3];
  *(v18 + 97) = v22;
  *(v18 + 104) = 0;
  v23 = sub_25F792BC4(&unk_2871C49B8);
  v45 = 1;
  LOBYTE(v15) = v46;
  v44 = 1;
  v43 = 1;
  LOBYTE(v59[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  LOBYTE(v56[0]) = 1;
  LOBYTE(v55[0]) = 1;
  v24 = v6;
  v25 = v41;
  sub_25F7750B8(v24, v41);
  v26 = v42;
  v27 = v25 + *(v42 + 20);
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *v27 = 0u;
  *(v27 + 48) = 1;
  *(v27 + 49) = v56[0];
  *(v27 + 52) = *(v56 + 3);
  *(v27 + 56) = 0u;
  *(v27 + 72) = 0u;
  *(v27 + 88) = 0u;
  *(v27 + 104) = 0;
  *(v27 + 105) = v15;
  *(v27 + 106) = *&v55[5];
  *(v27 + 110) = v55[7];
  *(v27 + 112) = xmmword_25F824920;
  *(v27 + 128) = 1;
  *(v27 + 132) = *(&v55[1] + 1);
  *(v27 + 129) = *v55;
  *(v27 + 136) = 0;
  *(v27 + 144) = 0;
  *(v27 + 152) = 256;
  *(v27 + 154) = *&v53[7];
  *(v27 + 158) = v54;
  result = vdupq_n_s64(0x4059000000000000uLL);
  *(v27 + 160) = result;
  *(v27 + 176) = 0x3F40624DD2F1A9FCLL;
  *(v27 + 184) = v18;
  *(v27 + 192) = 0;
  *(v27 + 193) = *v53;
  *(v27 + 196) = *&v53[3];
  *(v27 + 200) = 0x400199999999999ALL;
  *(v27 + 208) = 1;
  *(v27 + 210) = *&v51[7];
  *(v27 + 214) = v52;
  __asm { FMOV            V1.2D, #1.0 }

  *(v27 + 216) = _Q1;
  *(v27 + 232) = v23;
  *(v27 + 240) = 16843008;
  v34 = v25 + *(v26 + 24);
  *v34 = 16843009;
  *(v34 + 8) = 0;
  *(v34 + 16) = 257;
  *(v34 + 22) = v62;
  *(v34 + 18) = v61;
  *(v34 + 24) = 0;
  *(v34 + 32) = 1;
  *(v34 + 33) = 0;
  *(v34 + 38) = v60;
  *(v34 + 34) = v59[3];
  *(v34 + 40) = 0;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  v35 = v59[0];
  *(v34 + 60) = *(v59 + 3);
  *(v34 + 57) = v35;
  *(v34 + 64) = 0;
  *(v34 + 72) = 1;
  v36 = v58[0];
  *(v34 + 76) = *(v58 + 3);
  *(v34 + 73) = v36;
  *(v34 + 80) = 0;
  *(v34 + 88) = 1;
  v37 = v57[0];
  *(v34 + 92) = *(v57 + 3);
  *(v34 + 89) = v37;
  *(v34 + 96) = result;
  *(v34 + 112) = 0x4059000000000000;
  *(v34 + 120) = 16843008;
  return result;
}

uint64_t sub_25F801ED4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAFAC8 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = xmmword_27FDC13E0;
  v13[8] = xmmword_27FDC13F0;
  v13[9] = unk_27FDC1400;
  v2 = unk_27FDC1400;
  v13[10] = xmmword_27FDC1410;
  v3 = xmmword_27FDC13B0;
  v4 = xmmword_27FDC13A0;
  v13[4] = xmmword_27FDC13B0;
  v13[5] = *&dbl_27FDC13C0;
  v5 = *&dbl_27FDC13C0;
  v6 = *(&xmmword_27FDC13C8 + 8);
  v13[6] = *(&xmmword_27FDC13C8 + 8);
  v13[7] = xmmword_27FDC13E0;
  v13[0] = xmmword_27FDC1370;
  v13[1] = *&qword_27FDC1380;
  v8 = xmmword_27FDC1370;
  v7 = *&qword_27FDC1380;
  v9 = xmmword_27FDC1390;
  v13[2] = xmmword_27FDC1390;
  v13[3] = xmmword_27FDC13A0;
  *(a1 + 128) = xmmword_27FDC13F0;
  *(a1 + 144) = v2;
  *(a1 + 160) = xmmword_27FDC1410;
  *(a1 + 64) = v3;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  *(a1 + 112) = v1;
  *a1 = v8;
  *(a1 + 16) = v7;
  v14 = qword_27FDC1420;
  *(a1 + 176) = qword_27FDC1420;
  *(a1 + 32) = v9;
  *(a1 + 48) = v4;
  return sub_25F775180(v13, v12);
}

uint64_t sub_25F801FC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAFAD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Preset(0);
  v3 = __swift_project_value_buffer(v2, qword_27FDC1428);

  return sub_25F77511C(v3, a1);
}

void __swiftcall Primaries.init(red:green:blue:)(ProDisplayLibrary::Primaries *__return_ptr retstr, ProDisplayLibrary::Chromaticity red, ProDisplayLibrary::Chromaticity green, ProDisplayLibrary::Chromaticity blue)
{
  v7 = *v5;
  retstr->red = *v4;
  retstr->green = v7;
  retstr->blue = *v6;
}

__n128 Primaries.red.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 Primaries.green.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 Primaries.blue.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

Swift::Bool __swiftcall Primaries.contains(_:)(ProDisplayLibrary::Chromaticity a1)
{
  v3 = v1;
  result = 0;
  v5 = v2[1];
  v7 = v2[4];
  v6 = v2[5];
  v8 = v2[3] - v6;
  v9 = *v2 - v7;
  v10 = v7 - v2[2];
  v11 = v9 * v8 + v10 * (v5 - v6);
  v12 = *v3 - v7;
  v13 = v3[1] - v6;
  v14 = (v12 * v8 + v10 * v13) / v11;
  if (v14 >= 0.0 && v14 <= 1.0)
  {
    v16 = (v12 * (v6 - v5) + v9 * v13) / v11;
    if (v16 >= 0.0 && v16 <= 1.0)
    {
      v18 = 1.0 - v14 - v16;
      return v18 >= 0.0 && v18 <= 1.0;
    }
  }

  return result;
}

uint64_t sub_25F80211C()
{
  v1 = 0x6E65657267;
  if (*v0 != 1)
  {
    v1 = 1702194274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579570;
  }
}

uint64_t sub_25F802164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F802C64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F80218C(uint64_t a1)
{
  v2 = sub_25F802A38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F8021C8(uint64_t a1)
{
  v2 = sub_25F802A38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Primaries.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1018);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F802A38();
  sub_25F822E5C();
  v17 = v8;
  v18 = v9;
  v16 = 0;
  sub_25F7D79EC();
  sub_25F822C4C();
  if (!v2)
  {
    v17 = v10;
    v18 = v11;
    v16 = 1;
    sub_25F822C4C();
    v17 = v12;
    v18 = v13;
    v16 = 2;
    sub_25F822C4C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Primaries.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x25F8E7EA0](*&v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x25F8E7EA0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x25F8E7EA0](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x25F8E7EA0](*&v9);
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x25F8E7EA0](*&v10);
  if (v6 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v6;
  }

  return MEMORY[0x25F8E7EA0](*&v11);
}

uint64_t Primaries.hashValue.getter()
{
  sub_25F822DCC();
  Primaries.hash(into:)();
  return sub_25F822E0C();
}

uint64_t Primaries.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1028);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F802A38();
  sub_25F822E3C();
  if (!v2)
  {
    v14 = 0;
    sub_25F7D7B68();
    sub_25F822B6C();
    v9 = v13;
    v14 = 1;
    sub_25F822B6C();
    v11 = v13;
    v14 = 2;
    sub_25F822B6C();
    (*(v6 + 8))(v8, v5);
    v12 = v13;
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25F802758()
{
  sub_25F822DCC();
  Primaries.hash(into:)();
  return sub_25F822E0C();
}

uint64_t sub_25F8027B0()
{
  sub_25F822DCC();
  Primaries.hash(into:)();
  return sub_25F822E0C();
}

uint64_t Primaries.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_25F82292C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0058);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25F824480;
  v8 = MEMORY[0x277D839F8];
  v9 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v9;
  *(v7 + 32) = v1;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v2;
  v10 = sub_25F8223AC();
  MEMORY[0x25F8E7510](v10);

  MEMORY[0x25F8E7510](977739820, 0xE400000000000000);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25F824480;
  *(v11 + 56) = v8;
  *(v11 + 64) = v9;
  *(v11 + 32) = v4;
  *(v11 + 96) = v8;
  *(v11 + 104) = v9;
  *(v11 + 72) = v3;
  v12 = sub_25F8223AC();
  MEMORY[0x25F8E7510](v12);

  MEMORY[0x25F8E7510](977412140, 0xE400000000000000);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25F824480;
  *(v13 + 56) = v8;
  *(v13 + 64) = v9;
  *(v13 + 32) = v6;
  *(v13 + 96) = v8;
  *(v13 + 104) = v9;
  *(v13 + 72) = v5;
  v14 = sub_25F8223AC();
  MEMORY[0x25F8E7510](v14);

  return 14930;
}

BOOL _s17ProDisplayLibrary9PrimariesV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) == 0)
  {
    return 0;
  }

  if (a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[2].f64[0] == a2[2].f64[0];
  }

  return 0;
}

unint64_t sub_25F802A38()
{
  result = qword_27FDB1020;
  if (!qword_27FDB1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1020);
  }

  return result;
}

unint64_t sub_25F802A90()
{
  result = qword_27FDB1030;
  if (!qword_27FDB1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1030);
  }

  return result;
}

uint64_t sub_25F802AE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F802B04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

unint64_t sub_25F802B60()
{
  result = qword_27FDB1038;
  if (!qword_27FDB1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1038);
  }

  return result;
}

unint64_t sub_25F802BB8()
{
  result = qword_27FDB1040;
  if (!qword_27FDB1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1040);
  }

  return result;
}

unint64_t sub_25F802C10()
{
  result = qword_27FDB1048;
  if (!qword_27FDB1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1048);
  }

  return result;
}

uint64_t sub_25F802C64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_25F822CBC();

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

uint64_t sub_25F802D8C(uint64_t a1, int a2)
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

uint64_t sub_25F802DD4(uint64_t result, int a2, int a3)
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

uint64_t sub_25F802E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2;
  v6 = a1;
  v8 = *(a3 + 16);
  if (v8)
  {
    v27 = MEMORY[0x277D84F90];
    sub_25F817D68(0, v8, 0);
    v9 = v27;
    v10 = a3 + 32;
    do
    {
      sub_25F760954(v10, v22);
      v11 = v23;
      v12 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      (*(v12 + 8))(&v25, v11, v12);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      v13 = v25;
      v14 = v26;
      v27 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        v19 = v26;
        sub_25F817D68((v15 > 1), v16 + 1, 1);
        v14 = v19;
        v9 = v27;
      }

      *(v9 + 16) = v16 + 1;
      v17 = v9 + 24 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v10 += 40;
      --v8;
    }

    while (v8);

    v6 = a1;
    v5 = a2;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  *a4 = v6;
  a4[1] = v5;
  a4[2] = v9;
  return result;
}

double WhitePoint.chroma.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    if (v3 > 2)
    {
      if (v3 ^ 3 | v2)
      {
        if (v3 ^ 4 | v2)
        {
          result = 0.3115;
          *a1 = xmmword_25F829F80;
        }

        else
        {
          result = 0.3098;
          *a1 = xmmword_25F829F90;
        }
      }

      else
      {
        result = 0.314;
        *a1 = xmmword_25F829FA0;
      }
    }

    else if (v3 | v2)
    {
      if (v3 ^ 1 | v2)
      {
        result = 0.3127;
        *a1 = xmmword_25F823FE0;
      }

      else
      {
        result = 0.3324;
        *a1 = xmmword_25F829FB0;
      }
    }

    else
    {
      result = 0.34567;
      *a1 = xmmword_25F829FC0;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = v2;
  }

  return result;
}

uint64_t Set<>.containsCustom()(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  while (v4)
  {
    v5 = v1;
LABEL_10:
    v6 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if ((*(*(result + 48) + 24 * (v6 | (v5 << 6)) + 16) & 1) == 0)
    {
      return 1;
    }
  }

  while (1)
  {
    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v5 >= ((v2 + 63) >> 6))
    {
      return 0;
    }

    v4 = *(result + 56 + 8 * v5);
    ++v1;
    if (v4)
    {
      v1 = v5;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  if (v4)
  {
LABEL_8:
    while (*(*(result + 48) + 56 * (__clz(__rbit64(v4)) | (v1 << 6)) + 48) == 1)
    {
      v4 &= v4 - 1;
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    return 1;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v5 >= ((v2 + 63) >> 6))
      {
        return 0;
      }

      v4 = *(result + 56 + 8 * v5);
      ++v1;
      if (v4)
      {
        v1 = v5;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t WhitePoint.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    if (v2 > 2)
    {
      if (v2 ^ 3 | v1)
      {
        if (v2 ^ 4 | v1)
        {
          v3 = 5;
        }

        else
        {
          v3 = 4;
        }
      }

      else
      {
        v3 = 3;
      }
    }

    else if (v2 | v1)
    {
      if (v2 ^ 1 | v1)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x25F8E7E80](v3);
  }

  else
  {
    MEMORY[0x25F8E7E80](6);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x25F8E7EA0](v4);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x25F8E7EA0](v5);
  }
}

uint64_t WhitePoint.hashValue.getter()
{
  sub_25F822DCC();
  WhitePoint.hash(into:)();
  return sub_25F822E0C();
}

uint64_t sub_25F8031FC()
{
  sub_25F822DCC();
  WhitePoint.hash(into:)();
  return sub_25F822E0C();
}

uint64_t sub_25F803254()
{
  sub_25F822DCC();
  WhitePoint.hash(into:)();
  return sub_25F822E0C();
}

uint64_t WhitePoint.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) != 1)
  {
    v19 = 0x50576D6F74737543;
    v20 = 0xEA00000000002028;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0058);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_25F824480;
    v6 = MEMORY[0x277D839F8];
    v7 = MEMORY[0x277D83A80];
    *(v5 + 56) = MEMORY[0x277D839F8];
    *(v5 + 64) = v7;
    *(v5 + 32) = v2;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 72) = v1;
    v8 = sub_25F8223AC();
    MEMORY[0x25F8E7510](v8);

    MEMORY[0x25F8E7510](10528, 0xE200000000000000);
    return v19;
  }

  if (v2 > 2)
  {
    if (v2 ^ 3 | v1)
    {
      if (v2 ^ 4 | v1)
      {
        v10 = 1899312708;
      }

      else
      {
        v10 = 1630877252;
      }

      v3 = v10 & 0xFFFF0000FFFFFFFFLL | 0x202800000000;
      v4 = 0xE600000000000000;
      goto LABEL_16;
    }

    v11 = 675889988;
    goto LABEL_13;
  }

  if (!(v2 | v1))
  {
    v11 = 674248004;
LABEL_13:
    v3 = v11 & 0xFFFF0000FFFFFFFFLL | 0x2000000000;
    v4 = 0xE500000000000000;
    goto LABEL_16;
  }

  if (v2 ^ 1 | v1)
  {
    v11 = 674575940;
    goto LABEL_13;
  }

  v3 = 0x2028353544;
  v4 = 0xE500000000000000;
LABEL_16:
  v22 = v3;
  v23 = v4;
  v19 = v2;
  v20 = v1;
  v21 = 1;
  WhitePoint.chroma.getter(v18);
  v12 = v18[0];
  v13 = v18[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0058);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25F824480;
  v15 = MEMORY[0x277D839F8];
  v16 = MEMORY[0x277D83A80];
  *(v14 + 56) = MEMORY[0x277D839F8];
  *(v14 + 64) = v16;
  *(v14 + 32) = v12;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 72) = v13;
  v17 = sub_25F8223AC();
  MEMORY[0x25F8E7510](v17);

  MEMORY[0x25F8E7510](10528, 0xE200000000000000);
  return v22;
}

ProDisplayLibrary::WhitePoint::CodingKeys_optional __swiftcall WhitePoint.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F822A9C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ProDisplayLibrary::WhitePoint::CodingKeys_optional __swiftcall WhitePoint.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = WhitePoint.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t WhitePoint.CodingKeys.stringValue.getter()
{
  v1 = 3159364;
  v2 = *v0;
  v3 = 1899312708;
  if (v2 != 5)
  {
    v3 = 0x6D6F74737543;
  }

  v4 = 4801348;
  if (v2 != 3)
  {
    v4 = 1630877252;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 3487044;
  if (v2 != 1)
  {
    v5 = 3487300;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F803688()
{
  sub_25F8222DC();
}

void sub_25F803774(uint64_t *a1@<X8>)
{
  v2 = 3159364;
  v3 = *v1;
  v4 = 0xE400000000000000;
  v5 = 1899312708;
  if (v3 != 5)
  {
    v5 = 0x6D6F74737543;
    v4 = 0xE600000000000000;
  }

  v6 = 0xE300000000000000;
  v7 = 4801348;
  if (v3 != 3)
  {
    v7 = 1630877252;
    v6 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 3487044;
  if (v3 != 1)
  {
    v8 = 3487300;
  }

  if (*v1)
  {
    v2 = v8;
  }

  if (*v1 <= 2u)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v2 = v5;
    v9 = v4;
  }

  *a1 = v2;
  a1[1] = v9;
}

uint64_t sub_25F80381C()
{
  v1 = 3159364;
  v2 = *v0;
  v3 = 1899312708;
  if (v2 != 5)
  {
    v3 = 0x6D6F74737543;
  }

  v4 = 4801348;
  if (v2 != 3)
  {
    v4 = 1630877252;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 3487044;
  if (v2 != 1)
  {
    v5 = 3487300;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

ProDisplayLibrary::WhitePoint::CodingKeys_optional sub_25F8038C0@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = WhitePoint.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_25F8038F8(uint64_t a1)
{
  v2 = sub_25F804178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F803934(uint64_t a1)
{
  v2 = sub_25F804178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WhitePoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1050);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F804178();
  sub_25F822E3C();
  if (!v2)
  {
    v9 = sub_25F822B8C();
    v10 = (2 * *(v9 + 16)) | 1;
    v18 = v9;
    v19 = v9 + 32;
    v20 = 0;
    v21 = v10;
    sub_25F7DAE5C(&v17);
    if (v17 != 7 && v20 == v21 >> 1)
    {
      if (v17 <= 2u)
      {
        if (v17)
        {
          if (v17 == 1)
          {
            (*(v6 + 8))(v8, v5);
            swift_unknownObjectRelease();
            v11 = xmmword_25F829FE0;
          }

          else
          {
            (*(v6 + 8))(v8, v5);
            swift_unknownObjectRelease();
            v11 = xmmword_25F824920;
          }
        }

        else
        {
          (*(v6 + 8))(v8, v5);
          swift_unknownObjectRelease();
          v11 = 0uLL;
        }
      }

      else if (v17 > 4u)
      {
        if (v17 != 5)
        {
          v22 = 6;
          sub_25F7D7B68();
          sub_25F822B6C();
          (*(v6 + 8))(v8, v5);
          swift_unknownObjectRelease();
          v15 = 0;
          v11 = v17;
          goto LABEL_18;
        }

        (*(v6 + 8))(v8, v5);
        swift_unknownObjectRelease();
        v11 = xmmword_25F829FD0;
      }

      else if (v17 == 3)
      {
        (*(v6 + 8))(v8, v5);
        swift_unknownObjectRelease();
        v11 = xmmword_25F824930;
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        swift_unknownObjectRelease();
        v11 = xmmword_25F828500;
      }

      v15 = 1;
LABEL_18:
      *a2 = v11;
      *(a2 + 16) = v15;
      return __swift_destroy_boxed_opaque_existential_0Tm(a1);
    }

    v12 = sub_25F82298C();
    swift_allocError();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0A98);
    *v14 = &type metadata for WhitePoint;
    sub_25F822ABC();
    sub_25F82296C();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84160], v12);
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t WhitePoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1060);
  v12 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F804178();
  sub_25F822E5C();
  if (v8 == 1)
  {
    if (v6 > 2)
    {
      if (v6 ^ 3 | v7)
      {
        v15 = v6;
        v16 = v7;
        v17 = 1;
        WhitePoint.chroma.getter(&v14);
        v13 = v14;
        if (v6 ^ 4 | v7)
        {
          v9 = 5;
        }

        else
        {
          v9 = 4;
        }
      }

      else
      {
        v15 = v6;
        v16 = v7;
        v17 = 1;
        WhitePoint.chroma.getter(&v14);
        v13 = v14;
        v9 = 3;
      }
    }

    else
    {
      if (!(v6 | v7))
      {
        v15 = v6;
        v16 = v7;
        v17 = 1;
        WhitePoint.chroma.getter(&v14);
        v13 = v14;
        v18 = 0;
        goto LABEL_15;
      }

      if (!(v6 ^ 1 | v7))
      {
        v15 = v6;
        v16 = v7;
        v17 = 1;
        WhitePoint.chroma.getter(&v14);
        v13 = v14;
        v18 = 1;
LABEL_15:
        sub_25F7D79EC();
        goto LABEL_16;
      }

      v15 = v6;
      v16 = v7;
      v17 = 1;
      WhitePoint.chroma.getter(&v14);
      v13 = v14;
      v9 = 2;
    }

    v18 = v9;
    goto LABEL_15;
  }

  v15 = v6;
  v16 = v7;
  v17 = 0;
  WhitePoint.chroma.getter(&v14);
  v13 = v14;
  v18 = 6;
  sub_25F7D79EC();
LABEL_16:
  sub_25F822C4C();
  return (*(v12 + 8))(v5, v3);
}

BOOL _s17ProDisplayLibrary10WhitePointO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (*&v2 <= 2uLL)
    {
      if (*&v2 | *&v3)
      {
        if (!(*&v2 ^ 1 | *&v3))
        {
          return *(a2 + 16) && !(*&v5 ^ 1 | v4);
        }

        if (*(a2 + 16) && !(*&v5 ^ 2 | v4))
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(*&v5 | v4))
      {
        return 1;
      }

      return 0;
    }

    if (!(*&v2 ^ 3 | *&v3))
    {
      return *(a2 + 16) && !(*&v5 ^ 3 | v4);
    }

    if (!(*&v2 ^ 4 | *&v3))
    {
      return *(a2 + 16) && !(*&v5 ^ 4 | v4);
    }

    return *(a2 + 16) && __PAIR128__(v4, *&v5) >= 5;
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    return v3 == *(a2 + 8) && v2 == v5;
  }
}

unint64_t sub_25F804178()
{
  result = qword_27FDB1058;
  if (!qword_27FDB1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1058);
  }

  return result;
}

unint64_t sub_25F8041D0()
{
  result = qword_27FDB1068;
  if (!qword_27FDB1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1068);
  }

  return result;
}

unint64_t sub_25F804228()
{
  result = qword_27FDB1070;
  if (!qword_27FDB1070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDB1078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1070);
  }

  return result;
}

unint64_t sub_25F804290()
{
  result = qword_27FDB1080;
  if (!qword_27FDB1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1080);
  }

  return result;
}

unint64_t sub_25F8042E8()
{
  result = qword_27FDB1088;
  if (!qword_27FDB1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1088);
  }

  return result;
}

unint64_t sub_25F804340()
{
  result = qword_27FDB1090;
  if (!qword_27FDB1090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1090);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WhitePoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WhitePoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_25F8043E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F804400(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_25F804458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PresetV1.Info(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 88);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F80454C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PresetV1.Info(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 88) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25F804628()
{
  result = type metadata accessor for PresetV1.Info(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy52_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25F8046C8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[52])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25F80471C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy138_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_25F8047B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 138))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F8047FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 138) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 138) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F804884(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
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
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_25F82210C();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_25F804A28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
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
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_25F82210C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_25F804BB8()
{
  sub_25F761BC0();
  if (v0 <= 0x3F)
  {
    sub_25F82210C();
    if (v1 <= 0x3F)
    {
      sub_25F7D3CCC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25F804C7C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v55 = result;
LABEL_7:
  if (v6)
  {
    v9 = __clz(__rbit64(v6));
    v54 = (v6 - 1) & v6;
LABEL_14:
    v12 = *(result + 48) + 56 * (v9 | (v2 << 6));
    v57 = *v12;
    v58 = *(v12 + 16);
    v13 = *(v12 + 32);
    v14 = *(v12 + 40);
    v15 = *(v12 + 48);
    sub_25F822DCC();
    if (v15 == 1)
    {
      if (*&v58.f64[0] | *&v57.f64[1] | *&v57.f64[0] | *&v58.f64[1] | *&v13 | *&v14)
      {
        v16 = *&v58.f64[0] | *&v57.f64[1] | *&v58.f64[1] | *&v13 | *&v14;
        if (*&v57.f64[0] == 1 && v16 == 0)
        {
          v21 = 1;
        }

        else if (*&v57.f64[0] == 2 && v16 == 0)
        {
          v21 = 2;
        }

        else if (*&v57.f64[0] == 3 && v16 == 0)
        {
          v21 = 3;
        }

        else if (*&v57.f64[0] == 4 && v16 == 0)
        {
          v21 = 4;
        }

        else
        {
          v21 = 5;
        }
      }

      else
      {
        v21 = 0;
      }

      MEMORY[0x25F8E7E80](v21);
    }

    else
    {
      MEMORY[0x25F8E7E80](6);
      Primaries.hash(into:)();
    }

    v22 = sub_25F822E0C();
    v23 = -1 << *(a2 + 32);
    v24 = v22 & ~v23;
    if ((*(v8 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v25 = ~v23;
      v26 = *&v58.f64[0] | *&v57.f64[1] | *&v58.f64[1] | *&v13 | *&v14;
      v27 = v26 | *&v57.f64[0];
      v28 = (*&v57.f64[0] - 1) < 4;
      v29 = (*&v57.f64[0] - 1) < 3;
      v30 = v26 == 0;
      if (v26)
      {
        v28 = 0;
        v29 = 0;
        v31 = 0;
      }

      else
      {
        v31 = *&v57.f64[0] == 4;
      }

      if (v26)
      {
        v32 = 0;
      }

      else
      {
        v32 = (*&v57.f64[0] - 1) < 2;
      }

      if (v26)
      {
        v33 = 0;
      }

      else
      {
        v33 = *&v57.f64[0] == 3;
      }

      v34 = v30 && *&v57.f64[0] == 1;
      v35 = v30 && *&v57.f64[0] == 2;
      if (v27)
      {
        v36 = v15 ^ 1;
      }

      else
      {
        v36 = 1;
      }

      v37 = v36 | v28;
      v38 = v36 | v29;
      v39 = v36 | v32;
      v40 = v36 | v34;
      if (v27)
      {
        v41 = v15;
      }

      else
      {
        v41 = 0;
      }

      result = v55;
      while (1)
      {
        v42 = *(a2 + 48) + 56 * v24;
        v44 = *v42;
        v43 = *(v42 + 16);
        v46 = *(v42 + 32);
        v45 = *(v42 + 40);
        if (*(v42 + 48) == 1)
        {
          v47 = *&v46 | *&v45;
          if (*&v43.f64[0] | *&v44.f64[1] | *&v44.f64[0] | *&v43.f64[1] | v47)
          {
            v48 = *&v43.f64[0] | *&v44.f64[1] | *&v43.f64[1] | v47;
            if (*&v44.f64[0] == 1 && v48 == 0)
            {
              if (v41 && v34)
              {
                v6 = v54;
                goto LABEL_7;
              }
            }

            else if (*&v44.f64[0] == 2 && v48 == 0)
            {
              if ((v40 & 1) == 0 && v35)
              {
                v6 = v54;
                goto LABEL_7;
              }
            }

            else if (*&v44.f64[0] == 3 && v48 == 0)
            {
              if ((v39 & 1) == 0 && v33)
              {
                v6 = v54;
                goto LABEL_7;
              }
            }

            else if (*&v44.f64[0] == 4 && v48 == 0)
            {
              if ((v38 & 1) == 0 && v31)
              {
                v6 = v54;
                goto LABEL_7;
              }
            }

            else if ((v37 & 1) == 0)
            {
              v6 = v54;
              goto LABEL_7;
            }
          }

          else if (v15 && !v27)
          {
            v6 = v54;
            goto LABEL_7;
          }
        }

        else if ((v15 & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v44, v57), vceqq_f64(v43, v58)))) & 1) != 0 && v46 == v13 && v45 == v14)
        {
          v6 = v54;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v8 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v54 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F8050A8(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v34 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v35 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 24 * (v10 | (v3 << 6));
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    sub_25F822DCC();
    if (v16 == 1)
    {
      if (v15 > 2)
      {
        if (v15 ^ 3 | *&v14)
        {
          if (v15 ^ 4 | *&v14)
          {
            v17 = 5;
          }

          else
          {
            v17 = 4;
          }
        }

        else
        {
          v17 = 3;
        }
      }

      else if (v15 | *&v14)
      {
        if (v15 ^ 1 | *&v14)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }
      }

      else
      {
        v17 = 0;
      }

      MEMORY[0x25F8E7E80](v17);
    }

    else
    {
      MEMORY[0x25F8E7E80](6);
      if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v18 = v15;
      }

      else
      {
        v18 = 0;
      }

      MEMORY[0x25F8E7EA0](v18);
      if ((*&v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v19 = v14;
      }

      else
      {
        v19 = 0.0;
      }

      MEMORY[0x25F8E7EA0](*&v19);
    }

    v20 = sub_25F822E0C();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      return 0;
    }

    v23 = ~v21;
    if (v15 > 4)
    {
      v24 = v16;
    }

    else
    {
      v24 = 0;
    }

    if (v15 ^ 4 | *&v14)
    {
      v25 = 0;
    }

    else
    {
      v25 = v16;
    }

    if (v15 ^ 3 | *&v14)
    {
      v26 = 0;
    }

    else
    {
      v26 = v16;
    }

    if (v15 ^ 2 | *&v14)
    {
      v27 = 0;
    }

    else
    {
      v27 = v16;
    }

    if (v15 ^ 1 | *&v14)
    {
      v28 = 0;
    }

    else
    {
      v28 = v16;
    }

    if (v15 | *&v14)
    {
      v29 = 0;
    }

    else
    {
      v29 = v16;
    }

    while (1)
    {
      v30 = *(a2 + 48) + 24 * v22;
      v32 = *v30;
      v31 = *(v30 + 8);
      if (*(v30 + 16) != 1)
      {
        break;
      }

      if (*&v32 > 2uLL)
      {
        if (*&v32 ^ 3 | *&v31)
        {
          if (*&v32 ^ 4 | *&v31)
          {
            if (v24)
            {
              goto LABEL_76;
            }
          }

          else if (v25)
          {
            goto LABEL_76;
          }
        }

        else if (v26)
        {
          goto LABEL_76;
        }
      }

      else if (*&v32 | *&v31)
      {
        if (*&v32 ^ 1 | *&v31)
        {
          if (v27)
          {
            goto LABEL_76;
          }
        }

        else if (v28)
        {
          goto LABEL_76;
        }
      }

      else if (v29)
      {
        goto LABEL_76;
      }

LABEL_53:
      v22 = (v22 + 1) & v23;
      if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        return 0;
      }
    }

    if (v16)
    {
      goto LABEL_53;
    }

    if (v32 != *&v15 || v31 != v14)
    {
      goto LABEL_53;
    }

LABEL_76:
    result = v34;
    v7 = v35;
  }

  while (v35);
LABEL_8:
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
      v10 = __clz(__rbit64(v12));
      v35 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F8053D4(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_25F822DCC();
    MEMORY[0x25F8E7E80](v13);
    result = sub_25F822E0C();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F805544(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_25F822DCC();
    sub_25F822DEC();
    result = sub_25F822E0C();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (v13 != *(*(a2 + 48) + v15))
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F8056B4(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_25F822DCC();
    MEMORY[0x25F8E7E80](v13);
    result = sub_25F822E0C();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (v13 != *(*(a2 + 48) + v15))
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F805824(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v7 = (v4 + 32 * v3);
    v8 = (v5 + 32 * v3);
    if (*v7 != *v8)
    {
      return 0;
    }

    v9 = *(v7 + 1);
    v10 = *(v7 + 4);
    v11 = v7[20];
    v12 = *(v7 + 6);
    v13 = v7[28];
    result = *(v8 + 1);
    v14 = *(v8 + 4);
    v15 = v8[20];
    v16 = *(v8 + 6);
    v6 = v8[28];
    if (v9)
    {
      if (!result)
      {
        return result;
      }

      v17 = *(v9 + 16);
      if (v17 != *(result + 16))
      {
        return 0;
      }

      if (v17)
      {
        v18 = v9 == result;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v19 = (v9 + 72);
        v20 = (result + 72);
        while (v17)
        {
          result = 0;
          if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v19 - 5), *(v20 - 5)), vceqq_f64(*(v19 - 3), *(v20 - 3))))) & 1) == 0)
          {
            return result;
          }

          if (*(v19 - 1) != *(v20 - 1) || *v19 != *v20)
          {
            return result;
          }

          v19 += 6;
          v20 += 6;
          if (!--v17)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
        break;
      }
    }

    else if (result)
    {
      return 0;
    }

LABEL_29:
    if (v11)
    {
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      if (v10 != v14)
      {
        LOBYTE(v15) = 1;
      }

      if (v15)
      {
        return 0;
      }
    }

    if (v13)
    {
      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      if (v12 != v16)
      {
        LOBYTE(v6) = 1;
      }

      if (v6)
      {
        return 0;
      }
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F80598C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  v4 = a2 + 32;
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  v7 = *(a1 + 32);
  v33 = *(a1 + 48);
  v34 = v5;
  v8 = *(a1 + 96);
  v35 = v6;
  v36 = v8;
  v32 = v7;
  v9 = *(a2 + 80);
  v39 = *(a2 + 64);
  v40 = v9;
  v41 = *(a2 + 96);
  v10 = *(a2 + 48);
  v37 = *(a2 + 32);
  v38 = v10;
  if (v7 != v37)
  {
    return 0;
  }

  v11 = 1;
  while (1)
  {
    if (v33)
    {
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v38 & 1) != 0 || *(&v32 + 1) != *(&v37 + 1))
    {
      return 0;
    }

    if (v34)
    {
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v39 & 1) != 0 || *(&v33 + 1) != *(&v38 + 1))
    {
      return 0;
    }

    if (v35)
    {
      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v40 & 1) != 0 || *(&v34 + 1) != *(&v39 + 1))
    {
      return 0;
    }

    if (v36)
    {
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v41 & 1) != 0 || *(&v35 + 1) != *(&v40 + 1))
    {
      return 0;
    }

    if (*(&v36 + 1))
    {
      break;
    }

    if (*(&v41 + 1))
    {
      return 0;
    }

LABEL_36:
    if (v11 == v2)
    {
      return 1;
    }

    v18 = 5 * v11++;
    v18 *= 16;
    v19 = *(v3 + v18 + 32);
    v20 = *(v3 + v18 + 48);
    v21 = *(v3 + v18);
    v33 = *(v3 + v18 + 16);
    v34 = v19;
    v22 = *(v3 + v18 + 64);
    v35 = v20;
    v36 = v22;
    v32 = v21;
    v23 = (v4 + v18);
    v24 = v23[3];
    v39 = v23[2];
    v40 = v24;
    v41 = v23[4];
    v25 = v23[1];
    v37 = *v23;
    v38 = v25;
    if (v21 != v37)
    {
      return 0;
    }
  }

  if (!*(&v41 + 1))
  {
    return 0;
  }

  v12 = *(*(&v36 + 1) + 16);
  if (v12 != *(*(&v41 + 1) + 16))
  {
    return 0;
  }

  if (!v12 || *(&v36 + 1) == *(&v41 + 1))
  {
    goto LABEL_36;
  }

  v27 = v3;
  v13 = *(&v36 + 1) + 32;
  v14 = *(&v41 + 1) + 32;
  sub_25F777DAC(&v32, v29);
  sub_25F777DAC(&v37, v29);
  while (1)
  {
    sub_25F80ADCC(v13, v29);
    sub_25F80ADCC(v14, v28);
    v15 = v30;
    v16 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v17 = (*(v16 + 32))(v28, v15, v16);
    sub_25F80AE28(v28);
    sub_25F80AE28(v29);
    if ((v17 & 1) == 0)
    {
      break;
    }

    v13 += 40;
    v14 += 40;
    if (!--v12)
    {
      sub_25F777E08(&v37);
      sub_25F777E08(&v32);
      v3 = v27;
      goto LABEL_36;
    }
  }

  sub_25F777E08(&v37);
  sub_25F777E08(&v32);
  return 0;
}

uint64_t sub_25F805C40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_25F805CB4(uint64_t result, uint64_t a2)
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

  v3 = 0;
  while (v2)
  {
    LODWORD(v4) = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(result + v3 + 32), *(a2 + v3 + 32)), vceqq_f64(*(result + v3 + 48), *(a2 + v3 + 48))))) & (*(result + v3 + 64) == *(a2 + v3 + 64));
    if (*(result + v3 + 72) == *(a2 + v3 + 72))
    {
      v4 = v4;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4 != 1 || v2-- == 1;
    v3 += 48;
    if (v5)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F805D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_25F80ADCC(v3, v10);
        sub_25F80ADCC(v4, v9);
        v5 = v11;
        v6 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        v7 = (*(v6 + 32))(v9, v5, v6);
        sub_25F80AE28(v9);
        sub_25F80AE28(v10);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_25F805E40(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1180);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F80AD10();
  sub_25F822E5C();
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  sub_25F76100C(&qword_27FDAFE38, &qword_27FDAFBB0);
  sub_25F822C4C();
  if (!v2)
  {
    v9 = type metadata accessor for PresetV1.Info(0);
    v18 = 1;
    sub_25F822C3C();
    v17 = 2;
    sub_25F822BEC();
    v16 = 3;
    sub_25F822BEC();
    v15 = *(v3 + *(v9 + 32));
    v14 = 4;
    sub_25F7D2054();
    sub_25F822C4C();
    v13 = 5;
    sub_25F82210C();
    sub_25F7D5554(&qword_27FDB0720);
    sub_25F822C4C();
    v12 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
    sub_25F76100C(&qword_27FDAFE58, &qword_27FDAFC18);
    sub_25F822BDC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25F80617C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  MEMORY[0x28223BE20](v5);
  v40 = &v36 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1170);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v36 - v7;
  v9 = type metadata accessor for PresetV1.Info(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 40);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v15 = *(*(v14 - 8) + 56);
  v44 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_25F80AD10();
  v41 = v8;
  v17 = v43;
  sub_25F822E3C();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    return sub_25F760F44(&v12[v44], &qword_27FDAFC10);
  }

  else
  {
    v18 = v38;
    v19 = v39;
    v53 = 0;
    sub_25F76100C(&qword_27FDAFDD8, &qword_27FDAFBB0);
    v20 = v40;
    sub_25F822B6C();
    sub_25F760FA4(v20, v12, &qword_27FDAFBB0);
    v52 = 1;
    v21 = v9;
    *&v12[*(v9 + 20)] = sub_25F822B5C();
    v51 = 2;
    v22 = sub_25F822B0C();
    v23 = &v12[*(v9 + 24)];
    *v23 = v22;
    v23[1] = v24;
    v50 = 3;
    v25 = sub_25F822B0C();
    v26 = v18;
    v27 = &v12[v21[7]];
    *v27 = v25;
    v27[1] = v28;
    v48 = 4;
    sub_25F7D20A8();
    sub_25F822B6C();
    v36 = 0;
    v12[v21[8]] = v49;
    v29 = sub_25F82210C();
    v43 = v12;
    v40 = &v36;
    v30 = *(v29 - 8);
    MEMORY[0x28223BE20](v29);
    v32 = &v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = 5;
    sub_25F7D5554(&qword_27FDB0738);
    sub_25F822B6C();
    (*(v30 + 32))(&v43[v21[9]], v32, v29);
    v46 = 6;
    sub_25F76100C(&qword_27FDAFE08, &qword_27FDAFC18);
    v33 = v41;
    sub_25F822AFC();
    (*(v26 + 8))(v33, v42);
    v34 = v43;
    sub_25F781EF4(v19, &v43[v44]);
    sub_25F80AD64(v34, v37, type metadata accessor for PresetV1.Info);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    return sub_25F808DCC(v34, type metadata accessor for PresetV1.Info);
  }
}

uint64_t sub_25F80689C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E6F697461657263;
  if (v1 != 5)
  {
    v3 = 0x756A644172657375;
  }

  v4 = 0x7470697263736564;
  if (v1 != 3)
  {
    v4 = 0x6E696769726FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F6973726576;
  if (v1 != 1)
  {
    v5 = 1701667182;
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

uint64_t sub_25F80697C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F809994(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F8069A4(uint64_t a1)
{
  v2 = sub_25F80AD10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F8069E0(uint64_t a1)
{
  v2 = sub_25F80AD10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F806A50(char a1)
{
  result = 0x656972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x696F706574696877;
      break;
    case 2:
      v3 = 1215848813;
      goto LABEL_11;
    case 3:
      v3 = 1400398189;
LABEL_11:
      result = v3 | 0x754C524400000000;
      break;
    case 4:
      result = 0x6E696D754C6E696DLL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x7369747265766461;
      break;
    case 8:
      result = 0x5442656C62616E65;
      break;
    case 9:
      result = 0x7041656C62616E65;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD00000000000001FLL;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0x62755354554C4354;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25F806C98(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1150);
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  v8 = *(v2 + 4);
  v7 = *(v2 + 5);
  v9 = *(v2 + 48);
  v10 = *(v2 + 7);
  v30 = *(v2 + 8);
  v31 = v10;
  v29 = *(v2 + 72);
  v28 = *(v2 + 11);
  LODWORD(v10) = *(v2 + 96);
  v26 = *(v2 + 104);
  v27 = v10;
  LODWORD(v10) = *(v2 + 105);
  v24 = *(v2 + 106);
  v25 = v10;
  v22 = *(v2 + 108);
  v23 = *(v2 + 116);
  v11 = *(v2 + 15);
  v21 = *(v2 + 16);
  v20 = *(v2 + 136);
  v19[2] = *(v2 + 137);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F80AAB8();
  sub_25F822E5C();
  v12 = v2[1];
  v35 = *v2;
  v36 = v12;
  v37 = v8;
  v38 = v7;
  v39 = v9;
  v34 = 0;
  sub_25F7D21B0();
  v13 = v33;
  sub_25F822C4C();
  if (v13)
  {
    return (*(v32 + 8))(v6, v4);
  }

  v15 = v28;
  v16 = v27;
  v17 = v32;
  *&v35 = v31;
  *(&v35 + 1) = v30;
  LOBYTE(v36) = v29;
  v34 = 1;
  sub_25F7D2204();
  sub_25F822C4C();
  LOBYTE(v35) = 2;
  sub_25F822C1C();
  LOBYTE(v35) = 3;
  sub_25F822C1C();
  LOBYTE(v35) = 4;
  sub_25F822C1C();
  *&v35 = v15;
  v34 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1128);
  sub_25F80ABD8(&qword_27FDB1158, sub_25F80AC50);
  sub_25F822C4C();
  LOBYTE(v35) = v16;
  v34 = 6;
  sub_25F7D2330();
  sub_25F822C4C();
  LOBYTE(v35) = 7;
  sub_25F822C1C();
  LOBYTE(v35) = 8;
  sub_25F822BFC();
  LOBYTE(v35) = 9;
  sub_25F822BFC();
  LOBYTE(v35) = 10;
  v33 = 0;
  sub_25F822BFC();
  *&v35 = v22;
  BYTE8(v35) = v23;
  v34 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1140);
  sub_25F80ACA4(&qword_27FDB1168);
  sub_25F822BDC();
  *&v35 = v11;
  v34 = 12;
  sub_25F822C4C();
  *&v35 = v21;
  v34 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0790);
  sub_25F80AB60(&qword_27FDB0798, sub_25F7D2408);
  sub_25F822C4C();
  LOBYTE(v35) = v20;
  v34 = 14;
  sub_25F7D2408();
  sub_25F822C4C();
  LOBYTE(v35) = 15;
  v18 = v33;
  sub_25F822C5C();
  return (*(v17 + 8))(v6, v18);
}

uint64_t sub_25F8072DC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1118);
  v5 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v7 = &v33 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F80AAB8();
  sub_25F822E3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v51 = a2;
  v52 = v5;
  LOBYTE(v53) = 0;
  sub_25F7D2504();
  sub_25F822B6C();
  v50 = v59;
  v8 = v61;
  v49 = v60;
  v10 = v62;
  v9 = v63;
  v100 = v64;
  LOBYTE(v53) = 1;
  sub_25F7D2558();
  sub_25F822B6C();
  v47 = v9;
  v48 = v10;
  v46 = v8;
  v11 = v59;
  v98 = v60;
  LOBYTE(v59) = 2;
  sub_25F822B3C();
  v13 = v12;
  LOBYTE(v59) = 3;
  sub_25F822B3C();
  v15 = v14;
  LOBYTE(v59) = 4;
  sub_25F822B3C();
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1128);
  LOBYTE(v53) = 5;
  sub_25F80ABD8(&qword_27FDB1130, sub_25F80AB0C);
  sub_25F822B6C();
  v45 = v59;
  LOBYTE(v53) = 6;
  sub_25F7D2684();
  sub_25F822B6C();
  LOBYTE(v9) = v59;
  LOBYTE(v59) = 7;
  sub_25F822B3C();
  v44 = v18;
  LOBYTE(v59) = 8;
  v43 = sub_25F822B1C();
  LOBYTE(v59) = 9;
  v42 = sub_25F822B1C();
  LOBYTE(v59) = 10;
  v41 = sub_25F822B1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1140);
  LOBYTE(v53) = 11;
  v40 = sub_25F80ACA4(&qword_27FDB1148);
  sub_25F822AFC();
  v39 = v59;
  v93 = BYTE8(v59);
  LOBYTE(v53) = 12;
  sub_25F822B6C();
  v19 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0790);
  LOBYTE(v53) = 13;
  sub_25F80AB60(&qword_27FDB07F0, sub_25F7D27C8);
  sub_25F822B6C();
  v40 = v59;
  LOBYTE(v53) = 14;
  sub_25F7D27C8();
  sub_25F822B6C();
  v38 = v59;
  v90 = 15;
  v37 = sub_25F822B7C();
  v20 = v42;
  v21 = v43 & 1;
  v34 = v43 & 1;
  v42 = v41 & 1;
  v43 = v20 & 1;
  (*(v52 + 8))(v7, v101);
  v53 = v50;
  v22 = v46;
  *&v54 = v49;
  *(&v54 + 1) = v46;
  *&v55 = v48;
  *(&v55 + 1) = v47;
  v41 = v100;
  v56[0] = v100;
  v35 = *(&v11 + 1);
  v36 = v11;
  *&v56[8] = v11;
  LODWORD(v101) = v98;
  v56[24] = v98;
  *&v56[25] = v96;
  v56[27] = v97;
  *&v56[28] = v13;
  *&v57 = __PAIR64__(v17, v15);
  *(&v57 + 1) = v45;
  LOBYTE(v58[0]) = v9;
  *(v58 + 1) = v94;
  BYTE3(v58[0]) = v95;
  v23 = v44;
  DWORD1(v58[0]) = v44;
  BYTE8(v58[0]) = v21;
  BYTE9(v58[0]) = v43;
  BYTE10(v58[0]) = v42;
  v24 = v40;
  *(v58 + 12) = v39;
  LODWORD(v52) = v93;
  BYTE4(v58[1]) = v93;
  *(&v58[1] + 5) = v91;
  BYTE7(v58[1]) = v92;
  *(&v58[1] + 1) = v19;
  *&v58[2] = v40;
  v25 = v37;
  LOBYTE(v10) = v38;
  BYTE8(v58[2]) = v38;
  BYTE9(v58[2]) = v37;
  v26 = *v56;
  v27 = v51;
  v51[2] = v55;
  v27[3] = v26;
  v28 = v54;
  *v27 = v53;
  v27[1] = v28;
  v29 = *&v56[16];
  v30 = v57;
  *(v27 + 122) = *(&v58[1] + 10);
  v31 = v58[1];
  v27[6] = v58[0];
  v27[7] = v31;
  v27[4] = v29;
  v27[5] = v30;
  sub_25F808E2C(&v53, &v59);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v59 = v50;
  v60 = v49;
  v61 = v22;
  v62 = v48;
  v63 = v47;
  v64 = v41;
  *v65 = *v99;
  *&v65[3] = *&v99[3];
  v66 = v36;
  v67 = v35;
  v68 = v101;
  v69 = v96;
  v70 = v97;
  v71 = v13;
  v72 = v15;
  v73 = v17;
  v74 = v45;
  v75 = v9;
  v76 = v94;
  v77 = v95;
  v78 = v23;
  v79 = v34;
  v80 = v43;
  v81 = v42;
  v82 = v39;
  v83 = v52;
  v84 = v91;
  v85 = v92;
  v86 = v19;
  v87 = v24;
  v88 = v10;
  v89 = v25;
  return sub_25F808D48(&v59);
}

uint64_t sub_25F807B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F809BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F807B7C(uint64_t a1)
{
  v2 = sub_25F80AAB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F807BB8(uint64_t a1)
{
  v2 = sub_25F80AAB8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25F807C28(char a1)
{
  result = 0x48656C6261736964;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x45656C6261736964;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0x636E657265666572;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25F807E54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1110);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F80AA64();
  sub_25F822E5C();
  v14 = 0;
  sub_25F822BFC();
  if (!v2)
  {
    v14 = 1;
    sub_25F822BFC();
    v14 = 2;
    sub_25F822BFC();
    v14 = 3;
    sub_25F822BFC();
    v14 = 4;
    sub_25F822BFC();
    v14 = 5;
    sub_25F822BFC();
    v14 = 6;
    sub_25F822BFC();
    v14 = 7;
    sub_25F822C1C();
    v9 = *(v3 + 16);
    v14 = 8;
    v13 = v9;
    sub_25F822BBC();
    v10 = *(v3 + 24);
    v14 = 9;
    v13 = v10;
    sub_25F822BBC();
    v14 = 10;
    sub_25F822C1C();
    v14 = 11;
    sub_25F822C1C();
    v14 = 12;
    sub_25F822C1C();
    v14 = 13;
    sub_25F822BFC();
    v14 = 14;
    sub_25F822C1C();
    v14 = 15;
    sub_25F822C1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25F8081E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB10E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F808C3C();
  sub_25F822E5C();
  v43 = 0;
  type metadata accessor for PresetV1.Info(0);
  sub_25F808BF4(&qword_27FDB10E8, type metadata accessor for PresetV1.Info);
  sub_25F822C4C();
  if (!v2)
  {
    v44 = type metadata accessor for PresetV1(0);
    v9 = (v3 + *(v44 + 20));
    v10 = v9[6];
    v11 = v9[4];
    v40 = v9[5];
    v41 = v10;
    v12 = v9[6];
    *v42 = v9[7];
    *&v42[10] = *(v9 + 122);
    v13 = v9[1];
    v14 = v9[3];
    v37 = v9[2];
    v38 = v14;
    v15 = v9[3];
    v39 = v9[4];
    v16 = v9[1];
    v36[0] = *v9;
    v36[1] = v16;
    v33 = v40;
    v34 = v12;
    v35[0] = v9[7];
    *(v35 + 10) = *(v9 + 122);
    v30 = v37;
    v31 = v15;
    v32 = v11;
    v28 = v36[0];
    v29 = v13;
    v27 = 1;
    sub_25F808E2C(v36, v25);
    sub_25F808E64();
    sub_25F822C4C();
    v25[6] = v34;
    *v26 = v35[0];
    *&v26[10] = *(v35 + 10);
    v25[2] = v30;
    v25[3] = v31;
    v25[4] = v32;
    v25[5] = v33;
    v25[0] = v28;
    v25[1] = v29;
    sub_25F808D48(v25);
    v17 = (v3 + *(v44 + 24));
    v18 = v17[1];
    v21 = *v17;
    v22 = v18;
    v23 = v17[2];
    v24 = *(v17 + 12);
    v20[15] = 2;
    sub_25F808EB8();
    sub_25F822C4C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25F8084F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for PresetV1.Info(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB10B8);
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v24 - v7;
  v9 = type metadata accessor for PresetV1(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_25F808C3C();
  sub_25F822E3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  v13 = v26;
  v14 = v11;
  LOBYTE(v34) = 0;
  sub_25F808BF4(&qword_27FDB10C8, type metadata accessor for PresetV1.Info);
  v15 = v27;
  sub_25F822B6C();
  sub_25F808C90(v6, v14);
  v33 = 1;
  sub_25F808CF4();
  sub_25F822B6C();
  v16 = (v14 + *(v9 + 20));
  v17 = v39;
  v18 = v41[0];
  v16[6] = v40;
  v16[7] = v18;
  *(v16 + 122) = *(v41 + 10);
  v19 = v37;
  v16[2] = v36;
  v16[3] = v19;
  v16[4] = v38;
  v16[5] = v17;
  v20 = v35;
  *v16 = v34;
  v16[1] = v20;
  v28 = 2;
  sub_25F808D78();
  sub_25F822B6C();
  (*(v13 + 8))(v8, v15);
  v21 = v14 + *(v9 + 24);
  v22 = v30;
  *v21 = v29;
  *(v21 + 16) = v22;
  *(v21 + 32) = v31;
  *(v21 + 48) = v32;
  sub_25F80AD64(v14, v25, type metadata accessor for PresetV1);
  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  return sub_25F808DCC(v14, type metadata accessor for PresetV1);
}

uint64_t sub_25F808954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F80A104(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F808988(uint64_t a1)
{
  v2 = sub_25F80AA64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F8089C4(uint64_t a1)
{
  v2 = sub_25F80AA64();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25F808A00@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25F80A608(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

BOOL sub_25F808A68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_25F808F0C(v5, v7);
}

uint64_t sub_25F808AC4(uint64_t a1)
{
  v2 = sub_25F808C3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F808B00(uint64_t a1)
{
  v2 = sub_25F808C3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F808B70(uint64_t a1)
{
  *(a1 + 8) = sub_25F808BF4(&qword_27FDB0498, type metadata accessor for PresetV1);
  result = sub_25F808BF4(&qword_27FDB0F90, type metadata accessor for PresetV1);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F808BF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F808C3C()
{
  result = qword_27FDB10C0;
  if (!qword_27FDB10C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB10C0);
  }

  return result;
}

uint64_t sub_25F808C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresetV1.Info(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F808CF4()
{
  result = qword_27FDB10D0;
  if (!qword_27FDB10D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB10D0);
  }

  return result;
}

unint64_t sub_25F808D78()
{
  result = qword_27FDB10D8;
  if (!qword_27FDB10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB10D8);
  }

  return result;
}

uint64_t sub_25F808DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25F808E64()
{
  result = qword_27FDB10F0;
  if (!qword_27FDB10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB10F0);
  }

  return result;
}

unint64_t sub_25F808EB8()
{
  result = qword_27FDB10F8;
  if (!qword_27FDB10F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB10F8);
  }

  return result;
}

BOOL sub_25F808F0C(float *a1, float *a2)
{
  if (((*a1 ^ *a2) & 1) != 0 || ((*(a1 + 1) ^ *(a2 + 1)) & 1) != 0 || ((*(a1 + 2) ^ *(a2 + 2)) & 1) != 0 || ((*(a1 + 3) ^ *(a2 + 3)) & 1) != 0 || ((*(a1 + 4) ^ *(a2 + 4)) & 1) != 0 || ((*(a1 + 5) ^ *(a2 + 5)) & 1) != 0 || ((*(a1 + 6) ^ *(a2 + 6)) & 1) != 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (a1[4])
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (a1[3] != a2[3])
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (a1[6])
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (a1[5] != a2[5])
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (a1[7] == a2[7] && a1[8] == a2[8] && a1[9] == a2[9] && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0 && a1[11] == a2[11])
  {
    return a1[12] == a2[12];
  }

  return 0;
}

uint64_t sub_25F809048(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(a1 + 76);
  v6 = *(a1 + 80);
  v8 = *(a1 + 84);
  v47 = *(a1 + 88);
  v9 = *(a1 + 100);
  v45 = *(a1 + 104);
  v46 = *(a1 + 96);
  v43 = *(a1 + 106);
  v44 = *(a1 + 105);
  v31 = *(a1 + 108);
  v41 = *(a1 + 116);
  v39 = *(a1 + 120);
  v35 = *(a1 + 128);
  v36 = *(a1 + 137);
  v37 = *(a1 + 136);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v15 = *(a2 + 76);
  v14 = *(a2 + 80);
  v16 = *(a2 + 84);
  v17 = *(a2 + 88);
  v18 = *(a2 + 96);
  v19 = *(a2 + 100);
  v20 = *(a2 + 104);
  v21 = *(a2 + 105);
  v42 = *(a2 + 106);
  v30 = *(a2 + 108);
  v40 = *(a2 + 116);
  v38 = *(a2 + 120);
  v32 = *(a2 + 128);
  v33 = *(a2 + 136);
  v34 = *(a2 + 137);
  v22 = *(a1 + 16);
  v50[0] = *a1;
  v50[1] = v22;
  v50[2] = *(a1 + 32);
  v51 = v2;
  v23 = *(a2 + 16);
  v48[0] = *a2;
  v48[1] = v23;
  v48[2] = *(a2 + 32);
  v49 = v10;
  if (!_s17ProDisplayLibrary10ColorSpaceO2eeoiySbAC_ACtFZ_0(v50, v48))
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if ((v13 & 1) != 0 || v3 != v11 || v4 != v12 || v7 != v15)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (*&v3 > 2uLL)
  {
    if (*&v3 ^ 3 | *&v4)
    {
      if (*&v3 ^ 4 | *&v4)
      {
        if (!v13 || __PAIR128__(*&v12, *&v11) < 5)
        {
          return 0;
        }

        goto LABEL_25;
      }

      if (!v13)
      {
        return 0;
      }

      v24 = *&v11 ^ 4;
    }

    else
    {
      if (!v13)
      {
        return 0;
      }

      v24 = *&v11 ^ 3;
    }

LABEL_24:
    if (v24 | *&v12)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (*&v3 | *&v4)
  {
    if (*&v3 ^ 1 | *&v4)
    {
      if (!v13)
      {
        return 0;
      }

      v24 = *&v11 ^ 2;
    }

    else
    {
      if (!v13)
      {
        return 0;
      }

      v24 = *&v11 ^ 1;
    }

    goto LABEL_24;
  }

  if (!v13 || *&v11 | *&v12)
  {
    return 0;
  }

LABEL_25:
  result = 0;
  if (v7 != v15)
  {
    return result;
  }

LABEL_26:
  if (v6 == v14 && v8 == v16)
  {
    v26 = sub_25F805824(v47, v17);
    result = 0;
    if ((v26 & 1) != 0 && v46 == v18 && v9 == v19 && ((v45 ^ v20) & 1) == 0 && ((v44 ^ v21) & 1) == 0 && ((v43 ^ v42) & 1) == 0)
    {
      if (v41)
      {
        result = 0;
        v27 = vceq_f32(v39, v38);
        if ((v40 & v27.i32[0]) != 1 || (v27.i8[4] & 1) == 0)
        {
          return result;
        }

        return sub_25F8056B4(v35, v32) & ~(v37 ^ v33) & (v36 == v34);
      }

      if ((v40 & 1) == 0)
      {
        *&v28.u32[2] = v39;
        v28.i64[0] = v31;
        *&v29.u32[2] = v38;
        v29.i64[0] = v30;
        if (vminv_u16(vmovn_s32(vceqq_f32(v28, v29))))
        {
          return sub_25F8056B4(v35, v32) & ~(v37 ^ v33) & (v36 == v34);
        }
      }

      return 0;
    }
  }

  return result;
}

BOOL sub_25F8093A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB09E8);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  if ((sub_25F82213C() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for PresetV1.Info(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)))
  {
    return 0;
  }

  v15 = v14;
  v16 = *(v14 + 24);
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  if ((v17 != *v19 || v18 != v19[1]) && (sub_25F822CBC() & 1) == 0)
  {
    return 0;
  }

  v20 = v15[7];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_25F822CBC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v15[8]) != *(a2 + v15[8]) || (sub_25F8220EC() & 1) == 0)
  {
    return 0;
  }

  v24 = v15[10];
  v25 = *(v11 + 48);
  sub_25F809924(a1 + v24, v13);
  sub_25F809924(a2 + v24, &v13[v25]);
  v26 = *(v5 + 48);
  if (v26(v13, 1, v4) == 1)
  {
    if (v26(&v13[v25], 1, v4) == 1)
    {
      sub_25F760F44(v13, &qword_27FDAFC10);
      return 1;
    }

    goto LABEL_16;
  }

  sub_25F809924(v13, v10);
  if (v26(&v13[v25], 1, v4) == 1)
  {
    sub_25F760F44(v10, &qword_27FDAFC18);
LABEL_16:
    sub_25F760F44(v13, &qword_27FDB09E8);
    return 0;
  }

  sub_25F760FA4(&v13[v25], v7, &qword_27FDAFC18);
  v28 = sub_25F82213C();
  sub_25F760F44(v7, &qword_27FDAFC18);
  sub_25F760F44(v10, &qword_27FDAFC18);
  sub_25F760F44(v13, &qword_27FDAFC10);
  return (v28 & 1) != 0;
}

BOOL sub_25F80971C(uint64_t a1, uint64_t a2)
{
  if (sub_25F8093A4(a1, a2) && (v4 = type metadata accessor for PresetV1(0), v5 = (a1 + *(v4 + 20)), v6 = v5[7], v7 = v5[5], v52 = v5[6], v53[0] = v6, *(v53 + 10) = *(v5 + 122), v8 = v5[3], v9 = v5[1], v48 = v5[2], v49 = v8, v10 = v5[5], v11 = v5[3], v50 = v5[4], v51 = v10, v12 = v5[1], v47[0] = *v5, v47[1] = v12, v41 = v48, v42 = v11, *(v46 + 10) = *(v5 + 122), v13 = v5[7], v45 = v52, v46[0] = v13, v43 = v50, v44 = v7, v39 = v47[0], v40 = v9, v14 = (a2 + *(v4 + 20)), v15 = v14[5], v16 = v14[7], v59 = v14[6], v60[0] = v16, *(v60 + 10) = *(v14 + 122), v17 = v14[1], v18 = v14[3], v55 = v14[2], v56 = v18, v19 = v14[3], v20 = v14[5], v57 = v14[4], v58 = v20, v21 = v14[1], v54[0] = *v14, v54[1] = v21, v22 = v14[7], v37 = v59, v38[0] = v22, *(v38 + 10) = *(v14 + 122), v33 = v55, v34 = v19, v35 = v57, v36 = v15, v31 = v54[0], v32 = v17, v23 = sub_25F809048(&v39, &v31), v61[6] = v37, v62[0] = v38[0], *(v62 + 10) = *(v38 + 10), v61[2] = v33, v61[3] = v34, v61[4] = v35, v61[5] = v36, v61[0] = v31, v61[1] = v32, sub_25F808E2C(v47, v30), sub_25F808E2C(v54, v30), sub_25F808D48(v61), v63[6] = v45, v64[0] = v46[0], *(v64 + 10) = *(v46 + 10), v63[2] = v41, v63[3] = v42, v63[4] = v43, v63[5] = v44, v63[0] = v39, v63[1] = v40, sub_25F808D48(v63), (v23 & 1) != 0))
  {
    v24 = a1 + *(v4 + 24);
    v25 = *(v24 + 32);
    v32 = *(v24 + 16);
    v33 = v25;
    LODWORD(v34) = *(v24 + 48);
    v31 = *v24;
    v26 = a2 + *(v4 + 24);
    LODWORD(v42) = *(v26 + 48);
    v27 = *(v26 + 32);
    v40 = *(v26 + 16);
    v41 = v27;
    v39 = *v26;
    return sub_25F808F0C(&v31, &v39);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F809924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F809994(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_25F822CBC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_25F822CBC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x756A644172657375 && a2 == 0xEE00746E656D7473)
  {

    return 6;
  }

  else
  {
    v6 = sub_25F822CBC();

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

uint64_t sub_25F809BE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656972616D697270 && a2 == 0xE900000000000073;
  if (v4 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696F706574696877 && a2 == 0xEA0000000000746ELL || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754C52444878616DLL && a2 == 0xEF65636E616E696DLL || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x754C52445378616DLL && a2 == 0xEF65636E616E696DLL || (sub_25F822CBC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E696D754C6E696DLL && a2 == 0xEC00000065636E61 || (sub_25F822CBC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F82F730 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025F82F750 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7369747265766461 && a2 == 0xEF616D6D61476465 || (sub_25F822CBC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5442656C62616E65 && a2 == 0xEC00000030323032 || (sub_25F822CBC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7041656C62616E65 && a2 == 0xEF6B6F6F4C656C70 || (sub_25F822CBC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F82F770 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025F830C70 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000025F82F790 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F82F7B0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025F82F7D0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x62755354554C4354 && a2 == 0xEC00000065707974)
  {

    return 15;
  }

  else
  {
    v6 = sub_25F822CBC();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_25F80A104(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x48656C6261736964 && a2 == 0xEE00796E6F6D7261;
  if (v4 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025F82F850 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F82F870 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F82F890 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025F830C10 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x45656C6261736964 && a2 == 0xEA00000000005244 || (sub_25F822CBC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F82F910 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F82F950 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025F82F970 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025F82F990 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025F82F9C0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025F82F9E0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000025F82FA00 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xEE00726F6C6F4365 || (sub_25F822CBC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F830C30 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000019 && 0x800000025F830C50 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_25F822CBC();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_25F80A608@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB1100);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F80AA64();
  sub_25F822E3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v46 = 0;
  v9 = sub_25F822B1C();
  v46 = 1;
  v10 = sub_25F822B1C();
  v46 = 2;
  v43 = sub_25F822B1C();
  v46 = 3;
  v42 = sub_25F822B1C();
  v46 = 4;
  v41 = sub_25F822B1C();
  v46 = 5;
  v40 = sub_25F822B1C();
  v46 = 6;
  v39 = sub_25F822B1C();
  v46 = 7;
  sub_25F822B3C();
  v12 = v11;
  v46 = 8;
  v37 = sub_25F822ADC();
  v45 = BYTE4(v37) & 1;
  v46 = 9;
  v38 = sub_25F822ADC();
  v44 = BYTE4(v38) & 1;
  v46 = 10;
  sub_25F822B3C();
  v14 = v13;
  v46 = 11;
  sub_25F822B3C();
  v16 = v15;
  v46 = 12;
  sub_25F822B3C();
  v18 = v17;
  v46 = 13;
  v36 = sub_25F822B1C();
  v46 = 14;
  sub_25F822B3C();
  v20 = v19;
  v46 = 15;
  sub_25F822B3C();
  v22 = v21;
  (*(v6 + 8))(v8, v5);
  v34 = v10 & 1;
  v35 = v9 & 1;
  v42 &= 1u;
  v43 &= 1u;
  v23 = v41 & 1;
  v24 = v45;
  v25 = v40 & 1;
  v26 = v39 & 1;
  v27 = v44;
  v28 = v36 & 1;
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v30 = v34;
  *a2 = v35;
  *(a2 + 1) = v30;
  v31 = v42;
  *(a2 + 2) = v43;
  *(a2 + 3) = v31;
  *(a2 + 4) = v23;
  *(a2 + 5) = v25;
  *(a2 + 6) = v26;
  *(a2 + 8) = v12;
  v32 = v38;
  *(a2 + 12) = v37;
  *(a2 + 16) = v24;
  *(a2 + 20) = v32;
  *(a2 + 24) = v27;
  *(a2 + 28) = v14;
  *(a2 + 32) = v16;
  *(a2 + 36) = v18;
  *(a2 + 40) = v28;
  *(a2 + 44) = v20;
  *(a2 + 48) = v22;
  return result;
}

unint64_t sub_25F80AA64()
{
  result = qword_27FDB1108;
  if (!qword_27FDB1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1108);
  }

  return result;
}

unint64_t sub_25F80AAB8()
{
  result = qword_27FDB1120;
  if (!qword_27FDB1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1120);
  }

  return result;
}

unint64_t sub_25F80AB0C()
{
  result = qword_27FDB1138;
  if (!qword_27FDB1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB1138);
  }

  return result;
}