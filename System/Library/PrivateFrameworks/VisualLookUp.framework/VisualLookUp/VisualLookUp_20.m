uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9B183BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9B18404(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v4 = (*(v3 + 80) + 160) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B09F60(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 16), (v1 + 24), (v1 + 96), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v8 + 8), *(v1 + v9), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D9B1850C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double S2Cell.center.getter@<D0>(float64x2_t *a1@<X8>)
{
  S2CellId.rawPoint.getter(v4.f64);
  v2 = sqrt(vaddvq_f64(vmulq_f64(v4, v4)) + v5 * v5);
  if (v2 != 0.0)
  {
    v2 = 1.0 / v2;
  }

  result = v5 * v2;
  *a1 = vmulq_n_f64(v4, v2);
  a1[1].f64[0] = result;
  return result;
}

Swift::Bool __swiftcall S2Cell.contains(point:)(VisualLookUp::S2Point point)
{
  v3 = *(v1 + 2);
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v12 = *v1;
  v13 = v3;
  static S2Projections.faceXyzToUv(face:point:)(v4, &v12, &v14);
  if (v16)
  {
    return 0;
  }

  v7 = v5[2];
  if (!v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v5[4];
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(v8 + 32) > v14)
  {
    return 0;
  }

  if (v9 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v14 <= *(v8 + 40))
  {
    if (v7 != 1)
    {
      v10 = v5[5];
      v11 = *(v10 + 16);
      if (v11)
      {
        if (*(v10 + 32) > v15)
        {
          return 0;
        }

        if (v11 != 1)
        {
          return v15 <= *(v10 + 40);
        }

LABEL_19:
        __break(1u);
        return result;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return 0;
}

void S2Cell.rectBound.getter(uint64_t a1@<X8>)
{
  v5 = *(v1 + 8);
  v6 = *(v1 + 9);
  if (v6 >= 1)
  {
    v7 = *(v1 + 2);
    v8 = v7[2];
    if (v8)
    {
      v9 = v7[4];
      v10 = *(v9 + 16);
      if (v10)
      {
        if (v10 != 1)
        {
          if (v8 != 1)
          {
            v11 = v7[5];
            v12 = *(v11 + 16);
            if (v12)
            {
              if (v12 != 1)
              {
                v29 = a1;
                v13 = *v1;
                v14 = *(v1 + 10);
                v15 = *(v9 + 32) + *(v9 + 40);
                v16 = *(v11 + 32) + *(v11 + 40);
                static S2Projections.getUAxis(face:)(v5, &v30);
                if (v31 == 0.0)
                {
                  v17 = v15 < 0.0;
                }

                else
                {
                  v17 = v15 > 0.0;
                }

                static S2Projections.getVAxis(face:)(v5, &v30);
                v18 = v31;
                *&v30 = v13;
                BYTE8(v30) = v5;
                if (v31 == 0.0)
                {
                  v19 = v16 < 0.0;
                }

                else
                {
                  v19 = v16 > 0.0;
                }

                BYTE9(v30) = v6;
                BYTE10(v30) = v14;
                v31 = *&v7;
                v20 = sub_1D9B1A38C(v17, v19, v18);
                *&v30 = v13;
                BYTE8(v30) = v5;
                BYTE9(v30) = v6;
                BYTE10(v30) = v14;
                v31 = *&v7;
                v21 = sub_1D9B1A38C(v17 ^ 1, v19 ^ 1, v20);
                if (v20 <= v21)
                {
                  v22 = v20;
                }

                else
                {
                  v22 = v21;
                }

                if (v20 > v21)
                {
                  v21 = v20;
                }

                if (v21 < v22)
                {
                  v23 = v21;
                }

                else
                {
                  v22 = v22 + -4.4408921e-16;
                  v23 = v21 + 4.4408921e-16;
                }

                if (v22 > -1.57079633)
                {
                  v2 = v22;
                }

                else
                {
                  v2 = -1.57079633;
                }

                if (v23 <= 1.57079633)
                {
                  v3 = v23;
                }

                else
                {
                  v3 = 1.57079633;
                }

                if (v2 != -1.57079633 && v3 != 1.57079633)
                {
                  *&v30 = v13;
                  BYTE8(v30) = v5;
                  BYTE9(v30) = v6;
                  BYTE10(v30) = v14;
                  v31 = *&v7;
                  v24 = sub_1D9B1A480(v17, v19 ^ 1, 1.57079633);
                  *&v30 = v13;
                  BYTE8(v30) = v5;
                  BYTE9(v30) = v6;
                  BYTE10(v30) = v14;
                  v31 = *&v7;
                  sub_1D9B1A480(v17 ^ 1, v19, v24);
                  S1Interval.expanded(radius:)(4.4408921e-16);
                  *v29 = v2;
                  *(v29 + 8) = v3;
                  *(v29 + 16) = v30;
                  return;
                }

                if (qword_1ECB50AD0 == -1)
                {
                  goto LABEL_37;
                }

                goto LABEL_56;
              }

LABEL_55:
              __break(1u);
LABEL_56:
              swift_once();
LABEL_37:
              *v29 = v2;
              *(v29 + 8) = v3;
              *(v29 + 16) = xmmword_1ECB528E0;
              return;
            }

LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_52;
  }

  if (*(v1 + 8) <= 1u)
  {
    if (*(v1 + 8))
    {
      v25 = xmmword_1D9C95410;
      v26 = xmmword_1D9C95450;
      goto LABEL_44;
    }

    v27 = xmmword_1D9C95410;
    *a1 = xmmword_1D9C95410;
    goto LABEL_49;
  }

  if (v5 != 2)
  {
    if (v5 == 3)
    {
      v25 = xmmword_1D9C95410;
      v26 = xmmword_1D9C95430;
      goto LABEL_44;
    }

    if (v5 == 4)
    {
      v25 = xmmword_1D9C95410;
      v26 = xmmword_1D9C95420;
LABEL_44:
      *a1 = v25;
      *(a1 + 16) = v26;
      return;
    }

    if (qword_1ECB50C38 != -1)
    {
      swift_once();
    }

    v28 = -*&qword_1ECB53418;
    *a1 = 0xBFF921FB54442D18;
    *(a1 + 8) = v28;
    v27 = xmmword_1D9C90160;
LABEL_49:
    *(a1 + 16) = v27;
    return;
  }

  if (qword_1ECB50C38 != -1)
  {
    swift_once();
  }

  *a1 = qword_1ECB53418;
  *(a1 + 8) = xmmword_1D9C95440;
  *(a1 + 24) = 0x400921FB54442D18;
}

VisualLookUp::S2Point __swiftcall S2Cell.getVertex(_:)(Swift::Int a1)
{
  v2 = sub_1D9B19AB0(S2Cell.getRawVertex(_:), v1);
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

double static S2Cell.averageArea(level:)(uint64_t a1)
{
  if (qword_1ECB508F0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = *&qword_1ECB513E8;
  v3 = (1.0 - a1) * qword_1ECB513F0;

  return scalb(v2, v3);
}

double S2Cell.init(cellId:)@<D0>(unint64_t *a1@<X0>, int64_t a2@<X8>)
{
  v10 = *a1;
  v48 = 0;
  v49 = 0;
  v11 = sub_1D9B08A90(&v49, &v48, 7, (v10 >> 61) & 1);
  v12 = sub_1D9B08A90(&v49, &v48, 6, v11);
  v13 = sub_1D9B08A90(&v49, &v48, 5, v12);
  v14 = sub_1D9B08A90(&v49, &v48, 4, v13);
  v15 = sub_1D9B08A90(&v49, &v48, 3, v14);
  v16 = sub_1D9B08A90(&v49, &v48, 2, v15);
  v17 = sub_1D9B08A90(&v49, &v48, 1, v16);
  v47 = v10;
  v18 = &v47;
  v19 = sub_1D9B08A90(&v49, &v48, 0, v17);
  if (__OFSUB__(0, v10))
  {
    __break(1u);
    goto LABEL_37;
  }

  v20 = (v10 & -v10 & 0x1111111111111110) != 0;
  if (v19 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v7 = v19 ^ v20;
  if ((v19 ^ v20) > 255)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v47 = v10;
  v18 = &v47;
  v21 = S2CellId.level.getter();
  if (v21 < -128)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = v21;
  if (v21 > 127)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((v21 - 95) < 0xFFFFFFFFFFFFFF7FLL)
  {
    goto LABEL_7;
  }

  if (v21 >= 31)
  {
    goto LABEL_55;
  }

  if (v21 <= -34)
  {
    goto LABEL_7;
  }

  v22 = 1 << (30 - v21);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53350);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D9C85EA0;
    v3 = &unk_1F552A048;
    *(v23 + 40) = &unk_1F552A048;
    v5 = -v22;
    if (__OFSUB__(0, v22))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if ((v22 + 0x4000000000000000) < 0)
    {
      goto LABEL_42;
    }

    v24 = v49 & v5;
    if (((v49 & v5) + 0x4000000000000000) < 0)
    {
      goto LABEL_43;
    }

    v25 = 2 * v24 - 0x40000000;
    if (__OFADD__(-1073741824, 2 * v24))
    {
      goto LABEL_44;
    }

    v6 = 2 * v22;
    v4 = v25 + 2 * v22;
    if (__OFADD__(v25, 2 * v22))
    {
      goto LABEL_45;
    }

    v46 = a2;
    a2 = v7;
    v7 = v48;
    v26 = vcvtd_n_f64_s64(v25, 0x1EuLL);
    v27 = v26 < 0.0;
    v28 = 1.0 - (1.0 - v26) * (1.0 - v26);
    v29 = (v26 + 1.0) * (v26 + 1.0) + -1.0;
    if (v27)
    {
      v8 = v28;
    }

    else
    {
      v8 = v29;
    }

    v2 = v23;
    v30 = &unk_1F552A018;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 32) = &unk_1F552A018;
    if (isUniquelyReferenced_nonNull_native)
    {
      v32 = qword_1F552A028;
      if (!qword_1F552A028)
      {
        goto LABEL_47;
      }

      goto LABEL_21;
    }

LABEL_46:
    v30 = sub_1D9B1A738(&unk_1F552A018);
    v32 = *(v30 + 2);
    if (!v32)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_21:
    v33 = vcvtd_n_f64_s64(v4, 0x1EuLL);
    *(v30 + 4) = v8 * 0.333333333;
    v34 = (v33 + 1.0) * (v33 + 1.0) + -1.0;
    if (v33 < 0.0)
    {
      v34 = 1.0 - (1.0 - v33) * (1.0 - v33);
    }

    if (v32 == 1)
    {
      goto LABEL_48;
    }

    *(v30 + 5) = v34 * 0.333333333;
    *(v2 + 32) = v30;
    v35 = v7 & v5;
    if ((v7 & v5) + 0x4000000000000000 < 0)
    {
      goto LABEL_49;
    }

    v36 = __OFADD__(-1073741824, 2 * v35);
    v37 = 2 * v35 - 0x40000000;
    if (v36)
    {
      goto LABEL_50;
    }

    v30 = (v37 + v6);
    if (__OFADD__(v37, v6))
    {
      goto LABEL_51;
    }

    v38 = vcvtd_n_f64_s64(v37, 0x1EuLL);
    v27 = v38 < 0.0;
    v39 = 1.0 - (1.0 - v38) * (1.0 - v38);
    v40 = (v38 + 1.0) * (v38 + 1.0) + -1.0;
    if (v27)
    {
      v8 = v39;
    }

    else
    {
      v8 = v40;
    }

    v41 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 40) = v3;
    if (v41)
    {
      v42 = *(v3 + 2);
      if (!v42)
      {
        goto LABEL_53;
      }

      goto LABEL_32;
    }

LABEL_52:
    v3 = sub_1D9B1A738(&unk_1F552A048);
    *(v2 + 40) = v3;
    v42 = *(v3 + 2);
    if (!v42)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_32:
    v43 = vcvtd_n_f64_s64(v30, 0x1EuLL);
    *(v3 + 4) = v8 * 0.333333333;
    v44 = (v43 + 1.0) * (v43 + 1.0) + -1.0;
    if (v43 < 0.0)
    {
      v44 = 1.0 - (1.0 - v43) * (1.0 - v43);
    }

    if (v42 != 1)
    {
      break;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    if (v18 >= 0x5E)
    {
LABEL_7:
      v22 = 0;
    }

    else
    {
      v22 = 1uLL >> (v18 + 34);
    }
  }

  result = v44 * 0.333333333;
  *(v3 + 5) = result;
  *v46 = v10;
  *(v46 + 8) = v10 >> 61;
  *(v46 + 9) = v18;
  *(v46 + 10) = a2;
  *(v46 + 16) = v2;
  return result;
}

double S2Cell.approxArea.getter()
{
  v1 = *(v0 + 9);
  if (v1 > 1)
  {
    S2Cell.getRawVertex(_:)(2);
    v5 = sqrt(v23 * v23 + v24 * v24 + v25 * v25);
    if (v5 != 0.0)
    {
      v5 = 1.0 / v5;
    }

    v6 = v23 * v5;
    v7 = v24 * v5;
    v8 = v25 * v5;
    S2Cell.getRawVertex(_:)(0);
    v9 = sqrt(v23 * v23 + v24 * v24 + v25 * v25);
    if (v9 != 0.0)
    {
      v9 = 1.0 / v9;
    }

    v10 = v6 - v23 * v9;
    v11 = v7 - v24 * v9;
    v12 = v8 - v25 * v9;
    S2Cell.getRawVertex(_:)(3);
    v13 = sqrt(v23 * v23 + v24 * v24 + v25 * v25);
    if (v13 != 0.0)
    {
      v13 = 1.0 / v13;
    }

    v14 = v23 * v13;
    v15 = v24 * v13;
    v16 = v25 * v13;
    S2Cell.getRawVertex(_:)(1);
    v17 = sqrt(v23 * v23 + v24 * v24 + v25 * v25);
    if (v17 != 0.0)
    {
      v17 = 1.0 / v17;
    }

    v18 = v14 - v23 * v17;
    v19 = v15 - v24 * v17;
    v20 = v16 - v25 * v17;
    v21 = sqrt((v10 * v19 - v11 * v18) * (v10 * v19 - v11 * v18) + (v11 * v20 - v12 * v19) * (v11 * v20 - v12 * v19) + (v12 * v18 - v10 * v20) * (v12 * v18 - v10 * v20)) * 0.5;
    v22 = v21 * 0.318309886;
    if (v21 * 0.318309886 > 1.0)
    {
      v22 = 1.0;
    }

    return (v21 + v21) / (sqrt(1.0 - v22) + 1.0);
  }

  else
  {
    if (qword_1ECB508F0 != -1)
    {
      swift_once();
    }

    v2 = *&qword_1ECB513E8;
    v3 = (1.0 - v1) * qword_1ECB513F0;

    return scalb(v2, v3);
  }
}

double S2Cell.exactArea.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 16);
  v31 = *v0;
  LOBYTE(v32) = v2;
  BYTE1(v32) = v3;
  BYTE2(v32) = v4;
  v33 = v5;
  S2Cell.getRawVertex(_:)(0);
  v6 = sqrt(v34 * v34 + v35 * v35 + v36 * v36);
  if (v6 != 0.0)
  {
    v6 = 1.0 / v6;
  }

  v7 = v34 * v6;
  v8 = v35 * v6;
  v31 = *&v1;
  LOBYTE(v32) = v2;
  BYTE1(v32) = v3;
  v9 = v36 * v6;
  BYTE2(v32) = v4;
  v33 = v5;
  S2Cell.getRawVertex(_:)(1);
  v10 = sqrt(v34 * v34 + v35 * v35 + v36 * v36);
  if (v10 != 0.0)
  {
    v10 = 1.0 / v10;
  }

  v26 = v34 * v10;
  v27 = v35 * v10;
  v31 = *&v1;
  LOBYTE(v32) = v2;
  BYTE1(v32) = v3;
  v11 = v36 * v10;
  BYTE2(v32) = v4;
  v33 = v5;
  S2Cell.getRawVertex(_:)(2);
  v12 = sqrt(v34 * v34 + v35 * v35 + v36 * v36);
  if (v12 != 0.0)
  {
    v12 = 1.0 / v12;
  }

  v13 = v34 * v12;
  v14 = v35 * v12;
  v31 = *&v1;
  LOBYTE(v32) = v2;
  BYTE1(v32) = v3;
  v15 = v36 * v12;
  BYTE2(v32) = v4;
  v33 = v5;
  S2Cell.getRawVertex(_:)(3);
  v16 = v36;
  v17 = sqrt(v34 * v34 + v35 * v35 + v16 * v16);
  if (v17 != 0.0)
  {
    v17 = 1.0 / v17;
  }

  v24 = v35 * v17;
  v25 = v34 * v17;
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v31 = v26;
  v32 = v27;
  v33 = v11;
  v18 = v16 * v17;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  sub_1D9AEF860(&v34, &v31, &v28, v27, v26, v16);
  v20 = v19;
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v28 = v25;
  v29 = v24;
  v30 = v18;
  sub_1D9AEF860(&v34, &v31, &v28, v24, v25, v21);
  return v20 + v22;
}

void S2Cell.capBound.getter(double *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[2];
  if (!v3)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = v2[4];
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v6 == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v3 == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v7 = v2[5];
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v8 == 1)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v9 = *(v1 + 8);
  v10 = (*(v5 + 32) + *(v5 + 40)) * 0.5;
  v11 = (*(v7 + 32) + *(v7 + 40)) * 0.5;
  if (v9 <= 1)
  {
    v12 = 1.0;
    if (!*(v1 + 8))
    {
      goto LABEL_18;
    }

    if (v9 == 1)
    {
      v12 = -v10;
      v10 = 1.0;
      goto LABEL_18;
    }

LABEL_17:
    v12 = (*(v7 + 32) + *(v7 + 40)) * 0.5;
    v11 = -1.0;
    goto LABEL_18;
  }

  if (v9 == 2)
  {
    v12 = -v10;
    v10 = -v11;
    v11 = 1.0;
    goto LABEL_18;
  }

  if (v9 == 3)
  {
    v13 = -v11;
    v11 = -v10;
    v12 = -1.0;
    v10 = v13;
    goto LABEL_18;
  }

  if (v9 != 4)
  {
    goto LABEL_17;
  }

  v12 = (*(v7 + 32) + *(v7 + 40)) * 0.5;
  v11 = -v10;
  v10 = -1.0;
LABEL_18:
  v14 = 0;
  v15 = sqrt(v12 * v12 + v10 * v10 + v11 * v11);
  if (v15 != 0.0)
  {
    v15 = 1.0 / v15;
  }

  v16 = v12 * v15;
  v17 = v10 * v15;
  v18 = v11 * v15;
  v19 = 0.0;
  do
  {
    S2Cell.getRawVertex(_:)(v14);
    v20 = sqrt(v24 * v24 + v25 * v25 + v26 * v26);
    v21 = 1.0 / v20;
    if (v20 == 0.0)
    {
      v21 = v20;
    }

    v22 = v24 * v21;
    v23 = v25 * v21;
    if (v19 < 0.0)
    {
      v16 = v24 * v21;
      v17 = v25 * v21;
      v18 = v26 * v21;
      v19 = 0.0;
    }

    else if (v19 <= ((v18 - v26 * v21) * (v18 - v26 * v21) + (v16 - v22) * (v16 - v22) + (v17 - v23) * (v17 - v23)) * 2.22044605e-16)
    {
      v19 = ((v18 - v26 * v21) * (v18 - v26 * v21) + (v16 - v22) * (v16 - v22) + (v17 - v23) * (v17 - v23)) * 2.22044605e-16;
    }

    ++v14;
  }

  while (v14 != 4);
  *a1 = v16;
  a1[1] = v17;
  a1[2] = v18;
  a1[3] = v19;
}

void S2Cell.init(face:pos:level:)(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (__OFSUB__(30, a3))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (0x400000000000001ELL - a3 < 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v5 = 2 * (30 - a3);
  v6 = v5 - 65;
  v7 = 1 << v5;
  if (v5 >= 0x40)
  {
    v7 = 0;
  }

  v8 = 1uLL >> ((-2 * (30 - a3)) & 0x3E);
  if (v5 <= 0xFFFFFFFFFFFFFFC0)
  {
    v8 = 0;
  }

  if (((30 - a3) & 0x4000000000000000) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v6 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v9 = 0;
  }

  v13 = (a2 | 1u | (a1 << 61)) & -v9 | v9;
  S2Cell.init(cellId:)(&v13, &v14);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a4 = v14;
  *(a4 + 8) = v10;
  *(a4 + 10) = v11;
  *(a4 + 16) = v12;
}

void S2Cell.init(point:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v8 = *a1;
  v9 = v3;
  S2CellId.init(point:)(&v8, &v7);
  S2Cell.init(cellId:)(&v7, &v8);
  v4 = WORD4(v8);
  v5 = BYTE10(v8);
  v6 = v9;
  *a2 = v8;
  *(a2 + 8) = v4;
  *(a2 + 10) = v5;
  *(a2 + 16) = v6;
}

void S2Cell.init(latlng:)(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = __sincos_stret(*a1);
  v5 = __sincos_stret(v3);
  v10 = v4.__cosval * v5.__cosval;
  v11 = v4.__cosval * v5.__sinval;
  sinval = v4.__sinval;
  S2CellId.init(point:)(&v10, &v9);
  S2Cell.init(cellId:)(&v9, &v10);
  v6 = LOWORD(v11);
  v7 = BYTE2(v11);
  v8 = sinval;
  *a2 = v10;
  *(a2 + 8) = v6;
  *(a2 + 10) = v7;
  *(a2 + 16) = v8;
}

VisualLookUp::S2Point __swiftcall S2Cell.getRawVertex(_:)(Swift::Int a1)
{
  v6 = *(v2 + 16);
  v7 = v6[2];
  if (!v7)
  {
    __break(1u);
    goto LABEL_40;
  }

  v8 = a1 >> 1;
  if (a1 >> 1 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = v6[4];
  v10 = v8 ^ a1 & 1;
  if (v10 >= *(v9 + 16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v7 == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v11 = v6[5];
  if (v8 >= *(v11 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v12 = *(v2 + 8);
  v13 = v9 + 8 * v10;
  v3 = *(v13 + 32);
  v14 = v11 + 8 * v8;
  v4 = *(v14 + 32);
  v15 = -1.0;
  v16 = -v3;
  v17 = -v4;
  if (v12 == 4)
  {
    v18 = -1.0;
  }

  else
  {
    v18 = *(v13 + 32);
  }

  if (v12 == 4)
  {
    v19 = -v3;
  }

  else
  {
    v19 = -1.0;
  }

  if (v12 == 3)
  {
    v20 = -1.0;
  }

  else
  {
    v20 = *(v14 + 32);
  }

  if (v12 == 3)
  {
    v18 = -v4;
    v19 = -v3;
  }

  if (v12 == 2)
  {
    v20 = -v3;
  }

  else
  {
    v17 = v18;
  }

  if (v12 == 2)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = v19;
  }

  if (v12 == 1)
  {
    v22 = 1.0;
  }

  else
  {
    v16 = *(v14 + 32);
    v22 = *(v13 + 32);
  }

  if (v12 == 1)
  {
    v15 = *(v14 + 32);
  }

  if (*(v2 + 8))
  {
    v3 = v22;
  }

  else
  {
    v16 = 1.0;
  }

  if (*(v2 + 8))
  {
    v4 = v15;
  }

  if (*(v2 + 8) <= 1u)
  {
    v5 = v16;
  }

  else
  {
    v5 = v20;
  }

  if (*(v2 + 8) > 1u)
  {
    v3 = v17;
    v4 = v21;
  }

  *v1 = v5;
  v1[1] = v3;
  v1[2] = v4;
LABEL_44:
  result.z = v5;
  result.y = v4;
  result.x = v3;
  return result;
}

VisualLookUp::S2Point __swiftcall S2Cell.getEdge(_:)(Swift::Int a1)
{
  v2 = sub_1D9B19AB0(S2Cell.getRawEdge(_:), v1);
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

double sub_1D9B19AB0@<D0>(void (*a1)(float64x2_t *__return_ptr)@<X1>, float64x2_t *a2@<X8>)
{
  a1(&v5);
  v3 = sqrt(vaddvq_f64(vmulq_f64(v5, v5)) + v6 * v6);
  if (v3 != 0.0)
  {
    v3 = 1.0 / v3;
  }

  result = v6 * v3;
  *a2 = vmulq_n_f64(v5, v3);
  a2[1].f64[0] = result;
  return result;
}

VisualLookUp::S2Point __swiftcall S2Cell.getRawEdge(_:)(Swift::Int a1)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (a1 == 2)
  {
    if (v6[2] >= 2uLL)
    {
      v13 = v6[5];
      if (*(v13 + 16) < 2uLL)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v14 = v1;
      static S2Projections.getVNorm(face:v:)(v5, v16.f64, *(v13 + 40));
      goto LABEL_20;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      if (v6[2] >= 2uLL)
      {
        v7 = v6[5];
        if (*(v7 + 16))
        {
          v8 = *(v7 + 32);

          static S2Projections.getVNorm(face:v:)(v5, v1, v8);
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      goto LABEL_23;
    }

    if (!v6[2])
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v15 = v6[4];
    if (!*(v15 + 16))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v14 = v1;
    static S2Projections.getUNorm(face:u:)(v5, v16.f64, *(v15 + 32));
LABEL_20:
    v3 = -v17;
    v9 = vnegq_f64(v16);
    *v14 = v9;
    v14[1].f64[0] = v3;
    goto LABEL_29;
  }

  if (!v6[2])
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v6[4];
  if (*(v11 + 16) < 2uLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v11 + 40);

  static S2Projections.getUNorm(face:u:)(v5, v1, v12);
LABEL_29:
  result.y = v9.f64[0];
  result.z = v10;
  result.x = v3;
  return result;
}

uint64_t S2Cell.subdivide()()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = *(v0 + 8);
    v3 = *(v0 + 9);
    v4 = *(v0 + 10);
    v5 = v0[2];
    v35 = *v0;
    v32 = v2;
    v36 = v2;
    v37 = v3;
    v33 = v4;
    v38 = v4;
    v39 = v5;
    result = S2Cell.centerUV.getter(&v34);
    if (!__OFSUB__(0, v1))
    {
      v7 = -v1 & v1;
      v8 = v1 - v7;
      if (v1 < v7)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v9 = v8 + (v7 >> 2);
      if (__CFADD__(v8, v7 >> 2))
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      if (v33 > 3)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v31 = v3 + 1;
      if (v31 != (v3 + 1))
      {
LABEL_56:
        __break(1u);
        return result;
      }

      v10 = 0;
      v11 = v34;
      v12 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53350);
        result = swift_allocObject();
        *(result + 16) = xmmword_1D9C85EA0;
        *(result + 32) = &unk_1F552A598;
        *(result + 40) = &unk_1F552A5C8;
        v13 = qword_1F5528308[v33 + 4];
        if (v10 >= *(v13 + 16))
        {
          break;
        }

        if (v5[2] < 2uLL)
        {
          goto LABEL_39;
        }

        v14 = result;
        v15 = *(v13 + 8 * v10 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14[4] = &unk_1F552A598;
        result = &unk_1F552A598;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          result = sub_1D9B1A738(&unk_1F552A598);
          v14[4] = result;
        }

        v17 = (v15 >> 1) & 1;
        v18 = (v15 & 2) == 0;
        if (v18 >= *(result + 16))
        {
          goto LABEL_40;
        }

        *(result + 8 * v18 + 32) = v11.f64[0];
        v19 = v5[4];
        if (v17 >= *(v19 + 16))
        {
          goto LABEL_41;
        }

        if (!v14[2])
        {
          goto LABEL_42;
        }

        v20 = v14[4];
        v21 = *(v19 + 8 * v17 + 32);
        result = swift_isUniquelyReferenced_nonNull_native();
        v14[4] = v20;
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A738(v20);
          v20 = result;
          v14[4] = result;
        }

        if (v17 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        *(v20 + 8 * v17 + 32) = v21;
        if (v14[2] < 2uLL)
        {
          goto LABEL_44;
        }

        v22 = v14[5];
        result = swift_isUniquelyReferenced_nonNull_native();
        v14[5] = v22;
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A738(v22);
          v22 = result;
          v14[5] = result;
        }

        v23 = v15 & 1;
        if ((v23 ^ 1) >= *(v22 + 16))
        {
          goto LABEL_45;
        }

        *(v22 + 8 * (v23 ^ 1) + 32) = v11.f64[1];
        v24 = v5[5];
        if (v23 >= *(v24 + 16))
        {
          goto LABEL_46;
        }

        if (v14[2] < 2uLL)
        {
          goto LABEL_47;
        }

        v25 = v14[5];
        v26 = *(v24 + 8 * v23 + 32);
        result = swift_isUniquelyReferenced_nonNull_native();
        v14[5] = v25;
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A738(v25);
          v25 = result;
          v14[5] = result;
        }

        if (v23 >= *(v25 + 16))
        {
          goto LABEL_48;
        }

        *(v25 + 8 * v23 + 32) = v26;
        v27 = qword_1F5528348[v10 + 4];
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (v27 > 0xFF)
        {
          goto LABEL_50;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D9AFAF6C(0, *(v12 + 16) + 1, 1, v12);
          v12 = result;
        }

        v29 = *(v12 + 16);
        v28 = *(v12 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_1D9AFAF6C((v28 > 1), v29 + 1, 1, v12);
          v12 = result;
        }

        *(v12 + 16) = v29 + 1;
        v30 = v12 + 24 * v29;
        *(v30 + 32) = v9;
        *(v30 + 40) = v32;
        *(v30 + 41) = v31;
        *(v30 + 42) = v33 ^ v27;
        *(v30 + 48) = v14;
        if (__OFSUB__(0, v9))
        {
          goto LABEL_51;
        }

        ++v10;
        v9 += 2 * (-v9 & v9);
        if (v10 == 4)
        {
          return v12;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
    }

    __break(1u);
    goto LABEL_53;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t S2Cell.centerUV.getter@<X0>(float64x2_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 9);
  v29 = 0;
  v30 = 0;
  v5 = sub_1D9B08A90(&v30, &v29, 7, (v3 >> 61) & 1);
  v6 = sub_1D9B08A90(&v30, &v29, 6, v5);
  v7 = sub_1D9B08A90(&v30, &v29, 5, v6);
  v8 = sub_1D9B08A90(&v30, &v29, 4, v7);
  v9 = sub_1D9B08A90(&v30, &v29, 3, v8);
  v10 = sub_1D9B08A90(&v30, &v29, 2, v9);
  v11 = sub_1D9B08A90(&v30, &v29, 1, v10);
  result = sub_1D9B08A90(&v30, &v29, 0, v11);
  if (v4 - 95 < 0x7F)
  {
    goto LABEL_2;
  }

  if (v4 >= 31)
  {
    goto LABEL_23;
  }

  if (v4 <= -34)
  {
    goto LABEL_2;
  }

  v13 = 1 << (30 - v4);
  v14 = -v13;
  if (__OFSUB__(0, v13))
  {
LABEL_26:
    __break(1u);
    return result;
  }

  while (1)
  {
    v15 = v30 & v14;
    if (((v30 & v14) + 0x4000000000000000) < 0)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v16 = __OFADD__(v13, 2 * v15);
    v17 = v13 + 2 * v15;
    if (v16)
    {
      goto LABEL_18;
    }

    v16 = __OFADD__(v17, -1073741824);
    v18 = v17 - 0x40000000;
    if (v16)
    {
      goto LABEL_19;
    }

    v19 = vcvtd_n_f64_s64(v18, 0x1EuLL);
    v20 = v19 < 0.0;
    v21 = 1.0 - (1.0 - v19) * (1.0 - v19);
    v22.f64[0] = (v19 + 1.0) * (v19 + 1.0) + -1.0;
    if (v20)
    {
      v22.f64[0] = v21;
    }

    v23 = v29 & v14;
    if (v23 + 0x4000000000000000 < 0)
    {
      goto LABEL_20;
    }

    v16 = __OFADD__(v13, 2 * v23);
    v24 = v13 + 2 * v23;
    if (!v16)
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    if (v4 >= 0x5E)
    {
LABEL_2:
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v13 = 1uLL >> (v4 + 34);
      v14 = -v13;
      if (__OFSUB__(0, v13))
      {
        goto LABEL_26;
      }
    }
  }

  v16 = __OFADD__(v24, -1073741824);
  v25 = v24 - 0x40000000;
  if (v16)
  {
    goto LABEL_22;
  }

  v26 = vcvtd_n_f64_s64(v25, 0x1EuLL);
  v20 = v26 < 0.0;
  v27 = 1.0 - (1.0 - v26) * (1.0 - v26);
  v28 = (v26 + 1.0) * (v26 + 1.0) + -1.0;
  if (v20)
  {
    v28 = v27;
  }

  v22.f64[1] = v28;
  *a1 = vmulq_f64(v22, vdupq_n_s64(0x3FD5555555555555uLL));
  return result;
}

double S2Cell.averageArea.getter()
{
  v1 = *(v0 + 9);
  if (qword_1ECB508F0 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1ECB513E8;
  v3 = (1.0 - v1) * qword_1ECB513F0;

  return scalb(v2, v3);
}

double sub_1D9B1A38C(unint64_t a1, unint64_t a2, double result)
{
  v4 = *(v3 + 16);
  v5 = v4[2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v4[4];
  if (*(v6 + 16) <= a1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = v4[5];
  if (*(v7 + 16) > a2)
  {
    v8 = *(v3 + 8);
    v9 = *(v6 + 8 * a1 + 32);
    v10 = *(v7 + 8 * a2 + 32);
    if (v8 <= 1)
    {
      v11 = 1.0;
      if (!*(v3 + 8))
      {
        return atan2(v10, sqrt(v11 * v11 + v9 * v9));
      }

      if (v8 == 1)
      {
        v11 = -v9;
        v9 = 1.0;
        return atan2(v10, sqrt(v11 * v11 + v9 * v9));
      }
    }

    else
    {
      switch(v8)
      {
        case 2u:
          v11 = -v9;
          v9 = -v10;
          v10 = 1.0;
          return atan2(v10, sqrt(v11 * v11 + v9 * v9));
        case 3u:
          v12 = -v10;
          v10 = -v9;
          v11 = -1.0;
          v9 = v12;
          return atan2(v10, sqrt(v11 * v11 + v9 * v9));
        case 4u:
          v11 = *(v7 + 8 * a2 + 32);
          v10 = -v9;
          v9 = -1.0;
          return atan2(v10, sqrt(v11 * v11 + v9 * v9));
      }
    }

    v11 = *(v7 + 8 * a2 + 32);
    v10 = -1.0;
    return atan2(v10, sqrt(v11 * v11 + v9 * v9));
  }

LABEL_24:
  __break(1u);
  return result;
}

double sub_1D9B1A480(unint64_t a1, unint64_t a2, double result)
{
  v4 = *(v3 + 16);
  v5 = v4[2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = v4[4];
  if (*(v6 + 16) <= a1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = v4[5];
  if (*(v7 + 16) <= a2)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v8 = *(v3 + 8);
  v9 = v6 + 8 * a1;
  v10 = *(v9 + 32);
  v11 = v7 + 8 * a2;
  v12 = *(v11 + 32);
  v13 = -v12;
  v14 = -1.0;
  if (v8 == 4)
  {
    v15 = -1.0;
  }

  else
  {
    v15 = *(v9 + 32);
  }

  if (v8 == 3)
  {
    v15 = -v12;
  }

  else
  {
    v14 = *(v11 + 32);
  }

  if (v8 == 2)
  {
    v14 = -v10;
  }

  else
  {
    v13 = v15;
  }

  if (v8 == 1)
  {
    v12 = -v10;
    v16 = 1.0;
  }

  else
  {
    v16 = *(v9 + 32);
  }

  if (*(v3 + 8))
  {
    v10 = v16;
  }

  else
  {
    v12 = 1.0;
  }

  if (*(v3 + 8) > 1u)
  {
    v12 = v14;
    v10 = v13;
  }

  return atan2(v10, v12);
}

unint64_t *S2Cell.contains(cell:)(unint64_t *result)
{
  v2 = *v1;
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = -*v1 & v2;
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (__OFSUB__(v2, v5))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*result < v2 - v5)
  {
    return 0;
  }

  v4 = __OFADD__(v2, v5);
  v6 = v2 + v5;
  if (!v4)
  {
    return (*result <= v6);
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t S2Cell.mayIntersect(cell:)(void *a1)
{
  v2 = *v1;
  v4[0] = *a1;
  v4[1] = v2;
  return S2CellId.intersects(with:)(v4) & 1;
}

unint64_t sub_1D9B1A5E4(void *a1)
{
  v2 = *v1;
  v4[0] = *a1;
  v4[1] = v2;
  return S2CellId.intersects(with:)(v4) & 1;
}

uint64_t sub_1D9B1A7C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D9C7E50C();
  }

  return sub_1D9C7E44C();
}

uint64_t sub_1D9B1A83C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  sub_1D99A3FE8(a1, v1 + OBJC_IVAR____TtC12VisualLookUp25UnifiedModelPostProcessor_modelInfo);
  v7 = *(a1 + *(type metadata accessor for MLModelInfo(0) + 36));
  if (*(v7 + 16) && (v8 = sub_1D99EE004(9), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = sub_1D9C7B80C();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v6, v11 + *(v13 + 72) * v10, v12);
    (*(v13 + 56))(v6, 0, 1, v12);
  }

  else
  {
    v14 = sub_1D9C7B80C();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  type metadata accessor for FileMapper();
  swift_allocObject();
  v15 = sub_1D9B1E230(v6);
  sub_1D99A404C(a1);
  *(v2 + 16) = v15;
  return v2;
}

uint64_t sub_1D9B1AA20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v249 = a2;
  v250 = a4;
  v238 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v238);
  v237 = &v210 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v240 = &v210 - v8;
  v252 = sub_1D9C7D8DC();
  v248 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v10 = &v210 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v210 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v210 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v210 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v210 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v210 - v24;
  v26 = *a3;
  v242 = a3[1];
  v243 = v26;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = v251;
  result = (*(v28 + 8))(v27, v28);
  if (!v29)
  {
    v31 = v248;
    v230 = v25;
    v228 = v22;
    v227 = v19;
    v251 = v16;
    v241 = v13;
    v233 = result;
    v32 = *(result + 24);
    if (*(v32 + 16) >= 2uLL)
    {
      v33 = v32 + 64;
      v34 = 1 << *(v32 + 32);
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v36 = v35 & *(v32 + 64);
      v225 = OBJC_IVAR____TtC12VisualLookUp25UnifiedModelPostProcessor_modelInfo;
      v37 = (v34 + 63) >> 6;
      v246 = (v248 + 16);
      v247 = (v248 + 8);
      v229 = (v248 + 32);
      v224 = 0x80000001D9CA3A40;
      v223 = 0x80000001D9CAA160;

      v38 = 0;
      *&v39 = 136315138;
      v232 = v39;
      *&v39 = 134217984;
      v222 = v39;
      v226 = MEMORY[0x1E69E7CC0];
      v231 = MEMORY[0x1E69E7CC0];
      v40 = v252;
      v41 = 0;
      v235 = v32 + 64;
      v236 = v32;
      v234 = v37;
LABEL_7:
      v42 = v250;
      while (2)
      {
        v43 = v38;
        while (1)
        {
          if (!v36)
          {
            while (1)
            {
              v38 = v43 + 1;
              if (__OFADD__(v43, 1))
              {
                break;
              }

              if (v38 >= v37)
              {

                v199 = v242;
                *v42 = v243;
                *(v42 + 16) = v199;
                v200 = v226;
                *(v42 + 32) = v231;
                *(v42 + 40) = v200;
                return result;
              }

              v36 = *(v33 + 8 * v38);
              ++v43;
              if (v36)
              {
                v44 = v40;
                goto LABEL_17;
              }
            }

            __break(1u);
LABEL_169:

            v253 = 0;
            v254 = 0xE000000000000000;
            sub_1D9C7E40C();

            v253 = 0xD000000000000016;
            v254 = 0x80000001D9CA3B40;
            MEMORY[0x1DA73DF90](v40, v33);

            v201 = v253;
            v202 = v254;
            sub_1D99A182C();
            swift_allocError();
            *v203 = v201;
            *(v203 + 8) = v202;
            *(v203 + 16) = 4;
            swift_willThrow();

LABEL_171:
            sub_1D99A404C(v240);
          }

          v44 = v40;
          v38 = v43;
LABEL_17:
          v248 = (v36 - 1) & v36;
          v45 = (*(v32 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v36)))));
          v47 = *v45;
          v46 = v45[1];

          v244 = v47;
          if (!v249)
          {
            break;
          }

          v48 = sub_1D9BDBB08(v249);
          v253 = v47;
          v254 = v46;
          v49 = v46;
          MEMORY[0x1EEE9AC00](v48);
          *(&v210 - 2) = &v253;
          v50 = sub_1D9BC1698(sub_1D99A40D8, (&v210 - 4), v48);

          if (v50)
          {
            goto LABEL_47;
          }

          v245 = v41;
          if (qword_1EDD354B8 != -1)
          {
            swift_once();
          }

          v51 = byte_1EDD354C0;
          v52 = v251;
          v53 = v49;
          if (byte_1EDD354C0 != 1)
          {
            goto LABEL_31;
          }

          if (sub_1D9A75D94())
          {
            v54 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v54 = &off_1ECB51BA8;
            }
          }

          else
          {
            v54 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v54 = &qword_1EDD355A8;
            }
          }

          v55 = *(*v54 + 32);

          v56 = sub_1D9C7DC4C();
          LODWORD(v55) = [v55 BOOLForKey_];

          v52 = v251;
          if (v55)
          {
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
            }

            v57 = __swift_project_value_buffer(v44, qword_1EDD2C990);
            v58 = *v246;
            (*v246)(v52, v57, v44);
          }

          else
          {
LABEL_31:
            if (qword_1EDD354D0 != -1)
            {
              swift_once();
            }

            v59 = __swift_project_value_buffer(v44, qword_1EDD354D8);
            v58 = *v246;
            (*v246)(v52, v59, v44);
            if ((v51 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          if (sub_1D9A75D94())
          {
            v60 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v60 = &off_1ECB51BA8;
            }
          }

          else
          {
            v60 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v60 = &qword_1EDD355A8;
            }
          }

          v61 = *(*v60 + 32);

          v62 = sub_1D9C7DC4C();
          LODWORD(v61) = [v61 BOOLForKey_];

          v52 = v251;
          if (v61)
          {
            v63 = v241;
            v40 = v252;
            (*v229)(v241, v251, v252);
            goto LABEL_44;
          }

LABEL_41:
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
          }

          v64 = v252;
          v65 = __swift_project_value_buffer(v252, qword_1EDD354D8);
          v63 = v241;
          v58(v241, v65, v64);
          v40 = v64;
          (*v247)(v52, v64);
LABEL_44:
          v32 = v236;

          v66 = sub_1D9C7D8BC();
          v67 = sub_1D9C7E09C();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v253 = v69;
            *v68 = v232;
            v70 = sub_1D9A0E224(v244, v53, &v253);
            v71 = v32;
            v72 = v70;

            *(v68 + 4) = v72;
            v32 = v71;
            _os_log_impl(&dword_1D9962000, v66, v67, "Skip result key %s", v68, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v69);
            v73 = v69;
            v40 = v252;
            MEMORY[0x1DA7405F0](v73, -1, -1);
            MEMORY[0x1DA7405F0](v68, -1, -1);
          }

          else
          {
          }

          (*v247)(v63, v40);
          v43 = v38;
          v41 = v245;
          v42 = v250;
          v33 = v235;
          v37 = v234;
          v36 = v248;
        }

        v49 = v46;
LABEL_47:
        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        v74 = byte_1EDD354C0;
        if (byte_1EDD354C0 == 1)
        {
          v75 = byte_1EDD354C0;
          v76 = [objc_opt_self() mainBundle];
          v77 = [v76 bundleIdentifier];

          if (v77)
          {
            v78 = sub_1D9C7DC7C();
            v80 = v79;

            if (v78 == 0xD00000000000002BLL && v224 == v80)
            {
            }

            else
            {
              v82 = sub_1D9C7E7DC();

              if ((v82 & 1) == 0)
              {
                goto LABEL_56;
              }
            }

            v83 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v83 = &off_1ECB51BA8;
            }
          }

          else
          {
LABEL_56:
            v83 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v83 = &qword_1EDD355A8;
            }
          }

          v84 = *(*v83 + 32);

          v85 = sub_1D9C7DC4C();
          LODWORD(v84) = [v84 BOOLForKey_];

          v74 = v75;
          if (v84)
          {
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
            }

            v86 = v252;
            v87 = __swift_project_value_buffer(v252, qword_1EDD2C990);
            v88 = *v246;
            (*v246)(v230, v87, v86);
            goto LABEL_68;
          }
        }

        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v89 = v252;
        v90 = __swift_project_value_buffer(v252, qword_1EDD354D8);
        v88 = *v246;
        v91 = v230;
        (*v246)(v230, v90, v89);
        if ((v74 & 1) == 0)
        {
          goto LABEL_79;
        }

LABEL_68:
        v92 = [objc_opt_self() mainBundle];
        v93 = [v92 bundleIdentifier];

        if (!v93)
        {
          goto LABEL_75;
        }

        v94 = sub_1D9C7DC7C();
        v96 = v95;

        if (v94 != 0xD00000000000002BLL || v224 != v96)
        {
          v97 = sub_1D9C7E7DC();

          if (v97)
          {
            goto LABEL_73;
          }

LABEL_75:
          v98 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v98 = &qword_1EDD355A8;
          }

          goto LABEL_77;
        }

LABEL_73:
        v98 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v98 = &off_1ECB51BA8;
        }

LABEL_77:
        v99 = *(*v98 + 32);

        v100 = sub_1D9C7DC4C();
        LODWORD(v99) = [v99 BOOLForKey_];

        v91 = v230;
        if (v99)
        {
          v101 = v228;
          v102 = v252;
          (*v229)(v228, v230);
          goto LABEL_82;
        }

LABEL_79:
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v103 = v252;
        v104 = __swift_project_value_buffer(v252, qword_1EDD354D8);
        v101 = v228;
        v88(v228, v104, v103);
        v105 = v91;
        v102 = v103;
        (*v247)(v105, v103);
LABEL_82:
        v106 = v49;

        v107 = sub_1D9C7D8BC();
        v108 = sub_1D9C7E09C();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v245 = v49;
          v110 = v101;
          v111 = v109;
          v112 = swift_slowAlloc();
          v253 = v112;
          *v111 = v232;
          v40 = v244;
          *(v111 + 4) = sub_1D9A0E224(v244, v245, &v253);
          _os_log_impl(&dword_1D9962000, v107, v108, "Process result key %s", v111, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v112);
          v113 = v252;
          MEMORY[0x1DA7405F0](v112, -1, -1);
          MEMORY[0x1DA7405F0](v111, -1, -1);

          v114 = *v247;
          v115 = v110;
          v106 = v245;
          v102 = v113;
          (*v247)(v115, v113);
          v116 = v238;
        }

        else
        {

          v114 = *v247;
          (*v247)(v101, v102);
          v116 = v238;
          v40 = v244;
        }

        if (v40 == 0x6E69646465626D65 && v106 == 0xE900000000000067 || (sub_1D9C7E7DC() & 1) != 0)
        {
          sub_1D99A3FE8(v239 + v225, v240);
          v117 = v249;
          if (!v249 || !*(v249 + 16))
          {
            v33 = v106;
LABEL_93:
            v245 = 0;
            v121 = 0xE000000000000000;
            goto LABEL_94;
          }

          v33 = v106;
          v118 = sub_1D99ED894(v40, v106);
          if ((v119 & 1) == 0)
          {
            goto LABEL_93;
          }

          v120 = *(v117 + 56) + 16 * v118;
          v121 = *(v120 + 8);
          v245 = *v120;

LABEL_94:
          v122 = *(v233 + 24);
          if (!*(v122 + 16))
          {
            goto LABEL_169;
          }

          v123 = sub_1D99ED894(v40, v33);
          if ((v124 & 1) == 0)
          {
            goto LABEL_169;
          }

          v125 = v123;

          v126 = *(*(v122 + 56) + 8 * v125);
          v127 = sub_1D9C18DE8(v126);
          if (v41)
          {

            goto LABEL_171;
          }

          v128 = v127;
          v129 = sub_1D9C19020(v127);
          v130 = v240;
          v131 = (v240 + *(v116 + 24));
          v132 = v131[1];
          v253 = *v131;
          v254 = v132;

          MEMORY[0x1DA73DF90](v245, v121);

          v133 = v253;
          v134 = v254;
          sub_1D99A404C(v130);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v231 = sub_1D9AF870C(0, *(v231 + 2) + 1, 1, v231);
          }

          v36 = v248;
          v136 = *(v231 + 2);
          v135 = *(v231 + 3);
          if (v136 >= v135 >> 1)
          {
            v231 = sub_1D9AF870C((v135 > 1), v136 + 1, 1, v231);
          }

          v137 = v231;
          *(v231 + 2) = v136 + 1;
          v138 = &v137[24 * v136];
          *(v138 + 4) = v129;
          *(v138 + 5) = v133;
          *(v138 + 6) = v134;
          v41 = 0;
          v40 = v252;
          v42 = v250;
          v33 = v235;
          v32 = v236;
          v37 = v234;
          continue;
        }

        break;
      }

      v211 = v114;
      if (v40 == 0xD000000000000010 && v223 == v106 || (sub_1D9C7E7DC() & 1) != 0 || v40 == 0x7373616C63 && v106 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
      {
        sub_1D99A3FE8(v239 + v225, v237);
        v139 = v249;
        if (v249)
        {
          v140 = *(v249 + 16);

          if (v140)
          {
            v141 = sub_1D99ED894(v40, v106);
            if (v142)
            {
              v143 = (*(v139 + 56) + 16 * v141);
              v144 = v143[1];
              v212 = *v143;
              v213 = v144;

LABEL_114:
              v145 = *(v233 + 24);
              if (*(v145 + 16))
              {
                v146 = sub_1D99ED894(v40, v106);
                if (v147)
                {
                  v214 = *(*(v145 + 56) + 8 * v146);
                  v148 = sub_1D99F767C(v214, 2, 0);
                  v216 = sub_1D9AF85D0(0, 2, 0, MEMORY[0x1E69E7CC0]);
                  v149 = 0;
                  v255 = MEMORY[0x1E69E7CD0];
                  v218 = v148;
                  v219 = v148 + 32;
                  v40 = v102;
                  while (1)
                  {
                    v220 = v255;
                    if (v149 == 2)
                    {
LABEL_153:
                      v245 = v41;

LABEL_154:

LABEL_158:
                      v186 = v237;
                      v187 = (v237 + *(v238 + 24));
                      v188 = v187[1];
                      v253 = *v187;
                      v254 = v188;

                      MEMORY[0x1DA73DF90](v212, v213);

                      v189 = v253;
                      v190 = v254;
                      sub_1D99A404C(v186);

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v226 = sub_1D9AF85EC(0, *(v226 + 2) + 1, 1, v226);
                      }

                      v36 = v248;
                      v192 = *(v226 + 2);
                      v191 = *(v226 + 3);
                      if (v192 >= v191 >> 1)
                      {
                        v226 = sub_1D9AF85EC((v191 > 1), v192 + 1, 1, v226);
                      }

                      v193 = v226;
                      *(v226 + 2) = v192 + 1;
                      v194 = &v193[24 * v192];
                      *(v194 + 4) = v189;
                      *(v194 + 5) = v190;
                      *(v194 + 6) = v216;
                      v41 = v245;
                      v33 = v235;
                      v32 = v236;
                      v37 = v234;
                      goto LABEL_7;
                    }

                    v150 = v149;
                    v244 = v255 + 56;
                    while (1)
                    {
                      v245 = v41;
                      if (v150 >= *(v218 + 2))
                      {

                        v182 = v227;
                        static Logger.argos.getter(v227);
                        v183 = sub_1D9C7D8BC();
                        v184 = sub_1D9C7E09C();
                        if (os_log_type_enabled(v183, v184))
                        {
                          v185 = swift_slowAlloc();
                          *v185 = v222;
                          *(v185 + 4) = v150;
                          _os_log_impl(&dword_1D9962000, v183, v184, "Invalid index %ld", v185, 0xCu);
                          MEMORY[0x1DA7405F0](v185, -1, -1);
                        }

                        v211(v182, v40);

                        goto LABEL_158;
                      }

                      v221 = v150 + 1;
                      v151 = *&v219[8 * v150];
                      v152 = *(*(v239 + 16) + 16);
                      v153 = *(v152 + 80);
                      os_unfair_lock_lock(v153 + 4);
                      swift_beginAccess();
                      v154 = *(v152 + 32);
                      if (v154 == 255)
                      {
                        break;
                      }

                      v155 = *(v152 + 24);
                      v156 = v220;
                      if ((v154 & 1) == 0)
                      {

                        os_unfair_lock_unlock(v153 + 4);
                        goto LABEL_129;
                      }

                      v253 = *(v152 + 24);
                      v157 = v155;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
                      swift_willThrowTypedImpl();
                      os_unfair_lock_unlock(v153 + 4);
                      sub_1D99A40A8(v155, v154);
LABEL_128:
                      v155 = MEMORY[0x1E69E7CC0];
LABEL_129:
                      v161 = v155[2];

                      if ((v151 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_130;
                      }

LABEL_146:
                      v40 = v252;
LABEL_147:
                      v150 = v221;
                      v41 = v245;
                      if (v221 == 2)
                      {
                        goto LABEL_153;
                      }
                    }

                    v158 = *(v152 + 40);
                    v156 = v220;
                    if (!v158)
                    {
                      os_unfair_lock_unlock(v153 + 4);
                      goto LABEL_128;
                    }

                    v159 = v245;
                    v158(&v253);
                    if (v159)
                    {
                      break;
                    }

                    v245 = 0;
                    sub_1D9979BF4(v158);
                    v172 = v253;
                    v173 = *(v152 + 24);
                    *(v152 + 24) = v253;
                    v174 = *(v152 + 32);
                    *(v152 + 32) = 0;

                    sub_1D99A40A8(v173, v174);
                    os_unfair_lock_unlock(v153 + 4);
                    v161 = *(v172 + 16);

                    if ((v151 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_146;
                    }

LABEL_130:
                    if (v151 >= v161)
                    {
                      goto LABEL_146;
                    }

                    v162 = v245;
                    result = sub_1D9C196E8();
                    v40 = v252;
                    if (v162)
                    {

                      v162 = 0;
                      result = MEMORY[0x1E69E7CC0];
                    }

                    v245 = v162;
                    if (v151 >= *(result + 16))
                    {
                      __break(1u);
                      return result;
                    }

                    v163 = result + 16 * v151;
                    v164 = *(v163 + 32);
                    v165 = *(v163 + 40);

                    if (*(v156 + 16))
                    {
                      sub_1D9C7E8DC();
                      sub_1D9C7DD6C();
                      v166 = sub_1D9C7E93C();
                      v167 = -1 << *(v156 + 32);
                      v168 = v166 & ~v167;
                      if ((*(v244 + ((v168 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v168))
                      {
                        v169 = ~v167;
                        while (1)
                        {
                          v170 = (*(v156 + 48) + 16 * v168);
                          v171 = *v170 == v164 && v170[1] == v165;
                          if (v171 || (sub_1D9C7E7DC() & 1) != 0)
                          {
                            break;
                          }

                          v168 = (v168 + 1) & v169;
                          if (((*(v244 + ((v168 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v168) & 1) == 0)
                          {
                            goto LABEL_149;
                          }
                        }

                        goto LABEL_147;
                      }
                    }

LABEL_149:

                    sub_1D9B91DE4(&v253, v164, v165);

                    v175 = [v214 objectAtIndexedSubscript_];
                    [v175 floatValue];
                    v177 = v176;

                    v179 = *(v216 + 2);
                    v178 = *(v216 + 3);
                    if (v179 >= v178 >> 1)
                    {
                      v216 = sub_1D9AF85D0((v178 > 1), v179 + 1, 1, v216);
                    }

                    v180 = v216;
                    *(v216 + 2) = v179 + 1;
                    v181 = &v180[24 * v179];
                    *(v181 + 4) = v164;
                    *(v181 + 5) = v165;
                    *(v181 + 12) = v177;
                    v41 = v245;
                    v149 = v221;
                    if (v179 == 1)
                    {

                      goto LABEL_154;
                    }
                  }

                  v245 = *(v152 + 24);
                  v215 = *(v152 + 32);
                  v160 = v159;
                  *(v152 + 24) = v159;
                  *(v152 + 32) = 1;
                  sub_1D99A40A8(v245, v215);
                  swift_willThrow();
                  sub_1D9979BF4(v158);
                  os_unfair_lock_unlock(v153 + 4);

                  v245 = 0;
                  goto LABEL_128;
                }
              }

              v253 = 0;
              v254 = 0xE000000000000000;
              sub_1D9C7E40C();

              v253 = 0xD00000000000001BLL;
              v254 = 0x80000001D9CA3B20;
              MEMORY[0x1DA73DF90](v40, v106);
              v204 = v253;
              v205 = v254;
              sub_1D99A182C();
              swift_allocError();
              *v206 = v204;
              *(v206 + 8) = v205;
              *(v206 + 16) = 4;
              swift_willThrow();
              sub_1D99A404C(v237);

              goto LABEL_173;
            }
          }
        }

        else
        {
        }

        v212 = 0;
        v213 = 0xE000000000000000;
        goto LABEL_114;
      }

      v253 = 0;
      v254 = 0xE000000000000000;
      sub_1D9C7E40C();

      v253 = 0x7463657078656E75;
      v254 = 0xEF2079656B206465;
      MEMORY[0x1DA73DF90](v40, v106);

      v207 = v253;
      v208 = v254;
      sub_1D99A182C();
      swift_allocError();
      *v209 = v207;
      *(v209 + 8) = v208;
      *(v209 + 16) = 4;
      swift_willThrow();
LABEL_173:
    }

    static Logger.argos.getter(v10);
    v195 = sub_1D9C7D8BC();
    v196 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v195, v196))
    {
      v197 = swift_slowAlloc();
      *v197 = 0;
      _os_log_impl(&dword_1D9962000, v195, v196, "Unified model expected at least 1 outputs", v197, 2u);
      MEMORY[0x1DA7405F0](v197, -1, -1);
    }

    (*(v31 + 8))(v10, v252);
    sub_1D99A182C();
    swift_allocError();
    *v198 = 0xD00000000000001BLL;
    *(v198 + 8) = 0x80000001D9CAA140;
    *(v198 + 16) = 4;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1D9B1C784()
{

  sub_1D99A404C(v0 + OBJC_IVAR____TtC12VisualLookUp25UnifiedModelPostProcessor_modelInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnifiedModelPostProcessor()
{
  result = qword_1EDD321C8;
  if (!qword_1EDD321C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B1C844(char a1)
{
  sub_1D99BB148();
  if (!swift_dynamicCastMetatype())
  {
    return sub_1D9C7DD0C();
  }

  sub_1D9A72694();
  v2 = sub_1D9C7E7BC();
  if (!v2)
  {
    v2 = swift_allocError();
    *v3 = a1;
  }

  v4 = v2;
  v5 = sub_1D9C7B6FC();

  v6 = sub_1D9A4FABC();
  return v6;
}

uint64_t sub_1D9B1C914()
{
  v1 = sub_1D9C7D13C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  sub_1D99BB148();
  v14 = swift_dynamicCastMetatype();
  v15 = *(v2 + 16);
  if (v14)
  {
LABEL_4:
    v15(v10, v0, v1);
    sub_1D9B1CE3C();
    v16 = sub_1D9C7E7BC();
    if (v16)
    {
      v17 = v16;
      (*(v2 + 8))(v10, v1);
    }

    else
    {
      v17 = swift_allocError();
      (*(v2 + 32))(v18, v10, v1);
    }

    v19 = sub_1D9C7B6FC();

    v20 = sub_1D9A4FABC();
    return v20;
  }

  v15(v13, v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB522B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    goto LABEL_4;
  }

  v15(v7, v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB522C8);
  if (swift_dynamicCast())
  {
    sub_1D99BB604(v23, v22);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v20 = sub_1D9C7E7EC();
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    v15(v4, v0, v1);
    v20 = sub_1D9C7DD0C();
  }

  (*(v2 + 8))(v7, v1);
  return v20;
}

uint64_t sub_1D9B1CC64()
{
  v0 = sub_1D9C7D8DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = VIIsSettingsEnabledForLookup();
  if ((result & 1) == 0)
  {
    static Logger.argos.getter(v3);
    v5 = sub_1D9C7D8BC();
    v6 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      v9 = sub_1D9B1C844(0);
      v11 = sub_1D9A0E224(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1D9962000, v5, v6, "%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x1DA7405F0](v8, -1, -1);
      MEMORY[0x1DA7405F0](v7, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    sub_1D9A72694();
    swift_allocError();
    *v12 = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1D9B1CE3C()
{
  result = qword_1ECB53038;
  if (!qword_1ECB53038)
  {
    sub_1D9C7D13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53038);
  }

  return result;
}

id sub_1D9B1CEB8(__CVBuffer *a1, uint64_t a2, CGFloat *a3, uint64_t a4, double a5, double a6)
{
  v60 = *MEMORY[0x1E69E9840];
  v13 = sub_1D9C7D8DC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[2];
  v20 = a3[3];
  v21 = [objc_allocWithZone(MEMORY[0x1E6984688]) init];
  v22 = [objc_allocWithZone(MEMORY[0x1E69845A8]) initWithCVPixelBuffer:a1 orientation:1 options:0 session:v21];
  if (!v22)
  {
    sub_1D99A182C();
    swift_allocError();
    *v52 = 0xD000000000000029;
    *(v52 + 8) = 0x80000001D9CAA1E0;
    *(v52 + 16) = 5;
    swift_willThrow();
    goto LABEL_21;
  }

  v23 = v22;
  v61.origin.x = v17;
  v61.origin.y = v18;
  v61.size.width = v19;
  v61.size.height = v20;
  MinX = CGRectGetMinX(v61);
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = 1.0;
  v62.size.height = 1.0;
  if (MinX < CGRectGetMinX(v62) || (v63.origin.x = v17, v63.origin.y = v18, v63.size.width = v19, v63.size.height = v20, MinY = CGRectGetMinY(v63), v64.origin.x = 0.0, v64.origin.y = 0.0, v64.size.width = 1.0, v64.size.height = 1.0, MinY < CGRectGetMinY(v64)) || (v65.origin.x = v17, v65.origin.y = v18, v65.size.width = v19, v65.size.height = v20, MaxX = CGRectGetMaxX(v65), v66.origin.x = 0.0, v66.origin.y = 0.0, v66.size.width = 1.0, v66.size.height = 1.0, CGRectGetMaxX(v66) < MaxX) || (v67.origin.x = v17, v67.origin.y = v18, v67.size.width = v19, v67.size.height = v20, MaxY = CGRectGetMaxY(v67), v68.origin.x = 0.0, v68.origin.y = 0.0, v68.size.width = 1.0, v68.size.height = 1.0, CGRectGetMaxY(v68) < MaxY))
  {
    v57 = a2;
    v56 = a4;
    v28 = v23;
    v29 = v21;
    static Logger.argos.getter(v16);
    v30 = sub_1D9C7D8BC();
    v31 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v14;
      v33 = v13;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D9962000, v30, v31, "WARNING: VIVNImageScaler invoked with normalizedBoundingBox outside (0,0),(1,1) coordinate range, probably a bug! Clipped 0-1 RoI will be used instead", v34, 2u);
      v35 = v34;
      v13 = v33;
      v14 = v32;
      MEMORY[0x1DA7405F0](v35, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    v21 = v29;
    v23 = v28;
    a4 = v56;
    a2 = v57;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v69.origin.x = v17;
  v69.origin.y = v18;
  v69.size.width = v19;
  v69.size.height = v20;
  v70 = VNImageRectForNormalizedRect(v69, Width, Height);
  v71 = CGRectIntegral(v70);
  x = v71.origin.x;
  if (a5 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  if (a6 >= 9.22337204e18)
  {
    goto LABEL_28;
  }

  y = v71.origin.y;
  v40 = v71.size.width;
  v41 = v71.size.height;
  sub_1D9A46194(MEMORY[0x1E69E7CC0]);
  v42 = sub_1D9C7DB3C();

  v58 = 0;
  v6 = [v23 cropAndScaleBufferWithWidth:a5 height:a6 cropRect:a2 format:a4 imageCropAndScaleOption:v42 options:&v58 error:x calculatedNormalizedOriginOffset:y calculatedScaleX:v40 calculatedScaleY:{v41, 0, 0, 0}];

  if (v6)
  {
    v43 = v58;
    if (!v58)
    {

      return v6;
    }

    v58 = 0;
    v59 = 0xE000000000000000;
    v44 = v43;
    sub_1D9C7E40C();

    v58 = 0xD000000000000027;
    v59 = 0x80000001D9CAA240;
    v45 = [v44 localizedDescription];
    v46 = sub_1D9C7DC7C();
    v48 = v47;

    MEMORY[0x1DA73DF90](v46, v48);

    v49 = v58;
    v50 = v59;
    sub_1D99A182C();
    swift_allocError();
    *v51 = v49;
    *(v51 + 8) = v50;
    *(v51 + 16) = 6;
    swift_willThrow();
  }

  else
  {
    sub_1D99A182C();
    swift_allocError();
    *v53 = 0xD000000000000026;
    *(v53 + 8) = 0x80000001D9CAA210;
    *(v53 + 16) = 6;
    swift_willThrow();
  }

LABEL_21:
  return v6;
}

id sub_1D9B1D4D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  v59 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v55 - v9;
  v11 = sub_1D9C7B80C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - v15;
  if (*(a1 + 16) && (v17 = sub_1D99ED894(7368801, 0xE300000000000000), (v18 & 1) != 0) && (sub_1D99A579C(*(a1 + 56) + 32 * v17, v64), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB524A8), (swift_dynamicCast() & 1) != 0))
  {
    v60 = v8;
    v19 = v63;
    v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v21 = *(v19 + 16);
    v22 = v20;
    if (v21 && (v23 = sub_1D99ED894(1701667182, 0xE400000000000000), (v24 & 1) != 0) && (sub_1D99A579C(*(v19 + 56) + 32 * v23, v64), (swift_dynamicCast() & 1) != 0))
    {
      v25 = sub_1D9C7DC4C();
    }

    else
    {
      v25 = 0;
    }

    [v22 setName_];

    if (*(v19 + 16) && (v32 = sub_1D99ED894(0x695F656C646E7562, 0xE900000000000064), (v33 & 1) != 0) && (sub_1D99A579C(*(v19 + 56) + 32 * v32, v64), (swift_dynamicCast() & 1) != 0))
    {
      v34 = sub_1D9C7DC4C();
    }

    else
    {
      v34 = 0;
    }

    [v22 setBundleIdentifier_];

    v35 = *(v19 + 16);
    v61 = v11;
    v58 = v2;
    if (v35 && (v36 = sub_1D99ED894(0x6C6562616CLL, 0xE500000000000000), (v37 & 1) != 0) && (sub_1D99A579C(*(v19 + 56) + 32 * v36, v64), (swift_dynamicCast() & 1) != 0))
    {
      v38 = sub_1D9C7DC4C();
    }

    else
    {
      v38 = 0;
    }

    v57 = v22;
    [v22 setLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53420);
    v39 = *(v59 + 72);
    v40 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v56 = swift_allocObject();
    v41 = (v56 + v40);
    sub_1D9B1DE44(0x74756F68636E7570, 0xEC0000006972755FLL, v19, v41);
    sub_1D9B1DE44(7107189, 0xE300000000000000, a1, &v41[v39]);

    sub_1D9B1DE44(0x5F6C6C6174736E69, 0xEB000000006C7275, v19, &v41[2 * v39]);

    v42 = (v12 + 48);
    v59 = v12;
    v43 = (v12 + 32);
    v44 = MEMORY[0x1E69E7CC0];
    v45 = 3;
    v55 = v41;
    v46 = v41;
    v47 = v60;
    v48 = v61;
    do
    {
      sub_1D9A58830(v46, v47);
      sub_1D9A59E80(v47, v5);
      if ((*v42)(v5, 1, v48) == 1)
      {
        sub_1D9B1E1C8(v5);
      }

      else
      {
        v49 = *v43;
        (*v43)(v62, v5, v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1D9AFA68C(0, v44[2] + 1, 1, v44);
        }

        v51 = v44[2];
        v50 = v44[3];
        if (v51 >= v50 >> 1)
        {
          v44 = sub_1D9AFA68C(v50 > 1, v51 + 1, 1, v44);
        }

        v44[2] = v51 + 1;
        v52 = v44 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v51;
        v48 = v61;
        v49(v52, v62, v61);
        v47 = v60;
      }

      v46 += v39;
      --v45;
    }

    while (v45);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v53 = sub_1D9C7DF1C();

    v26 = v57;
    [v57 setUrls_];
  }

  else
  {
    sub_1D9B1DE44(7107189, 0xE300000000000000, a1, v10);

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1D9B1E1C8(v10);
      return 0;
    }

    else
    {
      (*(v12 + 32))(v16, v10, v11);
      v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB532C8);
      v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1D9C85660;
      (*(v12 + 16))(v29 + v28, v16, v11);
      v30 = v27;
      v31 = sub_1D9C7DF1C();
      v26 = v30;

      [v30 setUrls_];

      (*(v12 + 8))(v16, v11);
    }
  }

  return v26;
}

void sub_1D9B1DC6C(void *a1)
{
  v3 = [v1 inlineCard];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = v3;
  v5 = [v3 cardSections];

  if (!v5)
  {
    return;
  }

  sub_1D9A0835C(0, &qword_1ECB524A0);
  v6 = sub_1D9C7DF2C();

  if (v6 >> 62)
  {
    if (sub_1D9C7E50C())
    {
      goto LABEL_5;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA73E610](0, v6);
      goto LABEL_8;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v6 + 32);
LABEL_8:
      v8 = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D9C88F90;
      *(v9 + 32) = a1;
      sub_1D9A0835C(0, &qword_1ECB524B0);
      v10 = a1;
      v11 = sub_1D9C7DF1C();

      [v8 setPunchoutOptions_];

      return;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }
}

uint64_t sub_1D9B1DE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = sub_1D9C7B80C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  if (*(a3 + 16) && (v20 = sub_1D99ED894(a1, a2), (v21 & 1) != 0))
  {
    v33 = a4;
    sub_1D99A579C(*(a3 + 56) + 32 * v20, v35);
    v22 = swift_dynamicCast();
    v23 = *(v14 + 56);
    v23(v12, v22 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      v30 = *(v14 + 32);
      v30(v19, v12, v13);
      v31 = v33;
      v30(v33, v19, v13);
      return (v23)(v31, 0, 1, v13);
    }

    a4 = v33;
  }

  else
  {
    v23 = *(v14 + 56);
    v23(v12, 1, 1, v13);
  }

  sub_1D9B1E1C8(v12);
  if (*(a3 + 16))
  {
    v24 = sub_1D99ED894(a1, a2);
    if (v25)
    {
      sub_1D99A579C(*(a3 + 56) + 32 * v24, v35);
      if (swift_dynamicCast())
      {
        v26 = v34;
        sub_1D9C7B7EC();

        if ((*(v14 + 48))(v26, 1, v13) != 1)
        {
          v32 = *(v14 + 32);
          v32(v17, v26, v13);
          v32(a4, v17, v13);
          v27 = a4;
          v28 = 0;
          return (v23)(v27, v28, 1, v13);
        }

        sub_1D9B1E1C8(v26);
      }
    }
  }

  v27 = a4;
  v28 = 1;
  return (v23)(v27, v28, 1, v13);
}

uint64_t sub_1D9B1E1C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D9B1E230(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v14 - v8;
  sub_1D9A58830(a1, &v14 - v8);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_1D9A59E80(v9, v11 + v10);
  *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53428);
  swift_allocObject();
  v12 = sub_1D9C1B65C(4, sub_1D9B1E87C, v11);
  sub_1D99A6AE0(a1, &qword_1ECB51FD0);
  v2[2] = v12;
  return v2;
}

uint64_t sub_1D9B1E3D0(unint64_t a1)
{
  v2 = *(sub_1D9C196E8() + 16);

  v3 = 0;
  if ((a1 & 0x8000000000000000) != 0 || v2 <= a1)
  {
    return v3;
  }

  result = sub_1D9C196E8();
  if (*(result + 16) > a1)
  {
    v3 = *(result + 16 * a1 + 32);

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D9B1E4B8(uint64_t a1)
{
  sub_1D9B1E560(a1, &v3);
  if (v4)
  {
    sub_1D9A17E50(&v3, v5);
    sub_1D9A17E50(v5, &v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51608);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1D99A6AE0(&v3, &unk_1ECB53AC0);
  }

  return sub_1D9A436D8(MEMORY[0x1E69E7CC0]);
}

_OWORD *sub_1D9B1E560@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25[-1] - v5;
  v7 = sub_1D9C7B80C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9A58830(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1D99A6AE0(v6, &qword_1ECB51FD0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_1D9C7B81C();
    v14 = v13;
    v15 = sub_1D9B88EB8(v12, v13);
    v17 = v16;
    sub_1D99A5748(v12, v14);
    v18 = objc_opt_self();
    v19 = sub_1D9C7B86C();
    v25[0] = 0;
    v20 = [v18 JSONObjectWithData:v19 options:0 error:v25];

    v21 = v25[0];
    if (v20)
    {
      sub_1D9C7E32C();
      sub_1D99A5748(v15, v17);
      swift_unknownObjectRelease();
      (*(v8 + 8))(v10, v7);
      return sub_1D9A17E50(&v26, a2);
    }

    v22 = v21;
    v23 = sub_1D9C7B70C();

    swift_willThrow();
    sub_1D99A5748(v15, v17);

    result = (*(v8 + 8))(v10, v7);
  }

  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

char *sub_1D9B1E87C@<X0>(char **a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0) - 8);
  result = sub_1D9B1EA34(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  *a1 = result;
  return result;
}

char *sub_1D9B1E8F4(uint64_t a1)
{
  v2 = sub_1D9AF83AC(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1D9B1EDA0();
    v4 = 0;
    while (1)
    {
      v5 = sub_1D9C7E31C();
      if (!*(a1 + 16))
      {
        break;
      }

      v7 = sub_1D99ED894(v5, v6);
      v9 = v8;

      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }

      v10 = (*(a1 + 56) + 16 * v7);
      v12 = *v10;
      v11 = v10[1];
      v14 = *(v2 + 2);
      v13 = *(v2 + 3);

      if (v14 >= v13 >> 1)
      {
        v2 = sub_1D9AF83AC((v13 > 1), v14 + 1, 1, v2);
      }

      ++v4;
      *(v2 + 2) = v14 + 1;
      v15 = &v2[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      if (v3 == v4)
      {
        return v2;
      }
    }

LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

char *sub_1D9B1EA34(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24[-1] - v3;
  v5 = sub_1D9C7B80C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9A58830(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D99A6AE0(v4, &qword_1ECB51FD0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_1D9C7B81C();
    v11 = v10;
    v13 = sub_1D9B88EB8(v9, v10);
    v15 = v14;
    sub_1D99A5748(v9, v11);
    v16 = objc_opt_self();
    v17 = sub_1D9C7B86C();
    v24[0] = 0;
    v18 = [v16 JSONObjectWithData:v17 options:0 error:v24];

    v19 = v24[0];
    if (v18)
    {
      sub_1D9C7E32C();
      swift_unknownObjectRelease();
      sub_1D9A17E50(v25, v26);
      sub_1D99A579C(v26, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51608);
      if (swift_dynamicCast())
      {
        v20 = sub_1D9B1E8F4(v24[0]);
        sub_1D99A5748(v13, v15);

        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        (*(v6 + 8))(v8, v5);
        return v20;
      }

      sub_1D99A5748(v13, v15);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }

    else
    {
      v21 = v19;
      v22 = sub_1D9C7B70C();

      swift_willThrow();
      sub_1D99A5748(v13, v15);
    }

    (*(v6 + 8))(v8, v5);
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D9B1EDA0()
{
  result = qword_1EDD2C650;
  if (!qword_1EDD2C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C650);
  }

  return result;
}

uint64_t sub_1D9B1EDF8(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 < 1 || a4 <= 0.0)
  {
    *(v5 + 24) = 30;
    *(v5 + 16) = sub_1D9B1F3F4(30, 0.5, 0.5, 0.5);
    static Logger.argos.getter(v14);
    v15 = sub_1D9C7D8BC();
    v16 = sub_1D9C7E09C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D9962000, v15, v16, "Invalid Box Scorer Config. Create Box Scorer using default config.", v17, 2u);
      MEMORY[0x1DA7405F0](v17, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    *(v5 + 24) = v12;
    *(v5 + 16) = sub_1D9B1F3F4(v12, a4, a2, a3);
  }

  return v5;
}

void sub_1D9B1EFAC(double a1, double a2, double a3, double a4)
{
  v13 = sub_1D9C7D8DC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    static Logger.argos.getter(v16);
    v32 = sub_1D9C7D8BC();
    v33 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D9962000, v32, v33, "Invalid box input", v34, 2u);
      MEMORY[0x1DA7405F0](v34, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    return;
  }

  v17 = *(v4 + 24);
  v18 = v17;
  v19 = v17 * a1;
  if (COERCE__INT64(fabs(v19)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v20 = v19 & ~(v19 >> 63);
  if (v20 >= v17)
  {
    v20 = *(v4 + 24);
  }

  v21 = v18 * a2;
  if (COERCE__INT64(fabs(v18 * a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_46;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v22 = v21 & ~(v21 >> 63);
  if (v22 >= v17)
  {
    v22 = *(v4 + 24);
  }

  v23 = (a1 + a3) * v18;
  if (COERCE__INT64(fabs(v23)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_49;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((v23 & ~(v23 >> 63)) >= v17)
  {
    v24 = *(v4 + 24);
  }

  else
  {
    v24 = v23 & ~(v23 >> 63);
  }

  v25 = (a2 + a4) * v18;
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_52;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if ((v25 & ~(v25 >> 63)) >= v17)
  {
    v26 = *(v4 + 24);
  }

  else
  {
    v26 = v25 & ~(v25 >> 63);
  }

  if (v17 < 0)
  {
    goto LABEL_55;
  }

  v27 = *(v4 + 16);
  v28 = *(v27 + 16);
  if (v24 >= v28)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v29 = v27 + 32;
  v30 = *(*(v29 + 8 * v24) + 16);
  if (v26 >= v30)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v31 = v20 - 1;
  if (v20 < 2)
  {
    goto LABEL_33;
  }

  if (v20 > v28)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v26 >= *(*(v29 + 8 * v31) + 16))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_33:
  if (v22 < 2)
  {
    return;
  }

  if (v22 > v30)
  {
    goto LABEL_59;
  }

  if (v20 >= 2)
  {
    if (v20 <= v28)
    {
      if (v22 <= *(*(v29 + 8 * v31) + 16))
      {
        return;
      }

LABEL_62:
      __break(1u);
      return;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }
}

uint64_t sub_1D9B1F398()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D9B1F3F4(uint64_t result, double a2, double a3, double a4)
{
  v4 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v4 < 0)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v7 = result;
  if (result == -1)
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v9 = sub_1D9C7DF5C();
    *(v9 + 16) = v4;
    bzero((v9 + 32), 8 * v7 + 8);
  }

  v10 = sub_1D9AE662C(v9, v4);

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_76;
  }

  v11 = 0;
  v12 = v4 - 1;
  v13 = v7;
  v14 = 1;
  v15 = 0.0;
  while (2)
  {
    v16 = exp((v15 / v13 - a3) / a2 * ((v15 / v13 - a3) / a2 * -0.5));
    v17 = 0;
    do
    {
      v18 = exp((v17 / v13 - a4) / a2 * ((v17 / v13 - a4) / a2 * -0.5));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D9B1A788(v10);
      }

      if (v11 >= v10[2])
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return v10;
      }

      v19 = v10 + 4;
      v20 = &v10[v11 + 4];
      v21 = *v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v21;
      if ((result & 1) == 0)
      {
        result = sub_1D9B1A738(v21);
        v21 = result;
        *v20 = result;
      }

      if (v17 >= *(v21 + 16))
      {
        goto LABEL_57;
      }

      *(v21 + 8 * v17 + 32) = 0;
      if ((v14 & 1) == 0)
      {
        v22 = v10[2];
        if (v11 > v22)
        {
          goto LABEL_65;
        }

        v23 = *(v20 - 8);
        if (v17 >= *(v23 + 16))
        {
          goto LABEL_66;
        }

        if (v11 >= v22)
        {
          goto LABEL_67;
        }

        v24 = *v20;
        v25 = *(v23 + 8 * v17 + 32);
        result = swift_isUniquelyReferenced_nonNull_native();
        *v20 = v24;
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A738(v24);
          v24 = result;
          *v20 = result;
        }

        if (v17 >= *(v24 + 16))
        {
          goto LABEL_68;
        }

        *(v24 + 8 * v17 + 32) = v25 + *(v24 + 8 * v17 + 32);
      }

      if (v17)
      {
        if (v11 >= v10[2])
        {
          goto LABEL_62;
        }

        v26 = *v20;
        if (v17 > *(*v20 + 16))
        {
          goto LABEL_63;
        }

        v27 = *(v26 + 8 * v17 + 24);
        result = swift_isUniquelyReferenced_nonNull_native();
        *v20 = v26;
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A738(v26);
          v26 = result;
          *v20 = result;
        }

        if (v17 >= *(v26 + 16))
        {
          goto LABEL_64;
        }

        *(v26 + 8 * v17 + 32) = v27 + *(v26 + 8 * v17 + 32);
        if ((v14 & 1) == 0)
        {
          v28 = v10[2];
          if (v11 > v28)
          {
            goto LABEL_70;
          }

          v29 = *(v20 - 8);
          if (v17 > *(v29 + 16))
          {
            goto LABEL_71;
          }

          if (v11 >= v28)
          {
            goto LABEL_72;
          }

          v30 = *(v29 + 8 * v17 + 24);
          v31 = *v20;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v20 = v31;
          if ((result & 1) == 0)
          {
            result = sub_1D9B1A738(v31);
            v31 = result;
            *v20 = result;
          }

          if (v17 >= *(v31 + 16))
          {
            goto LABEL_73;
          }

          *(v31 + 8 * v17 + 32) = *(v31 + 8 * v17 + 32) - v30;
        }
      }

      if (v11 >= v10[2])
      {
        goto LABEL_58;
      }

      v32 = *v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v32;
      if ((result & 1) == 0)
      {
        result = sub_1D9B1A738(v32);
        v32 = result;
        *v20 = result;
      }

      if (v17 >= *(v32 + 16))
      {
        goto LABEL_59;
      }

      *(v32 + 8 * v17 + 32) = v16 * v18 + *(v32 + 8 * v17 + 32);
      ++v17;
    }

    while (v4 != v17);
    if (v11 != v7)
    {
      v14 = 0;
      v15 = ++v11;
      continue;
    }

    break;
  }

  if (v10[2] > v7)
  {
    v33 = v19[v7];
    if (*(v33 + 16) <= v7)
    {
      goto LABEL_78;
    }

    v34 = 0;
    v35 = *(v33 + 8 * v7 + 32);
LABEL_48:
    if (v34 >= v10[2])
    {
LABEL_61:
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

    else
    {
      v37 = 0;
      while (1)
      {
        v38 = v19[v34];
        result = swift_isUniquelyReferenced_nonNull_native();
        v19[v34] = v38;
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A738(v38);
          v38 = result;
          v19[v34] = result;
        }

        if (v37 >= *(v38 + 16))
        {
          break;
        }

        *(v38 + 8 * v37 + 32) = *(v38 + 8 * v37 + 32) / v35;
        if (v12 == v37)
        {
          if (v34++ == v7)
          {
            return v10;
          }

          goto LABEL_48;
        }

        ++v37;
        if (v34 >= v10[2])
        {
          goto LABEL_61;
        }
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_1D9B1F858(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v43 = a3;
  v45 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534B0);
  v12 = *(v11 - 8);
  v47 = v11;
  v48 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v37 - v13;
  v38 = sub_1D9C7DA2C();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D9C7DA4C();
  v37 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9C7D06C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1E69E7CC0];
  *(v5 + 32) = 2;
  *(v5 + 40) = v22;
  *(v5 + 48) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = 0;
  *(v5 + 56) = a4;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = *(v19 + 16);
  v42 = v18;
  v24(v21, a3, v18);
  v25 = *(v19 + 80);
  v39 = v19;
  v26 = (v25 + 24) & ~v25;
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  (*(v19 + 32))(v27 + v26, v21, v18);
  aBlock[4] = sub_1D9B21C40;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_29;
  v28 = _Block_copy(aBlock);
  v29 = a1;

  sub_1D9C7DA3C();
  v49 = MEMORY[0x1E69E7CC0];
  sub_1D9B21BC4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0);
  v30 = v38;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v17, v15, v28);
  _Block_release(v28);
  (*(v41 + 8))(v15, v30);
  (*(v37 + 8))(v17, v40);

  v49 = v29;
  aBlock[0] = v45;
  v31 = sub_1D9C7E0FC();
  v32 = v44;
  (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534B8);
  sub_1D9A0835C(0, &qword_1EDD35490);
  sub_1D99C7C60(&unk_1EDD2C698, &qword_1ECB534B8);
  sub_1D9B21CA4();
  v33 = v46;
  sub_1D9C7D95C();
  sub_1D9B21D0C(v32);
  swift_allocObject();
  swift_weakInit();

  sub_1D99C7C60(&qword_1EDD2C6A8, &qword_1ECB534B0);
  v34 = v47;
  v35 = sub_1D9C7D96C();

  (*(v39 + 8))(v43, v42);
  (*(v48 + 8))(v33, v34);
  *(v5 + 24) = v35;

  return v5;
}

uint64_t sub_1D9B1FF10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9B20D3C(a2);
  }

  return result;
}

uint64_t sub_1D9B1FF70(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9B20478(a1);
  }

  return result;
}

uint64_t sub_1D9B1FFD0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = sub_1D9C7DA7C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 16);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_1D9C7DA9C();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    v4 = sub_1D9AFAE2C(0, v4[2] + 1, 1, v4);
    *(v12 + 5) = v4;
    goto LABEL_16;
  }

  v20 = *(v2 + 32);
  if (v20 != 2)
  {
    static Logger.argos.getter(v12);
    v25 = sub_1D9C7D8BC();
    v26 = sub_1D9C7E09C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = v20 & 1;
      _os_log_impl(&dword_1D9962000, v25, v26, "Valid state %{BOOL}d", v27, 8u);
      MEMORY[0x1DA7405F0](v27, -1, -1);
    }

    (v4[1])(v12, v3);
    v24 = v20 & 1;
    return v38(v24);
  }

  if (*(v2 + 33))
  {
    static Logger.argos.getter(v6);
    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E09C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D9962000, v21, v22, "Publisher timed out. Default false.", v23, 2u);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (v4[1])(v6, v3);
    v24 = 0;
    return v38(v24);
  }

  v12 = v2;
  if (!*(v2 + 48))
  {
    sub_1D9B20F78();
  }

  static Logger.argos.getter(v9);
  v29 = sub_1D9C7D8BC();
  v30 = sub_1D9C7E09C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1D9962000, v29, v30, "Pending values", v31, 2u);
    MEMORY[0x1DA7405F0](v31, -1, -1);
  }

  (v4[1])(v9, v3);
  v2 = swift_allocObject();
  v32 = v39;
  *(v2 + 16) = v38;
  *(v2 + 24) = v32;
  swift_beginAccess();
  v4 = *(v12 + 5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 5) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v35 = v4[2];
  v34 = v4[3];
  if (v35 >= v34 >> 1)
  {
    v4 = sub_1D9AFAE2C((v34 > 1), v35 + 1, 1, v4);
  }

  v4[2] = v35 + 1;
  v36 = &v4[2 * v35];
  v36[4] = sub_1D9B21C14;
  v36[5] = v2;
  *(v12 + 5) = v4;
  return swift_endAccess();
}

uint64_t sub_1D9B20478(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_1D9C7D06C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = sub_1D9C7D8DC();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9C7DA7C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + 16);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  v19 = sub_1D9C7DA9C();
  result = (*(v13 + 8))(v16, v12);
  if (v19)
  {
    static Logger.argos.getter(v11);
    v21 = *(v4 + 16);
    v22 = v41;
    v21(v8, v41, v3);
    v38 = v11;
    v23 = sub_1D9C7D8BC();
    v24 = sub_1D9C7E09C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v36 = v2;
      v26 = v25;
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136315138;
      v21(v37, v8, v3);
      v28 = sub_1D9C7DD0C();
      v30 = v29;
      (*(v4 + 8))(v8, v3);
      v31 = sub_1D9A0E224(v28, v30, &v42);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1D9962000, v23, v24, "Received values %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      v32 = v27;
      v22 = v41;
      MEMORY[0x1DA7405F0](v32, -1, -1);
      v33 = v26;
      v2 = v36;
      MEMORY[0x1DA7405F0](v33, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    (*(v39 + 8))(v38, v40);
    result = sub_1D9B20D3C(v22);
    v34 = *(v2 + 32);
    if (v34 != 2)
    {
      return sub_1D9B20A80(v34 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9B2084C()
{
  v1 = v0;
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7DA7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1D9C7DA9C();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    static Logger.argos.getter(v5);
    v14 = sub_1D9C7D8BC();
    v15 = sub_1D9C7E09C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D9962000, v14, v15, "Enable state timed out", v16, 2u);
      MEMORY[0x1DA7405F0](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    *(v1 + 33) = 1;
    sub_1D9B20A80(*(v1 + 32) & 1);
    return sub_1D9B21800();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9B20A80(char a1)
{
  v2 = v1;
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D9C7DA7C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v2 + 16);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1D9C7DA9C();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    swift_beginAccess();
    v16 = *(*(v2 + 40) + 16);
    static Logger.argos.getter(v7);
    v17 = sub_1D9C7D8BC();
    v18 = sub_1D9C7E09C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v16;
      _os_log_impl(&dword_1D9962000, v17, v18, "Releasing %ld completion(s)", v19, 0xCu);
      MEMORY[0x1DA7405F0](v19, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v20 = *(v2 + 40);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = a1 & 1;

      v23 = v20 + 40;
      do
      {
        v24 = *(v23 - 8);
        v26 = v22;

        v24(&v26);

        v23 += 16;
        --v21;
      }

      while (v21);
    }

    *(v2 + 40) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9B20D3C(uint64_t a1)
{
  v3 = sub_1D9C7D06C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7DA7C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + 16);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1D9C7DA9C();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    (*(v4 + 16))(v6, a1, v3);
    result = (*(v4 + 88))(v6, v3);
    if (result == *MEMORY[0x1E69BDB28])
    {
      *(v1 + 32) = 0;
      sub_1D9B21800();
      return (*(v4 + 8))(v6, v3);
    }

    if (result != *MEMORY[0x1E69BDB18])
    {
      if (result != *MEMORY[0x1E69BDB20])
      {
        return (*(v4 + 8))(v6, v3);
      }

      *(v1 + 32) = 1;
      return sub_1D9B21800();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9B20F78()
{
  v1 = sub_1D9C7DA2C();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v41 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D9C7DA4C();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9C7DA1C();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v39 - v7;
  v53 = sub_1D9C7DA6C();
  v47 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v39 - v11;
  v12 = sub_1D9C7E14C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9C7DA7C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = v0;
  v21 = *(v0 + 16);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16, v18);
  v22 = v21;
  LOBYTE(v21) = sub_1D9C7DA9C();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    sub_1D9A0835C(0, &qword_1EDD2C3B8);
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D9B21BC4(&qword_1EDD2A6A0, MEMORY[0x1E69E80B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53498);
    sub_1D99C7C60(&qword_1EDD2A710, &unk_1ECB53498);
    sub_1D9C7E34C();
    v24 = sub_1D9C7E15C();
    (*(v13 + 8))(v15, v12);
    v25 = v52;
    *(v52 + 48) = v24;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    sub_1D9C7DA5C();
    v26 = v46;
    sub_1D9C7DA8C();
    v47 = *(v47 + 8);
    (v47)(v9, v53);
    v28 = v49;
    v27 = v50;
    v29 = *(v50 + 104);
    v30 = v51;
    v29(v49, *MEMORY[0x1E69E7F40], v51);
    v31 = v48;
    *v48 = 0;
    v29(v31, *MEMORY[0x1E69E7F28], v30);
    MEMORY[0x1DA73E3E0](v26, v28, v31, ObjectType);
    swift_unknownObjectRelease();
    v32 = *(v27 + 8);
    v33 = v31;
    v34 = v25;
    v32(v33, v30);
    v32(v28, v30);
    result = (v47)(v26, v53);
    if (*(v25 + 48))
    {
      swift_getObjectType();
      v35 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1D9B21C0C;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D9A0A1E0;
      aBlock[3] = &block_descriptor_19;
      v36 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v37 = v39;
      sub_1D9C7DA3C();
      v38 = v41;
      sub_1D9B21714();
      sub_1D9C7E1BC();
      _Block_release(v36);
      swift_unknownObjectRelease();
      (*(v43 + 8))(v38, v44);
      (*(v40 + 8))(v37, v42);

      if (*(v34 + 48))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1D9C7E1DC();
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9B216B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9B2084C();
  }

  return result;
}

uint64_t sub_1D9B21714()
{
  sub_1D9C7DA2C();
  sub_1D9B21BC4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0);
  return sub_1D9C7E34C();
}

uint64_t sub_1D9B21800()
{
  v1 = v0;
  v19 = sub_1D9C7DA2C();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9C7DA4C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7DA7C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + 16);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1D9C7DA9C();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (*(v1 + 48))
    {
      swift_getObjectType();
      aBlock[4] = faiss::NormalizationTransform::~NormalizationTransform;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D9A0A1E0;
      aBlock[3] = &block_descriptor_9;
      v17 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      sub_1D9C7DA3C();
      sub_1D9B21714();
      sub_1D9C7E1BC();
      _Block_release(v17);
      swift_unknownObjectRelease();
      (*(v2 + 8))(v4, v19);
      (*(v6 + 8))(v8, v5);
      if (*(v1 + 48))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1D9C7E1CC();
        swift_unknownObjectRelease();
      }

      *(v1 + 48) = 0;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9B21B38()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9B21BC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9B21C40()
{
  v1 = *(sub_1D9C7D06C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D9B1FF10(v2, v3);
}

unint64_t sub_1D9B21CA4()
{
  result = qword_1EDD2C3F0;
  if (!qword_1EDD2C3F0)
  {
    sub_1D9A0835C(255, &qword_1EDD35490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C3F0);
  }

  return result;
}

uint64_t sub_1D9B21D0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9B21D8C(void *a1, unint64_t a2, int a3, uint64_t a4)
{
  v326 = a4;
  v322 = a3;
  v332 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0);
  v298 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v300 = v278 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v301 = v278 - v9;
  v303 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v303);
  v302 = (v278 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v304);
  v306 = v278 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v307 = v278 - v13;
  v14 = sub_1D9C7B80C();
  v15 = *(v14 - 8);
  v320 = v14;
  v321 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v305 = v278 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v323 = v278 - v18;
  v19 = sub_1D9C7D8DC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v278 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v318 = v278 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v315 = (v278 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v311 = (v278 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v309 = v278 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v297 = v278 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v310 = v278 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v313 = v278 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v308 = v278 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v312 = v278 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v314 = v278 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v319 = v278 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = v278 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = v278 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = v278 - v52;
  v316 = a1;
  v330 = a1;
  v331 = a2;

  MEMORY[0x1DA73DF90](1868983881, 0xE400000000000000);
  v55 = v330;
  v54 = v331;

  v324 = v55;
  v56 = sub_1D9C16ED0();
  if (v56 == 72)
  {
    v57 = v20;
    v58 = v19;

    static Logger.argos.getter(v22);

    v59 = sub_1D9C7D8BC();
    v60 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v330 = v62;
      *v61 = 136315138;
      v63 = sub_1D9A0E224(v324, v54, &v330);

      *(v61 + 4) = v63;
      _os_log_impl(&dword_1D9962000, v59, v60, "TrialModelProvider failed: model info factor name %s not a supported Trial Factor Name", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x1DA7405F0](v62, -1, -1);
      MEMORY[0x1DA7405F0](v61, -1, -1);
    }

    else
    {
    }

    (*(v57 + 8))(v22, v58);
    goto LABEL_28;
  }

  v64 = v56;
  v296 = a2;
  static Logger.argos.getter(v53);
  sub_1D9A3E0E0(v50);
  v293 = v20;
  v67 = *(v20 + 8);
  v65 = v20 + 8;
  v66 = v67;
  v67(v53, v19);

  v68 = sub_1D9C7D8BC();
  v69 = sub_1D9C7E09C();

  v70 = os_log_type_enabled(v68, v69);
  v317 = v19;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v330 = v72;
    *v71 = 136315138;
    *(v71 + 4) = sub_1D9A0E224(v324, v54, &v330);
    _os_log_impl(&dword_1D9962000, v68, v69, "TrialModelProvider: init with info factor %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    MEMORY[0x1DA7405F0](v72, -1, -1);
    v73 = v71;
    v74 = v317;
    MEMORY[0x1DA7405F0](v73, -1, -1);
  }

  else
  {
    v74 = v19;
  }

  v66(v50, v74);
  v75 = sub_1D9C04AB0(v64, v322, 0x7473696C70, 0xE500000000000000);
  v77 = v76;
  static Logger.argos.getter(v47);

  v78 = sub_1D9C7D8BC();
  v79 = sub_1D9C7E09C();

  v80 = os_log_type_enabled(v78, v79);
  v295 = v66;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v294 = v65;
    v82 = v81;
    v83 = v66;
    v84 = swift_slowAlloc();
    v330 = v84;
    *v82 = 136315394;
    v85 = sub_1D9A0E224(v324, v54, &v330);

    *(v82 + 4) = v85;
    *(v82 + 12) = 2080;
    *(v82 + 14) = sub_1D9A0E224(v75, v77, &v330);
    _os_log_impl(&dword_1D9962000, v78, v79, "TrialModelProvider: init with info factor %s, info path %s", v82, 0x16u);
    swift_arrayDestroy();
    v86 = v84;
    v74 = v317;
    MEMORY[0x1DA7405F0](v86, -1, -1);
    v87 = v82;
    v65 = v294;
    MEMORY[0x1DA7405F0](v87, -1, -1);

    v83(v47, v74);
  }

  else
  {

    v66(v47, v74);
  }

  sub_1D9C7B75C();

  v88 = sub_1D9C7B81C();
  v89 = v321;
  v90 = v88;
  v92 = v91;
  v93 = objc_opt_self();
  v94 = sub_1D9C7B86C();
  v330 = 0;
  v95 = [v93 propertyListWithData:v94 options:1 format:0 error:&v330];

  if (!v95)
  {
    v106 = v330;

    v107 = sub_1D9C7B70C();

    swift_willThrow();
LABEL_23:
    v108 = v319;
    static Logger.argos.getter(v319);
    sub_1D99AF2FC(v90, v92);
    v109 = sub_1D9C7D8BC();
    v110 = sub_1D9C7E0AC();
    sub_1D99A5748(v90, v92);
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v330 = v112;
      *v111 = 136315138;
      sub_1D99AF2FC(v90, v92);
      v113 = sub_1D9C7B82C();
      v294 = v65;
      v114 = v92;
      v115 = v113;
      v117 = v116;
      sub_1D99A5748(v90, v114);
      v118 = sub_1D9A0E224(v115, v117, &v330);

      *(v111 + 4) = v118;
      _os_log_impl(&dword_1D9962000, v109, v110, "TrialModelProvider failed to load info plist %s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
      MEMORY[0x1DA7405F0](v112, -1, -1);
      MEMORY[0x1DA7405F0](v111, -1, -1);

      sub_1D99A5748(v90, v114);
      v295(v319, v317);
LABEL_27:
      (*(v89 + 8))(v323, v320);
      goto LABEL_28;
    }

    sub_1D99A5748(v90, v92);
    v119 = v108;
LABEL_26:
    v295(v119, v74);
    goto LABEL_27;
  }

  v96 = v330;
  sub_1D9C7E32C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB524A8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_23;
  }

  v97 = v328;
  if (!*(v328 + 16))
  {

    v99 = v318;
    goto LABEL_31;
  }

  v98 = sub_1D99ED894(0x4C45444F4D5F4956, 0xE800000000000000);
  v99 = v318;
  if ((v100 & 1) == 0)
  {

LABEL_31:
    static Logger.argos.getter(v99);
    v121 = v296;

    v122 = sub_1D9C7D8BC();
    v123 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v330 = v125;
      *v124 = 136315138;
      v126 = sub_1D9A0E224(v316, v121, &v330);
      v324 = v92;
      v127 = v126;

      *(v124 + 4) = v127;
      _os_log_impl(&dword_1D9962000, v122, v123, "TrialModelProvider missing VI_MODEL dict for model name %s", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v125);
      MEMORY[0x1DA7405F0](v125, -1, -1);
      MEMORY[0x1DA7405F0](v124, -1, -1);

      sub_1D99A5748(v90, v324);
      v119 = v318;
    }

    else
    {

      sub_1D99A5748(v90, v92);
      v119 = v99;
    }

    goto LABEL_26;
  }

  sub_1D99A579C(*(v97 + 56) + 32 * v98, &v330);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v101 = v328;
  if (*(v328 + 16) && (v102 = sub_1D99ED894(0x6361466C65646F6DLL, 0xEF656D614E726F74), (v103 & 1) != 0) && (sub_1D99A579C(*(v101 + 56) + 32 * v102, &v330), (swift_dynamicCast() & 1) != 0))
  {
    v105 = v328;
    v104 = v329;
  }

  else
  {
    v105 = 0;
    v104 = 0xE000000000000000;
  }

  v128 = sub_1D9C16ED0();
  if (v128 == 72)
  {

    v129 = v315;
    static Logger.argos.getter(v315);

    v130 = sub_1D9C7D8BC();
    v131 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v324 = v92;
      v133 = v132;
      v134 = swift_slowAlloc();
      v294 = v65;
      v135 = v74;
      v136 = v134;
      v330 = v134;
      *v133 = 136315138;
      v137 = sub_1D9A0E224(v105, v104, &v330);

      *(v133 + 4) = v137;
      _os_log_impl(&dword_1D9962000, v130, v131, "TrialModelProvider failed: model factor name %s not a supported Trial Factor Name", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v136);
      MEMORY[0x1DA7405F0](v136, -1, -1);
      MEMORY[0x1DA7405F0](v133, -1, -1);

      sub_1D99A5748(v90, v324);
      v295(v129, v135);
      goto LABEL_27;
    }

    sub_1D99A5748(v90, v92);
    v119 = v129;
    goto LABEL_26;
  }

  v138 = v128;

  v139 = sub_1D9C04AB0(v138, v322, 0, 0xE000000000000000);
  v141 = v140;
  if (!*(v101 + 16) || (v142 = v139, v143 = sub_1D99ED894(1701605234, 0xE400000000000000), (v144 & 1) == 0) || (sub_1D99A579C(*(v101 + 56) + 32 * v143, &v330), (swift_dynamicCast() & 1) == 0))
  {

    v156 = v314;
    static Logger.argos.getter(v314);
    v157 = sub_1D9C7D8BC();
    v158 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      *v159 = 0;
      _os_log_impl(&dword_1D9962000, v157, v158, "TrialModelProvider: found model without role", v159, 2u);
      MEMORY[0x1DA7405F0](v159, -1, -1);
    }

    sub_1D99A5748(v90, v92);
    v119 = v156;
    goto LABEL_26;
  }

  v314 = v142;
  v319 = v141;
  v146 = v328;
  v145 = v329;

  v147 = sub_1D9AFE290();
  if (v147 == 9)
  {

    v148 = v311;
    static Logger.argos.getter(v311);

    v149 = sub_1D9C7D8BC();
    v150 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      v324 = v92;
      v152 = v151;
      v153 = v74;
      v154 = swift_slowAlloc();
      v330 = v154;
      *v152 = 136315138;
      v155 = sub_1D9A0E224(v146, v145, &v330);

      *(v152 + 4) = v155;
      _os_log_impl(&dword_1D9962000, v149, v150, "TrialModelProvider: found model with unknown role %s", v152, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v154);
      MEMORY[0x1DA7405F0](v154, -1, -1);
      MEMORY[0x1DA7405F0](v152, -1, -1);

      sub_1D99A5748(v90, v324);
      v295(v148, v153);
    }

    else
    {

      sub_1D99A5748(v90, v92);
      v295(v148, v74);
    }

    (*(v321 + 8))(v323, v320);
    goto LABEL_28;
  }

  v160 = v147;

  v327 = sub_1D9A443C0(MEMORY[0x1E69E7CC0]);
  v161 = *(v101 + 16);
  v324 = v92;
  if (!v161 || (v162 = sub_1D99ED894(0x737465737361, 0xE600000000000000), (v163 & 1) == 0))
  {
LABEL_126:
    if (*(v101 + 16) && (v236 = sub_1D99ED894(0x61656869746C756DLL, 0xE900000000000064), (v237 & 1) != 0) && (sub_1D99A579C(*(v101 + 56) + 32 * v236, &v330), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F50), (swift_dynamicCast() & 1) != 0))
    {
      v238 = sub_1D9BDCDE4(v328);
    }

    else
    {
      v238 = 0;
    }

    if (*(v101 + 16) && (v239 = sub_1D99ED894(0x6E65736572706572, 0xEE006E6F69746174), (v240 & 1) != 0) && (v287 = v160, sub_1D99A579C(*(v101 + 56) + 32 * v239, &v330), (swift_dynamicCast() & 1) != 0))
    {
      v286 = v90;
      v241 = sub_1D9C7E56C();

      if (!v241)
      {
        v322 = 0;
        goto LABEL_143;
      }

      if (v241 == 1)
      {
        v322 = 1;
LABEL_143:
        sub_1D9C7B75C();

        if (*(v101 + 16) && (v249 = sub_1D99ED894(7238261, 0xE300000000000000), (v250 & 1) != 0) && (sub_1D99A579C(*(v101 + 56) + 32 * v249, &v330), (swift_dynamicCast() & 1) != 0))
        {
          v251 = v329;
          v319 = v328;
        }

        else
        {
          v319 = 0;
          v251 = 0xE000000000000000;
        }

        if (*(v101 + 16) && (v252 = sub_1D99ED894(0x44496C65646F6DLL, 0xE700000000000000), (v253 & 1) != 0))
        {
          sub_1D99A579C(*(v101 + 56) + 32 * v252, &v330);

          if (swift_dynamicCast())
          {
            v254 = v328;
            v255 = v329;
LABEL_154:
            swift_beginAccess();
            v256 = v327;
            v257 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
            v258 = v301;
            (*(*(v257 - 8) + 56))(v301, 1, 1, v257);
            v259 = v302;
            v260 = v296;
            *v302 = v316;
            *(v259 + 8) = v260;
            v261 = v303;
            v263 = v320;
            v262 = v321;
            (*(v321 + 16))(v259 + *(v303 + 20), v305, v320);
            v264 = (v259 + v261[6]);
            *v264 = v319;
            v264[1] = v251;
            v265 = (v259 + v261[7]);
            *v265 = v254;
            v265[1] = v255;
            *(v259 + v261[8]) = v287;
            *(v259 + v261[9]) = v256;
            *(v259 + v261[12]) = v322;
            *(v259 + v261[10]) = v238;
            v266 = v300;
            sub_1D9B24898(v258, v300);
            v267 = (*(v298 + 80) + 16) & ~*(v298 + 80);
            v268 = (v299 + v267 + 7) & 0xFFFFFFFFFFFFFFF8;
            v269 = swift_allocObject();
            sub_1D9B24908(v266, v269 + v267);
            *(v269 + v268) = v256;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB534C0);
            swift_allocObject();
            swift_bridgeObjectRetain_n();
            v270 = sub_1D9C1A964(2, sub_1D9B24978, v269);

            sub_1D99A5748(v286, v324);
            sub_1D9B24A1C(v258);
            v271 = *(v262 + 8);
            v271(v305, v263);
            v271(v323, v263);
            *(v259 + v261[11]) = v270;
            v272 = v325;
            sub_1D9B24A84(v259, v325 + OBJC_IVAR____TtC12VisualLookUp18TrialModelProvider_info);

            return v272;
          }
        }

        else
        {
        }

        v254 = 0;
        v255 = 0xE000000000000000;
        goto LABEL_154;
      }

      v90 = v286;
    }

    else
    {
    }

    v242 = v309;
    static Logger.argos.getter(v309);
    v243 = sub_1D9C7D8BC();
    v244 = sub_1D9C7E0AC();
    v245 = os_log_type_enabled(v243, v244);
    v246 = v324;
    v247 = v321;
    if (v245)
    {
      v248 = swift_slowAlloc();
      *v248 = 0;
      _os_log_impl(&dword_1D9962000, v243, v244, "TrialModelProvider: found model with unknown representation", v248, 2u);
      MEMORY[0x1DA7405F0](v248, -1, -1);
    }

    sub_1D99A5748(v90, v246);
    v295(v242, v74);
    (*(v247 + 8))(v323, v320);

    goto LABEL_28;
  }

  v287 = v160;
  v286 = v90;
  sub_1D99A579C(*(v101 + 56) + 32 * v162, &v330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51608);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_125:
    v74 = v317;
    v90 = v286;
    v160 = v287;
    goto LABEL_126;
  }

  v165 = 0;
  v166 = *(v328 + 64);
  v280 = v328 + 64;
  v284 = v328;
  v167 = 1 << *(v328 + 32);
  v168 = -1;
  if (v167 < 64)
  {
    v168 = ~(-1 << v167);
  }

  v169 = v168 & v166;
  v279 = (v167 + 63) >> 6;
  v315 = (v293 + 16);
  v285 = (v321 + 56);
  v278[1] = v321 + 16;
  *&v164 = 136315650;
  v282 = v164;
  *&v164 = 136315906;
  v281 = v164;
  v170 = v295;
  v294 = v65;
  if ((v168 & v166) == 0)
  {
LABEL_59:
    while (1)
    {
      v171 = v165 + 1;
      if (__OFADD__(v165, 1))
      {
        break;
      }

      if (v171 >= v279)
      {

        goto LABEL_125;
      }

      v169 = *(v280 + 8 * v171);
      ++v165;
      if (v169)
      {
        v165 = v171;
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_163:
    __break(1u);
    return result;
  }

  while (1)
  {
LABEL_63:
    v172 = (v165 << 10) | (16 * __clz(__rbit64(v169)));
    v173 = (*(v284 + 48) + v172);
    v175 = *v173;
    v174 = v173[1];
    v176 = *(v284 + 56) + v172;
    v177 = *v176;
    v178 = *(v176 + 8);
    swift_bridgeObjectRetain_n();

    v289 = v175;
    v318 = v174;
    v290 = sub_1D99AAF30();
    if (v290 == 12)
    {
      (*(v321 + 8))(v323, v320);

      sub_1D99A5748(v286, v324);

      goto LABEL_161;
    }

    v288 = v177;
    v330 = v177;
    v331 = v178;
    v328 = 46;
    v329 = 0xE100000000000000;
    sub_1D99A57F8();
    result = sub_1D9C7E2AC();
    if (!*(result + 16))
    {
      goto LABEL_163;
    }

    v180 = *(result + 32);
    v179 = *(result + 40);
    swift_bridgeObjectRetain_n();

    v291 = sub_1D9C16ED0();
    if (v291 == 72)
    {
      break;
    }

    v293 = v178;

    if (qword_1EDD354B8 != -1)
    {
      swift_once();
    }

    v292 = byte_1EDD354C0;
    if (byte_1EDD354C0 != 1)
    {
      goto LABEL_78;
    }

    if (sub_1D9A75D94())
    {
      v181 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v181 = &off_1ECB51BA8;
      }
    }

    else
    {
      v181 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v181 = &qword_1EDD355A8;
      }
    }

    v182 = *(*v181 + 32);

    v183 = sub_1D9C7DC4C();
    LODWORD(v182) = [v182 BOOLForKey_];

    v170 = v295;
    if (v182)
    {
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
      }

      v184 = v317;
      v185 = __swift_project_value_buffer(v317, qword_1EDD2C990);
      v311 = *v315;
      (v311)(v312, v185, v184);
      v170 = v295;
    }

    else
    {
LABEL_78:
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
      }

      v186 = v317;
      v187 = __swift_project_value_buffer(v317, qword_1EDD354D8);
      v311 = *v315;
      (v311)(v312, v187, v186);
      if ((v292 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    if (sub_1D9A75D94())
    {
      v188 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v188 = &off_1ECB51BA8;
      }
    }

    else
    {
      v188 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v188 = &qword_1EDD355A8;
      }
    }

    v189 = *(*v188 + 32);

    v190 = sub_1D9C7DC4C();
    LODWORD(v189) = [v189 BOOLForKey_];

    if (v189)
    {
      v191 = v308;
      v192 = v308;
      v193 = v312;
      v194 = v317;
      goto LABEL_91;
    }

