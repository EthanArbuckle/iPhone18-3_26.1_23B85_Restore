void sub_1D9BD6748(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v43 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v43);
  v44 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v39 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39[1] = v4;
    v23 = a4 + v17;
    if (v17 < 1)
    {
      v26 = a4 + v17;
    }

    else
    {
      v24 = -v13;
      v25 = a4 + v17;
      v26 = v23;
      v41 = v24;
      v42 = a4;
      do
      {
        v39[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v45;
          if (v27 <= a1)
          {
            v48 = v27;
            v46 = v39[0];
            goto LABEL_59;
          }

          v40 = v26;
          v45 += v24;
          v31 = v25 + v24;
          sub_1D9A5521C(v31, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
          v32 = v28;
          v33 = v28;
          v34 = v11;
          v35 = v44;
          sub_1D9A5521C(v33, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
          v36 = *(v34 + 72);
          v37 = *(v35 + 72);
          v38 = v35;
          v11 = v34;
          sub_1D9BD8414(v38, type metadata accessor for VisualUnderstanding.ImageRegion);
          sub_1D9BD8414(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
          if (v37 < v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v45 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v42;
          v24 = v41;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v45 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v40;
          v24 = v41;
        }

        else
        {
          v26 = v40;
          v24 = v41;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v42);
    }

LABEL_58:
    v48 = a2;
    v46 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < v45)
    {
      do
      {
        sub_1D9A5521C(a2, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        v20 = v44;
        sub_1D9A5521C(a4, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
        v21 = v11[18];
        v22 = *(v20 + 72);
        sub_1D9BD8414(v20, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9BD8414(v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        if (v22 >= v21)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v18 && a2 < v45);
    }
  }

LABEL_59:
  sub_1D9B015E8(&v48, &v47, &v46);
}

void sub_1D9BD6C40(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v46 = _s14DetectedResultVMa();
  MEMORY[0x1EEE9AC00](v46);
  v45 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41[1] = v4;
    v24 = a4 + v17;
    if (v17 < 1)
    {
      v27 = a4 + v17;
    }

    else
    {
      v25 = -v13;
      v26 = a4 + v17;
      v27 = v24;
      v43 = v25;
      v44 = a4;
      do
      {
        v41[0] = v27;
        v28 = a2;
        v29 = a2 + v25;
        while (1)
        {
          v31 = v47;
          if (v28 <= a1)
          {
            v50 = v28;
            v48 = v41[0];
            goto LABEL_59;
          }

          v42 = v27;
          v47 += v25;
          v32 = v26 + v25;
          sub_1D9A5521C(v32, v11, _s14DetectedResultVMa);
          v33 = v29;
          v34 = v29;
          v35 = v11;
          v36 = v45;
          sub_1D9A5521C(v34, v45, _s14DetectedResultVMa);
          v37 = *(v46 + 32);
          v38 = *(v35 + v37);
          v39 = *(v36 + v37);
          v40 = v36;
          v11 = v35;
          sub_1D9BD8414(v40, _s14DetectedResultVMa);
          sub_1D9BD8414(v35, _s14DetectedResultVMa);
          if (v39 < v38)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v47 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v44;
          v25 = v43;
          if (!v30)
          {
            a2 = v28;
            goto LABEL_58;
          }
        }

        if (v31 < v28 || v47 >= v28)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v42;
          v25 = v43;
        }

        else
        {
          v27 = v42;
          v25 = v43;
          a2 = v33;
          if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v44);
    }

LABEL_58:
    v50 = a2;
    v48 = v27;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < v47)
    {
      do
      {
        sub_1D9A5521C(a2, v11, _s14DetectedResultVMa);
        v20 = v45;
        sub_1D9A5521C(a4, v45, _s14DetectedResultVMa);
        v21 = *(v46 + 32);
        v22 = *&v11[v21];
        v23 = *(v20 + v21);
        sub_1D9BD8414(v20, _s14DetectedResultVMa);
        sub_1D9BD8414(v11, _s14DetectedResultVMa);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v50 = a1;
      }

      while (a4 < v18 && a2 < v47);
    }
  }

LABEL_59:
  sub_1D9B01600(&v50, &v49, &v48);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1D9BD7138(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 && a2)
  {

    sub_1D9BCF5C4(&v3);
  }

  else
  {

    sub_1D9BCF6A8(&v3);
  }
}

uint64_t sub_1D9BD71AC(uint64_t a1)
{
  v2 = sub_1D9A441B8(MEMORY[0x1E69E7CC0]);
  v65 = v2;
  v3 = sub_1D9B6834C(a1);
  v4 = v3;
  v63 = *(v3 + 16);
  if (!v63)
  {

    goto LABEL_30;
  }

  v59 = a1;
  v5 = 0;
  v61 = v3 + 32;
  while (1)
  {
    if (v5 >= *(v4 + 16))
    {
      goto LABEL_68;
    }

    v7 = *(v61 + 24 * v5 + 16);
    v8 = *(v7 + 16);
    if (v8)
    {
      break;
    }

LABEL_4:
    if (++v5 == v63)
    {
      v65 = v2;

      a1 = v59;
LABEL_30:
      v57 = *(a1 + 16);
      if (!v57)
      {
        v34 = MEMORY[0x1E69E7CC0];
LABEL_61:

        return v34;
      }

      v33 = 0;
      v34 = MEMORY[0x1E69E7CC0];
      v56 = a1 + 32;
      while (1)
      {
        v64 = v34;
        v35 = v56 + 48 * v33;
        v58 = *(v35 + 16);
        v60 = *v35;
        v36 = *(v35 + 40);
        v37 = *(v36 + 16);
        v62 = *(v35 + 32);

        if (v37)
        {
          break;
        }

        v40 = MEMORY[0x1E69E7CC0];
LABEL_53:
        v49 = *(v40 + 2);

        if (v49 && (v50 = , v51 = sub_1D9BCF40C(v50, &v65), , (v51 & 1) == 0))
        {

          v34 = v64;
        }

        else
        {
          v34 = v64;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_1D9AF8CE0(0, *(v64 + 2) + 1, 1, v64);
          }

          v53 = *(v34 + 2);
          v52 = *(v34 + 3);
          if (v53 >= v52 >> 1)
          {
            v34 = sub_1D9AF8CE0((v52 > 1), v53 + 1, 1, v34);
          }

          *(v34 + 2) = v53 + 1;
          v54 = &v34[48 * v53];
          *(v54 + 2) = v60;
          *(v54 + 3) = v58;
          *(v54 + 8) = v62;
          *(v54 + 9) = v36;
        }

        if (++v33 == v57)
        {
          goto LABEL_61;
        }
      }

      v38 = 0;
      v39 = (v36 + 48);
      v40 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v38 >= *(v36 + 16))
        {
          goto LABEL_63;
        }

        v41 = *v39;
        v42 = *(*v39 + 16);
        v43 = *(v40 + 2);
        v44 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
          goto LABEL_64;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v44 <= *(v40 + 3) >> 1)
        {
          if (!*(v41 + 16))
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v43 <= v44)
          {
            v46 = v43 + v42;
          }

          else
          {
            v46 = v43;
          }

          v40 = sub_1D9AF85D0(isUniquelyReferenced_nonNull_native, v46, 1, v40);
          if (!*(v41 + 16))
          {
LABEL_36:

            if (v42)
            {
              goto LABEL_65;
            }

            goto LABEL_37;
          }
        }

        if ((*(v40 + 3) >> 1) - *(v40 + 2) < v42)
        {
          goto LABEL_66;
        }

        swift_arrayInitWithCopy();

        if (v42)
        {
          v47 = *(v40 + 2);
          v25 = __OFADD__(v47, v42);
          v48 = v47 + v42;
          if (v25)
          {
            goto LABEL_67;
          }

          *(v40 + 2) = v48;
        }

LABEL_37:
        ++v38;
        v39 += 3;
        if (v37 == v38)
        {
          goto LABEL_53;
        }
      }
    }
  }

  v9 = *(v7 + 32);
  v10 = *(v7 + 40);
  v11 = *(v7 + 48);

  v12 = 1;
LABEL_8:
  v13 = 24 * v12;
  while (1)
  {
    if (v8 == v12)
    {

      v17 = 0.0;
      if (v2[2])
      {
        v18 = sub_1D99ED894(v9, v10);
        if (v19)
        {
          v17 = *(v2[7] + 4 * v18);
        }
      }

      if (v11 <= v17)
      {
        v11 = v17;
      }

      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = sub_1D99ED894(v9, v10);
      v23 = v2[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_69;
      }

      v27 = v22;
      if (v2[3] >= v26)
      {
        if ((v20 & 1) == 0)
        {
          v32 = v21;
          sub_1D9C13E54();
          v21 = v32;
          if (v27)
          {
LABEL_3:
            v6 = v21;

            *(v2[7] + 4 * v6) = v11;
            goto LABEL_4;
          }

          goto LABEL_24;
        }
      }

      else
      {
        sub_1D9C09080(v26, v20);
        v21 = sub_1D99ED894(v9, v10);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_71;
        }
      }

      if (v27)
      {
        goto LABEL_3;
      }

LABEL_24:
      v2[(v21 >> 6) + 8] |= 1 << v21;
      v29 = (v2[6] + 16 * v21);
      *v29 = v9;
      v29[1] = v10;
      *(v2[7] + 4 * v21) = v11;
      v30 = v2[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_70;
      }

      v2[2] = v31;
      goto LABEL_4;
    }

    if (v12 >= *(v7 + 16))
    {
      break;
    }

    ++v12;
    v14 = v13 + 24;
    v15 = *(v7 + v13 + 48);
    v13 += 24;
    if (v11 < v15)
    {
      v9 = *(v7 + v14 + 8);
      v16 = *(v7 + v14 + 16);

      v11 = v15;
      v10 = v16;
      goto LABEL_8;
    }
  }

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
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

uint64_t sub_1D9BD76C0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v85 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v90 = (&v85 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v85 - v18;
  v102 = *a3;
  v19 = *(a1 + 16);
  v97 = (v14 + 48);
  v98 = (v14 + 56);
  v21 = v20;
  v96 = (a2 + 32);
  v92 = 0x80000001D9CA2910;
  v93 = 0x80000001D9CA2950;
  v91 = a1;

  v23 = 0;
  v101 = MEMORY[0x1E69E7CC0];
  v94 = v19;
  v95 = v21;
  v87 = v7;
  v88 = a2;
  v85 = v13;
  v86 = v9;
  v89 = v12;
  v24 = v19 == 0;
  if (!v19)
  {
    goto LABEL_5;
  }

LABEL_2:
  if (v24)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v19 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
LABEL_132:
    __break(1u);
    return result;
  }

  v25 = v90;
  v26 = v91 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23;
  v27 = *(v13 + 48);
  *v90 = v23;
  sub_1D9A5521C(v26, v25 + v27, type metadata accessor for VisualUnderstanding.ImageRegion);
  v28 = v25;
  v21 = v95;
  sub_1D99B1C20(v28, v95, &qword_1ECB510F0);
  for (i = 0; ; i = 1)
  {
    v100 = v19;
    v30 = v99;
    (*v98)(v21, i, 1, v13);
    sub_1D99B1C20(v21, v30, &qword_1ECB510F8);
    if ((*v97)(v30, 1, v13) == 1)
    {
      break;
    }

    v31 = v30;
    v32 = *v30;
    result = sub_1D9BD8474(v31 + *(v13 + 48), v12, type metadata accessor for VisualUnderstanding.ImageRegion);
    v33 = *(a2 + 16);
    v34 = v96;
    do
    {
      if (!v33)
      {
        goto LABEL_122;
      }

      v35 = *v34++;
      --v33;
    }

    while (v35 != v32);
    v36 = *(v12 + 6);
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = 0;
      v39 = (v36 + 157);
      v40 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        if (v38 < *(v36 + 16))
        {
          v41 = *(v39 - 109);
          v121[0] = *(v39 - 125);
          v121[1] = v41;
          v42 = *(v39 - 93);
          v43 = *(v39 - 77);
          v44 = *(v39 - 45);
          v121[4] = *(v39 - 61);
          v121[5] = v44;
          v121[2] = v42;
          v121[3] = v43;
          v45 = *(v39 - 29);
          v46 = *(v39 - 13);
          v47 = *(v39 + 3);
          *(v123 + 13) = v39[1];
          v122 = v46;
          v123[0] = v47;
          v121[6] = v45;
          ++v38;
          v48 = *(v39 - 45);
          v118 = *(v39 - 61);
          v119 = v48;
          v120[0] = *(v39 - 29);
          *(v120 + 12) = *(v39 - 17);
          v49 = *(v39 - 109);
          v114 = *(v39 - 125);
          v115 = v49;
          v50 = *(v39 - 77);
          v116 = *(v39 - 93);
          v117 = v50;
          v51 = BYTE12(v122);
          v52 = v39[1];
          v53 = 0xE300000000000000;
          v112 = *v39;
          v113 = v52;
          v54 = 7631457;
          switch(LOBYTE(v121[0]))
          {
            case 1:
              v53 = 0xE600000000000000;
              v54 = 0x65727574616ELL;
              break;
            case 2:
              v53 = 0xE800000000000000;
              v54 = 0x6B72616D646E616CLL;
              break;
            case 3:
              v54 = 0x4C6C61727574616ELL;
              v53 = 0xEF6B72616D646E61;
              break;
            case 4:
              v53 = 0xE500000000000000;
              v54 = 0x616964656DLL;
              break;
            case 5:
              v53 = 0xE400000000000000;
              v54 = 1802465122;
              break;
            case 6:
              v53 = 0xE500000000000000;
              v54 = 0x6D75626C61;
              break;
            case 7:
              v53 = 0xE400000000000000;
              v54 = 1937006947;
              break;
            case 8:
              v53 = 0xE400000000000000;
              v54 = 1936158564;
              break;
            case 9:
              v53 = 0xE700000000000000;
              v55 = 1835626081;
              goto LABEL_32;
            case 0xA:
              v53 = 0xE500000000000000;
              v54 = 0x7364726962;
              break;
            case 0xB:
              v53 = 0xE700000000000000;
              v54 = 0x73746365736E69;
              break;
            case 0xC:
              v53 = 0xE800000000000000;
              v54 = 0x73656C6974706572;
              break;
            case 0xD:
              v53 = 0xE700000000000000;
              v55 = 1835884909;
LABEL_32:
              v54 = v55 | 0x736C6100000000;
              break;
            case 0xE:
              v54 = 0xD000000000000010;
              v53 = v92;
              break;
            case 0xF:
              v53 = 0xE700000000000000;
              v54 = 0x6C657261707061;
              break;
            case 0x10:
              v54 = 0x726F737365636361;
              v53 = 0xEB00000000736569;
              break;
            case 0x11:
              v53 = 0xE400000000000000;
              v54 = 1685024614;
              break;
            case 0x12:
              v53 = 0xEA0000000000746ELL;
              v54 = 0x6F726665726F7473;
              break;
            case 0x13:
              v56 = 1852270963;
              goto LABEL_39;
            case 0x14:
              v54 = 0xD000000000000011;
              v53 = v93;
              break;
            case 0x15:
              v56 = 1869903201;
LABEL_39:
              v54 = v56 | 0x626D795300000000;
              v53 = 0xEA00000000006C6FLL;
              break;
            case 0x16:
              v54 = 0x676F4C646E617262;
              v53 = 0xEF6C6F626D79536FLL;
              break;
            case 0x17:
              v53 = 0xE700000000000000;
              v54 = 0x65646F63726162;
              break;
            case 0x18:
              v54 = 0x727574706C756373;
              v53 = 0xE900000000000065;
              break;
            case 0x19:
              v53 = 0xE700000000000000;
              v54 = 0x656E696C796B73;
              break;
            case 0x1A:
              v53 = 0xE800000000000000;
              v54 = 0x44327463656A626FLL;
              break;
            default:
              break;
          }

          v57 = 0xE300000000000000;
          v58 = 7631457;
          switch(v102)
          {
            case 1:
              v57 = 0xE600000000000000;
              if (v54 == 0x65727574616ELL)
              {
                goto LABEL_93;
              }

              goto LABEL_96;
            case 2:
              v57 = 0xE800000000000000;
              if (v54 != 0x6B72616D646E616CLL)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 3:
              v57 = 0xEF6B72616D646E61;
              if (v54 != 0x4C6C61727574616ELL)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 4:
              v57 = 0xE500000000000000;
              if (v54 != 0x616964656DLL)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 5:
              v57 = 0xE400000000000000;
              if (v54 != 1802465122)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 6:
              v57 = 0xE500000000000000;
              if (v54 != 0x6D75626C61)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 7:
              v57 = 0xE400000000000000;
              if (v54 != 1937006947)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 8:
              v57 = 0xE400000000000000;
              if (v54 != 1936158564)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 9:
              v57 = 0xE700000000000000;
              v60 = 1835626081;
              goto LABEL_75;
            case 10:
              v57 = 0xE500000000000000;
              if (v54 != 0x7364726962)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 11:
              v57 = 0xE700000000000000;
              v59 = 0x746365736E69;
              goto LABEL_76;
            case 12:
              v57 = 0xE800000000000000;
              if (v54 != 0x73656C6974706572)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 13:
              v57 = 0xE700000000000000;
              v60 = 1835884909;
LABEL_75:
              v59 = v60 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_76:
              if (v54 != (v59 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 14:
              v57 = v92;
              if (v54 != 0xD000000000000010)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 15:
              v57 = 0xE700000000000000;
              if (v54 != 0x6C657261707061)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 16:
              v57 = 0xEB00000000736569;
              if (v54 != 0x726F737365636361)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 17:
              v57 = 0xE400000000000000;
              if (v54 != 1685024614)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 18:
              v57 = 0xEA0000000000746ELL;
              if (v54 != 0x6F726665726F7473)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 19:
              v61 = 1852270963;
              goto LABEL_89;
            case 20:
              v57 = v93;
              if (v54 != 0xD000000000000011)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 21:
              v61 = 1869903201;
LABEL_89:
              v57 = 0xEA00000000006C6FLL;
              if (v54 != (v61 | 0x626D795300000000))
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 22:
              v57 = 0xEF6C6F626D79536FLL;
              if (v54 != 0x676F4C646E617262)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 23:
              v57 = 0xE700000000000000;
              v58 = 0x65646F63726162;
              goto LABEL_92;
            case 24:
              v57 = 0xE900000000000065;
              if (v54 != 0x727574706C756373)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 25:
              v57 = 0xE700000000000000;
              if (v54 != 0x656E696C796B73)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            case 26:
              v57 = 0xE800000000000000;
              if (v54 != 0x44327463656A626FLL)
              {
                goto LABEL_96;
              }

              goto LABEL_93;
            default:
LABEL_92:
              if (v54 != v58)
              {
                goto LABEL_96;
              }

LABEL_93:
              if (v53 == v57)
              {
                sub_1D99AE054(v121, &v105);
              }

              else
              {
LABEL_96:
                v62 = sub_1D9C7E7DC();
                sub_1D99AE054(v121, &v105);

                if ((v62 & 1) == 0)
                {
                  goto LABEL_99;
                }
              }

              if (BYTE12(v122))
              {
                v51 = 0;
              }

LABEL_99:
              v109 = v118;
              v110 = v119;
              v111[0] = v120[0];
              *(v111 + 12) = *(v120 + 12);
              v105 = v114;
              v106 = v115;
              v107 = v116;
              v108 = v117;
              v103 = v112;
              v104 = v113;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D9AF8974(0, *(v40 + 16) + 1, 1, v40);
                v40 = result;
              }

              v64 = *(v40 + 16);
              v63 = *(v40 + 24);
              if (v64 >= v63 >> 1)
              {
                result = sub_1D9AF8974((v63 > 1), v64 + 1, 1, v40);
                v40 = result;
              }

              *(v40 + 16) = v64 + 1;
              v65 = v40 + 160 * v64;
              v67 = v107;
              v66 = v108;
              v68 = v106;
              *(v65 + 32) = v105;
              *(v65 + 48) = v68;
              *(v65 + 64) = v67;
              *(v65 + 80) = v66;
              v69 = v109;
              v70 = v110;
              v71 = v111[0];
              *(v65 + 140) = *(v111 + 12);
              *(v65 + 112) = v70;
              *(v65 + 128) = v71;
              *(v65 + 96) = v69;
              *(v65 + 156) = v51;
              v72 = v103;
              *(v65 + 173) = v104;
              *(v65 + 157) = v72;
              v39 += 10;
              if (v37 == v38)
              {
                goto LABEL_106;
              }

              continue;
          }
        }

        break;
      }

      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v40 = MEMORY[0x1E69E7CC0];
LABEL_106:

    v12 = v89;
    *(v89 + 6) = v40;
    v73 = *(v40 + 16);
    if (v73)
    {
      v74 = 0;
      v75 = (v40 + 156);
      v76 = MEMORY[0x1E69E7CC0];
      while (v74 < *(v40 + 16))
      {
        if (*v75)
        {
          v77 = *(v75 - 3);
        }

        else
        {
          v77 = 0.0;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D9AF84B8(0, *(v76 + 16) + 1, 1, v76);
          v76 = result;
        }

        v79 = *(v76 + 16);
        v78 = *(v76 + 24);
        if (v79 >= v78 >> 1)
        {
          result = sub_1D9AF84B8((v78 > 1), v79 + 1, 1, v76);
          v76 = result;
        }

        ++v74;
        *(v76 + 16) = v79 + 1;
        *(v76 + 4 * v79 + 32) = v77;
        v75 += 40;
        if (v73 == v74)
        {
          goto LABEL_119;
        }
      }

      goto LABEL_130;
    }

    v76 = MEMORY[0x1E69E7CC0];
LABEL_119:

    v80 = sub_1D9BC1BF0(v76);

    v81 = *&v80;
    if ((v80 & 0x100000000) != 0)
    {
      v81 = 0.0;
    }

    *(v12 + 18) = v81;
    v7 = v87;
    a2 = v88;
    v13 = v85;
    v9 = v86;
    v21 = v95;
LABEL_122:
    sub_1D9A5521C(v12, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v101 = sub_1D9AF8A90(0, v101[2] + 1, 1, v101);
    }

    v83 = v101[2];
    v82 = v101[3];
    if (v83 >= v82 >> 1)
    {
      v101 = sub_1D9AF8A90(v82 > 1, v83 + 1, 1, v101);
    }

    v84 = v101;
    v101[2] = v83 + 1;
    sub_1D9BD8474(v9, v84 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v83, type metadata accessor for VisualUnderstanding.ImageRegion);
    result = sub_1D9BD8414(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
    v19 = v94;
    v23 = v100;
    v24 = v100 >= v94;
    if (v100 != v94)
    {
      goto LABEL_2;
    }

LABEL_5:
    ;
  }

  return v101;
}

