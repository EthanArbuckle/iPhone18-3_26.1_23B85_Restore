uint64_t sub_1D9B8F8F8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1D9C7E79C();
  if (result >= v4)
  {
    if (v4 < 0)
    {
      goto LABEL_32;
    }

    if (v4 <= 1)
    {
    }

    v9 = *a1;

    v10 = -1;
    v11 = 1;
    v12 = v9;
LABEL_12:
    v13 = *(v9 + 8 * v11);
    v14 = v10;
    v15 = v12;
    while ((v13 & 0x8000000000000000) == 0)
    {
      v16 = *(a2 + 16);
      v17 = *(v16 + 16);
      if (v13 >= v17)
      {
        goto LABEL_27;
      }

      v18 = *(a2 + 24);
      result = *(v18 + 16);
      if (v13 >= result)
      {
        goto LABEL_28;
      }

      v19 = *v15;
      if (*v15 >= v17)
      {
        goto LABEL_29;
      }

      if (v19 >= result)
      {
        goto LABEL_30;
      }

      v20 = v16 + 32;
      v21 = *(v20 + 8 * v13);
      v22 = v18 + 32;
      result = *(v22 + 8 * v13);
      v23 = *(v20 + 8 * v19);
      v24 = result < *(v22 + 8 * v19);
      v25 = v21 == v23;
      v26 = v21 < v23;
      if (v25)
      {
        v26 = v24;
      }

      if (v26)
      {
        if (!v9)
        {
          goto LABEL_33;
        }

        *v15 = v13;
        v15[1] = v19;
        --v15;
        if (!__CFADD__(v14++, 1))
        {
          continue;
        }
      }

      ++v11;
      ++v12;
      --v10;
      if (v11 == v4)
      {
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else if (v4 >= -1)
  {
    v6 = result;
    v7 = v4 / 2;
    if (v4 <= 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v8 = sub_1D9C7DF5C();
      *(v8 + 16) = v7;
    }

    v28[0] = (v8 + 32);
    v28[1] = v7;

    sub_1D9B8F260(v28, v29, a1, v6, a2);

    *(v8 + 16) = 0;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1D9B8FAF8(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D9B1A6C0(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_1D9B8F8F8(v7, a2);

  *a1 = v4;
}

uint64_t sub_1D9B8FBA0(double *a1, double *a2, char a3, double a4, double a5, double a6)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  *&v84 = *a1;
  *(&v84 + 1) = v9;
  v85 = v10;
  *&v82 = v11;
  *(&v82 + 1) = v12;
  v83 = v13;
  v14 = S2Point.angle(to:)(*&a4);
  if (qword_1ECB50910 != -1)
  {
    swift_once();
  }

  v84 = xmmword_1ECB51428;
  v15 = &v84;
  v16 = S2.Metric.getMaxLevel(value:)(v14 * 1.02);
  v17 = v16;
  if (a3)
  {
    if (v16 == 30)
    {
      v18 = 0x40000000000000;
      goto LABEL_8;
    }

    v46 = (v11 - v8) * 0.01;
    v47 = (v12 - v9) * 0.01;
    v48 = (v13 - v10) * 0.01;
    v49 = v14 * 0.01;
    v50 = v10 * v47 - v9 * v48;
    v51 = v8 * v48 - v10 * v46;
    v52 = v9 * v46 - v8 * v47;
    v53 = sqrt(v52 * v52 + v50 * v50 + v51 * v51);
    if (v53 != 0.0)
    {
      v53 = 1.0 / v53;
    }

    v54 = v49 * (v50 * v53);
    v55 = v49 * (v51 * v53);
    v56 = v49 * (v52 * v53);
    v57 = v8 - v46;
    v58 = v9 - v47;
    v59 = v10 - v48;
    v77 = v12;
    v78 = v11;
    v60 = v11 + v46;
    v61 = v12 + v47;
    v76 = v13;
    v62 = v13 + v48;
    v63 = v57 + v54;
    v64 = v58 + v55;
    v65 = v59 + v56;
    v66 = v60 - v54;
    v67 = v61 - v55;
    v74 = v61 + v55;
    v75 = v60 + v54;
    v72 = v62 - v56;
    v73 = v62 + v56;
    *&v84 = v57 - v54;
    *(&v84 + 1) = v58 - v55;
    v85 = v59 - v56;
    S2CellId.init(point:)(&v84, &v82);
    *&v84 = v63;
    *(&v84 + 1) = v64;
    v85 = v65;
    S2CellId.init(point:)(&v84, &v81);
    *&v84 = v66;
    *(&v84 + 1) = v67;
    v85 = v72;
    S2CellId.init(point:)(&v84, &v80);
    *&v84 = v75;
    *(&v84 + 1) = v74;
    v85 = v73;
    S2CellId.init(point:)(&v84, &v79);
    v20 = v81;
    v18 = v82;
    v68 = v82 >> 61;
    if (v82 >> 61 == v81 >> 61)
    {
      v69 = v80;
      v12 = v77;
      v11 = v78;
      v13 = v76;
      if (v68 == v80 >> 61 && (v70 = v79, v68 == v79 >> 61))
      {
        if (v82 != v81)
        {
          goto LABEL_40;
        }

LABEL_38:
        if (v18 != v69 || v18 != v70)
        {
LABEL_40:
          while (!__OFSUB__(0, v18))
          {
            if (__OFSUB__(0, 4 * (-v18 & v18)))
            {
              goto LABEL_54;
            }

            if (__OFSUB__(0, v20))
            {
              goto LABEL_55;
            }

            if (__OFSUB__(0, 4 * (-v20 & v20)))
            {
              goto LABEL_56;
            }

            if (__OFSUB__(0, v69))
            {
              goto LABEL_57;
            }

            if (__OFSUB__(0, 4 * (-v69 & v69)))
            {
              goto LABEL_58;
            }

            if (__OFSUB__(0, v70))
            {
              goto LABEL_59;
            }

            v71 = 4 * (-v70 & v70);
            if (__OFSUB__(0, v71))
            {
              goto LABEL_60;
            }

            v18 = (-4 * (-v18 & v18)) & v18 | (4 * (-v18 & v18));
            v20 = (-4 * (-v20 & v20)) & v20 | (4 * (-v20 & v20));
            v69 = (-4 * (-v69 & v69)) & v69 | (4 * (-v69 & v69));
            v70 = (-4 * (-v70 & v70)) & v70 | v71;
            if (v18 == v20)
            {
              goto LABEL_38;
            }
          }

          goto LABEL_53;
        }
      }

      else
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v12 = v77;
      v11 = v78;
      v13 = v76;
    }
  }

  else
  {
    type metadata accessor for S2EdgeIndex();
    *&v84 = v8;
    *(&v84 + 1) = v9;
    v85 = v10;
    *&v82 = v11;
    *(&v82 + 1) = v12;
    v83 = v13;
    sub_1D9B8DDC4(&v84, &v82, &v81);
    v18 = v81;
  }

  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

LABEL_8:
  *&v84 = v18;
  v15 = &v84;
  v19 = S2CellId.level.getter();
  v20 = v17 - 2;
  if (__OFSUB__(v17, 2))
  {
    __break(1u);
LABEL_53:
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
    __break(1u);
    goto LABEL_61;
  }

  if (v19 >= v20)
  {
    v17 = sub_1D9AFAA28(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = *(v17 + 16);
    v20 = *(v17 + 24);
    v15 = (v6 + 1);
    if (v6 < v20 >> 1)
    {
LABEL_18:
      *(v17 + 16) = v15;
      *(v17 + 8 * v6 + 32) = v18;
      *&v84 = v18;
      return S2CellId.level.getter();
    }

LABEL_61:
    v17 = sub_1D9AFAA28((v20 > 1), v15, 1, v17);
    goto LABEL_18;
  }

LABEL_10:
  if (v17)
  {
    v21 = (v8 + v11) * 0.5;
    v22 = (v9 + v12) * 0.5;
    v23 = (v10 + v13) * 0.5;
    v24 = sqrt(v21 * v21 + v22 * v22 + v23 * v23);
    if (v24 != 0.0)
    {
      v24 = 1.0 / v24;
    }

    v25 = v21 * v24;
    v26 = v22 * v24;
    v27 = v23 * v24;
    if (v17 >= 29)
    {
      v28 = 29;
    }

    else
    {
      v28 = v17;
    }

    *&v84 = v25;
    *(&v84 + 1) = v26;
    v85 = v27;
    S2CellId.init(point:)(&v84, &v82);
    S2CellId.getVertexNeighbors(level:)(v28);
    return v28;
  }

  else
  {
    v30 = sub_1D9AFAA28(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v30 = sub_1D9AFAA28((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v33;
    *&v30[8 * v32 + 32] = 0x1000000000000000;
    v34 = *(v30 + 3);
    v35 = v32 + 2;
    if (v33 >= v34 >> 1)
    {
      v30 = sub_1D9AFAA28((v34 > 1), v35, 1, v30);
    }

    *(v30 + 2) = v35;
    *&v30[8 * v33 + 32] = 0x3000000000000000;
    v37 = *(v30 + 2);
    v36 = *(v30 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v30 = sub_1D9AFAA28((v36 > 1), v37 + 1, 1, v30);
    }

    *(v30 + 2) = v38;
    *&v30[8 * v37 + 32] = 0x5000000000000000;
    v39 = *(v30 + 3);
    v40 = v37 + 2;
    if (v38 >= v39 >> 1)
    {
      v30 = sub_1D9AFAA28((v39 > 1), v40, 1, v30);
    }

    *(v30 + 2) = v40;
    *&v30[8 * v38 + 32] = 0x7000000000000000;
    v42 = *(v30 + 2);
    v41 = *(v30 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v30 = sub_1D9AFAA28((v41 > 1), v42 + 1, 1, v30);
    }

    *(v30 + 2) = v43;
    *&v30[8 * v42 + 32] = 0x9000000000000000;
    v44 = *(v30 + 3);
    v45 = v42 + 2;
    if (v43 >= v44 >> 1)
    {
      v30 = sub_1D9AFAA28((v44 > 1), v45, 1, v30);
    }

    result = 0;
    *(v30 + 2) = v45;
    *&v30[8 * v43 + 32] = 0xB000000000000000;
  }

  return result;
}

unint64_t sub_1D9B901D0()
{
  result = qword_1ECB53D58;
  if (!qword_1ECB53D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53D58);
  }

  return result;
}

uint64_t sub_1D9B903C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D9B9040C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D9B90498(double *a1, double *a2)
{
  v2 = 0;
  v29 = a1[1];
  v30 = *a1;
  v28 = a1[2];
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    S2Cell.getRawVertex(_:)(v2);
    v7 = sqrt(v31 * v31 + v32 * v32 + v33 * v33);
    if (v7 == 0.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1.0 / v7;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D9AFA570(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1D9AFA570((v10 > 1), v11 + 1, 1, v6);
      v6 = result;
    }

    ++v2;
    *(v6 + 16) = v11 + 1;
    v12 = (v6 + 32 + 24 * v11);
    *v12 = v31 * v8;
    v12[1] = v32 * v8;
    v12[2] = v33 * v8;
  }

  while (v2 != 4);
  v13 = v11 + 1;
  v14 = (v6 + 48);
  v15 = 1;
  while (v13)
  {
    if ((v15 & 3u) > v11)
    {
      goto LABEL_24;
    }

    v16 = *(v14 - 2);
    v17 = *(v14 - 1);
    v18 = *v14;
    v19 = v29 * *v14;
    v20 = v30 * *v14;
    v21 = v5 * (v30 * v17 - v29 * v16) + v3 * (v19 - v28 * v17) + v4 * (v28 * v16 - v20);
    if (fabs(v21) < 1.0e-14 || (v22 = (v6 + 32 + 24 * (v15 & 3)), v23 = v22[1], v24 = v22[2], v25 = v28 * (v3 * v23 - v4 * *v22) + v30 * (v4 * v24 - v5 * v23) + v29 * (v5 * *v22 - v3 * v24), fabs(v25) < 1.0e-14) || v21 * v25 >= 0.0 && ((v26 = (v5 * v17 - v4 * v18) * *v22 + (v3 * v18 - v5 * v16) * v23 + (v4 * v16 - v3 * v17) * v24, fabs(v26) < 1.0e-14) || (v27 = v18 * (v29 * v16 - v30 * v17) + v16 * (v28 * v17 - v19) + v17 * (v20 - v28 * v16), fabs(v27) < 1.0e-14) || v21 * v26 >= 0.0 && v21 * v27 >= 0.0))
    {

      return 1;
    }

    --v13;
    ++v15;
    v14 += 3;
    if (v15 == 5)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t ObjectKnowledge.Property.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ObjectKnowledge.Property.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ObjectKnowledge.Property.typeKey.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ObjectKnowledge.Property.typeValue.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D9B9087C()
{
  v1 = 1701667182;
  v2 = 0x79654B65707974;
  if (*v0 != 2)
  {
    v2 = 0x756C615665707974;
  }

  if (*v0)
  {
    v1 = 0x65756C6176;
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

uint64_t sub_1D9B908F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9B9120C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9B90918(uint64_t a1)
{
  v2 = sub_1D9B90FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9B90954(uint64_t a1)
{
  v2 = sub_1D9B90FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ObjectKnowledge.Property.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53D60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B90FD0();
  sub_1D9C7E96C();
  v16 = 0;
  v10 = v12[7];
  sub_1D9C7E6EC();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1D9C7E6EC();
  v14 = 2;
  sub_1D9C7E6EC();
  v13 = 3;
  sub_1D9C7E6EC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ObjectKnowledge.Property.hash(into:)()
{
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();

  return sub_1D9C7DD6C();
}

uint64_t ObjectKnowledge.Property.hashValue.getter()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  return sub_1D9C7E93C();
}

uint64_t ObjectKnowledge.Property.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53D70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B90FD0();
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1D9C7E5FC();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_1D9C7E5FC();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_1D9C7E5FC();
  v25 = v13;
  v33 = 3;
  v14 = sub_1D9C7E5FC();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_1D9B91024(&v28, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_1D9B9105C(v32);
}

unint64_t sub_1D9B90FD0()
{
  result = qword_1ECB53D68;
  if (!qword_1ECB53D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53D68);
  }

  return result;
}

unint64_t sub_1D9B91090()
{
  result = qword_1ECB53D78;
  if (!qword_1ECB53D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53D78);
  }

  return result;
}

unint64_t sub_1D9B91108()
{
  result = qword_1ECB53D80;
  if (!qword_1ECB53D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53D80);
  }

  return result;
}

unint64_t sub_1D9B91160()
{
  result = qword_1ECB53D88;
  if (!qword_1ECB53D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53D88);
  }

  return result;
}

unint64_t sub_1D9B911B8()
{
  result = qword_1ECB53D90;
  if (!qword_1ECB53D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53D90);
  }

  return result;
}

uint64_t sub_1D9B9120C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B65707974 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756C615665707974 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

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

uint64_t Set<>.toVisualDomains()(uint64_t a1)
{
  v16 = MEMORY[0x1E69E7CD0];
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v8 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    String.mappedVisualDomain.getter(v12, v13, &v15);

    if (v15 != 27)
    {
      result = sub_1D9B92014(&v14, v15);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v16;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t String.mappedVisualDomain.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1D9C7DC7C() == a1 && v6 == a2)
  {
    v10 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v8 = sub_1D9C7E7DC();

  v10 = 0;
  if (v8)
  {
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v11 == a2)
  {
    v10 = 2;
    goto LABEL_13;
  }

  v13 = sub_1D9C7E7DC();

  if (v13)
  {
    v10 = 2;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v14 == a2)
  {
    v10 = 3;
    goto LABEL_13;
  }

  v16 = sub_1D9C7E7DC();

  if (v16)
  {
    v10 = 3;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v17 == a2)
  {
    v10 = 1;
    goto LABEL_13;
  }

  v18 = sub_1D9C7E7DC();

  if (v18)
  {
    v10 = 1;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v19 == a2)
  {
    v10 = 9;
    goto LABEL_13;
  }

  v20 = sub_1D9C7E7DC();

  if (v20)
  {
    v10 = 9;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v21 == a2)
  {
    v10 = 7;
    goto LABEL_13;
  }

  v22 = sub_1D9C7E7DC();

  if (v22)
  {
    v10 = 7;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v23 == a2)
  {
    v10 = 8;
    goto LABEL_13;
  }

  v24 = sub_1D9C7E7DC();

  if (v24)
  {
    v10 = 8;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v25 == a2)
  {
    v10 = 11;
    goto LABEL_13;
  }

  v26 = sub_1D9C7E7DC();

  if (v26)
  {
    v10 = 11;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v27 == a2)
  {
    v10 = 12;
    goto LABEL_13;
  }

  v28 = sub_1D9C7E7DC();

  if (v28)
  {
    v10 = 12;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v29 == a2)
  {
    v10 = 10;
    goto LABEL_13;
  }

  v30 = sub_1D9C7E7DC();

  if (v30)
  {
    v10 = 10;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v31 == a2)
  {
    v10 = 13;
    goto LABEL_13;
  }

  v32 = sub_1D9C7E7DC();

  if (v32)
  {
    v10 = 13;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v33 == a2)
  {
    v10 = 14;
    goto LABEL_13;
  }

  v34 = sub_1D9C7E7DC();

  if (v34)
  {
    v10 = 14;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v35 == a2)
  {
    v10 = 15;
    goto LABEL_13;
  }

  v36 = sub_1D9C7E7DC();

  if (v36)
  {
    v10 = 15;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v37 == a2)
  {
    v10 = 16;
    goto LABEL_13;
  }

  v38 = sub_1D9C7E7DC();

  if (v38)
  {
    v10 = 16;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v39 == a2)
  {
    v10 = 17;
    goto LABEL_13;
  }

  v40 = sub_1D9C7E7DC();

  if (v40)
  {
    v10 = 17;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v41 == a2)
  {
    v10 = 18;
    goto LABEL_13;
  }

  v42 = sub_1D9C7E7DC();

  if (v42)
  {
    v10 = 18;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v43 == a2)
  {
    v10 = 19;
    goto LABEL_13;
  }

  v44 = sub_1D9C7E7DC();

  if (v44)
  {
    v10 = 19;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v45 == a2)
  {
    v10 = 20;
    goto LABEL_13;
  }

  v46 = sub_1D9C7E7DC();

  if (v46)
  {
    v10 = 20;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v47 == a2)
  {
    v10 = 21;
    goto LABEL_13;
  }

  v48 = sub_1D9C7E7DC();

  if (v48)
  {
    v10 = 21;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v49 == a2)
  {
    v10 = 22;
    goto LABEL_13;
  }

  v50 = sub_1D9C7E7DC();

  if (v50)
  {
    v10 = 22;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v51 == a2)
  {
    v10 = 4;
    goto LABEL_13;
  }

  v52 = sub_1D9C7E7DC();

  if (v52)
  {
    v10 = 4;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v53 == a2)
  {
    v10 = 5;
    goto LABEL_13;
  }

  v54 = sub_1D9C7E7DC();

  if (v54)
  {
    v10 = 5;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v55 == a2)
  {
    v10 = 23;
    goto LABEL_13;
  }

  v56 = sub_1D9C7E7DC();

  if (v56)
  {
    v10 = 23;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v57 == a2)
  {
    v10 = 26;
    goto LABEL_13;
  }

  v58 = sub_1D9C7E7DC();

  if (v58)
  {
    v10 = 26;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v59 == a2)
  {
    v10 = 6;
    goto LABEL_13;
  }

  v60 = sub_1D9C7E7DC();

  if (v60)
  {
    v10 = 6;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v61 == a2)
  {
    v10 = 24;
    goto LABEL_13;
  }

  v62 = sub_1D9C7E7DC();

  if (v62)
  {
    v10 = 24;
    goto LABEL_14;
  }

  if (sub_1D9C7DC7C() == a1 && v63 == a2)
  {
    v10 = 25;
    goto LABEL_13;
  }

  v64 = sub_1D9C7E7DC();

  if (v64)
  {
    v10 = 25;
  }

  else
  {
    v10 = 27;
  }

LABEL_14:
  *a3 = v10;
  return result;
}

uint64_t sub_1D9B91DE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  v8 = sub_1D9C7E93C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D9C7E7DC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D9B93830(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D9B91F34(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D9C7E8CC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D9B939B0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D9B92014(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1D9C7E8DC();
  sub_1D9A15C94(a2);
  sub_1D9C7DD6C();

  v7 = sub_1D9C7E93C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_89:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_1D9B93AD0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
    result = 1;
    goto LABEL_92;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE300000000000000;
    v12 = 7631457;
    switch(*(*(v6 + 48) + v9))
    {
      case 1:
        v11 = 0xE600000000000000;
        v12 = 0x65727574616ELL;
        break;
      case 2:
        v11 = 0xE800000000000000;
        v12 = 0x6B72616D646E616CLL;
        break;
      case 3:
        v12 = 0x4C6C61727574616ELL;
        v11 = 0xEF6B72616D646E61;
        break;
      case 4:
        v11 = 0xE500000000000000;
        v12 = 0x616964656DLL;
        break;
      case 5:
        v11 = 0xE400000000000000;
        v12 = 1802465122;
        break;
      case 6:
        v11 = 0xE500000000000000;
        v12 = 0x6D75626C61;
        break;
      case 7:
        v11 = 0xE400000000000000;
        v12 = 1937006947;
        break;
      case 8:
        v11 = 0xE400000000000000;
        v12 = 1936158564;
        break;
      case 9:
        v11 = 0xE700000000000000;
        v13 = 1835626081;
        goto LABEL_22;
      case 0xA:
        v11 = 0xE500000000000000;
        v12 = 0x7364726962;
        break;
      case 0xB:
        v11 = 0xE700000000000000;
        v12 = 0x73746365736E69;
        break;
      case 0xC:
        v11 = 0xE800000000000000;
        v12 = 0x73656C6974706572;
        break;
      case 0xD:
        v11 = 0xE700000000000000;
        v13 = 1835884909;
LABEL_22:
        v12 = v13 | 0x736C6100000000;
        break;
      case 0xE:
        v12 = 0xD000000000000010;
        v11 = 0x80000001D9CA2910;
        break;
      case 0xF:
        v11 = 0xE700000000000000;
        v12 = 0x6C657261707061;
        break;
      case 0x10:
        v12 = 0x726F737365636361;
        v11 = 0xEB00000000736569;
        break;
      case 0x11:
        v11 = 0xE400000000000000;
        v12 = 1685024614;
        break;
      case 0x12:
        v12 = 0x6F726665726F7473;
        v11 = 0xEA0000000000746ELL;
        break;
      case 0x13:
        v14 = 1852270963;
        goto LABEL_29;
      case 0x14:
        v12 = 0xD000000000000011;
        v11 = 0x80000001D9CA2950;
        break;
      case 0x15:
        v14 = 1869903201;
LABEL_29:
        v12 = v14 | 0x626D795300000000;
        v11 = 0xEA00000000006C6FLL;
        break;
      case 0x16:
        v12 = 0x676F4C646E617262;
        v11 = 0xEF6C6F626D79536FLL;
        break;
      case 0x17:
        v11 = 0xE700000000000000;
        v12 = 0x65646F63726162;
        break;
      case 0x18:
        v12 = 0x727574706C756373;
        v11 = 0xE900000000000065;
        break;
      case 0x19:
        v11 = 0xE700000000000000;
        v12 = 0x656E696C796B73;
        break;
      case 0x1A:
        v11 = 0xE800000000000000;
        v12 = 0x44327463656A626FLL;
        break;
      default:
        break;
    }

    v15 = 0xE300000000000000;
    v16 = 7631457;
    switch(a2)
    {
      case 1:
        v15 = 0xE600000000000000;
        if (v12 == 0x65727574616ELL)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      case 2:
        v15 = 0xE800000000000000;
        if (v12 != 0x6B72616D646E616CLL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 3:
        v15 = 0xEF6B72616D646E61;
        if (v12 != 0x4C6C61727574616ELL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 4:
        v15 = 0xE500000000000000;
        if (v12 != 0x616964656DLL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 5:
        v15 = 0xE400000000000000;
        if (v12 != 1802465122)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 6:
        v15 = 0xE500000000000000;
        if (v12 != 0x6D75626C61)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 7:
        v15 = 0xE400000000000000;
        if (v12 != 1937006947)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 8:
        v15 = 0xE400000000000000;
        if (v12 != 1936158564)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 9:
        v15 = 0xE700000000000000;
        v18 = 1835626081;
        goto LABEL_65;
      case 10:
        v15 = 0xE500000000000000;
        if (v12 != 0x7364726962)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 11:
        v15 = 0xE700000000000000;
        v17 = 0x746365736E69;
        goto LABEL_66;
      case 12:
        v15 = 0xE800000000000000;
        if (v12 != 0x73656C6974706572)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 13:
        v15 = 0xE700000000000000;
        v18 = 1835884909;
LABEL_65:
        v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_66:
        if (v12 != (v17 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 14:
        v15 = 0x80000001D9CA2910;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 15:
        v15 = 0xE700000000000000;
        if (v12 != 0x6C657261707061)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 16:
        v15 = 0xEB00000000736569;
        if (v12 != 0x726F737365636361)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 17:
        v15 = 0xE400000000000000;
        if (v12 != 1685024614)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 18:
        v15 = 0xEA0000000000746ELL;
        if (v12 != 0x6F726665726F7473)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 19:
        v19 = 1852270963;
        goto LABEL_79;
      case 20:
        v15 = 0x80000001D9CA2950;
        if (v12 != 0xD000000000000011)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 21:
        v19 = 1869903201;
LABEL_79:
        v15 = 0xEA00000000006C6FLL;
        if (v12 != (v19 | 0x626D795300000000))
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 22:
        v15 = 0xEF6C6F626D79536FLL;
        if (v12 != 0x676F4C646E617262)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 23:
        v15 = 0xE700000000000000;
        v16 = 0x65646F63726162;
        goto LABEL_82;
      case 24:
        v15 = 0xE900000000000065;
        if (v12 != 0x727574706C756373)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 25:
        v15 = 0xE700000000000000;
        if (v12 != 0x656E696C796B73)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 26:
        v15 = 0xE800000000000000;
        if (v12 != 0x44327463656A626FLL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      default:
LABEL_82:
        if (v12 != v16)
        {
          goto LABEL_84;
        }

LABEL_83:
        if (v11 != v15)
        {
LABEL_84:
          v20 = sub_1D9C7E7DC();

          if (v20)
          {
            goto LABEL_91;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_89;
          }

          continue;
        }

LABEL_91:
        result = 0;
        LOBYTE(a2) = *(*(v6 + 48) + v9);
LABEL_92:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_1D9B92748(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  sub_1D9C7E8DC();
  result = a2 + HIDWORD(a2);
  if (__CFADD__(a2, HIDWORD(a2)))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1DA73EAC0](result);
    v7 = sub_1D9C7E93C();
    v8 = -1 << *(v5 + 32);
    v9 = v7 & ~v8;
    if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      while (*(*(v5 + 48) + 8 * v9) != a2)
      {
        v9 = (v9 + 1) & v10;
        if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      result = 0;
    }

    else
    {
LABEL_6:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      sub_1D9B94254(a2, v9, isUniquelyReferenced_nonNull_native);
      *v2 = v12;
      result = 1;
    }

    *a1 = a2;
  }

  return result;
}

uint64_t sub_1D9B92848(double *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v8 = a2;
  v11 = *v5;
  sub_1D9C7E8DC();
  v12 = 37 * (*&a2 & 0x7FFFFFFFFFFFFFFFLL) + 646 + 37 * (37 * (*&a2 & 0x7FFFFFFFFFFFFFFFLL) + 646 + (*&a2 & 0x7FFFFFFFFFFFFFFFLL));
  MEMORY[0x1DA73EB00]((v12 + 37 * (v12 + (*&a2 & 0x7FFFFFFFFFFFFFFFLL))) ^ ((v12 + 37 * (v12 + (*&a2 & 0x7FFFFFFFFFFFFFFFuLL))) >> 32));
  v13 = sub_1D9C7E93C();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = (*(v11 + 48) + 24 * v15);
      v18 = *v17 == v8 && v17[1] == a3;
      if (v18 && v17[2] == a4)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    result = 0;
    v8 = *v17;
    a3 = v17[1];
    a4 = v17[2];
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    sub_1D9B943A8(v15, isUniquelyReferenced_nonNull_native, v8, a3, a4);
    *v5 = v22;
    result = 1;
  }

  *a1 = v8;
  a1[1] = a3;
  a1[2] = a4;
  return result;
}

uint64_t sub_1D9B929A8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53410);
  result = sub_1D9C7E3BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D9C7E8DC();
      sub_1D9C7DD6C();
      result = sub_1D9C7E93C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D9B92C08()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DA0);
  result = sub_1D9C7E3BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1D9C7E8CC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D9B92E2C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53408);
  result = sub_1D9C7E3BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1D9C7E8DC();
      sub_1D9A15C94(v16);
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D9B93098()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DB0);
  result = sub_1D9C7E3BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1D9C7E8DC();
      result = v16 + HIDWORD(v16);
      if (__CFADD__(v16, HIDWORD(v16)))
      {
        goto LABEL_32;
      }

      MEMORY[0x1DA73EAC0](result);
      result = sub_1D9C7E93C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D9B932F0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DA8);
  result = sub_1D9C7E3BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 24 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = *v17;
      v21 = v17[2];
      sub_1D9C7E8DC();
      v22 = 37 * (v20 & 0x7FFFFFFFFFFFFFFFLL) + 646 + 37 * (37 * (v20 & 0x7FFFFFFFFFFFFFFFLL) + 646 + (v20 & 0x7FFFFFFFFFFFFFFFLL));
      MEMORY[0x1DA73EB00]((v22 + 37 * (v22 + (v20 & 0x7FFFFFFFFFFFFFFFLL))) ^ ((v22 + 37 * (v22 + (v20 & 0x7FFFFFFFFFFFFFFFuLL))) >> 32));
      result = sub_1D9C7E93C();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 24 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v21;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v2 + 32);
    if (v30 >= 64)
    {
      bzero((v2 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v30;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D9B93594()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53D98);
  result = sub_1D9C7E3BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 8 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 4);
      sub_1D9C7E8DC();
      sub_1D9A15C94(v18);
      sub_1D9C7DD6C();

      sub_1D9C7E91C();
      result = sub_1D9C7E93C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 8 * v12;
      *v13 = v18;
      *(v13 + 4) = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D9B93830(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D9B929A8();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D9B9D1F4();
      goto LABEL_16;
    }

    sub_1D9B94550();
  }

  v10 = *v4;
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  result = sub_1D9C7E93C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D9C7E7DC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D9C7E83C();
  __break(1u);
  return result;
}

uint64_t sub_1D9B939B0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D9B92C08();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D9B9D350();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D9B94788();
  }

  v8 = *v3;
  result = sub_1D9C7E8CC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9C7E83C();
  __break(1u);
  return result;
}

uint64_t sub_1D9B93AD0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D9B92E2C();
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_1D9B9D490();
        goto LABEL_96;
      }

      sub_1D9B94978();
    }

    v9 = *v3;
    sub_1D9C7E8DC();
    sub_1D9A15C94(v6);
    sub_1D9C7DD6C();

    result = sub_1D9C7E93C();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xE300000000000000;
        v13 = 7631457;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v12 = 0xE600000000000000;
            v13 = 0x65727574616ELL;
            break;
          case 2:
            v12 = 0xE800000000000000;
            v13 = 0x6B72616D646E616CLL;
            break;
          case 3:
            v13 = 0x4C6C61727574616ELL;
            v12 = 0xEF6B72616D646E61;
            break;
          case 4:
            v12 = 0xE500000000000000;
            v13 = 0x616964656DLL;
            break;
          case 5:
            v12 = 0xE400000000000000;
            v13 = 1802465122;
            break;
          case 6:
            v12 = 0xE500000000000000;
            v13 = 0x6D75626C61;
            break;
          case 7:
            v12 = 0xE400000000000000;
            v13 = 1937006947;
            break;
          case 8:
            v12 = 0xE400000000000000;
            v13 = 1936158564;
            break;
          case 9:
            v12 = 0xE700000000000000;
            v14 = 1835626081;
            goto LABEL_29;
          case 0xA:
            v12 = 0xE500000000000000;
            v13 = 0x7364726962;
            break;
          case 0xB:
            v12 = 0xE700000000000000;
            v13 = 0x73746365736E69;
            break;
          case 0xC:
            v12 = 0xE800000000000000;
            v13 = 0x73656C6974706572;
            break;
          case 0xD:
            v12 = 0xE700000000000000;
            v14 = 1835884909;
LABEL_29:
            v13 = v14 | 0x736C6100000000;
            break;
          case 0xE:
            v13 = 0xD000000000000010;
            v12 = 0x80000001D9CA2910;
            break;
          case 0xF:
            v12 = 0xE700000000000000;
            v13 = 0x6C657261707061;
            break;
          case 0x10:
            v13 = 0x726F737365636361;
            v12 = 0xEB00000000736569;
            break;
          case 0x11:
            v12 = 0xE400000000000000;
            v13 = 1685024614;
            break;
          case 0x12:
            v12 = 0xEA0000000000746ELL;
            v13 = 0x6F726665726F7473;
            break;
          case 0x13:
            v15 = 1852270963;
            goto LABEL_36;
          case 0x14:
            v13 = 0xD000000000000011;
            v12 = 0x80000001D9CA2950;
            break;
          case 0x15:
            v15 = 1869903201;
LABEL_36:
            v13 = v15 | 0x626D795300000000;
            v12 = 0xEA00000000006C6FLL;
            break;
          case 0x16:
            v13 = 0x676F4C646E617262;
            v12 = 0xEF6C6F626D79536FLL;
            break;
          case 0x17:
            v12 = 0xE700000000000000;
            v13 = 0x65646F63726162;
            break;
          case 0x18:
            v13 = 0x727574706C756373;
            v12 = 0xE900000000000065;
            break;
          case 0x19:
            v12 = 0xE700000000000000;
            v13 = 0x656E696C796B73;
            break;
          case 0x1A:
            v12 = 0xE800000000000000;
            v13 = 0x44327463656A626FLL;
            break;
          default:
            break;
        }

        v16 = 0xE300000000000000;
        v17 = 7631457;
        switch(v6)
        {
          case 1:
            v16 = 0xE600000000000000;
            if (v13 == 0x65727574616ELL)
            {
              goto LABEL_90;
            }

            goto LABEL_91;
          case 2:
            v16 = 0xE800000000000000;
            if (v13 != 0x6B72616D646E616CLL)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 3:
            v16 = 0xEF6B72616D646E61;
            if (v13 != 0x4C6C61727574616ELL)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 4:
            v16 = 0xE500000000000000;
            if (v13 != 0x616964656DLL)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 5:
            v16 = 0xE400000000000000;
            if (v13 != 1802465122)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 6:
            v16 = 0xE500000000000000;
            if (v13 != 0x6D75626C61)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 7:
            v16 = 0xE400000000000000;
            if (v13 != 1937006947)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 8:
            v16 = 0xE400000000000000;
            if (v13 != 1936158564)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 9:
            v16 = 0xE700000000000000;
            v19 = 1835626081;
            goto LABEL_72;
          case 10:
            v16 = 0xE500000000000000;
            if (v13 != 0x7364726962)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 11:
            v16 = 0xE700000000000000;
            v18 = 0x746365736E69;
            goto LABEL_73;
          case 12:
            v16 = 0xE800000000000000;
            if (v13 != 0x73656C6974706572)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 13:
            v16 = 0xE700000000000000;
            v19 = 1835884909;
LABEL_72:
            v18 = v19 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_73:
            if (v13 != (v18 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 14:
            v16 = 0x80000001D9CA2910;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 15:
            v16 = 0xE700000000000000;
            if (v13 != 0x6C657261707061)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 16:
            v16 = 0xEB00000000736569;
            if (v13 != 0x726F737365636361)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 17:
            v16 = 0xE400000000000000;
            if (v13 != 1685024614)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 18:
            v16 = 0xEA0000000000746ELL;
            if (v13 != 0x6F726665726F7473)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 19:
            v20 = 1852270963;
            goto LABEL_86;
          case 20:
            v16 = 0x80000001D9CA2950;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 21:
            v20 = 1869903201;
LABEL_86:
            v16 = 0xEA00000000006C6FLL;
            if (v13 != (v20 | 0x626D795300000000))
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 22:
            v16 = 0xEF6C6F626D79536FLL;
            if (v13 != 0x676F4C646E617262)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 23:
            v16 = 0xE700000000000000;
            v17 = 0x65646F63726162;
            goto LABEL_89;
          case 24:
            v16 = 0xE900000000000065;
            if (v13 != 0x727574706C756373)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 25:
            v16 = 0xE700000000000000;
            if (v13 != 0x656E696C796B73)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          case 26:
            v16 = 0xE800000000000000;
            if (v13 != 0x44327463656A626FLL)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          default:
LABEL_89:
            if (v13 != v17)
            {
              goto LABEL_91;
            }

LABEL_90:
            if (v12 == v16)
            {
              goto LABEL_99;
            }

LABEL_91:
            v21 = sub_1D9C7E7DC();

            if (v21)
            {
              goto LABEL_100;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_96:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + a2) = v6;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_99:

LABEL_100:
    result = sub_1D9C7E83C();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v25;
  }

  return result;
}

uint64_t sub_1D9B94254(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    sub_1D9B93098();
    goto LABEL_8;
  }

  if (v6 > v5)
  {
    v7 = a2;
    result = sub_1D9B9D5D0();
    a2 = v7;
LABEL_13:
    v11 = *v3;
    *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    *(*(v11 + 48) + 8 * a2) = v4;
    v12 = *(v11 + 16);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      *(v11 + 16) = v14;
      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  sub_1D9B94BB4();
LABEL_8:
  v8 = *v3;
  sub_1D9C7E8DC();
  if (!__CFADD__(v4, HIDWORD(v4)))
  {
    MEMORY[0x1DA73EAC0](v4 + HIDWORD(v4));
    result = sub_1D9C7E93C();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (*(*(v8 + 48) + 8 * a2) != v4)
      {
        a2 = (a2 + 1) & v10;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1D9C7E83C();
  __break(1u);
  return result;
}

unint64_t sub_1D9B943A8(unint64_t result, char a2, double a3, double a4, double a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a2 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a2)
  {
    sub_1D9B932F0();
  }

  else
  {
    if (v10 > v9)
    {
      v11 = result;
      sub_1D9B9D710();
      result = v11;
      goto LABEL_18;
    }

    sub_1D9B94DDC();
  }

  v12 = *v5;
  sub_1D9C7E8DC();
  v13 = 37 * (*&a3 & 0x7FFFFFFFFFFFFFFFLL) + 646 + 37 * (37 * (*&a3 & 0x7FFFFFFFFFFFFFFFLL) + 646 + (*&a3 & 0x7FFFFFFFFFFFFFFFLL));
  MEMORY[0x1DA73EB00]((v13 + 37 * (v13 + (*&a3 & 0x7FFFFFFFFFFFFFFFLL))) ^ ((v13 + 37 * (v13 + (*&a3 & 0x7FFFFFFFFFFFFFFFuLL))) >> 32));
  v14 = sub_1D9C7E93C();
  v15 = -1 << *(v12 + 32);
  result = v14 & ~v15;
  if ((*(v12 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v16 = ~v15;
    do
    {
      v17 = (*(v12 + 48) + 24 * result);
      v18 = *v17 == a3 && v17[1] == a4;
      if (v18 && v17[2] == a5)
      {
        goto LABEL_21;
      }

      result = (result + 1) & v16;
    }

    while (((*(v12 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

LABEL_18:
  v20 = *v5;
  *(*v5 + 8 * (result >> 6) + 56) |= 1 << result;
  v21 = (*(v20 + 48) + 24 * result);
  *v21 = a3;
  v21[1] = a4;
  v21[2] = a5;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_21:
  result = sub_1D9C7E83C();
  __break(1u);
  return result;
}

uint64_t sub_1D9B94550()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53410);
  result = sub_1D9C7E3BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1D9C7E8DC();

      sub_1D9C7DD6C();
      result = sub_1D9C7E93C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D9B94788()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DA0);
  result = sub_1D9C7E3BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1D9C7E8CC();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D9B94978()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53408);
  result = sub_1D9C7E3BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1D9C7E8DC();
      sub_1D9A15C94(v15);
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D9B94BB4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DB0);
  result = sub_1D9C7E3BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_1D9C7E8DC();
      result = v15 + HIDWORD(v15);
      if (__CFADD__(v15, HIDWORD(v15)))
      {
        goto LABEL_30;
      }

      MEMORY[0x1DA73EAC0](result);
      result = sub_1D9C7E93C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_29;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D9B94DDC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DA8);
  result = sub_1D9C7E3BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 24 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      v19 = *v16;
      v20 = v16[2];
      sub_1D9C7E8DC();
      v21 = 37 * (v19 & 0x7FFFFFFFFFFFFFFFLL) + 646 + 37 * (37 * (v19 & 0x7FFFFFFFFFFFFFFFLL) + 646 + (v19 & 0x7FFFFFFFFFFFFFFFLL));
      MEMORY[0x1DA73EB00]((v21 + 37 * (v21 + (v19 & 0x7FFFFFFFFFFFFFFFLL))) ^ ((v21 + 37 * (v21 + (v19 & 0x7FFFFFFFFFFFFFFFuLL))) >> 32));
      result = sub_1D9C7E93C();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v10 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v10 + 8 * v24);
          if (v28 != -1)
          {
            v11 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v23) & ~*(v10 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 24 * v11);
      *v12 = v17;
      v12[1] = v18;
      v12[2] = v20;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D9B95050()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53D98);
  result = sub_1D9C7E3BC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = *(v2 + 48) + 8 * (v13 | (v5 << 6));
      v17 = *v16;
      v18 = *(v16 + 4);
      sub_1D9C7E8DC();
      sub_1D9A15C94(v17);
      sub_1D9C7DD6C();

      sub_1D9C7E91C();
      result = sub_1D9C7E93C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 8 * v11;
      *v12 = v17;
      *(v12 + 4) = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t type metadata accessor for DomainPredictionDomainAssignmentRule()
{
  result = qword_1EDD35408;
  if (!qword_1EDD35408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B95330()
{
  result = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1D9B953B8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X8>)
{
  v104 = a3;
  v8 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = (&v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = type metadata accessor for DomainPredictionDomainAssignmentRule();
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v96 - v12;
  v106 = _s14DetectedResultVMa();
  v102 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v105);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v96 - v16;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v96 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v96 - v26;
  v28 = a1[7];
  v150 = a1[6];
  v151 = v28;
  v152[0] = a1[8];
  *(v152 + 13) = *(a1 + 141);
  v29 = a1[3];
  v146 = a1[2];
  v147 = v29;
  v30 = a1[5];
  v148 = a1[4];
  v149 = v30;
  v31 = a1[1];
  v144 = *a1;
  v145 = v31;
  if (*(a2 + 104))
  {
    v32 = a1[7];
    a4[6] = a1[6];
    a4[7] = v32;
    a4[8] = a1[8];
    *(a4 + 141) = *(a1 + 141);
    v33 = a1[3];
    a4[2] = a1[2];
    a4[3] = v33;
    v34 = a1[5];
    a4[4] = a1[4];
    a4[5] = v34;
    v35 = a1[1];
    *a4 = *a1;
    a4[1] = v35;
LABEL_27:
    sub_1D99D39B8(&v144, &v135);
    return result;
  }

  v36 = a2;
  v37 = v25;
  v97 = v24;
  v98 = a4;
  v99 = v23;
  v38 = v4[2];
  if (*(v38 + 16) && v104[1])
  {
    sub_1D99B1E14(v38);
    if (!v39)
    {
      static Logger.argos.getter(v27);
      sub_1D9A3E0E0(v21);
      v79 = *(v99 + 8);
      v80 = v105;
      v79(v27, v105);
      v81 = sub_1D9C7D8BC();
      v82 = sub_1D9C7E09C();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_1D9962000, v81, v82, "No satisfied coarse label.", v83, 2u);
        MEMORY[0x1DA7405F0](v83, -1, -1);
      }

      v79(v21, v80);
      goto LABEL_26;
    }
  }

  v40 = *(v36 + 56);
  v41 = v4[1];
  if (*(v41 + 16))
  {
    *&v135 = *(v4 + *(v103 + 28));

    v40 = sub_1D9A601D8(v41, &v135, v40);
  }

  else
  {
  }

  sub_1D9A606A4(*v4, v40, *(v36 + 64), v13);

  if ((*(v102 + 48))(v13, 1, v106) == 1)
  {
    sub_1D99D3950(v13);
    static Logger.argos.getter(v17);
    sub_1D9A3E0E0(v37);
    v42 = *(v99 + 8);
    v43 = v105;
    v42(v17, v105);
    v44 = sub_1D9C7D8BC();
    v45 = sub_1D9C7E09C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D9962000, v44, v45, "No satisfied domain prediction net results.", v46, 2u);
      MEMORY[0x1DA7405F0](v46, -1, -1);
    }

    v42(v37, v43);
LABEL_26:
    v84 = v151;
    v85 = v98;
    v98[6] = v150;
    v85[7] = v84;
    v85[8] = v152[0];
    *(v85 + 141) = *(v152 + 13);
    v86 = v147;
    v85[2] = v146;
    v85[3] = v86;
    v87 = v149;
    v85[4] = v148;
    v85[5] = v87;
    v88 = v145;
    *v85 = v144;
    v85[1] = v88;
    goto LABEL_27;
  }

  sub_1D99D3A28(v13, v107);
  v47 = v97;
  static Logger.argos.getter(v97);
  v104 = v4;
  v48 = v100;
  sub_1D9B95EB0(v4, v100, type metadata accessor for DomainPredictionDomainAssignmentRule);
  v49 = v36;
  v50 = v47;
  v51 = v101;
  sub_1D9B95EB0(v49, v101, type metadata accessor for VisualUnderstanding.ImageRegion);
  v52 = sub_1D9C7D8BC();
  v53 = sub_1D9C7E09C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *&v128[0] = v102;
    *v54 = 136315394;
    v55 = v103;
    v56 = sub_1D9A15C94(*(v48 + *(v103 + 20)));
    v58 = v57;
    sub_1D9B95F18(v48, type metadata accessor for DomainPredictionDomainAssignmentRule);
    v59 = sub_1D9A0E224(v56, v58, v128);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2080;
    v60 = v51[1];
    v135 = *v51;
    v136 = v60;
    v61 = NormalizedRect.loggingDescription.getter();
    v63 = v62;
    sub_1D9B95F18(v51, type metadata accessor for VisualUnderstanding.ImageRegion);
    v64 = sub_1D9A0E224(v61, v63, v128);

    *(v54 + 14) = v64;
    _os_log_impl(&dword_1D9962000, v52, v53, "Assign %s to region %s", v54, 0x16u);
    v65 = v102;
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v65, -1, -1);
    MEMORY[0x1DA7405F0](v54, -1, -1);

    (*(v99 + 8))(v50, v105);
  }

  else
  {

    sub_1D9B95F18(v51, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B95F18(v48, type metadata accessor for DomainPredictionDomainAssignmentRule);
    (*(v99 + 8))(v50, v105);
    v55 = v103;
  }

  v66 = *(v104 + *(v55 + 20));
  v67 = (v107 + *(v106 + 28));
  v68 = *v67;
  v69 = v67[1];
  v70 = v67[2];
  v71 = v67[3];
  v72 = *(v107 + *(v106 + 32));
  LOBYTE(v128[0]) = v66;
  *(v128 + 8) = 0u;
  *(&v128[1] + 8) = 0u;
  BYTE8(v128[2]) = 0;
  v129 = 0u;
  v130 = 0u;
  *&v131 = v68;
  *(&v131 + 1) = v69;
  *&v132 = v70;
  *(&v132 + 1) = v71;
  LODWORD(v133) = 0;
  DWORD1(v133) = v72;
  LOWORD(v134[0]) = 0;
  *(&v133 + 1) = 0;
  *(&v134[1] + 5) = 0;
  *(&v134[0] + 1) = 0;
  *&v134[1] = 0;
  v141 = v150;
  v142 = v151;
  v143[0] = v152[0];
  *(v143 + 13) = *(v152 + 13);
  v137 = v146;
  v138 = v147;
  v139 = v148;
  v140 = v149;
  v135 = v144;
  v136 = v145;
  if (sub_1D99AE104(&v135) != 1)
  {
    v75 = sub_1D9A15C94(v135);
    v77 = v76;
    if (v75 == sub_1D9A15C94(v66) && v77 == v78)
    {
    }

    else
    {
      v90 = sub_1D9C7E7DC();

      if ((v90 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v125 = v141;
    v126 = v142;
    v127[0] = v143[0];
    *(v127 + 13) = *(v143 + 13);
    v121 = v137;
    v122 = v138;
    v123 = v139;
    v124 = v140;
    v119 = v135;
    v120 = v136;
    v116 = v132;
    v117 = v133;
    v118[0] = v134[0];
    *(v118 + 13) = *(v134 + 13);
    v112 = v128[2];
    v113 = v129;
    v114 = v130;
    v115 = v131;
    v110 = v128[0];
    v111 = v128[1];
    sub_1D9B67854(&v119, &v110, v108);
    sub_1D9B95F18(v107, _s14DetectedResultVMa);
    sub_1D99AE0B0(v128);
    v116 = v108[6];
    v117 = v108[7];
    v118[0] = v109[0];
    *(v118 + 13) = *(v109 + 13);
    v112 = v108[2];
    v113 = v108[3];
    v114 = v108[4];
    v115 = v108[5];
    v73 = v108[0];
    v74 = v108[1];
    goto LABEL_30;
  }

LABEL_19:
  sub_1D9B95F18(v107, _s14DetectedResultVMa);
  v116 = v132;
  v117 = v133;
  v118[0] = v134[0];
  *(v118 + 13) = *(v134 + 13);
  v112 = v128[2];
  v113 = v129;
  v114 = v130;
  v115 = v131;
  v73 = v128[0];
  v74 = v128[1];
LABEL_30:
  v110 = v73;
  v111 = v74;
  faiss::NormalizationTransform::~NormalizationTransform(&v110);
  v127[0] = v118[0];
  *(v127 + 13) = *(v118 + 13);
  v121 = v112;
  v122 = v113;
  v123 = v114;
  v124 = v115;
  v119 = v110;
  v120 = v111;
  v91 = v98;
  v92 = v117;
  v98[6] = v116;
  v91[7] = v92;
  v91[8] = v127[0];
  *(v91 + 141) = *(v127 + 13);
  v93 = v122;
  v91[2] = v121;
  v91[3] = v93;
  v94 = v124;
  v91[4] = v123;
  v91[5] = v94;
  result = *&v119;
  v95 = v120;
  *v91 = v119;
  v91[1] = v95;
  return result;
}

uint64_t sub_1D9B95EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B95F18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D9B95F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v95 = a2;
  v96 = a3;
  v94 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v93 = &v87 - v7;
  v8 = type metadata accessor for EspressoModel(0);
  v97 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v87 - v12;
  v14 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = *(a1 + 128);
  v19 = OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo;
  v20 = v98;
  result = sub_1D9C1B898(v18, v4 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo, 0x6972656767697274, 0xEA0000000000676ELL, 0x74696E676F636572, 0xEB000000006E6F69);
  if (!v20)
  {
    v88 = v14;
    v89 = v8;
    v90 = v13;
    v22 = v17;
    v98 = 0;
    v23 = *(v4 + 16);
    v24 = result;
    v92 = v16;
    sub_1D9B6242C(v4 + v19, v16, type metadata accessor for MLModelInfo);
    v25 = v24;
    v87 = v10;
    if (v24)
    {

      v91 = sub_1D9BDBB08(v26);
    }

    else
    {
      v91 = 0;
    }

    v27 = v96;
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v22;
    sub_1D99A170C(v22, v101);
    v30 = swift_allocObject();
    v31 = v101[7];
    *(v30 + 136) = v101[6];
    *(v30 + 152) = v31;
    *(v30 + 168) = v101[8];
    v32 = v101[3];
    *(v30 + 72) = v101[2];
    *(v30 + 88) = v32;
    v33 = v101[5];
    *(v30 + 104) = v101[4];
    *(v30 + 120) = v33;
    v34 = v101[1];
    *(v30 + 40) = v101[0];
    *(v30 + 16) = v95;
    *(v30 + 24) = v27;
    *(v30 + 32) = v28;
    v35 = v102;
    *(v30 + 56) = v34;
    *(v30 + 184) = v35;
    *(v30 + 192) = v25;
    v36 = v29;
    v37 = *(v29 + 15);

    sub_1D9B7E0E0(v37);
    v38 = v98;
    sub_1D9C1947C(v100);
    v39 = v97;
    if (v38)
    {

      v40 = v92;
LABEL_24:
      sub_1D99A19C0(v40, type metadata accessor for MLModelInfo);
    }

    v96 = v28;
    v40 = v92;
    v98 = 0;
    if (v23)
    {
      if (v23 == 1)
      {
        sub_1D99A17C8(v100, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
        v41 = v93;
        v42 = v89;
        if (swift_dynamicCast())
        {
          (*(v39 + 56))(v41, 0, 1, v42);
          v43 = v41;
          v44 = v90;
          sub_1D99A18F0(v43, v90);
          v45 = v87;
          sub_1D9B6242C(v44, v87, type metadata accessor for EspressoModel);
          v46 = v36;
          v47 = *(v36 + 18);
          v48 = swift_allocObject();
          *(v48 + 16) = sub_1D9B97690;
          *(v48 + 24) = v30;
          type metadata accessor for EspressoRequest(0);
          v49 = swift_allocObject();
          sub_1D9B6242C(v45, v49 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model, type metadata accessor for EspressoModel);
          *(v49 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_features) = 0;
          *(v49 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_vnScalingMode) = 2;
          v50 = v49 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest;
          *v50 = 0;
          *(v50 + 8) = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(v50 + 16) = _Q0;
          *(v49 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_outputs) = v91;
          v56 = (v49 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_completionHandler);
          *v56 = sub_1D99A19B8;
          v56[1] = v48;
          v57 = qword_1EDD349F0;

          if (v57 != -1)
          {
            swift_once();
          }

          v58 = qword_1EDD41F40;

          sub_1D99A19C0(v45, type metadata accessor for EspressoModel);
          *(v49 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_engineResult) = v58;
          *(v49 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_usesCPUOnly) = 0;
          *(v49 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_metricsBucket) = v47;
          v107.origin.x = 0.0;
          v107.origin.y = 0.0;
          v107.size.width = 1.0;
          v107.size.height = 1.0;
          *(v49 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest) = CGRectIntersection(*(v46 + 5), v107);
          v59 = v94;
          v94[3] = &type metadata for EspressoModelRequest;
          v59[4] = &off_1F5533650;

          *v59 = v49;
          sub_1D99A19C0(v90, type metadata accessor for EspressoModel);
          goto LABEL_19;
        }

        (*(v39 + 56))(v41, 1, 1, v42);
        sub_1D99A1888(v41);
      }

      else
      {

        sub_1D99A17C8(v100, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
        type metadata accessor for E5Model();
        if (swift_dynamicCast())
        {
          v76 = v104;
          v77 = *(v36 + 18);
          v78 = swift_allocObject();
          *(v78 + 16) = sub_1D9B97690;
          *(v78 + 24) = v30;
          type metadata accessor for E5Request();
          v79 = v36;
          v80 = swift_allocObject();
          *(v80 + 16) = v76;
          *(v80 + 24) = 2;
          *(v80 + 32) = *&v76[OBJC_IVAR____TtC12VisualLookUp7E5Model_preferredMetalDevice];
          *(v80 + 40) = sub_1D99A1880;
          *(v80 + 48) = v78;
          *(v80 + 56) = 0;
          *(v80 + 64) = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(v80 + 72) = _Q0;
          *(v80 + 88) = 0;
          v82 = qword_1EDD349F0;
          swift_retain_n();

          swift_unknownObjectRetain();

          if (v82 != -1)
          {
            swift_once();
          }

          v83 = qword_1EDD41F40;

          *(v80 + 96) = v83;
          *(v80 + 104) = v77;
          v109.origin.x = 0.0;
          v109.origin.y = 0.0;
          v109.size.width = 1.0;
          v109.size.height = 1.0;
          *(v80 + 56) = CGRectIntersection(*(v79 + 5), v109);
          v84 = v94;
          v94[3] = &type metadata for E5ModelRequest;
          v84[4] = &off_1F552E318;

          *v84 = v80;
          goto LABEL_19;
        }
      }

      sub_1D99A182C();
      swift_allocError();
      *v85 = 0xD00000000000001BLL;
      *(v85 + 8) = 0x80000001D9CA3A70;
      *(v85 + 16) = 3;
      swift_willThrow();
    }

    else
    {

      sub_1D99A7E00(*(v40 + *(v88 + 32)), v103);
      v60 = v29;
      v61 = *(v29 + 18);
      type metadata accessor for DurationMeasurement();
      swift_allocObject();

      v62 = sub_1D9AFD4B8(v103, v61);

      sub_1D99A17C8(v100, v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
      if (swift_dynamicCast())
      {
        v63 = v104;
        v64 = swift_allocObject();
        v64[2] = v62;
        v64[3] = sub_1D9B97690;
        v64[4] = v30;
        v65 = objc_allocWithZone(MEMORY[0x1E6984468]);
        v99[4] = sub_1D99A1A20;
        v99[5] = v64;
        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 1107296256;
        v99[2] = sub_1D9BD99E0;
        v99[3] = &block_descriptor_17;
        v66 = _Block_copy(v99);
        v67 = v63;
        v40 = v92;
        v68 = v67;

        v69 = [v65 initWithModel:v68 completionHandler:v66];
        _Block_release(v66);

        [v69 setImageCropAndScaleOption_];
        v70 = v60[5];
        v71 = v60[6];
        v72 = v60[7];
        v73 = v60[8];
        v74 = v69;
        v108.origin.x = 0.0;
        v108.origin.y = 0.0;
        v108.size.width = 1.0;
        v108.size.height = 1.0;
        v105.origin.x = v70;
        v105.origin.y = v71;
        v105.size.width = v72;
        v105.size.height = v73;
        v106 = CGRectIntersection(v105, v108);
        [v74 setRegionOfInterest_];

        v75 = v94;
        v94[3] = &type metadata for VisionModelRequest;
        v75[4] = &off_1F55305B8;

        *v75 = v74;
LABEL_19:
        __swift_destroy_boxed_opaque_existential_0Tm(v100);
        sub_1D99A19C0(v40, type metadata accessor for MLModelInfo);
      }

      sub_1D99A182C();
      swift_allocError();
      *v86 = 0xD00000000000001BLL;
      *(v86 + 8) = 0x80000001D9CA3A70;
      *(v86 + 16) = 3;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v100);
    goto LABEL_24;
  }

  return result;
}

void sub_1D9B96ABC(uint64_t a1, void (*a2)(id *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D99A1A44(a1, v25);
  if (v26 == 1)
  {
    v9 = v25[0];
    v19 = v25[0];
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    v23 = v26;
    v10 = v25[0];
    a2(&v19);

    sub_1D99A1B04(v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
  }

  else
  {
    sub_1D9979B9C(v25, v24);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo;
      v13 = type metadata accessor for MLModelInfo(0);
      sub_1D99A7FF8(*(v12 + *(v13 + 32)), v27);
      v14 = *(a5 + 144);
      type metadata accessor for DurationMeasurement();
      swift_allocObject();

      sub_1D9AFD4B8(v27, v14);

      sub_1D9B96CF4(v24, a5, a6, &v19);
      v15 = v19;
      v16 = v20;
      v18 = v21;
      v17 = v22;
      v23 = 0;
      sub_1D99A1AB4(v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, 0);
      a2(&v19);
      sub_1D99A1B04(v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
      sub_1D9AFCCA4();

      sub_1D99A1B04(v15, v16, *(&v16 + 1), v18, *(&v18 + 1), v17, 0);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }
}

uint64_t sub_1D9B96CF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v79 = a4;
  v80 = a3;
  v78 = a2;
  v6 = sub_1D9C7D8DC();
  *&v81 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  result = (*(v16 + 8))(v15, v16);
  if (!v4)
  {
    v18 = v81;
    v19 = v84;
    v75 = v11;
    v76 = v9;
    v77 = result;
    if (*(*(result + 24) + 16) == 2)
    {
      *&v81 = 0;
      v20 = OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo;
      sub_1D9B6242C(v84 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo, v14, type metadata accessor for MLModelInfo);
      v21 = *(v19 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_postProcessor);
      v22 = v80;
      if (v80)
      {
        v23 = *(v80 + 16);

        v24 = v76;
        if (v23 && (v25 = sub_1D99ED894(0x797469746E656469, 0xE800000000000000), (v26 & 1) != 0))
        {
          v27 = (*(v22 + 56) + 16 * v25);
          v28 = *v27;
          v29 = v27[1];
        }

        else
        {
          v28 = 0;
          v29 = 0xE000000000000000;
        }
      }

      else
      {

        v28 = 0;
        v29 = 0xE000000000000000;
        v24 = v76;
      }

      v35 = *(v77 + 24);
      if (!*(v35 + 16) || (v36 = sub_1D99ED894(0x797469746E656469, 0xE800000000000000), (v37 & 1) == 0))
      {
        v82 = 0;
        v83 = 0xE000000000000000;
        sub_1D9C7E40C();

        v82 = 0xD00000000000001BLL;
        v83 = 0x80000001D9CA3B20;
        MEMORY[0x1DA73DF90](0x797469746E656469, 0xE800000000000000);
        v54 = v82;
        v55 = v83;
        sub_1D99A182C();
        swift_allocError();
        *v56 = v54;
        *(v56 + 8) = v55;
        *(v56 + 16) = 4;
        swift_willThrow();
        sub_1D99A19C0(v14, type metadata accessor for MLModelInfo);
      }

      v38 = v28;
      v39 = v29;
      v40 = *(*(v35 + 56) + 8 * v36);
      v41 = sub_1D99F767C(v40, 1, 0);
      v74 = sub_1D99F7828(1, v40, v41, sub_1D9B624AC, v21);

      v42 = v14;
      v43 = &v14[*(v24 + 24)];
      v44 = v43[1];
      v82 = *v43;
      v83 = v44;

      MEMORY[0x1DA73DF90](v38, v39);

      v45 = v82;
      v46 = v83;
      sub_1D99A19C0(v42, type metadata accessor for MLModelInfo);

      v47 = v75;
      sub_1D9B6242C(v84 + v20, v75, type metadata accessor for MLModelInfo);
      v48 = v80;
      if (v80 && *(v80 + 16))
      {
        v49 = sub_1D99ED894(0x6E69646465626D65, 0xE900000000000067);
        if (v50)
        {
          v51 = (*(v48 + 56) + 16 * v49);
          v52 = *v51;
          v53 = v51[1];
        }

        else
        {
          v52 = 0;
          v53 = 0xE000000000000000;
        }
      }

      else
      {
        v52 = 0;
        v53 = 0xE000000000000000;
      }

      v57 = *(v77 + 24);
      if (*(v57 + 16) && (v58 = sub_1D99ED894(0x6E69646465626D65, 0xE900000000000067), (v59 & 1) != 0))
      {
        v60 = *(*(v57 + 56) + 8 * v58);
        v61 = v81;
        v62 = sub_1D9C18DE8(v60);
        if (!v61)
        {
          v64 = v62;
          v84 = sub_1D9C19020(v62);
          v65 = (v47 + *(v76 + 24));
          v66 = v65[1];
          v82 = *v65;
          v83 = v66;

          MEMORY[0x1DA73DF90](v52, v53);

          v67 = v82;
          v68 = v83;
          sub_1D99A19C0(v47, type metadata accessor for MLModelInfo);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515B8);
          v69 = swift_allocObject();
          v81 = xmmword_1D9C85660;
          *(v69 + 16) = xmmword_1D9C85660;
          *(v69 + 32) = v84;
          *(v69 + 40) = v67;
          *(v69 + 48) = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51960);
          v70 = swift_allocObject();
          *(v70 + 16) = v81;
          *(v70 + 32) = v45;
          *(v70 + 40) = v46;
          *(v70 + 48) = v74;

          v71 = v79;
          v72 = *(v78 + 88);
          *v79 = *(v78 + 72);
          v71[1] = v72;
          *(v71 + 4) = v69;
          *(v71 + 5) = v70;
          return result;
        }
      }

      else
      {

        sub_1D99A182C();
        swift_allocError();
        *v63 = 0xD00000000000001FLL;
        *(v63 + 8) = 0x80000001D9CAAEC0;
        *(v63 + 16) = 4;
        swift_willThrow();
      }

      return sub_1D99A19C0(v47, type metadata accessor for MLModelInfo);
    }

    else
    {
      v30 = v6;
      static Logger.argos.getter(v8);
      v31 = sub_1D9C7D8BC();
      v32 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1D9962000, v31, v32, "SignSymbol model expected 2 outputs", v33, 2u);
        MEMORY[0x1DA7405F0](v33, -1, -1);
      }

      (*(v18 + 8))(v8, v30);
      sub_1D99A182C();
      swift_allocError();
      *v34 = 0xD000000000000013;
      *(v34 + 8) = 0x80000001D9CAAEA0;
      *(v34 + 16) = 4;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1D9B97478()
{
  sub_1D99A19C0(v0 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo, type metadata accessor for MLModelInfo);
}

uint64_t sub_1D9B974DC()
{
  v1 = OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo;

  sub_1D99A19C0(v0 + v1, type metadata accessor for MLModelInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignSymbolModelFactory()
{
  result = qword_1EDD32CB8;
  if (!qword_1EDD32CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B975E4()
{
  result = type metadata accessor for MLModelInfo(319);
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

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9B976BC(uint64_t a1)
{
  result = MEMORY[0x1DA73E230](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1D9B91DE4(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B97860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(_OWORD *))
{
  v55 = a5;
  v56 = a8;
  v52 = a7;
  v53 = a4;
  v15 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v54 = *(v15 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v45 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v51 = a11;
    v48 = a10;
    v49 = a9;
    v23 = *(a2 + 144);
    v59[8] = *(a2 + 128);
    v59[9] = v23;
    v59[10] = *(a2 + 160);
    v60 = *(a2 + 176);
    v24 = *(a2 + 80);
    v59[4] = *(a2 + 64);
    v59[5] = v24;
    v25 = *(a2 + 112);
    v59[6] = *(a2 + 96);
    v59[7] = v25;
    v26 = *(a2 + 16);
    v59[0] = *a2;
    v59[1] = v26;
    v27 = *(a2 + 48);
    v59[2] = *(a2 + 32);
    v59[3] = v27;
    v50 = result;
    sub_1D99A17C8(a3, v58);
    v46 = v21;
    sub_1D99AB100(v53, v21, &unk_1ECB51B10);
    v47 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D9BA4538(v55, v47, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v28 = (*(v18 + 80) + 64) & ~*(v18 + 80);
    v29 = (v19 + *(v54 + 80) + v28) & ~*(v54 + 80);
    v30 = (v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = a6;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    sub_1D9979B9C(v58, v33 + 24);
    sub_1D9A0E758(v46, v33 + v28);
    sub_1D9BA45A0(v47, v33 + v29, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v34 = v56;
    *(v33 + v30) = v55;
    v35 = v52;
    *(v33 + v31) = v52;
    v36 = (v33 + v32);
    v37 = v49;
    *v36 = v34;
    v36[1] = v37;
    v38 = v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8);
    v39 = *(a2 + 48);
    *(v38 + 32) = *(a2 + 32);
    *(v38 + 48) = v39;
    v40 = *(a2 + 16);
    *v38 = *a2;
    *(v38 + 16) = v40;
    v41 = *(a2 + 112);
    *(v38 + 96) = *(a2 + 96);
    *(v38 + 112) = v41;
    v42 = *(a2 + 80);
    *(v38 + 64) = *(a2 + 64);
    *(v38 + 80) = v42;
    *(v38 + 176) = *(a2 + 176);
    v43 = *(a2 + 160);
    *(v38 + 144) = *(a2 + 144);
    *(v38 + 160) = v43;
    *(v38 + 128) = *(a2 + 128);

    v44 = v35;

    sub_1D99BB40C(a2, &v57);
    sub_1D9B9B478(v59, v51, v33);
  }

  return result;
}

uint64_t sub_1D9B97BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(a1 + 144);
    v27[8] = *(a1 + 128);
    v27[9] = v19;
    v27[10] = *(a1 + 160);
    v28 = *(a1 + 176);
    v20 = *(a1 + 80);
    v27[4] = *(a1 + 64);
    v27[5] = v20;
    v21 = *(a1 + 112);
    v27[6] = *(a1 + 96);
    v27[7] = v21;
    v22 = *(a1 + 16);
    v27[0] = *a1;
    v27[1] = v22;
    v23 = *(a1 + 48);
    v27[2] = *(a1 + 32);
    v27[3] = v23;

    sub_1D99BB40C(a10, &v26);
    a11(a3, v27, a4, a5, a6, a7, v18, a8, a9, a10);

    return sub_1D9A0009C(a10);
  }

  return result;
}

uint64_t sub_1D9B97D94(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, const char *a5)
{
  v40 = a5;
  v48 = a3;
  v46 = a2;
  v47 = sub_1D9C7D8DC();
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519D0);
  MEMORY[0x1EEE9AC00](v39);
  v12 = &v38 - v11;
  v41 = type metadata accessor for VisualSearchResultInternal(0);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  sub_1D99AB100(a1, &v38 - v18, &unk_1ECB53570);
  v42 = v15;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D99A6AE0(v19, &unk_1ECB53570);
    return v46(a1);
  }

  else
  {
    sub_1D9BA45A0(v19, v14, type metadata accessor for VisualSearchResultInternal);
    v21 = *(a4 + 144);
    v50[8] = *(a4 + 128);
    v50[9] = v21;
    v50[10] = *(a4 + 160);
    v51 = *(a4 + 176);
    v22 = *(a4 + 80);
    v50[4] = *(a4 + 64);
    v50[5] = v22;
    v23 = *(a4 + 112);
    v50[6] = *(a4 + 96);
    v50[7] = v23;
    v24 = *(a4 + 16);
    v50[0] = *a4;
    v50[1] = v24;
    v25 = *(a4 + 48);
    v50[2] = *(a4 + 32);
    v50[3] = v25;
    sub_1D99BB40C(a4, &v49);
    sub_1D9B79970(v50);
    v26 = sub_1D9C7CF3C();
    (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
    v27 = v41;
    sub_1D9BA3EA4(v12, &v14[*(v41 + 28)]);
    static Logger.argos.getter(v10);
    sub_1D9A3E0E0(v45);
    v28 = *(v44 + 8);
    v28(v10, v47);
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E09C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v50[0] = v32;
      *v31 = 136315138;
      swift_beginAccess();
      sub_1D99AB100(&v14[*(v27 + 28)], v12, &qword_1ECB519D0);
      v33 = sub_1D9C7DCEC();
      v35 = sub_1D9A0E224(v33, v34, v50);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1D9962000, v29, v30, v40, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x1DA7405F0](v32, -1, -1);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    v28(v45, v47);
    v36 = v46;
    swift_beginAccess();
    v37 = v43;
    sub_1D9BA4538(v14, v43, type metadata accessor for VisualSearchResultInternal);
    swift_storeEnumTagMultiPayload();
    v36(v37);
    sub_1D99A6AE0(v37, &unk_1ECB53570);
    return sub_1D9BA4608(v14, type metadata accessor for VisualSearchResultInternal);
  }
}

uint64_t sub_1D9B982C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v53 = a5;
  v54 = a8;
  v50 = a4;
  v51 = a7;
  v14 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v45 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v48 = a10;
    v47 = a9;
    v22 = *(a2 + 144);
    v58[8] = *(a2 + 128);
    v58[9] = v22;
    v58[10] = *(a2 + 160);
    v59 = *(a2 + 176);
    v23 = *(a2 + 80);
    v58[4] = *(a2 + 64);
    v58[5] = v23;
    v24 = *(a2 + 112);
    v58[6] = *(a2 + 96);
    v58[7] = v24;
    v25 = *(a2 + 16);
    v58[0] = *a2;
    v58[1] = v25;
    v26 = *(a2 + 48);
    v58[2] = *(a2 + 32);
    v58[3] = v26;
    v49 = result;
    sub_1D99AB100(a3, v56, &qword_1ECB51B30);
    v45 = v20;
    sub_1D99AB100(v50, v20, &unk_1ECB51B10);
    v46 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D9BA4538(v53, v46, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v27 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v28 = (v18 + *(v52 + 80) + v27) & ~*(v52 + 80);
    v52 = a6;
    v53 = (v15 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = v54;
    v32 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    v34 = v56[1];
    *(v33 + 24) = v56[0];
    *(v33 + 40) = v34;
    *(v33 + 56) = v57;
    sub_1D9A0E758(v45, v33 + v27);
    sub_1D9BA45A0(v46, v33 + v28, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    *(v33 + v53) = v52;
    v35 = v51;
    *(v33 + v50) = v51;
    *(v33 + v29) = v31;
    v36 = (v33 + v30);
    v37 = v48;
    *v36 = v47;
    v36[1] = v37;
    v38 = v33 + v32;
    v39 = *(a2 + 48);
    *(v38 + 32) = *(a2 + 32);
    *(v38 + 48) = v39;
    v40 = *(a2 + 16);
    *v38 = *a2;
    *(v38 + 16) = v40;
    v41 = *(a2 + 112);
    *(v38 + 96) = *(a2 + 96);
    *(v38 + 112) = v41;
    v42 = *(a2 + 80);
    *(v38 + 64) = *(a2 + 64);
    *(v38 + 80) = v42;
    *(v38 + 176) = *(a2 + 176);
    v43 = *(a2 + 160);
    *(v38 + 144) = *(a2 + 144);
    *(v38 + 160) = v43;
    *(v38 + 128) = *(a2 + 128);

    v44 = v35;

    sub_1D99BB40C(a2, &v55);
    sub_1D9B9B478(v58, sub_1D9BA8388, v33);
  }

  return result;
}

uint64_t sub_1D9B98660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7, uint64_t a8, uint64_t (*a9)(char *), uint64_t a10, uint64_t a11)
{
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  v17 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v17);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v25[1] = v16;
    v25[3] = v14;
    v20 = *(a1 + 144);
    v31[8] = *(a1 + 128);
    v31[9] = v20;
    v31[10] = *(a1 + 160);
    v32 = *(a1 + 176);
    v21 = *(a1 + 80);
    v31[4] = *(a1 + 64);
    v31[5] = v21;
    v22 = *(a1 + 112);
    v31[6] = *(a1 + 96);
    v31[7] = v22;
    v23 = *(a1 + 16);
    v31[0] = *a1;
    v31[1] = v23;
    v24 = *(a1 + 48);
    v31[2] = *(a1 + 32);
    v31[3] = v24;
    swift_retain_n();
    sub_1D99BB40C(a11, &v30);
    v25[2] = a9;
    sub_1D9BA0F6C(v26, v31, v27, v28, v29, a7, a8, v19, a9, a10, a11);

    return sub_1D9A0009C(a11);
  }

  return result;
}

uint64_t sub_1D9B98A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a8;
  v52 = a7;
  v49 = a6;
  v50 = a4;
  v53 = a5;
  v12 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v44 - v18;
  swift_beginAccess();
  v54 = a1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v47 = a9;
    v21 = *(a2 + 144);
    v56[8] = *(a2 + 128);
    v56[9] = v21;
    v56[10] = *(a2 + 160);
    v57 = *(a2 + 176);
    v22 = *(a2 + 80);
    v56[4] = *(a2 + 64);
    v56[5] = v22;
    v23 = *(a2 + 112);
    v56[6] = *(a2 + 96);
    v56[7] = v23;
    v24 = *(a2 + 16);
    v56[0] = *a2;
    v56[1] = v24;
    v25 = *(a2 + 48);
    v56[2] = *(a2 + 32);
    v56[3] = v25;
    v48 = result;
    v45 = v19;
    sub_1D99AB100(a3, v19, &unk_1ECB51B10);
    v46 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D9BA4538(v50, v46, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v26 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v27 = (v17 + *(v13 + 80) + v26) & ~*(v13 + 80);
    v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v50 = a3;
    v32 = swift_allocObject();
    *(v32 + 16) = v54;
    sub_1D9A0E758(v45, v32 + v26);
    sub_1D9BA45A0(v46, v32 + v27, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v33 = v52;
    *(v32 + v28) = v53;
    v34 = v49;
    *(v32 + v29) = v49;
    *(v32 + v30) = v33;
    v35 = (v32 + v31);
    v36 = v47;
    *v35 = v51;
    v35[1] = v36;
    v37 = v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
    v38 = *(a2 + 48);
    *(v37 + 32) = *(a2 + 32);
    *(v37 + 48) = v38;
    v39 = *(a2 + 16);
    *v37 = *a2;
    *(v37 + 16) = v39;
    v40 = *(a2 + 112);
    *(v37 + 96) = *(a2 + 96);
    *(v37 + 112) = v40;
    v41 = *(a2 + 80);
    *(v37 + 64) = *(a2 + 64);
    *(v37 + 80) = v41;
    *(v37 + 176) = *(a2 + 176);
    v42 = *(a2 + 160);
    *(v37 + 144) = *(a2 + 144);
    *(v37 + 160) = v42;
    *(v37 + 128) = *(a2 + 128);

    v43 = v34;

    sub_1D99BB40C(a2, &v55);
    sub_1D9B99CA4(v56, v50, sub_1D9BA85BC, v32);
  }

  return result;
}

uint64_t sub_1D9B98D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t (*a8)(char *), uint64_t a9, uint64_t a10)
{
  v28 = a6;
  v29 = a5;
  v27 = a4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v26);
  v15 = v25 - v14;
  v16 = sub_1D9C7D8DC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v25[0] = v17;
    v25[1] = v15;
    v20 = *(a1 + 144);
    v31[8] = *(a1 + 128);
    v31[9] = v20;
    v31[10] = *(a1 + 160);
    v32 = *(a1 + 176);
    v21 = *(a1 + 80);
    v31[4] = *(a1 + 64);
    v31[5] = v21;
    v22 = *(a1 + 112);
    v31[6] = *(a1 + 96);
    v31[7] = v22;
    v23 = *(a1 + 16);
    v31[0] = *a1;
    v31[1] = v23;
    v24 = *(a1 + 48);
    v31[2] = *(a1 + 32);
    v31[3] = v24;

    sub_1D99BB40C(a10, &v30);
    sub_1D9BA4AEC(v31, a3, v27, v29, v28, a7, v19, a8, a9, a10);

    return sub_1D9A0009C(a10);
  }

  return result;
}

uint64_t sub_1D9B99130(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v69 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519D0);
  MEMORY[0x1EEE9AC00](v59);
  v7 = &v59 - v6;
  v66 = type metadata accessor for VisualSearchResultInternal(0);
  MEMORY[0x1EEE9AC00](v66);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1D9C7D8DC();
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v59 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  v61 = a1;
  sub_1D99AB100(a1, &v59 - v21, &unk_1ECB53570);
  v64 = v18;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D99A6AE0(v22, &unk_1ECB53570);
    static Logger.argos.getter(v17);
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
    }

    v23 = v70;
    __swift_project_value_buffer(v70, qword_1EDD2C990);
    v67[1](v17, v23);
    v24 = sub_1D9C7D8BC();
    v25 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D9962000, v24, v25, "search(): failure", v26, 2u);
      MEMORY[0x1DA7405F0](v26, -1, -1);
    }

    return v69(v61);
  }

  else
  {
    v28 = v22;
    v29 = v60;
    sub_1D9BA45A0(v28, v60, type metadata accessor for VisualSearchResultInternal);
    v30 = *(a4 + 144);
    v72[8] = *(a4 + 128);
    v72[9] = v30;
    v72[10] = *(a4 + 160);
    v73 = *(a4 + 176);
    v31 = *(a4 + 80);
    v72[4] = *(a4 + 64);
    v72[5] = v31;
    v32 = *(a4 + 112);
    v72[6] = *(a4 + 96);
    v72[7] = v32;
    v33 = *(a4 + 16);
    v72[0] = *a4;
    v72[1] = v33;
    v34 = *(a4 + 48);
    v72[2] = *(a4 + 32);
    v72[3] = v34;
    sub_1D99BB40C(a4, &v71);
    sub_1D9B79970(v72);
    v35 = sub_1D9C7CF3C();
    (*(*(v35 - 8) + 56))(v7, 0, 1, v35);
    sub_1D9BA3EA4(v7, v29 + *(v66 + 28));
    static Logger.argos.getter(v14);
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
    }

    v61 = v7;
    v36 = v70;
    __swift_project_value_buffer(v70, qword_1EDD2C990);
    v37 = v67[1];
    (v37)(v14, v36);
    v38 = sub_1D9C7D8BC();
    v39 = sub_1D9C7E09C();
    v40 = os_log_type_enabled(v38, v39);
    v67 = v37;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v72[0] = v42;
      *v41 = 136315138;
      swift_beginAccess();
      v43 = v29;
      v44 = VisualSearchResultInternal.shortDescriptionForConsumerLogging()();
      v45 = sub_1D9A0E224(v44._countAndFlagsBits, v44._object, v72);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1D9962000, v38, v39, "search(): %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      v46 = v42;
      v36 = v70;
      MEMORY[0x1DA7405F0](v46, -1, -1);
      v47 = v41;
      v37 = v67;
      MEMORY[0x1DA7405F0](v47, -1, -1);
    }

    else
    {
      v43 = v29;
    }

    v48 = v62;
    v49 = v63;
    static Logger.argos.getter(v62);
    sub_1D9A3E0E0(v49);
    (v37)(v48, v36);
    v50 = sub_1D9C7D8BC();
    v51 = sub_1D9C7E09C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v72[0] = v53;
      *v52 = 136315138;
      v54 = v43;
      swift_beginAccess();
      sub_1D99AB100(v43 + *(v66 + 28), v61, &qword_1ECB519D0);
      v55 = sub_1D9C7DCEC();
      v57 = sub_1D9A0E224(v55, v56, v72);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_1D9962000, v50, v51, "search(): result.userFeedbackIntermediateResults = %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x1DA7405F0](v53, -1, -1);
      MEMORY[0x1DA7405F0](v52, -1, -1);

      (v67)(v49, v70);
    }

    else
    {

      (v37)(v49, v36);
      v54 = v43;
    }

    swift_beginAccess();
    v58 = v65;
    sub_1D9BA4538(v54, v65, type metadata accessor for VisualSearchResultInternal);
    swift_storeEnumTagMultiPayload();
    v69(v58);
    sub_1D99A6AE0(v58, &unk_1ECB53570);
    return sub_1D9BA4608(v54, type metadata accessor for VisualSearchResultInternal);
  }
}