LABEL_88:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v194 = v317;
    v193 = __swift_project_value_buffer(v317, qword_1EDD354D8);
    v191 = v308;
    v192 = v308;
LABEL_91:
    (v311)(v192, v193, v194);
    v170(v312, v194);

    v195 = sub_1D9C7D8BC();
    v196 = sub_1D9C7E09C();

    LODWORD(v283) = v196;
    v197 = v196;
    v198 = v195;
    if (os_log_type_enabled(v195, v197))
    {
      v199 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      v330 = v200;
      *v199 = v282;
      *(v199 + 4) = sub_1D9A0E224(v289, v318, &v330);
      *(v199 + 12) = 2080;
      *(v199 + 14) = sub_1D9A0E224(v288, v293, &v330);
      *(v199 + 22) = 2080;
      v201 = sub_1D9C03CBC(v291);
      v203 = v65;
      v204 = sub_1D9A0E224(v201, v202, &v330);

      *(v199 + 24) = v204;
      v65 = v203;
      _os_log_impl(&dword_1D9962000, v198, v283, "TrialModelProvider: retrieving path for model related asset %s %s %s", v199, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v200, -1, -1);
      MEMORY[0x1DA7405F0](v199, -1, -1);

      v205 = v295;
      v295(v308, v317);
    }

    else
    {

      v205 = v295;
      v295(v191, v317);
    }

    sub_1D9C04AB0(v291, v322, 1852797802, 0xE400000000000000);
    v206 = v307;
    sub_1D9C7B75C();

    v283 = *v285;
    v283(v206, 0, 1, v320);
    swift_beginAccess();
    sub_1D9AC7E10(v206, v290);
    swift_endAccess();
    if (!v292)
    {
      goto LABEL_104;
    }

    if (sub_1D9A75D94())
    {
      v207 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v207 = &off_1ECB51BA8;
      }
    }

    else
    {
      v207 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v207 = &qword_1EDD355A8;
      }
    }

    v208 = *(*v207 + 32);

    v209 = sub_1D9C7DC4C();
    LODWORD(v208) = [v208 BOOLForKey_];

    if (v208)
    {
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
      }

      v210 = v317;
      v211 = __swift_project_value_buffer(v317, qword_1EDD2C990);
      (v311)(v313, v211, v210);
    }

    else
    {
LABEL_104:
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
      }

      v212 = v317;
      v213 = __swift_project_value_buffer(v317, qword_1EDD354D8);
      (v311)(v313, v213, v212);
      if ((v292 & 1) == 0)
      {
LABEL_114:
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v219 = v317;
        v218 = __swift_project_value_buffer(v317, qword_1EDD354D8);
        v217 = v310;
        goto LABEL_117;
      }
    }

    if (sub_1D9A75D94())
    {
      v214 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v214 = &off_1ECB51BA8;
      }
    }

    else
    {
      v214 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v214 = &qword_1EDD355A8;
      }
    }

    v215 = *(*v214 + 32);

    v216 = sub_1D9C7DC4C();
    LODWORD(v215) = [v215 BOOLForKey_];

    if (!v215)
    {
      goto LABEL_114;
    }

    v217 = v310;
    v218 = v313;
    v219 = v317;