uint64_t sub_1D9BD8414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9BD8474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1D9BD84DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
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
  v19 = OBJC_IVAR____TtC12VisualLookUp19ApparelModelFactory_modelInfo;
  v20 = v98;
  result = sub_1D9C1B898(v18, v4 + OBJC_IVAR____TtC12VisualLookUp19ApparelModelFactory_modelInfo, 0x6972656767697274, 0xEA0000000000676ELL, 0x74696E676F636572, 0xEB000000006E6F69);
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
          *(v48 + 16) = sub_1D9BD9A6C;
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
          *(v78 + 16) = sub_1D9BD9A6C;
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
        v64[3] = sub_1D9BD9A6C;
        v64[4] = v30;
        v65 = objc_allocWithZone(MEMORY[0x1E6984468]);
        v99[4] = sub_1D99A1A20;
        v99[5] = v64;
        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 1107296256;
        v99[2] = sub_1D9BD99E0;
        v99[3] = &block_descriptor_21;
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

void sub_1D9BD9020(uint64_t a1, void (*a2)(id *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
      v12 = Strong + OBJC_IVAR____TtC12VisualLookUp19ApparelModelFactory_modelInfo;
      v13 = type metadata accessor for MLModelInfo(0);
      sub_1D99A7FF8(*(v12 + *(v13 + 32)), v27);
      v14 = *(a5 + 144);
      type metadata accessor for DurationMeasurement();
      swift_allocObject();

      sub_1D9AFD4B8(v27, v14);

      sub_1D9BD9258(v24, a5, a6, &v19);
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

uint64_t sub_1D9BD9258@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v49 = a2;
  v47 = a4;
  v48 = a3;
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  result = (*(v14 + 8))(v13, v14);
  if (!v4)
  {
    v16 = v48;
    v17 = v6;
    v18 = v49;
    if (*(*(result + 24) + 16) == 1)
    {
      v19 = v10;
      v20 = result;
      sub_1D9B6242C(v50 + OBJC_IVAR____TtC12VisualLookUp19ApparelModelFactory_modelInfo, v12, type metadata accessor for MLModelInfo);
      if (v16 && *(v16 + 16) && (v21 = sub_1D99ED894(0x6E69646465626D65, 0xE900000000000067), (v22 & 1) != 0))
      {
        v23 = (*(v16 + 56) + 16 * v21);
        v24 = v23[1];
        v50 = *v23;
      }

      else
      {
        v50 = 0;
        v24 = 0xE000000000000000;
      }

      v33 = *(v20 + 24);
      if (*(v33 + 16) && (v34 = sub_1D99ED894(0x6E69646465626D65, 0xE900000000000067), (v35 & 1) != 0))
      {
        v36 = *(*(v33 + 56) + 8 * v34);
        v38 = sub_1D9C18DE8(v36);
        v48 = sub_1D9C19020(v38);
        v39 = &v12[*(v19 + 24)];
        v40 = v39[1];
        v51 = *v39;
        v52 = v40;

        MEMORY[0x1DA73DF90](v50, v24);

        v41 = v51;
        v42 = v52;
        sub_1D99A19C0(v12, type metadata accessor for MLModelInfo);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515B8);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1D9C85660;
        *(v43 + 32) = v48;
        *(v43 + 40) = v41;
        *(v43 + 48) = v42;

        v44 = *(v18 + 88);
        v45 = v47;
        *v47 = *(v18 + 72);
        v45[1] = v44;
        v46 = MEMORY[0x1E69E7CC0];
        *(v45 + 4) = v43;
        *(v45 + 5) = v46;
      }

      else
      {

        sub_1D99A182C();
        swift_allocError();
        *v37 = 0xD00000000000001FLL;
        *(v37 + 8) = 0x80000001D9CAAEC0;
        *(v37 + 16) = 4;
        swift_willThrow();

        return sub_1D99A19C0(v12, type metadata accessor for MLModelInfo);
      }
    }

    else
    {
      v25 = v7;
      static Logger.argos.getter(v9);
      v26 = sub_1D9C7D8BC();
      v27 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = 1;
        _os_log_impl(&dword_1D9962000, v26, v27, "Apparel model expected %ld outputs", v28, 0xCu);
        MEMORY[0x1DA7405F0](v28, -1, -1);
      }

      (*(v25 + 8))(v9, v17);
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_1D9C7E40C();

      v51 = 0x6E69746365707845;
      v52 = 0xEA00000000002067;
      v53 = 1;
      v29 = sub_1D9C7E7AC();
      MEMORY[0x1DA73DF90](v29);

      MEMORY[0x1DA73DF90](0x7374757074756F20, 0xE800000000000000);
      v30 = v51;
      v31 = v52;
      sub_1D99A182C();
      swift_allocError();
      *v32 = v30;
      *(v32 + 8) = v31;
      *(v32 + 16) = 4;
      swift_willThrow();
    }
  }

  return result;
}

BOOL sub_1D9BD976C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12VisualLookUp19ApparelModelFactory_modelInfo;
  v5 = type metadata accessor for MLModelInfo(0);
  return sub_1D9AEA42C(*(v4 + *(v5 + 24)), *(v4 + *(v5 + 24) + 8), a2);
}

uint64_t sub_1D9BD97C8()
{
  sub_1D99A19C0(v0 + OBJC_IVAR____TtC12VisualLookUp19ApparelModelFactory_modelInfo, type metadata accessor for MLModelInfo);
}