uint64_t sub_1D9B998E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v40 = a7;
  v41 = a6;
  v39 = a1;
  v9 = type metadata accessor for ServerSearchResult();
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v37 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v37 - v15);
  sub_1D9AFCCA4();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    if (a5)
    {
      swift_beginAccess();
      v19 = *(a5 + 16);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    sub_1D9A19294(v19);
    swift_endAccess();
    sub_1D99AB100(v39, v13, &qword_1ECB53DC0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v16 = *v13;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v20 = v38;
      sub_1D9BA45A0(v13, v38, type metadata accessor for ServerSearchResult);
      v21 = (v20 + *(v9 + 24));
      v23 = *v21;
      v22 = v21[1];
      swift_beginAccess();
      *(a4 + 144) = v23;
      *(a4 + 152) = v22;

      swift_beginAccess();
      v24 = *(a4 + 160);
      v25 = *(a4 + 128);
      v61 = *(a4 + 144);
      v62 = v24;
      v26 = *(a4 + 160);
      v63 = *(a4 + 176);
      v27 = *(a4 + 96);
      v28 = *(a4 + 64);
      v57 = *(a4 + 80);
      v58 = v27;
      v29 = *(a4 + 96);
      v30 = *(a4 + 128);
      v59 = *(a4 + 112);
      v60 = v30;
      v31 = *(a4 + 32);
      v54[0] = *(a4 + 16);
      v54[1] = v31;
      v32 = *(a4 + 64);
      v34 = *(a4 + 16);
      v33 = *(a4 + 32);
      v55 = *(a4 + 48);
      v56 = v32;
      v35 = *(a4 + 176);
      v51 = v26;
      v52 = v35;
      v46 = v57;
      v47 = v29;
      v48 = v59;
      v49 = v25;
      v50 = v61;
      v42 = v34;
      v43 = v33;
      v64 = *(a4 + 192);
      v53 = *(a4 + 192);
      v44 = v55;
      v45 = v28;
      v36 = *(v18 + 64);
      sub_1D99BB40C(v54, v65);
      sub_1D9B3BD0C(v20, &v42, v36, v16);
      v65[8] = v50;
      v65[9] = v51;
      v65[10] = v52;
      v66 = v53;
      v65[4] = v46;
      v65[5] = v47;
      v65[6] = v48;
      v65[7] = v49;
      v65[0] = v42;
      v65[1] = v43;
      v65[2] = v44;
      v65[3] = v45;
      sub_1D9A0009C(v65);
      sub_1D9BA4608(v20, type metadata accessor for ServerSearchResult);
    }

    v41(v16);

    return sub_1D99A6AE0(v16, &unk_1ECB53570);
  }

  return result;
}