LABEL_117:
    (v311)(v217, v218, v219);
    v169 &= v169 - 1;
    v205(v313, v219);

    v220 = sub_1D9C7D8BC();
    v221 = sub_1D9C7E09C();

    LODWORD(v311) = v221;
    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v328 = v223;
      *v222 = v281;
      swift_beginAccess();
      v224 = v327;
      if (*(v327 + 16) && (v225 = sub_1D99EE004(v290), (v226 & 1) != 0))
      {
        (*(v321 + 16))(v306, *(v224 + 56) + *(v321 + 72) * v225, v320);
        v227 = 0;
      }

      else
      {
        v227 = 1;
      }

      v283(v306, v227, 1, v320);
      swift_endAccess();
      v228 = sub_1D9C7DCEC();
      v230 = sub_1D9A0E224(v228, v229, &v328);

      *(v222 + 4) = v230;
      *(v222 + 12) = 2080;
      v231 = sub_1D9A0E224(v289, v318, &v328);

      *(v222 + 14) = v231;
      *(v222 + 22) = 2080;
      v232 = sub_1D9A0E224(v288, v293, &v328);

      *(v222 + 24) = v232;
      *(v222 + 32) = 2080;
      v233 = sub_1D9C03CBC(v291);
      v235 = sub_1D9A0E224(v233, v234, &v328);

      *(v222 + 34) = v235;
      _os_log_impl(&dword_1D9962000, v220, v311, "TrialModelProvider: stored url '%s' for model related asset %s %s %s", v222, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v223, -1, -1);
      MEMORY[0x1DA7405F0](v222, -1, -1);

      v65 = v294;
      v170 = v295;
      result = (v295)(v310, v317);
      if (!v169)
      {
        goto LABEL_59;
      }
    }

    else
    {

      result = (v205)(v310, v317);
      v170 = v205;
      if (!v169)
      {
        goto LABEL_59;
      }
    }
  }

  static Logger.argos.getter(v297);

  v273 = sub_1D9C7D8BC();
  v274 = sub_1D9C7E0AC();

  if (os_log_type_enabled(v273, v274))
  {
    v275 = swift_slowAlloc();
    v276 = swift_slowAlloc();
    v330 = v276;
    *v275 = 136315138;
    v277 = sub_1D9A0E224(v180, v179, &v330);

    *(v275 + 4) = v277;
    _os_log_impl(&dword_1D9962000, v273, v274, "TrialModelProvider failed: asset factor name %s not a supported Trial Factor Name", v275, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v276);
    MEMORY[0x1DA7405F0](v276, -1, -1);
    MEMORY[0x1DA7405F0](v275, -1, -1);
  }

  else
  {
  }

  sub_1D99A5748(v286, v324);
  v170(v297, v317);
  (*(v321 + 8))(v323, v320);