uint64_t sub_1D9BD982C()
{
  v1 = OBJC_IVAR____TtC12VisualLookUp19ApparelModelFactory_modelInfo;

  sub_1D99A19C0(v0 + v1, type metadata accessor for MLModelInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ApparelModelFactory()
{
  result = qword_1EDD33AF8;
  if (!qword_1EDD33AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9BD9934()
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

void sub_1D9BD99E0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1D9BD9A98(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = VisualUnderstanding.ImageRegion.domainInfo.getter();
    if (*(v2 + 16))
    {
      v3 = *(v2 + 144);
      v37 = *(v2 + 128);
      v38 = v3;
      v39[0] = *(v2 + 160);
      *(v39 + 13) = *(v2 + 173);
      v4 = *(v2 + 80);
      v33 = *(v2 + 64);
      v34 = v4;
      v5 = *(v2 + 112);
      v35 = *(v2 + 96);
      v36 = v5;
      v6 = *(v2 + 48);
      v31 = *(v2 + 32);
      v32 = v6;
      sub_1D99AE054(&v31, &v22);

      v28 = v37;
      v29 = v38;
      v30[0] = v39[0];
      *(v30 + 13) = *(v39 + 13);
      v24 = v33;
      v25 = v34;
      v26 = v35;
      v27 = v36;
      v22 = v31;
      v23 = v32;
      v7 = sub_1D9BD9D80();
      v9 = v8;
      *&v22 = sub_1D9C7DC7C();
      *(&v22 + 1) = v10;

      MEMORY[0x1DA73DF90](v7, v9);

      sub_1D99AE0B0(&v31);
      v11 = *(&v22 + 1);
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = [objc_allocWithZone(MEMORY[0x1E69CA3F0]) init];
  [v12 setType_];
  if (v11)
  {
    v13 = sub_1D9C7DC4C();
  }

  else
  {
    v13 = 0;
  }

  [v12 setSuggestion_];

  type metadata accessor for VisualUnderstanding.ImageRegion();
  sub_1D9C7B91C();
  v14 = sub_1D9C7DC4C();

  [v12 setIdentifier_];

  v15 = VisualUnderstanding.ImageRegion.domainInfo.getter();
  if (*(v15 + 16))
  {
    v16 = *(v15 + 144);
    v37 = *(v15 + 128);
    v38 = v16;
    v39[0] = *(v15 + 160);
    *(v39 + 13) = *(v15 + 173);
    v17 = *(v15 + 80);
    v33 = *(v15 + 64);
    v34 = v17;
    v18 = *(v15 + 112);
    v35 = *(v15 + 96);
    v36 = v18;
    v19 = *(v15 + 48);
    v31 = *(v15 + 32);
    v32 = v19;
    sub_1D99AE054(&v31, &v22);

    v28 = v37;
    v29 = v38;
    v30[0] = v39[0];
    *(v30 + 13) = *(v39 + 13);
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v22 = v31;
    v23 = v32;
    sub_1D9BD9EAC();
    sub_1D99AE0B0(&v31);
  }

  else
  {
  }

  v20 = sub_1D9C7DC4C();

  [v12 setTopicIdentifier_];

  return v12;
}

uint64_t sub_1D9BD9D80()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = sub_1D9C7DC7C();
  v6 = v5;
  if (v4 == sub_1D9C7DC7C() && v6 == v7)
  {

    if (v1)
    {
      v11 = v3;
    }

    else
    {
      v11 = 0;
    }

    if ((v11 & 1) == 0)
    {
      return 0;
    }

LABEL_12:
    sub_1D9C7E40C();

    strcpy(v12, ":dynamicGlyph:");
    HIBYTE(v12[1]) = -18;
    MEMORY[0x1DA73DF90](v2, v1);
    return v12[0];
  }

  v9 = sub_1D9C7E7DC();

  result = 0;
  if ((v9 & v3 & 1) != 0 && v1)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1D9BD9EAC()
{
  v1 = *v0;
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 144);
  if (v5)
  {
    v6 = *(v0 + 136);
    v8 = sub_1D9A15C94(v1);
    MEMORY[0x1DA73DF90](58, 0xE100000000000000);
    if (v3)
    {
    }

    else
    {
      v2 = 0;
      v4 = 0xE000000000000000;
    }

    MEMORY[0x1DA73DF90](v2, v4);

    MEMORY[0x1DA73DF90](58, 0xE100000000000000);
    MEMORY[0x1DA73DF90](v6, v5);
  }

  else
  {
    v8 = sub_1D9A15C94(v1);
    MEMORY[0x1DA73DF90](58, 0xE100000000000000);
    if (v3)
    {
    }

    else
    {
      v2 = 0;
      v4 = 0xE000000000000000;
    }

    MEMORY[0x1DA73DF90](v2, v4);
  }

  return v8;
}

id sub_1D9BD9FB0(void *a1)
{
  v3 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1D9BD9A98(a1);
  result = [objc_allocWithZone(MEMORY[0x1E69CA4C0]) initWithSuggestion_];
  if (result)
  {
    v8 = result;
    sub_1D99B1BBC(v1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v10 = swift_allocObject();
    sub_1D9BDB950(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for VisualUnderstanding.ImageRegion);
    aBlock[4] = sub_1D9BDB4EC;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D9BDA17C;
    aBlock[3] = &block_descriptor_22;
    v11 = _Block_copy(aBlock);
    v12 = v8;

    [v12 setVI:v11 searchSuggestionFactory:?];
    _Block_release(v11);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D9BDA17C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void *sub_1D9BDA1E4()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_1D9BDA214()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_1D9BDA23C()
{
  v1 = v0;
  v2 = type metadata accessor for VisualSearchResultInternal(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1D99AB100(v1, &v11 - v6, &unk_1ECB53570);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D99A6AE0(v7, &unk_1ECB53570);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1D9BDB950(v7, v4, type metadata accessor for VisualSearchResultInternal);
    v9 = *(v4 + 23);
    if (*(v9 + 16))
    {
      v8 = *(v9 + 72);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    sub_1D9BDB9B8(v4, type metadata accessor for VisualSearchResultInternal);
  }

  return v8;
}

void sub_1D9BDA3C0(uint64_t a1)
{
  v3 = [v1 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D9C7DC7C();
    v7 = v6;

    if (v5 == 0xD00000000000001BLL && 0x80000001D9CA7E60 == v7)
    {
      goto LABEL_15;
    }

    v9 = sub_1D9C7E7DC();

    if (v9)
    {
      goto LABEL_16;
    }
  }

  v10 = [v1 bundleIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D9C7DC7C();
    v14 = v13;

    if (v12 == 0xD000000000000020 && 0x80000001D9CA7E80 == v14)
    {
    }

    else
    {
      v16 = sub_1D9C7E7DC();

      if ((v16 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v17 = 0x1E69CA130;
    v18 = 0x1E69CA020uLL;
    goto LABEL_19;
  }

LABEL_13:
  sub_1D9BDA928();
  while (a1 < 0)
  {
    __break(1u);
LABEL_15:

LABEL_16:
    v17 = 0x1E69CA100;
    v18 = 0x1E69CA578uLL;
LABEL_19:
    sub_1D9BDA5AC(v17, v18);
  }

  v19 = objc_allocWithZone(MEMORY[0x1E69CA418]);
  sub_1D9A0835C(0, &qword_1ECB54138);
  v20 = sub_1D9C7DF1C();

  v21 = [v19 initWithResults:v20 section:v1 localSectionPosition:a1 personalizationScore:0.0];

  if (!v21)
  {
    __break(1u);
  }
}

id sub_1D9BDA5AC(Class *a1, uint64_t a2)
{
  result = [v3 results];
  if (!result)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    return result;
  }

  v8 = result;
  sub_1D9A0835C(0, &qword_1ECB528F0);
  v9 = sub_1D9C7DF2C();

  if (v9 >> 62)
  {
    goto LABEL_34;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

  while ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1DA73E610](0, v9);
LABEL_7:
    v4 = v10;

    result = [v4 inlineCard];
    if (!result)
    {
      goto LABEL_47;
    }

    v11 = result;
    v2 = &off_1E858B000;
    v12 = [result cardSections];

    if (!v12)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_1D9A0835C(0, &qword_1ECB524A0);
    v5 = sub_1D9C7DF2C();

    if (v5 >> 62)
    {
      goto LABEL_38;
    }

    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_39;
    }

LABEL_11:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1DA73E610](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_45:
        v19 = sub_1D9C7E50C();
        goto LABEL_18;
      }

      v13 = *(v5 + 32);
    }

    v14 = v13;

    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (!v15 || (v16 = v15, (v17 = [v15 v2[339]]) == 0))
    {

      return MEMORY[0x1E69E7CC0];
    }

    v26 = v14;
    v27 = v16;
    v18 = v17;
    v6 = sub_1D9C7DF2C();

    v30 = MEMORY[0x1E69E7CC0];
    v5 = v4;
    v2 = (v6 & 0xFFFFFFFFFFFFFF8);
    if (v6 >> 62)
    {
      goto LABEL_45;
    }

    v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
    v20 = 0;
    v4 = (v6 & 0xC000000000000001);
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v19 == v20)
      {

        return v9;
      }

      if (v4)
      {
        v21 = MEMORY[0x1DA73E610](v20, v6);
      }

      else
      {
        if (v20 >= v2[2])
        {
          goto LABEL_33;
        }

        v21 = *(v6 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      sub_1D9BDAB68(v20, v21, v5, v27, a2, a1);
      v25 = v24;

      ++v20;
      if (v25)
      {
        MEMORY[0x1DA73E0E0]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D9C7DF4C();
        }

        sub_1D9C7DF6C();
        v9 = v30;
        v20 = v23;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    if (!sub_1D9C7E50C())
    {
      goto LABEL_40;
    }
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_38:
  if (sub_1D9C7E50C())
  {
    goto LABEL_11;
  }

LABEL_39:

LABEL_40:

  return MEMORY[0x1E69E7CC0];
}

void sub_1D9BDA928()
{
  v1 = [v0 results];
  if (!v1)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v2 = v1;
  sub_1D9A0835C(0, &qword_1ECB528F0);
  v3 = sub_1D9C7DF2C();

  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (1)
    {
      sub_1D9C7E4AC();
      if (v5 < 0)
      {
        break;
      }

      if (v4)
      {
        v16 = v3 & 0xFFFFFFFFFFFFFF8;
        v7 = sub_1D9C7E50C();
        v6 = v3;
      }

      else
      {
        v6 = v3;
        v16 = v3 & 0xFFFFFFFFFFFFFF8;
        v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = 0;
      v17 = v6 & 0xC000000000000001;
      v4 = v7 & ~(v7 >> 63);
      v3 = v5;
      v9 = v6;
      while (v4 != v8)
      {
        if (v17)
        {
          v10 = MEMORY[0x1DA73E610](v8);
        }

        else
        {
          if (v8 >= *(v16 + 16))
          {
            goto LABEL_18;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = objc_allocWithZone(MEMORY[0x1E69CA388]);
        v13 = sub_1D9C7DF1C();
        v14 = sub_1D9C7DF1C();
        v15 = [v12 initWithResult:v11 hiddenResults:v13 duplicateResults:v14 localResultPosition:v8];

        if (!v15)
        {
          goto LABEL_23;
        }

        ++v8;
        sub_1D9C7E48C();
        sub_1D9C7E4BC();
        sub_1D9C7E4CC();
        sub_1D9C7E49C();
        v6 = v9;
        if (v3 == v8)
        {

          return;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v5 = sub_1D9C7E50C();
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_20:
}

void sub_1D9BDAB68(uint64_t a1, void *a2, void *a3, id a4, uint64_t a5, Class *a6)
{
  v10 = &selRef_arrayWithObjects_count_;
  v11 = [objc_allocWithZone(MEMORY[0x1E69CA3E8]) init];
  [v11 setType_];
  v12 = [a3 resultBundleId];
  [v11 setResultBundleId_];

  v13 = [a2 resultIdentifier];
  [v11 setIdentifier_];

  v14 = sub_1D9C7DC4C();
  [v11 setSectionBundleIdentifier_];

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = v15;
  v17 = qword_1ECB50CC0;
  v18 = a2;
  if (v17 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v19 = off_1ECB538C0;
    os_unfair_lock_lock(off_1ECB538C0 + 6);
    v20 = [*(v19 + 2) objectForKey_];
    if (v20)
    {
      v21 = v20;
      sub_1D9C7DC6C();
    }

    os_unfair_lock_unlock(v19 + 6);

LABEL_7:
    a6 = [objc_allocWithZone(*a6) v10[148]];
    v22 = [a4 cardSectionId];
    [(Class *)a6 setCardSectionId:v22];

    v23 = [objc_allocWithZone(MEMORY[0x1E69C9F08]) v10[148]];
    v24 = [a2 cardSectionId];
    [v23 setCardSectionId_];

    v25 = [a2 resultIdentifier];
    [v23 setResultIdentifier_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D9C88F90;
    *(v26 + 32) = v23;
    sub_1D9A0835C(0, &qword_1ECB524A0);
    a4 = v23;
    v27 = sub_1D9C7DF1C();

    [(Class *)a6 setCardSections:v27];

    v28 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) v10[148]];
    [v11 setInlineCard_];

    v29 = [v11 inlineCard];
    if (!v29)
    {
      __break(1u);
      goto LABEL_18;
    }

    v30 = v29;
    v18 = swift_allocObject();
    *(v18 + 1) = xmmword_1D9C88F90;
    *(v18 + 4) = a6;
    v16 = sub_1D9C7DF1C();

    [v30 setCardSections_];

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      a2 = v31;
      if (qword_1ECB50CC0 != -1)
      {
        swift_once();
      }

      v10 = off_1ECB538C0;
      os_unfair_lock_lock(off_1ECB538C0 + 6);
      [v10[2] removeObjectForKey_];
      os_unfair_lock_unlock(v10 + 6);
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v32 = objc_allocWithZone(MEMORY[0x1E69CA388]);
  sub_1D9A0835C(0, &qword_1ECB528F0);
  v33 = sub_1D9C7DF1C();
  v34 = sub_1D9C7DF1C();
  v35 = [v32 initWithResult:v11 hiddenResults:v33 duplicateResults:v34 localResultPosition:a1];

  if (v35)
  {

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1D9BDB0A4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = a2[9];
  v56 = a2[8];
  v57 = v17;
  v58 = a2[10];
  v59 = *(a2 + 22);
  v18 = a2[5];
  v52 = a2[4];
  v53 = v18;
  v19 = a2[7];
  v54 = a2[6];
  v55 = v19;
  v20 = a2[1];
  v48 = *a2;
  v49 = v20;
  v21 = a2[3];
  v50 = a2[2];
  v51 = v21;
  sub_1D99AB100(a1, &v32 - v15, &unk_1ECB51B10);
  Context = type metadata accessor for VisualQueryContext();
  v23 = *(*(Context - 8) + 48);
  if (v23(v16, 1, Context) == 1)
  {
    sub_1D99A6AE0(v16, &unk_1ECB51B10);
    v35 = 0;
  }

  else
  {
    v35 = *&v16[*(Context + 52)];
    sub_1D9BDB9B8(v16, type metadata accessor for VisualQueryContext);
  }

  sub_1D99AB100(a1, v13, &unk_1ECB51B10);
  if (v23(v13, 1, Context) == 1)
  {
    sub_1D99A6AE0(v13, &unk_1ECB51B10);
  }

  else
  {
    v25 = *v13;
    v24 = *(v13 + 1);

    sub_1D9BDB9B8(v13, type metadata accessor for VisualQueryContext);
    if (v24)
    {
      goto LABEL_8;
    }
  }

  v25 = 0;
  v24 = 0xE000000000000000;
LABEL_8:
  sub_1D99AB100(a1, v10, &unk_1ECB51B10);
  if (v23(v10, 1, Context) == 1)
  {
    sub_1D99A6AE0(v10, &unk_1ECB51B10);
    v26 = 0;
  }

  else
  {
    v26 = *(v10 + 4);
    v27 = v26;
    sub_1D9BDB9B8(v10, type metadata accessor for VisualQueryContext);
  }

  v44 = v56;
  v45 = v57;
  v46 = v58;
  v47 = v59;
  v40 = v52;
  v41 = v53;
  v42 = v54;
  v43 = v55;
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v39 = v51;
  v28 = sub_1D9B67A68();
  if (*(v28 + 16))
  {
    v29 = v34;
    sub_1D99B1BBC(v28 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v34);

    v30 = sub_1D9BD9FB0(v26);
    sub_1D9BDB9B8(v29, type metadata accessor for VisualUnderstanding.ImageRegion);
    [v30 setQueryId_];
    sub_1D9A0009C(&v48);
  }

  else
  {

    sub_1D9A0009C(&v48);
    v30 = 0;
  }

  result = sub_1D99A6AE0(a1, &unk_1ECB51B10);
  *a3 = v35;
  *(a3 + 8) = v25;
  *(a3 + 16) = v24;
  *(a3 + 24) = v26;
  *(a3 + 32) = v30;
  *(a3 + 40) = 0;
  return result;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9BDB568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  sub_1D99AB100(a2, &v30 - v10, &unk_1ECB51B10);
  Context = type metadata accessor for VisualQueryContext();
  v13 = *(*(Context - 8) + 48);
  if (v13(v11, 1, Context) == 1)
  {
    sub_1D99A6AE0(v11, &unk_1ECB51B10);
    v14 = 0;
  }

  else
  {
    v14 = *&v11[*(Context + 52)];
    sub_1D9BDB9B8(v11, type metadata accessor for VisualQueryContext);
  }

  sub_1D99AB100(a2, v8, &unk_1ECB51B10);
  if (v13(v8, 1, Context) == 1)
  {
    sub_1D99A6AE0(v8, &unk_1ECB51B10);
  }

  else
  {
    v16 = *v8;
    v15 = v8[1];

    sub_1D9BDB9B8(v8, type metadata accessor for VisualQueryContext);
    if (v15)
    {
      v34 = v15;
      goto LABEL_9;
    }
  }

  v16 = 0;
  v34 = 0xE000000000000000;
LABEL_9:
  v17 = sub_1D9BDA23C();
  v18 = v17;
  v19 = v17 >> 62;
  if (v17 >> 62)
  {
    goto LABEL_25;
  }

  v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
    while (1)
    {
      v35 = MEMORY[0x1E69E7CC0];
      result = sub_1D9C7E4AC();
      if (v20 < 0)
      {
        break;
      }

      v32 = a2;
      v33 = a1;
      v30 = v16;
      v31 = v14;
      if (v19)
      {
        v19 = v18 & 0xFFFFFFFFFFFFFF8;
        v22 = sub_1D9C7E50C();
      }

      else
      {
        v19 = v18 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = 0;
      v14 = v18 & 0xC000000000000001;
      v16 = v22 & ~(v22 >> 63);
      while (v16 != v23)
      {
        if (v14)
        {
          v24 = MEMORY[0x1DA73E610](v23, v18);
        }

        else
        {
          if (v23 >= *(v19 + 16))
          {
            goto LABEL_24;
          }

          v24 = *(v18 + 8 * v23 + 32);
        }

        v25 = v24;
        sub_1D9BDA3C0(v23);
        a2 = v26;

        sub_1D9C7E48C();
        a1 = *(v35 + 16);
        sub_1D9C7E4BC();
        sub_1D9C7E4CC();
        sub_1D9C7E49C();
        if (v20 == ++v23)
        {

          a2 = v32;
          a1 = v33;
          v16 = v30;
          v14 = v31;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v20 = sub_1D9C7E50C();
      if (!v20)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:

LABEL_27:
    v27 = objc_allocWithZone(MEMORY[0x1E69CA340]);
    sub_1D9A0835C(0, &unk_1EDD2A670);
    v28 = sub_1D9C7DF1C();

    v29 = [v27 initWithSections:v28 blendingDuration:0.0];

    sub_1D99A6AE0(a2, &unk_1ECB51B10);
    result = sub_1D99A6AE0(a1, &unk_1ECB53570);
    *a3 = v14;
    *(a3 + 8) = v16;
    *(a3 + 16) = v34;
    *(a3 + 24) = v29;
    *(a3 + 32) = 0;
  }

  return result;
}

uint64_t sub_1D9BDB950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9BDB9B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D9BDBA5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9BDBAA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9BDBB08(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
        v13 = *v11;
        v12 = v11[1];

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D9AF83AC(0, *(v9 + 16) + 1, 1, v9);
          v9 = result;
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_1D9AF83AC((v14 > 1), v15 + 1, 1, v9);
          v9 = result;
        }

        v5 &= v5 - 1;
        *(v9 + 16) = v15 + 1;
        v16 = v9 + 16 * v15;
        *(v16 + 32) = v13;
        *(v16 + 40) = v12;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

void sub_1D9BDBC58(uint64_t a1@<X8>)
{
  v2 = sub_1D9C7D91C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = MEMORY[0x1DA73DAE0](v7);
  v11 = v10;
  v32 = *(v10 + 16);
  if (v32)
  {
    v25 = a1;
    v12 = 0;
    v13 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = v3 + 16;
    v31 = v3 + 88;
    v30 = *MEMORY[0x1E695FD18];
    v28 = (v3 + 96);
    v29 = (v3 + 8);
    v26 = v2;
    while (v12 < *(v11 + 16))
    {
      v16 = *(v3 + 16);
      v16(v9, v13 + *(v3 + 72) * v12, v2);
      v16(v5, v9, v2);
      v17 = (*(v3 + 88))(v5, v2);
      if (v17 == v30)
      {
        (*v28)(v5, v2);
        v18 = *v5;
        v19 = [*v5 metalDevice];
        if (v19)
        {
          v20 = v5;
          v21 = v14;
          v22 = [v19 isEqual_];
          swift_unknownObjectRelease();

          if (v22)
          {

            a1 = v25;
            v2 = v26;
            (*(v3 + 32))(v25, v9, v26);
            v24 = 0;
            goto LABEL_14;
          }

          v23 = v26;
          (*v29)(v9, v26);
          v14 = v21;
          v5 = v20;
          v2 = v23;
        }

        else
        {
          (*v29)(v9, v2);
        }
      }

      else
      {
        v15 = *v29;
        (*v29)(v9, v2);
        v15(v5, v2);
      }

      if (v32 == ++v12)
      {

        v24 = 1;
        a1 = v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

    v24 = 1;
LABEL_14:
    (*(v3 + 56))(a1, v24, 1, v2);
  }
}

void *sub_1D9BDBF78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = MEMORY[0x1E69E7CC0];
  for (i = a1 + 32; ; i += 40)
  {
    sub_1D99A17C8(i, v15);
    v5 = v16;
    v6 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v7 = (*(v6 + 16))(v5, v6);
    result = __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v8 = *(v7 + 16);
    v9 = v2[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= v2[3] >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = v9 + v8;
      }

      else
      {
        v11 = v9;
      }

      result = sub_1D9AF9190(result, v11, 1, v2);
      v2 = result;
      if (*(v7 + 16))
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v8)
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51140);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = v2[2];
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_23;
          }

          v2[2] = v14;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_21;
    }

LABEL_4:
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1D9BDC110(uint64_t a1, void *a2)
{
  if (!a1)
  {

    return a2;
  }

  v3 = a1;

  v4 = sub_1D9BDBB08(v3);
  v5 = v4;
  v44 = *(v4 + 16);
  if (!v44)
  {

    return a2;
  }

  v6 = 0;
  v7 = (v4 + 40);
  v8 = a2;
  v42 = v3;
  v43 = v4;
  v41 = a2;
  while (v6 < *(v5 + 16))
  {
    v45 = v6;
    v10 = *(v7 - 1);
    v11 = *v7;
    v12 = *(v3 + 16);

    if (v12 && (v13 = sub_1D99ED894(v10, v11), (v14 & 1) != 0))
    {
      v15 = (*(v3 + 56) + 16 * v13);
      v16 = v15[1];
      v46 = *v15;

      if (!a2[2])
      {
        goto LABEL_21;
      }
    }

    else
    {
      v46 = 0;
      v16 = 0;
      if (!a2[2])
      {
        goto LABEL_21;
      }
    }

    v17 = sub_1D99ED894(v10, v11);
    if (v18)
    {
      if (!v16)
      {
        goto LABEL_41;
      }

      v19 = (a2[7] + 16 * v17);
      v20 = *v19 == v46 && v16 == v19[1];
      if (!v20 && (sub_1D9C7E7DC() & 1) == 0)
      {

LABEL_41:

        sub_1D9BDD058();
        swift_allocError();
        swift_willThrow();
        return a2;
      }

      goto LABEL_22;
    }

LABEL_21:
    if (!v16)
    {
      v37 = sub_1D99ED894(v10, v11);
      v39 = v38;

      if (v39)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D9C12FFC();
        }

        sub_1D9C0F334(v37, v8);
      }

      goto LABEL_6;
    }

LABEL_22:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v10;
    v24 = sub_1D99ED894(v10, v11);
    v25 = v8[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_43;
    }

    v28 = v23;
    if (v8[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v16;
        if ((v23 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1D9C12FFC();
        v31 = v16;
        if ((v28 & 1) == 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_1D9C0759C(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_1D99ED894(v22, v11);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v24 = v29;
      v31 = v16;
      if ((v28 & 1) == 0)
      {
LABEL_29:
        v8[(v24 >> 6) + 8] |= 1 << v24;
        v32 = (v8[6] + 16 * v24);
        *v32 = v22;
        v32[1] = v11;
        v33 = (v8[7] + 16 * v24);
        *v33 = v46;
        v33[1] = v31;
        v34 = v8[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_44;
        }

        v8[2] = v36;
        goto LABEL_5;
      }
    }

    v9 = (v8[7] + 16 * v24);
    *v9 = v46;
    v9[1] = v31;

LABEL_5:
    a2 = v41;
    v3 = v42;
    v5 = v43;
LABEL_6:
    v6 = v45 + 1;
    v7 += 2;
    if (v44 == v45 + 1)
    {

      return v8;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

uint64_t sub_1D9BDC4C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6573726170;
  if (v2 != 1)
  {
    v4 = 0x686372616573;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x636972656E6567;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6573726170;
  if (*a2 != 1)
  {
    v8 = 0x686372616573;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x636972656E6567;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9C7E7DC();
  }

  return v11 & 1;
}

uint64_t sub_1D9BDC5B8()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9BDC654()
{
  sub_1D9C7DD6C();
}

uint64_t sub_1D9BDC6DC()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9BDC774@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9BDD00C();
  *a1 = result;
  return result;
}

void sub_1D9BDC7A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6573726170;
  if (v2 != 1)
  {
    v5 = 0x686372616573;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x636972656E6567;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *sub_1D9BDC80C()
{
  type metadata accessor for EngineResult();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = sub_1D9A43384(MEMORY[0x1E69E7CC0]);
  result = sub_1D9A43488(v1);
  *(v0 + 16) = result;
  qword_1EDD41F40 = v0;
  return result;
}

uint64_t sub_1D9BDC864(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  v4 = sub_1D9A43488(MEMORY[0x1E69E7CC0]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (a1 + 40);
    while (1)
    {
      if (v6 >= *(a1 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        sub_1D9C7E84C();
        __break(1u);
LABEL_34:

        __break(1u);
        return result;
      }

      v10 = *(v7 - 1);
      v9 = *v7;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v4;
      v12 = sub_1D99F0BB0(v6);
      v14 = *(v4 + 2);
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_30;
      }

      v18 = v13;
      if (*(v4 + 3) < v17)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v23 = v12;
      sub_1D9C13318();
      v12 = v23;
      v4 = v39;
      if (v18)
      {
LABEL_3:
        v8 = (*(v4 + 7) + 16 * v12);
        *v8 = v10;
        v8[1] = v9;

        goto LABEL_4;
      }

LABEL_12:
      *&v4[8 * (v12 >> 6) + 64] |= 1 << v12;
      *(*(v4 + 6) + 8 * v12) = v6;
      v20 = (*(v4 + 7) + 16 * v12);
      *v20 = v10;
      v20[1] = v9;
      v21 = *(v4 + 2);
      v16 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v16)
      {
        goto LABEL_31;
      }

      *(v4 + 2) = v22;
LABEL_4:
      ++v6;
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_16;
      }
    }

    sub_1D9C07B14(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_1D99F0BB0(v6);
    if ((v18 & 1) != (v19 & 1))
    {
      goto LABEL_33;
    }

LABEL_11:
    v4 = v39;
    if (v18)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_16:

  v24 = v40;
  *(v40 + 16) = v4;
  v25 = *(v24 + 24);
  v26 = *(v25 + 16);
  if (!v26)
  {
    goto LABEL_19;
  }

  v27 = sub_1D9B8E004(*(v25 + 16), 0);
  v28 = sub_1D9B8E604(&v39, v27 + 4, v26, v25);
  swift_bridgeObjectRetain_n();
  sub_1D99C74D4();
  if (v28 != v26)
  {
    __break(1u);
LABEL_19:

    v27 = MEMORY[0x1E69E7CC0];
  }

  v39 = v27;
  sub_1D99E6144(&v39);
  v7 = v37;
  if (v37)
  {
    goto LABEL_34;
  }

  v29 = v39;
  v30 = *(v40 + 16);
  v31 = *(v30 + 16);
  if (v31)
  {
    v36 = v39;
    v32 = sub_1D9B8E004(v31, 0);
    v38 = sub_1D9B8E4AC(&v39, v32 + 4, v31, v30);
    swift_bridgeObjectRetain_n();
    sub_1D99C74D4();
    if (v38 != v31)
    {
      goto LABEL_32;
    }

    v29 = v36;
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  v39 = v32;
  sub_1D99E6144(&v39);

  v33 = sub_1D9A1EF04(v29, v39);

  if ((v33 & 1) == 0)
  {
    sub_1D99A182C();
    swift_allocError();
    *v34 = xmmword_1D9C9C610;
    *(v34 + 16) = 4;
    swift_willThrow();
  }

  return v40;
}

unint64_t sub_1D9BDCC3C()
{
  result = qword_1ECB54140;
  if (!qword_1ECB54140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54140);
  }

  return result;
}

unint64_t sub_1D9BDCCA4()
{
  result = qword_1EDD34778;
  if (!qword_1EDD34778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD34778);
  }

  return result;
}

uint64_t sub_1D9BDCD0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_1D99A17C8(v2, &v7);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(&v7, v8);
      v5 = (*(v4 + 8))(v3, v4);
      if ((v5 & 1) == 0)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v7);
      v2 += 40;
      if (!--v1)
      {
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        goto LABEL_8;
      }
    }

    sub_1D99BB604(&v7, v10);
LABEL_8:
    sub_1D99BB294(v10);
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_1D9BDCDE4(uint64_t a1)
{
  v2 = sub_1D9A442BC(MEMORY[0x1E69E7CC0]);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v29 = a1;

  v8 = 0;
  if (v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v9 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
  }

  while (!v6);
  while (1)
  {
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v11 = (*(v29 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(v29 + 56) + 8 * v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1D99ED894(v13, v12);
    v18 = v2[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v2[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = v16;
        sub_1D9C16914();
        v16 = v27;
      }
    }

    else
    {
      sub_1D9C0E82C(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1D99ED894(v13, v12);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_24;
      }
    }

    v6 &= v6 - 1;
    if (v22)
    {
      *(v2[7] + 8 * v16) = v14;

      v8 = v9;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v2[(v16 >> 6) + 8] |= 1 << v16;
      v24 = (v2[6] + 16 * v16);
      *v24 = v13;
      v24[1] = v12;
      *(v2[7] + 8 * v16) = v14;
      v25 = v2[2];
      v20 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v26;
      v8 = v9;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v9 = v8;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

uint64_t sub_1D9BDD00C()
{
  v0 = sub_1D9C7E56C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D9BDD058()
{
  result = qword_1ECB54150;
  if (!qword_1ECB54150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54150);
  }

  return result;
}

unint64_t sub_1D9BDD0E0()
{
  result = qword_1ECB54158;
  if (!qword_1ECB54158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54158);
  }

  return result;
}

uint64_t sub_1D9BDD17C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v55[0] = 0x656E69676E454C4DLL;
  v55[1] = 0xE800000000000000;
  v55[2] = "RunnerCache.handle";
  v55[3] = 18;
  v56 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  v49 = sub_1D9AFD4B8(v55, 0);
  static Logger.argos.getter(v16);
  sub_1D9A3E0E0(v13);
  v17 = *(v6 + 8);
  v52 = v6 + 8;
  v53 = v5;
  v17(v16, v5);
  v18 = sub_1D9C7D8BC();
  v19 = sub_1D9C7E09C();
  v20 = os_log_type_enabled(v18, v19);
  v51 = a1;
  if (v20)
  {
    a1 = swift_slowAlloc();
    *a1 = 134217984;
    *(a1 + 4) = v51;
    _os_log_impl(&dword_1D9962000, v18, v19, "RunnerCache.handle %ld", a1, 0xCu);
    v21 = a1;
    LOBYTE(a1) = v51;
    MEMORY[0x1DA7405F0](v21, -1, -1);
  }

  v22 = (v17)(v13, v53);
  v48 = v4;
  if ((a1 & 0x26) != 0)
  {
    v23 = v2[3];
    MEMORY[0x1EEE9AC00](v22);
    v24 = *(v4 + 152);
    *(&v47 - 2) = *(v4 + 144);
    *(&v47 - 1) = v24;
    type metadata accessor for RunnerCacheCategory();
    sub_1D9BDE378();
    sub_1D9C7DBAC();
    v25 = v17;
    v26 = v2;
    v27 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v23 + v27));
    sub_1D9BDE35C();
    v28 = (v23 + v27);
    v29 = v26;
    v17 = v25;
    os_unfair_lock_unlock(v28);

    goto LABEL_10;
  }

  if ((a1 & 8) != 0)
  {
    v30 = v2;
    v35 = v2[3];
    MEMORY[0x1EEE9AC00](v22);
    v36 = *(v4 + 152);
    *(&v47 - 2) = *(v4 + 144);
    *(&v47 - 1) = v36;
    type metadata accessor for RunnerCacheCategory();
    sub_1D9BDE378();
    sub_1D9C7DBAC();
    v37 = (*(*v35 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v35 + v37));
    sub_1D9BDE3E8(v54);
    os_unfair_lock_unlock((v35 + v37));

    if ((v51 & 0x10) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v30 = v2;
    if ((v51 & 0x10) != 0)
    {
LABEL_7:
      v31 = v30;
      v32 = v30[3];
      MEMORY[0x1EEE9AC00](v22);
      v33 = *(v4 + 152);
      *(&v47 - 2) = *(v4 + 144);
      *(&v47 - 1) = v33;
      type metadata accessor for RunnerCacheCategory();
      sub_1D9BDE378();
      sub_1D9C7DBAC();
      v34 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v32 + v34));
      v29 = v31;
      sub_1D9BDE408(v54);
      os_unfair_lock_unlock((v32 + v34));

      goto LABEL_10;
    }
  }

  v29 = v30;
LABEL_10:
  static Logger.argos.getter(v10);
  sub_1D9A3E0E0(v50);
  v17(v10, v53);

  v38 = sub_1D9C7D8BC();
  v39 = sub_1D9C7E09C();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v51;
  if (v40)
  {
    v42 = swift_slowAlloc();
    v47 = &v47;
    *v42 = 134218240;
    *(v42 + 4) = v41;
    *(v42 + 12) = 2048;
    v43 = v29[3];
    MEMORY[0x1EEE9AC00](v42);
    v44 = *(v48 + 152);
    *(&v47 - 2) = *(v48 + 144);
    *(&v47 - 1) = v44;
    type metadata accessor for RunnerCacheCategory();
    sub_1D9BDE378();
    sub_1D9C7DBAC();
    v45 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v43 + v45));
    sub_1D9BDE3CC(v54);
    os_unfair_lock_unlock((v43 + v45));

    *(v42 + 14) = v54[0];

    _os_log_impl(&dword_1D9962000, v38, v39, "RunnerCache.handle %ld -> %ld", v42, 0x16u);
    MEMORY[0x1DA7405F0](v42, -1, -1);
  }

  else
  {
  }

  v17(v50, v53);
  sub_1D9AFCCA4();
}

uint64_t sub_1D9BDD89C()
{
  type metadata accessor for RunnerCacheCategory();
  sub_1D9BDE378();
  sub_1D9C7DBAC();
  return sub_1D9C7DB9C();
}

uint64_t sub_1D9BDD900@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for RunnerCacheCategory();
  sub_1D9BDE378();
  result = sub_1D9C7DBBC();
  if (v3)
  {
    sub_1D9BDDECC();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_1D9BDD990@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RunnerCacheCategory();
  sub_1D9BDE378();
  result = sub_1D9C7DB7C();
  *a1 = result;
  return result;
}

uint64_t sub_1D9BDD9F8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  *(v0 + 16) = 0;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1D9BDDA9C()
{
  sub_1D9BDD9F8();

  return swift_deallocClassInstance();
}

uint64_t sub_1D9BDDB3C(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9C7B7BC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RunnerCacheCategory.CachedRunnerKey();
  v5 = *(v4 + 36);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
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

  v11 = *(v4 + 40);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1D9A1EF04(v12, v13);
}

uint64_t sub_1D9BDDBE8(uint64_t a1, uint64_t a2)
{
  sub_1D9C7B80C();
  sub_1D9BDE2AC();
  sub_1D9C7DBDC();
  v4 = (v2 + *(a2 + 36));
  if (*(v4 + 8) == 1)
  {
    sub_1D9C7E8FC();
  }

  else
  {
    v5 = *v4;
    sub_1D9C7E8FC();
    MEMORY[0x1DA73EB00](v5);
  }

  v6 = *(v2 + *(a2 + 40));
  result = MEMORY[0x1DA73EAC0](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v6 + 40;
    do
    {

      sub_1D9C7DD6C();

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1D9BDDCCC(uint64_t a1)
{
  sub_1D9C7E8DC();
  sub_1D9BDDBE8(v3, a1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BDDD28(uint64_t a1, uint64_t a2)
{
  sub_1D9C7E8DC();
  sub_1D9BDDBE8(v4, a2);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BDDD6C()
{
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for RunnerCacheCategory.CachedRunnerKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
  return v0;
}

uint64_t sub_1D9BDDE78()
{
  sub_1D9BDDD6C();

  return swift_deallocClassInstance();
}

void sub_1D9BDDECC()
{
  v1 = *(v0 + 24);
  type metadata accessor for RunnerCacheCategory.CacheEntry();
  sub_1D9C7DF8C();
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_1D9BDE304();
  os_unfair_lock_unlock((v1 + v2));
}

uint64_t sub_1D9BDDFA8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D9BDDFF8()
{
  result = type metadata accessor for RunnerCacheCategory.CachedRunnerKey();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1D9BDE134()
{
  sub_1D9C7B80C();
  if (v0 <= 0x3F)
  {
    sub_1D9BDE240(319, &unk_1EDD2C378, MEMORY[0x1E69E76D8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D9BDE240(319, &qword_1EDD2C4C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9BDE240(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D9BDE2AC()
{
  result = qword_1ECB52C18;
  if (!qword_1ECB52C18)
  {
    sub_1D9C7B80C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C18);
  }

  return result;
}

uint64_t sub_1D9BDE304()
{
  type metadata accessor for RunnerCacheCategory.CacheEntry();
  sub_1D9C7DF8C();
  return sub_1D9C7DF7C();
}

unint64_t sub_1D9BDE378()
{
  result = qword_1EDD34780;
  if (!qword_1EDD34780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD34780);
  }

  return result;
}

uint64_t sub_1D9BDE42C(void **a1)
{
  v2 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E9140(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D9BE39E0(v6, type metadata accessor for VisualUnderstanding.ImageRegion, sub_1D9BE4038, sub_1D9BE3B30);
  *a1 = v3;
  return result;
}

uint64_t sub_1D9BDE510(void **a1)
{
  v2 = *(_s14DetectedResultVMa() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E918C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D9BE39E0(v6, _s14DetectedResultVMa, sub_1D9BE4A48, sub_1D9BE3DE0);
  *a1 = v3;
  return result;
}

uint64_t sub_1D9BDE5F4(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v276 = a7;
  *&v275 = a6;
  v280 = a5;
  v272 = a3;
  v266 = a2;
  v265 = a1;
  v261 = 0;
  v274 = a9;
  v10 = _s14DetectedResultVMa();
  v260 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v283 = &v253 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v270 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v278 = &v253 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v262 = (&v253 - v15);
  v271 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v264 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v263 = (&v253 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v257 = &v253 - v18;
  v259 = type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  isa = v259[-1].isa;
  MEMORY[0x1EEE9AC00](v259);
  v20 = (&v253 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB533F8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v253 - v22;
  v24 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v253 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D9C7D8DC();
  v281 = *(v28 - 8);
  v282 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v269 = &v253 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v268 = &v253 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v273 = &v253 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v253 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v253 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v253 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v279 = &v253 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v45 - 8);
  MEMORY[0x1EEE9AC00](v46);
  MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v48);
  v54 = &v253 - v53;
  v56 = *a4;
  v55 = a4[1];
  v58 = a4[2];
  v57 = a4[3];
  if (v49)
  {
    v59 = v277;
    v60 = sub_1D99ED0D0(v277[3], v49);
    if ([objc_opt_self() isCameraDPNDisabled])
    {
      v272 = 0;
      v61 = 0;
      v271 = 0;
      v62 = v273;
      v63 = v279;
    }

    else
    {
      v78 = v59;
      *&v289 = v56;
      *(&v289 + 1) = v55;
      *&v290 = v58;
      *(&v290 + 1) = v57;
      sub_1D99AB100(v280, v54, &unk_1ECB51B10);
      Context = type metadata accessor for VisualQueryContext();
      v80 = (*(*(Context - 8) + 48))(v54, 1, Context);
      v62 = v273;
      v63 = v279;
      if (v80 == 1)
      {

        sub_1D99A6AE0(v54, &unk_1ECB51B10);
        v81 = 0;
      }

      else
      {
        v81 = *&v54[*(Context + 48)];
        swift_unknownObjectRetain();

        sub_1D9BE7070(v54, type metadata accessor for VisualQueryContext);
      }

      v103 = v261;
      v104 = sub_1D9BE2BB4(0, 0, 0, v60, &v289, v81, v78[11], v274);
      if (v103)
      {

        v272 = 0;
        v61 = 0;
        v271 = 0;
      }

      else
      {
        v61 = v105;
        v108 = v107;
        v271 = v106;
        v272 = v104;
        swift_bridgeObjectRelease_n();
        v60 = v108;
      }

      swift_unknownObjectRelease();
    }

    static Logger.argos.getter(v63);
    v109 = sub_1D9C7D8BC();
    v110 = sub_1D9C7E09C();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 134217984;
      *(v111 + 4) = *(v60 + 16);
      _os_log_impl(&dword_1D9962000, v109, v110, "Use grounding detections MD4.1, Num of detected region %ld", v111, 0xCu);
      MEMORY[0x1DA7405F0](v111, -1, -1);
    }

    v280 = v60;

    v112 = *(v281 + 8);
    v112(v63, v282);
    __asm { FMOV            V0.2D, #1.0 }

    v276 = _Q0;
    v275 = 0u;
    goto LABEL_67;
  }

  v255 = v52;
  v64 = v272;
  v65 = v275;
  v254 = v51;
  v253 = v50;
  v279 = v42;
  v267 = v39;
  v256 = v27;
  sub_1D99AB100(v276, v23, &qword_1ECB533F8);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1D99A6AE0(v23, &qword_1ECB533F8);
    v288[0] = v56;
    v288[1] = v55;
    v288[2] = v58;
    v288[3] = v57;
    v272 = sub_1D9BE1ED0(&v289, v64, v288, v280, v65, v274);
    v61 = v66;
    v271 = v67;
    v69 = v68;
    v276 = v290;
    v275 = v289;
    static Logger.argos.getter(v36);
    v70 = sub_1D9C7D8BC();
    v71 = sub_1D9C7E09C();
    v72 = os_log_type_enabled(v70, v71);
    v62 = v273;
    v280 = v69;
    if (v72)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v289 = v74;
      *v73 = 134218498;
      *(v73 + 4) = *(v69 + 16);
      *(v73 + 12) = 2048;
      if (v61)
      {
        v75 = *(v271 + 16);

        v76 = v272;
        v77 = v61;
      }

      else
      {
        v75 = 0;
        v76 = 0;
        v77 = 0xE000000000000000;
      }

      *(v73 + 14) = v75;
      *(v73 + 22) = 2080;
      v141 = sub_1D9A0E224(v76, v77, &v289);

      *(v73 + 24) = v141;
      _os_log_impl(&dword_1D9962000, v70, v71, "Extract detector/cc results: Num of detected region %ld Num of coarse results: %ld for %s", v73, 0x20u);
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x1DA7405F0](v74, -1, -1);
      MEMORY[0x1DA7405F0](v73, -1, -1);

      v112 = *(v281 + 8);
      v112(v36, v282);
      v62 = v273;
    }

    else
    {

      v112 = *(v281 + 8);
      v112(v36, v282);
    }

    goto LABEL_67;
  }

  *&v276 = v24;
  v82 = v256;
  sub_1D9BE7008(v23, v256, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
  *&v289 = v277[4];
  v83 = *(v65 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  v84 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__parseCachingConfig;
  swift_beginAccess();
  v85 = v83 + v84;
  v86 = v257;
  sub_1D99AB100(v85, v257, &qword_1ECB512D0);
  v87 = *(isa + 6);
  v88 = v259;
  if (v87(v86, 1, v259) == 1)
  {

    v89 = MEMORY[0x1E69E7CC0];
    *v20 = sub_1D9A441B8(MEMORY[0x1E69E7CC0]);
    v20[1] = sub_1D9A441B8(v89);
    v20[2] = sub_1D9A441B8(v89);
    sub_1D9C7D3BC();
    isa_low = SLODWORD(v88[4].isa);
    v91 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig(0);
    v92 = v20 + isa_low;
    v93 = v20;
    (*(*(v91 - 8) + 56))(v92, 1, 1, v91);
    _ZF = v87(v86, 1, v88) == 1;
    v95 = v270;
    v96 = v278;
    v97 = v279;
    v98 = v262;
    v99 = v86;
    v100 = v263;
    v101 = v271;
    v102 = v264;
    if (!_ZF)
    {
      sub_1D99A6AE0(v99, &qword_1ECB512D0);
    }
  }

  else
  {
    sub_1D9BE7008(v86, v20, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
    v93 = v20;

    v95 = v270;
    v96 = v278;
    v97 = v279;
    v98 = v262;
    v100 = v263;
    v101 = v271;
    v102 = v264;
  }

  v272 = sub_1D9BE6564(v82, &v289, v93);
  v61 = v117;
  v271 = v118;
  v119 = v93;
  v120 = v82;
  v122 = v121;
  sub_1D9BE7070(v119, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);

  sub_1D99AB100(v120 + *(v276 + 28), v98, &qword_1ECB51248);
  v123 = *(v102 + 48);
  if (v123(v98, 1, v101) == 1)
  {
    *v100 = 0u;
    v100[1] = 0u;
    sub_1D9C7D3BC();
    if (v123(v98, 1, v101) != 1)
    {
      sub_1D99A6AE0(v98, &qword_1ECB51248);
    }
  }

  else
  {
    sub_1D9BE7008(v98, v100, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  }

  v124 = *v100;
  v276 = v100[1];
  v275 = v124;
  sub_1D9BE7070(v100, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  v125 = v255;
  sub_1D99AB100(v280, v255, &unk_1ECB51B10);
  v126 = type metadata accessor for VisualQueryContext();
  v127 = *(*(v126 - 8) + 48);
  v128 = v122;
  if (v127(v125, 1, v126) == 1)
  {
    sub_1D99A6AE0(v125, &unk_1ECB51B10);
    v62 = v273;
  }

  else
  {
    v129 = *(v125 + 56);
    sub_1D9BE7070(v125, type metadata accessor for VisualQueryContext);
    _ZF = v129 == 3;
    v62 = v273;
    if (_ZF)
    {
      goto LABEL_34;
    }
  }

  v130 = v254;
  sub_1D99AB100(v280, v254, &unk_1ECB51B10);
  if (v127(v130, 1, v126) == 1)
  {
    sub_1D99A6AE0(v130, &unk_1ECB51B10);
    goto LABEL_43;
  }

  v131 = *(v130 + 56);
  sub_1D9BE7070(v130, type metadata accessor for VisualQueryContext);
  _ZF = v131 == 5;
  v62 = v273;
  if (_ZF)
  {
LABEL_34:
    *&v289 = v56;
    *(&v289 + 1) = v55;
    *&v290 = v58;
    *(&v290 + 1) = v57;
    v132 = v253;
    sub_1D99AB100(v280, v253, &unk_1ECB51B10);
    if (v127(v132, 1, v126) == 1)
    {
      v133 = v272;
      v134 = v271;
      sub_1D99CB864(v272, v61);

      sub_1D99A6AE0(v132, &unk_1ECB51B10);
      v135 = 0;
    }

    else
    {
      v135 = *(v132 + *(v126 + 48));
      v133 = v272;
      v134 = v271;
      sub_1D99CB864(v272, v61);
      swift_unknownObjectRetain();

      sub_1D9BE7070(v132, type metadata accessor for VisualQueryContext);
    }

    v136 = v261;
    v137 = sub_1D9BE2BB4(v133, v61, v134, v128, &v289, v135, v277[5], v274);
    if (v136)
    {

      sub_1D99F2604(v133, v61);

      swift_unknownObjectRelease();
      v261 = 0;
    }

    else
    {
      v142 = v137;
      v143 = v138;
      v144 = v139;
      v145 = v140;
      v261 = 0;
      sub_1D99F2604(v133, v61);

      swift_unknownObjectRelease();
      sub_1D99F2604(v133, v61);

      v272 = v142;
      v61 = v143;
      v271 = v144;
      v128 = v145;
    }

    v62 = v273;
    v95 = v270;
    v96 = v278;
    v97 = v279;
  }

LABEL_43:
  static Logger.argos.getter(v97);
  v146 = sub_1D9C7D8BC();
  v147 = sub_1D9C7E09C();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *&v289 = v149;
    *v148 = 134218498;
    *(v148 + 4) = *(v128 + 16);
    *(v148 + 12) = 2048;
    if (v61)
    {
      v150 = *(v271 + 16);

      v151 = v272;
      v152 = v61;
    }

    else
    {
      v150 = 0;
      v151 = 0;
      v152 = 0xE000000000000000;
    }

    *(v148 + 14) = v150;
    *(v148 + 22) = 2080;
    v153 = sub_1D9A0E224(v151, v152, &v289);

    *(v148 + 24) = v153;
    _os_log_impl(&dword_1D9962000, v146, v147, "Use cached intermediate results: Num of detected region %ld Num of coarse results: %ld for %s", v148, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v149);
    MEMORY[0x1DA7405F0](v149, -1, -1);
    MEMORY[0x1DA7405F0](v148, -1, -1);

    v262 = *(v281 + 8);
    v262(v279, v282);
    v62 = v273;
    v95 = v270;
  }

  else
  {

    v262 = *(v281 + 8);
    v262(v97, v282);
  }

  v154 = v267;
  static Logger.argos.getter(v267);
  v155 = sub_1D9C7D8BC();
  v156 = sub_1D9C7E09C();
  v157 = os_log_type_enabled(v155, v156);
  v280 = v128;
  if (!v157)
  {
LABEL_66:

    v112 = v262;
    v262(v154, v282);
    sub_1D9BE7070(v256, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
LABEL_67:
    static Logger.argos.getter(v62);
    v192 = sub_1D9C7D8BC();
    v193 = sub_1D9C7E09C();
    if (os_log_type_enabled(v192, v193))
    {
      v274 = v61;
      v194 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      *&v289 = v195;
      *v194 = 136315138;

      v197 = sub_1D9A1A0A0(v196);

      v198 = *(v197 + 16);
      if (v198)
      {
        v270 = v195;
        LODWORD(v278) = v193;
        v279 = v194;
        v262 = v112;
        v284 = MEMORY[0x1E69E7CC0];
        sub_1D99FE164(0, v198, 0);
        v199 = v284;
        v200 = (*(v260 + 80) + 32) & ~*(v260 + 80);
        v267 = v197;
        v201 = v197 + v200;
        v202 = *(v260 + 72);
        do
        {
          v203 = v283;
          sub_1D9BE64FC(v201, v283, _s14DetectedResultVMa);
          v204 = sub_1D9B3AC64();
          v206 = v205;
          sub_1D9BE7070(v203, _s14DetectedResultVMa);
          v284 = v199;
          v208 = *(v199 + 16);
          v207 = *(v199 + 24);
          if (v208 >= v207 >> 1)
          {
            sub_1D99FE164((v207 > 1), v208 + 1, 1);
            v199 = v284;
          }

          *(v199 + 16) = v208 + 1;
          v209 = v199 + 16 * v208;
          *(v209 + 32) = v204;
          *(v209 + 40) = v206;
          v201 += v202;
          --v198;
        }

        while (v198);

        v62 = v273;
        v112 = v262;
        v194 = v279;
        LOBYTE(v193) = v278;
        v195 = v270;
      }

      else
      {

        v199 = MEMORY[0x1E69E7CC0];
      }

      v211 = MEMORY[0x1DA73E110](v199, MEMORY[0x1E69E6158]);
      v213 = v212;

      v214 = sub_1D9A0E224(v211, v213, &v289);

      *(v194 + 4) = v214;
      _os_log_impl(&dword_1D9962000, v192, v193, "Detection results: %s", v194, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v195);
      MEMORY[0x1DA7405F0](v195, -1, -1);
      MEMORY[0x1DA7405F0](v194, -1, -1);

      v112(v62, v282);
      v210 = v268;
      v61 = v274;
    }

    else
    {

      v112(v62, v282);
      v210 = v268;
    }

    static Logger.argos.getter(v210);
    v215 = sub_1D9C7D8BC();
    v216 = sub_1D9C7E09C();
    if (os_log_type_enabled(v215, v216))
    {
      v217 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v284 = v218;
      *v217 = 136315138;

      v220 = sub_1D9A1A2D4(v219);

      v221 = *(v220 + 2);
      if (v221)
      {
        v283 = v218;
        v262 = v112;
        v274 = v61;
        v287 = MEMORY[0x1E69E7CC0];
        sub_1D99FE164(0, v221, 0);
        v222 = v287;
        v223 = (v220 + 40);
        do
        {
          v224 = *v223;
          *&v289 = *(v223 - 1);
          *(&v289 + 1) = v224;

          v225 = sub_1D9C7DD0C();
          v287 = v222;
          v228 = *(v222 + 16);
          v227 = *(v222 + 24);
          if (v228 >= v227 >> 1)
          {
            v279 = v225;
            v278 = v226;
            sub_1D99FE164((v227 > 1), v228 + 1, 1);
            v226 = v278;
            v225 = v279;
            v222 = v287;
          }

          *(v222 + 16) = v228 + 1;
          v229 = v222 + 16 * v228;
          *(v229 + 32) = v225;
          *(v229 + 40) = v226;
          v223 += 2;
          --v221;
        }

        while (v221);

        v61 = v274;
        v112 = v262;
        v218 = v283;
      }

      else
      {

        v222 = MEMORY[0x1E69E7CC0];
      }

      v231 = MEMORY[0x1DA73E110](v222, MEMORY[0x1E69E6158]);
      v233 = v232;

      v234 = sub_1D9A0E224(v231, v233, &v284);

      *(v217 + 4) = v234;
      _os_log_impl(&dword_1D9962000, v215, v216, "DPN results: %s", v217, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v218);
      MEMORY[0x1DA7405F0](v218, -1, -1);
      MEMORY[0x1DA7405F0](v217, -1, -1);

      v230 = v268;
    }

    else
    {

      v230 = v210;
    }

    v112(v230, v282);
    v235 = v269;
    static Logger.argos.getter(v269);
    v236 = sub_1D9C7D8BC();
    v237 = sub_1D9C7E09C();
    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v284 = v239;
      *v238 = 136315138;
      if (v61)
      {
        *&v289 = v272;
        *(&v289 + 1) = v61;
        *&v290 = v271;

        v240 = sub_1D9C7DD0C();
        v242 = v241;
      }

      else
      {
        v240 = 0;
        v242 = 0xE000000000000000;
      }

      v244 = sub_1D9A0E224(v240, v242, &v284);

      *(v238 + 4) = v244;
      _os_log_impl(&dword_1D9962000, v236, v237, "Coarse results: %s", v238, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v239);
      MEMORY[0x1DA7405F0](v239, -1, -1);
      MEMORY[0x1DA7405F0](v238, -1, -1);

      v243 = v269;
    }

    else
    {

      v243 = v235;
    }

    v112(v243, v282);
    v245 = v266;
    v246 = v265;
    v289 = v275;
    v290 = v276;
    v247 = v280;

    v248 = v272;
    v249 = v271;
    sub_1D99CB864(v272, v61);
    v250 = sub_1D9BE6BB0(v247, &v289, v248, v61, v249);

    sub_1D99F2604(v248, v61);
    v251 = v275;
    v252 = v276;
    *v246 = v275;
    v246[1] = v252;
    v289 = v251;
    v290 = v252;
    sub_1D99CB864(v248, v61);

    sub_1D9BE0ED8(v248, v61, v249, v247, &v289, v245);
    sub_1D99F2604(v248, v61);

    sub_1D99F2604(v248, v61);

    return v250;
  }

  LODWORD(v257) = v156;
  v259 = v155;
  v158 = swift_slowAlloc();
  v255 = swift_slowAlloc();
  v287 = v255;
  isa = v158;
  *v158 = 136315138;
  v159 = *(v128 + 16);
  v160 = MEMORY[0x1E69E7CC0];
  if (!v159)
  {
    v163 = MEMORY[0x1E69E7CC0];
LABEL_65:
    v186 = MEMORY[0x1DA73E110](v163, MEMORY[0x1E69E6158]);
    v188 = v187;

    v189 = sub_1D9A0E224(v186, v188, &v287);

    v190 = isa;
    *(isa + 4) = v189;
    v155 = v259;
    _os_log_impl(&dword_1D9962000, v259, v257, "Domain model results: %s", v190, 0xCu);
    v191 = v255;
    __swift_destroy_boxed_opaque_existential_0Tm(v255);
    MEMORY[0x1DA7405F0](v191, -1, -1);
    MEMORY[0x1DA7405F0](v190, -1, -1);
    goto LABEL_66;
  }

  v286 = MEMORY[0x1E69E7CC0];

  result = sub_1D99FE164(0, v159, 0);
  v162 = 0;
  v163 = v286;
  v263 = (v128 + ((*(v95 + 80) + 32) & ~*(v95 + 80)));
  v274 = v61;
  v264 = v159;
  while (v162 < *(v128 + 16))
  {
    v279 = v163;
    sub_1D9BE64FC(v263 + *(v95 + 72) * v162, v96, type metadata accessor for VisualUnderstanding.ImageRegion);
    v284 = 0;
    v285 = 0xE000000000000000;
    v164 = *(v96 + 16);
    v289 = *v96;
    v290 = v164;
    sub_1D9C7E4DC();
    MEMORY[0x1DA73DF90](8236, 0xE200000000000000);
    v165 = sub_1D9B6834C(*(v96 + 112));
    v166 = *(v165 + 16);
    if (v166)
    {
      *&v289 = v160;
      sub_1D99FE164(0, v166, 0);
      v167 = v289;
      v168 = (v165 + 48);
      do
      {
        v170 = *(v168 - 2);
        v169 = *(v168 - 1);
        v171 = *v168;

        v172 = sub_1D9A18124(v170, v169, v171);
        v174 = v173;

        *&v289 = v167;
        v176 = *(v167 + 16);
        v175 = *(v167 + 24);
        if (v176 >= v175 >> 1)
        {
          sub_1D99FE164((v175 > 1), v176 + 1, 1);
          v167 = v289;
        }

        *(v167 + 16) = v176 + 1;
        v177 = v167 + 16 * v176;
        *(v177 + 32) = v172;
        *(v177 + 40) = v174;
        v168 += 3;
        --v166;
      }

      while (v166);

      v128 = v280;
      v61 = v274;
      v95 = v270;
    }

    else
    {

      v167 = v160;
    }

    v178 = MEMORY[0x1DA73E110](v167, MEMORY[0x1E69E6158]);
    v180 = v179;

    MEMORY[0x1DA73DF90](v178, v180);

    v181 = v284;
    v182 = v285;
    v96 = v278;
    result = sub_1D9BE7070(v278, type metadata accessor for VisualUnderstanding.ImageRegion);
    v163 = v279;
    v286 = v279;
    v184 = *(v279 + 2);
    v183 = *(v279 + 3);
    if (v184 >= v183 >> 1)
    {
      result = sub_1D99FE164((v183 > 1), v184 + 1, 1);
      v163 = v286;
    }

    ++v162;
    *(v163 + 2) = v184 + 1;
    v185 = &v163[16 * v184];
    *(v185 + 4) = v181;
    *(v185 + 5) = v182;
    v154 = v267;
    v160 = MEMORY[0x1E69E7CC0];
    if (v162 == v264)
    {

      v62 = v273;
      goto LABEL_65;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9BE04B0(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a3;
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  v62 = v10;
  v63 = v11;
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v57 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v57 - v16;
  v18 = *a2;
  v19 = a2[1];
  v20 = a2[2];
  v21 = a2[3];
  sub_1D99A17C8(a1, v69);
  v69[5] = v18;
  v69[6] = v19;
  v69[7] = v20;
  v69[8] = v21;
  v70 = 0;
  v71 = a4;
  v22 = *(*(v5 + 16) + 16);
  swift_unknownObjectRetain();
  if (v22)
  {
    if (v22 == 1)
    {
      sub_1D9ABEAA0(v69, a5, &v72);
    }

    else
    {
      sub_1D9ABF260(COERCE_DOUBLE(v69), a5, &v72);
    }
  }

  else
  {
    sub_1D9ABE470(v69, a5, &v72);
  }

  v23 = v62;
  v24 = v63;
  v25 = v73;
  v57[1] = v72;
  v65[0] = v72;
  v65[1] = v73;
  v65[2] = v74;
  v66 = v75;
  v67 = v76;
  v68 = v77;
  v60 = v75;

  v27 = sub_1D9BE6188(v26);
  v59 = 0;

  static Logger.argos.getter(v17);
  sub_1D9A3E0E0(v14);
  v30 = v24[1];
  v29 = v24 + 1;
  v28 = v30;
  v30(v17, v23);

  v31 = sub_1D9C7D8BC();
  v32 = sub_1D9C7E09C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v63 = v29;
    v34 = v33;
    v35 = swift_slowAlloc();
    v58 = v25;
    v36 = v35;
    v64 = v35;
    *v34 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54168);
    sub_1D9BC1620();
    v37 = sub_1D9C7DB8C();
    v39 = v38;

    v40 = sub_1D9A0E224(v37, v39, &v64);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_1D9962000, v31, v32, "Detected regions: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    v41 = v36;
    v25 = v58;
    MEMORY[0x1DA7405F0](v41, -1, -1);
    MEMORY[0x1DA7405F0](v34, -1, -1);

    v42 = v28(v14, v62);
  }

  else
  {

    v42 = v28(v14, v23);
  }

  MEMORY[0x1EEE9AC00](v42);
  v57[-6] = v61;
  *&v57[-5] = v18;
  *&v57[-4] = v19;
  *&v57[-3] = v20;
  *&v57[-2] = v21;
  v43 = v59;
  v44 = sub_1D9BE5E6C(v27, sub_1D9BE64EC, &v57[-8]);

  v64 = v44;

  sub_1D9BDE42C(&v64);
  if (v43)
  {

    __break(1u);
  }

  else
  {

    v45 = v64;
    v46 = v60;
    if (v60)
    {
      v63 = v64;
      v47 = *(v60 + 16);
      if (v47)
      {
        v64 = MEMORY[0x1E69E7CC0];
        v58 = v25;

        sub_1D99FE278(0, v47, 0);
        v48 = v64;
        v49 = (v46 + 48);
        do
        {
          v51 = *(v49 - 2);
          v50 = *(v49 - 1);
          v52 = *v49;
          v64 = v48;
          v54 = v48[2];
          v53 = v48[3];

          if (v54 >= v53 >> 1)
          {
            sub_1D99FE278((v53 > 1), v54 + 1, 1);
            v48 = v64;
          }

          v48[2] = v54 + 1;
          v55 = &v48[3 * v54];
          v55[4] = v51;
          v55[5] = v50;
          *(v55 + 12) = v52;
          v49 += 6;
          --v47;
        }

        while (v47);
        sub_1D9BCBD70(v69);

        sub_1D9BCBE2C(v65);
      }

      else
      {

        sub_1D9BCBE2C(v65);
        sub_1D9BCBD70(v69);
      }

      return v63;
    }

    else
    {
      sub_1D9BCBD70(v69);
      sub_1D9BCBE2C(v65);
      return v45;
    }
  }

  return result;
}

double sub_1D9BE0B40@<D0>(double *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = _s14DetectedResultVMa();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  v22 = a1[3];
  v61 = a2;

  sub_1D9BDE510(&v61);
  v57 = a3;
  v58 = a4;
  v23 = v61[2];
  v24 = MEMORY[0x1E69E7CC0];
  v56 = v61;
  v54 = a7;
  v55 = a8;
  if (v23)
  {
    v25 = (v60 + *(v16 + 28));
    v26 = v61 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v59 = *(v17 + 72);
    do
    {
      v27 = v60;
      sub_1D9BE64FC(v26, v60, _s14DetectedResultVMa);
      v28 = *v25;
      v29 = v25[1];
      v31 = v25[2];
      v30 = v25[3];

      sub_1D9BE7070(v27, _s14DetectedResultVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1D9AF8F0C(0, *(v24 + 2) + 1, 1, v24);
      }

      v33 = *(v24 + 2);
      v32 = *(v24 + 3);
      if (v33 >= v32 >> 1)
      {
        v24 = sub_1D9AF8F0C((v32 > 1), v33 + 1, 1, v24);
      }

      *(v24 + 2) = v33 + 1;
      v34 = &v24[32 * v33];
      *(v34 + 4) = v28;
      *(v34 + 5) = v29;
      *(v34 + 6) = v31;
      *(v34 + 7) = v30;
      v26 += *&v59;
      --v23;
    }

    while (v23);
  }

  v35 = v19 - a5;
  v36 = v20 - a6;
  v62.origin.x = v19;
  v62.origin.y = v20;
  v62.size.width = v21;
  v62.size.height = v22;
  Width = CGRectGetWidth(v62);
  v63.origin.x = v19;
  v63.origin.y = v20;
  v63.size.width = v21;
  v63.size.height = v22;
  Height = CGRectGetHeight(v63);
  v59 = v20;
  v60 = *&v19;
  v39 = 1.0 / v54;
  v40 = 1.0 / v55;
  v54 = v22;
  v55 = v21;
  v41 = v39 * v35;
  v64.origin.x = v35;
  v64.origin.y = v36;
  v64.size.width = Width;
  v64.size.height = Height;
  v42 = v39 * CGRectGetWidth(v64);
  v65.origin.x = v35;
  v65.origin.y = v36;
  v65.size.width = Width;
  v65.size.height = Height;
  v43 = v40 * CGRectGetHeight(v65);
  v66.origin.x = v41;
  v66.origin.y = v40 * v36;
  v66.size.width = v42;
  v66.size.height = v43;
  v44 = CGRectGetWidth(v66);
  v67.origin.x = v41;
  v67.origin.y = v40 * v36;
  v67.size.width = v42;
  v67.size.height = v43;
  v45 = CGRectGetHeight(v67);
  sub_1D9B1EFAC(v41, v40 * v36, v44, v45);
  *&v42 = v46;
  v47 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v48 = v58;
  sub_1D9C7B92C();
  v49 = v59;
  *v48 = v60;
  *(v48 + 8) = v49;
  result = v54;
  *(v48 + 16) = v55;
  *(v48 + 24) = result;
  *(v48 + 32) = 1;
  *(v48 + 40) = v24;
  v51 = MEMORY[0x1E69E7CC0];
  v52 = v56;
  *(v48 + 48) = MEMORY[0x1E69E7CC0];
  *(v48 + 56) = v52;
  *(v48 + 64) = v51;
  *(v48 + 72) = 0;
  *(v48 + 76) = LODWORD(v42);
  *(v48 + 88) = 0;
  *(v48 + 96) = 0;
  *(v48 + 80) = 0;
  *(v48 + 104) = 0;
  *(v48 + 112) = v51;
  *(v48 + *(v47 + 64)) = 0;
  *(v48 + *(v47 + 68)) = v51;
  return result;
}

uint64_t sub_1D9BE0ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v119 = a4;
  v108 = a3;
  v111 = a2;
  v107 = a1;
  v124 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52D68);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v101 - v8;
  v128 = sub_1D9C7D8DC();
  v131 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v101 - v11;
  v130 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v12 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v120 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512C8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v106 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v101 = &v101 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v101 - v19;
  v20 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  v133 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v105 = (&v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v102 = &v101 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v118 = &v101 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v110 = &v101 - v27;
  v132 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  v129 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v103 = (&v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v125 = &v101 - v30;
  v31 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = (&v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a5;
  v115 = a5[1];
  v116 = v38;
  sub_1D9C7D3BC();
  v39 = v35[5];
  v40 = *(v32 + 56);
  v40(&v37[v39], 1, 1, v31);
  v41 = v35[6];
  v42 = *(v133 + 56);
  v126 = v20;
  v113 = v133 + 56;
  v112 = v42;
  v42(&v37[v41], 1, 1, v20);
  v123 = v35;
  v43 = v35[7];
  v44 = *(v12 + 56);
  v121 = v12 + 56;
  v117 = v44;
  v44(&v37[v43], 1, 1, v130);
  v45 = v111;
  if (v111)
  {

    v46 = v108;

    sub_1D99BD8B4(v107, v45, v46, v34);
    sub_1D99A6AE0(&v37[v39], &qword_1ECB512C0);
    sub_1D9BE7008(v34, &v37[v39], type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
    v40(&v37[v39], 0, 1, v31);
  }

  v47 = *(*(v114 + 16) + 136);
  if (v47)
  {
    v48 = OBJC_IVAR____TtC12VisualLookUp25CachedCoreMLModelProvider_modelInfo;
    v49 = type metadata accessor for MLModelInfo(0);
    v50 = *(v47 + *(v49 + 24) + v48 + 8);
    MEMORY[0x1EEE9AC00](v49);
    *(&v101 - 2) = v51;
    *(&v101 - 1) = v50;
    sub_1D9BE3998(qword_1EDD2D538, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);

    v52 = v132;
    sub_1D9C7D6BC();
    v114 = 0;

    v53 = v109;
    sub_1D99AB100(&v37[v41], v109, &qword_1ECB512C8);
    v54 = *(v133 + 48);
    v55 = v126;
    v56 = v54(v53, 1, v126);
    v57 = v128;
    if (v56 == 1)
    {
      v58 = v110;
      *v110 = 0;
      *(v58 + 1) = 0xE000000000000000;
      *(v58 + 2) = MEMORY[0x1E69E7CC0];
      sub_1D9C7D3BC();
      (*(v129 + 56))(&v58[*(v55 + 28)], 1, 1, v52);
      if (v54(v53, 1, v55) != 1)
      {
        sub_1D99A6AE0(v53, &qword_1ECB512C8);
      }
    }

    else
    {
      v58 = v110;
      sub_1D9BE7008(v53, v110, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
    }

    v61 = *(v55 + 28);
    sub_1D99A6AE0(&v58[v61], &qword_1ECB52D68);
    sub_1D9BE7008(v125, &v58[v61], type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
    (*(v129 + 56))(&v58[v61], 0, 1, v132);
    sub_1D99A6AE0(&v37[v41], &qword_1ECB512C8);
    sub_1D9BE7008(v58, &v37[v41], type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
    v60 = v112;
    v112(&v37[v41], 0, 1, v55);
    v59 = v57;
  }

  else
  {
    v59 = v128;
    v55 = v126;
    v60 = v112;
  }

  v63 = v118;
  sub_1D99BE3F4(v62, v118);
  sub_1D99A6AE0(&v37[v41], &qword_1ECB512C8);
  sub_1D9BE7008(v63, &v37[v41], type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  v64 = v60(&v37[v41], 0, 1, v55);
  MEMORY[0x1EEE9AC00](v64);
  v65 = v115;
  *(&v101 - 2) = v116;
  *(&v101 - 1) = v65;
  sub_1D9BE3998(qword_1EDD2D720, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  v66 = v120;
  v67 = v130;
  sub_1D9C7D6BC();
  sub_1D99A6AE0(&v37[v43], &qword_1ECB51248);
  sub_1D9BE7008(v66, &v37[v43], type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  v117(&v37[v43], 0, 1, v67);
  v68 = v122;
  static Logger.argos.getter(v122);
  v69 = v127;
  sub_1D9A3E0E0(v127);
  v70 = v131 + 8;
  v71 = *(v131 + 8);
  v71(v68, v59);
  v72 = sub_1D9C7D8BC();
  v73 = sub_1D9C7E09C();
  if (os_log_type_enabled(v72, v73))
  {
    LODWORD(v125) = v73;
    v130 = v71;
    v131 = v70;
    v74 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v134 = v122;
    *v74 = 136315394;
    swift_beginAccess();
    v75 = v101;
    sub_1D99AB100(&v37[v123[6]], v101, &qword_1ECB512C8);
    v76 = v133 + 48;
    v77 = *(v133 + 48);
    v78 = v77(v75, 1, v55);
    v133 = v76;
    if (v78 == 1)
    {
      v79 = v102;
      *v102 = 0;
      *(v79 + 1) = 0xE000000000000000;
      *(v79 + 2) = MEMORY[0x1E69E7CC0];
      sub_1D9C7D3BC();
      (*(v129 + 56))(&v79[*(v55 + 28)], 1, 1, v132);
      v80 = v77(v75, 1, v55);
      v81 = v104;
      if (v80 != 1)
      {
        sub_1D99A6AE0(v75, &qword_1ECB512C8);
      }
    }

    else
    {
      v79 = v102;
      sub_1D9BE7008(v75, v102, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
      v81 = v104;
    }

    sub_1D99AB100(&v79[*(v55 + 28)], v81, &qword_1ECB52D68);
    v82 = *(v129 + 48);
    v83 = v132;
    if (v82(v81, 1, v132) == 1)
    {
      v84 = v103;
      *v103 = 0;
      v84[1] = 0xE000000000000000;
      v84[2] = 0;
      v84[3] = 0xE000000000000000;
      sub_1D9C7D3BC();
      sub_1D9BE7070(v79, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
      v85 = v82(v81, 1, v83);
      v86 = v130;
      if (v85 != 1)
      {
        sub_1D99A6AE0(v81, &qword_1ECB52D68);
      }
    }

    else
    {
      sub_1D9BE7070(v79, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
      v84 = v103;
      sub_1D9BE7008(v81, v103, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
      v86 = v130;
    }

    v87 = *v84;
    v88 = v84[1];
    swift_endAccess();

    sub_1D9BE7070(v84, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
    v89 = sub_1D9A0E224(v87, v88, &v134);

    *(v74 + 4) = v89;
    *(v74 + 12) = 2080;
    swift_beginAccess();
    v90 = v106;
    sub_1D99AB100(&v37[v123[6]], v106, &qword_1ECB512C8);
    v91 = v126;
    if (v77(v90, 1, v126) == 1)
    {
      v92 = v105;
      *v105 = 0;
      v92[1] = 0xE000000000000000;
      v92[2] = MEMORY[0x1E69E7CC0];
      sub_1D9C7D3BC();
      (*(v129 + 56))(v92 + *(v91 + 28), 1, 1, v132);
      v93 = v77(v90, 1, v91);
      v94 = v128;
      if (v93 != 1)
      {
        sub_1D99A6AE0(v90, &qword_1ECB512C8);
      }
    }

    else
    {
      v92 = v105;
      sub_1D9BE7008(v90, v105, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
      v94 = v128;
    }

    v95 = v92;
    v96 = *v92;
    v97 = v92[1];
    swift_endAccess();

    sub_1D9BE7070(v95, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
    v98 = sub_1D9A0E224(v96, v97, &v134);

    *(v74 + 14) = v98;
    _os_log_impl(&dword_1D9962000, v72, v125, "Populate cached intermediate results: Detection %s DPN %s", v74, 0x16u);
    v99 = v122;
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v99, -1, -1);
    MEMORY[0x1DA7405F0](v74, -1, -1);

    v86(v127, v94);
  }

  else
  {

    v71(v69, v59);
  }

  swift_beginAccess();
  sub_1D9BE64FC(v37, v124, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
  return sub_1D9BE7070(v37, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
}

uint64_t sub_1D9BE1ED0(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v139 = a5;
  v148 = a2;
  v144 = a1;
  v143 = sub_1D9C7D8DC();
  v140 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v133 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v120 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v120 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v120 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v120 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v141 = (&v120 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v131 = &v120 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51050);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v138 = &v120 - v25;
  v137 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v27 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v128 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v120 - v31;
  v34 = *a3;
  v33 = a3[1];
  v36 = a3[2];
  v35 = a3[3];
  v134 = a4;
  sub_1D99AB100(a4, &v120 - v31, &unk_1ECB51B10);
  Context = type metadata accessor for VisualQueryContext();
  v38 = *(Context - 8);
  v124 = *(v38 + 48);
  v123 = v38 + 48;
  v39 = v124(v32, 1, Context);
  v142 = v27;
  v127 = Context;
  v126 = v15;
  if (v39 == 1)
  {
    sub_1D99A6AE0(v32, &unk_1ECB51B10);
    v40 = 0;
  }

  else
  {
    v40 = *&v32[*(Context + 48)];
    swift_unknownObjectRetain();
    sub_1D9BE7070(v32, type metadata accessor for VisualQueryContext);
  }

  *&v150 = v34;
  *(&v150 + 1) = v33;
  v151 = v36;
  v152 = v35;
  v122 = *(v6 + 24);
  v41 = sub_1D9BE04B0(v148, &v150, v122, v40, a6);
  v43 = v42;
  v45 = v44;
  *&v150 = v34;
  *(&v150 + 1) = v33;
  v151 = v36;
  v152 = v35;
  v125 = *(v6 + 40);
  v130 = a6;
  v135 = v6;
  v47 = sub_1D9BE2BB4(v42, v44, v46, v41, &v150, v40, v125, a6);
  v49 = v48;
  v51 = v50;
  v53 = v52;
  swift_unknownObjectRelease();
  sub_1D99F2604(v43, v45);

  v146 = v49;
  v147 = v47;
  v145 = v51;
  v54 = v53;
  v55 = v142;
  v121 = 0;
  v56 = *(v139 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  v57 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__refineConfig;
  swift_beginAccess();
  v58 = v138;
  sub_1D99AB100(v56 + v57, v138, &qword_1ECB51050);
  v59 = *(v136 + 48);
  v60 = v137;
  v61 = v59(v58, 1, v137);
  v62 = v143;
  if (v61 == 1)
  {
    *v55 = 0;
    *(v55 + 16) = 0;
    *(v55 + 4) = 0;
    *(v55 + 12) = 0;
    sub_1D9C7D3BC();
    v63 = *(v60 + 40);
    v64 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold(0);
    (*(*(v64 - 8) + 56))(v55 + v63, 1, 1, v64);
    if (v59(v58, 1, v60) != 1)
    {
      sub_1D99A6AE0(v58, &qword_1ECB51050);
    }
  }

  else
  {
    sub_1D9BE7008(v58, v55, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
  }

  v65 = (v140 + 8);
  if ((*v55 & 1) == 0)
  {
    v79 = v132;
    static Logger.argos.getter(v132);
    v80 = v133;
    sub_1D9A3E0E0(v133);
    v81 = *v65;
    (*v65)(v79, v62);
    v82 = sub_1D9C7D8BC();
    v83 = sub_1D9C7E09C();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_1D9962000, v82, v83, "Disable to refine region.", v84, 2u);
      MEMORY[0x1DA7405F0](v84, -1, -1);
    }

    v81(v80, v62);
    goto LABEL_18;
  }

  v66 = v131;
  static Logger.argos.getter(v131);
  sub_1D9A3E0E0(v141);
  v67 = *v65;
  (*v65)(v66, v62);
  v68 = sub_1D9C7D8BC();
  v69 = sub_1D9C7E09C();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_1D9962000, v68, v69, "Enable to refine region.", v70, 2u);
    MEMORY[0x1DA7405F0](v70, -1, -1);
  }

  v67(v141, v62);
  type metadata accessor for VisualIntelligenceService(0);
  v149 = *(v135 + 32);

  v72 = v146;
  v71 = v147;
  sub_1D9AFE704(v146, v145, v54, &v149, v134, v55, &v150);

  if (v154)
  {
    v73 = v120;
    static Logger.argos.getter(v120);
    v74 = v126;
    sub_1D9A3E0E0(v126);
    v67(v73, v62);
    v75 = sub_1D9C7D8BC();
    v76 = sub_1D9C7E09C();
    v77 = v67;
    if (os_log_type_enabled(v75, v76))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_1D9962000, v75, v76, "No refined region, reuse triggering models results.", v78, 2u);
      MEMORY[0x1DA7405F0](v78, -1, -1);
    }

    v77(v74, v62);
LABEL_18:
    sub_1D9BE7070(v55, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
    v85 = v34;
    v86 = v33;
    v87 = v36;
    v88 = v35;
    result = v147;
    goto LABEL_19;
  }

  v141 = v67;
  LODWORD(v140) = v153;
  v87 = v151;
  v88 = v152;
  v86 = *(&v150 + 1);
  v85 = v150;
  sub_1D99F2604(v71, v72);

  v91 = v129;
  static Logger.argos.getter(v129);
  v92 = sub_1D9C7D8BC();
  v93 = sub_1D9C7E09C();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = v62;
    v96 = swift_slowAlloc();
    v149 = v96;
    *v94 = 136315394;
    v150 = __PAIR128__(v86, v85);
    v151 = v87;
    v152 = v88;
    v153 = v140;
    v97 = sub_1D9C7DD0C();
    v99 = v55;
    v100 = sub_1D9A0E224(v97, v98, &v149);

    *(v94 + 4) = v100;
    *(v94 + 12) = 2080;
    *&v150 = v34;
    *(&v150 + 1) = v33;
    v151 = v36;
    v152 = v35;
    v101 = NormalizedRect.loggingDescription.getter();
    v103 = sub_1D9A0E224(v101, v102, &v149);

    *(v94 + 14) = v103;
    v55 = v99;
    _os_log_impl(&dword_1D9962000, v92, v93, "Refined region %s is different from input region %s, rerun triggering models.", v94, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v96, -1, -1);
    MEMORY[0x1DA7405F0](v94, -1, -1);

    v104 = v91;
    v105 = v95;
  }

  else
  {

    v104 = v91;
    v105 = v62;
  }

  v141(v104, v105);
  v106 = v128;
  sub_1D99AB100(v134, v128, &unk_1ECB51B10);
  v107 = v127;
  v108 = v124(v106, 1, v127);
  v109 = v130;
  v110 = v121;
  if (v108 == 1)
  {
    sub_1D99A6AE0(v106, &unk_1ECB51B10);
    v111 = 0;
  }

  else
  {
    v111 = *(v106 + *(v107 + 48));
    swift_unknownObjectRetain();
    sub_1D9BE7070(v106, type metadata accessor for VisualQueryContext);
  }

  *&v150 = v85;
  *(&v150 + 1) = v86;
  v151 = v87;
  v152 = v88;
  v112 = sub_1D9BE04B0(v148, &v150, v122, v111, v109);
  v114 = v113;
  *&v150 = v85;
  *(&v150 + 1) = v86;
  v151 = v87;
  v152 = v88;
  v116 = v115;
  v118 = sub_1D9BE2BB4(v115, v113, v117, v112, &v150, v111, v125, v109);
  if (v110)
  {

    swift_unknownObjectRelease();
    sub_1D9BE7070(v55, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
    result = v116;
  }

  else
  {
    v119 = v118;
    swift_unknownObjectRelease();
    sub_1D9BE7070(v55, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
    sub_1D99F2604(v116, v114);

    result = v119;
  }

LABEL_19:
  v90 = v144;
  *v144 = v85;
  v90[1] = v86;
  v90[2] = v87;
  v90[3] = v88;
  return result;
}

char *sub_1D9BE2BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a8;
  v67 = a6;
  v70 = sub_1D9C7D8DC();
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v60 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v60 - v18;
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v71 = a7;
  if (a7)
  {
    v60[1] = v24;
    v61 = v60 - v22;
    v64 = v23;
    v25 = *a5;
    v65 = a5[1];
    v66 = v25;
    sub_1D99AB100(v92 + 48, &v87, &qword_1ECB530F8);
    if (v88)
    {
      sub_1D9979B9C(&v87, v89);
      v62 = a1;
      v63 = a4;
      *&v82 = a1;
      *(&v82 + 1) = a2;
      *&v83 = a3;
      *(&v83 + 1) = a4;
      v84 = v66;
      v85 = v65;
      v86 = v67;
      v26 = swift_allocObject();
      *(v26 + 16) = 0u;
      *(v26 + 32) = 0u;
      v76 = v84;
      v77 = v85;
      v78 = v86;
      v74 = v82;
      v75 = v83;
      v19 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v19;
      *(v27 + 24) = v26;

      sub_1D99CB864(v62, a2);
      swift_unknownObjectRetain();

      v28 = v68;
      sub_1D99F1804(&v74, v69, sub_1D9BE383C, v27, v79);
      if (v28)
      {

        sub_1D9BE3844(&v82);
LABEL_5:

        __swift_destroy_boxed_opaque_existential_0Tm(v89);
        return v19;
      }

      v69 = v26;

      v38 = v90;
      v39 = v91;
      __swift_project_boxed_opaque_existential_1(v89, v90);
      v19 = 0;
      v40 = v80;
      v41 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v42 = (*(v41 + 16))(v40, v41);
      (*(v39 + 8))(v42, v38, v39);
      v92 = 0;

      v43 = v70;
      v44 = v69;
      swift_beginAccess();
      v45 = v44[5];
      if (!v45)
      {
        sub_1D99A182C();
        swift_allocError();
        *v59 = 0xD000000000000022;
        *(v59 + 8) = 0x80000001D9CACA60;
        *(v59 + 16) = 4;
        swift_willThrow();
        sub_1D9BE3844(&v82);

        __swift_destroy_boxed_opaque_existential_0Tm(v79);
        goto LABEL_5;
      }

      v19 = v44[2];
      v46 = v44[3];
      v47 = v44[4];
      sub_1D99CB864(v19, v46);

      v48 = v61;
      static Logger.argos.getter(v61);
      sub_1D9A3E0E0(v64);
      v49 = v72 + 8;
      v68 = *(v72 + 8);
      v68(v48, v43);
      sub_1D99CB864(v19, v46);

      v50 = sub_1D9C7D8BC();
      v51 = sub_1D9C7E09C();
      sub_1D99F2604(v19, v46);

      LODWORD(v67) = v51;
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v73[0] = v53;
        *v52 = 136315138;
        *&v74 = v19;
        *(&v74 + 1) = v46;
        *&v75 = v47;
        *(&v75 + 1) = v45;
        sub_1D99CB864(v19, v46);

        v54 = sub_1D9C7DD0C();
        *&v66 = v50;
        v56 = sub_1D9A0E224(v54, v55, v73);
        v72 = v49;
        v57 = v56;

        *(v52 + 4) = v57;
        v58 = v66;
        _os_log_impl(&dword_1D9962000, v66, v67, "domain prediction net results %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        MEMORY[0x1DA7405F0](v53, -1, -1);
        MEMORY[0x1DA7405F0](v52, -1, -1);
        sub_1D9BE3844(&v82);

        v68(v64, v70);
      }

      else
      {
        sub_1D9BE3844(&v82);

        v68(v64, v43);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v79);

      __swift_destroy_boxed_opaque_existential_0Tm(v89);
    }

    else
    {

      sub_1D99A6AE0(&v87, &qword_1ECB530F8);
      static Logger.argos.getter(v19);
      v33 = sub_1D9C7D8BC();
      v34 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1D9962000, v33, v34, "domain prediction model handler initialized failed", v35, 2u);
        MEMORY[0x1DA7405F0](v35, -1, -1);
      }

      (*(v72 + 8))(v19, v70);
      sub_1D99A182C();
      swift_allocError();
      *v36 = 0xD000000000000032;
      *(v36 + 8) = 0x80000001D9CACA20;
      *(v36 + 16) = 6;
      swift_willThrow();
    }
  }

  else
  {
    static Logger.argos.getter(v16);
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D9962000, v29, v30, "domain prediction model loading failed", v31, 2u);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    (*(v72 + 8))(v16, v70);
    sub_1D99A182C();
    swift_allocError();
    *v32 = 0xD000000000000026;
    *(v32 + 8) = 0x80000001D9CAC9F0;
    *(v32 + 16) = 6;
    swift_willThrow();
  }

  return v19;
}

uint64_t sub_1D9BE3498(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (*(a1 + 32))
    {
      static Logger.argos.getter(v12);
      v13 = v5;
      v14 = sub_1D9C7D8BC();
      v15 = sub_1D9C7E0AC();
      sub_1D99A6AE0(a1, &qword_1ECB54160);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v33[0] = v17;
        *v16 = 136446210;
        swift_getErrorValue();
        v18 = sub_1D9A4F730(v32[1]);
        v20 = sub_1D9A0E224(v18, v19, v33);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_1D9962000, v14, v15, "Domain prediction net error: %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x1DA7405F0](v17, -1, -1);
        MEMORY[0x1DA7405F0](v16, -1, -1);
      }

      return (*(v7 + 8))(v12, v6);
    }

    else
    {
      v26 = *(a1 + 16);
      v25 = *(a1 + 24);
      v27 = *(a1 + 8);
      swift_beginAccess();
      v28 = a3[2];
      v29 = a3[3];
      v30 = a3[4];
      v31 = a3[5];
      a3[2] = v5;
      a3[3] = v27;
      a3[4] = v26;
      a3[5] = v25;
      sub_1D99CB864(v5, v27);

      return sub_1D9BE3898(v28, v29, v30, v31);
    }
  }

  else
  {
    static Logger.argos.getter(v9);
    v22 = sub_1D9C7D8BC();
    v23 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D9962000, v22, v23, "domain prediction net self disappeared", v24, 2u);
      MEMORY[0x1DA7405F0](v24, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1D9BE37A8()
{

  sub_1D99A6AE0(v0 + 48, &qword_1ECB530F8);

  return swift_deallocClassInstance();
}

uint64_t sub_1D9BE3898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D99F2604(result, a2);
  }

  return result;
}

void sub_1D9BE38D8(CGFloat *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *a1 = v3;
  a1[1] = v4;
  v7.origin.x = v3;
  v7.origin.y = v4;
  v7.size.width = v5;
  v7.size.height = v6;
  a1[2] = CGRectGetWidth(v7);
  v8.origin.x = v3;
  v8.origin.y = v4;
  v8.size.width = v5;
  v8.size.height = v6;
  a1[3] = CGRectGetHeight(v8);
}

uint64_t sub_1D9BE394C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D9BE3998(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9BE39E0(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1D9C7E79C();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1D9C7DF5C();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1D9BE3B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      sub_1D9BE64FC(v22, v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9BE64FC(v19, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v23 = *(v16 + 7);
      if (!*(v23 + 16))
      {
        break;
      }

      v24 = _s14DetectedResultVMa();
      v25 = *(v12 + 7);
      if (!*(v25 + 16))
      {
        goto LABEL_14;
      }

      v26 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
      v27 = *(v24 + 32);
      v28 = *(v23 + v26 + v27);
      v29 = *(v25 + v26 + v27);
      sub_1D9BE7070(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9BE7070(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v29 < v28)
      {
        if (!v17)
        {
          goto LABEL_15;
        }

        sub_1D9BE7008(v22, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D9BE7008(v9, v19, type metadata accessor for VisualUnderstanding.ImageRegion);
        v19 += v20;
        v22 += v20;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v37 + 1;
      v19 = v36 + v32;
      v21 = v35 - 1;
      v22 = v34 + v32;
      if (v37 + 1 == v33)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_1D9BE3DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s14DetectedResultVMa();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      sub_1D9BE64FC(v23, v17, _s14DetectedResultVMa);
      sub_1D9BE64FC(v20, v13, _s14DetectedResultVMa);
      v24 = *(v8 + 32);
      v25 = *&v17[v24];
      v26 = *&v13[v24];
      sub_1D9BE7070(v13, _s14DetectedResultVMa);
      sub_1D9BE7070(v17, _s14DetectedResultVMa);
      if (v26 >= v25)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_1D9BE7008(v23, v10, _s14DetectedResultVMa);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D9BE7008(v10, v20, _s14DetectedResultVMa);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9BE4038(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v122 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v117 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v113 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v106 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v106 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v106 - v16;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_147;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v101 = a4;
LABEL_105:
      v123 = v101;
      a4 = *(v101 + 2);
      if (a4 >= 2)
      {
        while (*a3)
        {
          v102 = *&v101[16 * a4];
          v103 = v101;
          v104 = *&v101[16 * a4 + 24];
          sub_1D9BE53AC(*a3 + *(v117 + 72) * v102, *a3 + *(v117 + 72) * *&v101[16 * a4 + 16], *a3 + *(v117 + 72) * v104, v5);
          if (v6)
          {
            goto LABEL_113;
          }

          if (v104 < v102)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_1D99E8FDC(v103);
          }

          if (a4 - 2 >= *(v103 + 2))
          {
            goto LABEL_133;
          }

          v105 = &v103[16 * a4];
          *v105 = v102;
          *(v105 + 1) = v104;
          v123 = v103;
          sub_1D99E8F50(a4 - 1);
          v101 = v123;
          a4 = *(v123 + 2);
          if (a4 <= 1)
          {
            goto LABEL_113;
          }
        }

        goto LABEL_145;
      }

LABEL_113:

      return;
    }

LABEL_141:
    v101 = sub_1D99E8FDC(a4);
    goto LABEL_105;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v118 = a3;
  v109 = a4;
LABEL_4:
  v114 = v20;
  if (v19 + 1 >= v18)
  {
    v37 = v19 + 1;
  }

  else
  {
    v120 = v18;
    a4 = *a3;
    v21 = *(v117 + 72);
    v5 = *a3 + v21 * (v19 + 1);
    sub_1D9BE64FC(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    v119 = v21;
    sub_1D9BE64FC(a4 + v21 * v19, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    v22 = *(v17 + 7);
    if (!*(v22 + 16))
    {
      goto LABEL_135;
    }

    v23 = _s14DetectedResultVMa();
    v24 = *(v23 - 8);
    v25 = *(v14 + 7);
    if (!*(v25 + 16))
    {
      goto LABEL_136;
    }

    v26 = v23;
    v108 = v6;
    v27 = v19;
    v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v29 = *(v23 + 32);
    v30 = *(v22 + v28 + v29);
    v31 = *(v25 + v28 + v29);
    sub_1D9BE7070(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9BE7070(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    v107 = v27;
    v6 = v27 + 2;
    a3 = (a4 + v119 * v6);
    while (v120 != v6)
    {
      a4 = type metadata accessor for VisualUnderstanding.ImageRegion;
      sub_1D9BE64FC(a3, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9BE64FC(v5, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      v32 = *(v17 + 7);
      if (!*(v32 + 16))
      {
        goto LABEL_116;
      }

      v33 = *(v14 + 7);
      if (!*(v33 + 16))
      {
        goto LABEL_117;
      }

      v34 = *(v26 + 32);
      v35 = *(v32 + v28 + v34);
      v36 = *(v33 + v28 + v34);
      sub_1D9BE7070(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9BE7070(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      ++v6;
      a3 = (a3 + v119);
      v5 += v119;
      if (v31 < v30 == v36 >= v35)
      {
        v37 = v6 - 1;
        goto LABEL_15;
      }
    }

    v37 = v120;
LABEL_15:
    v6 = v108;
    a4 = v109;
    a3 = v118;
    v19 = v107;
    if (v31 < v30)
    {
      if (v37 < v107)
      {
        goto LABEL_140;
      }

      if (v107 < v37)
      {
        v38 = v119 * (v37 - 1);
        v39 = v37;
        v40 = v37 * v119;
        v120 = v37;
        v41 = v107 * v119;
        do
        {
          if (v19 != --v39)
          {
            v42 = *v118;
            if (!*v118)
            {
              goto LABEL_144;
            }

            v5 = v42 + v41;
            sub_1D9BE7008(v42 + v41, v113, type metadata accessor for VisualUnderstanding.ImageRegion);
            if (v41 < v38 || v5 >= v42 + v40)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v41 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D9BE7008(v113, v42 + v38, type metadata accessor for VisualUnderstanding.ImageRegion);
          }

          ++v19;
          v38 -= v119;
          v40 -= v119;
          v41 += v119;
        }

        while (v19 < v39);
        v6 = v108;
        a4 = v109;
        a3 = v118;
        v19 = v107;
        v37 = v120;
      }
    }
  }

  v43 = a3[1];
  if (v37 >= v43)
  {
    goto LABEL_38;
  }

  if (__OFSUB__(v37, v19))
  {
    goto LABEL_137;
  }

  if (v37 - v19 >= a4)
  {
    goto LABEL_38;
  }

  if (__OFADD__(v19, a4))
  {
    goto LABEL_138;
  }

  if ((v19 + a4) >= v43)
  {
    v44 = a3[1];
  }

  else
  {
    v44 = v19 + a4;
  }

  if (v44 < v19)
  {
    goto LABEL_139;
  }

  if (v37 == v44)
  {
LABEL_38:
    v45 = v37;
    if (v37 < v19)
    {
      goto LABEL_134;
    }

    goto LABEL_39;
  }

  v108 = v6;
  v6 = *a3;
  v89 = *(v117 + 72);
  v90 = *a3 + v89 * (v37 - 1);
  v91 = v19;
  v92 = -v89;
  v107 = v91;
  a3 = (v91 - v37);
  v111 = v89;
  v112 = v44;
  v5 = v6 + v37 * v89;
LABEL_90:
  v119 = v90;
  v120 = v37;
  v115 = v5;
  v116 = a3;
  while (1)
  {
    sub_1D9BE64FC(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9BE64FC(v90, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    a4 = *(v17 + 7);
    if (!*(a4 + 16))
    {
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
      goto LABEL_141;
    }

    v93 = _s14DetectedResultVMa();
    v94 = *(v14 + 7);
    if (!*(v94 + 16))
    {
      goto LABEL_115;
    }

    v95 = (*(*(v93 - 8) + 80) + 32) & ~*(*(v93 - 8) + 80);
    v96 = *(v93 + 32);
    v97 = *(a4 + v95 + v96);
    v98 = *(v94 + v95 + v96);
    a4 = type metadata accessor for VisualUnderstanding.ImageRegion;
    sub_1D9BE7070(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9BE7070(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v98 >= v97)
    {
LABEL_89:
      v37 = v120 + 1;
      v45 = v112;
      v90 = v119 + v111;
      a3 = (v116 - 1);
      v5 = v115 + v111;
      if (v120 + 1 != v112)
      {
        goto LABEL_90;
      }

      v19 = v107;
      v6 = v108;
      if (v112 < v107)
      {
        goto LABEL_134;
      }

LABEL_39:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = v114;
      }

      else
      {
        v20 = sub_1D99E8FF0(0, *(v114 + 2) + 1, 1, v114);
      }

      a4 = *(v20 + 2);
      v46 = *(v20 + 3);
      v5 = a4 + 1;
      if (a4 >= v46 >> 1)
      {
        v20 = sub_1D99E8FF0((v46 > 1), a4 + 1, 1, v20);
      }

      *(v20 + 2) = v5;
      v47 = &v20[16 * a4];
      *(v47 + 4) = v19;
      *(v47 + 5) = v45;
      a3 = *v110;
      if (!*v110)
      {
        goto LABEL_146;
      }

      v112 = v45;
      if (a4)
      {
        while (1)
        {
          v48 = v5 - 1;
          if (v5 >= 4)
          {
            break;
          }

          if (v5 == 3)
          {
            v49 = *(v20 + 4);
            v50 = *(v20 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_58:
            if (v52)
            {
              goto LABEL_123;
            }

            v65 = &v20[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_126;
            }

            v71 = &v20[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_129;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_130;
            }

            if (v69 + v74 >= v51)
            {
              if (v51 < v74)
              {
                v48 = v5 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          v75 = &v20[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_72:
          if (v70)
          {
            goto LABEL_125;
          }

          v78 = &v20[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_128;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }

LABEL_79:
          a4 = v48 - 1;
          if (v48 - 1 >= v5)
          {
            goto LABEL_118;
          }

          if (!*v118)
          {
            goto LABEL_143;
          }

          v86 = v20;
          v87 = *&v20[16 * a4 + 32];
          v5 = *&v20[16 * v48 + 40];
          sub_1D9BE53AC(*v118 + *(v117 + 72) * v87, *v118 + *(v117 + 72) * *&v20[16 * v48 + 32], *v118 + *(v117 + 72) * v5, a3);
          if (v6)
          {
            goto LABEL_113;
          }

          if (v5 < v87)
          {
            goto LABEL_119;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v86 = sub_1D99E8FDC(v86);
          }

          if (a4 >= *(v86 + 2))
          {
            goto LABEL_120;
          }

          v88 = &v86[16 * a4];
          *(v88 + 4) = v87;
          *(v88 + 5) = v5;
          v123 = v86;
          sub_1D99E8F50(v48);
          v20 = v123;
          v5 = *(v123 + 2);
          if (v5 <= 1)
          {
            goto LABEL_3;
          }
        }

        v53 = &v20[16 * v5 + 32];
        v54 = *(v53 - 64);
        v55 = *(v53 - 56);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_121;
        }

        v58 = *(v53 - 48);
        v57 = *(v53 - 40);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_122;
        }

        v60 = &v20[16 * v5];
        v62 = *v60;
        v61 = *(v60 + 1);
        v59 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v59)
        {
          goto LABEL_124;
        }

        v59 = __OFADD__(v51, v63);
        v64 = v51 + v63;
        if (v59)
        {
          goto LABEL_127;
        }

        if (v64 >= v56)
        {
          v82 = &v20[16 * v48 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v59 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v59)
          {
            goto LABEL_131;
          }

          if (v51 < v85)
          {
            v48 = v5 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_58;
      }

LABEL_3:
      a3 = v118;
      v18 = v118[1];
      v19 = v112;
      a4 = v109;
      if (v112 >= v18)
      {
        goto LABEL_102;
      }

      goto LABEL_4;
    }

    if (!v6)
    {
      break;
    }

    a4 = type metadata accessor for VisualUnderstanding.ImageRegion;
    v99 = v121;
    sub_1D9BE7008(v5, v121, type metadata accessor for VisualUnderstanding.ImageRegion);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D9BE7008(v99, v90, type metadata accessor for VisualUnderstanding.ImageRegion);
    v90 += v92;
    v5 += v92;
    v100 = __CFADD__(a3, 1);
    a3 = (a3 + 1);
    if (v100)
    {
      goto LABEL_89;
    }
  }

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
}

void sub_1D9BE4A48(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = _s14DetectedResultVMa();
  v118 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v107 - v16;
  v120 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_135;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
    }

    else
    {
LABEL_129:
      v102 = sub_1D99E8FDC(a4);
    }

    v124 = v102;
    a4 = *(v102 + 2);
    if (a4 >= 2)
    {
      while (*v120)
      {
        v103 = *&v102[16 * a4];
        v104 = v102;
        v105 = *&v102[16 * a4 + 24];
        sub_1D9BE5974(*v120 + *(v118 + 72) * v103, *v120 + *(v118 + 72) * *&v102[16 * a4 + 16], *v120 + *(v118 + 72) * v105, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v105 < v103)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1D99E8FDC(v104);
        }

        if (a4 - 2 >= *(v104 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v104[16 * a4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v124 = v104;
        sub_1D99E8F50(a4 - 1);
        v102 = v124;
        a4 = *(v124 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v109 = a4;
  v123 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v114 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *(v118 + 72);
      v5 = *v120 + v23 * v22;
      v117 = *v120;
      v24 = v117;
      sub_1D9BE64FC(v117 + v23 * v22, v17, _s14DetectedResultVMa);
      v25 = v24 + v23 * v21;
      v26 = v21;
      v27 = v122;
      sub_1D9BE64FC(v25, v122, _s14DetectedResultVMa);
      v28 = *(v9 + 32);
      v29 = *&v17[v28];
      v30 = *(v27 + v28);
      sub_1D9BE7070(v27, _s14DetectedResultVMa);
      sub_1D9BE7070(v17, _s14DetectedResultVMa);
      v108 = v26;
      v31 = v26 + 2;
      v119 = v23;
      v32 = v117 + v23 * (v26 + 2);
      while (v18 != v31)
      {
        sub_1D9BE64FC(v32, v17, _s14DetectedResultVMa);
        v33 = v122;
        sub_1D9BE64FC(v5, v122, _s14DetectedResultVMa);
        v34 = *(v123 + 32);
        v35 = *&v17[v34];
        v36 = *(v33 + v34);
        sub_1D9BE7070(v33, _s14DetectedResultVMa);
        sub_1D9BE7070(v17, _s14DetectedResultVMa);
        ++v31;
        v32 += v119;
        v5 += v119;
        if (v30 < v29 == v36 >= v35)
        {
          v18 = v31 - 1;
          break;
        }
      }

      v21 = v108;
      a4 = v109;
      v9 = v123;
      if (v30 < v29)
      {
        if (v18 < v108)
        {
          goto LABEL_126;
        }

        if (v108 < v18)
        {
          v107 = v6;
          v37 = v119 * (v18 - 1);
          v38 = v18 * v119;
          v39 = v18;
          v40 = v18;
          v41 = v108;
          v42 = v108 * v119;
          do
          {
            if (v41 != --v40)
            {
              v43 = *v120;
              if (!*v120)
              {
                goto LABEL_132;
              }

              v5 = v43 + v42;
              sub_1D9BE7008(v43 + v42, v113, _s14DetectedResultVMa);
              if (v42 < v37 || v5 >= v43 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D9BE7008(v113, v43 + v37, _s14DetectedResultVMa);
            }

            ++v41;
            v37 -= v119;
            v38 -= v119;
            v42 += v119;
          }

          while (v41 < v40);
          v6 = v107;
          v21 = v108;
          a4 = v109;
          v9 = v123;
          v18 = v39;
        }
      }
    }

    v44 = v120[1];
    if (v18 < v44)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_125;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_127;
        }

        if ((v21 + a4) >= v44)
        {
          v45 = v120[1];
        }

        else
        {
          v45 = v21 + a4;
        }

        if (v45 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v18 != v45)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v114;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v114 + 2) + 1, 1, v114);
    }

    a4 = *(v20 + 2);
    v46 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v46 >> 1)
    {
      v20 = sub_1D99E8FF0((v46 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v47 = &v20[16 * a4];
    *(v47 + 4) = v21;
    *(v47 + 5) = v19;
    v48 = *v110;
    if (!*v110)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v49 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v50 = *(v20 + 4);
          v51 = *(v20 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_52:
          if (v53)
          {
            goto LABEL_113;
          }

          v66 = &v20[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_116;
          }

          v72 = &v20[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_120;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v76 = &v20[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_66:
        if (v71)
        {
          goto LABEL_115;
        }

        v79 = &v20[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_118;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v49 - 1;
        if (v49 - 1 >= v5)
        {
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

        if (!*v120)
        {
          goto LABEL_131;
        }

        v87 = v20;
        v88 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v49 + 40];
        sub_1D9BE5974(*v120 + *(v118 + 72) * v88, *v120 + *(v118 + 72) * *&v20[16 * v49 + 32], *v120 + *(v118 + 72) * v5, v48);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v88)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v89 = v87;
        }

        else
        {
          v89 = sub_1D99E8FDC(v87);
        }

        v9 = v123;
        if (a4 >= *(v89 + 2))
        {
          goto LABEL_110;
        }

        v90 = &v89[16 * a4];
        *(v90 + 4) = v88;
        *(v90 + 5) = v5;
        v124 = v89;
        sub_1D99E8F50(v49);
        v20 = v124;
        v5 = *(v124 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v20[16 * v5 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_111;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_112;
      }

      v61 = &v20[16 * v5];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_114;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_117;
      }

      if (v65 >= v57)
      {
        v83 = &v20[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_121;
        }

        if (v52 < v86)
        {
          v49 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v120[1];
    a4 = v109;
    if (v19 >= v18)
    {
      goto LABEL_96;
    }
  }

  v107 = v6;
  v108 = v21;
  a4 = *v120;
  v91 = *(v118 + 72);
  v92 = *v120 + v91 * (v18 - 1);
  v93 = -v91;
  v94 = v21 - v18;
  v111 = v91;
  v112 = v45;
  v5 = a4 + v18 * v91;
LABEL_86:
  v119 = v18;
  v115 = v5;
  v116 = v94;
  v117 = v92;
  v95 = v123;
  while (1)
  {
    sub_1D9BE64FC(v5, v17, _s14DetectedResultVMa);
    v96 = v122;
    sub_1D9BE64FC(v92, v122, _s14DetectedResultVMa);
    v97 = *(v95 + 32);
    v98 = *&v17[v97];
    v99 = *(v96 + v97);
    sub_1D9BE7070(v96, _s14DetectedResultVMa);
    sub_1D9BE7070(v17, _s14DetectedResultVMa);
    if (v99 >= v98)
    {
LABEL_85:
      v18 = v119 + 1;
      v19 = v112;
      v92 = v117 + v111;
      v94 = v116 - 1;
      v5 = v115 + v111;
      if (v119 + 1 != v112)
      {
        goto LABEL_86;
      }

      v6 = v107;
      v21 = v108;
      v9 = v123;
      if (v112 < v108)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v100 = v121;
    sub_1D9BE7008(v5, v121, _s14DetectedResultVMa);
    v95 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D9BE7008(v100, v92, _s14DetectedResultVMa);
    v92 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
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

void sub_1D9BE53AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v52);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v14 = *(v13 + 72);
  if (v14)
  {
    if (a2 - a1 == 0x8000000000000000 && v14 == -1)
    {
      goto LABEL_68;
    }

    v15 = a3 - a2;
    if (a3 - a2 == 0x8000000000000000 && v14 == -1)
    {
      goto LABEL_69;
    }

    v16 = (a2 - a1) / v14;
    v55 = a1;
    v54 = a4;
    if (v16 >= v15 / v14)
    {
      v18 = v15 / v14 * v14;
      v49 = v9;
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
        v30 = a4 + v18;
        v47 = a1;
        v50 = -v14;
        do
        {
          v46 = v28;
          v31 = a2;
          v32 = a2 + v29;
          v48 = v31;
          while (1)
          {
            if (v31 <= a1)
            {
              v55 = v31;
              v53 = v46;
              goto LABEL_62;
            }

            v33 = a3;
            v51 = v30;
            v34 = v30 + v29;
            sub_1D9BE64FC(v30 + v29, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
            v35 = v32;
            v36 = v32;
            v37 = v12;
            v38 = v49;
            sub_1D9BE64FC(v36, v49, type metadata accessor for VisualUnderstanding.ImageRegion);
            v39 = *(v37 + 56);
            if (!*(v39 + 16))
            {
              goto LABEL_65;
            }

            v40 = _s14DetectedResultVMa();
            v41 = *(v38 + 56);
            if (!*(v41 + 16))
            {
              goto LABEL_66;
            }

            v42 = (*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80);
            v43 = *(v40 + 32);
            v44 = *(v39 + v42 + v43);
            v45 = *(v41 + v42 + v43);
            sub_1D9BE7070(v38, type metadata accessor for VisualUnderstanding.ImageRegion);
            v12 = v37;
            sub_1D9BE7070(v37, type metadata accessor for VisualUnderstanding.ImageRegion);
            if (v45 < v44)
            {
              break;
            }

            v29 = v50;
            a3 = v33 + v50;
            v28 = v34;
            v32 = v35;
            if (v33 < v51 || a3 >= v51)
            {
              swift_arrayInitWithTakeFrontToBack();
              v29 = v50;
              a1 = v47;
            }

            else
            {
              a1 = v47;
              if (v33 != v51)
              {
                swift_arrayInitWithTakeBackToFront();
                v29 = v50;
              }
            }

            v30 = v34;
            v31 = v48;
            if (v34 <= a4)
            {
              a2 = v48;
              goto LABEL_61;
            }
          }

          v29 = v50;
          a3 = v33 + v50;
          a2 = v35;
          if (v33 < v48 || a3 >= v48)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v50;
            a1 = v47;
          }

          else
          {
            a1 = v47;
            if (v33 != v48)
            {
              swift_arrayInitWithTakeBackToFront();
              v29 = v50;
            }
          }

          v30 = v51;
        }

        while (v51 > a4);
      }

LABEL_61:
      v55 = a2;
      v53 = v28;
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

      v19 = a4 + v17;
      v53 = a4 + v17;
      if (v17 >= 1 && a2 < a3)
      {
        while (1)
        {
          sub_1D9BE64FC(a2, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
          sub_1D9BE64FC(a4, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
          v21 = *(v12 + 7);
          if (!*(v21 + 16))
          {
            break;
          }

          v22 = _s14DetectedResultVMa();
          v23 = *(v9 + 7);
          if (!*(v23 + 16))
          {
            goto LABEL_64;
          }

          v24 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
          v25 = *(v22 + 32);
          v26 = *(v21 + v24 + v25);
          v27 = *(v23 + v24 + v25);
          sub_1D9BE7070(v9, type metadata accessor for VisualUnderstanding.ImageRegion);
          sub_1D9BE7070(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
          if (v27 >= v26)
          {
            if (a1 < a4 || a1 >= a4 + v14)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v54 = a4 + v14;
            a4 += v14;
          }

          else
          {
            if (a1 < a2 || a1 >= a2 + v14)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }

          a1 += v14;
          v55 = a1;
          if (a4 >= v19 || a2 >= a3)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

LABEL_62:
    sub_1D9B015E8(&v55, &v54, &v53);
    return;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

void sub_1D9BE5974(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v46 = _s14DetectedResultVMa();
  MEMORY[0x1EEE9AC00](v46);
  v45 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41[1] = v4;
    v24 = a4 + v17;
    if (v17 < 1)
    {
      v27 = a4 + v17;
    }

    else
    {
      v25 = -v13;
      v26 = a4 + v17;
      v27 = v24;
      v43 = v25;
      v44 = a4;
      do
      {
        v41[0] = v27;
        v28 = a2;
        v29 = a2 + v25;
        while (1)
        {
          v31 = v47;
          if (v28 <= a1)
          {
            v50 = v28;
            v48 = v41[0];
            goto LABEL_59;
          }

          v42 = v27;
          v47 += v25;
          v32 = v26 + v25;
          sub_1D9BE64FC(v32, v11, _s14DetectedResultVMa);
          v33 = v29;
          v34 = v29;
          v35 = v11;
          v36 = v45;
          sub_1D9BE64FC(v34, v45, _s14DetectedResultVMa);
          v37 = *(v46 + 32);
          v38 = *(v35 + v37);
          v39 = *(v36 + v37);
          v40 = v36;
          v11 = v35;
          sub_1D9BE7070(v40, _s14DetectedResultVMa);
          sub_1D9BE7070(v35, _s14DetectedResultVMa);
          if (v39 < v38)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v47 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v44;
          v25 = v43;
          if (!v30)
          {
            a2 = v28;
            goto LABEL_58;
          }
        }

        if (v31 < v28 || v47 >= v28)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v42;
          v25 = v43;
        }

        else
        {
          v27 = v42;
          v25 = v43;
          a2 = v33;
          if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v44);
    }

LABEL_58:
    v50 = a2;
    v48 = v27;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < v47)
    {
      do
      {
        sub_1D9BE64FC(a2, v11, _s14DetectedResultVMa);
        v20 = v45;
        sub_1D9BE64FC(a4, v45, _s14DetectedResultVMa);
        v21 = *(v46 + 32);
        v22 = *&v11[v21];
        v23 = *(v20 + v21);
        sub_1D9BE7070(v20, _s14DetectedResultVMa);
        sub_1D9BE7070(v11, _s14DetectedResultVMa);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v50 = a1;
      }

      while (a4 < v18 && a2 < v47);
    }
  }

LABEL_59:
  sub_1D9B01600(&v50, &v49, &v48);
}

uint64_t sub_1D9BE5E6C(uint64_t a1, void (*a2)(_OWORD *, uint64_t), uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v5 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v28[1] = v3;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D99FE2B8(0, v8, 0);
  v9 = v39;
  v10 = a1 + 64;
  result = sub_1D9C7E35C();
  v12 = result;
  v13 = 0;
  v36 = *(a1 + 36);
  v29 = a1 + 72;
  v30 = v8;
  v31 = a1 + 64;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    if (v36 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v35 = v13;
    v16 = *(*(a1 + 56) + 8 * v12);
    v17 = (*(a1 + 48) + 32 * v12);
    v18 = v17[1];
    v37[0] = *v17;
    v37[1] = v18;
    v38 = v16;

    v33(v37, v16);

    v39 = v9;
    v20 = *(v9 + 16);
    v19 = *(v9 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1D99FE2B8(v19 > 1, v20 + 1, 1);
      v9 = v39;
    }

    *(v9 + 16) = v20 + 1;
    result = sub_1D9BE7008(v7, v9 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20, type metadata accessor for VisualUnderstanding.ImageRegion);
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_24;
    }

    v10 = v31;
    v21 = *(v31 + 8 * v15);
    if ((v21 & (1 << v12)) == 0)
    {
      goto LABEL_25;
    }

    if (v36 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v12 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v15 << 6;
      v24 = v15 + 1;
      v25 = (v29 + 8 * v15);
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1D99E92E4(v12, v36, 0);
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1D99E92E4(v12, v36, 0);
    }

LABEL_4:
    v13 = v35 + 1;
    v12 = v14;
    if (v35 + 1 == v30)
    {
      return v9;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D9BE6188(uint64_t a1)
{
  v2 = _s14DetectedResultVMa();
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - v5;
  v8 = MEMORY[0x1E69E7CC8];
  v49 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v10 = *(v4 + 80);
  v43 = v10;
  v11 = (v10 + 32) & ~v10;
  v12 = *(v4 + 72);
  v13 = a1 + v11;
  v41 = xmmword_1D9C85660;
  v45 = v2;
  v46 = v6;
  v44 = &v40 - v5;
  v42 = v11;
  while (1)
  {
    sub_1D9BE64FC(v13, v7, _s14DetectedResultVMa);
    v15 = v2;
    v16 = &v7[*(v2 + 24)];
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = *(v16 + 3);
    v47 = *(v16 + 1);
    v48 = v17;
    v21 = sub_1D99EE1AC(*&v17, v18, *&v47, v19);
    v22 = v8[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v8[3] < v24)
    {
      sub_1D9C0D324(v24, 1);
      v8 = v49;
      v26 = sub_1D99EE1AC(*&v48, v18, *&v47, v19);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_19;
      }

      v21 = v26;
    }

    if (v25)
    {
      v28 = v8[7];
      sub_1D9BE7008(v7, v46, _s14DetectedResultVMa);
      v29 = *(v28 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 8 * v21) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1D9AF9018(0, v29[2] + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        v29 = sub_1D9AF9018(v31 > 1, v32 + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v2 = v45;
      v14 = v46;
      v29[2] = v32 + 1;
      v11 = v42;
      sub_1D9BE7008(v14, v29 + v42 + v32 * v12, _s14DetectedResultVMa);
      v7 = v44;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB516B8);
      v33 = swift_allocObject();
      *(v33 + 16) = v41;
      sub_1D9BE7008(v7, v33 + v11, _s14DetectedResultVMa);
      v8[(v21 >> 6) + 8] |= 1 << v21;
      v34 = (v8[6] + 32 * v21);
      v35 = v47;
      *v34 = v48;
      v34[1] = v35;
      *(v8[7] + 8 * v21) = v33;
      v36 = v8[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v8[2] = v38;
      v2 = v15;
    }

    v13 += v12;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

uint64_t sub_1D9BE64FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9BE6564(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v44 - v6;
  v7 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v49 = (&v44 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v51 = *a2;
  v50 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  v22 = *(v50 + 20);
  v23 = a1;
  sub_1D99AB100(a1 + v22, v21, &qword_1ECB512C0);
  v24 = *(v10 + 48);
  LODWORD(a1) = v24(v21, 1, v9);
  sub_1D99A6AE0(v21, &qword_1ECB512C0);
  if (a1 == 1)
  {
    v25 = 0;
    v27 = v54;
    v26 = v55;
    v28 = v52;
    v29 = v53;
  }

  else
  {
    sub_1D99AB100(v23 + v22, v18, &qword_1ECB512C0);
    v30 = v24(v18, 1, v9);
    v45 = v22;
    v46 = v9;
    if (v30 == 1)
    {
      v31 = v49;
      *v49 = 0;
      v31[1] = 0xE000000000000000;
      v31[2] = MEMORY[0x1E69E7CC0];
      sub_1D9C7D3BC();
      v32 = v24;
      v33 = v24(v18, 1, v9);
      v28 = v52;
      v29 = v53;
      if (v33 != 1)
      {
        sub_1D99A6AE0(v18, &qword_1ECB512C0);
      }
    }

    else
    {
      v32 = v24;
      v31 = v49;
      sub_1D9BE7008(v18, v49, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
      v28 = v52;
      v29 = v53;
    }

    v34 = v31[2];

    sub_1D9BE7070(v31, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
    v35 = *(v34 + 16);

    if (v35)
    {
      v36 = v47;
      sub_1D99AB100(v23 + v45, v47, &qword_1ECB512C0);
      v37 = v46;
      if (v32(v36, 1, v46) == 1)
      {
        v38 = v48;
        *v48 = 0;
        v38[1] = 0xE000000000000000;
        v38[2] = MEMORY[0x1E69E7CC0];
        sub_1D9C7D3BC();
        v39 = v32(v36, 1, v37);
        v27 = v54;
        v26 = v55;
        if (v39 != 1)
        {
          sub_1D99A6AE0(v36, &qword_1ECB512C0);
        }
      }

      else
      {
        v38 = v48;
        sub_1D9BE7008(v36, v48, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
        v27 = v54;
        v26 = v55;
      }

      v25 = sub_1D99BDAB0();
      sub_1D9BE7070(v38, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
    }

    else
    {
      v25 = 0;
      v27 = v54;
      v26 = v55;
    }
  }

  sub_1D99AB100(v23 + *(v50 + 24), v26, &qword_1ECB512C8);
  v40 = *(v28 + 48);
  if (v40(v26, 1, v29) == 1)
  {
    *v27 = 0;
    *(v27 + 1) = 0xE000000000000000;
    *(v27 + 2) = MEMORY[0x1E69E7CC0];
    sub_1D9C7D3BC();
    v41 = *(v29 + 28);
    v42 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
    (*(*(v42 - 8) + 56))(&v27[v41], 1, 1, v42);
    if (v40(v26, 1, v29) != 1)
    {
      sub_1D99A6AE0(v26, &qword_1ECB512C8);
    }
  }

  else
  {
    sub_1D9BE7008(v26, v27, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  }

  v57 = v51;
  sub_1D99BF3E4(&v57, v56);
  sub_1D9BE7070(v27, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  return v25;
}

void *sub_1D9BE6BB0(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a3;
  v50 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v9 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  if (!a4)
  {

    return a1;
  }

  v53 = a5;
  v54 = a4;
  v21 = *a2;
  v48 = a2[1];
  v49 = v21;
  v22 = a1[2];
  if (v22)
  {
    v45 = v14;
    v46 = v11;
    v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v24 = a1 + v23;
    v47 = v9;
    v25 = *(v9 + 72);

    v26 = 0;
    a1 = MEMORY[0x1E69E7CC0];
    v51 = v25;
    do
    {
      sub_1D9BE64FC(v24, v20, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v20[104] == 1)
      {
        v27 = *(v20 + 10);
        v28 = *(v20 + 11);
        v55 = a1;
        v29 = v23;
        v30 = v54;

        v31 = v17;
        v32 = v53;

        sub_1D99F2604(v27, v28);
        *(v20 + 10) = v52;
        *(v20 + 11) = v30;
        v23 = v29;
        a1 = v55;
        v26 = 1;
        *(v20 + 12) = v32;
        v17 = v31;
        v25 = v51;
      }

      sub_1D9BE64FC(v20, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_1D9AF8A90(0, a1[2] + 1, 1, a1);
      }

      v34 = a1[2];
      v33 = a1[3];
      if (v34 >= v33 >> 1)
      {
        a1 = sub_1D9AF8A90(v33 > 1, v34 + 1, 1, a1);
      }

      a1[2] = v34 + 1;
      sub_1D9BE7008(v17, a1 + v23 + v34 * v25, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9BE7070(v20, type metadata accessor for VisualUnderstanding.ImageRegion);
      v24 += v25;
      --v22;
    }

    while (v22);
    if (v26)
    {

      return a1;
    }

    v11 = v46;
    v9 = v47;
    v14 = v45;
    v36 = v53;
    v35 = v54;
  }

  else
  {
    v35 = v54;

    v36 = v53;

    a1 = MEMORY[0x1E69E7CC0];
  }

  v37 = MEMORY[0x1E69E7CC0];
  v38 = v50;
  sub_1D9C7B92C();
  v39 = v48;
  *v14 = v49;
  *(v14 + 1) = v39;
  v14[32] = 1;
  *(v14 + 5) = v37;
  *(v14 + 6) = v37;
  *(v14 + 7) = v37;
  *(v14 + 8) = v37;
  v40 = v52;
  *(v14 + 9) = 0;
  *(v14 + 10) = v40;
  *(v14 + 11) = v35;
  *(v14 + 12) = v36;
  v14[104] = 1;
  *(v14 + 14) = v37;
  v14[*(v38 + 64)] = 0;
  *&v14[*(v38 + 68)] = v37;
  sub_1D9BE64FC(v14, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_1D9AF8A90(0, a1[2] + 1, 1, a1);
  }

  v42 = a1[2];
  v41 = a1[3];
  if (v42 >= v41 >> 1)
  {
    a1 = sub_1D9AF8A90(v41 > 1, v42 + 1, 1, a1);
  }

  sub_1D9BE7070(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
  a1[2] = v42 + 1;
  sub_1D9BE7008(v11, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v42, type metadata accessor for VisualUnderstanding.ImageRegion);
  return a1;
}

uint64_t sub_1D9BE7008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9BE7070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9BE70D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9BE7118(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1D9BE7168(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE300000000000000;
    v9 = 7631457;
    switch(*v4)
    {
      case 1:
        v8 = 0xE600000000000000;
        v9 = 0x65727574616ELL;
        break;
      case 2:
        v8 = 0xE800000000000000;
        v9 = 0x6B72616D646E616CLL;
        break;
      case 3:
        v9 = 0x4C6C61727574616ELL;
        v8 = 0xEF6B72616D646E61;
        break;
      case 4:
        v8 = 0xE500000000000000;
        v9 = 0x616964656DLL;
        break;
      case 5:
        v8 = 0xE400000000000000;
        v9 = 1802465122;
        break;
      case 6:
        v8 = 0xE500000000000000;
        v9 = 0x6D75626C61;
        break;
      case 7:
        v8 = 0xE400000000000000;
        v9 = 1937006947;
        break;
      case 8:
        v8 = 0xE400000000000000;
        v9 = 1936158564;
        break;
      case 9:
        v8 = 0xE700000000000000;
        v10 = 1835626081;
        goto LABEL_24;
      case 0xA:
        v8 = 0xE500000000000000;
        v9 = 0x7364726962;
        break;
      case 0xB:
        v8 = 0xE700000000000000;
        v9 = 0x73746365736E69;
        break;
      case 0xC:
        v8 = 0xE800000000000000;
        v9 = 0x73656C6974706572;
        break;
      case 0xD:
        v8 = 0xE700000000000000;
        v10 = 1835884909;
LABEL_24:
        v9 = v10 | 0x736C6100000000;
        break;
      case 0xE:
        v9 = 0xD000000000000010;
        v8 = 0x80000001D9CA2910;
        break;
      case 0xF:
        v8 = 0xE700000000000000;
        v9 = 0x6C657261707061;
        break;
      case 0x10:
        v9 = 0x726F737365636361;
        v8 = 0xEB00000000736569;
        break;
      case 0x11:
        v8 = 0xE400000000000000;
        v9 = 1685024614;
        break;
      case 0x12:
        v9 = 0x6F726665726F7473;
        v8 = 0xEA0000000000746ELL;
        break;
      case 0x13:
        v11 = 1852270963;
        goto LABEL_31;
      case 0x14:
        v9 = 0xD000000000000011;
        v8 = 0x80000001D9CA2950;
        break;
      case 0x15:
        v11 = 1869903201;
LABEL_31:
        v9 = v11 | 0x626D795300000000;
        v8 = 0xEA00000000006C6FLL;
        break;
      case 0x16:
        v9 = 0x676F4C646E617262;
        v8 = 0xEF6C6F626D79536FLL;
        break;
      case 0x17:
        v8 = 0xE700000000000000;
        v9 = 0x65646F63726162;
        break;
      case 0x18:
        v9 = 0x727574706C756373;
        v8 = 0xE900000000000065;
        break;
      case 0x19:
        v8 = 0xE700000000000000;
        v9 = 0x656E696C796B73;
        break;
      case 0x1A:
        v8 = 0xE800000000000000;
        v9 = 0x44327463656A626FLL;
        break;
      default:
        break;
    }

    v12 = 0xE300000000000000;
    v13 = 7631457;
    switch(a1)
    {
      case 1:
        v12 = 0xE600000000000000;
        if (v9 == 0x65727574616ELL)
        {
          goto LABEL_85;
        }

        goto LABEL_2;
      case 2:
        v12 = 0xE800000000000000;
        if (v9 != 0x6B72616D646E616CLL)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 3:
        v12 = 0xEF6B72616D646E61;
        if (v9 != 0x4C6C61727574616ELL)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 4:
        v12 = 0xE500000000000000;
        if (v9 != 0x616964656DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 5:
        v12 = 0xE400000000000000;
        if (v9 != 1802465122)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 6:
        v12 = 0xE500000000000000;
        if (v9 != 0x6D75626C61)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 7:
        v12 = 0xE400000000000000;
        if (v9 != 1937006947)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 8:
        v12 = 0xE400000000000000;
        if (v9 != 1936158564)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 9:
        v12 = 0xE700000000000000;
        v15 = 1835626081;
        goto LABEL_67;
      case 10:
        v12 = 0xE500000000000000;
        if (v9 != 0x7364726962)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 11:
        v12 = 0xE700000000000000;
        v14 = 0x746365736E69;
        goto LABEL_68;
      case 12:
        v12 = 0xE800000000000000;
        if (v9 != 0x73656C6974706572)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 13:
        v12 = 0xE700000000000000;
        v15 = 1835884909;
LABEL_67:
        v14 = v15 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_68:
        if (v9 != (v14 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 14:
        v12 = 0x80000001D9CA2910;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 15:
        v12 = 0xE700000000000000;
        if (v9 != 0x6C657261707061)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 16:
        v12 = 0xEB00000000736569;
        if (v9 != 0x726F737365636361)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 17:
        v12 = 0xE400000000000000;
        if (v9 != 1685024614)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 18:
        v12 = 0xEA0000000000746ELL;
        if (v9 != 0x6F726665726F7473)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 19:
        v16 = 1852270963;
        goto LABEL_81;
      case 20:
        v12 = 0x80000001D9CA2950;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 21:
        v16 = 1869903201;
LABEL_81:
        v12 = 0xEA00000000006C6FLL;
        if (v9 != (v16 | 0x626D795300000000))
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 22:
        v12 = 0xEF6C6F626D79536FLL;
        if (v9 != 0x676F4C646E617262)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 23:
        v12 = 0xE700000000000000;
        v13 = 0x65646F63726162;
        goto LABEL_84;
      case 24:
        v12 = 0xE900000000000065;
        if (v9 != 0x727574706C756373)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 25:
        v12 = 0xE700000000000000;
        if (v9 != 0x656E696C796B73)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      case 26:
        v12 = 0xE800000000000000;
        if (v9 != 0x44327463656A626FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_85;
      default:
LABEL_84:
        if (v9 != v13)
        {
          goto LABEL_2;
        }

LABEL_85:
        if (v8 != v12)
        {
LABEL_2:
          v5 = sub_1D9C7E7DC();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

char *sub_1D9BE77D4(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  for (i = (a3 + 32); ; i += 10)
  {
    v8 = i[7];
    v9 = i[5];
    v72 = i[6];
    v73 = v8;
    v10 = i[7];
    v74[0] = i[8];
    *(v74 + 13) = *(i + 141);
    v11 = i[3];
    v12 = i[1];
    v68 = i[2];
    v69 = v11;
    v13 = i[3];
    v14 = i[5];
    v70 = i[4];
    v71 = v14;
    v15 = i[1];
    v67[0] = *i;
    v67[1] = v15;
    v64 = v72;
    v65 = v10;
    v66[0] = i[8];
    *(v66 + 13) = *(i + 141);
    v60 = v68;
    v61 = v13;
    v62 = v70;
    v63 = v9;
    v58 = v67[0];
    v59 = v12;
    sub_1D99AE054(v67, &v40);
    a1(&v49, &v58);
    if (v3)
    {
      break;
    }

    v38[6] = v64;
    v38[7] = v65;
    v39[0] = v66[0];
    *(v39 + 13) = *(v66 + 13);
    v38[2] = v60;
    v38[3] = v61;
    v38[4] = v62;
    v38[5] = v63;
    v38[0] = v58;
    v38[1] = v59;
    sub_1D99AE0B0(v38);
    v46 = v55;
    v47 = v56;
    v48[0] = v57[0];
    *(v48 + 13) = *(v57 + 13);
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v40 = v49;
    v41 = v50;
    if (sub_1D99AE104(&v40) == 1)
    {
      v35 = v55;
      v36 = v56;
      v37[0] = v57[0];
      *(v37 + 13) = *(v57 + 13);
      v31 = v51;
      v32 = v52;
      v33 = v53;
      v34 = v54;
      v29 = v49;
      v30 = v50;
      sub_1D99A6AE0(&v29, &qword_1ECB510B8);
    }

    else
    {
      v35 = v55;
      v36 = v56;
      v37[0] = v57[0];
      *(v37 + 13) = *(v57 + 13);
      v31 = v51;
      v32 = v52;
      v33 = v53;
      v34 = v54;
      v29 = v49;
      v30 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D9AF8974(0, *(v6 + 2) + 1, 1, v6);
      }

      v17 = *(v6 + 2);
      v16 = *(v6 + 3);
      if (v17 >= v16 >> 1)
      {
        v6 = sub_1D9AF8974((v16 > 1), v17 + 1, 1, v6);
      }

      v24 = v33;
      v25 = v34;
      v22 = v31;
      v23 = v32;
      *&v28[13] = *(v37 + 13);
      v27 = v36;
      *v28 = v37[0];
      v26 = v35;
      v20 = v29;
      v21 = v30;
      *(v6 + 2) = v17 + 1;
      v18 = &v6[160 * v17];
      *(v18 + 2) = v20;
      *(v18 + 3) = v21;
      *(v18 + 6) = v24;
      *(v18 + 7) = v25;
      *(v18 + 4) = v22;
      *(v18 + 5) = v23;
      *(v18 + 173) = *&v28[13];
      *(v18 + 9) = v27;
      *(v18 + 10) = *v28;
      *(v18 + 8) = v26;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  v46 = v64;
  v47 = v65;
  v48[0] = v66[0];
  *(v48 + 13) = *(v66 + 13);
  v42 = v60;
  v43 = v61;
  v44 = v62;
  v45 = v63;
  v40 = v58;
  v41 = v59;
  sub_1D99AE0B0(&v40);

  return v6;
}

void *sub_1D9BE7B08(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(v13 + 72);
  v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a3 + v27;
  v31 = (v13 + 48);
  v19 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a2;
  while (1)
  {
    a1(v18, v14);
    if (v3)
    {
      break;
    }

    if ((*v31)(v9, 1, v10) == 1)
    {
      sub_1D99A6AE0(v9, &qword_1ECB51220);
    }

    else
    {
      v20 = v30;
      sub_1D9BFA0FC(v9, v30, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9BFA0FC(v20, v32, type metadata accessor for VisualUnderstanding.ImageRegion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D9AF8A90(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v24 = sub_1D9AF8A90(v21 > 1, v22 + 1, 1, v19);
        v23 = v17;
        v19 = v24;
      }

      else
      {
        v23 = v17;
      }

      v19[2] = v22 + 1;
      v17 = v23;
      sub_1D9BFA0FC(v32, v19 + v27 + v22 * v23, type metadata accessor for VisualUnderstanding.ImageRegion);
      v10 = v28;
    }

    v18 += v17;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}