uint64_t sub_1D9B99CA4(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4)
{
  v145 = a4;
  v142 = a3;
  v146 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v143 = &v129 - v6;
  v7 = sub_1D9C7D8DC();
  v147 = *(v7 - 8);
  v148 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v139 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v129 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v138 = &v129 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v129 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v141 = &v129 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v135 = &v129 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v131 = &v129 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v130 = &v129 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v134 = &v129 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v129 = &v129 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v133 = &v129 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v132 = &v129 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v129 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v129 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v140 = (&v129 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v129 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v129 - v43;
  Context = type metadata accessor for VisualQueryContext();
  v46 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v48 = &v129 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a1 + 144);
  v185 = *(a1 + 128);
  v186 = v49;
  v187 = *(a1 + 160);
  v188 = *(a1 + 176);
  v50 = *(a1 + 80);
  v184[4] = *(a1 + 64);
  v184[5] = v50;
  v51 = *(a1 + 112);
  v184[6] = *(a1 + 96);
  v184[7] = v51;
  v52 = *(a1 + 16);
  v184[0] = *a1;
  v184[1] = v52;
  v53 = *(a1 + 48);
  v184[2] = *(a1 + 32);
  v184[3] = v53;
  sub_1D99AB100(v146, v44, &unk_1ECB51B10);
  if ((*(v46 + 48))(v44, 1, Context) == 1)
  {
    sub_1D99A6AE0(v44, &unk_1ECB51B10);
LABEL_8:
    v60 = v148;
    static Logger.argos.getter(v36);
    sub_1D9A3E0E0(v33);
    v149 = *(v147 + 8);
    v149(v36, v60);
    v61 = sub_1D9C7D8BC();
    v62 = sub_1D9C7E08C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1D9962000, v61, v62, "Location is not set in queryContext", v63, 2u);
      MEMORY[0x1DA7405F0](v63, -1, -1);
    }

    v149(v33, v60);
    v59 = 0;
    goto LABEL_11;
  }

  sub_1D9BA45A0(v44, v48, type metadata accessor for VisualQueryContext);
  if (!*&v48[*(Context + 44)])
  {
    sub_1D9BA4608(v48, type metadata accessor for VisualQueryContext);
    goto LABEL_8;
  }

  static Logger.argos.getter(v41);
  v54 = v140;
  sub_1D9A3E0E0(v140);
  v55 = v148;
  v149 = *(v147 + 8);
  v149(v41, v148);
  v56 = sub_1D9C7D8BC();
  v57 = sub_1D9C7E08C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_1D9962000, v56, v57, "Location is set in queryContext", v58, 2u);
    MEMORY[0x1DA7405F0](v58, -1, -1);
  }

  v149(v54, v55);
  sub_1D9BA4608(v48, type metadata accessor for VisualQueryContext);
  v59 = 1;