LABEL_161:

LABEL_28:
  type metadata accessor for TrialModelProvider();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1D9B247CC()
{
  sub_1D99A404C(v0 + OBJC_IVAR____TtC12VisualLookUp18TrialModelProvider_info);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrialModelProvider()
{
  result = qword_1EDD33BA8;
  if (!qword_1EDD33BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B24898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B24908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B24978@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_1D99A92D8(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1D9B24A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9B24A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLModelInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_1D9B24AE8@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = sub_1D9C7B80C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = *(v1 + *(type metadata accessor for MLModelInfo(0) + 36));
  if (*(v15 + 16) && (v16 = sub_1D99EE004(2), (v17 & 1) != 0))
  {
    (*(v9 + 16))(v11, *(v15 + 56) + *(v9 + 72) * v16, v8);
    (*(v9 + 32))(v14, v11, v8);
    v27 = sub_1D9C7B81C();
    v22 = v21;
    sub_1D9C7B54C();
    swift_allocObject();
    sub_1D9C7B53C();
    sub_1D9B3472C();
    v26 = v22;
    sub_1D9C7B52C();
    (*(v9 + 8))(v14, v8);
    sub_1D99A5748(v27, v26);

    v23 = v33;
    *(a1 + 64) = v32;
    *(a1 + 80) = v23;
    *(a1 + 96) = v34;
    v24 = v29;
    *a1 = v28;
    *(a1 + 16) = v24;
    result = v31;
    *(a1 + 32) = v30;
    *(a1 + 48) = result;
  }

  else
  {
    static Logger.argos.getter(v7);
    v18 = sub_1D9C7D8BC();
    v19 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D9962000, v18, v19, "missing metadata", v20, 2u);
      MEMORY[0x1DA7405F0](v20, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    result.n128_u64[0] = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

id VisualIntelligenceService.parseCameraFrame(visualQueryContext:image:normalizedRegionOfInterest:annotation:groundingDetections:completion:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v11 = v10;
  v84 = a4;
  v85 = a6;
  v83 = a5;
  v94 = a1;
  v18 = sub_1D9C7DA2C();
  v90 = *(v18 - 8);
  v91 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1D9C7DA4C();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v81 = *(v21 - 8);
  v22 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v82 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  v26 = sub_1D9C7D8DC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a2;
  LODWORD(v93) = *(a2 + 8);
  v31 = a3[1];
  v103 = *a3;
  v104 = v31;
  v32 = a3[3];
  v105 = a3[2];
  v106 = v32;
  static Logger.argos.getter(v29);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v26, qword_1EDD2C990);
  (*(v27 + 8))(v29, v26);
  v33 = sub_1D9C7D8BC();
  v34 = sub_1D9C7E09C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1D9962000, v33, v34, "parseCameraFrame with groundingDetections", v35, 2u);
    MEMORY[0x1DA7405F0](v35, -1, -1);
  }

  v95 = *(v11 + 16);
  v80 = [objc_allocWithZone(type metadata accessor for CancelSession()) init];
  v111.origin.x = 0.0;
  v111.origin.y = 0.0;
  v111.size.width = 1.0;
  v111.size.height = 1.0;
  v109.origin.x = a7;
  v109.origin.y = a8;
  v109.size.width = a9;
  v109.size.height = a10;
  v110 = CGRectIntersection(v109, v111);
  x = v110.origin.x;
  y = v110.origin.y;
  width = v110.size.width;
  height = v110.size.height;
  v40 = *(v11 + 96);
  v41 = v94;
  v42 = v25;
  sub_1D9B331F0(v94, v25, type metadata accessor for VisualQueryContext);
  Context = type metadata accessor for VisualQueryContext();
  v44 = *(*(Context - 8) + 56);
  v79 = v25;
  v44(v25, 0, 1, Context);
  v77 = sub_1D9B32C04(v41);
  v101 = &type metadata for PixelImage;
  v102 = &off_1F5533940;
  v99 = v30;
  v100 = v93;
  type metadata accessor for MetricsBucket();
  v45 = swift_allocObject();
  *(v45 + 16) = MEMORY[0x1E69E7CC0];
  v93 = v45;
  v107[0] = 0x6150202D20453245;
  v107[1] = 0xEB00000000657372;
  v107[2] = "Parse Overall";
  v107[3] = 13;
  v108 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  v46 = v30;

  v76 = sub_1D9AFD4B8(v107, v45);

  v47 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  v75 = sub_1D9C7B87C();
  v92 = v48;

  v78 = *(v40 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_queue);
  v49 = swift_allocObject();
  v94 = v49;
  swift_weakInit();
  sub_1D99A17C8(&v99, v98);
  v50 = v82;
  sub_1D99AB100(v42, v82, &unk_1ECB51B10);
  v51 = (*(v81 + 80) + 184) & ~*(v81 + 80);
  v52 = (v22 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v57 = v95;
  *(v56 + 16) = v49;
  *(v56 + 24) = v57;
  *(v56 + 32) = v77;
  *(v56 + 40) = v93;
  sub_1D9979B9C(v98, v56 + 48);
  *(v56 + 88) = x;
  *(v56 + 96) = y;
  *(v56 + 104) = width;
  *(v56 + 112) = height;
  v58 = v104;
  *(v56 + 120) = v103;
  *(v56 + 136) = v58;
  v59 = v106;
  *(v56 + 152) = v105;
  *(v56 + 168) = v59;
  sub_1D9A0E758(v50, v56 + v51);
  *(v56 + v52) = v76;
  v60 = v80;
  *(v56 + v53) = v80;
  v61 = (v56 + v54);
  v62 = v75;
  v63 = v92;
  *v61 = v75;
  v61[1] = v63;
  v64 = v83;
  *(v56 + v55) = v84;
  v65 = (v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8));
  v66 = v85;
  *v65 = v64;
  v65[1] = v66;
  v97[4] = sub_1D9A0E7C8;
  v97[5] = v56;
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 1107296256;
  v97[2] = sub_1D9A0A1E0;
  v97[3] = &block_descriptor_10;
  v83 = _Block_copy(v97);

  sub_1D99AB100(&v103, v96, &qword_1ECB514D0);

  v67 = v60;
  v68 = v62;
  sub_1D99AF2FC(v62, v63);

  v69 = v86;
  sub_1D9C7DA3C();
  v96[0] = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0);
  v70 = v88;
  v71 = v91;
  sub_1D9C7E34C();
  v72 = v83;
  MEMORY[0x1DA73E300](0, v69, v70, v83);
  _Block_release(v72);
  sub_1D99A5748(v68, v92);

  (*(v90 + 8))(v70, v71);
  (*(v87 + 8))(v69, v89);
  sub_1D99A6AE0(v79, &unk_1ECB51B10);

  __swift_destroy_boxed_opaque_existential_0Tm(&v99);
  return v67;
}

double VisualIntelligenceService.searchableVisualUnderstanding(in:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 176);
    v4 = *(a1 + 144);
    v37 = *(a1 + 160);
    v38 = v3;
    v5 = *(a1 + 176);
    v6 = *(a1 + 208);
    v39 = *(a1 + 192);
    v40 = v6;
    v7 = *(a1 + 112);
    v8 = *(a1 + 80);
    v33 = *(a1 + 96);
    v34 = v7;
    v9 = *(a1 + 112);
    v10 = *(a1 + 144);
    v35 = *(a1 + 128);
    v36 = v10;
    v11 = *(a1 + 48);
    v30[0] = *(a1 + 32);
    v30[1] = v11;
    v12 = *(a1 + 80);
    v14 = *(a1 + 32);
    v13 = *(a1 + 48);
    v31 = *(a1 + 64);
    v32 = v12;
    v49 = v37;
    v50 = v5;
    v15 = *(a1 + 208);
    v51 = v39;
    v52 = v15;
    v45 = v33;
    v46 = v9;
    v47 = v35;
    v48 = v4;
    v41 = v14;
    v42 = v13;
    v43 = v31;
    v44 = v8;
    faiss::NormalizationTransform::~NormalizationTransform(&v41);
    v16 = v50;
    a2[8] = v49;
    a2[9] = v16;
    v17 = v52;
    a2[10] = v51;
    a2[11] = v17;
    v18 = v46;
    a2[4] = v45;
    a2[5] = v18;
    v19 = v48;
    a2[6] = v47;
    a2[7] = v19;
    v20 = v42;
    *a2 = v41;
    a2[1] = v20;
    v21 = v44;
    a2[2] = v43;
    a2[3] = v21;
    sub_1D99AB100(v30, &v29, &qword_1ECB51B50);
  }

  else
  {
    sub_1D9B331AC(&v41);
    v23 = v50;
    a2[8] = v49;
    a2[9] = v23;
    v24 = v52;
    a2[10] = v51;
    a2[11] = v24;
    v25 = v46;
    a2[4] = v45;
    a2[5] = v25;
    v26 = v48;
    a2[6] = v47;
    a2[7] = v26;
    v27 = v42;
    *a2 = v41;
    a2[1] = v27;
    result = *&v43;
    v28 = v44;
    a2[2] = v43;
    a2[3] = v28;
  }

  return result;
}

id VisualIntelligenceService.searchCameraFrame(timestamp:visualQueryContext:visualUnderstanding:searchHistoryEntries:completion:)(uint64_t a1, __int128 *a2, uint64_t a3, void (*a4)(_OWORD *, uint64_t *, void), uint64_t a5, double a6)
{
  v83 = a1;
  v95 = a4;
  v96 = a5;
  v88 = a3;
  v8 = sub_1D9C7DA2C();
  v93 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1D9C7DA4C();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for VisualQueryContext();
  v80 = *(Context - 8);
  v81 = Context;
  v12 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](Context);
  v13 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v85 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v74 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v84 = *(v17 - 8);
  v18 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v87 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v74 - v20;
  v21 = sub_1D9C7D8DC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2[8];
  v145 = a2[9];
  v146 = a2[10];
  v147 = *(a2 + 22);
  v26 = a2[5];
  v140 = a2[4];
  v141 = v26;
  v27 = a2[7];
  v142 = a2[6];
  v143 = v27;
  v144 = v25;
  v28 = a2[1];
  v136 = *a2;
  v137 = v28;
  v29 = a2[3];
  v138 = a2[2];
  v139 = v29;
  static Logger.argos.getter(v24);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v21, qword_1EDD2C990);
  (*(v22 + 8))(v24, v21);
  v30 = sub_1D9C7D8BC();
  v31 = sub_1D9C7E09C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1D9962000, v30, v31, "searchCameraFrame with searchHistoryEntries", v32, 2u);
    MEMORY[0x1DA7405F0](v32, -1, -1);
  }

  v33 = [objc_allocWithZone(type metadata accessor for CancelSession()) init];
  v128 = v144;
  v129 = v145;
  v130 = v146;
  v131 = v147;
  v124 = v140;
  v125 = v141;
  v126 = v142;
  v127 = v143;
  v120 = v136;
  v121 = v137;
  v122 = v138;
  v123 = v139;
  if (sub_1D99EDCB0(&v120) == 1)
  {
    sub_1D9B331CC(&v107);
    v106[10] = v117;
    v106[11] = v118;
    v106[12] = v119;
    v106[6] = v113;
    v106[7] = v114;
    v106[8] = v115;
    v106[9] = v116;
    v106[2] = v109;
    v106[3] = v110;
    v106[4] = v111;
    v106[5] = v112;
    v106[0] = v107;
    v106[1] = v108;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v95(v106, &v100, 0);
  }

  else
  {
    v115 = v128;
    v116 = v129;
    v117 = v130;
    *&v118 = v131;
    v111 = v124;
    v112 = v125;
    v113 = v126;
    v114 = v127;
    v107 = v120;
    v108 = v121;
    v109 = v122;
    v110 = v123;
    v79 = swift_allocBox();
    v35 = v34;
    v75 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v76 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig;
    v36 = v82;
    sub_1D9B331F0(v82 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v34, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v97 = v33;
    v37 = v83;
    v38 = v99;
    v77 = v18;
    v74 = v12;
    v39 = v80;
    sub_1D9B331F0(v83, v99, type metadata accessor for VisualQueryContext);
    v78 = v8;
    v40 = *(v39 + 56);
    v41 = v81;
    v40(v38, 0, 1, v81);
    sub_1D9A3D06C(v38);
    sub_1D99A6AE0(v38, &unk_1ECB51B10);
    v82 = *(v36 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
    sub_1D9B331F0(v37, v38, type metadata accessor for VisualQueryContext);
    v40(v38, 0, 1, v41);
    v42 = v98;
    sub_1D9B331F0(v35, v98, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v43 = v37;
    v44 = v75;
    sub_1D9B331F0(v43, v75, type metadata accessor for VisualQueryContext);
    v45 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v46 = (v74 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    v83 = v48;
    v49 = v96;
    *(v48 + 16) = v95;
    *(v48 + 24) = v49;
    sub_1D9B34EF0(v44, v48 + v45, type metadata accessor for VisualQueryContext);
    *(v48 + v46) = a6;
    *(v48 + v47) = v88;
    *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;
    type metadata accessor for MetricsBucket();
    v50 = swift_allocObject();
    *(v50 + 16) = MEMORY[0x1E69E7CC0];
    v51 = v50;
    strcpy(v132, "E2E - Search");
    HIBYTE(v132[6]) = 0;
    v132[7] = -5120;
    v133 = "Search Overall";
    v134 = 14;
    v135 = 2;
    type metadata accessor for DurationMeasurement();
    swift_allocObject();

    v95 = v51;

    v96 = sub_1D9AFD4B8(v132, v51);

    v88 = *(v82 + 56);
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = v87;
    sub_1D99AB100(v99, v87, &unk_1ECB51B10);
    sub_1D9B331F0(v42, v94, v76);
    v54 = (*(v84 + 80) + 208) & ~*(v84 + 80);
    v55 = (v77 + *(v85 + 80) + v54) & ~*(v85 + 80);
    v56 = (v86 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v116;
    *(v59 + 152) = v115;
    *(v59 + 168) = v60;
    *(v59 + 184) = v117;
    v61 = v112;
    *(v59 + 88) = v111;
    *(v59 + 104) = v61;
    v62 = v114;
    *(v59 + 120) = v113;
    *(v59 + 136) = v62;
    v63 = v108;
    *(v59 + 24) = v107;
    *(v59 + 40) = v63;
    v64 = v110;
    *(v59 + 56) = v109;
    v81 = v52;
    *(v59 + 16) = v52;
    *(v59 + 200) = v118;
    *(v59 + 72) = v64;
    sub_1D9A0E758(v53, v59 + v54);
    sub_1D9B34EF0(v94, v59 + v55, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v65 = v97;
    *(v59 + v56) = v96;
    *(v59 + v57) = v65;
    *(v59 + v58) = v95;
    v66 = (v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
    v67 = v83;
    *v66 = sub_1D9A0FD08;
    v66[1] = v67;
    v104 = sub_1D9A0F61C;
    v105 = v59;
    v100 = MEMORY[0x1E69E9820];
    v101 = 1107296256;
    v102 = sub_1D9A0A1E0;
    v103 = &block_descriptor_15;
    v68 = _Block_copy(&v100);

    sub_1D99AB100(&v136, v106, &qword_1ECB534D8);

    v69 = v97;

    v70 = v89;
    sub_1D9C7DA3C();
    *&v106[0] = MEMORY[0x1E69E7CC0];
    sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
    sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0);
    v71 = v91;
    v72 = v78;
    sub_1D9C7E34C();
    MEMORY[0x1DA73E300](0, v70, v71, v68);
    _Block_release(v68);
    v33 = v97;

    (*(v93 + 8))(v71, v72);
    (*(v90 + 8))(v70, v92);
    sub_1D9B336AC(v98, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D99A6AE0(v99, &unk_1ECB51B10);
  }

  return v33;
}

id VisualIntelligenceService.parseCameraFrame(visualQueryContext:image:normalizedRegionOfInterest:annotation:cachedResults:completion:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v12 = v11;
  v82 = a6;
  v83 = a7;
  v93 = a5;
  v90 = a4;
  v20 = sub_1D9C7DA2C();
  v88 = *(v20 - 8);
  v89 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D9C7DA4C();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v80 = *(v23 - 8);
  v24 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v81 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v94 = &v73 - v26;
  v27 = sub_1D9C7D8DC();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a2;
  LODWORD(v92) = *(a2 + 8);
  v32 = a3[1];
  v102 = *a3;
  v103 = v32;
  v33 = a3[3];
  v104 = a3[2];
  v105 = v33;
  static Logger.argos.getter(v30);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v27, qword_1EDD2C990);
  (*(v28 + 8))(v30, v27);
  v34 = sub_1D9C7D8BC();
  v35 = sub_1D9C7E09C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1D9962000, v34, v35, "parseCameraFrame with input image", v36, 2u);
    MEMORY[0x1DA7405F0](v36, -1, -1);
  }

  v91 = *(v12 + 16);
  v79 = [objc_allocWithZone(type metadata accessor for CancelSession()) init];
  v37 = *(v12 + 96);
  v110.origin.x = 0.0;
  v110.origin.y = 0.0;
  v110.size.width = 1.0;
  v110.size.height = 1.0;
  v108.origin.x = a8;
  v108.origin.y = a9;
  v108.size.width = a10;
  v108.size.height = a11;
  v109 = CGRectIntersection(v108, v110);
  x = v109.origin.x;
  y = v109.origin.y;
  width = v109.size.width;
  height = v109.size.height;
  v42 = v94;
  sub_1D9B331F0(a1, v94, type metadata accessor for VisualQueryContext);
  Context = type metadata accessor for VisualQueryContext();
  (*(*(Context - 8) + 56))(v42, 0, 1, Context);
  v77 = sub_1D9B32C04(a1);
  v44 = 0;
  if (v93 >> 60 != 15)
  {
    v44 = sub_1D9C7B86C();
  }

  v100 = &type metadata for PixelImage;
  v101 = &off_1F5533940;
  v98 = v31;
  v99 = v92;
  type metadata accessor for MetricsBucket();
  v45 = swift_allocObject();
  *(v45 + 16) = MEMORY[0x1E69E7CC0];
  v106[0] = 0x6150202D20453245;
  v106[1] = 0xEB00000000657372;
  v106[2] = "Parse Overall";
  v106[3] = 13;
  v107 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  v46 = v31;
  v92 = sub_1D9AFD4B8(v106, v45);
  v93 = v45;

  if (v44)
  {
    v47 = v44;
  }

  else
  {
    v47 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  }

  v78 = v44;
  v48 = sub_1D9C7B87C();
  v74 = v49;
  v75 = v48;

  v76 = *(v37 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_queue);
  v50 = swift_allocObject();
  v90 = v50;
  swift_weakInit();
  sub_1D99A17C8(&v98, v97);
  v51 = v81;
  sub_1D99AB100(v94, v81, &unk_1ECB51B10);
  v52 = (*(v80 + 80) + 184) & ~*(v80 + 80);
  v53 = (v24 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v58 = v91;
  *(v57 + 16) = v50;
  *(v57 + 24) = v58;
  *(v57 + 32) = v77;
  *(v57 + 40) = v93;
  sub_1D9979B9C(v97, v57 + 48);
  *(v57 + 88) = x;
  *(v57 + 96) = y;
  *(v57 + 104) = width;
  *(v57 + 112) = height;
  v59 = v103;
  *(v57 + 120) = v102;
  *(v57 + 136) = v59;
  v60 = v105;
  *(v57 + 152) = v104;
  *(v57 + 168) = v60;
  sub_1D9A0E758(v51, v57 + v52);
  *(v57 + v53) = v92;
  v61 = v79;
  *(v57 + v54) = v79;
  v62 = (v57 + v55);
  v64 = v74;
  v63 = v75;
  *v62 = v75;
  v62[1] = v64;
  *(v57 + v56) = 0;
  v65 = (v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8));
  v66 = v83;
  *v65 = v82;
  v65[1] = v66;
  v96[4] = sub_1D9B351E0;
  v96[5] = v57;
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 1107296256;
  v96[2] = sub_1D9A0A1E0;
  v96[3] = &block_descriptor_23;
  v67 = _Block_copy(v96);

  sub_1D99AB100(&v102, v95, &qword_1ECB514D0);

  v91 = v61;
  v68 = v64;
  sub_1D99AF2FC(v63, v64);

  v69 = v84;
  sub_1D9C7DA3C();
  v95[0] = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0);
  v70 = v86;
  v71 = v89;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v69, v70, v67);
  _Block_release(v67);
  sub_1D99A5748(v63, v68);

  (*(v88 + 8))(v70, v71);
  (*(v85 + 8))(v69, v87);
  sub_1D99A6AE0(v94, &unk_1ECB51B10);

  __swift_destroy_boxed_opaque_existential_0Tm(&v98);

  return v91;
}

double sub_1D9B26D94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53580);
  v0 = swift_allocObject();
  *(v0 + 40) = 0;
  result = 0.0;
  *(v0 + 16) = xmmword_1D9C8B510;
  *(v0 + 32) = 0;
  qword_1EDD31300 = v0;
  return result;
}