LABEL_11:
  v64 = swift_allocObject();
  *(v64 + 16) = 1;
  sub_1D99BB40C(v184, &v168);
  v65 = sub_1D9BA3478(v146);
  v66 = dispatch_group_create();
  dispatch_group_enter(v66);
  v67 = sub_1D9C7DFBC();
  v68 = v143;
  (*(*(v67 - 8) + 56))(v143, 1, 1, v67);
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  *(v69 + 24) = 0;
  *(v69 + 32) = v66;
  *(v69 + 40) = v64;
  *(v69 + 48) = v144;
  *(v69 + 56) = v65;
  v70 = v66;
  v146 = v64;

  sub_1D9BC1E20(0, 0, v68, &unk_1D9C99C88, v69);

  sub_1D9C7E0DC();
  swift_beginAccess();
  v71 = *(v64 + 16);
  if (v71)
  {
    v72 = v148;
    v140 = v70;
    if (v71 == 1)
    {
      v73 = v137;
      static Logger.argos.getter(v137);
      v74 = v139;
      sub_1D9A3E0E0(v139);
      v149(v73, v72);
      v75 = sub_1D9C7D8BC();
      v76 = sub_1D9C7E09C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_1D9962000, v75, v76, "Application does not have any allowed domains", v77, 2u);
        MEMORY[0x1DA7405F0](v77, -1, -1);
      }

      v149(v74, v72);
      v78 = MEMORY[0x1E69E7CD0];
      v79 = v142;
      goto LABEL_38;
    }

    v167 = v71;
    sub_1D99E93C8(v71);
    if ((v59 & 1) == 0)
    {
      v98 = v132;
      static Logger.argos.getter(v132);
      v99 = v133;
      sub_1D9A3E0E0(v133);
      v100 = (v147 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v149(v98, v72);
      v101 = sub_1D9C7D8BC();
      v102 = sub_1D9C7E09C();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&dword_1D9962000, v101, v102, "No location signal, disable landmarks domains", v103, 2u);
        MEMORY[0x1DA7405F0](v103, -1, -1);
      }

      v149(v99, v72);
      v104 = sub_1D9B9E6EC(&unk_1F552A9D8);
      sub_1D9B9D9BC(v104);

      v105 = v141;
      goto LABEL_34;
    }

    if (sub_1D9A75D94())
    {
      if (qword_1ECB50988 == -1)
      {
LABEL_27:
        v105 = v141;

        v106 = sub_1D9A16B7C();

        v107 = v147 + 8;
        if (v106)
        {
          v108 = v129;
          static Logger.argos.getter(v129);
          sub_1D9A3E0E0(v134);
          v100 = v107 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v149(v108, v72);
          v109 = sub_1D9C7D8BC();
          v110 = sub_1D9C7E09C();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            *v111 = 0;
            _os_log_impl(&dword_1D9962000, v109, v110, "cameraDomainsLocationFilterEnabled is true, disable landmarks domains", v111, 2u);
            MEMORY[0x1DA7405F0](v111, -1, -1);
          }

          v149(v134, v72);
          v112 = sub_1D9B9E6EC(&unk_1F552AA00);
          sub_1D9B9D9BC(v112);
        }

        else
        {
          v113 = v130;
          static Logger.argos.getter(v130);
          v114 = v131;
          sub_1D9A3E0E0(v131);
          v100 = v107 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v149(v113, v72);
          v115 = sub_1D9C7D8BC();
          v116 = sub_1D9C7E09C();
          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            *v117 = 0;
            _os_log_impl(&dword_1D9962000, v115, v116, "Domain location filter does not apply", v117, 2u);
            MEMORY[0x1DA7405F0](v117, -1, -1);
          }

          v149(v114, v72);
        }

LABEL_34:
        v118 = v135;
        static Logger.argos.getter(v135);
        sub_1D9A3E0E0(v105);
        v149(v118, v72);
        v78 = v167;

        v119 = sub_1D9C7D8BC();
        v120 = sub_1D9C7E09C();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          *&v168 = v122;
          *v121 = 134218242;
          *(v121 + 4) = *(v78 + 16);

          *(v121 + 12) = 2080;
          sub_1D99E3A84(v78);
          v123 = MEMORY[0x1DA73E110]();
          v147 = v100;
          v124 = v123;
          v126 = v125;

          v127 = sub_1D9A0E224(v124, v126, &v168);

          *(v121 + 14) = v127;
          _os_log_impl(&dword_1D9962000, v119, v120, "Application can search domain count: %ld, domains: %s", v121, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v122);
          MEMORY[0x1DA7405F0](v122, -1, -1);
          MEMORY[0x1DA7405F0](v121, -1, -1);

          v149(v141, v148);
        }

        else
        {

          v149(v105, v72);
        }

        v79 = v142;
LABEL_38:
        v158 = v185;
        v159 = v186;
        v160 = v187;
        v161 = v188;
        v154 = v184[4];
        v155 = v184[5];
        v156 = v184[6];
        v157 = v184[7];
        v150 = v184[0];
        v151 = v184[1];
        v152 = v184[2];
        v153 = v184[3];
        sub_1D9B69C68(v78, v162);

        v176 = v158;
        v177 = v159;
        v178 = v160;
        v179 = v161;
        v172 = v154;
        v173 = v155;
        v174 = v156;
        v175 = v157;
        v168 = v150;
        v169 = v151;
        v170 = v152;
        v171 = v153;
        sub_1D9A0009C(&v168);
        v97 = *&v162[0];
        v180 = *(v162 + 8);
        v181 = *(&v162[1] + 8);
        v182 = *(&v162[2] + 8);
        v183 = *(&v162[3] + 8);
        v95 = *(&v162[4] + 8);
        v96 = *(&v162[5] + 8);
        v93 = *(&v162[6] + 8);
        v94 = BYTE8(v162[7]);
        v92 = *(&v163 + 1);
        v91 = v163;
        v90 = v164;
        v89 = v165;
        v88 = v166;
        v70 = v140;
        goto LABEL_39;
      }
    }

    else if (qword_1EDD355A0 == -1)
    {
      goto LABEL_27;
    }

    swift_once();
    goto LABEL_27;
  }

  v80 = v136;
  static Logger.argos.getter(v136);
  v81 = v138;
  sub_1D9A3E0E0(v138);
  v82 = v148;
  v149(v80, v148);
  v83 = sub_1D9C7D8BC();
  v84 = sub_1D9C7E09C();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = v70;
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_1D9962000, v83, v84, "Application can search any domain", v86, 2u);
    v87 = v86;
    v70 = v85;
    MEMORY[0x1DA7405F0](v87, -1, -1);
  }

  v149(v81, v82);
  v88 = v188;
  v90 = v186;
  v89 = v187;
  v92 = *(&v185 + 1);
  v91 = v185;
  v93 = *(&v184[6] + 8);
  v94 = BYTE8(v184[7]);
  v95 = *(&v184[4] + 8);
  v96 = *(&v184[5] + 8);
  v97 = *&v184[0];
  v180 = *(v184 + 8);
  v181 = *(&v184[1] + 8);
  v182 = *(&v184[2] + 8);
  v183 = *(&v184[3] + 8);
  v79 = v142;
LABEL_39:
  *(v162 + 8) = v180;
  *(&v162[1] + 8) = v181;
  *(&v162[2] + 8) = v182;
  LOBYTE(v150) = v94;
  *&v162[0] = v97;
  *(&v162[3] + 8) = v183;
  *(&v162[4] + 8) = v95;
  *(&v162[5] + 8) = v96;
  *(&v162[6] + 8) = v93;
  BYTE8(v162[7]) = v94;
  *&v163 = v91;
  *(&v163 + 1) = v92;
  v164 = v90;
  v165 = v89;
  v166 = v88;
  v79(v162);

  v176 = v163;
  v177 = v164;
  v178 = v165;
  v179 = v166;
  v172 = v162[4];
  v173 = v162[5];
  v174 = v162[6];
  v175 = v162[7];
  v168 = v162[0];
  v169 = v162[1];
  v170 = v162[2];
  v171 = v162[3];
  sub_1D9A0009C(&v168);
}

uint64_t sub_1D9B9ACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 80) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D9B9ACF0, 0, 0);
}

uint64_t sub_1D9B9ACF0()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D9B9AD8C;
  v2 = *(v0 + 80);

  return sub_1D99E465C(v2);
}

uint64_t sub_1D9B9AD8C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D9BA90D4, 0, 0);
}

uint64_t sub_1D9B9AE8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v66 = a8;
  v67 = a5;
  v68 = a7;
  v64 = a4;
  v18 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v65 = *(v18 - 8);
  v19 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v53 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v62 = a14;
    v61 = a13;
    v60 = a12;
    v59 = a11;
    v58 = a10;
    v57 = a9;
    v26 = *(a2 + 144);
    v71[8] = *(a2 + 128);
    v71[9] = v26;
    v71[10] = *(a2 + 160);
    v72 = *(a2 + 176);
    v27 = *(a2 + 80);
    v71[4] = *(a2 + 64);
    v71[5] = v27;
    v28 = *(a2 + 112);
    v71[6] = *(a2 + 96);
    v71[7] = v28;
    v29 = *(a2 + 16);
    v71[0] = *a2;
    v71[1] = v29;
    v30 = *(a2 + 48);
    v71[2] = *(a2 + 32);
    v71[3] = v30;
    v63 = result;
    sub_1D99A17C8(a3, v70);
    v55 = v24;
    sub_1D99AB100(v64, v24, &unk_1ECB51B10);
    v56 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D9BA4538(v67, v56, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v31 = (*(v21 + 80) + 64) & ~*(v21 + 80);
    v32 = (v22 + *(v65 + 80) + v31) & ~*(v65 + 80);
    v33 = (v19 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = (((v33 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = a6;
    v34 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    sub_1D9979B9C(v70, v36 + 24);
    sub_1D9A0E758(v55, v36 + v31);
    sub_1D9BA45A0(v56, v36 + v32, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v37 = (v36 + v33);
    v38 = v68;
    *v37 = v54;
    v37[1] = v38;
    v39 = (v36 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8));
    v40 = v57;
    v41 = v58;
    *v39 = v66;
    v39[1] = v40;
    *(v36 + v67) = v41;
    v43 = v59;
    v42 = v60;
    *(v36 + v65) = v59;
    *(v36 + v34) = v42;
    v44 = (v36 + v35);
    v45 = v62;
    *v44 = v61;
    v44[1] = v45;
    v46 = v36 + v64;
    v47 = *(a2 + 48);
    *(v46 + 32) = *(a2 + 32);
    *(v46 + 48) = v47;
    v48 = *(a2 + 16);
    *v46 = *a2;
    *(v46 + 16) = v48;
    v49 = *(a2 + 112);
    *(v46 + 96) = *(a2 + 96);
    *(v46 + 112) = v49;
    v50 = *(a2 + 80);
    *(v46 + 64) = *(a2 + 64);
    *(v46 + 80) = v50;
    *(v46 + 176) = *(a2 + 176);
    v51 = *(a2 + 160);
    *(v46 + 144) = *(a2 + 144);
    *(v46 + 160) = v51;
    *(v46 + 128) = *(a2 + 128);

    v52 = v43;

    sub_1D99BB40C(a2, &v69);
    sub_1D9B9B478(v71, sub_1D9BA4978, v36);
  }

  return result;
}

uint64_t sub_1D9B9B280(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, char *a12, uint64_t (*a13)(uint64_t), uint64_t a14, uint64_t a15)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v20);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = *(a1 + 144);
    v31[8] = *(a1 + 128);
    v31[9] = v23;
    v31[10] = *(a1 + 160);
    v32 = *(a1 + 176);
    v24 = *(a1 + 80);
    v31[4] = *(a1 + 64);
    v31[5] = v24;
    v25 = *(a1 + 112);
    v31[6] = *(a1 + 96);
    v31[7] = v25;
    v26 = *(a1 + 16);
    v31[0] = *a1;
    v31[1] = v26;
    v27 = *(a1 + 48);
    v31[2] = *(a1 + 32);
    v31[3] = v27;

    sub_1D99BB40C(a15, &v30);
    sub_1D9BA6070(a3, v31, a4, a5, a6, a7, a8, a9, a10, a11, a12, v22, a13, a14, a15);

    return sub_1D9A0009C(a15);
  }

  return result;
}

uint64_t sub_1D9B9B478(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3)
{
  v65 = a3;
  v66 = a2;
  v5 = sub_1D9C7D8DC();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v58[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v58[-v14];
  v16 = *(a1 + 144);
  v101 = *(a1 + 128);
  v102 = v16;
  v103 = *(a1 + 160);
  v104 = *(a1 + 176);
  v17 = *(a1 + 80);
  v100[4] = *(a1 + 64);
  v100[5] = v17;
  v18 = *(a1 + 112);
  v100[6] = *(a1 + 96);
  v100[7] = v18;
  v19 = *(a1 + 16);
  v100[0] = *a1;
  v100[1] = v19;
  v20 = *(a1 + 48);
  v100[2] = *(a1 + 32);
  v100[3] = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = 1;
  v22 = (v21 + 16);
  sub_1D99BB40C(v100, &v84);
  v23 = dispatch_group_create();
  dispatch_group_enter(v23);
  v24 = sub_1D9C7DFBC();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = v21;
  v25[6] = v3;
  v26 = v23;

  sub_1D9BC1E20(0, 0, v15, &unk_1D9C99C78, v25);

  sub_1D9C7E0DC();
  swift_beginAccess();
  v27 = *v22;
  if (*v22)
  {
    if (v27 == 1)
    {
      static Logger.argos.getter(v7);
      v28 = sub_1D9C7D8BC();
      v29 = sub_1D9C7E09C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = v26;
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1D9962000, v28, v29, "Application does not have any allowed domains", v31, 2u);
        v32 = v31;
        v26 = v30;
        MEMORY[0x1DA7405F0](v32, -1, -1);
      }

      (*(v63 + 8))(v7, v64);
      v27 = MEMORY[0x1E69E7CD0];
    }

    else
    {

      v47 = v62;
      static Logger.argos.getter(v62);
      sub_1D99E93C8(v27);
      v48 = sub_1D9C7D8BC();
      v49 = sub_1D9C7E09C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v84 = v60;
        *v50 = 134218242;
        *(v50 + 4) = *(v27 + 16);
        sub_1D99E93D8(v27);
        *(v50 + 12) = 2080;
        sub_1D99E3A84(v27);
        v51 = MEMORY[0x1DA73E110]();
        v59 = v49;
        v52 = v51;
        v61 = v26;
        v54 = v53;

        v55 = sub_1D9A0E224(v52, v54, &v84);
        v26 = v61;

        *(v50 + 14) = v55;
        _os_log_impl(&dword_1D9962000, v48, v59, "Application can search domain count: %ld, domains: %s", v50, 0x16u);
        v56 = v60;
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        MEMORY[0x1DA7405F0](v56, -1, -1);
        MEMORY[0x1DA7405F0](v50, -1, -1);

        (*(v63 + 8))(v62, v64);
      }

      else
      {
        sub_1D99E93D8(v27);

        (*(v63 + 8))(v47, v64);
      }
    }

    v75 = v101;
    v76 = v102;
    v77 = v103;
    v78 = v104;
    v71 = v100[4];
    v72 = v100[5];
    v73 = v100[6];
    v74 = v100[7];
    v67 = v100[0];
    v68 = v100[1];
    v69 = v100[2];
    v70 = v100[3];
    sub_1D9B69C68(v27, v79);

    v92 = v75;
    v93 = v76;
    v94 = v77;
    v95 = v78;
    v88 = v71;
    v89 = v72;
    v90 = v73;
    v91 = v74;
    v84 = v67;
    v85 = v68;
    v86 = v69;
    v87 = v70;
    sub_1D9A0009C(&v84);
    v46 = *&v79[0];
    v96 = *(v79 + 8);
    v97 = *(&v79[1] + 8);
    v98 = *(&v79[2] + 8);
    v99 = *(&v79[3] + 8);
    v44 = *(&v79[4] + 8);
    v45 = *(&v79[5] + 8);
    v42 = *(&v79[6] + 8);
    v43 = BYTE8(v79[7]);
    v41 = *(&v80 + 1);
    v40 = v80;
    v39 = v81;
    v38 = v82;
    v37 = v83;
    v33 = v66;
  }

  else
  {
    v33 = v66;
    static Logger.argos.getter(v10);
    v34 = sub_1D9C7D8BC();
    v35 = sub_1D9C7E09C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D9962000, v34, v35, "Application can search any domain", v36, 2u);
      MEMORY[0x1DA7405F0](v36, -1, -1);
    }

    (*(v63 + 8))(v10, v64);
    v37 = v104;
    v39 = v102;
    v38 = v103;
    v41 = *(&v101 + 1);
    v40 = v101;
    v42 = *(&v100[6] + 8);
    v43 = BYTE8(v100[7]);
    v44 = *(&v100[4] + 8);
    v45 = *(&v100[5] + 8);
    v46 = *&v100[0];
    v96 = *(v100 + 8);
    v97 = *(&v100[1] + 8);
    v98 = *(&v100[2] + 8);
    v99 = *(&v100[3] + 8);
  }

  *(v79 + 8) = v96;
  *(&v79[1] + 8) = v97;
  *(&v79[2] + 8) = v98;
  LOBYTE(v67) = v43;
  *&v79[0] = v46;
  *(&v79[3] + 8) = v99;
  *(&v79[4] + 8) = v44;
  *(&v79[5] + 8) = v45;
  *(&v79[6] + 8) = v42;
  BYTE8(v79[7]) = v43;
  *&v80 = v40;
  *(&v80 + 1) = v41;
  v81 = v39;
  v82 = v38;
  v83 = v37;
  v33(v79);

  v92 = v80;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v88 = v79[4];
  v89 = v79[5];
  v90 = v79[6];
  v91 = v79[7];
  v84 = v79[0];
  v85 = v79[1];
  v86 = v79[2];
  v87 = v79[3];
  sub_1D9A0009C(&v84);
}

uint64_t sub_1D9B9BB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D9B9BBA4, 0, 0);
}

uint64_t sub_1D9B9BBA4()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D9B0CF78;

  return sub_1D99E465C(0);
}