uint64_t VisualSearchCameraResult.visualSearchResult.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[11];
  v30 = v1[10];
  v31 = v3;
  v4 = v1[11];
  v32 = v1[12];
  v5 = v1[5];
  v6 = v1[7];
  v26 = v1[6];
  v7 = v26;
  v27 = v6;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[1];
  v12 = v1[3];
  v22 = v1[2];
  v13 = v22;
  v23 = v12;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  a1[6] = v7;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v2;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v5;
  *a1 = v18;
  a1[1] = v11;
  return sub_1D9B335C8(v21, &v20);
}

uint64_t VisualSearchCameraResult.searchHistory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  *a1 = *(v1 + 208);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t VisualSearchCameraResult.visualUnderstanding.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  v17[0] = *(v1 + 232);
  v17[1] = v2;
  v3 = *(v1 + 376);
  v4 = *(v1 + 344);
  v24 = *(v1 + 360);
  v25 = v3;
  v5 = *(v1 + 376);
  v26 = *(v1 + 392);
  v6 = *(v1 + 312);
  v8 = *(v1 + 280);
  v20 = *(v1 + 296);
  v7 = v20;
  v21 = v6;
  v9 = *(v1 + 312);
  v10 = *(v1 + 344);
  v22 = *(v1 + 328);
  v11 = v22;
  v23 = v10;
  v12 = *(v1 + 280);
  v18 = *(v1 + 264);
  v13 = v18;
  v19 = v12;
  *(a1 + 128) = v24;
  *(a1 + 144) = v5;
  *(a1 + 160) = *(v1 + 392);
  *(a1 + 64) = v7;
  *(a1 + 80) = v9;
  *(a1 + 96) = v11;
  *(a1 + 112) = v4;
  v14 = *(v1 + 248);
  *a1 = *(v1 + 232);
  *(a1 + 16) = v14;
  v27 = *(v1 + 408);
  *(a1 + 176) = *(v1 + 408);
  *(a1 + 32) = v13;
  *(a1 + 48) = v8;
  return sub_1D99BB40C(v17, v16);
}

uint64_t VisualSearchCameraResult.searchState.getter()
{
  v1 = *(v0 + 416);

  return v1;
}

uint64_t VisualIntelligenceService.Options.debugParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for VisualIntelligenceService.Options(0) + 24));

  return v1;
}

uint64_t VisualIntelligenceService.Options.debugParameters.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VisualIntelligenceService.Options(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t VisualIntelligenceService.Options.mlEngineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisualIntelligenceService.Options(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t VisualIntelligenceService.Options.mlEngineType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VisualIntelligenceService.Options(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t VisualIntelligenceService.Options.init(customizedEndpoint:networkTimeoutInterval:debugParameters:mlEngineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a4;
  v42 = sub_1D9C7D8DC();
  v11 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a5;
  v15 = sub_1D9C7B80C();
  (*(*(v15 - 8) + 56))(a6, 1, 1, v15);
  v16 = type metadata accessor for VisualIntelligenceService.Options(0);
  v17 = v16[5];
  v18 = sub_1D9C7DA1C();
  (*(*(v18 - 8) + 56))(a6 + v17, 1, 1, v18);
  v19 = (a6 + v16[6]);
  sub_1D9B33644(a1, a6, &qword_1ECB51FD0);
  sub_1D9B33644(a2, a6 + v17, &unk_1ECB540C0);
  v20 = v41;
  *v19 = a3;
  v19[1] = v20;
  if (v14 == 3)
  {
    v21 = 2;
  }

  else
  {
    v21 = v14;
  }

  *(a6 + v16[7]) = v21;
  v22 = *(a6 + v16[7]);
  static Logger.argos.getter(v13);
  v23 = sub_1D9C7D8BC();
  v24 = sub_1D9C7E09C();
  if (os_log_type_enabled(v23, v24))
  {
    v41 = v11;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43 = v26;
    *v25 = 136315394;
    v27 = 0xE600000000000000;
    v28 = 0xE800000000000000;
    v29 = 0x6F73736572707365;
    if (v14 != 1)
    {
      v29 = 13669;
      v28 = 0xE200000000000000;
    }

    if (v14)
    {
      v27 = v28;
    }

    else
    {
      v29 = 0x6E6F69736976;
    }

    if (v14 == 3)
    {
      v30 = 7104878;
    }

    else
    {
      v30 = v29;
    }

    if (v14 == 3)
    {
      v31 = 0xE300000000000000;
    }

    else
    {
      v31 = v27;
    }

    v32 = sub_1D9A0E224(v30, v31, &v43);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    v33 = 0xE800000000000000;
    v34 = 0x6F73736572707365;
    if (v22 != 1)
    {
      v34 = 13669;
      v33 = 0xE200000000000000;
    }

    if (v22)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0x6E6F69736976;
    }

    if (v22)
    {
      v36 = v33;
    }

    else
    {
      v36 = 0xE600000000000000;
    }

    v37 = v41;
    v38 = sub_1D9A0E224(v35, v36, &v43);

    *(v25 + 14) = v38;
    _os_log_impl(&dword_1D9962000, v23, v24, "mlEngineType = %s -> %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v26, -1, -1);
    MEMORY[0x1DA7405F0](v25, -1, -1);

    sub_1D99A6AE0(a2, &unk_1ECB540C0);
    sub_1D99A6AE0(a1, &qword_1ECB51FD0);
    return (*(v37 + 8))(v13, v42);
  }

  else
  {

    sub_1D99A6AE0(a2, &unk_1ECB540C0);
    sub_1D99A6AE0(a1, &qword_1ECB51FD0);
    return (*(v11 + 8))(v13, v42);
  }
}

void *sub_1D9B276C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v219 = a4;
  v229 = a3;
  v238 = a2;
  v227 = a1;
  v224 = *v5;
  v8 = sub_1D9C7D8DC();
  v201 = *(v8 - 8);
  v202 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v216 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v215 = &v201 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v213 = &v201 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v211 = &v201 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v208 = &v201 - v17;
  v235 = type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig(0);
  v239 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v214 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v212 = (&v201 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v210 = &v201 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v209 = (&v201 - v24);
  v25 = type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v233 = &v201 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0);
  MEMORY[0x1EEE9AC00](v206);
  v218 = &v201 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v226 = &v201 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v236 = &v201 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v225 = &v201 - v33;
  v34 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v232 = &v201 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig(0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v234 = &v201 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v237 = (&v201 - v39);
  v231 = sub_1D9C7E0EC();
  MEMORY[0x1EEE9AC00](v231);
  v40 = sub_1D9C7DA4C();
  MEMORY[0x1EEE9AC00](v40 - 8);
  v41 = sub_1D9C7E10C();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v201 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = VIAllVisualSearchDomains();
  v46 = sub_1D9C7E03C();

  v47 = Set<>.toVisualDomains()(v46);

  v248[0] = v47;
  v48 = sub_1D9B9E6EC(&unk_1F552A5F8);
  sub_1D9B9D9BC(v48);

  v230 = v6;
  v6[2] = v248[0];
  if (qword_1EDD312F0 != -1)
  {
    swift_once();
  }

  v228 = a5;
  v49 = qword_1EDD31300;
  os_unfair_lock_lock((qword_1EDD31300 + 40));
  sub_1D9B29270((v49 + 16));
  os_unfair_lock_unlock((v49 + 40));
  sub_1D9ADC36C();
  (*(v42 + 104))(v44, *MEMORY[0x1E69E8098], v41);
  sub_1D9C7DA3C();
  v248[0] = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD354A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52460);
  sub_1D9AE54F4(&qword_1EDD354B0, &unk_1ECB52460);
  sub_1D9C7E34C();
  v50 = sub_1D9C7E13C();
  v51 = v230;
  v230[3] = v50;
  v217 = v50;
  v52 = v228;

  sub_1D9C04AB0(7, 0, 1852797802, 0xE400000000000000);
  sub_1D99A41C8(v53, 0, v248);

  v51[4] = v248[0];
  v54 = sub_1D9C04AB0(11, 0, 0x7478746270, 0xE500000000000000);
  sub_1D9B5849C(v54, v55, v237);

  v56 = sub_1D9C04AB0(10, 0, 0x7478746270, 0xE500000000000000);
  v57 = v232;
  sub_1D9A3D1F8(v56, v58, v232);

  sub_1D9B34EF0(v57, v51 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v59 = sub_1D9C04AB0(8, 0, 0x7478746270, 0xE500000000000000);
  v60 = v225;
  sub_1D9B65C80(v59, v61, v225);

  v222 = OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_parseConfig;
  sub_1D9B34EF0(v60, v51 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_parseConfig, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v62 = sub_1D9C04AB0(9, 0, 0x7478746270, 0xE500000000000000);
  sub_1D9B65C80(v62, v63, v60);

  v220 = OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_groundingParseConfig;
  sub_1D9B34EF0(v60, v51 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_groundingParseConfig, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v64 = sub_1D9C04AB0(12, 0, 0x7478746270, 0xE500000000000000);
  v65 = v233;
  sub_1D99F53AC(v64, v66, v233);

  sub_1D9B34EF0(v65, v51 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_refineRegionConfig, type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig);
  v67 = type metadata accessor for VisualIntelligenceModelProviderService();
  swift_allocObject();

  v69 = sub_1D9A9283C(v68);
  v51[9] = v67;
  v51[10] = &off_1F552EEE0;
  v51[6] = v69;
  v223 = *(type metadata accessor for VisualIntelligenceService.Options(0) + 28);
  LODWORD(v205) = *(v238 + v223);
  v207 = v51 + 6;
  sub_1D99A17C8((v51 + 6), v248);
  v70 = v51[4];
  v71 = __swift_mutable_project_boxed_opaque_existential_1(v248, v249);
  v224 = &v201;
  v72 = MEMORY[0x1EEE9AC00](v71);
  v74 = (&v201 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v75 + 16))(v74, v72);
  v76 = *v74;
  v246 = v67;
  v247 = &off_1F552EEE0;
  v245[0] = v76;
  type metadata accessor for ObjectDetector();
  v77 = swift_allocObject();
  v78 = __swift_mutable_project_boxed_opaque_existential_1(v245, v67);
  v232 = *(*(v67 - 8) + 64);
  v79 = MEMORY[0x1EEE9AC00](v78);
  v221 = (v80 + 15) & 0xFFFFFFFFFFFFFFF0;
  v81 = (&v201 - v221);
  v83 = *(v82 + 16);
  v233 = (v82 + 16);
  v231 = v83;
  v83(&v201 - v221, v79);
  v84 = *v81;

  v85 = sub_1D9B32270(v205, v84, v52, v70, v77);
  __swift_destroy_boxed_opaque_existential_0Tm(v245);
  __swift_destroy_boxed_opaque_existential_0Tm(v248);
  v86 = v223;
  v51[5] = v85;
  LOBYTE(v84) = *(v238 + v86);
  sub_1D99A17C8((v51 + 6), v248);
  v87 = v234;
  sub_1D9B331F0(v237, v234, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig);
  v88 = __swift_mutable_project_boxed_opaque_existential_1(v248, v249);
  v224 = &v201;
  v89 = MEMORY[0x1EEE9AC00](v88);
  v91 = (&v201 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v92 + 16))(v91, v89);
  v93 = *v91;
  v246 = v67;
  v247 = &off_1F552EEE0;
  v245[0] = v93;
  type metadata accessor for DomainModelRegistry();
  v94 = swift_allocObject();
  v95 = __swift_mutable_project_boxed_opaque_existential_1(v245, v67);
  v96 = MEMORY[0x1EEE9AC00](v95);
  v97 = (&v201 - v221);
  v231(&v201 - v221, v96);
  v98 = *v97;
  v243 = v67;
  v244 = &off_1F552EEE0;
  v242[0] = v98;
  __swift_project_boxed_opaque_existential_1(v242, v67);
  *(v94 + 16) = sub_1D9B310D0(v84);
  sub_1D9B34EF0(v87, v94 + OBJC_IVAR____TtC12VisualLookUp19DomainModelRegistry_domainModelConfig, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig);
  __swift_destroy_boxed_opaque_existential_0Tm(v242);
  __swift_destroy_boxed_opaque_existential_0Tm(v245);
  __swift_destroy_boxed_opaque_existential_0Tm(v248);
  v51[11] = v94;
  type metadata accessor for MemoryPressureObserver();
  swift_allocObject();
  *(v51 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_memoryObserver) = sub_1D9B76B68();
  v99 = sub_1D9C04AB0(6, 0, 0x7473696C70, 0xE500000000000000);
  v101 = v100;
  v102 = v227;

  v234 = sub_1D99E956C(v99, v101, v102);

  v103 = sub_1D9C04AB0(5, 0, 0x7473696C70, 0xE500000000000000);
  v105 = v104;
  type metadata accessor for VisualDomainGlyphManager();
  swift_initStackObject();
  v224 = sub_1D9BFDA2C(v103, v105);
  sub_1D99A17C8(v207, v248);
  v106 = v51[5];
  v203 = *(v238 + v223);
  v107 = v236;
  sub_1D9B331F0(v51 + v222, v236, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v108 = v226;
  sub_1D9B331F0(v220 + v51, v226, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v109 = v51[4];
  v220 = v51[3];
  v110 = v51[11];
  v222 = v109;
  v223 = v110;
  v111 = __swift_mutable_project_boxed_opaque_existential_1(v248, v249);
  v205 = &v201;
  v112 = MEMORY[0x1EEE9AC00](v111);
  v114 = (&v201 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v115 + 16))(v114, v112);
  v116 = *v114;
  v246 = v67;
  v247 = &off_1F552EEE0;
  v245[0] = v116;
  type metadata accessor for ParseFlow(0);
  v117 = swift_allocObject();
  v118 = __swift_mutable_project_boxed_opaque_existential_1(v245, v67);
  v204 = &v201;
  v119 = MEMORY[0x1EEE9AC00](v118);
  v120 = (&v201 - v221);
  v231(&v201 - v221, v119);
  v121 = *v120;
  v243 = v67;
  v244 = &off_1F552EEE0;
  v207 = v67;
  v242[0] = v121;
  sub_1D99A17C8(v242, v117 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_modelProviderService);
  v221 = v106;
  *(v117 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_objectDetector) = v106;
  sub_1D9B331F0(v107, v117 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_config, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  sub_1D9B331F0(v108, v117 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_groundingConfig, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v122 = v234;
  v117[14] = v229;
  v117[15] = v122;
  *(v117 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_queue) = v220;
  *(v117 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_trialWrapper) = v52;
  *(v117 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_mlEngineType) = v203;
  v123 = *(v107 + *(v206 + 20));
  v124 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScorerConfig;
  swift_beginAccess();
  v125 = v208;
  sub_1D99AB100(v123 + v124, v208, &qword_1ECB534F0);
  v126 = v239 + 48;
  v127 = *(v239 + 48);
  v128 = v235;
  v129 = v127(v125, 1, v235);
  v239 = v126;
  if (v129 == 1)
  {
    v130 = v125;
    v131 = v209;
    *v209 = 0;
    *(v131 + 1) = 0;
    v132 = v130;
    swift_retain_n();
    swift_retain_n();

    v133 = v220;

    sub_1D9C7D3BC();
    v134 = v127(v132, 1, v128);
    v135 = v210;
    if (v134 != 1)
    {
      sub_1D99A6AE0(v132, &qword_1ECB534F0);
    }
  }

  else
  {
    v136 = v125;
    v131 = v209;
    sub_1D9B34EF0(v136, v209, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
    swift_retain_n();
    swift_retain_n();

    v137 = v220;

    v135 = v210;
  }

  v220 = *v131;
  sub_1D9B336AC(v131, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  v138 = v211;
  sub_1D99AB100(v123 + v124, v211, &qword_1ECB534F0);
  v139 = v127(v138, 1, v128);
  v140 = v214;
  if (v139 == 1)
  {
    *v135 = 0;
    *(v135 + 8) = 0;
    sub_1D9C7D3BC();
    if (v127(v138, 1, v128) != 1)
    {
      sub_1D99A6AE0(v138, &qword_1ECB534F0);
    }
  }

  else
  {
    sub_1D9B34EF0(v138, v135, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  }

  v141 = *(v135 + 4);
  sub_1D9B336AC(v135, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  v142 = v213;
  sub_1D99AB100(v123 + v124, v213, &qword_1ECB534F0);
  v143 = v235;
  if (v127(v142, 1, v235) == 1)
  {
    v144 = v212;
    *v212 = 0;
    *(v144 + 1) = 0;
    sub_1D9C7D3BC();
    if (v127(v142, 1, v143) != 1)
    {
      sub_1D99A6AE0(v142, &qword_1ECB534F0);
    }
  }

  else
  {
    v144 = v212;
    sub_1D9B34EF0(v142, v212, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  }

  v145 = v144[2];
  sub_1D9B336AC(v144, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  v146 = v123 + v124;
  v147 = v215;
  sub_1D99AB100(v146, v215, &qword_1ECB534F0);
  v148 = v235;
  if (v127(v147, 1, v235) == 1)
  {
    *v140 = 0;
    *(v140 + 8) = 0;
    sub_1D9C7D3BC();
    v149 = v127(v147, 1, v148);
    v150 = v221;
    v151 = v216;
    if (v149 != 1)
    {
      sub_1D99A6AE0(v147, &qword_1ECB534F0);
    }
  }

  else
  {
    sub_1D9B34EF0(v147, v140, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
    v150 = v221;
    v151 = v216;
  }

  v152 = *(v140 + 12);
  sub_1D9B336AC(v140, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  type metadata accessor for BoxScorer();
  v153 = swift_allocObject();
  v154 = v220;
  if (v220 < 1 || v152 <= 0.0)
  {
    *(v153 + 24) = 30;
    *(v153 + 16) = sub_1D9B1F3F4(30, 0.5, 0.5, 0.5);
    static Logger.argos.getter(v151);
    v156 = sub_1D9C7D8BC();
    v157 = sub_1D9C7E09C();
    v158 = os_log_type_enabled(v156, v157);
    v155 = v222;
    if (v158)
    {
      v159 = swift_slowAlloc();
      *v159 = 0;
      _os_log_impl(&dword_1D9962000, v156, v157, "Invalid Box Scorer Config. Create Box Scorer using default config.", v159, 2u);
      MEMORY[0x1DA7405F0](v159, -1, -1);
    }

    (*(v201 + 8))(v151, v202);
  }

  else
  {
    *(v153 + 24) = v220;
    *(v153 + 16) = sub_1D9B1F3F4(v154, v152, v141, v145);
    v155 = v222;
  }

  *(v117 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_boxScorer) = v153;
  sub_1D99A17C8(v242, v241);
  v160 = __swift_mutable_project_boxed_opaque_existential_1(v241, v241[3]);
  v161 = MEMORY[0x1EEE9AC00](v160);
  v163 = (&v201 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v164 + 16))(v163, v161);
  v165 = *v163;
  v166 = v207;
  v240[3] = v207;
  v240[4] = &off_1F552EEE0;
  v240[0] = v165;
  type metadata accessor for TriggeringModelProcessor();
  v167 = swift_allocObject();
  v168 = __swift_mutable_project_boxed_opaque_existential_1(v240, v166);
  v169 = MEMORY[0x1EEE9AC00](v168);
  v171 = (&v201 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0));
  v231(v171, v169);
  v172 = *v171;
  swift_retain_n();

  v173 = sub_1D9B32690(v150, v172, v155, v153, v167);
  __swift_destroy_boxed_opaque_existential_0Tm(v240);
  __swift_destroy_boxed_opaque_existential_0Tm(v241);
  v117[2] = v173;
  v241[0] = v155;
  v174 = v225;
  sub_1D9B331F0(v236, v225, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v175 = v226;
  v176 = v218;
  sub_1D9B331F0(v226, v218, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  type metadata accessor for DomainAssignmentProcessor();
  swift_allocObject();
  v177 = v228;

  v117[3] = sub_1D9ADEB74(v241, v177, v174, v176);
  type metadata accessor for RegionMergingProcessor();
  v178 = swift_allocObject();
  *(v178 + 16) = v153;
  v117[4] = v178;
  type metadata accessor for RegionGroupingProcessor();
  v179 = swift_allocObject();
  *(v179 + 16) = v153;
  v117[6] = v179;
  type metadata accessor for RegionSelectionProcessor();
  v180 = swift_allocObject();
  *(v180 + 16) = v155;
  v117[5] = v180;
  type metadata accessor for CameraAdditionalSignalProcessor();
  v117[7] = swift_allocObject();
  type metadata accessor for TriggeringPredictionProcessor();
  v117[8] = swift_allocObject();
  type metadata accessor for AnnotationExtractorProcessor();
  v117[9] = swift_allocObject();
  type metadata accessor for NSFWCheckerProcessor();
  swift_allocObject();

  v117[10] = sub_1D99D0F70();
  v241[0] = v155;
  v181 = v236;
  sub_1D9B331F0(v236, v174, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  sub_1D9B331F0(v175, v176, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  type metadata accessor for DomainSelectionProcessor();
  swift_allocObject();
  v182 = v223;

  v184 = sub_1D9A4AC94(v183, v177, v241, v174, v176);

  sub_1D9B336AC(v175, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  __swift_destroy_boxed_opaque_existential_0Tm(v242);
  sub_1D9B336AC(v181, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v117[11] = v184;
  type metadata accessor for FingerprintExtractorProcessor();
  v185 = swift_allocObject();
  type metadata accessor for ImageFingerprintRequestFactory();
  v186 = swift_allocObject();
  *(v186 + 16) = v182;
  *(v185 + 16) = v186;
  v117[13] = v185;
  type metadata accessor for DetectionUpdatingProcessor();
  v117[12] = swift_allocObject();
  v187 = v224;
  v188 = v224[2];

  *(v117 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_domainGlyphConfig) = v188;
  __swift_destroy_boxed_opaque_existential_0Tm(v245);
  __swift_destroy_boxed_opaque_existential_0Tm(v248);
  v189 = v230;
  v230[12] = v117;
  v190 = v189[11];
  v191 = v189[3];
  type metadata accessor for SearchFlow();
  v192 = swift_allocObject();
  type metadata accessor for SignalsExtractor();
  v193 = swift_allocObject();
  *(v193 + 16) = v190;
  *(v193 + 24) = v177;
  v192[2] = v193;
  type metadata accessor for ServerSearchProcessor();
  v194 = swift_allocObject();
  v194[2] = v227;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534F8);
  swift_allocObject();

  v195 = v191;
  v194[3] = sub_1D9C1B660(0, sub_1D9B346C8, v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53500);
  swift_allocObject();
  v196 = sub_1D9C1B660(0, sub_1D9BBF2C0, 0);

  sub_1D9B336AC(v238, type metadata accessor for VisualIntelligenceService.Options);
  sub_1D9B336AC(v237, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig);
  v194[4] = v196;
  v192[3] = v194;
  type metadata accessor for ServerResultsProcessor();
  v197 = swift_allocObject();
  v198 = v219;
  v192[4] = v197;
  v192[5] = v198;
  v192[6] = v234;
  v192[7] = v195;
  v199 = v187[2];

  v192[8] = v199;
  *(v189 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow) = v192;
  return v189;
}

void sub_1D9B29270(uint64_t *a1)
{
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  v10 = a1[2];
  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  a1[2] = v11;
  v12 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
LABEL_10:
    __break(1u);
    return;
  }

  *a1 = v12;
  v13 = a1[1];
  if (v13 < v12)
  {
    a1[1] = v12;
    v13 = v12;
  }

  static Logger.argos.getter(v25 - v8);
  sub_1D9A3E0E0(v6);
  v26 = *(v4 + 8);
  v26(v9, v3);
  v14 = sub_1D9C7D8BC();
  v15 = sub_1D9C7E09C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25[1] = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25[0] = v3;
    v19 = v18;
    v30 = v18;
    *v17 = 136315138;
    v27 = v12;
    v28 = v13;
    v29 = v11;
    v20 = sub_1D9C7DD0C();
    v22 = sub_1D9A0E224(v20, v21, &v30);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1D9962000, v14, v15, "VisualIntelligenceService.init(): %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x1DA7405F0](v19, -1, -1);
    MEMORY[0x1DA7405F0](v17, -1, -1);

    v23 = v6;
    v24 = v25[0];
  }

  else
  {

    v23 = v6;
    v24 = v3;
  }

  v26(v23, v24);
}

uint64_t VisualIntelligenceService.deinit()
{
  sub_1D9B77488(32);
  if (qword_1EDD312F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD31300;
  os_unfair_lock_lock((qword_1EDD31300 + 40));
  sub_1D9B29648((v1 + 16));
  os_unfair_lock_unlock((v1 + 40));

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  sub_1D9B336AC(v0 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_parseConfig, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  sub_1D9B336AC(v0 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_groundingParseConfig, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);

  sub_1D9B336AC(v0 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  sub_1D9B336AC(v0 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_refineRegionConfig, type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig);

  return v0;
}

void sub_1D9B29648(uint64_t *a1)
{
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  v10 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v10;
    v11 = a1[1];
    if (v11 < v10)
    {
      a1[1] = v10;
      v11 = v10;
    }

    v26 = a1[2];
    static Logger.argos.getter(v25 - v8);
    sub_1D9A3E0E0(v6);
    v12 = *(v4 + 8);
    v12(v9, v3);
    v13 = sub_1D9C7D8BC();
    v14 = v3;
    v15 = sub_1D9C7E09C();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      v25[0] = v14;
      v17 = v16;
      v18 = swift_slowAlloc();
      v25[1] = v1;
      v19 = v18;
      v30 = v18;
      *v17 = 136315138;
      v27 = v10;
      v28 = v11;
      v29 = v26;
      v20 = sub_1D9C7DD0C();
      v22 = sub_1D9A0E224(v20, v21, &v30);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1D9962000, v13, v15, "VisualIntelligenceService.deinit(): %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1DA7405F0](v19, -1, -1);
      MEMORY[0x1DA7405F0](v17, -1, -1);

      v23 = v6;
      v24 = v25[0];
    }

    else
    {

      v23 = v6;
      v24 = v14;
    }

    v12(v23, v24);
  }
}

uint64_t VisualIntelligenceService.__deallocating_deinit()
{
  VisualIntelligenceService.deinit();

  return swift_deallocClassInstance();
}

CGSize_optional __swiftcall VisualIntelligenceService.targetImageSize(for:)(CGSize a1)
{
  v1 = sub_1D9C1D594(a1.width, a1.height);
  result.value.height = v3;
  result.value.width = v2;
  result.is_nil = v1;
  return result;
}

Swift::Void __swiftcall VisualIntelligenceService.warmupSearch()()
{

  sub_1D9C7D0BC();
}

id VisualIntelligenceService.parse(query:cachedResults:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = a4;
  v50 = a3;
  v53 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = [a1 domainsOfInterest];
  v19 = sub_1D9C7E03C();

  v20 = Set<>.toVisualDomains()(v19);

  static Logger.argos.getter(v17);
  sub_1D9A3E0E0(v13);
  v21 = *(v11 + 8);
  v51 = v11 + 8;
  v21(v17, v10);

  v49 = v13;
  v22 = sub_1D9C7D8BC();
  v23 = sub_1D9C7E09C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v58 = v46;
    *v24 = 134218242;
    *(v24 + 4) = *(v20 + 16);

    *(v24 + 12) = 2080;
    v47 = v21;
    sub_1D99E3A84(v20);
    v25 = MEMORY[0x1DA73E110]();
    v45 = v10;
    v26 = v25;
    v48 = a1;
    v28 = v27;

    v29 = sub_1D9A0E224(v26, v28, &v58);
    a1 = v48;

    *(v24 + 14) = v29;
    _os_log_impl(&dword_1D9962000, v22, v23, "Parse input domain count %ld, domains: %s", v24, 0x16u);
    v30 = v46;
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    MEMORY[0x1DA7405F0](v30, -1, -1);
    MEMORY[0x1DA7405F0](v24, -1, -1);

    v47(v49, v45);
  }

  else
  {

    v21(v49, v10);
  }

  v31 = [objc_allocWithZone(type metadata accessor for CancelSession()) init];
  v32 = *(v5 + 96);
  v33 = [a1 image];
  swift_getObjectType();
  sub_1D9AF6CF8(v65);
  swift_unknownObjectRelease();
  [a1 normalizedRegionOfInterest];
  v70.origin.x = 0.0;
  v70.origin.y = 0.0;
  v70.size.width = 1.0;
  v70.size.height = 1.0;
  v69 = CGRectIntersection(v68, v70);
  *&v62 = v69.origin.x;
  *(&v62 + 1) = *&v69.origin.y;
  width = v69.size.width;
  height = v69.size.height;
  v34 = [a1 annotation];
  if (v34)
  {
    v35 = v34;
    VIAnnotation.mappedAnnotation.getter(&v58);

    v36 = v58;
    v37 = v59;
    v38 = v60;
    v39 = v61;
  }

  else
  {
    v36 = xmmword_1D9C86A60;
    v37 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
  }

  v54 = v36;
  v55 = v37;
  v56 = v38;
  v57 = v39;
  VisualQueryContext.init(_:)([a1 queryContext], v9);
  Context = type metadata accessor for VisualQueryContext();
  (*(*(Context - 8) + 56))(v9, 0, 1, Context);
  v41 = v66;
  v42 = v67;
  v43 = __swift_project_boxed_opaque_existential_1(v65, v66);
  sub_1D9B141C0(v43, &v62, v20, &v54, v9, v31, 0, v53, 0, v50, v52, v32, v41, v42);

  sub_1D99A6AE0(v9, &unk_1ECB51B10);
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v61 = v57;
  sub_1D99A6AE0(&v58, &qword_1ECB514D0);
  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  return v31;
}

char *VisualIntelligenceService.search(image:parseResult:annotation:queryContext:completion:)(uint64_t a1, __int128 *a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v74 = a5;
  v75 = a6;
  v82 = a1;
  v78 = sub_1D9C7DA2C();
  v81 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7DA4C();
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v72 = *(v13 - 8);
  v71 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v69 = *(v18 - 8);
  v68 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v83 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  Context = type metadata accessor for VisualQueryContext();
  v24 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a3[1];
  v106 = *a3;
  v107 = v27;
  v28 = a3[3];
  v108 = a3[2];
  v109 = v28;
  v29 = a4;
  VisualQueryContext.init(_:)(a4, v26);
  v67 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig;
  v84 = v22;
  sub_1D9B331F0(v6 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v22, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v30 = v26;
  v73 = v26;
  sub_1D9B331F0(v26, v17, type metadata accessor for VisualQueryContext);
  v31 = *(v24 + 56);
  v31(v17, 0, 1, Context);
  sub_1D9A3D06C(v17);
  sub_1D99A6AE0(v17, &unk_1ECB51B10);
  v32 = a2[9];
  v98 = a2[8];
  v99 = v32;
  v100 = a2[10];
  v101 = *(a2 + 22);
  v33 = a2[5];
  v94 = a2[4];
  v95 = v33;
  v34 = a2[7];
  v96 = a2[6];
  v97 = v34;
  v35 = a2[1];
  v90 = *a2;
  v91 = v35;
  v36 = a2[3];
  v92 = a2[2];
  v93 = v36;
  v37 = VisualUnderstanding.imageRegions.getter();
  v85[0] = v106;
  v85[1] = v107;
  v85[2] = v108;
  v85[3] = v109;
  sub_1D99AB100(&v106, &v90, &qword_1ECB514D0);
  VisualUnderstanding.init(_:annotation:payload:)(v37, v85, 0, 0xF000000000000000, &v90);
  v64 = [objc_allocWithZone(type metadata accessor for CancelSession()) init];
  v38 = *(v65 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
  swift_getObjectType();
  sub_1D9AF6CF8(v89);
  sub_1D9B331F0(v30, v17, type metadata accessor for VisualQueryContext);
  v66 = v17;
  v31(v17, 0, 1, Context);
  type metadata accessor for MetricsBucket();
  v39 = swift_allocObject();
  *(v39 + 16) = MEMORY[0x1E69E7CC0];
  v82 = v39;
  strcpy(v102, "E2E - Search");
  HIBYTE(v102[6]) = 0;
  v102[7] = -5120;
  v103 = "Search Overall";
  v104 = 14;
  v105 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  v63 = sub_1D9AFD4B8(v102, v39);

  v65 = *(v38 + 56);
  v40 = swift_allocObject();
  swift_weakInit();
  sub_1D99AB100(v89, v87, &qword_1ECB51B30);
  v41 = v17;
  v42 = v70;
  sub_1D99AB100(v41, v70, &unk_1ECB51B10);
  sub_1D9B331F0(v84, v83, v67);
  v43 = (*(v72 + 80) + 248) & ~*(v72 + 80);
  v44 = (v71 + *(v69 + 80) + v43) & ~*(v69 + 80);
  v45 = (v68 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v40;
  v49 = v99;
  *(v48 + 152) = v98;
  *(v48 + 168) = v49;
  *(v48 + 184) = v100;
  *(v48 + 200) = v101;
  v50 = v95;
  *(v48 + 88) = v94;
  *(v48 + 104) = v50;
  v51 = v97;
  *(v48 + 120) = v96;
  *(v48 + 136) = v51;
  v52 = v91;
  *(v48 + 24) = v90;
  *(v48 + 40) = v52;
  v53 = v93;
  *(v48 + 56) = v92;
  *(v48 + 72) = v53;
  v54 = v87[1];
  *(v48 + 208) = v87[0];
  *(v48 + 224) = v54;
  *(v48 + 240) = v88;
  sub_1D9A0E758(v42, v48 + v43);
  sub_1D9B34EF0(v83, v48 + v44, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v55 = v64;
  *(v48 + v45) = v63;
  *(v48 + v46) = v55;
  *(v48 + v47) = v82;
  v56 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
  v57 = v75;
  *v56 = v74;
  v56[1] = v57;
  v86[4] = sub_1D9A0ED28;
  v86[5] = v48;
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 1107296256;
  v86[2] = sub_1D9A0A1E0;
  v86[3] = &block_descriptor_30_0;
  v58 = _Block_copy(v86);

  sub_1D99BB40C(&v90, v85);

  v83 = v55;

  v59 = v76;
  sub_1D9C7DA3C();
  *&v85[0] = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0);
  v60 = v77;
  v61 = v78;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v59, v60, v58);
  _Block_release(v58);
  sub_1D9A0009C(&v90);

  (*(v81 + 8))(v60, v61);
  (*(v79 + 8))(v59, v80);
  sub_1D99A6AE0(v66, &unk_1ECB51B10);
  sub_1D99A6AE0(v89, &qword_1ECB51B30);
  sub_1D9B336AC(v84, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  sub_1D9B336AC(v73, type metadata accessor for VisualQueryContext);

  return v83;
}

char *VisualIntelligenceService.searchCameraFrame(visualQueryContext:visualUnderstanding:completion:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v70 = a4;
  v83 = a3;
  v8 = sub_1D9C7DA2C();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D9C7DA4C();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v73 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v74 = v12;
  v75 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  v16 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v71 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v84 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  v21 = sub_1D9C7D8DC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2[9];
  v95 = a2[8];
  v96 = v25;
  v97 = a2[10];
  v98 = *(a2 + 22);
  v26 = a2[5];
  v91 = a2[4];
  v92 = v26;
  v27 = a2[7];
  v93 = a2[6];
  v94 = v27;
  v28 = a2[1];
  v87 = *a2;
  v88 = v28;
  v29 = a2[3];
  v89 = a2[2];
  v90 = v29;
  static Logger.argos.getter(v24);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v21, qword_1EDD2C990);
  (*(v22 + 8))(v24, v21);
  v30 = sub_1D9C7D8BC();
  v31 = sub_1D9C7E09C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1D9962000, v30, v31, "searchCameraFrame", v32, 2u);
    MEMORY[0x1DA7405F0](v32, -1, -1);
  }

  v69 = [objc_allocWithZone(type metadata accessor for CancelSession()) init];
  v65 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig;
  sub_1D9B331F0(v5 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v20, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  sub_1D9B331F0(a1, v15, type metadata accessor for VisualQueryContext);
  v33 = v20;
  Context = type metadata accessor for VisualQueryContext();
  v35 = v15;
  v36 = *(*(Context - 8) + 56);
  v36(v35, 0, 1, Context);
  v68 = v33;
  sub_1D9A3D06C(v35);
  v37 = v35;
  sub_1D99A6AE0(v35, &unk_1ECB51B10);
  v38 = *(v5 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
  sub_1D9B331F0(a1, v37, type metadata accessor for VisualQueryContext);
  v67 = v37;
  v36(v37, 0, 1, Context);
  v39 = swift_allocObject();
  v66 = v39;
  v40 = v70;
  *(v39 + 16) = v83;
  *(v39 + 24) = v40;
  type metadata accessor for MetricsBucket();
  v41 = swift_allocObject();
  *(v41 + 16) = MEMORY[0x1E69E7CC0];
  v82 = v41;
  strcpy(v99, "E2E - Search");
  HIBYTE(v99[6]) = 0;
  v99[7] = -5120;
  v100 = "Search Overall";
  v101 = 14;
  v102 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  v83 = sub_1D9AFD4B8(v99, v41);

  v70 = *(v38 + 56);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = v75;
  sub_1D99AB100(v37, v75, &unk_1ECB51B10);
  sub_1D9B331F0(v33, v84, v65);
  v44 = (*(v73 + 80) + 208) & ~*(v73 + 80);
  v45 = (v74 + *(v71 + 80) + v44) & ~*(v71 + 80);
  v46 = (v72 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v96;
  *(v49 + 152) = v95;
  *(v49 + 168) = v50;
  *(v49 + 184) = v97;
  v51 = v92;
  *(v49 + 88) = v91;
  *(v49 + 104) = v51;
  v52 = v94;
  *(v49 + 120) = v93;
  *(v49 + 136) = v52;
  v53 = v88;
  *(v49 + 24) = v87;
  *(v49 + 40) = v53;
  v54 = v90;
  *(v49 + 56) = v89;
  *(v49 + 16) = v42;
  *(v49 + 200) = v98;
  *(v49 + 72) = v54;
  sub_1D9A0E758(v43, v49 + v44);
  sub_1D9B34EF0(v84, v49 + v45, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v55 = v82;
  *(v49 + v46) = v83;
  v56 = v69;
  *(v49 + v47) = v69;
  *(v49 + v48) = v55;
  v57 = (v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8));
  v58 = v66;
  *v57 = sub_1D9B33D88;
  v57[1] = v58;
  v86[4] = sub_1D9B351E4;
  v86[5] = v49;
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 1107296256;
  v86[2] = sub_1D9A0A1E0;
  v86[3] = &block_descriptor_41;
  v59 = _Block_copy(v86);

  sub_1D99BB40C(&v87, v85);

  v84 = v56;

  v60 = v76;
  sub_1D9C7DA3C();
  v85[0] = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0);
  v61 = v78;
  v62 = v81;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v60, v61, v59);
  _Block_release(v59);

  (*(v80 + 8))(v61, v62);
  (*(v77 + 8))(v60, v79);
  sub_1D99A6AE0(v67, &unk_1ECB51B10);
  sub_1D9B336AC(v68, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);

  return v84;
}

void sub_1D9B2B15C(uint64_t a1, void (*a2)(__int128 *, void *))
{
  v4 = type metadata accessor for VisualSearchResultInternal(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v20 - v8);
  sub_1D99AB100(a1, &v20 - v8, &unk_1ECB53570);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    sub_1D9B331CC(&v58);
    v55 = v68;
    v56 = v69;
    v57 = v70;
    v51 = v64;
    v52 = v65;
    v53 = v66;
    v54 = v67;
    v47 = v60;
    v48 = v61;
    v49 = v62;
    v50 = v63;
    v45 = v58;
    v46 = v59;
    v11 = v10;
    a2(&v45, v10);
  }

  else
  {
    sub_1D9B34EF0(v9, v6, type metadata accessor for VisualSearchResultInternal);
    v12 = *(v6 + 23);
    v44 = *(v6 + 22);
    v13 = *(v6 + 9);
    v41 = *(v6 + 8);
    v42 = v13;
    v43 = *(v6 + 10);
    v14 = *(v6 + 5);
    v37 = *(v6 + 4);
    v38 = v14;
    v15 = *(v6 + 7);
    v39 = *(v6 + 6);
    v40 = v15;
    v16 = *(v6 + 1);
    v33 = *v6;
    v34 = v16;
    v17 = *(v6 + 3);
    v35 = *(v6 + 2);
    v36 = v17;
    sub_1D99BB40C(&v33, &v58);

    v18 = sub_1D99FC1B0();
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v52 = v40;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v48 = v36;
    *&v56 = v44;
    *(&v56 + 1) = v12;
    *&v57 = v18;
    *(&v57 + 1) = v19;
    faiss::NormalizationTransform::~NormalizationTransform(&v45);
    v30 = v55;
    v31 = v56;
    v32 = v57;
    v26 = v51;
    v27 = v52;
    v28 = v53;
    v29 = v54;
    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v20 = v45;
    v21 = v46;
    a2(&v20, 0);
    v68 = v30;
    v69 = v31;
    v70 = v32;
    v64 = v26;
    v65 = v27;
    v66 = v28;
    v67 = v29;
    v60 = v22;
    v61 = v23;
    v62 = v24;
    v63 = v25;
    v58 = v20;
    v59 = v21;
    sub_1D99A6AE0(&v58, &unk_1ECB51B60);
    sub_1D9B336AC(v6, type metadata accessor for VisualSearchResultInternal);
  }
}

void sub_1D9B2B464(uint64_t a1, void (*a2)(__int128 *, __int128 *, void *), uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v52 = a3;
  *&v53 = a5;
  *&v54 = a4;
  v9 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VisualSearchResultInternal(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v47 - v15);
  v17 = swift_projectBox();
  sub_1D99AB100(a1, v16, &unk_1ECB53570);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v16;
    sub_1D9B331CC(&v107);
    v92 = v117;
    v93 = v118;
    v94 = v119;
    v88 = v113;
    v89 = v114;
    v90 = v115;
    v91 = v116;
    v84 = v109;
    v85 = v110;
    v86 = v111;
    v87 = v112;
    v82 = v107;
    v83 = v108;
    v69 = 0uLL;
    *&v70 = 0;
    v19 = v18;
    a2(&v82, &v69, v18);

    return;
  }

  v20 = v17;
  sub_1D9B34EF0(v16, v13, type metadata accessor for VisualSearchResultInternal);
  v21 = *(v13 + 23);
  v106 = *(v13 + 22);
  v22 = *(v13 + 9);
  v103 = *(v13 + 8);
  v104 = v22;
  v105 = *(v13 + 10);
  v23 = *(v13 + 5);
  v99 = *(v13 + 4);
  v100 = v23;
  v24 = *(v13 + 7);
  v101 = *(v13 + 6);
  v102 = v24;
  v25 = *(v13 + 1);
  v95 = *v13;
  v96 = v25;
  v26 = *(v13 + 3);
  v97 = *(v13 + 2);
  v98 = v26;
  sub_1D99BB40C(&v95, &v107);

  v27 = sub_1D99FC1B0();
  v115 = v103;
  v116 = v104;
  v117 = v105;
  v111 = v99;
  v112 = v100;
  v113 = v101;
  v114 = v102;
  v107 = v95;
  v108 = v96;
  v109 = v97;
  v110 = v98;
  *&v118 = v106;
  *(&v118 + 1) = v21;
  *&v119 = v27;
  *(&v119 + 1) = v28;
  v29 = v54;
  if (*(v54 + 56) == 5)
  {
    v48 = 1;
    goto LABEL_13;
  }

  v30 = *(v29 + *(type metadata accessor for VisualQueryContext() + 84));
  if (v30 > 1)
  {
    v31 = v53;
    v32 = v51;
    if (v30 != 2)
    {
      v33 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v31 = v53;
  v32 = v51;
  if (v30)
  {
LABEL_9:
    v33 = sub_1D9C7E7DC();
    goto LABEL_10;
  }

  v33 = 1;
LABEL_10:

LABEL_12:
  v21 = *(&v118 + 1);
  swift_beginAccess();
  sub_1D9B331F0(v20, v32, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v34 = sub_1D9B5E3A4(v21, v31, v33 & 1);
  sub_1D9B336AC(v32, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v48 = v34 & 1;
LABEL_13:
  v49 = v13;
  v51 = *(v21 + 16);
  if (v51)
  {
    v35 = 0;
    v36 = (v21 + 96);
    v37 = MEMORY[0x1E69E7CC0];
    v50 = v21;
    while (v35 < *(v21 + 16))
    {
      v38 = a2;
      v39 = *(v36 - 4);
      v53 = *(v36 - 3);
      v54 = v39;
      v40 = *(v36 - 4);
      v42 = *(v36 - 1);
      v41 = *v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1D9AFB08C(0, *(v37 + 2) + 1, 1, v37);
      }

      v44 = *(v37 + 2);
      v43 = *(v37 + 3);
      if (v44 >= v43 >> 1)
      {
        v37 = sub_1D9AFB08C((v43 > 1), v44 + 1, 1, v37);
      }

      ++v35;
      *(v37 + 2) = v44 + 1;
      v45 = &v37[56 * v44];
      v46 = v53;
      *(v45 + 2) = v54;
      *(v45 + 3) = v46;
      *(v45 + 8) = v40;
      *(v45 + 9) = v42;
      *(v45 + 10) = v41;
      v36 += 9;
      v21 = v50;
      a2 = v38;
      if (v51 == v35)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v79 = v117;
    v80 = v118;
    v81 = v119;
    v75 = v113;
    v76 = v114;
    v77 = v115;
    v78 = v116;
    v71 = v109;
    v72 = v110;
    v73 = v111;
    v74 = v112;
    v69 = v107;
    v70 = v108;
    faiss::NormalizationTransform::~NormalizationTransform(&v69);
    v65 = v78;
    v66 = v79;
    v67 = v80;
    v68 = v81;
    v63 = v76;
    v64 = v77;
    v58 = v71;
    v59 = v72;
    v61 = v74;
    v62 = v75;
    v60 = v73;
    v56 = v69;
    v57 = v70;
    *v55 = a6;
    v55[1] = v48;
    v55[2] = v37;
    sub_1D9B335C8(&v107, &v82);
    a2(&v56, v55, 0);
    sub_1D9B171FC(&v107);

    v92 = v66;
    v93 = v67;
    v94 = v68;
    v88 = v62;
    v89 = v63;
    v90 = v64;
    v91 = v65;
    v84 = v58;
    v85 = v59;
    v86 = v60;
    v87 = v61;
    v82 = v56;
    v83 = v57;
    sub_1D99A6AE0(&v82, &unk_1ECB51B60);
    sub_1D9B336AC(v49, type metadata accessor for VisualSearchResultInternal);
  }
}

id VisualIntelligenceService.answerVisualQA(image:textQuery:dawToken:regionOfInterest:domains:annotation:queryContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v54 = a8;
  v53 = a7;
  v59 = a4;
  v60 = a5;
  v55 = a2;
  v56 = a3;
  v52 = a1;
  v57 = a10;
  v58 = a11;
  v66 = sub_1D9C7DA2C();
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D9C7DA4C();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for VisualQueryContext();
  v17 = *(Context - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](Context - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  v63 = &v49 - v21;
  v23 = type metadata accessor for CancelSession();
  v24 = a6[1];
  v50 = *a6;
  v49 = v24;
  v25 = [objc_allocWithZone(v23) init];
  v26 = a9;
  VisualQueryContext.init(_:)(a9, v22);
  v27 = v11;
  v51 = v11;
  v61 = *(v11 + 24);
  sub_1D9B331F0(v22, v19, type metadata accessor for VisualQueryContext);
  v28 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v29 = (v18 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  *(v33 + 24) = a1;
  v34 = v49;
  *(v33 + 32) = v50;
  *(v33 + 48) = v34;
  v35 = v54;
  *(v33 + 64) = v53;
  *(v33 + 72) = v35;
  sub_1D9B34EF0(v19, v33 + v28, type metadata accessor for VisualQueryContext);
  *(v33 + v29) = v25;
  v36 = (v33 + v30);
  v37 = v56;
  *v36 = v55;
  v36[1] = v37;
  v38 = (v33 + v31);
  v39 = v60;
  *v38 = v59;
  v38[1] = v39;
  v40 = (v33 + v32);
  v41 = v58;
  *v40 = v57;
  v40[1] = v41;
  aBlock[4] = sub_1D9B33D90;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_47;
  v42 = _Block_copy(aBlock);
  v43 = v35;
  v44 = v25;

  swift_unknownObjectRetain();

  v45 = v62;
  sub_1D9C7DA3C();
  v69 = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0);
  v46 = v64;
  v47 = v66;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v45, v46, v42);
  _Block_release(v42);
  (*(v68 + 8))(v46, v47);
  (*(v65 + 8))(v45, v67);
  sub_1D9B336AC(v63, type metadata accessor for VisualQueryContext);

  return v44;
}

uint64_t sub_1D9B2BF9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  v58 = a8;
  v55 = a7;
  v60 = a6;
  v61 = a3;
  v59 = a16;
  v56 = a15;
  v57 = a14;
  v53 = a13;
  Context = type metadata accessor for VisualQueryContext();
  v25 = *(Context - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](Context);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v51 - v29;
  v31 = a1;
  v54 = *(a1 + 96);
  swift_getObjectType();
  v32 = a2;
  sub_1D9AF6CF8(&v74);
  *&v71 = a9;
  *(&v71 + 1) = a10;
  v72 = a11;
  v73 = a12;
  v62 = a4;
  if (a4)
  {
    VIAnnotation.mappedAnnotation.getter(&v67);
    v33 = v67;
    v34 = v68;
    v35 = v69;
    v36 = v70;
  }

  else
  {
    v33 = xmmword_1D9C86A60;
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
  }

  v63 = v33;
  v64 = v34;
  v65 = v35;
  v66 = v36;
  v52 = v30;
  sub_1D9B331F0(a5, v30, type metadata accessor for VisualQueryContext);
  (*(v25 + 56))(v30, 0, 1, Context);
  sub_1D9B331F0(a5, &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualQueryContext);
  v37 = (*(v25 + 80) + 72) & ~*(v25 + 80);
  v38 = (v26 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v39[2] = v31;
  v39[3] = v32;
  v40 = v58;
  v39[4] = v55;
  v39[5] = v40;
  v41 = v57;
  v39[6] = v53;
  v39[7] = v41;
  v39[8] = v62;
  sub_1D9B34EF0(v27, v39 + v37, type metadata accessor for VisualQueryContext);
  v42 = v60;
  *(v39 + v38) = v60;
  v43 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
  v44 = v59;
  *v43 = v56;
  v43[1] = v44;
  v45 = v75;
  v46 = v76;
  v56 = __swift_project_boxed_opaque_existential_1(&v74, v75);

  swift_unknownObjectRetain();

  v47 = v62;
  v48 = v42;

  v49 = v52;
  sub_1D9B141C0(v56, &v71, v61, &v63, v52, v48, 5, 0, 0, sub_1D9B34F60, v39, v54, v45, v46);

  sub_1D99A6AE0(v49, &unk_1ECB51B10);
  v67 = v63;
  v68 = v64;
  v69 = v65;
  v70 = v66;
  sub_1D99A6AE0(&v67, &qword_1ECB514D0);
  return __swift_destroy_boxed_opaque_existential_0Tm(&v74);
}

uint64_t sub_1D9B2C3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, void (*a11)(__int128 *), uint64_t a12)
{
  v103 = a5;
  v104 = a7;
  v101 = a4;
  v102 = a6;
  v97 = a3;
  v99 = a2;
  v114 = a11;
  v14 = sub_1D9C7DA2C();
  v109 = *(v14 - 8);
  v110 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v107 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1D9C7DA4C();
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v105 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v98 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v112 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v113 = v93 - v20;
  v21 = sub_1D9C7D8DC();
  v95 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ParseResult(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B20);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (v93 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v96 = *(v30 - 8);
  v31 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v111 = v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v115 = v93 - v33;
  if (a8)
  {
    VIAnnotation.mappedAnnotation.getter(v165);
  }

  else
  {
    memset(v165 + 8, 0, 56);
    *&v165[0] = 1;
  }

  v34 = v115;
  sub_1D9B331F0(a9, v115, type metadata accessor for VisualQueryContext);
  Context = type metadata accessor for VisualQueryContext();
  (*(*(Context - 8) + 56))(v34, 0, 1, Context);
  sub_1D99AB100(a1, v29, &unk_1ECB51B20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v130 = *v29;
    v36 = v130;
    sub_1D9A0EF14(&v130);
    v126 = v140;
    v127 = v141;
    v128 = v142;
    v129 = v143;
    v122 = v136;
    v123 = v137;
    v124 = v138;
    v125 = v139;
    v118 = v132;
    v119 = v133;
    v120 = v134;
    v121 = v135;
    v116 = v130;
    v117 = v131;
    v37 = v36;
    v114(&v116);

    sub_1D99A6AE0(v165, &qword_1ECB514D0);
    sub_1D99A6AE0(v34, &unk_1ECB51B10);
    v154 = v126;
    v155 = v127;
    v156 = v128;
    v157 = v129;
    v150 = v122;
    v151 = v123;
    v152 = v124;
    v153 = v125;
    v146 = v118;
    v147 = v119;
    v148 = v120;
    v149 = v121;
    v144 = v116;
    v145 = v117;
    return sub_1D99A6AE0(&v144, &qword_1ECB51B40);
  }

  else
  {
    sub_1D9B34EF0(v29, v26, type metadata accessor for ParseResult);
    v39 = *&a10[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
    os_unfair_lock_lock(v39 + 4);
    v40 = a10[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
    os_unfair_lock_unlock(v39 + 4);
    if (v40)
    {
      static Logger.argos.getter(v23);
      v41 = sub_1D9C7D8BC();
      v42 = sub_1D9C7E09C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1D9962000, v41, v42, "answerVisualQACompletion(): canceled", v43, 2u);
        MEMORY[0x1DA7405F0](v43, -1, -1);
      }

      (*(v95 + 8))(v23, v21);
      sub_1D9A0EEC0();
      v44 = swift_allocError();
      *v45 = 0;
      *&v130 = v44;
      sub_1D9A0EF14(&v130);
      v126 = v140;
      v127 = v141;
      v128 = v142;
      v129 = v143;
      v122 = v136;
      v123 = v137;
      v124 = v138;
      v125 = v139;
      v118 = v132;
      v119 = v133;
      v120 = v134;
      v121 = v135;
      v116 = v130;
      v117 = v131;
      v114(&v116);
      sub_1D99A6AE0(v165, &qword_1ECB514D0);
      sub_1D99A6AE0(v34, &unk_1ECB51B10);
      v154 = v126;
      v155 = v127;
      v156 = v128;
      v157 = v129;
      v150 = v122;
      v151 = v123;
      v152 = v124;
      v153 = v125;
      v146 = v118;
      v147 = v119;
      v148 = v120;
      v149 = v121;
      v144 = v116;
      v145 = v117;
      sub_1D99A6AE0(&v144, &qword_1ECB51B40);
    }

    else
    {
      v94 = a10;
      v46 = *(v26 + 9);
      v47 = *(v26 + 7);
      v138 = *(v26 + 8);
      v139 = v46;
      v48 = *(v26 + 9);
      v140 = *(v26 + 10);
      v49 = *(v26 + 5);
      v50 = *(v26 + 3);
      v134 = *(v26 + 4);
      v135 = v49;
      v51 = *(v26 + 5);
      v52 = *(v26 + 7);
      v136 = *(v26 + 6);
      v137 = v52;
      v53 = *(v26 + 1);
      v130 = *v26;
      v131 = v53;
      v54 = *(v26 + 3);
      v56 = *v26;
      v55 = *(v26 + 1);
      v132 = *(v26 + 2);
      v133 = v54;
      v152 = v138;
      v153 = v48;
      v154 = *(v26 + 10);
      v148 = v134;
      v149 = v51;
      v150 = v136;
      v151 = v47;
      v144 = v56;
      v145 = v55;
      *&v141 = *(v26 + 22);
      *&v155 = *(v26 + 22);
      v146 = v132;
      v147 = v50;
      v57 = VisualUnderstanding.imageRegions.getter();
      v116 = v165[0];
      v117 = v165[1];
      v118 = v165[2];
      v119 = v165[3];
      sub_1D9C7B59C();
      swift_allocObject();
      sub_1D99AB100(v165, &v144, &qword_1ECB514D0);
      sub_1D9C7B58C();
      v152 = v138;
      v153 = v139;
      v154 = v140;
      *&v155 = v141;
      v148 = v134;
      v149 = v135;
      v150 = v136;
      v151 = v137;
      v144 = v130;
      v145 = v131;
      v146 = v132;
      v147 = v133;
      sub_1D9A0EBFC();
      v58 = sub_1D9C7B57C();
      v60 = v59;

      VisualUnderstanding.init(_:annotation:payload:)(v57, &v116, v58, v60, &v144);
      v93[0] = type metadata accessor for Argos_Protos_Queryflow_SearchConfig;
      v61 = v99;
      v62 = v113;
      sub_1D9B331F0(v99 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v113, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      v63 = v115;
      sub_1D9A3D06C(v115);
      v64 = *(v61 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
      swift_getObjectType();
      sub_1D9AF6CF8(v160);
      v65 = swift_allocObject();
      v97 = v65;
      v66 = v114;
      *(v65 + 2) = v61;
      *(v65 + 3) = v66;
      *(v65 + 4) = a12;
      type metadata accessor for MetricsBucket();
      v67 = swift_allocObject();
      *(v67 + 16) = MEMORY[0x1E69E7CC0];
      strcpy(v161, "E2E - Search");
      HIBYTE(v161[6]) = 0;
      v161[7] = -5120;
      v162 = "Search Overall";
      v163 = 14;
      v164 = 2;
      type metadata accessor for DurationMeasurement();
      swift_allocObject();

      v95 = v67;
      v99 = sub_1D9AFD4B8(v161, v67);

      v93[1] = *(v64 + 56);
      v114 = swift_allocObject();
      swift_weakInit();
      sub_1D99A17C8(v160, v159);
      sub_1D99AB100(v63, v111, &unk_1ECB51B10);
      sub_1D9B331F0(v62, v112, v93[0]);
      v68 = (*(v96 + 80) + 248) & ~*(v96 + 80);
      v69 = (v31 + *(v98 + 80) + v68) & ~*(v98 + 80);
      v70 = (v100 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
      v71 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
      v100 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
      v72 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
      v98 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
      v73 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
      v74 = swift_allocObject();
      v75 = v153;
      *(v74 + 152) = v152;
      *(v74 + 168) = v75;
      *(v74 + 184) = v154;
      v76 = v149;
      *(v74 + 88) = v148;
      *(v74 + 104) = v76;
      v77 = v151;
      *(v74 + 120) = v150;
      *(v74 + 136) = v77;
      v78 = v145;
      *(v74 + 24) = v144;
      *(v74 + 40) = v78;
      v79 = v147;
      *(v74 + 56) = v146;
      *(v74 + 16) = v114;
      *(v74 + 200) = v155;
      *(v74 + 72) = v79;
      sub_1D9979B9C(v159, v74 + 208);
      sub_1D9A0E758(v111, v74 + v68);
      sub_1D9B34EF0(v112, v74 + v69, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      v80 = (v74 + v70);
      v81 = v102;
      v83 = v103;
      v82 = v104;
      *v80 = v101;
      v80[1] = v83;
      v84 = (v74 + v71);
      *v84 = v81;
      v84[1] = v82;
      *(v74 + v100) = v99;
      v85 = v94;
      *(v74 + v72) = v94;
      *(v74 + v98) = v95;
      v86 = (v74 + v73);
      v87 = v97;
      *v86 = sub_1D9B35020;
      v86[1] = v87;
      v158[4] = sub_1D9B3503C;
      v158[5] = v74;
      v158[0] = MEMORY[0x1E69E9820];
      v158[1] = 1107296256;
      v158[2] = sub_1D9A0A1E0;
      v158[3] = &block_descriptor_143;
      v112 = _Block_copy(v158);

      sub_1D99BB40C(&v144, &v116);

      v88 = v85;

      v89 = v105;
      sub_1D9C7DA3C();
      *&v116 = MEMORY[0x1E69E7CC0];
      sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
      sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0);
      v90 = v107;
      v91 = v110;
      sub_1D9C7E34C();
      v92 = v112;
      MEMORY[0x1DA73E300](0, v89, v90, v112);
      _Block_release(v92);

      sub_1D9A0009C(&v144);

      sub_1D99A6AE0(v165, &qword_1ECB514D0);
      (*(v109 + 8))(v90, v91);
      (*(v106 + 8))(v89, v108);
      __swift_destroy_boxed_opaque_existential_0Tm(v160);
      sub_1D9B336AC(v113, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      sub_1D99A6AE0(v115, &unk_1ECB51B10);
    }

    return sub_1D9B336AC(v26, type metadata accessor for ParseResult);
  }
}

id VisualIntelligenceService.parseAndEncryptedSearch(image:regionOfInterest:domains:annotation:queryContext:completion:)(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v75 = a4;
  v76 = a7;
  v73 = a6;
  v78 = a1;
  v77 = sub_1D9C7DA2C();
  v82 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v63[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1D9C7DA4C();
  v80 = *(v13 - 8);
  v81 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v63[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Context = type metadata accessor for VisualQueryContext();
  v16 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context - 8);
  v71 = v17;
  v72 = &v63[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v63[-v19];
  v20 = sub_1D9C7D8DC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v63[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v63[-v25];
  v27 = *a2;
  v69 = a2[1];
  v70 = v27;
  static Logger.argos.getter(&v63[-v25]);
  sub_1D9A3E0E0(v23);
  v28 = *(v21 + 8);
  v28(v26, v20);

  v29 = sub_1D9C7D8BC();
  v30 = sub_1D9C7E09C();
  v31 = os_log_type_enabled(v29, v30);
  v68 = a3;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v67 = a5;
    v33 = v32;
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v33 = 134218242;
    *(v33 + 4) = *(a3 + 16);

    *(v33 + 12) = 2080;
    v64 = v30;
    sub_1D99E3A84(a3);
    v34 = v8;
    v35 = MEMORY[0x1DA73E110]();
    v65 = v28;
    v36 = v20;
    v37 = v16;
    v39 = v38;

    v40 = v35;
    v8 = v34;
    v41 = sub_1D9A0E224(v40, v39, aBlock);
    v16 = v37;

    *(v33 + 14) = v41;
    _os_log_impl(&dword_1D9962000, v29, v64, "Parse and search domain count %ld, domains: %s", v33, 0x16u);
    v42 = v66;
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
    MEMORY[0x1DA7405F0](v42, -1, -1);
    v43 = v33;
    a5 = v67;
    MEMORY[0x1DA7405F0](v43, -1, -1);

    v65(v23, v36);
  }

  else
  {

    v28(v23, v20);
  }

  v44 = [objc_allocWithZone(type metadata accessor for CancelSession()) init];
  v45 = a5;
  v46 = v83;
  VisualQueryContext.init(_:)(a5, v83);
  v67 = *(v8 + 24);
  v47 = v72;
  sub_1D9B331F0(v46, v72, type metadata accessor for VisualQueryContext);
  v48 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v49 = (v71 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v78;
  *(v50 + 16) = v8;
  *(v50 + 24) = v51;
  v52 = v69;
  *(v50 + 32) = v70;
  *(v50 + 48) = v52;
  v53 = v75;
  *(v50 + 64) = v68;
  *(v50 + 72) = v53;
  sub_1D9B34EF0(v47, v50 + v48, type metadata accessor for VisualQueryContext);
  *(v50 + v49) = v44;
  v54 = (v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8));
  v55 = v76;
  *v54 = v73;
  v54[1] = v55;
  aBlock[4] = sub_1D9B33E60;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_53;
  v56 = _Block_copy(aBlock);
  v57 = v53;
  v58 = v44;

  swift_unknownObjectRetain();
  v59 = v79;
  sub_1D9C7DA3C();
  v84 = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0);
  v60 = v74;
  v61 = v77;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v59, v60, v56);
  _Block_release(v56);
  (*(v82 + 8))(v60, v61);
  (*(v80 + 8))(v59, v81);
  sub_1D9B336AC(v83, type metadata accessor for VisualQueryContext);

  return v58;
}

uint64_t sub_1D9B2D90C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  v48 = a8;
  v46 = a7;
  v47 = a6;
  v49 = a3;
  Context = type metadata accessor for VisualQueryContext();
  v21 = *(Context - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](Context);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v44 - v24;
  v45 = *(a1 + 96);
  swift_getObjectType();
  sub_1D9AF6CF8(v61);
  *&v58 = a9;
  *(&v58 + 1) = a10;
  v59 = a11;
  v60 = a12;
  if (a4)
  {
    VIAnnotation.mappedAnnotation.getter(&v54);
    v26 = v54;
    v27 = v55;
    v28 = v56;
    v29 = v57;
  }

  else
  {
    v26 = xmmword_1D9C86A60;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
  }

  v50 = v26;
  v51 = v27;
  v52 = v28;
  v53 = v29;
  sub_1D9B331F0(a5, v25, type metadata accessor for VisualQueryContext);
  (*(v21 + 56))(v25, 0, 1, Context);
  sub_1D9B331F0(a5, &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualQueryContext);
  v30 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v31 = (v22 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v32[2] = a1;
  v32[3] = a2;
  v32[4] = a4;
  sub_1D9B34EF0(&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v30, type metadata accessor for VisualQueryContext);
  v44 = v25;
  v33 = v47;
  *(v32 + v31) = v47;
  v34 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v48;
  *v34 = v46;
  v34[1] = v35;
  v36 = v62;
  v37 = v63;
  v38 = __swift_project_boxed_opaque_existential_1(v61, v62);

  swift_unknownObjectRetain();
  v39 = a4;
  v40 = v33;

  v43 = v36;
  v41 = v44;
  sub_1D9B141C0(v38, &v58, v49, &v50, v44, v40, 1, 0, 0, sub_1D9B34814, v32, v45, v43, v37);

  sub_1D99A6AE0(v41, &unk_1ECB51B10);
  v54 = v50;
  v55 = v51;
  v56 = v52;
  v57 = v53;
  sub_1D99A6AE0(&v54, &qword_1ECB514D0);
  return __swift_destroy_boxed_opaque_existential_0Tm(v61);
}

uint64_t sub_1D9B2DCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void (*a7)(__int128 *), uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v20 - v16;
  sub_1D9B331F0(a5, &v20 - v16, type metadata accessor for VisualQueryContext);
  Context = type metadata accessor for VisualQueryContext();
  (*(*(Context - 8) + 56))(v17, 0, 1, Context);
  sub_1D9B2DE08(a3, a4, v17, a6, a1, a7, a8);
  return sub_1D99A6AE0(v17, &unk_1ECB51B10);
}

uint64_t sub_1D9B2DE08(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void (*a6)(__int128 *), uint64_t a7)
{
  v152 = a3;
  v156 = a6;
  v157 = a7;
  v155 = a5;
  v151 = a2;
  v147 = a1;
  v8 = sub_1D9C7DA2C();
  v144 = *(v8 - 8);
  v145 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v141 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9C7DA4C();
  v142 = *(v10 - 8);
  v143 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v140 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v137 = *(v12 - 8);
  v138 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v146 = &v133 - v13;
  v14 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v148 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v149 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v135 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v139 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v154 = &v133 - v19;
  v20 = sub_1D9C7D8DC();
  v150 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ParseResult(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B20);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v133 - v27);
  sub_1D99AB100(v155, &v133 - v27, &unk_1ECB51B20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v173 = *v28;
    v29 = v173;
    sub_1D9A0EF14(&v173);
    v169 = v183;
    v170 = v184;
    v171 = v185;
    v172 = v186;
    v165 = v179;
    v166 = v180;
    v167 = v181;
    v168 = v182;
    v161 = v175;
    v162 = v176;
    v163 = v177;
    v164 = v178;
    v159 = v173;
    v160 = v174;
    v30 = v29;
    v156(&v159);

    v197 = v169;
    v198 = v170;
    v199 = v171;
    v200 = v172;
    v193 = v165;
    v194 = v166;
    v195 = v167;
    v196 = v168;
    v189 = v161;
    v190 = v162;
    v191 = v163;
    v192 = v164;
    v187 = v159;
    v188 = v160;
    return sub_1D99A6AE0(&v187, &qword_1ECB51B40);
  }

  sub_1D9B34EF0(v28, v25, type metadata accessor for ParseResult);
  v32 = *&a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
  os_unfair_lock_lock(v32 + 4);
  v33 = a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
  os_unfair_lock_unlock(v32 + 4);
  if (v33 != 1)
  {
    v41 = *(v25 + 9);
    v42 = *(v25 + 7);
    v209 = *(v25 + 8);
    v210 = v41;
    v43 = *(v25 + 9);
    v211 = *(v25 + 10);
    v44 = *(v25 + 5);
    v45 = *(v25 + 3);
    v205 = *(v25 + 4);
    v206 = v44;
    v46 = *(v25 + 5);
    v47 = *(v25 + 7);
    v207 = *(v25 + 6);
    v208 = v47;
    v48 = *(v25 + 1);
    v201 = *v25;
    v202 = v48;
    v49 = *(v25 + 3);
    v51 = *v25;
    v50 = *(v25 + 1);
    v203 = *(v25 + 2);
    v204 = v49;
    v195 = v209;
    v196 = v43;
    v197 = *(v25 + 10);
    v191 = v205;
    v192 = v46;
    v193 = v207;
    v194 = v42;
    v187 = v51;
    v188 = v50;
    v212 = *(v25 + 22);
    *&v198 = *(v25 + 22);
    v189 = v203;
    v190 = v45;
    v52 = VisualUnderstanding.imageRegions.getter();
    v134 = a4;
    if (v151)
    {
      VIAnnotation.mappedAnnotation.getter(&v187);
      v53 = v187;
      v54 = v188;
      v55 = v189;
      v56 = v190;
    }

    else
    {
      v53 = xmmword_1D9C86A60;
      v54 = 0uLL;
      v55 = 0uLL;
      v56 = 0uLL;
    }

    v57 = v154;
    v58 = v152;
    v173 = v53;
    v174 = v54;
    v175 = v55;
    v176 = v56;
    sub_1D9C7B59C();
    swift_allocObject();
    sub_1D9C7B58C();
    v195 = v209;
    v196 = v210;
    v197 = v211;
    *&v198 = v212;
    v191 = v205;
    v192 = v206;
    v193 = v207;
    v194 = v208;
    v187 = v201;
    v188 = v202;
    v189 = v203;
    v190 = v204;
    sub_1D9A0EBFC();
    v59 = sub_1D9C7B57C();
    v61 = v60;

    VisualUnderstanding.init(_:annotation:payload:)(v52, &v173, v59, v61, &v213);
    sub_1D9B331F0(v153 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v57, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D9A3D06C(v58);
    v195 = v221;
    v196 = v222;
    v197 = v223;
    *&v198 = v224;
    v191 = v217;
    v192 = v218;
    v193 = v219;
    v194 = v220;
    v187 = v213;
    v188 = v214;
    v189 = v215;
    v190 = v216;
    v62 = VisualUnderstanding.imageRegions.getter();
    if (*(v62 + 16) && (v63 = v149, sub_1D9B331F0(v62 + ((*(v148 + 80) + 32) & ~*(v148 + 80)), v149, type metadata accessor for VisualUnderstanding.ImageRegion), , v64 = VisualUnderstanding.ImageRegion.domainInfo.getter(), sub_1D9B336AC(v63, type metadata accessor for VisualUnderstanding.ImageRegion), *(v64 + 16)))
    {
      v65 = *(v64 + 32);

      LOBYTE(v173) = v65;
      v66 = VisualDomain.mappedDomainKey.getter();
      v68 = v67;
      v69 = sub_1D9C7DC7C();
      if (v68)
      {
        v133 = v25;
        if (v66 == v69 && v68 == v70)
        {

LABEL_25:

          v87 = *(v153 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
          swift_getObjectType();
          sub_1D9AF6CF8(&v159);
          v88 = swift_allocObject();
          v155 = v88;
          v89 = v157;
          *(v88 + 16) = v156;
          *(v88 + 24) = v89;
          strcpy(v225, "E2E - Search");
          HIBYTE(v225[6]) = 0;
          v225[7] = -5120;
          v226 = "Search Overall";
          v227 = 14;
          v228 = 2;
          type metadata accessor for DurationMeasurement();
          swift_allocObject();

          v90 = sub_1D9AFD4B8(v225, 0);
          v156 = *(v87 + 56);
          v157 = v90;
          v91 = swift_allocObject();
          swift_weakInit();
          sub_1D99A17C8(&v159, v158);
          sub_1D99AB100(v58, v146, &unk_1ECB51B10);
          v92 = v139;
          sub_1D9B331F0(v57, v139, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
          v93 = (*(v137 + 80) + 248) & ~*(v137 + 80);
          v94 = (v138 + *(v135 + 80) + v93) & ~*(v135 + 80);
          v95 = (v136 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
          v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
          v97 = swift_allocObject();
          v98 = v222;
          *(v97 + 152) = v221;
          *(v97 + 168) = v98;
          *(v97 + 184) = v223;
          v99 = v218;
          *(v97 + 88) = v217;
          *(v97 + 104) = v99;
          v100 = v220;
          *(v97 + 120) = v219;
          *(v97 + 136) = v100;
          v101 = v214;
          *(v97 + 24) = v213;
          *(v97 + 40) = v101;
          v102 = v216;
          *(v97 + 56) = v215;
          v153 = v91;
          *(v97 + 16) = v91;
          *(v97 + 200) = v224;
          *(v97 + 72) = v102;
          sub_1D9979B9C(v158, v97 + 208);
          sub_1D9A0E758(v146, v97 + v93);
          sub_1D9B34EF0(v92, v97 + v94, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
          *(v97 + v95) = v157;
          v103 = v134;
          *(v97 + v96) = v134;
          v104 = (v97 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8));
          v105 = v155;
          *v104 = sub_1D9B3521C;
          v104[1] = v105;
          *&v175 = sub_1D9B34DA4;
          *(&v175 + 1) = v97;
          *&v173 = MEMORY[0x1E69E9820];
          *(&v173 + 1) = 1107296256;
          *&v174 = sub_1D9A0A1E0;
          *(&v174 + 1) = &block_descriptor_130;
          v106 = _Block_copy(&v173);

          sub_1D99BB40C(&v213, &v187);

          v107 = v103;
LABEL_26:

          v108 = v140;
          sub_1D9C7DA3C();
          *&v187 = MEMORY[0x1E69E7CC0];
          sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
          sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0);
          v109 = v141;
          v110 = v145;
          sub_1D9C7E34C();
          MEMORY[0x1DA73E300](0, v108, v109, v106);
          _Block_release(v106);

          sub_1D9A0009C(&v213);

          (*(v144 + 8))(v109, v110);
          (*(v142 + 8))(v108, v143);
          __swift_destroy_boxed_opaque_existential_0Tm(&v159);
          sub_1D9B336AC(v154, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);

          v85 = v133;
          return sub_1D9B336AC(v85, type metadata accessor for ParseResult);
        }

        v86 = sub_1D9C7E7DC();

        if (v86)
        {
          goto LABEL_25;
        }

        if (v66 == sub_1D9C7DC7C() && v68 == v111)
        {

LABEL_31:

          v113 = *(v153 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
          swift_getObjectType();
          sub_1D9AF6CF8(&v159);
          v114 = swift_allocObject();
          v155 = v114;
          v115 = v157;
          *(v114 + 16) = v156;
          *(v114 + 24) = v115;
          strcpy(v225, "E2E - Search");
          HIBYTE(v225[6]) = 0;
          v225[7] = -5120;
          v226 = "Search Overall";
          v227 = 14;
          v228 = 2;
          type metadata accessor for DurationMeasurement();
          swift_allocObject();

          v116 = sub_1D9AFD4B8(v225, 0);
          v156 = *(v113 + 56);
          v157 = v116;
          v117 = swift_allocObject();
          swift_weakInit();
          sub_1D99A17C8(&v159, v158);
          sub_1D99AB100(v58, v146, &unk_1ECB51B10);
          v118 = v139;
          sub_1D9B331F0(v57, v139, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
          v119 = (*(v137 + 80) + 248) & ~*(v137 + 80);
          v120 = (v138 + *(v135 + 80) + v119) & ~*(v135 + 80);
          v121 = (v136 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
          v122 = (v121 + 15) & 0xFFFFFFFFFFFFFFF8;
          v123 = swift_allocObject();
          v124 = v222;
          *(v123 + 152) = v221;
          *(v123 + 168) = v124;
          *(v123 + 184) = v223;
          v125 = v218;
          *(v123 + 88) = v217;
          *(v123 + 104) = v125;
          v126 = v220;
          *(v123 + 120) = v219;
          *(v123 + 136) = v126;
          v127 = v214;
          *(v123 + 24) = v213;
          *(v123 + 40) = v127;
          v128 = v216;
          *(v123 + 56) = v215;
          v153 = v117;
          *(v123 + 16) = v117;
          *(v123 + 200) = v224;
          *(v123 + 72) = v128;
          sub_1D9979B9C(v158, v123 + 208);
          sub_1D9A0E758(v146, v123 + v119);
          sub_1D9B34EF0(v118, v123 + v120, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
          *(v123 + v121) = v157;
          v129 = v134;
          *(v123 + v122) = v134;
          v130 = (v123 + ((v122 + 15) & 0xFFFFFFFFFFFFFFF8));
          v131 = v155;
          *v130 = sub_1D9B348F0;
          v130[1] = v131;
          *&v175 = sub_1D9B3490C;
          *(&v175 + 1) = v123;
          *&v173 = MEMORY[0x1E69E9820];
          *(&v173 + 1) = 1107296256;
          *&v174 = sub_1D9A0A1E0;
          *(&v174 + 1) = &block_descriptor_120;
          v106 = _Block_copy(&v173);
          sub_1D99BB40C(&v213, &v187);
          v132 = v129;

          goto LABEL_26;
        }

        v112 = sub_1D9C7E7DC();

        if (v112)
        {
          goto LABEL_31;
        }

LABEL_18:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53560);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1D9C8CDB0;
        *(v71 + 32) = sub_1D9C7DC7C();
        *(v71 + 40) = v72;
        *(v71 + 48) = sub_1D9C7DC7C();
        *(v71 + 56) = v73;
        *(v71 + 64) = sub_1D9C7DC7C();
        *(v71 + 72) = v74;
        *(v71 + 80) = sub_1D9C7DC7C();
        *(v71 + 88) = v75;
        *(v71 + 96) = sub_1D9C7DC7C();
        *(v71 + 104) = v76;
        *(v71 + 112) = sub_1D9C7DC7C();
        *(v71 + 120) = v77;
        *(v71 + 128) = sub_1D9C7DC7C();
        *(v71 + 136) = v78;
        v79 = sub_1D9C7DC7C();
        *(v71 + 144) = v79;
        *(v71 + 152) = v80;
        *&v187 = v66;
        *(&v187 + 1) = v68;
        MEMORY[0x1EEE9AC00](v79);
        *(&v133 - 2) = &v187;
        v81 = sub_1D9BC1A0C(sub_1D9B348C8, (&v133 - 4), v71);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518F0);
        swift_arrayDestroy();
        swift_deallocClassInstance();

        if (v81)
        {
          swift_getObjectType();
          sub_1D9AF6CF8(&v173);
          v195 = v221;
          v196 = v222;
          v197 = v223;
          *&v198 = v224;
          v191 = v217;
          v192 = v218;
          v193 = v219;
          v194 = v220;
          v187 = v213;
          v188 = v214;
          v189 = v215;
          v190 = v216;
          v82 = swift_allocObject();
          *(v82 + 16) = v156;
          *(v82 + 24) = v157;

          sub_1D9B15408(&v187, v57, sub_1D9B348E8, v82);

          __swift_destroy_boxed_opaque_existential_0Tm(&v173);
          sub_1D9B336AC(v57, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
          sub_1D9B336AC(v25, type metadata accessor for ParseResult);
          return sub_1D9A0009C(&v213);
        }

        sub_1D9A0009C(&v213);
        sub_1D9A0EEC0();
        v83 = swift_allocError();
        *v84 = 3;
        *&v173 = v83;
        sub_1D9A0EF14(&v173);
        v169 = v183;
        v170 = v184;
        v171 = v185;
        v172 = v186;
        v165 = v179;
        v166 = v180;
        v167 = v181;
        v168 = v182;
        v161 = v175;
        v162 = v176;
        v163 = v177;
        v164 = v178;
        v159 = v173;
        v160 = v174;
        v156(&v159);
        v197 = v169;
        v198 = v170;
        v199 = v171;
        v200 = v172;
        v193 = v165;
        v194 = v166;
        v195 = v167;
        v196 = v168;
        v189 = v161;
        v190 = v162;
        v191 = v163;
        v192 = v164;
        v187 = v159;
        v188 = v160;
        sub_1D99A6AE0(&v187, &qword_1ECB51B40);
        sub_1D9B336AC(v57, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
        goto LABEL_21;
      }
    }

    else
    {

      sub_1D9C7DC7C();
      v66 = 0;
    }

    sub_1D9C7DC7C();

    v68 = 0;
    goto LABEL_18;
  }

  static Logger.argos.getter(v22);
  v34 = sub_1D9C7D8BC();
  v35 = sub_1D9C7E09C();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v156;
  if (v36)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1D9962000, v34, v35, "parseAndSearchCompletion(): canceled", v38, 2u);
    MEMORY[0x1DA7405F0](v38, -1, -1);
  }

  (*(v150 + 8))(v22, v20);
  sub_1D9A0EEC0();
  v39 = swift_allocError();
  *v40 = 0;
  *&v173 = v39;
  sub_1D9A0EF14(&v173);
  v169 = v183;
  v170 = v184;
  v171 = v185;
  v172 = v186;
  v165 = v179;
  v166 = v180;
  v167 = v181;
  v168 = v182;
  v161 = v175;
  v162 = v176;
  v163 = v177;
  v164 = v178;
  v159 = v173;
  v160 = v174;
  v37(&v159);
  v197 = v169;
  v198 = v170;
  v199 = v171;
  v200 = v172;
  v193 = v165;
  v194 = v166;
  v195 = v167;
  v196 = v168;
  v189 = v161;
  v190 = v162;
  v191 = v163;
  v192 = v164;
  v187 = v159;
  v188 = v160;
  sub_1D99A6AE0(&v187, &qword_1ECB51B40);
LABEL_21:
  v85 = v25;
  return sub_1D9B336AC(v85, type metadata accessor for ParseResult);
}