uint64_t sub_1D9B9BC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v76 = a7;
  LODWORD(v75) = a6;
  v73 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = v67 - v13;
  v14 = type metadata accessor for ServerSearchResult();
  MEMORY[0x1EEE9AC00](v14);
  v69 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v67 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v19);
  v70 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v74 = (v67 - v22);
  sub_1D9AFCCA4();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v72 = result;
    v68 = a8;
    v67[0] = a5;
    if (a5)
    {
      swift_beginAccess();
      v24 = *(a5 + 16);
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    v67[1] = a9;
    swift_beginAccess();
    sub_1D9A19294(v24);
    swift_endAccess();
    sub_1D99AB100(v73, v18, &qword_1ECB53DC0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v74;
      *v74 = *v18;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v26 = v69;
      sub_1D9BA45A0(v18, v69, type metadata accessor for ServerSearchResult);
      v27 = (v26 + *(v14 + 24));
      v29 = *v27;
      v28 = v27[1];
      swift_beginAccess();
      *(a4 + 144) = v29;
      *(a4 + 152) = v28;

      v30 = v72;
      swift_beginAccess();
      v31 = *(a4 + 160);
      v32 = *(a4 + 128);
      v96 = *(a4 + 144);
      v97 = v31;
      v33 = *(a4 + 160);
      v98 = *(a4 + 176);
      v34 = *(a4 + 96);
      v35 = *(a4 + 64);
      v92 = *(a4 + 80);
      v93 = v34;
      v36 = *(a4 + 96);
      v37 = *(a4 + 128);
      v94 = *(a4 + 112);
      v95 = v37;
      v38 = *(a4 + 32);
      v89[0] = *(a4 + 16);
      v89[1] = v38;
      v39 = *(a4 + 64);
      v41 = *(a4 + 16);
      v40 = *(a4 + 32);
      v90 = *(a4 + 48);
      v91 = v39;
      v42 = *(a4 + 176);
      v86 = v33;
      v87 = v42;
      v81 = v92;
      v82 = v36;
      v83 = v94;
      v84 = v32;
      v85 = v96;
      v77 = v41;
      v78 = v40;
      v99 = *(a4 + 192);
      v88 = *(a4 + 192);
      v79 = v90;
      v80 = v35;
      v43 = *(v30 + 64);
      sub_1D99BB40C(v89, &v100);
      v25 = v74;
      sub_1D9B3BD0C(v26, &v77, v43, v74);
      v108 = v85;
      v109 = v86;
      v110 = v87;
      v111 = v88;
      v104 = v81;
      v105 = v82;
      v106 = v83;
      v107 = v84;
      v100 = v77;
      v101 = v78;
      v102 = v79;
      v103 = v80;
      sub_1D9A0009C(&v100);
      sub_1D9BA4608(v26, type metadata accessor for ServerSearchResult);
    }

    v44 = v76;
    if (v75)
    {
      v45 = v70;
      sub_1D99AB100(v25, v70, &unk_1ECB53570);
      v46 = v71;
      sub_1D99AB100(v44, v71, &unk_1ECB51B10);
      sub_1D9BDB568(v45, v46, v89);
      v115[0] = *(v89 + 8);
      v114 = *(&v89[1] + 1);
      v47 = objc_opt_self();
      *(&v101 + 1) = &type metadata for ResultEvent;
      *&v102 = &off_1F55352A8;
      v48 = swift_allocObject();
      *&v100 = v48;
      v49 = v89[1];
      *(v48 + 16) = v89[0];
      *(v48 + 32) = v49;
      *(v48 + 48) = v90;
      v50 = type metadata accessor for AnyVIAEvent();
      v51 = objc_allocWithZone(v50);
      sub_1D99A17C8(&v100, v51 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      sub_1D9B1734C(v115, &v77);
      sub_1D99AB100(&v114, &v77, &qword_1ECB53400);
      sub_1D9B1734C(v115, &v77);
      sub_1D99AB100(&v114, &v77, &qword_1ECB53400);
      v113.receiver = v51;
      v113.super_class = v50;
      v52 = objc_msgSendSuper2(&v113, sel_init);
      __swift_destroy_boxed_opaque_existential_0Tm(&v100);
      v75 = v47;
      [v47 logEvent_];

      sub_1D9B172F8(v115);
      sub_1D99A6AE0(&v114, &qword_1ECB53400);
      v53 = v67[0];
      if (v67[0])
      {
        swift_beginAccess();
        v54 = *(v53 + 16);

        v55 = sub_1D99A7220(v44, 1, v54);
      }

      else
      {
        v55 = MEMORY[0x1E69E7CC0];
      }

      v73 = v55;
      v56 = *(v55 + 16);
      if (v56)
      {
        v57 = (v73 + 64);
        do
        {
          v76 = v56;
          v58 = *(v57 - 4);
          v59 = *(v57 - 3);
          v61 = *(v57 - 2);
          v60 = *(v57 - 1);
          v62 = *v57;
          v57 += 40;
          *(&v101 + 1) = &type metadata for DurationEvent;
          *&v102 = &off_1F552D1E8;
          v63 = swift_allocObject();
          *&v100 = v63;
          *(v63 + 16) = v58;
          *(v63 + 24) = v59;
          *(v63 + 32) = v61;
          *(v63 + 40) = v60;
          *(v63 + 48) = v62;
          v64 = objc_allocWithZone(v50);
          sub_1D99A17C8(&v100, v64 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
          v112.receiver = v64;
          v112.super_class = v50;
          swift_bridgeObjectRetain_n();
          v65 = v60;
          v66 = objc_msgSendSuper2(&v112, &selRef_setFont_size_stop_reporting_threshold_);
          __swift_destroy_boxed_opaque_existential_0Tm(&v100);
          [v75 logEvent_];

          v56 = v76 - 1;
        }

        while (v76 != 1);
      }

      sub_1D9B172F8(v115);
      sub_1D99A6AE0(&v114, &qword_1ECB53400);
      v25 = v74;
    }

    v68(v25);

    return sub_1D99A6AE0(v25, &unk_1ECB53570);
  }

  return result;
}

uint64_t sub_1D9B9C3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(void *), uint64_t a9)
{
  LODWORD(v75) = a7;
  v76 = a6;
  v73 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = v67 - v13;
  v14 = type metadata accessor for ServerSearchResult();
  MEMORY[0x1EEE9AC00](v14);
  v69 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v67 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v19);
  v70 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v74 = (v67 - v22);
  sub_1D9AFCCA4();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v72 = result;
    v68 = a8;
    v67[0] = a5;
    if (a5)
    {
      swift_beginAccess();
      v24 = *(a5 + 16);
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    v67[1] = a9;
    swift_beginAccess();
    sub_1D9A19294(v24);
    swift_endAccess();
    sub_1D99AB100(v73, v18, &qword_1ECB53DC0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v74;
      *v74 = *v18;
      swift_storeEnumTagMultiPayload();
      v26 = v76;
      if ((v75 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v27 = v69;
      sub_1D9BA45A0(v18, v69, type metadata accessor for ServerSearchResult);
      v28 = (v27 + *(v14 + 24));
      v30 = *v28;
      v29 = v28[1];
      swift_beginAccess();
      *(a4 + 144) = v30;
      *(a4 + 152) = v29;

      v31 = v72;
      swift_beginAccess();
      v32 = *(a4 + 160);
      v33 = *(a4 + 128);
      v96 = *(a4 + 144);
      v97 = v32;
      v34 = *(a4 + 160);
      v98 = *(a4 + 176);
      v35 = *(a4 + 96);
      v36 = *(a4 + 64);
      v92 = *(a4 + 80);
      v93 = v35;
      v37 = *(a4 + 96);
      v38 = *(a4 + 128);
      v94 = *(a4 + 112);
      v95 = v38;
      v39 = *(a4 + 32);
      v89[0] = *(a4 + 16);
      v89[1] = v39;
      v40 = *(a4 + 64);
      v42 = *(a4 + 16);
      v41 = *(a4 + 32);
      v90 = *(a4 + 48);
      v91 = v40;
      v43 = *(a4 + 176);
      v86 = v34;
      v87 = v43;
      v81 = v92;
      v82 = v37;
      v83 = v94;
      v84 = v33;
      v85 = v96;
      v77 = v42;
      v78 = v41;
      v99 = *(a4 + 192);
      v88 = *(a4 + 192);
      v79 = v90;
      v80 = v36;
      v44 = *(v31 + 64);
      sub_1D99BB40C(v89, &v100);
      v25 = v74;
      v26 = v76;
      sub_1D9B3CCF0(v27, &v77, v44, v74);
      v108 = v85;
      v109 = v86;
      v110 = v87;
      v111 = v88;
      v104 = v81;
      v105 = v82;
      v106 = v83;
      v107 = v84;
      v100 = v77;
      v101 = v78;
      v102 = v79;
      v103 = v80;
      sub_1D9A0009C(&v100);
      sub_1D9BA4608(v27, type metadata accessor for ServerSearchResult);
      if ((v75 & 1) == 0)
      {
LABEL_16:
        v68(v25);

        return sub_1D99A6AE0(v25, &unk_1ECB53570);
      }
    }

    v45 = v70;
    sub_1D99AB100(v25, v70, &unk_1ECB53570);
    v46 = v71;
    sub_1D99AB100(v26, v71, &unk_1ECB51B10);
    sub_1D9BDB568(v45, v46, v89);
    v115[0] = *(v89 + 8);
    v114 = *(&v89[1] + 1);
    v47 = objc_opt_self();
    *(&v101 + 1) = &type metadata for ResultEvent;
    *&v102 = &off_1F55352A8;
    v48 = swift_allocObject();
    *&v100 = v48;
    v49 = v89[1];
    *(v48 + 16) = v89[0];
    *(v48 + 32) = v49;
    *(v48 + 48) = v90;
    v50 = type metadata accessor for AnyVIAEvent();
    v51 = objc_allocWithZone(v50);
    sub_1D99A17C8(&v100, v51 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    sub_1D9B1734C(v115, &v77);
    sub_1D99AB100(&v114, &v77, &qword_1ECB53400);
    sub_1D9B1734C(v115, &v77);
    sub_1D99AB100(&v114, &v77, &qword_1ECB53400);
    v113.receiver = v51;
    v113.super_class = v50;
    v52 = objc_msgSendSuper2(&v113, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(&v100);
    v75 = v47;
    [v47 logEvent_];

    sub_1D9B172F8(v115);
    sub_1D99A6AE0(&v114, &qword_1ECB53400);
    v53 = v67[0];
    if (v67[0])
    {
      swift_beginAccess();
      v54 = *(v53 + 16);

      v55 = sub_1D99A7220(v26, 1, v54);
    }

    else
    {
      v55 = MEMORY[0x1E69E7CC0];
    }

    v73 = v55;
    v56 = *(v55 + 16);
    if (v56)
    {
      v57 = (v73 + 64);
      do
      {
        v76 = v56;
        v58 = *(v57 - 4);
        v59 = *(v57 - 3);
        v61 = *(v57 - 2);
        v60 = *(v57 - 1);
        v62 = *v57;
        v57 += 40;
        *(&v101 + 1) = &type metadata for DurationEvent;
        *&v102 = &off_1F552D1E8;
        v63 = swift_allocObject();
        *&v100 = v63;
        *(v63 + 16) = v58;
        *(v63 + 24) = v59;
        *(v63 + 32) = v61;
        *(v63 + 40) = v60;
        *(v63 + 48) = v62;
        v64 = objc_allocWithZone(v50);
        sub_1D99A17C8(&v100, v64 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
        v112.receiver = v64;
        v112.super_class = v50;
        swift_bridgeObjectRetain_n();
        v65 = v60;
        v66 = objc_msgSendSuper2(&v112, &selRef_setFont_size_stop_reporting_threshold_);
        __swift_destroy_boxed_opaque_existential_0Tm(&v100);
        [v75 logEvent_];

        v56 = v76 - 1;
      }

      while (v76 != 1);
    }

    sub_1D9B172F8(v115);
    sub_1D99A6AE0(&v114, &qword_1ECB53400);
    v25 = v74;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1D9B9CB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v55 = a8;
  v56 = a7;
  v52 = a6;
  v54 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = &v49 - v11;
  v12 = type metadata accessor for ServerSearchResult();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v49 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v53 = (&v49 - v21);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1D9AFCCA4();
  }

  v23 = Strong;
  sub_1D99AB100(a1, v17, &qword_1ECB53DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v53;
    *v53 = *v17;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1D9BA45A0(v17, v14, type metadata accessor for ServerSearchResult);
    v26 = &v14[*(v12 + 24)];
    v28 = *v26;
    v27 = *(v26 + 1);
    swift_beginAccess();
    *(a4 + 144) = v28;
    *(a4 + 152) = v27;

    swift_beginAccess();
    v29 = *(a4 + 160);
    v30 = *(a4 + 128);
    v76 = *(a4 + 144);
    v77 = v29;
    v31 = *(a4 + 160);
    v78 = *(a4 + 176);
    v32 = *(a4 + 96);
    v33 = *(a4 + 64);
    v72 = *(a4 + 80);
    v73 = v32;
    v34 = *(a4 + 96);
    v35 = *(a4 + 128);
    v74 = *(a4 + 112);
    v75 = v35;
    v36 = *(a4 + 32);
    v69[0] = *(a4 + 16);
    v69[1] = v36;
    v37 = *(a4 + 64);
    v39 = *(a4 + 16);
    v38 = *(a4 + 32);
    v70 = *(a4 + 48);
    v71 = v37;
    v65 = v76;
    v66 = v31;
    v67 = *(a4 + 176);
    v61 = v72;
    v62 = v34;
    v63 = v74;
    v64 = v30;
    v57 = v39;
    v58 = v38;
    v79 = *(a4 + 192);
    v68 = *(a4 + 192);
    v59 = v70;
    v60 = v33;
    v40 = *(v23 + 64);
    sub_1D99BB40C(v69, &v80);
    v24 = v53;
    sub_1D9B3BD0C(v14, &v57, v40, v53);
    v88 = v65;
    v89 = v66;
    v90 = v67;
    v91 = v68;
    v84 = v61;
    v85 = v62;
    v86 = v63;
    v87 = v64;
    v80 = v57;
    v81 = v58;
    v82 = v59;
    v83 = v60;
    sub_1D9A0009C(&v80);
    sub_1D9BA4608(v14, type metadata accessor for ServerSearchResult);
  }

  sub_1D9AFCCA4();
  if (v54)
  {
    v41 = v50;
    sub_1D99AB100(v24, v50, &unk_1ECB53570);
    v42 = v51;
    sub_1D99AB100(v52, v51, &unk_1ECB51B10);
    sub_1D9BDB568(v41, v42, v69);
    v43 = objc_opt_self();
    *(&v81 + 1) = &type metadata for ResultEvent;
    *&v82 = &off_1F55352A8;
    v44 = swift_allocObject();
    *&v80 = v44;
    v57 = *(v69 + 8);
    v94[0] = *(&v69[1] + 1);
    v45 = v69[1];
    *(v44 + 16) = v69[0];
    *(v44 + 32) = v45;
    *(v44 + 48) = v70;
    v46 = type metadata accessor for AnyVIAEvent();
    v47 = objc_allocWithZone(v46);
    sub_1D99A17C8(&v80, v47 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    sub_1D9B1734C(&v57, v93);
    sub_1D99AB100(v94, v93, &qword_1ECB53400);
    v92.receiver = v47;
    v92.super_class = v46;
    v48 = objc_msgSendSuper2(&v92, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(&v80);
    [v43 logEvent_];

    sub_1D9B172F8(&v57);
    sub_1D99A6AE0(v94, &qword_1ECB53400);
  }

  v56(v24);

  return sub_1D99A6AE0(v24, &unk_1ECB53570);
}

uint64_t sub_1D9B9D084()
{

  return v0;
}

uint64_t sub_1D9B9D0D4()
{
  sub_1D9B9D084();

  return swift_deallocClassInstance();
}

uint64_t sub_1D9B9D12C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D9AD9A18;

  return sub_1D9B9BB80(a1, v4, v5, v6, v7, v8);
}

void *sub_1D9B9D1F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53410);
  v2 = *v0;
  v3 = sub_1D9C7E3AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9B9D350()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DA0);
  v2 = *v0;
  v3 = sub_1D9C7E3AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9B9D490()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53408);
  v2 = *v0;
  v3 = sub_1D9C7E3AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9B9D5D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DB0);
  v2 = *v0;
  v3 = sub_1D9C7E3AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9B9D710()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DA8);
  v2 = *v0;
  v3 = sub_1D9C7E3AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v4 + 48) + v17;
      *v20 = *v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D9B9D868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53D98);
  v2 = *v0;
  v3 = sub_1D9C7E3AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 4) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 4);
      v20 = *(v4 + 48) + v17;
      *v20 = *v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D9B9D9BC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1D9B9DAC0(*(*(v2 + 48) + (v10 | (v9 << 6))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

unint64_t sub_1D9B9DAC0@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  sub_1D9C7E8DC();
  sub_1D9A15C94(a1);
  sub_1D9C7DD6C();

  result = sub_1D9C7E93C();
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_89:
    *a2 = 27;
    return result;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE300000000000000;
    v12 = 7631457;
    switch(*(*(v6 + 48) + v9))
    {
      case 1:
        v11 = 0xE600000000000000;
        v12 = 0x65727574616ELL;
        break;
      case 2:
        v11 = 0xE800000000000000;
        v12 = 0x6B72616D646E616CLL;
        break;
      case 3:
        v12 = 0x4C6C61727574616ELL;
        v11 = 0xEF6B72616D646E61;
        break;
      case 4:
        v11 = 0xE500000000000000;
        v12 = 0x616964656DLL;
        break;
      case 5:
        v11 = 0xE400000000000000;
        v12 = 1802465122;
        break;
      case 6:
        v11 = 0xE500000000000000;
        v12 = 0x6D75626C61;
        break;
      case 7:
        v11 = 0xE400000000000000;
        v12 = 1937006947;
        break;
      case 8:
        v11 = 0xE400000000000000;
        v12 = 1936158564;
        break;
      case 9:
        v11 = 0xE700000000000000;
        v13 = 1835626081;
        goto LABEL_22;
      case 0xA:
        v11 = 0xE500000000000000;
        v12 = 0x7364726962;
        break;
      case 0xB:
        v11 = 0xE700000000000000;
        v12 = 0x73746365736E69;
        break;
      case 0xC:
        v11 = 0xE800000000000000;
        v12 = 0x73656C6974706572;
        break;
      case 0xD:
        v11 = 0xE700000000000000;
        v13 = 1835884909;
LABEL_22:
        v12 = v13 | 0x736C6100000000;
        break;
      case 0xE:
        v12 = 0xD000000000000010;
        v11 = 0x80000001D9CA2910;
        break;
      case 0xF:
        v11 = 0xE700000000000000;
        v12 = 0x6C657261707061;
        break;
      case 0x10:
        v12 = 0x726F737365636361;
        v11 = 0xEB00000000736569;
        break;
      case 0x11:
        v11 = 0xE400000000000000;
        v12 = 1685024614;
        break;
      case 0x12:
        v12 = 0x6F726665726F7473;
        v11 = 0xEA0000000000746ELL;
        break;
      case 0x13:
        v14 = 1852270963;
        goto LABEL_29;
      case 0x14:
        v12 = 0xD000000000000011;
        v11 = 0x80000001D9CA2950;
        break;
      case 0x15:
        v14 = 1869903201;
LABEL_29:
        v12 = v14 | 0x626D795300000000;
        v11 = 0xEA00000000006C6FLL;
        break;
      case 0x16:
        v12 = 0x676F4C646E617262;
        v11 = 0xEF6C6F626D79536FLL;
        break;
      case 0x17:
        v11 = 0xE700000000000000;
        v12 = 0x65646F63726162;
        break;
      case 0x18:
        v12 = 0x727574706C756373;
        v11 = 0xE900000000000065;
        break;
      case 0x19:
        v11 = 0xE700000000000000;
        v12 = 0x656E696C796B73;
        break;
      case 0x1A:
        v11 = 0xE800000000000000;
        v12 = 0x44327463656A626FLL;
        break;
      default:
        break;
    }

    v15 = 0xE300000000000000;
    v16 = 7631457;
    switch(a1)
    {
      case 1:
        v15 = 0xE600000000000000;
        if (v12 == 0x65727574616ELL)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      case 2:
        v15 = 0xE800000000000000;
        if (v12 != 0x6B72616D646E616CLL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 3:
        v15 = 0xEF6B72616D646E61;
        if (v12 != 0x4C6C61727574616ELL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 4:
        v15 = 0xE500000000000000;
        if (v12 != 0x616964656DLL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 5:
        v15 = 0xE400000000000000;
        if (v12 != 1802465122)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 6:
        v15 = 0xE500000000000000;
        if (v12 != 0x6D75626C61)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 7:
        v15 = 0xE400000000000000;
        if (v12 != 1937006947)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 8:
        v15 = 0xE400000000000000;
        if (v12 != 1936158564)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 9:
        v15 = 0xE700000000000000;
        v18 = 1835626081;
        goto LABEL_65;
      case 10:
        v15 = 0xE500000000000000;
        if (v12 != 0x7364726962)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 11:
        v15 = 0xE700000000000000;
        v17 = 0x746365736E69;
        goto LABEL_66;
      case 12:
        v15 = 0xE800000000000000;
        if (v12 != 0x73656C6974706572)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 13:
        v15 = 0xE700000000000000;
        v18 = 1835884909;
LABEL_65:
        v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_66:
        if (v12 != (v17 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 14:
        v15 = 0x80000001D9CA2910;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 15:
        v15 = 0xE700000000000000;
        if (v12 != 0x6C657261707061)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 16:
        v15 = 0xEB00000000736569;
        if (v12 != 0x726F737365636361)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 17:
        v15 = 0xE400000000000000;
        if (v12 != 1685024614)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 18:
        v15 = 0xEA0000000000746ELL;
        if (v12 != 0x6F726665726F7473)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 19:
        v19 = 1852270963;
        goto LABEL_79;
      case 20:
        v15 = 0x80000001D9CA2950;
        if (v12 != 0xD000000000000011)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 21:
        v19 = 1869903201;
LABEL_79:
        v15 = 0xEA00000000006C6FLL;
        if (v12 != (v19 | 0x626D795300000000))
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 22:
        v15 = 0xEF6C6F626D79536FLL;
        if (v12 != 0x676F4C646E617262)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 23:
        v15 = 0xE700000000000000;
        v16 = 0x65646F63726162;
        goto LABEL_82;
      case 24:
        v15 = 0xE900000000000065;
        if (v12 != 0x727574706C756373)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 25:
        v15 = 0xE700000000000000;
        if (v12 != 0x656E696C796B73)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      case 26:
        v15 = 0xE800000000000000;
        if (v12 != 0x44327463656A626FLL)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      default:
LABEL_82:
        if (v12 != v16)
        {
          goto LABEL_84;
        }

LABEL_83:
        if (v11 != v15)
        {
LABEL_84:
          v20 = sub_1D9C7E7DC();

          if (v20)
          {
            goto LABEL_91;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_89;
          }

          continue;
        }

LABEL_91:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v3;
        v23 = *v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D9B9D490();
          v22 = v23;
        }

        *a2 = *(*(v22 + 48) + v9);
        result = sub_1D9B9E200(v9);
        *v3 = v23;
        return result;
    }
  }
}

unint64_t sub_1D9B9E200(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D9C7E36C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D9C7E8DC();
        sub_1D9C7DD6C();

        v10 = sub_1D9C7E93C() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D9B9E654(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA73E230](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D9B91DE4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D9B9E6EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D9ABD044();
  result = MEMORY[0x1DA73E230](v2, &type metadata for VisualDomain, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1D9B92014(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_1D9B9E760(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      v3 = *(a2 + 24);
      v5 = *a2;
      v4 = *(a2 + 8);
      v6 = *(a2 + 32);
      v7 = objc_allocWithZone(MEMORY[0x1E69CA058]);
      sub_1D9BA3E60(v5, v4, v2, v3);

      v8 = v3;
      v9 = [v7 initWithStartSearch_];
      v10 = objc_opt_self();
      v18[3] = &type metadata for LocalSearchEndEvent;
      v18[4] = &off_1F5535278;
      v11 = swift_allocObject();
      v18[0] = v11;
      *(v11 + 16) = v9;
      *(v11 + 24) = v5;
      *(v11 + 32) = v4;
      *(v11 + 40) = v2;
      *(v11 + 48) = v8;
      *(v11 + 56) = v6 & 1;
      *(v11 + 57) = 0;
      v12 = type metadata accessor for AnyVIAEvent();
      v13 = objc_allocWithZone(v12);
      sub_1D99A17C8(v18, v13 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      v17.receiver = v13;
      v17.super_class = v12;
      v14 = v9;

      v15 = v8;
      v16 = objc_msgSendSuper2(&v17, sel_init);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      [v10 logEvent_];

      swift_bridgeObjectRelease_n();
    }
  }
}

uint64_t sub_1D9B9E8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v163 = a6;
  v169 = a5;
  v179 = a4;
  v180 = a3;
  v184 = a1;
  v13 = sub_1D9C7D8DC();
  v161 = *(v13 - 8);
  v162 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v160 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v185 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v242 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v183 = &v150 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v158 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v166 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v175 = &v150 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v174 = &v150 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v164 = &v150 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v165 = &v150 - v28;
  v159 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v178 = &v150 - v31;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v167);
  v168 = (&v150 - v32);
  v33 = sub_1D9C7DA7C();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v150 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = swift_allocObject();
  v172 = a8;
  *(v37 + 16) = a8;
  *(v37 + 24) = a9;
  v38 = *(a10 + 144);
  *(v37 + 160) = *(a10 + 128);
  *(v37 + 176) = v38;
  *(v37 + 192) = *(a10 + 160);
  *(v37 + 208) = *(a10 + 176);
  v39 = *(a10 + 80);
  *(v37 + 96) = *(a10 + 64);
  *(v37 + 112) = v39;
  v40 = *(a10 + 112);
  *(v37 + 128) = *(a10 + 96);
  *(v37 + 144) = v40;
  v41 = *(a10 + 16);
  *(v37 + 32) = *a10;
  *(v37 + 48) = v41;
  v42 = *(a10 + 48);
  *(v37 + 64) = *(a10 + 32);
  *(v37 + 80) = v42;
  v181 = v37;
  v43 = *(a2 + 144);
  v238 = *(a2 + 128);
  v239 = v43;
  v240 = *(a2 + 160);
  v241 = *(a2 + 176);
  v44 = *(a2 + 80);
  v234 = *(a2 + 64);
  v235 = v44;
  v45 = *(a2 + 112);
  v236 = *(a2 + 96);
  v237 = v45;
  v46 = *(a2 + 16);
  v230 = *a2;
  v231 = v46;
  v47 = *(a2 + 48);
  v232 = *(a2 + 32);
  v233 = v47;
  v48 = *(a7 + 56);
  *v36 = v48;
  v49 = *(v34 + 104);
  LODWORD(v177) = *MEMORY[0x1E69E8020];
  v176 = v49;
  (v49)(v36);
  v170 = a9;

  v171 = a10;
  sub_1D99BB40C(a10, &v209);
  v50 = v48;
  LOBYTE(v48) = sub_1D9C7DA9C();
  v51 = *(v34 + 8);
  result = v51(v36, v33);
  if ((v48 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v173 = v50;
  v53 = v182;
  sub_1D9A723CC(v184);
  if (v53)
  {
  }

  v153 = v51;
  v157 = a7;
  v182 = 0;
  v54 = sub_1D9B9E6EC(&unk_1F552A988);
  v200 = v238;
  v201 = v239;
  v202 = v240;
  v203 = v241;
  v196 = v234;
  v197 = v235;
  v198 = v236;
  v199 = v237;
  v192 = v230;
  v193 = v231;
  v194 = v232;
  v195 = v233;
  sub_1D9B69C68(v54, v204);

  v217 = v205;
  v218 = v206;
  v219 = v207;
  v220 = v208;
  v213 = v204[4];
  v214 = v204[5];
  v215 = v204[6];
  v216 = v204[7];
  v209 = v204[0];
  v210 = v204[1];
  v211 = v204[2];
  v212 = v204[3];
  v55 = *(sub_1D9B67A68() + 16);

  if (!v55)
  {
    sub_1D9AFCCA4();
    v62 = type metadata accessor for VisualSearchResultInternal(0);
    v63 = *(v62 + 24);
    v64 = sub_1D9C7CBEC();
    v65 = v168;
    (*(*(v64 - 8) + 56))(v168 + v63, 1, 1, v64);
    v66 = *(v62 + 28);
    v67 = sub_1D9C7CF3C();
    (*(*(v67 - 8) + 56))(v65 + v66, 1, 1, v67);
    v68 = v218;
    *(v65 + 128) = v217;
    *(v65 + 144) = v68;
    *(v65 + 160) = v219;
    v69 = v220;
    v70 = v214;
    *(v65 + 64) = v213;
    *(v65 + 80) = v70;
    v71 = v216;
    *(v65 + 96) = v215;
    *(v65 + 112) = v71;
    v72 = v210;
    *v65 = v209;
    *(v65 + 16) = v72;
    v73 = v212;
    *(v65 + 32) = v211;
    *(v65 + 48) = v73;
    v74 = MEMORY[0x1E69E7CC0];
    *(v65 + 176) = v69;
    *(v65 + 184) = v74;
    swift_storeEnumTagMultiPayload();
    sub_1D9B97D94(v65, v172, v170, v171, "search(): result.userFeedbackIntermediateResults = %s");
    sub_1D99A6AE0(v65, &unk_1ECB53570);
  }

  v56 = *(v157 + 24);

  sub_1D9C7D0BC();

  v57 = v178;
  sub_1D99AB100(v180, v178, &unk_1ECB51B10);
  Context = type metadata accessor for VisualQueryContext();
  v59 = *(Context - 8);
  v60 = Context;
  v154 = *(v59 + 48);
  v156 = v59 + 48;
  v61 = v154(v57, 1);
  v152 = v56;
  v155 = v60;
  if (v61 == 1)
  {
    sub_1D99A6AE0(v57, &unk_1ECB51B10);
  }

  else
  {
    v75 = *(v57 + 56);
    sub_1D9BA4608(v57, type metadata accessor for VisualQueryContext);
    if (v75 == 3)
    {
      v76 = 0;
      goto LABEL_12;
    }
  }

  v77 = v166;
  sub_1D99AB100(v180, v166, &unk_1ECB51B10);
  if ((v154)(v77, 1, v60) == 1)
  {
    sub_1D99A6AE0(v77, &unk_1ECB51B10);
    v76 = 1;
  }

  else
  {
    v78 = v77;
    v79 = v77[7];
    sub_1D9BA4608(v78, type metadata accessor for VisualQueryContext);
    v76 = v79 != 5;
  }

LABEL_12:
  v80 = v177;
  v81 = v176;
  v82 = v153;
  v83 = v173;
  *v36 = v173;
  v81(v36, v80, v33);
  v84 = v83;
  LOBYTE(v83) = sub_1D9C7DA9C();
  result = v82(v36, v33);
  if (v83)
  {
    LOBYTE(v189) = 0;
    memset(v188, 0, sizeof(v188));
    LODWORD(v178) = v76;
    v85 = v180;
    if (v76)
    {
      v86 = v165;
      sub_1D99AB100(v180, v165, &unk_1ECB51B10);
      v205 = v217;
      v206 = v218;
      v207 = v219;
      v208 = v220;
      v204[4] = v213;
      v204[5] = v214;
      v204[6] = v215;
      v204[7] = v216;
      v204[0] = v209;
      v204[1] = v210;
      v204[2] = v211;
      v204[3] = v212;
      sub_1D99BB40C(&v209, &v192);
      sub_1D9BDB0A4(v86, v204, v221);
      v229 = *(v221 + 8);
      v228 = *(&v221[1] + 1);
      v227 = *&v221[2];
      v87 = objc_opt_self();
      v153 = v87;
      *(&v204[1] + 1) = &type metadata for EngagedRegionOfInterestEvent;
      *&v204[2] = &off_1F5535308;
      v88 = swift_allocObject();
      *&v204[0] = v88;
      v89 = v221[1];
      v88[1] = v221[0];
      v88[2] = v89;
      *(v88 + 41) = *(&v221[1] + 9);
      v90 = type metadata accessor for AnyVIAEvent();
      v151 = v90;
      v91 = objc_allocWithZone(v90);
      sub_1D99A17C8(v204, v91 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      sub_1D9B1734C(&v229, &v192);
      sub_1D99AB100(&v228, &v192, &qword_1ECB53DB8);
      sub_1D99AB100(&v227, &v192, &qword_1ECB53400);
      sub_1D9B1734C(&v229, &v192);
      sub_1D99AB100(&v228, &v192, &qword_1ECB53DB8);
      sub_1D99AB100(&v227, &v192, &qword_1ECB53400);
      v187.receiver = v91;
      v187.super_class = v90;
      v92 = objc_msgSendSuper2(&v187, sel_init);
      __swift_destroy_boxed_opaque_existential_0Tm(v204);
      [v87 logEvent_];

      sub_1D9B172F8(&v229);
      sub_1D99A6AE0(&v228, &qword_1ECB53DB8);
      sub_1D99A6AE0(&v227, &qword_1ECB53400);
      sub_1D99AB100(v180, v86, &unk_1ECB51B10);
      v93 = v164;
      sub_1D99AB100(v86, v164, &unk_1ECB51B10);
      sub_1D9A9499C(v93, 0, &v222);
      v94 = v222;
      v95 = v223;
      v96 = v224;
      v97 = v225;
      sub_1D99A6AE0(v86, &unk_1ECB51B10);
      v226 = v223;
      *&v188[0] = v94;
      *(v188 + 8) = v95;
      *(&v188[1] + 1) = v96;
      LOBYTE(v189) = v97;
      *(&v204[1] + 1) = &type metadata for LocalSearchStartEvent;
      *&v204[2] = &off_1F55352D8;
      v98 = swift_allocObject();
      *&v204[0] = v98;
      v176 = v95;
      v177 = v94;
      *(v98 + 16) = v94;
      *(v98 + 24) = v95;
      v173 = *(&v95 + 1);
      *(v98 + 32) = *(&v95 + 1);
      *(v98 + 40) = v96;
      LODWORD(v164) = v97;
      *(v98 + 48) = v97;
      v99 = v151;
      v100 = objc_allocWithZone(v151);
      sub_1D99A17C8(v204, v100 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      sub_1D9B1734C(&v226, &v192);
      v166 = v96;
      v101 = v96;
      sub_1D9B1734C(&v226, &v192);
      v186.receiver = v100;
      v186.super_class = v99;
      v85 = v180;
      v102 = v101;
      v103 = objc_msgSendSuper2(&v186, sel_init);
      __swift_destroy_boxed_opaque_existential_0Tm(v204);
      [v153 logEvent_];

      sub_1D9B172F8(&v229);
      sub_1D99A6AE0(&v228, &qword_1ECB53DB8);
      sub_1D99A6AE0(&v227, &qword_1ECB53400);
      sub_1D9B172F8(&v226);
    }

    else
    {
      v176 = 0;
      v177 = 0;
      v173 = 0;
      v166 = 0;
      LODWORD(v164) = 0;
    }

    v104 = v184;
    v106 = v174;
    v105 = v175;
    v107 = v154;
    v108 = *(v157 + 16);
    sub_1D99AB100(v85, v174, &unk_1ECB51B10);
    if (v107(v106, 1, v155) == 1)
    {
      sub_1D99A6AE0(v106, &unk_1ECB51B10);
      v109 = 0;
    }

    else
    {
      v109 = *(v106 + *(v155 + 48));
      swift_unknownObjectRetain();
      sub_1D9BA4608(v106, type metadata accessor for VisualQueryContext);
    }

    sub_1D99AB100(v85, v105, &unk_1ECB51B10);
    if (v107(v105, 1, v155) == 1)
    {
      sub_1D99A6AE0(v105, &unk_1ECB51B10);
      v110 = 0;
    }

    else
    {
      v110 = *(v105 + 56);
      sub_1D9BA4608(v105, type metadata accessor for VisualQueryContext);
    }

    v111 = swift_allocObject();
    v112 = *(v108 + 16);
    sub_1D99A17C8(v104, v204);
    v113 = *(v108 + 24);
    type metadata accessor for SignalsExtractionProcessor();
    v114 = swift_allocObject();

    *(v114 + 104) = sub_1D9A43DE4(MEMORY[0x1E69E7CC0]);
    *(v114 + 112) = 0u;
    *(v114 + 128) = 0u;
    *(v114 + 144) = 0u;
    *(v114 + 40) = v112;
    sub_1D9979B9C(v204, v114 + 48);
    type metadata accessor for TextDetectionRequestFactory();
    *(v114 + 16) = swift_allocObject();
    type metadata accessor for BarcodeDetectionRequestFactory();
    *(v114 + 24) = swift_allocObject();
    *(v114 + 88) = v113;
    type metadata accessor for ImageFingerprintRequestFactory();
    v115 = swift_allocObject();
    *(v115 + 16) = v112;
    *(v114 + 32) = v115;
    *(v114 + 96) = v109;
    v205 = v217;
    v206 = v218;
    v207 = v219;
    v208 = v220;
    v204[4] = v213;
    v204[5] = v214;
    v204[6] = v215;
    v204[7] = v216;
    v204[0] = v209;
    v204[1] = v210;
    v204[2] = v211;
    v204[3] = v212;
    swift_unknownObjectRetain();

    v116 = v182;
    sub_1D99B54E0(v204, v179, 2, 1, 0, v110, 0, v111 + 16);
    if (v116)
    {

      swift_unknownObjectRelease();
      sub_1D9B9E760(v178, v188);
      sub_1D9A0009C(&v209);
      sub_1D9BA3E1C(v177, v176, v173, v166);
      swift_deallocUninitializedObject();
    }

    v182 = 0;

    swift_unknownObjectRelease();
    sub_1D9B9E760(v178, v188);
    sub_1D9A0009C(&v209);
    sub_1D9BA3E1C(v177, v176, v173, v166);
    v184 = v111;
    v117 = *(v111 + 16);
    v118 = *(v117 + 16);

    v119 = MEMORY[0x1E69E7CC0];
    if (!v118)
    {
LABEL_35:

      v127 = v184;
      v128 = *(v184 + 40);
      v188[0] = *(v184 + 24);
      v188[1] = v128;
      v129 = *(v184 + 72);
      v189 = *(v184 + 56);
      v190 = v129;
      v130 = *(v184 + 136);
      v131 = *(v184 + 160);
      *(v204 + 8) = v188[0];
      *(&v204[1] + 8) = v128;
      *(&v204[2] + 8) = v189;
      *(&v204[3] + 8) = v129;
      LOBYTE(v192) = v130;
      *&v204[0] = v119;
      *(&v204[4] + 8) = *(v184 + 88);
      *(&v204[5] + 8) = *(v184 + 104);
      *(&v204[6] + 8) = *(v184 + 120);
      BYTE8(v204[7]) = v130;
      *&v205 = 0;
      *(&v205 + 1) = 0xE000000000000000;
      v206 = v131;
      v207 = 0uLL;
      v208 = MEMORY[0x1E69E7CC0];
      v132 = v163;
      v133 = *&v163[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
      sub_1D99AB100(v188, &v192, &qword_1ECB514D0);
      os_unfair_lock_lock(v133 + 4);
      v134 = v132[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
      os_unfair_lock_unlock(v133 + 4);
      if (v134)
      {
        sub_1D9A0009C(v204);
        v135 = v160;
        static Logger.argos.getter(v160);
        v136 = sub_1D9C7D8BC();
        v137 = sub_1D9C7E09C();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          *v138 = 0;
          _os_log_impl(&dword_1D9962000, v136, v137, "performSearch(): canceled", v138, 2u);
          MEMORY[0x1DA7405F0](v138, -1, -1);
        }

        (*(v161 + 8))(v135, v162);
        sub_1D9A0EEC0();
        v139 = swift_allocError();
        *v140 = 0;
        v141 = v168;
        *v168 = v139;
        swift_storeEnumTagMultiPayload();
        sub_1D9B97D94(v141, v172, v170, v171, "search(): result.userFeedbackIntermediateResults = %s");
        sub_1D99A6AE0(v141, &unk_1ECB53570);
      }

      else
      {
        v200 = v205;
        v201 = v206;
        v202 = v207;
        v203 = v208;
        v196 = v204[4];
        v197 = v204[5];
        v198 = v204[6];
        v199 = v204[7];
        v192 = v204[0];
        v193 = v204[1];
        v194 = v204[2];
        v195 = v204[3];
        v142 = swift_allocObject();
        swift_weakInit();
        v143 = v165;
        sub_1D99AB100(v180, v165, &unk_1ECB51B10);
        v144 = (*(v158 + 80) + 41) & ~*(v158 + 80);
        v145 = (v159 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
        v146 = swift_allocObject();
        v147 = v169;
        *(v146 + 16) = v142;
        *(v146 + 24) = v147;
        *(v146 + 32) = v127;
        *(v146 + 40) = v178;
        sub_1D9A0E758(v143, v146 + v144);
        v148 = (v146 + v145);
        v149 = v181;
        *v148 = sub_1D9BA4510;
        v148[1] = v149;

        sub_1D9BBF3F8(&v192, v180, v179, v132, sub_1D9BA48C8, v146);

        sub_1D9A0009C(v204);
      }
    }

    v120 = 0;
    v121 = v183;
    while (v120 < *(v117 + 16))
    {
      v122 = (*(v185 + 80) + 32) & ~*(v185 + 80);
      v123 = *(v185 + 72);
      sub_1D9BA4538(v117 + v122 + v123 * v120, v121, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (*(*(v121 + 56) + 16))
      {
        sub_1D9BA45A0(v121, v242, type metadata accessor for VisualUnderstanding.ImageRegion);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v191 = v119;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D99FE2B8(0, *(v119 + 16) + 1, 1);
          v119 = v191;
        }

        v126 = *(v119 + 16);
        v125 = *(v119 + 24);
        if (v126 >= v125 >> 1)
        {
          sub_1D99FE2B8(v125 > 1, v126 + 1, 1);
          v119 = v191;
        }

        *(v119 + 16) = v126 + 1;
        result = sub_1D9BA45A0(v242, v119 + v122 + v126 * v123, type metadata accessor for VisualUnderstanding.ImageRegion);
        v121 = v183;
      }

      else
      {
        result = sub_1D9BA4608(v121, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      if (v118 == ++v120)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1D9B9FD38(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v153 = a6;
  v157 = a5;
  v167 = a4;
  v169 = a3;
  v242 = a1;
  v13 = sub_1D9C7D8DC();
  v148 = *(v13 - 8);
  v149 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v147 = v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v150 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v154 = v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v162 = v141 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v161 = v141 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v152 = v141 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v168 = v141 - v24;
  v151 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v165 = v141 - v27;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v155);
  v156 = (v141 - v28);
  v29 = sub_1D9C7DA7C();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = swift_allocObject();
  v160 = a8;
  *(v33 + 16) = a8;
  *(v33 + 24) = a9;
  v34 = *(a10 + 144);
  *(v33 + 160) = *(a10 + 128);
  *(v33 + 176) = v34;
  *(v33 + 192) = *(a10 + 160);
  *(v33 + 208) = *(a10 + 176);
  v35 = *(a10 + 80);
  *(v33 + 96) = *(a10 + 64);
  *(v33 + 112) = v35;
  v36 = *(a10 + 112);
  *(v33 + 128) = *(a10 + 96);
  *(v33 + 144) = v36;
  v37 = *(a10 + 16);
  *(v33 + 32) = *a10;
  *(v33 + 48) = v37;
  v38 = *(a10 + 48);
  *(v33 + 64) = *(a10 + 32);
  *(v33 + 80) = v38;
  v170 = v33;
  v39 = a2[9];
  v238 = a2[8];
  v239 = v39;
  v240 = a2[10];
  v241 = *(a2 + 22);
  v40 = a2[5];
  v234 = a2[4];
  v235 = v40;
  v41 = a2[7];
  v236 = a2[6];
  v237 = v41;
  v42 = a2[1];
  v230 = *a2;
  v231 = v42;
  v43 = a2[3];
  v232 = a2[2];
  v233 = v43;
  v44 = *(a7 + 56);
  *v32 = v44;
  v45 = *(v30 + 104);
  LODWORD(v164) = *MEMORY[0x1E69E8020];
  v163 = v45;
  v45(v32);
  v158 = a9;

  v159 = a10;
  sub_1D99BB40C(a10, &v209);
  v46 = v44;
  LOBYTE(v44) = sub_1D9C7DA9C();
  v47 = *(v30 + 8);
  v166 = v29;
  result = (v47)(v32, v29);
  if ((v44 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v49 = v171;
  sub_1D9A723CC(v242);
  if (v49)
  {
  }

  v144 = v46;
  v171 = 0;
  v50 = sub_1D9B9E6EC(&unk_1F552A9B0);
  v193 = v238;
  v194 = v239;
  v195 = v240;
  v196 = v241;
  v189 = v234;
  v190 = v235;
  v191 = v236;
  v192 = v237;
  v185 = v230;
  v186 = v231;
  v187 = v232;
  v188 = v233;
  sub_1D9B69C68(v50, &v197);

  v217 = v205;
  v218 = v206;
  v219 = v207;
  v220 = v208;
  v213 = v201;
  v214 = v202;
  v215 = v203;
  v216 = v204;
  v209 = v197;
  v210 = v198;
  v211 = v199;
  v212 = v200;
  v51 = *(sub_1D9B67A68() + 16);

  if (!v51)
  {
    sub_1D9AFCCA4();
    v58 = type metadata accessor for VisualSearchResultInternal(0);
    v59 = *(v58 + 24);
    v60 = sub_1D9C7CBEC();
    v61 = v156;
    (*(*(v60 - 8) + 56))(v156 + v59, 1, 1, v60);
    v62 = *(v58 + 28);
    v63 = sub_1D9C7CF3C();
    (*(*(v63 - 8) + 56))(v61 + v62, 1, 1, v63);
    v64 = v218;
    *(v61 + 128) = v217;
    *(v61 + 144) = v64;
    *(v61 + 160) = v219;
    v65 = v220;
    v66 = v214;
    *(v61 + 64) = v213;
    *(v61 + 80) = v66;
    v67 = v216;
    *(v61 + 96) = v215;
    *(v61 + 112) = v67;
    v68 = v210;
    *v61 = v209;
    *(v61 + 16) = v68;
    v69 = v212;
    *(v61 + 32) = v211;
    *(v61 + 48) = v69;
    v70 = MEMORY[0x1E69E7CC0];
    *(v61 + 176) = v65;
    *(v61 + 184) = v70;
    swift_storeEnumTagMultiPayload();
    sub_1D9B97D94(v61, v160, v158, v159, "encryptedSearchPIR(): result.userFeedbackIntermediateResults = %s");
    sub_1D99A6AE0(v61, &unk_1ECB53570);
  }

  v141[1] = *(a7 + 24);
  v142 = v47;

  sub_1D9C7D0BC();

  v52 = v169;
  v53 = v165;
  sub_1D99AB100(v169, v165, &unk_1ECB51B10);
  Context = type metadata accessor for VisualQueryContext();
  v55 = *(Context - 8);
  v56 = *(v55 + 48);
  v145 = v55 + 48;
  v146 = v56;
  v57 = v56(v53, 1, Context);
  v143 = a7;
  if (v57 == 1)
  {
    sub_1D99A6AE0(v53, &unk_1ECB51B10);
  }

  else
  {
    v71 = *(v53 + 56);
    sub_1D9BA4608(v53, type metadata accessor for VisualQueryContext);
    v72 = v71 == 3;
    v52 = v169;
    if (v72)
    {
      v73 = 0;
      goto LABEL_14;
    }
  }

  v74 = v154;
  sub_1D99AB100(v52, v154, &unk_1ECB51B10);
  if (v146(v74, 1, Context) == 1)
  {
    sub_1D99A6AE0(v74, &unk_1ECB51B10);
    v73 = 1;
  }

  else
  {
    v75 = v74[7];
    sub_1D9BA4608(v74, type metadata accessor for VisualQueryContext);
    v73 = v75 != 5;
  }

LABEL_14:
  v76 = v144;
  *v32 = v144;
  v77 = v166;
  v163(v32, v164, v166);
  v78 = v76;
  LOBYTE(v76) = sub_1D9C7DA9C();
  result = (v142)(v32, v77);
  if (v76)
  {
    LOBYTE(v175) = 0;
    memset(v174, 0, sizeof(v174));
    LODWORD(v166) = v73;
    if (v73)
    {
      v79 = v168;
      sub_1D99AB100(v52, v168, &unk_1ECB51B10);
      v205 = v217;
      v206 = v218;
      v207 = v219;
      v208 = v220;
      v201 = v213;
      v202 = v214;
      v203 = v215;
      v204 = v216;
      v197 = v209;
      v198 = v210;
      v199 = v211;
      v200 = v212;
      sub_1D99BB40C(&v209, &v185);
      sub_1D9BDB0A4(v79, &v197, v221);
      v229 = *(v221 + 8);
      v228 = *(&v221[1] + 1);
      v227 = *&v221[2];
      v144 = objc_opt_self();
      *(&v198 + 1) = &type metadata for EngagedRegionOfInterestEvent;
      *&v199 = &off_1F5535308;
      v80 = swift_allocObject();
      *&v197 = v80;
      v81 = v221[1];
      v80[1] = v221[0];
      v80[2] = v81;
      *(v80 + 41) = *(&v221[1] + 9);
      v82 = type metadata accessor for AnyVIAEvent();
      v142 = v82;
      v83 = objc_allocWithZone(v82);
      sub_1D99A17C8(&v197, v83 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      sub_1D9B1734C(&v229, &v185);
      sub_1D99AB100(&v228, &v185, &qword_1ECB53DB8);
      sub_1D99AB100(&v227, &v185, &qword_1ECB53400);
      sub_1D9B1734C(&v229, &v185);
      sub_1D99AB100(&v228, &v185, &qword_1ECB53DB8);
      sub_1D99AB100(&v227, &v185, &qword_1ECB53400);
      v173.receiver = v83;
      v173.super_class = v82;
      v84 = objc_msgSendSuper2(&v173, sel_init);
      __swift_destroy_boxed_opaque_existential_0Tm(&v197);
      [v144 logEvent_];

      sub_1D9B172F8(&v229);
      sub_1D99A6AE0(&v228, &qword_1ECB53DB8);
      sub_1D99A6AE0(&v227, &qword_1ECB53400);
      v85 = v168;
      sub_1D99AB100(v52, v168, &unk_1ECB51B10);
      v86 = v152;
      sub_1D99AB100(v85, v152, &unk_1ECB51B10);
      sub_1D9A9499C(v86, 0, &v222);
      v87 = v222;
      v88 = v223;
      v89 = v224;
      v90 = v52;
      v91 = Context;
      v92 = v225;
      sub_1D99A6AE0(v85, &unk_1ECB51B10);
      v226 = v223;
      *&v174[0] = v87;
      *(v174 + 8) = v88;
      *(&v174[1] + 1) = v89;
      LOBYTE(v175) = v92;
      *(&v198 + 1) = &type metadata for LocalSearchStartEvent;
      *&v199 = &off_1F55352D8;
      v93 = swift_allocObject();
      *&v197 = v93;
      v164 = v88;
      v165 = v87;
      *(v93 + 16) = v87;
      *(v93 + 24) = v88;
      v163 = *(&v88 + 1);
      *(v93 + 32) = *(&v88 + 1);
      *(v93 + 40) = v89;
      LODWORD(v152) = v92;
      *(v93 + 48) = v92;
      Context = v91;
      v52 = v90;
      v94 = v142;
      v95 = objc_allocWithZone(v142);
      sub_1D99A17C8(&v197, v95 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      sub_1D9B1734C(&v226, &v185);
      v154 = v89;
      v96 = v89;
      sub_1D9B1734C(&v226, &v185);
      v172.receiver = v95;
      v172.super_class = v94;
      v97 = v96;
      v98 = objc_msgSendSuper2(&v172, sel_init);
      __swift_destroy_boxed_opaque_existential_0Tm(&v197);
      [v144 logEvent_];

      sub_1D9B172F8(&v229);
      sub_1D99A6AE0(&v228, &qword_1ECB53DB8);
      sub_1D99A6AE0(&v227, &qword_1ECB53400);
      sub_1D9B172F8(&v226);
    }

    else
    {
      v164 = 0;
      v165 = 0;
      v163 = 0;
      v154 = 0;
      LODWORD(v152) = 0;
    }

    v100 = v161;
    v99 = v162;
    v101 = v146;
    v102 = *(v143 + 16);
    sub_1D99AB100(v52, v161, &unk_1ECB51B10);
    if (v101(v100, 1, Context) == 1)
    {
      sub_1D99A6AE0(v100, &unk_1ECB51B10);
      v103 = 0;
    }

    else
    {
      v103 = *(v100 + *(Context + 48));
      swift_unknownObjectRetain();
      sub_1D9BA4608(v100, type metadata accessor for VisualQueryContext);
    }

    sub_1D99AB100(v52, v99, &unk_1ECB51B10);
    if (v101(v99, 1, Context) == 1)
    {
      sub_1D99A6AE0(v99, &unk_1ECB51B10);
      v104 = 0;
    }

    else
    {
      v104 = *(v99 + 56);
      sub_1D9BA4608(v99, type metadata accessor for VisualQueryContext);
    }

    v105 = swift_allocObject();
    v106 = *(v102 + 16);
    sub_1D99A17C8(v242, &v197);
    v107 = *(v102 + 24);
    type metadata accessor for SignalsExtractionProcessor();
    v108 = swift_allocObject();

    *(v108 + 104) = sub_1D9A43DE4(MEMORY[0x1E69E7CC0]);
    *(v108 + 112) = 0u;
    *(v108 + 128) = 0u;
    *(v108 + 144) = 0u;
    *(v108 + 40) = v106;
    sub_1D9979B9C(&v197, v108 + 48);
    type metadata accessor for TextDetectionRequestFactory();
    *(v108 + 16) = swift_allocObject();
    type metadata accessor for BarcodeDetectionRequestFactory();
    *(v108 + 24) = swift_allocObject();
    *(v108 + 88) = v107;
    type metadata accessor for ImageFingerprintRequestFactory();
    v109 = swift_allocObject();
    *(v109 + 16) = v106;
    *(v108 + 32) = v109;
    *(v108 + 96) = v103;
    v205 = v217;
    v206 = v218;
    v207 = v219;
    v208 = v220;
    v201 = v213;
    v202 = v214;
    v203 = v215;
    v204 = v216;
    v197 = v209;
    v198 = v210;
    v199 = v211;
    v200 = v212;
    swift_unknownObjectRetain();

    v110 = v171;
    sub_1D99B54E0(&v197, v167, 2, 1, 0, v104, 0, v105 + 16);
    v111 = v166;
    if (v110)
    {

      swift_unknownObjectRelease();
      sub_1D9B9E760(v111, v174);
      sub_1D9A0009C(&v209);
      sub_1D9BA3E1C(v165, v164, v163, v154);
      swift_deallocUninitializedObject();
    }

    else
    {
      v171 = 0;

      swift_unknownObjectRelease();
      sub_1D9B9E760(v111, v174);
      sub_1D9A0009C(&v209);
      sub_1D9BA3E1C(v165, v164, v163, v154);
      v112 = v153;
      v113 = *&v153[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
      os_unfair_lock_lock(v113 + 4);
      v114 = v112[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
      os_unfair_lock_unlock(v113 + 4);
      if (v114)
      {
        v115 = v147;
        static Logger.argos.getter(v147);
        v116 = sub_1D9C7D8BC();
        v117 = sub_1D9C7E09C();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          _os_log_impl(&dword_1D9962000, v116, v117, "performEncryptedSearchPIR(): canceled", v118, 2u);
          MEMORY[0x1DA7405F0](v118, -1, -1);
        }

        (*(v148 + 8))(v115, v149);
        sub_1D9A0EEC0();
        v119 = swift_allocError();
        *v120 = 0;
        v121 = v156;
        *v156 = v119;
        swift_storeEnumTagMultiPayload();
        sub_1D9B97D94(v121, v160, v158, v159, "encryptedSearchPIR(): result.userFeedbackIntermediateResults = %s");
        sub_1D99A6AE0(v121, &unk_1ECB53570);
      }

      else
      {
        v122 = *(v105 + 160);
        v123 = *(v105 + 128);
        v193 = *(v105 + 144);
        v194 = v122;
        v124 = *(v105 + 160);
        v195 = *(v105 + 176);
        v125 = *(v105 + 96);
        v126 = *(v105 + 64);
        v189 = *(v105 + 80);
        v190 = v125;
        v127 = *(v105 + 96);
        v128 = *(v105 + 128);
        v191 = *(v105 + 112);
        v192 = v128;
        v129 = *(v105 + 32);
        v185 = *(v105 + 16);
        v186 = v129;
        v130 = *(v105 + 64);
        v132 = *(v105 + 16);
        v131 = *(v105 + 32);
        v187 = *(v105 + 48);
        v188 = v130;
        v181 = v193;
        v182 = v124;
        v183 = *(v105 + 176);
        v177 = v189;
        v178 = v127;
        v179 = v191;
        v180 = v123;
        v174[0] = v132;
        v174[1] = v131;
        v196 = *(v105 + 192);
        v184 = *(v105 + 192);
        v175 = v187;
        v176 = v126;
        v133 = swift_allocObject();
        swift_weakInit();
        v134 = v168;
        sub_1D99AB100(v169, v168, &unk_1ECB51B10);
        v135 = (*(v150 + 80) + 41) & ~*(v150 + 80);
        v136 = (v151 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
        v137 = swift_allocObject();
        v138 = v157;
        *(v137 + 16) = v133;
        *(v137 + 24) = v138;
        *(v137 + 32) = v105;
        *(v137 + 40) = v111;
        sub_1D9A0E758(v134, v137 + v135);
        v139 = (v137 + v136);
        v140 = v170;
        *v139 = sub_1D9BA3DF4;
        v139[1] = v140;
        sub_1D99BB40C(&v185, &v197);

        sub_1D9BBFD5C(v174, v169, v167, v153, sub_1D9BA90D0, v137);

        v205 = v181;
        v206 = v182;
        v207 = v183;
        v208 = v184;
        v201 = v177;
        v202 = v178;
        v203 = v179;
        v204 = v180;
        v197 = v174[0];
        v198 = v174[1];
        v199 = v175;
        v200 = v176;
        sub_1D9A0009C(&v197);
      }
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D9BA0F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(char *), uint64_t a10, uint64_t a11)
{
  v326 = a3;
  v329 = a8;
  v319 = a7;
  v320 = a6;
  v318 = a5;
  v307 = a4;
  v321 = a1;
  v327 = a9;
  v277 = type metadata accessor for ServerSearchResult();
  MEMORY[0x1EEE9AC00](v277);
  v278 = &v276 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0);
  MEMORY[0x1EEE9AC00](v284);
  v279 = (&v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v291 = (&v276 - v15);
  v16 = sub_1D9C7DA2C();
  v289 = *(v16 - 8);
  v290 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v287 = &v276 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_1D9C7DA4C();
  v286 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v285 = &v276 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v281 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v282 = v20;
  v283 = &v276 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9C7D8DC();
  v309 = *(v21 - 8);
  v310 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v280 = &v276 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v305 = &v276 - v24;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v315);
  v292 = (&v276 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v316 = (&v276 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v304 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v276 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v313 = &v276 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v296 = &v276 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v295 = &v276 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v314 = &v276 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v302 = &v276 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v306 = &v276 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v311 = &v276 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v303 = &v276 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v323 = (&v276 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v312 = &v276 - v50;
  v308 = v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v276 - v53;
  v55 = sub_1D9C7DA7C();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = (&v276 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = swift_allocObject();
  *(v59 + 16) = v327;
  *(v59 + 24) = a10;
  v60 = *(a11 + 144);
  *(v59 + 160) = *(a11 + 128);
  *(v59 + 176) = v60;
  *(v59 + 192) = *(a11 + 160);
  *(v59 + 208) = *(a11 + 176);
  v61 = *(a11 + 80);
  *(v59 + 96) = *(a11 + 64);
  *(v59 + 112) = v61;
  v62 = *(a11 + 112);
  *(v59 + 128) = *(a11 + 96);
  *(v59 + 144) = v62;
  v63 = *(a11 + 16);
  *(v59 + 32) = *a11;
  *(v59 + 48) = v63;
  v64 = *(a11 + 48);
  *(v59 + 64) = *(a11 + 32);
  *(v59 + 80) = v64;
  v324 = v59;
  v65 = *(a2 + 144);
  v407 = *(a2 + 128);
  v408 = v65;
  v409 = *(a2 + 160);
  v410 = *(a2 + 176);
  v66 = *(a2 + 80);
  v403 = *(a2 + 64);
  v404 = v66;
  v67 = *(a2 + 112);
  v405 = *(a2 + 96);
  v406 = v67;
  v68 = *(a2 + 16);
  v399 = *a2;
  v400 = v68;
  v69 = *(a2 + 48);
  v401 = *(a2 + 32);
  v402 = v69;
  v70 = *(v329 + 56);
  *v58 = v70;
  v71 = *(v56 + 104);
  LODWORD(v298) = *MEMORY[0x1E69E8020];
  v299 = (v56 + 104);
  v297 = v71;
  v71(v58);
  v322 = a10;

  v317 = a11;
  sub_1D99BB40C(a11, &v362);
  v72 = v70;
  LOBYTE(v70) = sub_1D9C7DA9C();
  v73 = *(v56 + 8);
  v300 = v56 + 8;
  v301 = v55;
  result = v73(v58, v55);
  if ((v70 & 1) == 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  v293 = v72;
  v294 = v73;
  v75 = v326;
  sub_1D99AB100(v326, v54, &unk_1ECB51B10);
  Context = type metadata accessor for VisualQueryContext();
  v77 = *(Context - 8);
  v328 = *(v77 + 48);
  v411 = (v77 + 48);
  if ((v328)(v54, 1, Context) == 1)
  {
    sub_1D99A6AE0(v54, &unk_1ECB51B10);
    v78 = v329;
    v79 = v323;
  }

  else
  {
    v80 = *(v54 + 7);
    sub_1D9BA4608(v54, type metadata accessor for VisualQueryContext);
    v78 = v329;
    v79 = v323;
    if (v80 == 3)
    {
      goto LABEL_13;
    }
  }

  sub_1D99AB100(v75, v30, &unk_1ECB51B10);
  if ((v328)(v30, 1, Context) == 1)
  {
    sub_1D99A6AE0(v30, &unk_1ECB51B10);
  }

  else
  {
    v81 = *(v30 + 7);
    sub_1D9BA4608(v30, type metadata accessor for VisualQueryContext);
    if (v81 == 5)
    {
      goto LABEL_13;
    }
  }

  sub_1D99AB100(v321, &v348, &qword_1ECB51B30);
  if (*(&v349 + 1))
  {
    sub_1D9979B9C(&v348, &v362);
    v82 = v325;
    sub_1D9A723CC(&v362);
    __swift_destroy_boxed_opaque_existential_0Tm(&v362);
    if (v82)
    {
    }

    v325 = 0;
  }

  else
  {
    sub_1D99A6AE0(&v348, &qword_1ECB51B30);
  }

LABEL_13:
  v370 = v407;
  v371 = v408;
  v372 = v409;
  v373 = v410;
  v366 = v403;
  v367 = v404;
  v368 = v405;
  v369 = v406;
  v362 = v399;
  v363 = v400;
  v364 = v401;
  v365 = v402;
  v83 = *(sub_1D9B67A68() + 16);

  if (!v83)
  {
    sub_1D9AFCCA4();
    v87 = type metadata accessor for VisualSearchResultInternal(0);
    v88 = *(v87 + 24);
    v89 = sub_1D9C7CBEC();
    v90 = v316;
    (*(*(v89 - 8) + 56))(v316 + v88, 1, 1, v89);
    v91 = *(v87 + 28);
    v92 = sub_1D9C7CF3C();
    (*(*(v92 - 8) + 56))(v90 + v91, 1, 1, v92);
    v93 = v408;
    *(v90 + 8) = v407;
    *(v90 + 9) = v93;
    *(v90 + 10) = v409;
    v94 = v410;
    v95 = v404;
    *(v90 + 4) = v403;
    *(v90 + 5) = v95;
    v96 = v406;
    *(v90 + 6) = v405;
    *(v90 + 7) = v96;
    v97 = v400;
    *v90 = v399;
    *(v90 + 1) = v97;
    v98 = v402;
    *(v90 + 2) = v401;
    *(v90 + 3) = v98;
    v99 = MEMORY[0x1E69E7CC0];
    v90[22] = v94;
    v90[23] = v99;
    swift_storeEnumTagMultiPayload();
    sub_1D99BB40C(&v399, &v362);
    sub_1D9B99130(v90, v327, v322, v317);
    sub_1D99A6AE0(v90, &unk_1ECB53570);
  }

  v276 = *(v78 + 24);

  sub_1D9C7D0BC();

  v84 = v312;
  sub_1D99AB100(v75, v312, &unk_1ECB51B10);
  v85 = v328;
  if ((v328)(v84, 1, Context) == 1)
  {
    sub_1D99A6AE0(v84, &unk_1ECB51B10);
    v86 = v313;
  }

  else
  {
    v100 = v84;
    v101 = *(v84 + 56);
    sub_1D9BA4608(v100, type metadata accessor for VisualQueryContext);
    v102 = v101 == 3;
    v86 = v313;
    if (v102)
    {
      LODWORD(v323) = 0;
      goto LABEL_24;
    }
  }

  sub_1D99AB100(v75, v86, &unk_1ECB51B10);
  if (v85(v86, 1, Context) == 1)
  {
    sub_1D99A6AE0(v86, &unk_1ECB51B10);
    v103 = 1;
  }

  else
  {
    v104 = v86;
    v105 = *(v86 + 56);
    sub_1D9BA4608(v104, type metadata accessor for VisualQueryContext);
    v103 = v105 != 5;
  }

  LODWORD(v323) = v103;
LABEL_24:
  v106 = swift_allocObject();
  v107 = v408;
  *(v106 + 144) = v407;
  *(v106 + 160) = v107;
  *(v106 + 176) = v409;
  *(v106 + 192) = v410;
  v108 = v404;
  *(v106 + 80) = v403;
  *(v106 + 96) = v108;
  v109 = v406;
  *(v106 + 112) = v405;
  *(v106 + 128) = v109;
  v110 = v400;
  *(v106 + 16) = v399;
  *(v106 + 32) = v110;
  v111 = v402;
  *(v106 + 48) = v401;
  *(v106 + 64) = v111;
  sub_1D99AB100(v75, v79, &unk_1ECB51B10);
  if (v85(v79, 1, Context) == 1)
  {
    sub_1D99BB40C(&v399, &v362);
    sub_1D99A6AE0(v79, &unk_1ECB51B10);
    v112 = v314;
  }

  else
  {
    v113 = *(v79 + 56);
    sub_1D99BB40C(&v399, &v362);
    sub_1D9BA4608(v79, type metadata accessor for VisualQueryContext);
    v102 = v113 == 3;
    v112 = v314;
    if (v102)
    {
      goto LABEL_35;
    }
  }

  sub_1D99AB100(v75, v112, &unk_1ECB51B10);
  if (v85(v112, 1, Context) == 1)
  {
    sub_1D99A6AE0(v112, &unk_1ECB51B10);
    goto LABEL_30;
  }

  v114 = v112;
  v115 = *(v112 + 56);
  sub_1D9BA4608(v114, type metadata accessor for VisualQueryContext);
  if (v115 == 5)
  {
LABEL_35:
    v137 = v320;
    goto LABEL_36;
  }

LABEL_30:
  sub_1D99AB100(v321, &v362, &qword_1ECB51B30);
  if (!*(&v363 + 1))
  {
    sub_1D99A6AE0(&v362, &qword_1ECB51B30);
    goto LABEL_35;
  }

  sub_1D9979B9C(&v362, &v336);
  v116 = v293;
  *v58 = v293;
  v117 = v301;
  v297(v58, v298, v301);
  v118 = v116;
  LOBYTE(v116) = sub_1D9C7DA9C();
  result = v294(v58, v117);
  if ((v116 & 1) == 0)
  {
LABEL_73:
    __break(1u);
    return result;
  }

  v321 = Context;
  v333 = 0;
  memset(v332, 0, sizeof(v332));
  v313 = v106;
  if (v323)
  {
    v119 = v306;
    sub_1D99AB100(v75, v306, &unk_1ECB51B10);
    v370 = v407;
    v371 = v408;
    v372 = v409;
    v373 = v410;
    v366 = v403;
    v367 = v404;
    v368 = v405;
    v369 = v406;
    v362 = v399;
    v363 = v400;
    v364 = v401;
    v365 = v402;
    sub_1D99BB40C(&v399, &v348);
    sub_1D9BDB0A4(v119, &v362, v376);
    v386 = *(v376 + 8);
    v385 = *(&v376[1] + 1);
    v384 = *&v376[2];
    v299 = objc_opt_self();
    *(&v363 + 1) = &type metadata for EngagedRegionOfInterestEvent;
    *&v364 = &off_1F5535308;
    v120 = swift_allocObject();
    *&v362 = v120;
    v121 = v376[1];
    v120[1] = v376[0];
    v120[2] = v121;
    *(v120 + 41) = *(&v376[1] + 9);
    v122 = type metadata accessor for AnyVIAEvent();
    v298 = v122;
    v123 = objc_allocWithZone(v122);
    sub_1D99A17C8(&v362, v123 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    sub_1D9B1734C(&v386, &v348);
    sub_1D99AB100(&v385, &v348, &qword_1ECB53DB8);
    sub_1D99AB100(&v384, &v348, &qword_1ECB53400);
    sub_1D9B1734C(&v386, &v348);
    sub_1D99AB100(&v385, &v348, &qword_1ECB53DB8);
    sub_1D99AB100(&v384, &v348, &qword_1ECB53400);
    v331.receiver = v123;
    v331.super_class = v122;
    v124 = objc_msgSendSuper2(&v331, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(&v362);
    [v299 logEvent_];

    sub_1D9B172F8(&v386);
    sub_1D99A6AE0(&v385, &qword_1ECB53DB8);
    sub_1D99A6AE0(&v384, &qword_1ECB53400);
    sub_1D99AB100(v75, v119, &unk_1ECB51B10);
    v125 = v302;
    sub_1D99AB100(v119, v302, &unk_1ECB51B10);
    sub_1D9A9499C(v125, 0, &v377);
    v126 = v377;
    v127 = v378;
    v128 = v75;
    v129 = v380;
    v130 = v379;
    sub_1D99A6AE0(v119, &unk_1ECB51B10);
    v383 = v378;
    *&v332[0] = v126;
    *(v332 + 8) = v127;
    *(&v332[1] + 1) = v130;
    v333 = v129;
    *(&v363 + 1) = &type metadata for LocalSearchStartEvent;
    *&v364 = &off_1F55352D8;
    v131 = swift_allocObject();
    *&v362 = v131;
    v314 = v126;
    *(v131 + 16) = v126;
    *(v131 + 24) = v127;
    v301 = *(&v127 + 1);
    v312 = v127;
    *(v131 + 32) = *(&v127 + 1);
    *(v131 + 40) = v130;
    LODWORD(v300) = v129;
    *(v131 + 48) = v129;
    v132 = v298;
    v133 = objc_allocWithZone(v298);
    sub_1D99A17C8(&v362, v133 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    sub_1D9B1734C(&v383, &v348);
    v134 = v130;
    sub_1D9B1734C(&v383, &v348);
    v330.receiver = v133;
    v330.super_class = v132;
    v135 = v134;
    v136 = objc_msgSendSuper2(&v330, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(&v362);
    [v299 logEvent_];

    v78 = v329;
    sub_1D9B172F8(&v386);
    sub_1D99A6AE0(&v385, &qword_1ECB53DB8);
    sub_1D99A6AE0(&v384, &qword_1ECB53400);
    sub_1D9B172F8(&v383);
  }

  else
  {
    v314 = 0;
    v312 = 0;
    v301 = 0;
    v128 = v75;
    v130 = 0;
    LODWORD(v300) = 0;
  }

  v212 = v307;
  v213 = v295;
  v214 = v296;
  v215 = *(v78 + 16);
  sub_1D99AB100(v128, v295, &unk_1ECB51B10);
  v216 = v321;
  if ((v328)(v213, 1, v321) == 1)
  {
    sub_1D99A6AE0(v213, &unk_1ECB51B10);
    v217 = 0;
  }

  else
  {
    v217 = *(v213 + *(v216 + 48));
    swift_unknownObjectRetain();
    sub_1D9BA4608(v213, type metadata accessor for VisualQueryContext);
  }

  sub_1D99AB100(v326, v214, &unk_1ECB51B10);
  if ((v328)(v214, 1, v216) == 1)
  {
    sub_1D99A6AE0(v214, &unk_1ECB51B10);
    v218 = 0;
  }

  else
  {
    v218 = *(v214 + 56);
    sub_1D9BA4608(v214, type metadata accessor for VisualQueryContext);
  }

  v219 = *(v215 + 16);
  sub_1D99A17C8(&v336, &v362);
  v220 = *(v215 + 24);
  type metadata accessor for SignalsExtractionProcessor();
  v221 = swift_allocObject();

  *(v221 + 104) = sub_1D9A43DE4(MEMORY[0x1E69E7CC0]);
  *(v221 + 112) = 0u;
  *(v221 + 128) = 0u;
  *(v221 + 144) = 0u;
  *(v221 + 40) = v219;
  sub_1D9979B9C(&v362, v221 + 48);
  type metadata accessor for TextDetectionRequestFactory();
  *(v221 + 16) = swift_allocObject();
  type metadata accessor for BarcodeDetectionRequestFactory();
  *(v221 + 24) = swift_allocObject();
  *(v221 + 88) = v220;
  type metadata accessor for ImageFingerprintRequestFactory();
  v222 = swift_allocObject();
  *(v222 + 16) = v219;
  *(v221 + 32) = v222;
  *(v221 + 96) = v217;
  v370 = v407;
  v371 = v408;
  v372 = v409;
  v373 = v410;
  v366 = v403;
  v367 = v404;
  v368 = v405;
  v369 = v406;
  v362 = v399;
  v363 = v400;
  v364 = v401;
  v365 = v402;
  swift_unknownObjectRetain();

  v223 = v325;
  sub_1D99B54E0(&v362, v212, 1, 1, 0, v218, v319, v334);
  if (v223)
  {

    swift_unknownObjectRelease();
    sub_1D9B9E760(v323, v332);
    sub_1D9BA3E1C(v314, v312, v301, v130);
    __swift_destroy_boxed_opaque_existential_0Tm(&v336);
  }

  v325 = 0;

  swift_unknownObjectRelease();
  sub_1D9B9E760(v323, v332);
  sub_1D9BA3E1C(v314, v312, v301, v130);
  __swift_destroy_boxed_opaque_existential_0Tm(&v336);
  v106 = v313;
  v224 = *(v313 + 10);
  v356 = *(v313 + 9);
  v357 = v224;
  v358 = *(v313 + 11);
  v359 = *(v313 + 24);
  v225 = *(v313 + 6);
  v352 = *(v313 + 5);
  v353 = v225;
  v226 = *(v313 + 8);
  v354 = *(v313 + 7);
  v355 = v226;
  v227 = *(v313 + 2);
  v348 = *(v313 + 1);
  v349 = v227;
  v228 = *(v313 + 4);
  v350 = *(v313 + 3);
  v351 = v228;
  v229 = v334[9];
  *(v313 + 9) = v334[8];
  *(v106 + 160) = v229;
  *(v106 + 176) = v334[10];
  *(v106 + 192) = v335;
  v230 = v334[5];
  *(v106 + 80) = v334[4];
  *(v106 + 96) = v230;
  v231 = v334[7];
  *(v106 + 112) = v334[6];
  *(v106 + 128) = v231;
  v232 = v334[1];
  *(v106 + 16) = v334[0];
  *(v106 + 32) = v232;
  v233 = v334[3];
  *(v106 + 48) = v334[2];
  *(v106 + 64) = v233;
  sub_1D9A0009C(&v348);
  v137 = v320;
  v75 = v326;
LABEL_36:
  v138 = *&v137[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
  os_unfair_lock_lock(v138 + 4);
  v139 = OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled;
  v140 = v137[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
  os_unfair_lock_unlock(v138 + 4);
  if (v140 == 1)
  {
    v141 = v305;
    static Logger.argos.getter(v305);
    v142 = sub_1D9C7D8BC();
    v143 = sub_1D9C7E09C();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&dword_1D9962000, v142, v143, "performSearch(): canceled", v144, 2u);
      MEMORY[0x1DA7405F0](v144, -1, -1);
    }

    (*(v309 + 8))(v141, v310);
    sub_1D9A0EEC0();
    v145 = swift_allocError();
    *v146 = 0;
    v147 = v316;
    *v316 = v145;
    swift_storeEnumTagMultiPayload();
    sub_1D9B99130(v147, v327, v322, v317);
    sub_1D99A6AE0(v147, &unk_1ECB53570);
  }

  v148 = *(v106 + 160);
  v395 = *(v106 + 144);
  v396 = v148;
  v397 = *(v106 + 176);
  v398 = *(v106 + 192);
  v149 = *(v106 + 96);
  v391 = *(v106 + 80);
  v392 = v149;
  v150 = *(v106 + 128);
  v393 = *(v106 + 112);
  v394 = v150;
  v151 = *(v106 + 32);
  v387 = *(v106 + 16);
  v388 = v151;
  v152 = *(v106 + 64);
  v389 = *(v106 + 48);
  v390 = v152;
  v153 = swift_allocObject();
  v411 = v139;
  v154 = v153;
  swift_weakInit();
  v155 = v303;
  sub_1D99AB100(v75, v303, &unk_1ECB51B10);
  sub_1D99AB100(v155, v311, &unk_1ECB51B10);
  v156 = *(v304 + 80);
  v157 = (v156 + 49) & ~v156;
  v321 = v308 + 7;
  v158 = (v308 + 7 + v157) & 0xFFFFFFFFFFFFFFF8;
  v328 = v156;
  v159 = swift_allocObject();
  *(v159 + 16) = v318;
  *(v159 + 24) = v154;
  v160 = v138;
  v161 = v319;
  *(v159 + 32) = v106;
  *(v159 + 40) = v161;
  *(v159 + 48) = v323;
  v162 = v155;
  v163 = v159;
  sub_1D9A0E758(v162, v159 + v157);
  v164 = (v163 + v158);
  v165 = v324;
  *v164 = sub_1D9BA90C4;
  v164[1] = v165;
  swift_retain_n();
  sub_1D99BB40C(&v387, &v362);

  v329 = v154;

  os_unfair_lock_lock(v160 + 4);
  LOBYTE(v157) = v411[v320];
  os_unfair_lock_unlock(v160 + 4);
  if ((v157 & 1) == 0)
  {
    v177 = v328;
    v318 = ~v328;

    v178 = swift_allocObject();
    *(v178 + 16) = sub_1D9BA84D4;
    *(v178 + 24) = v163;
    v179 = v178;
    v323 = v178;
    v180 = *(v276 + 16);
    v181 = v306;
    sub_1D99AB100(v326, v306, &unk_1ECB51B10);
    v313 = v106;
    v314 = v163;
    v182 = (v177 + 16) & ~v177;
    v183 = (v321 + v182) & 0xFFFFFFFFFFFFFFF8;
    v184 = (v183 + 191) & 0xFFFFFFFFFFFFFFF8;
    v185 = swift_allocObject();
    sub_1D9A0E758(v181, v185 + v182);
    v186 = v185 + v183;
    v187 = v185;
    v188 = v396;
    *(v186 + 128) = v395;
    *(v186 + 144) = v188;
    *(v186 + 160) = v397;
    *(v186 + 176) = v398;
    v189 = v392;
    *(v186 + 64) = v391;
    *(v186 + 80) = v189;
    v190 = v394;
    *(v186 + 96) = v393;
    *(v186 + 112) = v190;
    v191 = v388;
    *v186 = v387;
    *(v186 + 16) = v191;
    v192 = v390;
    *(v186 + 32) = v389;
    *(v186 + 48) = v192;
    v193 = (v185 + v184);
    v321 = v185;
    *v193 = sub_1D9BA81C8;
    v193[1] = v179;
    v327 = *(v180 + 16);
    v194 = swift_allocObject();
    v411 = v194;
    swift_weakInit();
    v195 = v283;
    sub_1D9BA4538(v307, v283, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v196 = v302;
    sub_1D99AB100(v326, v302, &unk_1ECB51B10);
    v197 = (*(v281 + 80) + 240) & ~*(v281 + 80);
    v198 = (v282 + v177 + v197) & v318;
    v199 = swift_allocObject();
    v200 = v319;
    *(v199 + 16) = v194;
    *(v199 + 24) = v200;
    v201 = v320;
    *(v199 + 32) = v320;
    v202 = v396;
    *(v199 + 184) = v395;
    *(v199 + 200) = v202;
    *(v199 + 216) = v397;
    v203 = v392;
    *(v199 + 120) = v391;
    *(v199 + 136) = v203;
    v204 = v394;
    *(v199 + 152) = v393;
    *(v199 + 168) = v204;
    v205 = v388;
    *(v199 + 56) = v387;
    *(v199 + 72) = v205;
    v206 = v390;
    *(v199 + 88) = v389;
    *(v199 + 40) = sub_1D9BA858C;
    *(v199 + 48) = v187;
    *(v199 + 232) = v398;
    *(v199 + 104) = v206;
    sub_1D9BA45A0(v195, v199 + v197, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D9A0E758(v196, v199 + v198);
    *&v350 = sub_1D9BA85A4;
    *(&v350 + 1) = v199;
    *&v348 = MEMORY[0x1E69E9820];
    *(&v348 + 1) = 1107296256;
    *&v349 = sub_1D9A0A1E0;
    *(&v349 + 1) = &block_descriptor_126;
    v328 = _Block_copy(&v348);
    sub_1D99BB40C(&v387, &v362);
    sub_1D99BB40C(&v387, &v362);

    v207 = v201;

    v208 = v285;
    sub_1D9C7DA3C();
    *&v362 = MEMORY[0x1E69E7CC0];
    sub_1D9BA8340(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
    sub_1D9A0E83C();
    v209 = v287;
    v210 = v290;
    sub_1D9C7E34C();
    v211 = v328;
    MEMORY[0x1DA73E300](0, v208, v209, v328);
    _Block_release(v211);

    sub_1D9A0009C(&v387);
    (*(v289 + 8))(v209, v210);
    (*(v286 + 8))(v208, v288);
    sub_1D99A6AE0(v311, &unk_1ECB51B10);
  }

  v166 = v280;
  static Logger.argos.getter(v280);
  v167 = sub_1D9C7D8BC();
  v168 = sub_1D9C7E09C();
  if (os_log_type_enabled(v167, v168))
  {
    v169 = swift_slowAlloc();
    *v169 = 0;
    _os_log_impl(&dword_1D9962000, v167, v168, "search(): canceled", v169, 2u);
    MEMORY[0x1DA7405F0](v169, -1, -1);
  }

  (*(v309 + 8))(v166, v310);
  sub_1D9A0EEC0();
  v170 = swift_allocError();
  *v171 = 0;
  v172 = v291;
  *v291 = v170;
  swift_storeEnumTagMultiPayload();
  sub_1D9AFCCA4();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v174 = v319;
  if (Strong)
  {
    v175 = Strong;
    if (v319)
    {
      swift_beginAccess();
      v176 = *(v174 + 16);
    }

    else
    {
      v176 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    sub_1D9A19294(v176);
    swift_endAccess();
    v234 = v279;
    sub_1D99AB100(v172, v279, &qword_1ECB53DC0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v292 = *v234;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v235 = v278;
      sub_1D9BA45A0(v234, v278, type metadata accessor for ServerSearchResult);
      v236 = (v235 + *(v277 + 24));
      v237 = v236[1];
      *(v106 + 144) = *v236;
      *(v106 + 152) = v237;

      v238 = *(v106 + 160);
      v239 = *(v106 + 128);
      v356 = *(v106 + 144);
      v357 = v238;
      v240 = *(v106 + 160);
      v358 = *(v106 + 176);
      v241 = *(v106 + 96);
      v242 = *(v106 + 64);
      v352 = *(v106 + 80);
      v353 = v241;
      v243 = *(v106 + 96);
      v244 = *(v106 + 128);
      v354 = *(v106 + 112);
      v355 = v244;
      v245 = *(v106 + 32);
      v348 = *(v106 + 16);
      v349 = v245;
      v246 = *(v106 + 64);
      v248 = *(v106 + 16);
      v247 = *(v106 + 32);
      v350 = *(v106 + 48);
      v351 = v246;
      v344 = v356;
      v345 = v240;
      v346 = *(v106 + 176);
      v340 = v352;
      v341 = v243;
      v342 = v354;
      v343 = v239;
      v336 = v248;
      v337 = v247;
      v359 = *(v106 + 192);
      v347 = *(v106 + 192);
      v338 = v350;
      v339 = v242;
      v249 = v175[8];
      sub_1D99BB40C(&v348, &v362);
      sub_1D9B3BD0C(v235, &v336, v249, v292);
      v370 = v344;
      v371 = v345;
      v372 = v346;
      v373 = v347;
      v366 = v340;
      v367 = v341;
      v368 = v342;
      v369 = v343;
      v362 = v336;
      v363 = v337;
      v364 = v338;
      v365 = v339;
      sub_1D9A0009C(&v362);
      sub_1D9BA4608(v235, type metadata accessor for ServerSearchResult);
    }

    v328 = v175;
    if (v323)
    {
      v250 = v316;
      sub_1D99AB100(v292, v316, &unk_1ECB53570);
      v251 = v311;
      v252 = v306;
      sub_1D99AB100(v311, v306, &unk_1ECB51B10);
      sub_1D9BDB568(v250, v252, v374);
      v382 = *(v374 + 8);
      v381 = *(&v374[1] + 1);
      v253 = objc_opt_self();
      *(&v363 + 1) = &type metadata for ResultEvent;
      *&v364 = &off_1F55352A8;
      v254 = swift_allocObject();
      *&v362 = v254;
      v255 = v374[1];
      *(v254 + 16) = v374[0];
      *(v254 + 32) = v255;
      *(v254 + 48) = v375;
      v256 = type metadata accessor for AnyVIAEvent();
      v257 = objc_allocWithZone(v256);
      sub_1D99A17C8(&v362, v257 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      sub_1D9B1734C(&v382, &v348);
      sub_1D99AB100(&v381, &v348, &qword_1ECB53400);
      sub_1D9B1734C(&v382, &v348);
      sub_1D99AB100(&v381, &v348, &qword_1ECB53400);
      v361.receiver = v257;
      v323 = v256;
      v361.super_class = v256;
      v258 = objc_msgSendSuper2(&v361, sel_init);
      __swift_destroy_boxed_opaque_existential_0Tm(&v362);
      [v253 logEvent_];

      sub_1D9B172F8(&v382);
      v259 = v319;
      sub_1D99A6AE0(&v381, &qword_1ECB53400);
      v314 = v163;
      v260 = v253;
      if (v259)
      {
        swift_beginAccess();
        v261 = *(v259 + 16);

        v262 = sub_1D99A7220(v251, 1, v261);
      }

      else
      {
        v262 = MEMORY[0x1E69E7CC0];
      }

      v313 = v106;
      v263 = *(v262 + 16);
      v326 = v262;
      if (v263)
      {
        v264 = (v262 + 64);
        v411 = v260;
        v265 = v323;
        do
        {
          v266 = *(v264 - 4);
          v267 = *(v264 - 3);
          v269 = *(v264 - 2);
          v268 = *(v264 - 1);
          v270 = *v264;
          v264 += 40;
          *(&v363 + 1) = &type metadata for DurationEvent;
          *&v364 = &off_1F552D1E8;
          v271 = swift_allocObject();
          *&v362 = v271;
          *(v271 + 16) = v266;
          *(v271 + 24) = v267;
          *(v271 + 32) = v269;
          *(v271 + 40) = v268;
          *(v271 + 48) = v270;
          v272 = objc_allocWithZone(v265);
          sub_1D99A17C8(&v362, v272 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
          v360.receiver = v272;
          v360.super_class = v265;
          swift_bridgeObjectRetain_n();
          v273 = v268;
          v274 = objc_msgSendSuper2(&v360, sel_init);
          __swift_destroy_boxed_opaque_existential_0Tm(&v362);
          [v411 logEvent_];

          --v263;
        }

        while (v263);
      }

      sub_1D9B172F8(&v382);
      sub_1D99A6AE0(&v381, &qword_1ECB53400);
      v172 = v291;
    }

    v275 = v292;
    sub_1D9B99130(v292, v327, v322, v317);

    sub_1D9A0009C(&v387);
    sub_1D99A6AE0(v275, &unk_1ECB53570);
    sub_1D99A6AE0(v172, &qword_1ECB53DC0);
    sub_1D99A6AE0(v311, &unk_1ECB51B10);
  }

  else
  {

    sub_1D9A0009C(&v387);
    sub_1D99A6AE0(v172, &qword_1ECB53DC0);
    sub_1D99A6AE0(v311, &unk_1ECB51B10);
  }
}