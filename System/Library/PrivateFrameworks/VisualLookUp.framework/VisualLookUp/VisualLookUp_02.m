void sub_1D99B0B3C(void **a1)
{
  v2 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E9140(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D99B0BE4(v5);
  *a1 = v3;
}

void sub_1D99B0BE4(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D9C7E79C();
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
        type metadata accessor for VisualUnderstanding.ImageRegion();
        v6 = sub_1D9C7DF5C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D99B0F14(v8, v9, a1, v4);
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
    sub_1D99B0D10(0, v2, 1, a1);
  }
}

void sub_1D99B0D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v28 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v22;
    v33 = v20;
    while (1)
    {
      sub_1D99B1BBC(v23, v17);
      sub_1D99B1BBC(v20, v13);
      v25 = v17[19];
      v26 = v13[19];
      sub_1D99B1C88(v13);
      sub_1D99B1C88(v17);
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

      if (!v18)
      {
        break;
      }

      sub_1D99B1CE4(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D99B1CE4(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D99B0F14(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v107 = a1;
  v117 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v113 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v109 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v102 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v102 - v16);
  v115 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v5 = *v107;
    if (!*v107)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_1D99E8FDC(v20);
    }

    v118 = v20;
    v98 = *(v20 + 2);
    if (v98 >= 2)
    {
      while (*v115)
      {
        v99 = *&v20[16 * v98];
        v100 = *&v20[16 * v98 + 24];
        sub_1D99B1758(*v115 + *(v113 + 72) * v99, *v115 + *(v113 + 72) * *&v20[16 * v98 + 16], *v115 + *(v113 + 72) * v100, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v100 < v99)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D99E8FDC(v20);
        }

        if (v98 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v101 = &v20[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        v118 = v20;
        sub_1D99E8F50(v98 - 1);
        v20 = v118;
        v98 = *(v118 + 2);
        if (v98 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v105 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v115;
      v25 = *(v113 + 72);
      v5 = *v115 + v25 * v22;
      sub_1D99B1BBC(v5, v17);
      sub_1D99B1BBC(v24 + v25 * v23, v14);
      v26 = v17[19];
      v27 = v14[19];
      sub_1D99B1C88(v14);
      sub_1D99B1C88(v17);
      v106 = v23;
      v28 = v23 + 2;
      v114 = v25;
      v29 = v24 + v25 * v28;
      while (v18 != v28)
      {
        sub_1D99B1BBC(v29, v17);
        sub_1D99B1BBC(v5, v14);
        v30 = v17[19];
        v31 = v14[19];
        sub_1D99B1C88(v14);
        sub_1D99B1C88(v17);
        ++v28;
        v29 += v114;
        v5 += v114;
        if (v27 < v26 == v31 >= v30)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v106;
      if (v27 < v26)
      {
        if (v18 < v106)
        {
          goto LABEL_123;
        }

        if (v106 < v18)
        {
          v103 = v20;
          v104 = v6;
          v32 = v114 * (v18 - 1);
          v33 = v18 * v114;
          v112 = v18;
          v34 = v18;
          v35 = v106;
          v36 = v106 * v114;
          do
          {
            if (v35 != --v34)
            {
              v5 = *v115;
              if (!*v115)
              {
                goto LABEL_129;
              }

              sub_1D99B1CE4(v5 + v36, v109);
              if (v36 < v32 || v5 + v36 >= v5 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D99B1CE4(v109, v5 + v32);
            }

            ++v35;
            v32 -= v114;
            v33 -= v114;
            v36 += v114;
          }

          while (v35 < v34);
          v20 = v103;
          v6 = v104;
          v21 = v106;
          v18 = v112;
        }
      }
    }

    v37 = v115[1];
    if (v18 < v37)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_122;
      }

      if (v18 - v21 < v105)
      {
        if (__OFADD__(v21, v105))
        {
          goto LABEL_124;
        }

        if (v21 + v105 >= v37)
        {
          v38 = v115[1];
        }

        else
        {
          v38 = v21 + v105;
        }

        if (v38 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v18 != v38)
        {
          break;
        }
      }
    }

    v39 = v18;
    if (v18 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1D99E8FF0(0, *(v20 + 2) + 1, 1, v20);
    }

    v41 = *(v20 + 2);
    v40 = *(v20 + 3);
    v5 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v20 = sub_1D99E8FF0((v40 > 1), v41 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * v41];
    *(v42 + 4) = v21;
    *(v42 + 5) = v39;
    v43 = *v107;
    if (!*v107)
    {
      goto LABEL_131;
    }

    v110 = v39;
    if (v41)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_110;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_113;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_117;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_112;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_115;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        v82 = v44 - 1;
        if (v44 - 1 >= v5)
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
          goto LABEL_125;
        }

        if (!*v115)
        {
          goto LABEL_128;
        }

        v83 = *&v20[16 * v82 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_1D99B1758(*v115 + *(v113 + 72) * v83, *v115 + *(v113 + 72) * *&v20[16 * v44 + 32], *v115 + *(v113 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v5 < v83)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D99E8FDC(v20);
        }

        if (v82 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v84 = &v20[16 * v82];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v20;
        sub_1D99E8F50(v44);
        v20 = v118;
        v5 = *(v118 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_108;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_109;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_111;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_114;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_118;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v115[1];
    v19 = v110;
    if (v110 >= v18)
    {
      goto LABEL_94;
    }
  }

  v103 = v20;
  v104 = v6;
  v85 = *v115;
  v86 = *(v113 + 72);
  v87 = *v115 + v86 * (v18 - 1);
  v88 = v18;
  v89 = -v86;
  v106 = v21;
  v90 = v21 - v88;
  v112 = v88;
  v108 = v86;
  v91 = v85 + v88 * v86;
  v110 = v38;
LABEL_85:
  v5 = v91;
  v111 = v90;
  v92 = v90;
  v114 = v87;
  v93 = v87;
  while (1)
  {
    sub_1D99B1BBC(v5, v17);
    sub_1D99B1BBC(v93, v14);
    v94 = v17[19];
    v95 = v14[19];
    sub_1D99B1C88(v14);
    sub_1D99B1C88(v17);
    if (v95 >= v94)
    {
LABEL_84:
      v87 = v114 + v108;
      v90 = v111 - 1;
      v91 += v108;
      v39 = v110;
      if (++v112 != v110)
      {
        goto LABEL_85;
      }

      v20 = v103;
      v6 = v104;
      v21 = v106;
      if (v110 < v106)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    v96 = v116;
    sub_1D99B1CE4(v5, v116);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D99B1CE4(v96, v93);
    v93 += v89;
    v5 += v89;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1D99B1758(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v38 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v47 = a1;
  v46 = a4;
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

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v41 = v24;
      v42 = a4;
      do
      {
        v39 = v23;
        v26 = a2 + v24;
        while (1)
        {
          if (a2 <= a1)
          {
            v47 = a2;
            v23 = v39;
            goto LABEL_57;
          }

          v28 = a3;
          v40 = v23;
          a3 += v24;
          v29 = v25 + v24;
          sub_1D99B1BBC(v29, v11);
          v30 = v26;
          v31 = v26;
          v32 = v11;
          v33 = v44;
          sub_1D99B1BBC(v31, v44);
          v34 = *(v32 + 76);
          v35 = *(v33 + 76);
          v36 = v33;
          v11 = v32;
          sub_1D99B1C88(v36);
          sub_1D99B1C88(v32);
          if (v35 < v34)
          {
            break;
          }

          v23 = v29;
          if (v28 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v29;
            v26 = v30;
          }

          else
          {
            v26 = v30;
            if (v28 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v23 = v29;
            }
          }

          v25 = v23;
          v27 = v29 > v42;
          v24 = v41;
          if (!v27)
          {
            goto LABEL_55;
          }
        }

        if (v28 < a2 || a3 >= a2)
        {
          a2 = v30;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v41;
        }

        else
        {
          v37 = v28 == a2;
          a2 = v30;
          v24 = v41;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v23 = v40;
      }

      while (v25 > v42);
    }

LABEL_55:
    v47 = a2;
LABEL_57:
    v45 = v23;
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
    v45 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        sub_1D99B1BBC(a2, v11);
        v20 = v44;
        sub_1D99B1BBC(a4, v44);
        v21 = v11[19];
        v22 = *(v20 + 76);
        sub_1D99B1C88(v20);
        sub_1D99B1C88(v11);
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

          v46 = a4 + v13;
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
        v47 = a1;
      }

      while (a4 < v18 && a2 < a3);
    }
  }

  sub_1D9B015E8(&v47, &v46, &v45);
}

uint64_t sub_1D99B1BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstanding.ImageRegion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99B1C20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99B1C88(uint64_t a1)
{
  v2 = type metadata accessor for VisualUnderstanding.ImageRegion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D99B1CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstanding.ImageRegion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99B1D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D99B1DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstanding.ImageRegion();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99B1E14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51118);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0) - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    v26 = (v6 + 56);
    v27 = v14;
    v24 = v6;
    v25 = (v6 + 48);
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = sub_1D99B2914(v13, v11, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
      MEMORY[0x1EEE9AC00](v16);
      *(&v22 - 2) = v11;
      sub_1D99B29E4();
      sub_1D9C7D6BC();
      (*v26)(v4, 0, 1, v5);
      sub_1D99B2A3C(v11, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
      if ((*v25)(v4, 1, v5) == 1)
      {
        sub_1D99B2A9C(v4);
      }

      else
      {
        sub_1D99B2B04(v4, v28, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1D9AF9144(0, v15[2] + 1, 1, v15);
        }

        v18 = v15[2];
        v17 = v15[3];
        if (v18 >= v17 >> 1)
        {
          v15 = sub_1D9AF9144(v17 > 1, v18 + 1, 1, v15);
        }

        v15[2] = v18 + 1;
        sub_1D99B2B04(v28, v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
      }

      v13 += v27;
      --v12;
    }

    while (v12);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (*(v23 + 8))
  {
    sub_1D9A62460(v15, *(v23 + 16));
    v20 = v19;
  }

  else
  {

    return 0;
  }

  return v20;
}

uint64_t sub_1D99B21D4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v42 - v17;
  v19 = *a2;
  v20 = *a3;
  sub_1D99B2808(a1, &v42 - v17);
  v21 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  result = (*(*(v21 - 8) + 48))(v18, 1, v21);
  if (result == 1)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v24 = type metadata accessor for DomainPredictionDomainAssignmentRule();
        *(a5 + 24) = v24;
        *(a5 + 32) = &off_1F5533D00;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
        v26 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule;
      }

      else
      {
        if (EnumCaseMultiPayload == 10)
        {
          v27 = type metadata accessor for StorefrontDomainAssignmentRule();
          *(a5 + 24) = v27;
          *(a5 + 32) = &off_1F5530520;
          v28 = __swift_allocate_boxed_opaque_existential_1(a5);
          sub_1D99B2B04(v18, v28, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
          result = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0);
          v29 = a1 + *(result + 20);
          v30 = *v29;
          LOBYTE(v29) = *(v29 + 8);
          *(v28 + *(v27 + 20)) = v19;
          v31 = v28 + *(v27 + 24);
          *v31 = v30;
          v31[8] = v29;
          return result;
        }

        v24 = type metadata accessor for CustomDetectionDomainAssignmentRule();
        *(a5 + 24) = v24;
        *(a5 + 32) = &off_1F552BD18;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
        v26 = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v24 = type metadata accessor for PetsHeadTorsoDomainAssignmentRule();
      *(a5 + 24) = v24;
      *(a5 + 32) = &off_1F5533B38;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
      v26 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule;
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        sub_1D99B2B04(v18, v15, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
        sub_1D99B2914(v15, v12, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
        v32 = a1 + *(type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0) + 20);
        v33 = *v32;
        v34 = *(v32 + 8);
        v35 = type metadata accessor for GeoFenceDomainAssignmentRule();
        *(a5 + 24) = v35;
        *(a5 + 32) = &off_1F5536AF0;
        v36 = __swift_allocate_boxed_opaque_existential_1(a5);
        *(v36 + v35[5]) = v19;
        sub_1D99B2914(v12, v36, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
        v37 = v36 + v35[6];
        *v37 = v33;
        v37[8] = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51108);
        swift_allocObject();

        *(v36 + v35[7]) = sub_1D9C1B65C(0, sub_1D99B28DC, a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51110);
        swift_allocObject();

        v38 = sub_1D9C1A978(0, sub_1D99B28F8, a4);
        sub_1D99B2A3C(v12, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
        *(v36 + v35[8]) = v38;
        return sub_1D99B2A3C(v15, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
      }

      v24 = type metadata accessor for NestedNatureDomainAssignmentRule();
      *(a5 + 24) = v24;
      *(a5 + 32) = &off_1F5532E30;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
      v26 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule;
    }
  }

  else if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v24 = type metadata accessor for URLMatchDomainAssignmentRule();
      *(a5 + 24) = v24;
      *(a5 + 32) = &off_1F552DB98;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
      v26 = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v24 = type metadata accessor for BoxScoreDomainAssignmentRule();
      *(a5 + 24) = v24;
      *(a5 + 32) = &off_1F5531F88;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
      v26 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule;
    }

    else
    {
      v24 = type metadata accessor for OverlapRegionDomainAssignmentRule();
      *(a5 + 24) = v24;
      *(a5 + 32) = &off_1F552DE18;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
      v26 = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = type metadata accessor for ObjectDetectionDomainAssignmentRule();
      *(a5 + 24) = v24;
      *(a5 + 32) = &off_1F552BA40;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
      v26 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule;
    }

    else
    {
      v24 = type metadata accessor for FusionDomainAssignmentRule();
      *(a5 + 24) = v24;
      *(a5 + 32) = &off_1F5536728;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
      v26 = type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule;
    }
  }

  else
  {
    v24 = type metadata accessor for CoarseClassificationDomainAssignmentRule();
    *(a5 + 24) = v24;
    *(a5 + 32) = &off_1F5530168;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    v26 = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule;
  }

  sub_1D99B2B04(v18, boxed_opaque_existential_1, v26);
  v39 = a1 + *(type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0) + 20);
  v40 = *v39;
  LOBYTE(v39) = *(v39 + 8);
  *(boxed_opaque_existential_1 + v24[5]) = v19;
  v41 = boxed_opaque_existential_1 + v24[6];
  *v41 = v40;
  v41[8] = v39;
  *(boxed_opaque_existential_1 + v24[7]) = v20;
}

uint64_t sub_1D99B2808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1D99B2914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

float sub_1D99B297C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = *(v3 + 1);

  *a1 = v5;
  *(a1 + 8) = v4;
  result = v3[4];
  *(a1 + 32) = result;
  *(a1 + 36) = *(v3 + 20);
  return result;
}

unint64_t sub_1D99B29E4()
{
  result = qword_1EDD2DD10;
  if (!qword_1EDD2DD10)
  {
    type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2DD10);
  }

  return result;
}

uint64_t sub_1D99B2A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99B2A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D99B2B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99B2B6C()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  MEMORY[0x1DA73EAC0](v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D99B2BB4()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  MEMORY[0x1DA73EAC0](v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D99B2C08()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v1 = objc_allocWithZone(MEMORY[0x1E69945D8]);
  v2 = sub_1D9C7B86C();
  v3 = sub_1D9C7B86C();
  v4 = [v1 initWithPIRConfig:v2 keyStatus:v3];

  v5 = v0[2];
  v0[2] = v4;
  v6 = v4;

  if (v6)
  {
    v7 = v0[3];
    v20[0] = 0;
    v8 = [v7 setPIRConfig:v6 error:v20];
    v9 = v8;
    if (v20[0])
    {
      v20[0];
    }

    else
    {
      if (v8)
      {
        v11 = sub_1D9C7B87C();
        sub_1D99A5748(v11, v12);
      }

      v20[0] = 0;
      v13 = [v7 generateEvaluationKey_];
      if (!v20[0])
      {
        v15 = sub_1D9C7B87C();
        v17 = v16;

        v18 = v0[4];
        v19 = v0[5];
        v0[4] = v15;
        v0[5] = v17;
        sub_1D99A5748(v18, v19);
        return 1;
      }

      v20[0];
    }

    swift_willThrow();
  }

  else
  {
    sub_1D99B3CA0();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_1D99B2DE8()
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = sub_1D9C7D8DC();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v47 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = sub_1D9C7D97C();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9C7DCDC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7DCBC();
  v9 = sub_1D9C7DC8C();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  v12 = sub_1D9B0906C(3);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  MEMORY[0x1DA73DF10](v12, v14, v16, v18);

  v19 = *(v0 + 24);
  v20 = sub_1D9C7B86C();
  v21 = sub_1D9C7DC4C();

  *&v50[0] = 0;
  v22 = [v19 constructPIRRequestWithKeyword:v20 withEvaluationKey:1 shardId:v21 error:v50];

  v23 = *&v50[0];
  if (v22)
  {
    v43 = v9;
    v24 = sub_1D9C7B87C();
    v26 = v25;

    v52 = v24;
    v53 = v26;
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_1D99AF2FC(v24, v26);
    sub_1D9C7D43C();
    sub_1D99B3C58(&qword_1ECB51128, MEMORY[0x1E6994598]);
    v27 = v44;
    v28 = v45;
    v29 = v46;
    sub_1D9C7D67C();
    v30 = v29;
    if (!v29)
    {
      v41 = sub_1D9C7D66C();
      (*(v42 + 8))(v28, v27);
      sub_1D99B3C44(v43, v11);
      sub_1D99A5748(v24, v26);
      return v41;
    }

    sub_1D99B3C44(v43, v11);
    sub_1D99A5748(v24, v26);
  }

  else
  {
    v31 = v23;
    v30 = sub_1D9C7B70C();

    swift_willThrow();
    sub_1D99B3C44(v9, v11);
  }

  v32 = v47;
  static Logger.argos.getter(v47);
  v33 = v30;
  v41 = v32;
  v34 = sub_1D9C7D8BC();
  v35 = sub_1D9C7E0AC();

  if (os_log_type_enabled(v34, v35))
  {
    v41 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v50[0] = v37;
    *v41 = 136315394;
    *(v41 + 4) = sub_1D9A0E224(0xD00000000000001BLL, 0x80000001D9CA4300, v50);
    *(v41 + 12) = 2112;
    v38 = v30;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 14) = v39;
    *v36 = v39;
    _os_log_impl(&dword_1D9962000, v34, v35, "CipherMLPIRClient.%s failed: %@", v41, 0x16u);
    sub_1D99AF294(v36);
    MEMORY[0x1DA7405F0](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x1DA7405F0](v37, -1, -1);
    MEMORY[0x1DA7405F0](v41, -1, -1);
  }

  (*(v48 + 8))(v32, v49);
  swift_willThrow();
  return v41;
}

NSObject *sub_1D99B33F0(uint64_t a1, unint64_t a2)
{
  v62 = a2;
  v61 = a1;
  v70 = *MEMORY[0x1E69E9840];
  v2 = sub_1D9C7D8DC();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v54 - v5;
  v6 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1D9C7D9BC();
  v57 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9C7DCDC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7DCBC();
  v65 = sub_1D9C7DC8C();
  v15 = v14;
  (*(v11 + 8))(v13, v10);
  v64 = v15;
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  v16 = sub_1D9B0906C(3);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  MEMORY[0x1DA73DF10](v16, v18, v20, v22);

  v68 = v61;
  v69 = v62;
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  sub_1D99AF2FC(v61, v62);
  sub_1D9C7D43C();
  sub_1D99B3C58(&qword_1ECB51120, MEMORY[0x1E69945B8]);
  v23 = v63;
  sub_1D9C7D67C();
  v24 = v23;
  if (v23)
  {
    sub_1D99B3C44(v65, v64);

LABEL_5:
    v28 = v58;
    static Logger.argos.getter(v58);
    v29 = v24;
    v30 = sub_1D9C7D8BC();
    v31 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v66[0] = v34;
      *v32 = 136315394;
      *(v32 + 4) = sub_1D9A0E224(0xD000000000000025, 0x80000001D9CA42D0, v66);
      *(v32 + 12) = 2112;
      v35 = v24;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v36;
      *v33 = v36;
      _os_log_impl(&dword_1D9962000, v30, v31, "CipherMLPIRClient.%s failed: %@", v32, 0x16u);
      sub_1D99AF294(v33);
      MEMORY[0x1DA7405F0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x1DA7405F0](v34, -1, -1);
      MEMORY[0x1DA7405F0](v32, -1, -1);
    }

    (*(v59 + 8))(v28, v60);
    swift_willThrow();
    return v30;
  }

  v25 = v9;
  v26 = *(v56 + 24);
  v27 = sub_1D9C7D66C();
  v63 = v7;
  v38 = v27;
  v40 = v39;
  v41 = sub_1D9C7B86C();
  sub_1D99A5748(v38, v40);
  v42 = v64;
  v43 = sub_1D9C7B86C();
  v44 = sub_1D9C7DC4C();

  *&v66[0] = 0;
  v45 = [v26 decryptPIRResponse:v41 keyword:v43 shardId:v44 error:v66];

  if (*&v66[0])
  {
    v24 = *&v66[0];

    swift_willThrow();
    sub_1D99B3C44(v65, v42);
    (*(v57 + 8))(v25, v63);
    goto LABEL_5;
  }

  v46 = v63;
  if (v45)
  {
    v30 = sub_1D9C7B87C();
    sub_1D99B3C44(v65, v64);

    (*(v57 + 8))(v25, v46);
  }

  else
  {
    v47 = v55;
    static Logger.argos.getter(v55);
    v48 = sub_1D9C7D8BC();
    v49 = sub_1D9C7E0AC();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v64;
    if (v50)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v66[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_1D9A0E224(0xD000000000000025, 0x80000001D9CA42D0, v66);
      _os_log_impl(&dword_1D9962000, v48, v49, "CipherMLPIRClient.%s empty result", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x1DA7405F0](v53, -1, -1);
      MEMORY[0x1DA7405F0](v52, -1, -1);
    }

    sub_1D99B3C44(v65, v51);

    (*(v59 + 8))(v47, v60);
    (*(v57 + 8))(v25, v46);
    return 0;
  }

  return v30;
}

uint64_t sub_1D99B3B7C()
{
  sub_1D99A5748(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1D99B3C44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D99A5748(a1, a2);
  }

  return a1;
}

uint64_t sub_1D99B3C58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D99B3CA0()
{
  result = qword_1ECB51130;
  if (!qword_1ECB51130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51130);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLEngineType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLEngineType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D99B3E48()
{
  result = qword_1ECB51138;
  if (!qword_1ECB51138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51138);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D99B3F00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D99B3F48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D99B3FA0(uint64_t a1)
{
  v3 = v2;
  v49 = *MEMORY[0x1E69E9840];
  v40 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  if (!v4)
  {
    v12 = v1;
    v8 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_24;
    }

LABEL_28:
    if (sub_1D9C7E50C())
    {
      goto LABEL_25;
    }

LABEL_29:
    if (v8 >> 62)
    {
      if (sub_1D9C7E50C())
      {
        goto LABEL_31;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_31:

      goto LABEL_39;
    }

    if (v11 >> 62)
    {
      v27 = sub_1D9C7E50C();
    }

    else
    {
      v27 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v27)
    {

      sub_1D99A182C();
      swift_allocError();
      *v37 = xmmword_1D9C85A30;
      *(v37 + 16) = 3;
      swift_willThrow();
      return;
    }

    goto LABEL_39;
  }

  v5 = a1 + 32;
  v6 = a1 + 32;
  v7 = *(a1 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D99A17C8(v6, v43);
    sub_1D9979B9C(v43, &v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51140);
    sub_1D99B47C8();
    if ((swift_dynamicCast() & 1) != 0 && v48)
    {
      MEMORY[0x1DA73E0E0]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D9C7DF4C();
      }

      sub_1D9C7DF6C();
      v39 = v40;
    }

    v6 += 40;
    --v7;
  }

  while (v7);
  v8 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  v9 = v5;
  v10 = v4;
  do
  {
    sub_1D99A17C8(v9, v43);
    sub_1D9979B9C(v43, &v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51140);
    type metadata accessor for EspressoRequest(0);
    if ((swift_dynamicCast() & 1) != 0 && v48)
    {
      MEMORY[0x1DA73E0E0]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D9C7DF4C();
      }

      sub_1D9C7DF6C();
      v8 = v41;
    }

    v9 += 40;
    --v10;
  }

  while (v10);
  v11 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D99A17C8(v5, v43);
    sub_1D9979B9C(v43, &v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51140);
    type metadata accessor for E5Request();
    if ((swift_dynamicCast() & 1) != 0 && v48)
    {
      MEMORY[0x1DA73E0E0]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D9C7DF4C();
      }

      sub_1D9C7DF6C();
      v11 = v42;
    }

    v5 += 40;
    --v4;
  }

  while (v4);
  v3 = v2;
  v12 = v38;
  v13 = v39;
  if (v39 >> 62)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

LABEL_25:
  v14 = v12[3];
  v15 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v14);
  v16 = (*(v15 + 24))(v14, v15);
  if (v3)
  {

LABEL_56:

    return;
  }

  v17 = v16;
  v18 = v12[3];
  v19 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v18);
  v20 = (*(v19 + 8))(v18, v19);
  sub_1D9A43CBC(MEMORY[0x1E69E7CC0]);
  v21 = objc_allocWithZone(MEMORY[0x1E69845B8]);
  type metadata accessor for VNImageOption(0);
  sub_1D99B4814();
  v22 = sub_1D9C7DB3C();

  v23 = [v21 initWithCVPixelBuffer:v17 orientation:v20 options:v22];

  sub_1D99B47C8();
  v24 = sub_1D9C7DF1C();

  *&v43[0] = 0;
  LODWORD(v17) = [v23 performRequests:v24 error:v43];

  if (!v17)
  {
    v26 = *&v43[0];

    sub_1D9C7B70C();

    swift_willThrow();
    return;
  }

  v25 = *&v43[0];

LABEL_39:
  if (v8 >> 62)
  {
    v28 = sub_1D9C7E50C();
  }

  else
  {
    v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = 0x1E8589000uLL;
  if (v28)
  {
    sub_1D99A17C8(v38, v43);
    v30 = type metadata accessor for ProcessInputImageEspresso();
    v31 = swift_allocObject();
    *(v31 + 16) = [objc_allocWithZone(VIImageScaler) init];
    if (qword_1EDD2AEC8 != -1)
    {
      swift_once();
    }

    v32 = qword_1EDD2AED0;
    os_unfair_lock_lock((qword_1EDD2AED0 + 40));
    sub_1D9A3F3B8((v32 + 16));
    if (v3)
    {
      goto LABEL_58;
    }

    v3 = 0;
    os_unfair_lock_unlock((v32 + 40));
    v46 = v30;
    v47 = &off_1F552DD68;
    *&v45 = v31;
    sub_1D9979B9C(&v45, v44);
    v33 = sub_1D9B80130(v8);

    sub_1D9B813E8(v33);

    sub_1D99B486C(v43);
    v29 = 0x1E8589000;
  }

  else
  {
  }

  if (v11 >> 62)
  {
    if (!sub_1D9C7E50C())
    {
      goto LABEL_56;
    }
  }

  else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

  sub_1D99A17C8(v38, v43);
  v34 = type metadata accessor for ProcessInputImageEspresso();
  v35 = swift_allocObject();
  *(v35 + 16) = [objc_allocWithZone(*(v29 + 2040)) init];
  if (qword_1EDD2AEC8 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDD2AED0;
  os_unfair_lock_lock((qword_1EDD2AED0 + 40));
  sub_1D9A3F3B8((v32 + 16));
  if (!v3)
  {
    os_unfair_lock_unlock((v32 + 40));
    v44[3] = v34;
    v44[4] = &off_1F552DD68;
    v44[0] = v35;
    v36 = sub_1D9B80150(v11);

    sub_1D9A5B260(v36);

    sub_1D99B48C0(v43);
    return;
  }

LABEL_58:
  os_unfair_lock_unlock((v32 + 40));
  __break(1u);
}

unint64_t sub_1D99B47C8()
{
  result = qword_1EDD2A610;
  if (!qword_1EDD2A610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD2A610);
  }

  return result;
}

unint64_t sub_1D99B4814()
{
  result = qword_1ECB50FB8;
  if (!qword_1ECB50FB8)
  {
    type metadata accessor for VNImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB50FB8);
  }

  return result;
}

void __swiftcall NormalizedQuad.init(topLeft:bottomLeft:bottomRight:topRight:)(VisualLookUp::NormalizedQuad *__return_ptr retstr, CGPoint topLeft, CGPoint bottomLeft, CGPoint bottomRight, CGPoint topRight)
{
  retstr->topLeft.x = topLeft.x;
  retstr->topLeft.y = topLeft.y;
  retstr->bottomLeft.x = bottomLeft.x;
  retstr->bottomLeft.y = bottomLeft.y;
  retstr->bottomRight.x = bottomRight.x;
  retstr->bottomRight.y = bottomRight.y;
  retstr->topRight.x = topRight.x;
  retstr->topRight.y = topRight.y;
}

uint64_t sub_1D99B494C()
{
  v1 = 0x7466654C706F74;
  v2 = 0x69526D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x7468676952706F74;
  }

  if (*v0)
  {
    v1 = 0x654C6D6F74746F62;
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

uint64_t sub_1D99B49D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D99B5370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D99B4A14(uint64_t a1)
{
  v2 = sub_1D99B5000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D99B4A50(uint64_t a1)
{
  v2 = sub_1D99B5000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NormalizedQuad.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51148);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = v1[7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D99B5000();
  sub_1D9C7E96C();
  v19 = v8;
  v20 = v9;
  v18 = 0;
  type metadata accessor for CGPoint(0);
  sub_1D99B5054(&qword_1EDD2A638);
  sub_1D9C7E74C();
  if (!v2)
  {
    v19 = v10;
    v20 = v11;
    v18 = 1;
    sub_1D9C7E74C();
    v19 = v12;
    v20 = v13;
    v18 = 2;
    sub_1D9C7E74C();
    v19 = v14;
    v20 = v15;
    v18 = 3;
    sub_1D9C7E74C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t NormalizedQuad.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51158);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D99B5000();
  sub_1D9C7E95C();
  if (!v2)
  {
    type metadata accessor for CGPoint(0);
    v14 = 0;
    sub_1D99B5054(&qword_1EDD2A630);
    sub_1D9C7E65C();
    v9 = v13;
    v14 = 1;
    sub_1D9C7E65C();
    v10 = v13;
    v14 = 2;
    sub_1D9C7E65C();
    v12 = v13;
    v14 = 3;
    sub_1D9C7E65C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

BOOL _s12VisualLookUp14NormalizedQuadV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1])
  {
    v5 = a1[3].f64[1];
    v6 = a1[3].f64[0] == a2[3].f64[0];
    return v5 == a2[3].f64[1] && v6;
  }

  return result;
}

unint64_t sub_1D99B5000()
{
  result = qword_1ECB51150;
  if (!qword_1ECB51150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51150);
  }

  return result;
}

uint64_t sub_1D99B5054(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D99B50AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D99B50CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NormalizedQuad.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NormalizedQuad.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D99B526C()
{
  result = qword_1ECB51160;
  if (!qword_1ECB51160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51160);
  }

  return result;
}

unint64_t sub_1D99B52C4()
{
  result = qword_1ECB51168;
  if (!qword_1ECB51168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51168);
  }

  return result;
}

unint64_t sub_1D99B531C()
{
  result = qword_1ECB51170;
  if (!qword_1ECB51170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51170);
  }

  return result;
}

uint64_t sub_1D99B5370(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7466654C706F74 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654C6D6F74746F62 && a2 == 0xEA00000000007466 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69526D6F74746F62 && a2 == 0xEB00000000746867 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7468676952706F74 && a2 == 0xE800000000000000)
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

uint64_t sub_1D99B54E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = v9;
  v11 = v8;
  *&v113 = a6;
  LODWORD(v112) = a5;
  LODWORD(v111) = a4;
  v105 = a2;
  v109 = *v11;
  v110 = a3;
  v15 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v114 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v104 = &v101 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v101 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v106 = (&v101 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v101 - v25);
  v27 = *(a1 + 144);
  v28 = *(a1 + 112);
  v138 = *(a1 + 128);
  v139 = v27;
  v29 = *(a1 + 144);
  v140 = *(a1 + 160);
  v30 = *(a1 + 80);
  v31 = *(a1 + 48);
  v137[0] = *(a1 + 64);
  v137[1] = v30;
  v32 = *(a1 + 80);
  v33 = *(a1 + 112);
  v137[2] = *(a1 + 96);
  v137[3] = v33;
  v34 = *(a1 + 16);
  v133 = *a1;
  v134 = v34;
  v35 = *(a1 + 48);
  v37 = *a1;
  v36 = *(a1 + 16);
  v135 = *(a1 + 32);
  v136 = v35;
  v129 = v138;
  v130 = v29;
  v131 = *(a1 + 160);
  v125[1] = v137[0];
  v126 = v32;
  v127 = v137[2];
  v128 = v28;
  v122 = v37;
  v123 = v36;
  v141 = *(a1 + 176);
  v132 = *(a1 + 176);
  v124 = v135;
  v125[0] = v31;
  v38 = *(sub_1D9B67A68() + 16);

  if (!v38)
  {
    v48 = v139;
    *(a8 + 128) = v138;
    *(a8 + 144) = v48;
    *(a8 + 160) = v140;
    *(a8 + 176) = v141;
    v49 = v137[1];
    *(a8 + 64) = v137[0];
    *(a8 + 80) = v49;
    v50 = v137[3];
    *(a8 + 96) = v137[2];
    *(a8 + 112) = v50;
    v51 = v134;
    *a8 = v133;
    *(a8 + 16) = v51;
    v52 = v136;
    *(a8 + 32) = v135;
    *(a8 + 48) = v52;
    return sub_1D99BB40C(&v133, &v122);
  }

  v147 = a7;
  v102 = a8;
  v129 = v138;
  v130 = v139;
  v131 = v140;
  v132 = v141;
  v125[1] = v137[0];
  v126 = v137[1];
  v127 = v137[2];
  v128 = v137[3];
  v122 = v133;
  v123 = v134;
  v124 = v135;
  v125[0] = v136;
  v39 = sub_1D9B67A68();
  v40 = *(v39 + 16);
  if (v40)
  {
    v103 = v17;
    *&v117 = MEMORY[0x1E69E7CC0];
    v108 = v39;
    sub_1D99FE2F8(0, v40, 0);
    v41 = v108;
    v17 = 0;
    v42 = v117;
    v43 = v108 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v44 = v9;
    while (v17 < *(v41 + 16))
    {
      sub_1D99B1BBC(v43 + *(v114 + 72) * v17, v26);
      sub_1D99B5FD8(v26, v11, &v133, v110, v111 & 1, v112 & 1, v113, v147, &v119, v109, &v115);
      if (v44)
      {
        sub_1D99BB1F4(v26, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      v44 = 0;
      v10 = v11;
      sub_1D99BB1F4(v26, type metadata accessor for VisualUnderstanding.ImageRegion);
      v45 = v42;
      *&v117 = v42;
      v47 = v42[2];
      v46 = v42[3];
      if (v47 >= v46 >> 1)
      {
        v101 = 0;
        sub_1D99FE2F8((v46 > 1), v47 + 1, 1);
        v44 = v101;
        v45 = v117;
      }

      ++v17;
      v45[2] = (v47 + 1);
      v42 = v45;
      sub_1D9979B9C(&v119, &v45[5 * v47 + 4]);
      v11 = v10;
      v41 = v108;
      if (v40 == v17)
      {

        v17 = v103;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_56:
    v10 = sub_1D9AF916C(0, v10[2] + 1, 1, v10);
    goto LABEL_21;
  }

  v42 = MEMORY[0x1E69E7CC0];
  v44 = v9;
LABEL_13:
  v10 = v42;
  v54 = *(v105 + 9);
  v26 = &type metadata for BatchModelRequest;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = &off_1F55354D0;
  v113 = _Q0;
  if (v54)
  {
    sub_1D99A17C8((v11 + 6), &v122);
    v60 = v11[12];
    *(&v124 + 1) = 0;
    *&v125[0] = 0;
    *(v125 + 8) = v113;
    *(&v125[1] + 1) = v60;
    *&v126 = v147;

    swift_unknownObjectRetain();
    sub_1D9ABFE8C(&v122, sub_1D99BB3AC, v11, &v119);
    if (v44)
    {
      sub_1D99BB3B8(&v122);
    }

    sub_1D99BB3B8(&v122);
  }

  else
  {
    if (qword_1EDD2B8C8 != -1)
    {
      swift_once();
    }

    v120 = &type metadata for BatchModelRequest;
    v121 = &off_1F55354D0;
    *&v119 = qword_1EDD417A8;
  }

  sub_1D99A17C8(&v119, &v122);
  v40 = v44;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_21:
  v62 = v10[2];
  v61 = v10[3];
  if (v62 >= v61 >> 1)
  {
    v10 = sub_1D9AF916C((v61 > 1), v62 + 1, 1, v10);
  }

  v10[2] = v62 + 1;
  sub_1D9979B9C(&v122, &v10[5 * v62 + 4]);
  v129 = v138;
  v130 = v139;
  v131 = v140;
  v132 = v141;
  v125[1] = v137[0];
  v126 = v137[1];
  v127 = v137[2];
  v128 = v137[3];
  v122 = v133;
  v123 = v134;
  v124 = v135;
  v125[0] = v136;
  v115 = 0uLL;
  v116 = v113;
  sub_1D99B9AE8(&v122, &v115, v105, v147, &v117);
  if (v118)
  {
    sub_1D9979B9C(&v117, &v122);
    sub_1D99A17C8(&v122, &v117);
    v64 = v10[2];
    v63 = v10[3];
    if (v64 >= v63 >> 1)
    {
      v10 = sub_1D9AF916C((v63 > 1), v64 + 1, 1, v10);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v122);
    v10[2] = v64 + 1;
    sub_1D9979B9C(&v117, &v10[5 * v64 + 4]);
  }

  else
  {
    sub_1D99BB294(&v117);
  }

  v129 = v138;
  v130 = v139;
  v131 = v140;
  v132 = v141;
  v125[1] = v137[0];
  v126 = v137[1];
  v127 = v137[2];
  v128 = v137[3];
  v122 = v133;
  v123 = v134;
  v124 = v135;
  v125[0] = v136;
  v115 = 0uLL;
  v116 = v113;
  sub_1D99BA1E4(&v122, &v115, v105, v147, &v117);
  if (v118)
  {
    sub_1D9979B9C(&v117, &v122);
    sub_1D99A17C8(&v122, &v117);
    v66 = v10[2];
    v65 = v10[3];
    if (v66 >= v65 >> 1)
    {
      v10 = sub_1D9AF916C((v65 > 1), v66 + 1, 1, v10);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v122);
    v10[2] = v66 + 1;
    sub_1D9979B9C(&v117, &v10[5 * v66 + 4]);
  }

  else
  {
    sub_1D99BB294(&v117);
  }

  *(&v123 + 1) = v26;
  *&v124 = v42;
  *&v122 = v10;

  sub_1D99B8CDC(&v122);
  v67 = v106;
  if (v40)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v119);

    return __swift_destroy_boxed_opaque_existential_0Tm(&v122);
  }

  else
  {
    v147 = v10;
    v101 = 0;
    __swift_destroy_boxed_opaque_existential_0Tm(&v122);
    v68 = v11[14];
    if (v68)
    {
      v69 = v68;

      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(&v119);
    }

    else
    {
      v70 = *(v133 + 16);
      if (v70)
      {
        v103 = v17;
        v71 = v114;
        v72 = (*(v114 + 80) + 32) & ~*(v114 + 80);
        v73 = v133 + v72;
        swift_beginAccess();
        v74 = *(v71 + 72);
        v75 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1D99B1BBC(v73, v67);
          v76 = v11[13];
          v77 = v67;
          if (*(v76 + 16))
          {
            v79 = v67[2];
            v78 = v67[3];
            v81 = *v67;
            v80 = v67[1];

            v82 = sub_1D99EE1AC(v81, v80, v79, v78);
            if (v83)
            {
              v67 = v103;
              sub_1D99B1BBC(*(v76 + 56) + v82 * v74, v103);

              sub_1D99BB1F4(v106, type metadata accessor for VisualUnderstanding.ImageRegion);
            }

            else
            {
            }

            v77 = v67;
          }

          v84 = v104;
          sub_1D99B1CE4(v77, v104);
          sub_1D99B1CE4(v84, v107);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_1D9AF8A90(0, v75[2] + 1, 1, v75);
          }

          v86 = v75[2];
          v85 = v75[3];
          if (v86 >= v85 >> 1)
          {
            v75 = sub_1D9AF8A90(v85 > 1, v86 + 1, 1, v75);
          }

          v75[2] = v86 + 1;
          sub_1D99B1CE4(v107, v75 + v72 + v86 * v74);
          v73 += v74;
          --v70;
          v67 = v106;
        }

        while (v70);
      }

      else
      {

        v75 = MEMORY[0x1E69E7CC0];
      }

      v87 = *(&v133 + 1);
      if (*(&v133 + 1) == 1)
      {
        v87 = 0;
        v111 = 0;
        v112 = 0;
        v147 = 0;
        *&v113 = 0;
        v114 = 0;
        v89 = v11[15];
        v88 = v11[16];
      }

      else
      {
        v114 = *(&v136 + 1);
        v90 = v136;
        v91 = v134;
        v89 = v11[15];
        v88 = v11[16];
        v147 = *&v137[0];

        v111 = v91;

        v112 = *(&v91 + 1);

        *&v113 = v90;
      }

      v145 = *(v137 + 8);
      v146 = *(&v137[1] + 8);
      v143 = *(&v137[2] + 8);
      v144 = BYTE8(v137[3]);
      v92 = v11;
      v93 = v11[17];
      v94 = v11[18];
      v95 = v92[19];
      v96 = v139;
      v142 = v141;

      sub_1D99BB2FC(v93);
      sub_1D99BB33C(&v142, &v117);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v119);
      v97 = v146;
      v98 = v102;
      *(v102 + 72) = v145;
      *v98 = v75;
      *(v98 + 8) = v87;
      v99 = v112;
      *(v98 + 16) = v111;
      *(v98 + 24) = v99;
      *(v98 + 32) = v89;
      *(v98 + 40) = v88;
      v100 = v114;
      *(v98 + 48) = v113;
      *(v98 + 56) = v100;
      *(v98 + 64) = v147;
      *(v98 + 88) = v97;
      *(v98 + 104) = v143;
      *(v98 + 120) = v144;
      *(v98 + 128) = 0;
      *(v98 + 136) = 0xE000000000000000;
      *(v98 + 144) = v96;
      *(v98 + 152) = v93;
      *(v98 + 160) = v94;
      *(v98 + 168) = v95;
      *(v98 + 176) = v142;
    }
  }

  return result;
}

uint64_t sub_1D99B5FD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, void *a11)
{
  v39 = a8;
  v40 = a7;
  v41 = a6;
  v38 = a5;
  v45 = a4;
  v42 = a3;
  v43 = a9;
  v13 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v35 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v36 = v14;
  v37 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  result = sub_1D9B67DFC();
  v16 = result;
  v17 = *(result + 16);
  if (v17)
  {
    v18 = 0;
    v19 = (result + 32);
    v20 = MEMORY[0x1E69E7CC0];
    while (v18 < *(v16 + 16))
    {
      v21 = *v19;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D9AF8AB8(0, *(v20 + 16) + 1, 1, v20);
        v20 = result;
      }

      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1D9AF8AB8((v22 > 1), v23 + 1, 1, v20);
        v20 = result;
      }

      ++v18;
      *(v20 + 16) = v23 + 1;
      *(v20 + v23 + 32) = v21;
      v19 += 160;
      if (v17 == v18)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_11:

    v34 = a2[5];
    v24 = a2[11];
    v25 = a2[12];
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = v44;
    v28 = v37;
    sub_1D99B1BBC(v44, v37);
    v29 = (*(v35 + 80) + 24) & ~*(v35 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v26;
    sub_1D99B1CE4(v28, v30 + v29);
    v31 = v38 & 1;

    v33 = v31;
    v32 = v46;
    sub_1D99B6358(v27, v20, (a2 + 6), (v42 + 72), v25, v34, v24, v45, v43, v33, v41 & 1, v40, 3, 3, v39, sub_1D99BB4B4, v30);

    if (v32)
    {
      *a11 = v32;
    }
  }

  return result;
}

uint64_t sub_1D99B62C4(__int128 *a1, uint64_t a2, double *a3)
{
  v8 = *a1;
  v9 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 48);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10[0] = v8;
    v10[1] = v9;
    v11 = v4;
    v12 = v5;
    v13 = v6;
    sub_1D99B8E24(v10, a3);
  }

  return result;
}

uint64_t sub_1D99B6358@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X3>, uint64_t a5@<X4>, NSObject *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = v17;
  v275 = a6;
  v276 = a8;
  v262 = a7;
  v273 = a3;
  v274 = a5;
  v278 = a2;
  v242 = a9;
  v21 = sub_1D9C7D8DC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v238 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v238 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v266 = &v238 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v238 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v288 = &v238 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v284 = &v238 - v36;
  v287 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v246 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287);
  v267 = (&v238 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38);
  v261 = &v238 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v265 = (&v238 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v260 = &v238 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v303 = (&v238 - v45);
  v46 = *a4;
  v250 = a4[1];
  v251 = v46;
  v47 = a4[2];
  v248 = a4[3];
  v249 = v47;
  if (qword_1EDD2B8C8 != -1)
  {
    goto LABEL_261;
  }

LABEL_2:
  v280 = qword_1EDD417A8;

  v268 = a1;
  v48 = sub_1D9A1E0BC(a1);
  v243 = v48[2];
  if (!v243)
  {
LABEL_254:

    v234 = v242;
    v242[3] = &type metadata for BatchModelRequest;
    v234[4] = &off_1F55354D0;
    *v234 = v280;
    return result;
  }

  v50 = 0;
  v282 = a17;
  v281 = a16;
  v272 = a15;
  v302 = a14;
  v271 = a13;
  v255 = a12;
  v51 = *(v246 + 80);
  v270 = a11;
  v269 = a10;
  v245 = v48 + ((v51 + 32) & ~v51);
  v289 = 0x80000001D9CA3A40;
  v301 = v22 + 2;
  v300 = v22 + 1;
  v258 = 0x80000001D9CA2910;
  v259 = 0x80000001D9CA2950;
  *&v254 = -0.1;
  v239 = ".pets .maxResults not found";
  v240 = "ltsAnimals not found";
  *&v49 = 134217984;
  v263 = v49;
  *&v49 = 136315138;
  v285 = v49;
  *&v49 = 136315906;
  v253 = v49;
  *&v49 = 136316162;
  v252 = v49;
  *&v49 = 136446466;
  v290 = v49;
  v241 = "imageFingerprint";
  v279 = *(v278 + 16);
  v277 = v278 + 32;
  v291 = v24;
  v292 = v21;
  v264 = v27;
  v286 = v32;
  v244 = v48;
  while (1)
  {
    if (v50 >= v48[2])
    {
      goto LABEL_260;
    }

    v52 = *(v246 + 72);
    v247 = v50;
    v53 = sub_1D99B1BBC(&v245[v52 * v50], v303);
    if (v279)
    {
      break;
    }

LABEL_4:
    v22 = (&v247->isa + 1);
    sub_1D99BB1F4(v303, type metadata accessor for VisualUnderstanding.ImageRegion);
    v50 = v22;
    v48 = v244;
    if (v22 == v243)
    {
      goto LABEL_254;
    }
  }

  v32 = 0;
  while (1)
  {
    if (v32 >= *(v278 + 16))
    {
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      swift_once();
      goto LABEL_2;
    }

    v54 = v32[v277];
    v55 = *v303;
    v56 = v303[1];
    v57 = v303[2];
    v58 = v303[3];
    v304 = v32[v277];
    if (v54 > 17)
    {
      if ((v54 - 19) < 3)
      {
        v66 = *&v254;
      }

      else
      {
        if ((v54 - 24) >= 2)
        {
          if (v54 == 18)
          {
            goto LABEL_25;
          }

          goto LABEL_250;
        }

LABEL_18:
        if (v255 != 5)
        {
          v27 = 1;
          y = v250;
          x = v251;
          height = v248;
          width = v249;
          goto LABEL_28;
        }

LABEL_25:
        v66 = -0.3;
      }

      v27 = 1;
      goto LABEL_27;
    }

    if (v54 > 8)
    {
      if ((v54 - 9) < 5)
      {
        a1 = &v238;
        MEMORY[0x1EEE9AC00](v53);
        *(&v238 - 2) = v65;
        *(&v238 - 4) = 15873;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511E8);
        v60 = v18;
        sub_1D9C7E11C();
        if (v312)
        {
          v235 = 0xD000000000000024;
          v236 = v241;
          goto LABEL_257;
        }

LABEL_22:
        v18 = v60;
        v27 = v311;
        v66 = -0.3;
LABEL_27:
        v323.origin.x = v55;
        v323.origin.y = v56;
        v323.size.width = v57;
        v323.size.height = v58;
        v67 = CGRectGetWidth(v323) * v66 * 0.5;
        v324.origin.x = v55;
        v324.origin.y = v56;
        v324.size.width = v57;
        v324.size.height = v58;
        v68 = CGRectGetHeight(v324) * v66 * 0.5;
        v325.origin.x = v55;
        v325.origin.y = v56;
        v325.size.width = v57;
        v325.size.height = v58;
        v326 = CGRectInset(v325, v67, v68);
        v328.origin.x = 0.0;
        v328.origin.y = 0.0;
        v328.size.width = 1.0;
        v328.size.height = 1.0;
        v327 = CGRectIntersection(v326, v328);
        x = v327.origin.x;
        y = v327.origin.y;
        width = v327.size.width;
        height = v327.size.height;
        goto LABEL_28;
      }

LABEL_250:
      v27 = 1;
      goto LABEL_251;
    }

    if ((v54 - 2) < 2)
    {
      goto LABEL_18;
    }

    if ((v54 - 7) < 2)
    {
      a1 = &v238;
      MEMORY[0x1EEE9AC00](v53);
      *(&v238 - 2) = v59;
      *(&v238 - 4) = 16386;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511E8);
      v60 = v18;
      sub_1D9C7E11C();
      if (v312)
      {
        v235 = 0xD00000000000001BLL;
        v236 = v240;
        goto LABEL_257;
      }

      goto LABEL_22;
    }

    if (v54 != 1)
    {
      goto LABEL_250;
    }

    a1 = &v238;
    MEMORY[0x1EEE9AC00](v53);
    *(&v238 - 2) = v232;
    *(&v238 - 4) = 16385;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511E8);
    sub_1D9C7E11C();
    if (v312)
    {
      break;
    }

    v27 = v311;
LABEL_251:
    x = v55;
    y = v56;
    width = v57;
    height = v58;
LABEL_28:
    if (qword_1EDD354B8 != -1)
    {
      swift_once();
    }

    v299 = byte_1EDD354C0;
    if (byte_1EDD354C0 != 1)
    {
      goto LABEL_43;
    }

    v69 = [objc_opt_self() mainBundle];
    v70 = [v69 bundleIdentifier];

    if (v70)
    {
      v71 = sub_1D9C7DC7C();
      v73 = v72;

      if (v71 == 0xD00000000000002BLL && v289 == v73)
      {

LABEL_36:
        v75 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v75 = &off_1ECB51BA8;
        }

        goto LABEL_40;
      }

      v74 = sub_1D9C7E7DC();

      if (v74)
      {
        goto LABEL_36;
      }
    }

    v75 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v75 = &qword_1EDD355A8;
    }

LABEL_40:
    v76 = *(*v75 + 32);

    a1 = sub_1D9C7DC4C();
    LODWORD(v76) = [v76 BOOLForKey_];

    if (v76)
    {
      v77 = qword_1EDD2C990;
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
        v77 = qword_1EDD2C990;
      }

      goto LABEL_45;
    }

LABEL_43:
    v77 = qword_1EDD354D8;
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
      v77 = qword_1EDD354D8;
    }

LABEL_45:
    v78 = __swift_project_value_buffer(v21, v77);
    isa = v301->isa;
    isa(v284, v78, v21);
    v79 = sub_1D9C7D8BC();
    v80 = sub_1D9C7E09C();
    if (os_log_type_enabled(v79, v80))
    {
      a1 = swift_slowAlloc();
      *a1 = v263;
      *(a1 + 4) = v27;
      _os_log_impl(&dword_1D9962000, v79, v80, "SignalsExtractionProcessor: createModelInput maxResults set to %ld", a1, 0xCu);
      MEMORY[0x1DA7405F0](a1, -1, -1);
    }

    v297 = v300->isa;
    v297(v284, v21);
    sub_1D99A17C8(v273, v316);
    *&v316[5] = x;
    *&v316[6] = y;
    *&v316[7] = width;
    *&v316[8] = height;
    *&v316[9] = v55;
    *&v316[10] = v56;
    *&v316[11] = v57;
    *&v316[12] = v58;
    v81 = v304;
    v317 = v304;
    v318 = v27;
    v319 = v274;
    v320 = v271;
    v321 = v302;
    v322 = v272;
    LOBYTE(v311) = v304;
    swift_unknownObjectRetain();

    v22 = v275;
    v82 = sub_1D9C00AD4(&v311, v276, v269 & 1, v270 & 1);
    v83 = v82;
    v283 = v32;
    if (v82 >> 62)
    {
      v22 = v82;
      v84 = sub_1D9C7E50C();
      v83 = v22;
      if (!v84)
      {
        goto LABEL_8;
      }

LABEL_49:
      if (v84 >= 1)
      {
        v85 = 0;
        v294 = v83 & 0xC000000000000001;
        v295 = v84;
        v296 = v83;
        while (2)
        {
          if (v294)
          {
            v86 = MEMORY[0x1DA73E610](v85);
          }

          else
          {
            v86 = *(v83 + 8 * v85 + 32);
          }

          LOBYTE(v311) = v81;
          v87 = *(v303 + 14);
          v88 = *(*v86 + 88);
          v305 = v86;
          v89 = v88(&v311, v87, v302);
          if (v18)
          {
            v90 = v18;
            v18 = 0;
            if (!v299)
            {
              goto LABEL_88;
            }

            v91 = [objc_opt_self() mainBundle];
            v92 = [v91 bundleIdentifier];

            if (v92)
            {
              v93 = sub_1D9C7DC7C();
              v95 = v94;

              if (v93 == 0xD00000000000002BLL && v289 == v95)
              {
              }

              else
              {
                v97 = sub_1D9C7E7DC();

                if ((v97 & 1) == 0)
                {
                  goto LABEL_64;
                }
              }

              v98 = &off_1ECB51BA8;
              if (qword_1ECB50988 != -1)
              {
                swift_once();
                v98 = &off_1ECB51BA8;
              }
            }

            else
            {
LABEL_64:
              v98 = &qword_1EDD355A8;
              if (qword_1EDD355A0 != -1)
              {
                swift_once();
                v98 = &qword_1EDD355A8;
              }
            }

            v112 = *(*v98 + 32);

            v113 = sub_1D9C7DC4C();
            a1 = [v112 BOOLForKey_];

            if (a1)
            {
              v114 = qword_1EDD2C990;
              if (qword_1EDD2C988 != -1)
              {
                swift_once();
                v114 = qword_1EDD2C990;
              }
            }

            else
            {
LABEL_88:
              v114 = qword_1EDD354D8;
              if (qword_1EDD354D0 != -1)
              {
                swift_once();
                v114 = qword_1EDD354D8;
              }
            }

            v115 = __swift_project_value_buffer(v21, v114);
            isa(v24, v115, v21);
            v116 = v90;
            v22 = v24;
            v27 = sub_1D9C7D8BC();
            v117 = sub_1D9C7E0AC();

            if (os_log_type_enabled(v27, v117))
            {
              a1 = swift_slowAlloc();
              v118 = swift_slowAlloc();
              v311 = v118;
              *a1 = v290;
              v119 = 0xE300000000000000;
              v120 = v118;
              v293 = 0;
              v121 = 7631457;
              switch(v304)
              {
                case 1:
                  v119 = 0xE600000000000000;
                  v121 = 0x65727574616ELL;
                  break;
                case 2:
                  v119 = 0xE800000000000000;
                  v121 = 0x6B72616D646E616CLL;
                  break;
                case 3:
                  v121 = 0x4C6C61727574616ELL;
                  v119 = 0xEF6B72616D646E61;
                  break;
                case 4:
                  v119 = 0xE500000000000000;
                  v121 = 0x616964656DLL;
                  break;
                case 5:
                  v119 = 0xE400000000000000;
                  v121 = 1802465122;
                  break;
                case 6:
                  v119 = 0xE500000000000000;
                  v121 = 0x6D75626C61;
                  break;
                case 7:
                  v119 = 0xE400000000000000;
                  v121 = 1937006947;
                  break;
                case 8:
                  v119 = 0xE400000000000000;
                  v121 = 1936158564;
                  break;
                case 9:
                  v119 = 0xE700000000000000;
                  v153 = 1835626081;
                  goto LABEL_146;
                case 10:
                  v119 = 0xE500000000000000;
                  v121 = 0x7364726962;
                  break;
                case 11:
                  v119 = 0xE700000000000000;
                  v121 = 0x73746365736E69;
                  break;
                case 12:
                  v119 = 0xE800000000000000;
                  v121 = 0x73656C6974706572;
                  break;
                case 13:
                  v119 = 0xE700000000000000;
                  v153 = 1835884909;
LABEL_146:
                  v121 = v153 | 0x736C6100000000;
                  break;
                case 14:
                  v121 = 0xD000000000000010;
                  v119 = v258;
                  break;
                case 15:
                  v119 = 0xE700000000000000;
                  v121 = 0x6C657261707061;
                  break;
                case 16:
                  v121 = 0x726F737365636361;
                  v119 = 0xEB00000000736569;
                  break;
                case 17:
                  v119 = 0xE400000000000000;
                  v121 = 1685024614;
                  break;
                case 18:
                  v119 = 0xEA0000000000746ELL;
                  v121 = 0x6F726665726F7473;
                  break;
                case 19:
                  v154 = 1852270963;
                  goto LABEL_153;
                case 20:
                  v121 = 0xD000000000000011;
                  v119 = v259;
                  break;
                case 21:
                  v154 = 1869903201;
LABEL_153:
                  v121 = v154 | 0x626D795300000000;
                  v119 = 0xEA00000000006C6FLL;
                  break;
                case 22:
                  v121 = 0x676F4C646E617262;
                  v119 = 0xEF6C6F626D79536FLL;
                  break;
                case 23:
                  v119 = 0xE700000000000000;
                  v121 = 0x65646F63726162;
                  break;
                case 24:
                  v121 = 0x727574706C756373;
                  v119 = 0xE900000000000065;
                  break;
                case 25:
                  v119 = 0xE700000000000000;
                  v121 = 0x656E696C796B73;
                  break;
                case 26:
                  v119 = 0xE800000000000000;
                  v121 = 0x44327463656A626FLL;
                  break;
                default:
                  break;
              }

              v155 = sub_1D9A0E224(v121, v119, &v311);

              *(a1 + 4) = v155;
              *(a1 + 6) = 2082;
              swift_getErrorValue();
              v156 = sub_1D9A4F730(v315);
              v22 = v157;
              v158 = sub_1D9A0E224(v156, v157, &v311);

              *(a1 + 14) = v158;
              _os_log_impl(&dword_1D9962000, v27, v117, "Error creating model request for domain %{public}s: %{public}s", a1, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1DA7405F0](v120, -1, -1);
              MEMORY[0x1DA7405F0](a1, -1, -1);

              v24 = v291;
              v21 = v292;
              v297(v291, v292);
              v18 = v293;
            }

            else
            {

              v297(v22, v21);
              v24 = v22;
            }

            goto LABEL_52;
          }

          if ((v89 & 1) == 0)
          {
            if (*(v303 + *(v287 + 64)) != 1)
            {
              (*(*v305 + 80))(&v311, v316, v281, v282);
              v122 = v313;
              v123 = v314;
              __swift_project_boxed_opaque_existential_1(&v311, v313);
              if ((*(v123 + 8))(v122, v123))
              {
                a1 = v267;
                if (!v299)
                {
                  goto LABEL_193;
                }

                v124 = [objc_opt_self() mainBundle];
                v125 = [v124 bundleIdentifier];

                if (v125)
                {
                  v126 = sub_1D9C7DC7C();
                  v128 = v127;

                  if (v126 == 0xD00000000000002BLL && v289 == v128)
                  {

LABEL_186:
                    v164 = &off_1ECB51BA8;
                    if (qword_1ECB50988 != -1)
                    {
                      swift_once();
                      v164 = &off_1ECB51BA8;
                    }

LABEL_190:
                    v165 = *(*v164 + 32);

                    v166 = sub_1D9C7DC4C();
                    LODWORD(v165) = [v165 BOOLForKey_];

                    a1 = v267;
                    if (v165)
                    {
                      v167 = qword_1EDD2C990;
                      v168 = v268;
                      if (qword_1EDD2C988 != -1)
                      {
                        swift_once();
                        v167 = qword_1EDD2C990;
                      }

                      goto LABEL_195;
                    }

LABEL_193:
                    v167 = qword_1EDD354D8;
                    v168 = v268;
                    if (qword_1EDD354D0 != -1)
                    {
                      swift_once();
                      v167 = qword_1EDD354D8;
                    }

LABEL_195:
                    v169 = __swift_project_value_buffer(v21, v167);
                    v170 = v264;
                    isa(v264, v169, v21);
                    v27 = v261;
                    sub_1D99B1BBC(v303, v261);
                    sub_1D99B1BBC(v168, a1);
                    v171 = sub_1D9C7D8BC();
                    LODWORD(v293) = sub_1D9C7E09C();
                    if (os_log_type_enabled(v171, v293))
                    {
                      a1 = swift_slowAlloc();
                      v257 = swift_slowAlloc();
                      *&v306 = v257;
                      *a1 = v253;
                      v172 = v304;
                      v173 = sub_1D9A15C94(v304);
                      v256 = v171;
                      v175 = sub_1D9A0E224(v173, v174, &v306);

                      *(a1 + 4) = v175;
                      *(a1 + 6) = 2080;
                      v176 = *(v27 + 16);
                      v309 = *v27;
                      v310 = v176;
                      v177 = NormalizedRect.loggingDescription.getter();
                      v179 = v178;
                      sub_1D99BB1F4(v27, type metadata accessor for VisualUnderstanding.ImageRegion);
                      v180 = sub_1D9A0E224(v177, v179, &v306);

                      *(a1 + 14) = v180;
                      v27 = 2080;
                      *(a1 + 11) = 2080;
                      v181 = sub_1D9A15C94(v172);
                      v183 = sub_1D9A0E224(v181, v182, &v306);

                      a1[3] = v183;
                      *(a1 + 16) = 2080;
                      v184 = v267;
                      v185 = v267[1];
                      v309 = *v267;
                      v310 = v185;
                      v186 = NormalizedRect.loggingDescription.getter();
                      v188 = v187;
                      v24 = v291;
                      sub_1D99BB1F4(v184, type metadata accessor for VisualUnderstanding.ImageRegion);
                      v189 = sub_1D9A0E224(v186, v188, &v306);
                      v21 = v292;

                      *(a1 + 34) = v189;
                      v22 = v256;
                      _os_log_impl(&dword_1D9962000, v256, v293, "Empty model request: %s for %s with %s. Input region is %s", a1, 0x2Au);
                      v190 = v257;
                      swift_arrayDestroy();
                      MEMORY[0x1DA7405F0](v190, -1, -1);
                      MEMORY[0x1DA7405F0](a1, -1, -1);

                      v191 = v264;
                    }

                    else
                    {

                      v22 = type metadata accessor for VisualUnderstanding.ImageRegion;
                      sub_1D99BB1F4(a1, type metadata accessor for VisualUnderstanding.ImageRegion);
                      sub_1D99BB1F4(v27, type metadata accessor for VisualUnderstanding.ImageRegion);
                      v191 = v170;
                    }

                    v297(v191, v21);
LABEL_217:
                    __swift_destroy_boxed_opaque_existential_0Tm(&v311);
                    goto LABEL_52;
                  }

                  v163 = sub_1D9C7E7DC();

                  if (v163)
                  {
                    goto LABEL_186;
                  }
                }

                v164 = &qword_1EDD355A8;
                if (qword_1EDD355A0 != -1)
                {
                  swift_once();
                  v164 = &qword_1EDD355A8;
                }

                goto LABEL_190;
              }

              if (!v299)
              {
                goto LABEL_207;
              }

              v138 = [objc_opt_self() mainBundle];
              v139 = [v138 bundleIdentifier];

              if (v139)
              {
                v140 = sub_1D9C7DC7C();
                v142 = v141;

                if (v140 == 0xD00000000000002BLL && v289 == v142)
                {

LABEL_200:
                  v193 = &off_1ECB51BA8;
                  if (qword_1ECB50988 != -1)
                  {
                    swift_once();
                    v193 = &off_1ECB51BA8;
                  }

LABEL_204:
                  v194 = *(*v193 + 32);

                  v195 = sub_1D9C7DC4C();
                  LODWORD(v194) = [v194 BOOLForKey_];

                  if (v194)
                  {
                    v196 = qword_1EDD2C990;
                    v197 = v268;
                    a1 = v265;
                    if (qword_1EDD2C988 != -1)
                    {
                      swift_once();
                      v196 = qword_1EDD2C990;
                    }

LABEL_209:
                    v198 = __swift_project_value_buffer(v21, v196);
                    v199 = v266;
                    isa(v266, v198, v21);
                    v27 = v260;
                    sub_1D99B1BBC(v303, v260);
                    sub_1D99A17C8(&v311, &v309);
                    sub_1D99B1BBC(v197, a1);
                    v200 = sub_1D9C7D8BC();
                    LODWORD(v293) = sub_1D9C7E09C();
                    if (os_log_type_enabled(v200, v293))
                    {
                      a1 = swift_slowAlloc();
                      v257 = swift_slowAlloc();
                      v308 = v257;
                      *a1 = v252;
                      v201 = v304;
                      v202 = sub_1D9A15C94(v304);
                      v256 = v200;
                      v204 = sub_1D9A0E224(v202, v203, &v308);

                      *(a1 + 4) = v204;
                      *(a1 + 6) = 2080;
                      v205 = *(v27 + 16);
                      v306 = *v27;
                      v307 = v205;
                      v206 = NormalizedRect.loggingDescription.getter();
                      v208 = v207;
                      sub_1D99BB1F4(v27, type metadata accessor for VisualUnderstanding.ImageRegion);
                      v209 = sub_1D9A0E224(v206, v208, &v308);

                      *(a1 + 14) = v209;
                      v27 = 2080;
                      *(a1 + 11) = 2080;
                      v210 = sub_1D9A15C94(v201);
                      v212 = sub_1D9A0E224(v210, v211, &v308);

                      a1[3] = v212;
                      *(a1 + 16) = 2080;
                      sub_1D99A17C8(&v309, &v306);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511E0);
                      v213 = sub_1D9C7DCEC();
                      v215 = v214;
                      __swift_destroy_boxed_opaque_existential_0Tm(&v309);
                      v216 = sub_1D9A0E224(v213, v215, &v308);

                      *(a1 + 34) = v216;
                      *(a1 + 21) = 2080;
                      v217 = v265;
                      v218 = *(v265 + 1);
                      v306 = *v265;
                      v307 = v218;
                      v219 = NormalizedRect.loggingDescription.getter();
                      v221 = v220;
                      v21 = v292;
                      sub_1D99BB1F4(v217, type metadata accessor for VisualUnderstanding.ImageRegion);
                      v222 = sub_1D9A0E224(v219, v221, &v308);
                      v24 = v291;

                      *(a1 + 44) = v222;
                      v223 = v256;
                      _os_log_impl(&dword_1D9962000, v256, v293, "Register search model request %s for %s with %s: %s. Input region is %s", a1, 0x34u);
                      v224 = v257;
                      swift_arrayDestroy();
                      MEMORY[0x1DA7405F0](v224, -1, -1);
                      MEMORY[0x1DA7405F0](a1, -1, -1);

                      v225 = v266;
                    }

                    else
                    {

                      sub_1D99BB1F4(a1, type metadata accessor for VisualUnderstanding.ImageRegion);
                      __swift_destroy_boxed_opaque_existential_0Tm(&v309);
                      sub_1D99BB1F4(v27, type metadata accessor for VisualUnderstanding.ImageRegion);
                      v225 = v199;
                    }

                    v297(v225, v21);
                    sub_1D99A17C8(&v311, &v309);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v280 = sub_1D9AF916C(0, v280[2] + 1, 1, v280);
                    }

                    v227 = v280[2];
                    v226 = v280[3];
                    v22 = (v227 + 1);
                    if (v227 >= v226 >> 1)
                    {
                      v280 = sub_1D9AF916C((v226 > 1), v227 + 1, 1, v280);
                    }

                    v228 = v280;
                    v280[2] = v22;
                    sub_1D9979B9C(&v309, &v228[5 * v227 + 4]);
                    goto LABEL_217;
                  }

LABEL_207:
                  v196 = qword_1EDD354D8;
                  v197 = v268;
                  a1 = v265;
                  if (qword_1EDD354D0 != -1)
                  {
                    swift_once();
                    v196 = qword_1EDD354D8;
                  }

                  goto LABEL_209;
                }

                v192 = sub_1D9C7E7DC();

                if (v192)
                {
                  goto LABEL_200;
                }
              }

              v193 = &qword_1EDD355A8;
              if (qword_1EDD355A0 != -1)
              {
                swift_once();
                v193 = &qword_1EDD355A8;
              }

              goto LABEL_204;
            }

            if (!v299)
            {
              goto LABEL_123;
            }

            v107 = [objc_opt_self() mainBundle];
            v108 = [v107 bundleIdentifier];

            if (v108)
            {
              v109 = sub_1D9C7DC7C();
              v111 = v110;

              if (v109 == 0xD00000000000002BLL && v289 == v111)
              {

LABEL_116:
                v144 = &off_1ECB51BA8;
                if (qword_1ECB50988 != -1)
                {
                  swift_once();
                  v144 = &off_1ECB51BA8;
                }

LABEL_120:
                v145 = *(*v144 + 32);

                v146 = sub_1D9C7DC4C();
                LODWORD(v145) = [v145 BOOLForKey_];

                if (v145)
                {
                  v147 = qword_1EDD2C990;
                  if (qword_1EDD2C988 != -1)
                  {
                    swift_once();
                    v147 = qword_1EDD2C990;
                  }

                  goto LABEL_125;
                }

LABEL_123:
                v147 = qword_1EDD354D8;
                if (qword_1EDD354D0 != -1)
                {
                  swift_once();
                  v147 = qword_1EDD354D8;
                }

LABEL_125:
                v148 = __swift_project_value_buffer(v21, v147);
                v133 = v286;
                isa(v286, v148, v21);
                v22 = sub_1D9C7D8BC();
                a1 = sub_1D9C7E09C();
                if (os_log_type_enabled(v22, a1))
                {
                  v149 = swift_slowAlloc();
                  v150 = swift_slowAlloc();
                  v311 = v150;
                  *v149 = v285;
                  v151 = 0xE300000000000000;
                  v27 = v150;
                  v152 = 7631457;
                  switch(v304)
                  {
                    case 1:
                      v151 = 0xE600000000000000;
                      v152 = 0x65727574616ELL;
                      break;
                    case 2:
                      v151 = 0xE800000000000000;
                      v152 = 0x6B72616D646E616CLL;
                      break;
                    case 3:
                      v152 = 0x4C6C61727574616ELL;
                      v151 = 0xEF6B72616D646E61;
                      break;
                    case 4:
                      v151 = 0xE500000000000000;
                      v152 = 0x616964656DLL;
                      break;
                    case 5:
                      v151 = 0xE400000000000000;
                      v152 = 1802465122;
                      break;
                    case 6:
                      v151 = 0xE500000000000000;
                      v152 = 0x6D75626C61;
                      break;
                    case 7:
                      v151 = 0xE400000000000000;
                      v152 = 1937006947;
                      break;
                    case 8:
                      v151 = 0xE400000000000000;
                      v152 = 1936158564;
                      break;
                    case 9:
                      v151 = 0xE700000000000000;
                      v229 = 1835626081;
                      goto LABEL_235;
                    case 10:
                      v151 = 0xE500000000000000;
                      v152 = 0x7364726962;
                      break;
                    case 11:
                      v151 = 0xE700000000000000;
                      v152 = 0x73746365736E69;
                      break;
                    case 12:
                      v151 = 0xE800000000000000;
                      v152 = 0x73656C6974706572;
                      break;
                    case 13:
                      v151 = 0xE700000000000000;
                      v229 = 1835884909;
LABEL_235:
                      v152 = v229 | 0x736C6100000000;
                      break;
                    case 14:
                      v152 = 0xD000000000000010;
                      v151 = v258;
                      break;
                    case 15:
                      v151 = 0xE700000000000000;
                      v152 = 0x6C657261707061;
                      break;
                    case 16:
                      v152 = 0x726F737365636361;
                      v151 = 0xEB00000000736569;
                      break;
                    case 17:
                      v151 = 0xE400000000000000;
                      v152 = 1685024614;
                      break;
                    case 18:
                      v151 = 0xEA0000000000746ELL;
                      v152 = 0x6F726665726F7473;
                      break;
                    case 19:
                      v230 = 1852270963;
                      goto LABEL_242;
                    case 20:
                      v152 = 0xD000000000000011;
                      v151 = v259;
                      break;
                    case 21:
                      v230 = 1869903201;
LABEL_242:
                      v152 = v230 | 0x626D795300000000;
                      v151 = 0xEA00000000006C6FLL;
                      break;
                    case 22:
                      v152 = 0x676F4C646E617262;
                      v151 = 0xEF6C6F626D79536FLL;
                      break;
                    case 23:
                      v151 = 0xE700000000000000;
                      v152 = 0x65646F63726162;
                      break;
                    case 24:
                      v152 = 0x727574706C756373;
                      v151 = 0xE900000000000065;
                      break;
                    case 25:
                      v151 = 0xE700000000000000;
                      v152 = 0x656E696C796B73;
                      break;
                    case 26:
                      v151 = 0xE800000000000000;
                      v152 = 0x44327463656A626FLL;
                      break;
                    default:
                      break;
                  }

                  v231 = sub_1D9A0E224(v152, v151, &v311);

                  *(v149 + 4) = v231;
                  _os_log_impl(&dword_1D9962000, v22, a1, "Skipping model results for %s because it is a grouped region.", v149, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v27);
                  MEMORY[0x1DA7405F0](v27, -1, -1);
                  MEMORY[0x1DA7405F0](v149, -1, -1);

                  v162 = v286;
                  goto LABEL_246;
                }

                goto LABEL_128;
              }

              v143 = sub_1D9C7E7DC();

              if (v143)
              {
                goto LABEL_116;
              }
            }

            v144 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v144 = &qword_1EDD355A8;
            }

            goto LABEL_120;
          }

          if (!v299)
          {
            goto LABEL_105;
          }

          v99 = [objc_opt_self() mainBundle];
          v100 = [v99 bundleIdentifier];

          if (v100)
          {
            v101 = sub_1D9C7DC7C();
            v103 = v102;

            if (v101 == 0xD00000000000002BLL && v289 == v103)
            {
            }

            else
            {
              v105 = sub_1D9C7E7DC();

              if ((v105 & 1) == 0)
              {
                goto LABEL_74;
              }
            }

            v106 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v106 = &off_1ECB51BA8;
            }
          }

          else
          {
LABEL_74:
            v106 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v106 = &qword_1EDD355A8;
            }
          }

          v129 = *(*v106 + 32);

          v130 = sub_1D9C7DC4C();
          LODWORD(v129) = [v129 BOOLForKey_];

          if (v129)
          {
            v131 = qword_1EDD2C990;
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
              v131 = qword_1EDD2C990;
            }

            goto LABEL_107;
          }

LABEL_105:
          v131 = qword_1EDD354D8;
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
            v131 = qword_1EDD354D8;
          }

LABEL_107:
          v132 = __swift_project_value_buffer(v21, v131);
          v133 = v288;
          isa(v288, v132, v21);
          v22 = sub_1D9C7D8BC();
          a1 = sub_1D9C7E09C();
          if (os_log_type_enabled(v22, a1))
          {
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            v311 = v135;
            *v134 = v285;
            v136 = 0xE300000000000000;
            v27 = v135;
            v137 = 7631457;
            switch(v304)
            {
              case 1:
                v136 = 0xE600000000000000;
                v137 = 0x65727574616ELL;
                break;
              case 2:
                v136 = 0xE800000000000000;
                v137 = 0x6B72616D646E616CLL;
                break;
              case 3:
                v137 = 0x4C6C61727574616ELL;
                v136 = 0xEF6B72616D646E61;
                break;
              case 4:
                v136 = 0xE500000000000000;
                v137 = 0x616964656DLL;
                break;
              case 5:
                v136 = 0xE400000000000000;
                v137 = 1802465122;
                break;
              case 6:
                v136 = 0xE500000000000000;
                v137 = 0x6D75626C61;
                break;
              case 7:
                v136 = 0xE400000000000000;
                v137 = 1937006947;
                break;
              case 8:
                v136 = 0xE400000000000000;
                v137 = 1936158564;
                break;
              case 9:
                v136 = 0xE700000000000000;
                v159 = 1835626081;
                goto LABEL_174;
              case 10:
                v136 = 0xE500000000000000;
                v137 = 0x7364726962;
                break;
              case 11:
                v136 = 0xE700000000000000;
                v137 = 0x73746365736E69;
                break;
              case 12:
                v136 = 0xE800000000000000;
                v137 = 0x73656C6974706572;
                break;
              case 13:
                v136 = 0xE700000000000000;
                v159 = 1835884909;
LABEL_174:
                v137 = v159 | 0x736C6100000000;
                break;
              case 14:
                v137 = 0xD000000000000010;
                v136 = v258;
                break;
              case 15:
                v136 = 0xE700000000000000;
                v137 = 0x6C657261707061;
                break;
              case 16:
                v137 = 0x726F737365636361;
                v136 = 0xEB00000000736569;
                break;
              case 17:
                v136 = 0xE400000000000000;
                v137 = 1685024614;
                break;
              case 18:
                v136 = 0xEA0000000000746ELL;
                v137 = 0x6F726665726F7473;
                break;
              case 19:
                v160 = 1852270963;
                goto LABEL_181;
              case 20:
                v137 = 0xD000000000000011;
                v136 = v259;
                break;
              case 21:
                v160 = 1869903201;
LABEL_181:
                v137 = v160 | 0x626D795300000000;
                v136 = 0xEA00000000006C6FLL;
                break;
              case 22:
                v137 = 0x676F4C646E617262;
                v136 = 0xEF6C6F626D79536FLL;
                break;
              case 23:
                v136 = 0xE700000000000000;
                v137 = 0x65646F63726162;
                break;
              case 24:
                v137 = 0x727574706C756373;
                v136 = 0xE900000000000065;
                break;
              case 25:
                v136 = 0xE700000000000000;
                v137 = 0x656E696C796B73;
                break;
              case 26:
                v136 = 0xE800000000000000;
                v137 = 0x44327463656A626FLL;
                break;
              default:
                break;
            }

            v161 = sub_1D9A0E224(v137, v136, &v311);

            *(v134 + 4) = v161;
            _os_log_impl(&dword_1D9962000, v22, a1, "domain model results are already precomputed for %s", v134, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v27);
            MEMORY[0x1DA7405F0](v27, -1, -1);
            MEMORY[0x1DA7405F0](v134, -1, -1);

            v162 = v288;
LABEL_246:
            v21 = v292;
            v297(v162, v292);
            v24 = v291;
            goto LABEL_52;
          }

LABEL_128:

          v297(v133, v21);
LABEL_52:
          v81 = v304;
          v83 = v296;
          if (v295 == ++v85)
          {
            goto LABEL_8;
          }

          continue;
        }
      }

      goto LABEL_259;
    }

    v84 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v84)
    {
      goto LABEL_49;
    }

LABEL_8:
    v32 = v283 + 1;

    v53 = sub_1D99BAEFC(v316);
    if (v32 == v279)
    {
      goto LABEL_4;
    }
  }

  v235 = 0xD00000000000001DLL;
  v236 = v239;
LABEL_257:

  sub_1D99BAF74();
  swift_allocError();
  *v237 = v235;
  v237[1] = v236 | 0x8000000000000000;
  swift_willThrow();

  return sub_1D99BB1F4(v303, type metadata accessor for VisualUnderstanding.ImageRegion);
}

uint64_t sub_1D99B8CDC(void *a1)
{
  v3 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  if (*(v6 + 16))
  {
    v7 = v6;
    v8 = v1[9];
    v9 = v3[10];
    __swift_project_boxed_opaque_existential_1(v3 + 6, v3[9]);
    sub_1D9B7DE80(v8, v9, v14);
    if (v2)
    {
    }

    else
    {
      v12 = v15;
      v13 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v13 + 8))(v7, v12, v13);

      return __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }
  }

  else
  {

    sub_1D99A182C();
    swift_allocError();
    *v11 = xmmword_1D9C85C80;
    *(v11 + 16) = 3;
    return swift_willThrow();
  }
}

void sub_1D99B8E24(uint64_t a1, double *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v147 = &v131 - v6;
  v7 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v146 = (&v131 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v131 - v14;
  v16 = sub_1D9C7D8DC();
  v152 = *(v16 - 8);
  v153 = v16;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v148 = &v131 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v131 - v20;
  v23 = *a1;
  if (*(a1 + 48) != 1)
  {
    v139 = v2;
    v145 = a2;
    v135 = v15;
    v143 = v21;
    v136 = v10;
    v137 = v8;
    v138 = v7;
    v26 = *(a1 + 8);
    v27 = *(a1 + 16);
    v29 = *(a1 + 24);
    v28 = *(a1 + 32);
    v30 = *(a1 + 40);
    static Logger.argos.getter(&v131 - v20);

    v31 = sub_1D9C7D8BC();
    v32 = sub_1D9C7E09C();
    v33 = v26;
    v34 = v26;
    v35 = v27;
    v151 = v28;
    v36 = v28;
    v37 = v30;
    sub_1D99A1B04(v23, v34, v27, v29, v36, v30, 0);
    LODWORD(v140) = v32;
    v38 = os_log_type_enabled(v31, v32);
    v150 = v29;
    v144 = v30;
    v149 = v23;
    v142 = v33;
    v141 = v27;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v159[0] = v134;
      *v39 = 136315394;
      v40 = *(v30 + 16);
      v41 = MEMORY[0x1E69E7CC0];
      if (v40)
      {
        v133 = v31;
        *&v155 = MEMORY[0x1E69E7CC0];
        sub_1D99FE164(0, v40, 0);
        v41 = v155;
        v42 = (v30 + 48);
        do
        {
          v43 = *(v42 - 2);
          v44 = *(v42 - 1);
          v45 = *v42;

          v46 = sub_1D9A18124(v43, v44, v45);
          v48 = v47;

          *&v155 = v41;
          v50 = *(v41 + 16);
          v49 = *(v41 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_1D99FE164((v49 > 1), v50 + 1, 1);
            v41 = v155;
          }

          *(v41 + 16) = v50 + 1;
          v51 = v41 + 16 * v50;
          *(v51 + 32) = v46;
          *(v51 + 40) = v48;
          v42 += 3;
          --v40;
        }

        while (v40);
        v23 = v149;
        v33 = v142;
        v35 = v141;
        v31 = v133;
      }

      v54 = MEMORY[0x1DA73E110](v41, MEMORY[0x1E69E6158]);
      v56 = v55;

      v57 = sub_1D9A0E224(v54, v56, v159);

      *(v39 + 4) = v57;
      *(v39 + 12) = 2080;
      *&v155 = v23;
      *(&v155 + 1) = v33;
      v53 = v150;
      *&v156 = v35;
      *(&v156 + 1) = v150;
      v58 = NormalizedRect.loggingDescription.getter();
      v60 = sub_1D9A0E224(v58, v59, v159);

      *(v39 + 14) = v60;
      _os_log_impl(&dword_1D9962000, v31, v140, "Search extracted classifications %s from %s", v39, 0x16u);
      v61 = v134;
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v61, -1, -1);
      MEMORY[0x1DA7405F0](v39, -1, -1);

      v52 = *(v152 + 8);
      v52(v22, v153);
      v37 = v144;
    }

    else
    {

      v52 = *(v152 + 8);
      v52(v22, v153);
      v53 = v29;
    }

    v62 = v148;
    static Logger.argos.getter(v148);
    v63 = v151;
    sub_1D99A1AB4(v23, v33, v35, v53, v151, v37, 0);
    v64 = sub_1D9C7D8BC();
    v65 = sub_1D9C7E09C();
    v66 = v23;
    v67 = v33;
    v68 = v33;
    v69 = v35;
    sub_1D99A1B04(v66, v68, v35, v53, v63, v37, 0);
    LODWORD(v134) = v65;
    v70 = os_log_type_enabled(v64, v65);
    v140 = v52;
    if (v70)
    {
      v133 = v64;
      v71 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v159[0] = v132;
      *v71 = 136315394;
      v72 = *(v63 + 16);
      v73 = MEMORY[0x1E69E7CC0];
      if (v72)
      {
        v131 = v71;
        v154 = MEMORY[0x1E69E7CC0];
        sub_1D99FE164(0, v72, 0);
        v73 = v154;
        v74 = (v63 + 48);
        v75 = MEMORY[0x1E69E6448];
        do
        {
          v76 = *(v74 - 2);
          v77 = *(v74 - 1);
          v78 = *v74;
          *&v155 = 0;
          *(&v155 + 1) = 0xE000000000000000;

          sub_1D9C7E40C();

          *&v155 = 0x4E52556C65646F6DLL;
          *(&v155 + 1) = 0xEA0000000000203ALL;
          MEMORY[0x1DA73DF90](v77, v78);
          MEMORY[0x1DA73DF90](8236, 0xE200000000000000);
          v79 = MEMORY[0x1DA73E110](v76, v75);
          MEMORY[0x1DA73DF90](v79);

          v80 = v155;
          v154 = v73;
          v82 = *(v73 + 16);
          v81 = *(v73 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_1D99FE164((v81 > 1), v82 + 1, 1);
            v73 = v154;
          }

          *(v73 + 16) = v82 + 1;
          *(v73 + 16 * v82 + 32) = v80;
          v74 += 3;
          --v72;
        }

        while (v72);
        v86 = v149;
        v85 = v150;
        v67 = v142;
        v69 = v141;
        v87 = v148;
        v71 = v131;
      }

      else
      {
        v87 = v62;
        v86 = v149;
        v85 = v150;
      }

      v88 = MEMORY[0x1DA73E110](v73, MEMORY[0x1E69E6158]);
      v90 = v89;

      v91 = sub_1D9A0E224(v88, v90, v159);

      *(v71 + 4) = v91;
      *(v71 + 12) = 2080;
      *&v155 = v86;
      *(&v155 + 1) = v67;
      *&v156 = v69;
      *(&v156 + 1) = v85;
      v92 = NormalizedRect.loggingDescription.getter();
      v94 = sub_1D9A0E224(v92, v93, v159);

      *(v71 + 14) = v94;
      v95 = v133;
      _os_log_impl(&dword_1D9962000, v133, v134, "Search extracted embeddings %s from %s", v71, 0x16u);
      v96 = v132;
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v96, -1, -1);
      MEMORY[0x1DA7405F0](v71, -1, -1);

      v140(v87, v153);
      v84 = v146;
      v83 = v145;
      v37 = v144;
    }

    else
    {

      v52(v62, v153);
      v86 = v149;
      v85 = v150;
      v83 = v145;
      v84 = v146;
    }

    static Logger.argos.getter(v143);
    v97 = v135;
    sub_1D99B1BBC(v83, v135);
    v98 = v151;
    sub_1D99A1AB4(v86, v67, v69, v85, v151, v37, 0);
    v99 = sub_1D9C7D8BC();
    v100 = v85;
    v101 = sub_1D9C7E09C();
    sub_1D99A1B04(v86, v67, v69, v100, v98, v37, 0);
    if (os_log_type_enabled(v99, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v159[0] = v103;
      *v102 = 136315394;
      *&v155 = v149;
      *(&v155 + 1) = v142;
      *&v156 = v141;
      *(&v156 + 1) = v100;
      v104 = NormalizedRect.loggingDescription.getter();
      v106 = sub_1D9A0E224(v104, v105, v159);

      *(v102 + 4) = v106;
      *(v102 + 12) = 2080;
      v107 = v97[1];
      v155 = *v97;
      v156 = v107;
      v108 = NormalizedRect.loggingDescription.getter();
      v110 = v109;
      sub_1D99BB1F4(v97, type metadata accessor for VisualUnderstanding.ImageRegion);
      v111 = sub_1D9A0E224(v108, v110, v159);

      *(v102 + 14) = v111;
      _os_log_impl(&dword_1D9962000, v99, v101, "Merge signals from %s to %s", v102, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v103, -1, -1);
      v112 = v102;
      v86 = v149;
      v67 = v142;
      v113 = v141;
      MEMORY[0x1DA7405F0](v112, -1, -1);

      v140(v143, v153);
      v114 = v138;
      v115 = v137;
      v116 = v136;
    }

    else
    {

      sub_1D99BB1F4(v97, type metadata accessor for VisualUnderstanding.ImageRegion);
      v140(v143, v153);
      v114 = v138;
      v115 = v137;
      v116 = v136;
      v113 = v69;
    }

    v117 = v145;
    v118 = *v145;
    v119 = v145[1];
    v120 = v145[2];
    v121 = v145[3];
    v122 = v139;
    swift_beginAccess();
    v123 = *(v122 + 104);
    if (*(v123 + 16))
    {

      v124 = sub_1D99EE1AC(v118, v119, v120, v121);
      if (v125)
      {
        sub_1D99B1BBC(*(v123 + 56) + *(v115 + 72) * v124, v116);

        sub_1D99B1CE4(v116, v84);
LABEL_32:
        *&v155 = v86;
        *(&v155 + 1) = v67;
        *&v156 = v113;
        *(&v156 + 1) = v150;
        v157 = v151;
        v158 = v144;
        sub_1D9B67FD4(&v155);
        v126 = *v84;
        v127 = v84[1];
        v128 = v84[2];
        v129 = v84[3];
        v130 = v147;
        sub_1D99B1BBC(v84, v147);
        (*(v115 + 56))(v130, 0, 1, v114);
        swift_beginAccess();
        sub_1D9AC76E8(v130, v126, v127, v128, v129);
        swift_endAccess();
        sub_1D99BB1F4(v84, type metadata accessor for VisualUnderstanding.ImageRegion);
        return;
      }
    }

    sub_1D99B1BBC(v117, v84);
    goto LABEL_32;
  }

  v24 = *(v2 + 112);
  *(v2 + 112) = v23;
  v25 = v23;
}

uint64_t sub_1D99B9AE8@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = a4;
  v39 = a3;
  v40 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for TextDetectionRequestFactory.Input();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D9C7D8DC();
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = *a1;
  v19 = a1[1];
  v41[1] = *(a1 + 1);
  v20 = a1[4];
  v43 = *(a1 + 5);
  v44 = *(a1 + 7);
  v48 = *(a1 + 15);
  v49 = *(a1 + 17);
  v50 = *(a1 + 19);
  v51 = *(a1 + 21);
  v45 = *(a1 + 9);
  v46 = *(a1 + 11);
  v47 = *(a1 + 13);
  v21 = *a2;
  v33 = a2[1];
  v34 = v21;
  *&v41[0] = v18;
  *(&v41[0] + 1) = v19;
  v42 = v20;
  if ((sub_1D9A1D6F8(v41, v39) & 1) == 0)
  {
    static Logger.argos.getter(v17);
    v26 = sub_1D9C7D8BC();
    v27 = sub_1D9C7E09C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D9962000, v26, v27, "Skip OCR extraction as no requested domain requires.", v28, 2u);
      MEMORY[0x1DA7405F0](v28, -1, -1);
    }

    result = (*(v37 + 8))(v17, v38);
    goto LABEL_10;
  }

  if (v19 != 1 && v20)
  {

    static Logger.argos.getter(v14);
    v22 = sub_1D9C7D8BC();
    v23 = sub_1D9C7E09C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D9962000, v22, v23, "Reuse existing OCR signal.", v24, 2u);
      MEMORY[0x1DA7405F0](v24, -1, -1);
    }

    (*(v37 + 8))(v14, v38);
    *(v36 + 120) = v20;

LABEL_10:
    v29 = v40;
    v40[4] = 0;
    *v29 = 0u;
    *(v29 + 1) = 0u;
    return result;
  }

  if (*(v36 + 96))
  {
    swift_getObjectType();
    sub_1D9BDBC58(v9);
  }

  else
  {
    v30 = sub_1D9C7D91C();
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
  }

  v31 = v33;
  *v12 = v34;
  *(v12 + 1) = v31;
  sub_1D99BAFC8(v9, &v12[*(v10 + 20)]);
  *&v12[*(v10 + 24)] = v35;
  v32 = swift_allocObject();
  swift_weakInit();

  sub_1D9B807D0(v12, sub_1D99BB1E8, v32, v40);

  sub_1D99BB1F4(v12, type metadata accessor for TextDetectionRequestFactory.Input);
}

uint64_t sub_1D99B9FC0(void *a1, char a2)
{
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v19[-1] - v7;
  if (a2)
  {
    static Logger.argos.getter(&v19[-1] - v7);
    v9 = a1;
    v10 = sub_1D9C7D8BC();
    v11 = sub_1D9C7E0AC();
    sub_1D99A40C0(a1, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = sub_1D9A4F730(v19[4]);
      v16 = sub_1D9A0E224(v14, v15, v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1D9962000, v10, v11, "Text detection error: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x1DA7405F0](v13, -1, -1);
      MEMORY[0x1DA7405F0](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + 120) = a1;
    }
  }

  return result;
}

uint64_t sub_1D99BA1E4@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v50 = a4;
  v53 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v46 - v9;
  v48 = type metadata accessor for BarcodeDetectionRequestFactory.Input();
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1D9C7D8DC();
  v12 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = *a1;
  v19 = a1[1];
  v54[1] = *(a1 + 1);
  v58 = a1[8];
  v20 = a1[4];
  v21 = a1[5];
  v57 = *(a1 + 3);
  v62 = *(a1 + 15);
  v63 = *(a1 + 17);
  v64 = *(a1 + 19);
  v65 = *(a1 + 21);
  v59 = *(a1 + 9);
  v60 = *(a1 + 11);
  v61 = *(a1 + 13);
  v22 = *a2;
  v46 = a2[1];
  v47 = v22;
  *&v54[0] = v18;
  *(&v54[0] + 1) = v19;
  v55 = v20;
  v56 = v21;
  if ((sub_1D9A1DAB0(v54, a3) & 1) == 0)
  {
    static Logger.argos.getter(v17);
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E09C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D9962000, v29, v30, "Skip barcode extraction as no requested domain requires.", v31, 2u);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    result = (*(v12 + 8))(v17, v52);
    goto LABEL_10;
  }

  if (v19 != 1 && v21)
  {

    static Logger.argos.getter(v14);
    v23 = sub_1D9C7D8BC();
    v24 = sub_1D9C7E09C();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v51;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D9962000, v23, v24, "Reuse existing barcode signal.", v27, 2u);
      MEMORY[0x1DA7405F0](v27, -1, -1);
    }

    (*(v12 + 8))(v14, v52);
    *(v26 + 128) = v21;

LABEL_10:
    v32 = v53;
    v53[4] = 0;
    *v32 = 0u;
    *(v32 + 1) = 0u;
    return result;
  }

  if (*(v51 + 96))
  {
    swift_getObjectType();
    v33 = v49;
    sub_1D9BDBC58(v49);
  }

  else
  {
    v34 = sub_1D9C7D91C();
    v33 = v49;
    (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51200);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D9C85490;
  v36 = *MEMORY[0x1E69848A8];
  v37 = *MEMORY[0x1E69848B0];
  v38 = MEMORY[0x1E69848B8];
  *(v35 + 32) = *MEMORY[0x1E69848A8];
  *(v35 + 40) = v37;
  v39 = *v38;
  *(v35 + 48) = *v38;
  v40 = v46;
  *v11 = v47;
  *(v11 + 1) = v40;
  v41 = v48;
  sub_1D99BAFC8(v33, &v11[*(v48 + 20)]);
  *&v11[*(v41 + 24)] = v35;
  *&v11[*(v41 + 28)] = v50;
  v42 = swift_allocObject();
  swift_weakInit();

  v43 = v36;
  v44 = v37;
  v45 = v39;
  sub_1D9B565FC(v11, sub_1D99BB038, v42, v53);

  sub_1D99BB1F4(v11, type metadata accessor for BarcodeDetectionRequestFactory.Input);
}

uint64_t sub_1D99BA734(void *a1, uint64_t a2, __int16 a3)
{
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39[-v11];
  if ((a3 & 0x100) != 0)
  {
    static Logger.argos.getter(v9);
    sub_1D99BB04C(a1, a2, a3);
    v20 = sub_1D9C7D8BC();
    v21 = sub_1D9C7E0AC();
    sub_1D99BB0C4(a1, a2, a3, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v42 = v6;
      v22 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v22 = 136446210;
      sub_1D99BB148();
      if (swift_dynamicCastMetatype())
      {
        *&v44 = a1;
        *(&v44 + 1) = a2;
        v45 = a3;
        sub_1D99BB04C(a1, a2, a3);
        sub_1D99A182C();
        v23 = sub_1D9C7E7BC();
        if (v23)
        {
          v24 = v23;
          sub_1D99BB0C4(a1, a2, a3, 1);
        }

        else
        {
          v24 = swift_allocError();
          *v34 = a1;
          *(v34 + 8) = a2;
          *(v34 + 16) = a3;
        }

        v35 = sub_1D9C7B6FC();

        v31 = sub_1D9A4FABC();
        v33 = v36;
      }

      else
      {
        v46 = &type metadata for MLError;
        v47 = sub_1D99BB194();
        *&v44 = a1;
        *(&v44 + 1) = a2;
        v45 = a3;
        sub_1D9979B9C(&v44, v43);
        v26 = __swift_project_boxed_opaque_existential_1(v43, v43[3]);
        v27 = *v26;
        v28 = v26[1];
        v40 = v21;
        v29 = *(v26 + 16);
        sub_1D99BB04C(a1, a2, a3);
        v30 = v29;
        LOBYTE(v21) = v40;
        v31 = sub_1D9AE29DC(v27, v28, v30);
        v33 = v32;
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
      }

      v37 = sub_1D9A0E224(v31, v33, &v48);

      *(v22 + 4) = v37;
      _os_log_impl(&dword_1D9962000, v20, v21, "Barcode detection error: %{public}s", v22, 0xCu);
      v38 = v41;
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x1DA7405F0](v38, -1, -1);
      MEMORY[0x1DA7405F0](v22, -1, -1);

      return (*(v7 + 8))(v9, v42);
    }

    else
    {

      return (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    static Logger.argos.getter(&v39[-v11]);

    v13 = sub_1D9C7D8BC();
    v14 = sub_1D9C7E09C();
    sub_1D99BB0C4(a1, a2, a3, 0);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v44 = v16;
      *v15 = 136315138;
      v17 = MEMORY[0x1DA73E110](a1, &type metadata for DetectedBarcode);
      v42 = v6;
      v19 = sub_1D9A0E224(v17, v18, &v44);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1D9962000, v13, v14, "Detected barcodes %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x1DA7405F0](v16, -1, -1);
      MEMORY[0x1DA7405F0](v15, -1, -1);

      (*(v7 + 8))(v12, v42);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + 128) = a1;
    }
  }

  return result;
}

uint64_t sub_1D99BABE0(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v25 - v13;
  if (a4)
  {
    static Logger.argos.getter(v25 - v13);
    v15 = a1;
    v16 = sub_1D9C7D8BC();
    v17 = sub_1D9C7E0AC();
    sub_1D99BB468(a1, a2, a3, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136446210;
      swift_getErrorValue();
      v20 = sub_1D9A4F730(v25[2]);
      v22 = sub_1D9A0E224(v20, v21, &v26);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D9962000, v16, v17, "Failed to calculate image fingerprint: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1DA7405F0](v19, -1, -1);
      MEMORY[0x1DA7405F0](v18, -1, -1);
    }

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v24 = a5[17];
    a5[17] = a1;
    a5[18] = a2;
    a5[19] = a3;

    return sub_1D99BB254(v24);
  }
}

uint64_t sub_1D99BAE28()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  swift_unknownObjectRelease();

  sub_1D99BB254(*(v0 + 136));
  return v0;
}

uint64_t sub_1D99BAEA4()
{
  sub_1D99BAE28();

  return swift_deallocClassInstance();
}

unint64_t sub_1D99BAF74()
{
  result = qword_1ECB511F0;
  if (!qword_1ECB511F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB511F0);
  }

  return result;
}

uint64_t sub_1D99BAFC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1D99BB04C(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 != 6 && a3 != 7)
      {
        return result;
      }
    }

    else if (a3 != 4 && a3 != 5)
    {
      return result;
    }
  }

  if (a3 <= 1u)
  {
    return result;
  }

  if (a3 == 2 || a3 == 3)
  {
  }

  return result;
}

void sub_1D99BB0C4(void *a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    sub_1D99BB0D0(a1, a2, a3);
  }

  else
  {
  }
}

void sub_1D99BB0D0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 != 6 && a3 != 7)
      {
        return;
      }
    }

    else if (a3 != 4 && a3 != 5)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (a3 <= 1u)
  {

    return;
  }

  if (a3 == 2 || a3 == 3)
  {
    goto LABEL_7;
  }
}

unint64_t sub_1D99BB148()
{
  result = qword_1ECB51208;
  if (!qword_1ECB51208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB51208);
  }

  return result;
}

unint64_t sub_1D99BB194()
{
  result = qword_1ECB51210;
  if (!qword_1ECB51210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51210);
  }

  return result;
}

uint64_t sub_1D99BB1F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99BB254(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D99BB294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D99BB2FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D99BB33C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D99BB468(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1D99BB4B4(__int128 *a1)
{
  v3 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_1D99B62C4(a1, v4, v5);
}

uint64_t sub_1D99BB528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D99BB584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D99BB608(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1D99FE318(0, v4, 0);
  v5 = v16;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51278) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v15, v9);
    if (v3)
    {
      break;
    }

    v11 = v15;
    v16 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D99FE318((v12 > 1), v13 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v13 + 1;
    *(v5 + 8 * v13 + 32) = v11;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D99BB774(void (*a1)(int *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1D99FE218(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v15[0] = *(i - 1);
    v15[1] = v10;

    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D99FE218((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 4 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D99BB8A8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for RegionSearchResult.ResultItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D99FE578(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for ObjectKnowledge() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D99FE578(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1D99C8B08(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for RegionSearchResult.ResultItem);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D99BBAA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D75626C61 && a2 == 0xE500000000000000;
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x6C616D696E61 || a2 != 0xE600000000000000) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 7631457 || a2 != 0xE300000000000000) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 1937006947 || a2 != 0xE400000000000000) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 1936158564 || a2 != 0xE400000000000000) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0xD000000000000011 || 0x80000001D9CA3780 != a2) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x6E616D7568 || a2 != 0xE500000000000000) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x6B72616D646E616CLL || a2 != 0xE800000000000000) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x616964656DLL || a2 != 0xE500000000000000) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0xD000000000000010 || 0x80000001D9CA37A0 != a2) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x65727574616ELL || a2 != 0xE600000000000000) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x6465767265736572 || a2 != 0xE900000000000033) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x6465767265736572 || a2 != 0xE900000000000032) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x6465767265736572 || a2 != 0xE900000000000031) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x68736E6565726373 || a2 != 0xEA0000000000746FLL) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x727574706C756373 || a2 != 0xE900000000000065) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x656E696C796B73 || a2 != 0xE700000000000000) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x6465767265736572 || a2 != 0xE900000000000034) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x6465767265736572 || a2 != 0xE900000000000035) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x6465767265736572 || a2 != 0xE900000000000037) && (sub_1D9C7E7DC() & 1) == 0 && (a1 != 0x6E6F6968736166 || a2 != 0xE700000000000000))
  {
    sub_1D9C7E7DC();
  }

  v5 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult(0);
  MEMORY[0x1EEE9AC00](v5);
  sub_1D99C8BAC(&qword_1EDD2AA90, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
  return sub_1D9C7D6BC();
}

uint64_t sub_1D99BC0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v65 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51280);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v49 - v3;
  v56 = sub_1D9C7D21C();
  v61 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51288);
  v62 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v49 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51290);
  v69 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51260);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v59 = &v49 - v16;
  v17 = sub_1D9C7D2CC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v49 - v22;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51298);
  v68 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v49 - v25;
  v70 = 81;
  v71 = 0xE100000000000000;
  v58 = sub_1D99C7634();
  MEMORY[0x1DA73D3B0](v72, &v70, MEMORY[0x1E69E6158], v58);
  sub_1D9C7D20C();
  sub_1D9C7D2DC();
  v26 = sub_1D9C7D2EC();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  sub_1D9C7D20C();
  sub_1D99C8BAC(&qword_1EDD35420, MEMORY[0x1E69E8250]);
  v27 = MEMORY[0x1E69E67B0];
  v50 = v12;
  v28 = v56;
  sub_1D9C7D2BC();
  v29 = *(v18 + 8);
  v66 = v18 + 8;
  v67 = v29;
  v49 = v17;
  v29(v20, v17);
  sub_1D99A6AE0(v4, &qword_1ECB51280);
  (*(v61 + 8))(v6, v28);
  v30 = v52;
  MEMORY[0x1DA73D400](v12, v27);
  v31 = sub_1D99C7C60(&qword_1EDD35418, &qword_1ECB51288);
  v32 = v53;
  MEMORY[0x1DA73D3B0](v30, v7, v31);
  v33 = *(v62 + 1);
  v33(v30, v7);
  v34 = v54;
  sub_1D9C7D1EC();
  v33(v32, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51268);
  sub_1D9C7D23C();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51270);
  v64 = sub_1D99C7C60(qword_1EDD2C6C0, &qword_1ECB51290);
  v36 = v63;
  v37 = v59;
  v61 = v35;
  v38 = v51;
  sub_1D9C7D29C();
  v39 = *(v69 + 8);
  v69 += 8;
  v62 = v39;
  v40 = v36;
  v39(v34, v36);
  v67(v38, v17);
  v41 = v55;
  MEMORY[0x1DA73D3D0](v37, v35);
  v42 = sub_1D99C7C60(&qword_1EDD35428, &qword_1ECB51298);
  v43 = v57;
  v44 = v60;
  MEMORY[0x1DA73D3B0](v41, v60, v42);
  v45 = *(v68 + 8);
  v68 += 8;
  v45(v41, v44);
  v70 = v72[0];
  v71 = v72[1];
  sub_1D9C7D1EC();

  sub_1D9C7D20C();
  v46 = v50;
  sub_1D9C7D2AC();
  sub_1D9C7D28C();
  v47 = v62;
  v62(v46, v40);
  v67(v38, v49);
  v47(v34, v40);
  return (v45)(v43, v44);
}

unint64_t *sub_1D99BC958@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  if ((v4 ^ *result) < 0x4000)
  {
    v11 = 0;
    LOBYTE(v7) = 1;
  }

  else
  {
    v6 = result[2];
    v5 = result[3];
    result = sub_1D99C7688(*result, v4, v6, v5, 10);
    if ((v7 & 0x100) != 0)
    {

      v8 = sub_1D99C6AD0(v3, v4, v6, v5, 10);
      v10 = v9;

      result = v8;
      LOBYTE(v7) = v10;
    }

    if (v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = result;
    }
  }

  *a2 = v11;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_1D99BCA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = sub_1D9C7D8DC();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51260);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51268);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  sub_1D9C7D24C();
  v39 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51270);
  sub_1D99C7C60(&qword_1EDD2C6B8, &qword_1ECB51260);
  sub_1D9C7D2FC();
  v33 = a1;
  v34 = a2;
  v40[0] = a1;
  v40[1] = a2;
  sub_1D99C752C();
  v15 = sub_1D9C7DBFC();
  v38 = v14;
  v16 = sub_1D99BB608(sub_1D99C7580, v37, v15);

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  if (*(v16 + 16))
  {
    v17 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
    MEMORY[0x1EEE9AC00](v17);
    *(&v31 - 2) = v16;
    sub_1D99C8BAC(qword_1EDD2D868, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
    v18 = v36;
    sub_1D9C7D6BC();

    return (*(*(v17 - 8) + 56))(v18, 0, 1, v17);
  }

  else
  {
    v20 = v32;
    v21 = v33;
    v22 = v31;
    v23 = v36;

    v24 = v35;
    static Logger.argos.getter(v35);
    v25 = v34;

    v26 = sub_1D9C7D8BC();
    v27 = sub_1D9C7E09C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1D9A0E224(v21, v25, v40);
      _os_log_impl(&dword_1D9962000, v26, v27, "Failed to parse OntologyNode %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x1DA7405F0](v29, -1, -1);
      MEMORY[0x1DA7405F0](v28, -1, -1);
    }

    (*(v22 + 8))(v24, v20);
    v30 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
    return (*(*(v30 - 8) + 56))(v23, 1, 1, v30);
  }
}

uint64_t sub_1D99BCF8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D99FE164(0, v2, 0);
    v3 = v1 + 32;
    do
    {
      v3 += 8;
      v4 = sub_1D9C7E7AC();
      MEMORY[0x1DA73DF90](v4);

      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D99FE164((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v7 = v10 + 16 * v6;
      *(v7 + 32) = 81;
      *(v7 + 40) = 0xE100000000000000;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51040);
  sub_1D99C7C60(&qword_1EDD2C4B0, &qword_1ECB51040);
  v8 = sub_1D9C7DC0C();

  return v8;
}

uint64_t sub_1D99BD118(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4E574F4E4B4E55 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 5526081 && a2 == 0xE300000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x45525554414ELL && a2 == 0xE600000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x4B52414D444E414CLL && a2 == 0xE800000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x414944454DLL && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 1398031696 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x4445565245534552 && a2 == 0xE900000000000031 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0xD000000000000010 && 0x80000001D9CA4500 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0x534C414D494E41 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x525554504C554353 && a2 == 0xE900000000000045 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0x454E494C594B53 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 10;
  }

  if (a1 == 1398030659 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 11;
  }

  if (a1 == 1397182276 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 12;
  }

  if (a1 == 1263488834 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 13;
  }

  if (a1 == 0x4D55424C41 && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 14;
  }

  if (a1 == 1146243394 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 15;
  }

  if (a1 == 0x53544345534E49 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 16;
  }

  if (a1 == 0x4C414D4D414DLL && a2 == 0xE600000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 17;
  }

  if (a1 == 0x454C4954504552 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 18;
  }

  if (a1 == 0x4C455241505041 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 19;
  }

  if (a1 == 0x524F535345434341 && a2 == 0xEB00000000534549 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 25;
  }

  if (a1 == 1146048326 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 20;
  }

  if (a1 == 0x4F524645524F5453 && a2 == 0xEA0000000000544ELL || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 21;
  }

  if (a1 == 0xD000000000000013 && 0x80000001D9CA4520 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 22;
  }

  if (a1 == 0x4D59535F4F545541 && a2 == 0xEB000000004C4F42 || (sub_1D9C7E7DC() & 1) != 0)
  {
    return 23;
  }

  if (a1 == 0xD000000000000011 && 0x80000001D9CA4540 == a2)
  {
    return 24;
  }

  v6 = sub_1D9C7E7DC();
  v4 = 100;
  if (v6)
  {
    return 24;
  }

  return v4;
}

uint64_t sub_1D99BD8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  sub_1D9C7D3BC();
  v12 = *(a3 + 16);
  if (v12)
  {
    v21 = a2;

    v13 = a3 + 48;
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      v15 = *(v13 - 16);
      v16 = *(v13 - 8);

      sub_1D99BBAA4(v15, v16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D9AF91B4(0, v14[2] + 1, 1, v14);
      }

      v18 = v14[2];
      v17 = v14[3];
      if (v18 >= v17 >> 1)
      {
        v14 = sub_1D9AF91B4(v17 > 1, v18 + 1, 1, v14);
      }

      v14[2] = v18 + 1;
      sub_1D99C8B08(v11, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
      v13 += 24;
      --v12;
    }

    while (v12);
    result = swift_bridgeObjectRelease_n();
    a2 = v21;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  a4[1] = a2;
  a4[2] = v14;
  *a4 = a1;
  return result;
}

uint64_t sub_1D99BDAB0()
{
  v1 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult(0) - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v0;
  v5 = v0[2];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    v19 = 0x80000001D9CA3780;
    v20 = 0x80000001D9CA37A0;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D99C7D24(v7, v4, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
      if (v4[8] == 1)
      {
        v10 = 0xE500000000000000;
        v11 = 0x6D75626C61;
        switch(*v4)
        {
          case 1:
            break;
          case 2:
            v10 = 0xE600000000000000;
            v11 = 0x6C616D696E61;
            break;
          case 3:
            v10 = 0xE300000000000000;
            v11 = 7631457;
            break;
          case 4:
            v10 = 0xE400000000000000;
            v11 = 1937006947;
            break;
          case 5:
            v10 = 0xE400000000000000;
            v11 = 1936158564;
            break;
          case 6:
            v11 = 0xD000000000000011;
            v10 = v19;
            break;
          case 7:
            v11 = 0x6E616D7568;
            break;
          case 8:
            v10 = 0xE800000000000000;
            v11 = 0x6B72616D646E616CLL;
            break;
          case 9:
            v11 = 0x616964656DLL;
            break;
          case 0xALL:
            v11 = 0xD000000000000010;
            v10 = v20;
            break;
          case 0xBLL:
            v10 = 0xE600000000000000;
            v11 = 0x65727574616ELL;
            break;
          case 0xCLL:
            v10 = 0xE900000000000033;
            goto LABEL_33;
          case 0xDLL:
            v10 = 0xE900000000000032;
            goto LABEL_33;
          case 0xELL:
            v11 = 0x6465767265736572;
            v10 = 0xE900000000000031;
            break;
          case 0xFLL:
            v10 = 0xEA0000000000746FLL;
            v11 = 0x68736E6565726373;
            break;
          case 0x10:
            v10 = 0xE900000000000065;
            v11 = 0x727574706C756373;
            break;
          case 0x11:
            v10 = 0xE700000000000000;
            v11 = 0x656E696C796B73;
            break;
          case 0x12:
            v10 = 0xE900000000000035;
            goto LABEL_33;
          case 0x13:
            v10 = 0xE900000000000034;
            goto LABEL_33;
          case 0x14:
            v10 = 0xE900000000000037;
LABEL_33:
            v11 = 0x6465767265736572;
            break;
          case 0x15:
            v10 = 0xE700000000000000;
            v11 = 0x6E6F6968736166;
            break;
          default:
            v10 = 0xE700000000000000;
            v11 = 0x6E776F6E6B6E75;
            break;
        }
      }

      else
      {
        v11 = 0x6E676F6365726E75;
        v10 = 0xEC00000064657A69;
      }

      v12 = *(v4 + 3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D9AF85D0(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_1D9AF85D0((v13 > 1), v14 + 1, 1, v9);
      }

      sub_1D99C7CC4(v4, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
      *(v9 + 2) = v14 + 1;
      v15 = &v9[24 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v10;
      *(v15 + 12) = v12;
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  v16 = *v21;

  return v16;
}

uint64_t sub_1D99BDEB0()
{
  v1 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9A441B8(MEMORY[0x1E69E7CC0]);
  v31 = v0;
  v6 = *(v0 + 1);
  v33 = *(v6 + 16);
  if (!v33)
  {
    return *v31;
  }

  v7 = 0;
  v32 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v29 = 0x80000001D9CA4520;
  v30 = 0x80000001D9CA4540;
  v28 = 0x80000001D9CA4500;
  while (v7 < *(v6 + 16))
  {
    v9 = v2;
    sub_1D99C7D24(v32 + *(v2 + 72) * v7, v4, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
    if (v4[8] == 1)
    {
      v10 = 0xE300000000000000;
      v11 = 5526081;
      switch(*v4)
      {
        case 1:
          break;
        case 2:
          v10 = 0xE600000000000000;
          v11 = 0x45525554414ELL;
          break;
        case 3:
          v10 = 0xE800000000000000;
          v11 = 0x4B52414D444E414CLL;
          break;
        case 4:
          v10 = 0xE500000000000000;
          v11 = 0x414944454DLL;
          break;
        case 5:
          v11 = 1398031696;
          v10 = 0xE400000000000000;
          break;
        case 6:
          v11 = 0x4445565245534552;
          v10 = 0xE900000000000031;
          break;
        case 7:
          v11 = 0xD000000000000010;
          v10 = v28;
          break;
        case 8:
          v10 = 0xE700000000000000;
          v11 = 0x534C414D494E41;
          break;
        case 9:
          v10 = 0xE900000000000045;
          v11 = 0x525554504C554353;
          break;
        case 0xALL:
          v10 = 0xE700000000000000;
          v11 = 0x454E494C594B53;
          break;
        case 0xBLL:
          v10 = 0xE400000000000000;
          v11 = 1398030659;
          break;
        case 0xCLL:
          v10 = 0xE400000000000000;
          v11 = 1397182276;
          break;
        case 0xDLL:
          v10 = 0xE400000000000000;
          v11 = 1263488834;
          break;
        case 0xELL:
          v10 = 0xE500000000000000;
          v11 = 0x4D55424C41;
          break;
        case 0xFLL:
          v10 = 0xE400000000000000;
          v11 = 1146243394;
          break;
        case 0x10:
          v10 = 0xE700000000000000;
          v11 = 0x53544345534E49;
          break;
        case 0x11:
          v10 = 0xE600000000000000;
          v11 = 0x4C414D4D414DLL;
          break;
        case 0x12:
          v10 = 0xE700000000000000;
          v11 = 0x454C4954504552;
          break;
        case 0x13:
          v10 = 0xE700000000000000;
          v11 = 0x4C455241505041;
          break;
        case 0x14:
          v10 = 0xE400000000000000;
          v11 = 1146048326;
          break;
        case 0x15:
          v10 = 0xEA0000000000544ELL;
          v11 = 0x4F524645524F5453;
          break;
        case 0x16:
          v11 = 0xD000000000000013;
          v10 = v29;
          break;
        case 0x17:
          v10 = 0xEB000000004C4F42;
          v11 = 0x4D59535F4F545541;
          break;
        case 0x18:
          v11 = 0xD000000000000011;
          v10 = v30;
          break;
        case 0x19:
          v10 = 0xEB00000000534549;
          v11 = 0x524F535345434341;
          break;
        default:
          v10 = 0xE700000000000000;
          v11 = 0x4E574F4E4B4E55;
          break;
      }
    }

    else
    {
      v11 = 0x6E676F6365726E75;
      v10 = 0xEC00000064657A69;
    }

    v12 = *(v4 + 3);
    sub_1D99C7CC4(v4, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v5;
    v14 = sub_1D99ED894(v11, v10);
    v16 = v5[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_46;
    }

    v20 = v15;
    if (v5[3] < v19)
    {
      sub_1D9C09080(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_1D99ED894(v11, v10);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_48;
      }

LABEL_15:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v25 = v14;
    sub_1D9C13E54();
    v14 = v25;
    if (v20)
    {
LABEL_3:
      v8 = v14;

      v5 = v34;
      *(v34[7] + 4 * v8) = v12;
      goto LABEL_4;
    }

LABEL_16:
    v5 = v34;
    v34[(v14 >> 6) + 8] |= 1 << v14;
    v22 = (v5[6] + 16 * v14);
    *v22 = v11;
    v22[1] = v10;
    *(v5[7] + 4 * v14) = v12;
    v23 = v5[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_47;
    }

    v5[2] = v24;
LABEL_4:
    ++v7;
    v2 = v9;
    if (v33 == v7)
    {
      return *v31;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

uint64_t sub_1D99BE3F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v12 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  sub_1D9C7D3BC();
  v13 = *(v12 + 28);
  v14 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  *(a2 + 2) = MEMORY[0x1E69E7CC0];
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(v9 + 80);
    v23[1] = a1;
    v17 = a1 + ((v16 + 32) & ~v16);
    v18 = *(v9 + 72);
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D99C7D24(v17, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D99BE6E4(v11, v7);
      sub_1D99C7CC4(v11, type metadata accessor for VisualUnderstanding.ImageRegion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D9AF922C(0, v19[2] + 1, 1, v19);
      }

      v21 = v19[2];
      v20 = v19[3];
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1D9AF922C(v20 > 1, v21 + 1, 1, v19);
      }

      v19[2] = v21 + 1;
      sub_1D99C8B08(v7, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);
      v17 += v18;
      --v15;
    }

    while (v15);

    *(a2 + 2) = v19;
  }

  else
  {
  }

  return result;
}

uint64_t sub_1D99BE6E4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v98 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult(0);
  v3 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult(0);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v93 = &v77 - v10;
  v92 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v95 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v82 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v77 - v13;
  v15 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
  v81 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v96 = &v77 - v18;
  v83 = _s14DetectedResultVMa();
  v90 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v94 = (&v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = v24;
  *(a2 + 24) = v24;
  v25 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
  sub_1D9C7D3BC();
  v26 = *(v25 + 36);
  v97 = *(v21 + 56);
  (v97)(a2 + v26, 1, 1, v20);
  v27 = v77[1];
  v99 = *v77;
  v100 = v27;
  sub_1D99C8BAC(qword_1EDD2D720, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D9C7D6BC();
  sub_1D99A6AE0(a2 + v26, &qword_1ECB51248);
  sub_1D99C8B08(v23, a2 + v26, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  result = (v97)(a2 + v26, 0, 1, v20);
  v29 = v77;
  *(a2 + 8) = *(v77 + 19);
  v84 = a2;
  *a2 = MEMORY[0x1E69E7CC0];
  v30 = *(v29 + 7);
  v31 = *(v30 + 16);
  if (v31)
  {
    result = v30 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v90 = *(v90 + 72);
    v89 = (v95 + 6);
    v78 = v95 + 7;
    v95 = MEMORY[0x1E69E7CC0];
    v32 = v96;
    v33 = v83;
    v34 = v94;
    v80 = v14;
    v79 = v15;
    do
    {
      v96 = result;
      v97 = v31;
      v36 = sub_1D99C7D24(result, v34, _s14DetectedResultVMa);
      v37 = v34;
      MEMORY[0x1EEE9AC00](v36);
      *(&v77 - 2) = v34;
      sub_1D99C8BAC(qword_1EDD2D348, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
      sub_1D9C7D6BC();
      v38 = v93;
      sub_1D99BCA80(*(v37 + *(v33 + 28) + 16), *(v37 + *(v33 + 28) + 24), v93);
      v39 = v33;
      v40 = v92;
      if ((*v89)(v38, 1, v92) == 1)
      {
        sub_1D99C7CC4(v32, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
        sub_1D99A6AE0(v38, &qword_1ECB51240);
        v33 = v39;
        v35 = v97;
      }

      else
      {
        sub_1D99C8B08(v38, v14, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
        v41 = v14;
        v42 = v82;
        sub_1D99C7D24(v41, v82, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
        v43 = *(v15 + 32);
        sub_1D99A6AE0(v32 + v43, &qword_1ECB51240);
        sub_1D99C8B08(v42, v32 + v43, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
        (*v78)(v32 + v43, 0, 1, v40);
        v33 = v83;
        *(v32 + 4) = *(v37 + *(v83 + 32));
        sub_1D99C7D24(v32, v91, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1D9AF9204(0, v95[2] + 1, 1, v95);
        }

        v35 = v97;
        v45 = v95[2];
        v44 = v95[3];
        v46 = v80;
        if (v45 >= v44 >> 1)
        {
          v95 = sub_1D9AF9204(v44 > 1, v45 + 1, 1, v95);
        }

        sub_1D99C7CC4(v46, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
        v47 = v95;
        v95[2] = v45 + 1;
        sub_1D99C8B08(v91, v47 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v45, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
        *v84 = v47;
        v14 = v46;
        sub_1D99C7CC4(v32, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
        v15 = v79;
      }

      v34 = v94;
      sub_1D99C7CC4(v94, _s14DetectedResultVMa);
      result = &v96[v90];
      v31 = v35 - 1;
    }

    while (v31);
  }

  v48 = *(v77 + 8);
  v49 = *(v48 + 16);
  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    v102 = MEMORY[0x1E69E7CC0];
    sub_1D99FE338(0, v49, 0);
    v51 = 0;
    v93 = v48 + 32;
    v97 = v102;
    v52 = v88;
    v91 = v49;
    v92 = v48;
    while (v51 < *(v48 + 16))
    {
      v96 = v51;
      v53 = (v93 + 16 * v51);
      v54 = *v53;
      v55 = v53[1];
      *(v52 + 8) = v50;

      sub_1D9C7D3BC();
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (HIDWORD(v54))
      {
        goto LABEL_36;
      }

      *v52 = v54;
      v56 = *(v55 + 16);
      if (v56)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51250);
        v57 = swift_allocObject();
        v58 = _swift_stdlib_malloc_size(v57);
        v57[2] = v56;
        v57[3] = 2 * ((v58 - 32) / 24);
        v59 = sub_1D9B8E904(v101, (v57 + 4), v56, v55);
        v94 = v101[4];
        v95 = v101[3];

        sub_1D99C74D4();
        if (v59 != v56)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v57 = v50;
      }

      v101[0] = v57;
      sub_1D99C59D4(v101);

      v60 = v101[0];
      v61 = v101[0][2];
      if (v61)
      {
        v62 = sub_1D99C8BAC(qword_1EDD2D488, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
        v95 = v60;
        v63 = v60 + 6;
        v64 = MEMORY[0x1E69E7CC0];
        do
        {
          v65 = *(v63 - 1);
          v66 = MEMORY[0x1EEE9AC00](v62);
          *(&v77 - 8) = LODWORD(v66);
          *(&v77 - 3) = v67;
          *(&v77 - 2) = v65;

          sub_1D9C7D6BC();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_1D9AF91DC(0, v64[2] + 1, 1, v64);
          }

          v69 = v64[2];
          v68 = v64[3];
          if (v69 >= v68 >> 1)
          {
            v64 = sub_1D9AF91DC(v68 > 1, v69 + 1, 1, v64);
          }

          v64[2] = v69 + 1;
          v62 = sub_1D99C8B08(v5, v64 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v69, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);
          v63 += 3;
          --v61;
        }

        while (v61);

        v52 = v88;
        *(v88 + 1) = v64;
      }

      else
      {

        v52 = v88;
      }

      v70 = v85;
      sub_1D99C8B08(v52, v85, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);
      v72 = v96;
      v71 = v97;
      v102 = v97;
      v74 = *(v97 + 16);
      v73 = *(v97 + 24);
      v50 = MEMORY[0x1E69E7CC0];
      v75 = v91;
      if (v74 >= v73 >> 1)
      {
        sub_1D99FE338(v73 > 1, v74 + 1, 1);
        v72 = v96;
        v71 = v102;
      }

      v51 = (v72 + 1);
      *(v71 + 16) = v74 + 1;
      v76 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v97 = v71;
      result = sub_1D99C8B08(v70, v71 + v76 + *(v86 + 72) * v74, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);
      v48 = v92;
      if (v51 == v75)
      {
        v50 = v97;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_33:
    v84[2] = v50;
  }

  return result;
}

void *sub_1D99BF3E4(uint64_t *a1, uint64_t a2)
{
  v22 = a2;
  v4 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0) - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + 16);
  v13 = *(v12 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v21 = *a1;
  v14 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v15 = *(v9 + 72);
  v16 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D99C7D24(v14, v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);
    v23 = v21;
    sub_1D99BF644(v11, &v23, v22, v7);
    sub_1D99C7CC4(v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1D9AF8A90(0, v16[2] + 1, 1, v16);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1D9AF8A90(v17 > 1, v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    sub_1D99C8B08(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, type metadata accessor for VisualUnderstanding.ImageRegion);
    v14 += v15;
    --v13;
  }

  while (v13);
  return v16;
}

double sub_1D99BF644@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v171 = a3;
  v175 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v174 = &v169 - v7;
  v172 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig(0);
  v205 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v173 = (&v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult(0);
  v169 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v204 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = _s14DetectedResultVMa();
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v189 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v188 = &v169 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v198 = &v169 - v15;
  v197 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v199 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v17 = (&v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
  v200 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v210 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v182 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v181 = &v169 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v180 = &v169 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v186 = &v169 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v211 = &v169 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v202 = &v169 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v169 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v169 - v35;
  v37 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v179 = (&v169 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v40);
  v178 = (&v169 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v177 = (&v169 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v176 = (&v169 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v203 = &v169 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = (&v169 - v49);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v169 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = (&v169 - v55);
  v207 = *a2;
  v57 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0) + 36);
  v185 = a1;
  sub_1D99AB100(a1 + v57, v36, &qword_1ECB51248);
  v58 = *(v38 + 48);
  v59 = v58(v36, 1, v37);
  v206 = v37;
  v191 = v38 + 48;
  v209 = v58;
  if (v59 == 1)
  {
    *v56 = 0u;
    *(v56 + 1) = 0u;
    sub_1D9C7D3BC();
    if (v58(v36, 1, v37) != 1)
    {
      sub_1D99A6AE0(v36, &qword_1ECB51248);
    }
  }

  else
  {
    sub_1D99C8B08(v36, v56, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  }

  v170 = *v56;
  sub_1D99C7CC4(v56, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D99AB100(v185 + v57, v33, &qword_1ECB51248);
  v60 = v206;
  v61 = v209;
  if (v209(v33, 1, v206) == 1)
  {
    *v53 = 0u;
    *(v53 + 1) = 0u;
    sub_1D9C7D3BC();
    v62 = v61(v33, 1, v60);
    v63 = v205;
    if (v62 != 1)
    {
      sub_1D99A6AE0(v33, &qword_1ECB51248);
    }
  }

  else
  {
    sub_1D99C8B08(v33, v53, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    v63 = v205;
  }

  v64 = *(v53 + 1);
  sub_1D99C7CC4(v53, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  v65 = v202;
  sub_1D99AB100(v185 + v57, v202, &qword_1ECB51248);
  v66 = v206;
  v67 = v209;
  if (v209(v65, 1, v206) == 1)
  {
    *v50 = 0u;
    v50[1] = 0u;
    sub_1D9C7D3BC();
    v68 = v67(v65, 1, v66);
    v69 = v203;
    if (v68 != 1)
    {
      sub_1D99A6AE0(v65, &qword_1ECB51248);
    }
  }

  else
  {
    sub_1D99C8B08(v65, v50, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    v69 = v203;
  }

  v70 = *(v50 + 2);
  sub_1D99C7CC4(v50, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  v71 = v211;
  sub_1D99AB100(v185 + v57, v211, &qword_1ECB51248);
  v72 = v206;
  if (v67(v71, 1, v206) == 1)
  {
    *v69 = 0u;
    *(v69 + 16) = 0u;
    sub_1D9C7D3BC();
    v73 = v67(v71, 1, v72);
    v74 = v210;
    if (v73 != 1)
    {
      sub_1D99A6AE0(v71, &qword_1ECB51248);
    }
  }

  else
  {
    sub_1D99C8B08(v71, v69, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    v74 = v210;
  }

  v75 = *(v69 + 24);
  sub_1D99C7CC4(v69, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  v76 = *v185;
  v77 = MEMORY[0x1E69E7CC0];
  v203 = *(*v185 + 16);
  if (v203)
  {
    v78 = 0;
    v201 = v76 + ((*(v200 + 80) + 32) & ~*(v200 + 80));
    v200 = *(v200 + 72);
    v79 = v199 + 6;
    v190 = MEMORY[0x1E69E7CC0];
    v202 = MEMORY[0x1E69E7CC0];
    v80 = v198;
    v81 = v197;
    v196 = v17;
    v199 += 6;
    while (1)
    {
      v211 = v78;
      sub_1D99C7D24(v201 + v200 * v78, v74, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
      sub_1D99AB100(v74 + *(v208 + 32), v80, &qword_1ECB51240);
      v82 = *v79;
      if ((*v79)(v80, 1, v81) == 1)
      {
        *v17 = v77;
        v17[1] = 0;
        v17[2] = 0xE000000000000000;
        sub_1D9C7D3BC();
        if (v82(v80, 1, v81) != 1)
        {
          sub_1D99A6AE0(v80, &qword_1ECB51240);
        }
      }

      else
      {
        sub_1D99C8B08(v80, v17, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      }

      v83 = *v17;
      v84 = *(*v17 + 16);
      if (v84)
      {
        v215 = v77;
        sub_1D99FE164(0, v84, 0);
        v77 = v215;
        v85 = (v83 + 32);
        do
        {
          v86 = *v85++;
          v212 = v86;
          v213 = 81;
          v214 = 0xE100000000000000;
          v87 = sub_1D9C7E7AC();
          MEMORY[0x1DA73DF90](v87);

          v88 = v213;
          v89 = v214;
          v215 = v77;
          v91 = *(v77 + 16);
          v90 = *(v77 + 24);
          if (v91 >= v90 >> 1)
          {
            sub_1D99FE164((v90 > 1), v91 + 1, 1);
            v77 = v215;
          }

          *(v77 + 16) = v91 + 1;
          v92 = v77 + 16 * v91;
          *(v92 + 32) = v88;
          *(v92 + 40) = v89;
          --v84;
        }

        while (v84);
        v80 = v198;
        v81 = v197;
        v17 = v196;
      }

      v213 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51040);
      sub_1D99C7C60(&qword_1EDD2C4B0, &qword_1ECB51040);
      v93 = sub_1D9C7DC0C();
      v95 = v94;

      sub_1D99C7CC4(v17, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      v74 = v210;
      if (*(v207 + 16))
      {
        v96 = sub_1D99ED894(v93, v95);
        v98 = v97;

        if (v98)
        {
          v99 = *(*(v207 + 56) + 8 * v96);
          v100 = v99[3];
          v195 = v99[2];
          v101 = v99[5];
          v193 = v99[4];
          v187 = *(v208 + 28);
          v102 = v186;
          sub_1D99AB100(v74 + v187, v186, &qword_1ECB51248);
          v103 = v206;
          v104 = v209;
          v105 = v209(v102, 1, v206);
          v194 = v100;
          v192 = v101;
          if (v105 == 1)
          {
            v106 = v176;
            *v176 = 0u;
            v106[1] = 0u;

            v74 = v210;
            sub_1D9C7D3BC();
            v107 = v104(v102, 1, v103);
            v108 = v181;
            v109 = v180;
            if (v107 != 1)
            {
              sub_1D99A6AE0(v186, &qword_1ECB51248);
            }
          }

          else
          {
            v106 = v176;
            sub_1D99C8B08(v102, v176, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);

            v108 = v181;
            v109 = v180;
          }

          v110 = *v106;
          sub_1D99C7CC4(v106, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
          v111 = v187;
          sub_1D99AB100(v74 + v187, v109, &qword_1ECB51248);
          v112 = v206;
          v113 = v209;
          if (v209(v109, 1, v206) == 1)
          {
            v114 = v177;
            *v177 = 0u;
            v114[1] = 0u;
            sub_1D9C7D3BC();
            if (v113(v109, 1, v112) != 1)
            {
              sub_1D99A6AE0(v109, &qword_1ECB51248);
            }
          }

          else
          {
            v114 = v177;
            sub_1D99C8B08(v109, v177, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
          }

          v115 = *(v114 + 1);
          sub_1D99C7CC4(v114, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
          sub_1D99AB100(v74 + v111, v108, &qword_1ECB51248);
          v116 = v206;
          v117 = v209;
          v118 = v209(v108, 1, v206);
          v119 = v178;
          v120 = v182;
          if (v118 == 1)
          {
            *v178 = 0u;
            v119[1] = 0u;
            sub_1D9C7D3BC();
            v121 = v117(v108, 1, v116);
            v17 = v196;
            if (v121 != 1)
            {
              sub_1D99A6AE0(v108, &qword_1ECB51248);
            }
          }

          else
          {
            sub_1D99C8B08(v108, v178, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
            v17 = v196;
          }

          v122 = *(v119 + 2);
          sub_1D99C7CC4(v119, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
          sub_1D99AB100(v74 + v111, v120, &qword_1ECB51248);
          v123 = v209;
          if (v209(v120, 1, v116) == 1)
          {
            v124 = v179;
            *v179 = 0u;
            v124[1] = 0u;
            sub_1D9C7D3BC();
            v125 = v123(v120, 1, v116);
            v77 = MEMORY[0x1E69E7CC0];
            v126 = v192;
            if (v125 != 1)
            {
              sub_1D99A6AE0(v120, &qword_1ECB51248);
            }
          }

          else
          {
            v124 = v179;
            sub_1D99C8B08(v120, v179, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
            v77 = MEMORY[0x1E69E7CC0];
            v126 = v192;
          }

          v127 = *(v124 + 3);
          sub_1D99C7CC4(v124, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
          v128 = v74[1];
          v129 = v188;
          *v188 = *v74;
          v130 = v184;
          v131 = *(v184 + 20);
          v132 = sub_1D9C7B93C();
          (*(*(v132 - 8) + 56))(&v129[v131], 1, 1, v132);
          v133 = &v129[v130[6]];
          *v133 = v110;
          *(v133 + 1) = v115;
          *(v133 + 2) = v122;
          *(v133 + 3) = v127;
          v134 = &v129[v130[7]];
          v135 = v194;
          *v134 = v195;
          *(v134 + 1) = v135;
          *(v134 + 2) = v193;
          *(v134 + 3) = v126;
          *&v129[v130[8]] = v128;
          sub_1D99C7D24(v129, v189, _s14DetectedResultVMa);

          v136 = v190;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v136 = sub_1D9AF9018(0, v136[2] + 1, 1, v136);
          }

          v80 = v198;
          v81 = v197;
          v138 = v136[2];
          v137 = v136[3];
          if (v138 >= v137 >> 1)
          {
            v136 = sub_1D9AF9018(v137 > 1, v138 + 1, 1, v136);
          }

          v136[2] = v138 + 1;
          sub_1D99C8B08(v189, v136 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v138, _s14DetectedResultVMa);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v190 = v136;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v202 = sub_1D9AF8F0C(0, *(v202 + 2) + 1, 1, v202);
          }

          v74 = v210;
          v141 = *(v202 + 2);
          v140 = *(v202 + 3);
          v79 = v199;
          if (v141 >= v140 >> 1)
          {
            v202 = sub_1D9AF8F0C((v140 > 1), v141 + 1, 1, v202);
          }

          sub_1D99C7CC4(v188, _s14DetectedResultVMa);
          sub_1D99C7CC4(v74, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
          v142 = v202;
          *(v202 + 2) = v141 + 1;
          v143 = &v142[32 * v141];
          v144 = v194;
          *(v143 + 4) = v195;
          *(v143 + 5) = v144;
          v145 = v192;
          *(v143 + 6) = v193;
          *(v143 + 7) = v145;
          v63 = v205;
          goto LABEL_21;
        }
      }

      else
      {
      }

      sub_1D99C7CC4(v74, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
      v63 = v205;
      v77 = MEMORY[0x1E69E7CC0];
      v79 = v199;
LABEL_21:
      v78 = v211 + 1;
      if ((v211 + 1) == v203)
      {
        goto LABEL_60;
      }
    }
  }

  v190 = MEMORY[0x1E69E7CC0];
  v202 = MEMORY[0x1E69E7CC0];
LABEL_60:
  v146 = v185[2];
  v147 = *(v146 + 16);
  if (v147)
  {
    v148 = v146 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
    v149 = *(v169 + 72);
    v150 = MEMORY[0x1E69E7CC0];
    do
    {
      v151 = v204;
      sub_1D99C7D24(v148, v204, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);
      v152 = sub_1D99BDEB0();
      v154 = v153;
      sub_1D99C7CC4(v151, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v150 = sub_1D9AF8E00(0, *(v150 + 2) + 1, 1, v150);
      }

      v156 = *(v150 + 2);
      v155 = *(v150 + 3);
      if (v156 >= v155 >> 1)
      {
        v150 = sub_1D9AF8E00((v155 > 1), v156 + 1, 1, v150);
      }

      *(v150 + 2) = v156 + 1;
      v157 = &v150[16 * v156];
      *(v157 + 4) = v152;
      *(v157 + 5) = v154;
      v148 += v149;
      --v147;
    }

    while (v147);
  }

  else
  {
    v150 = v77;
  }

  v158 = v185[3];
  v159 = type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  v160 = v174;
  sub_1D99AB100(v171 + *(v159 + 32), v174, &qword_1ECB512B0);
  v161 = *(v63 + 48);
  v162 = v172;
  if (v161(v160, 1, v172) == 1)
  {
    v163 = v173;
    *v173 = v77;
    sub_1D9C7D3BC();
    if (v161(v160, 1, v162) != 1)
    {
      sub_1D99A6AE0(v160, &qword_1ECB512B0);
    }
  }

  else
  {
    v163 = v173;
    sub_1D99C8B08(v160, v173, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
  }

  v164 = sub_1D99C1E0C(v163, v158);
  sub_1D99C7CC4(v163, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
  v165 = *(v185 + 2);
  v166 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v167 = v175;
  sub_1D9C7B92C();
  result = v170;
  *v167 = v170;
  *(v167 + 8) = v64;
  *(v167 + 16) = v70;
  *(v167 + 24) = v75;
  *(v167 + 32) = 1;
  *(v167 + 40) = v202;
  *(v167 + 48) = v77;
  *(v167 + 56) = v190;
  *(v167 + 64) = v150;
  *(v167 + 72) = 0;
  *(v167 + 76) = v165;
  *(v167 + 88) = 0;
  *(v167 + 96) = 0;
  *(v167 + 80) = 0;
  *(v167 + 104) = 0;
  *(v167 + 112) = v164;
  *(v167 + *(v166 + 64)) = 0;
  *(v167 + *(v166 + 68)) = v77;
  return result;
}

size_t sub_1D99C0DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v115 = a2;
  v103 = sub_1D9C7D8DC();
  v128 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v99 - v9;
  v11 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  v105 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512B0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v114 = &v99 - v19;
  v113 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig(0);
  v20 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = (&v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v101 = (&v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v26 = v4;
  v28 = (&v99 - v27);
  v106 = a3;
  result = sub_1D99C7D24(v26, a3, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  v111 = *(a1 + 16);
  if (!v111)
  {
    return result;
  }

  v30 = type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  v31 = *(v23 + 80);
  v110 = *(v30 + 32);
  v109 = a1 + ((v31 + 32) & ~v31);
  v32 = (v20 + 48);
  v33 = 0;
  v104 = (v12 + 48);
  v100 = (*&v128 + 8);
  v108 = *(v23 + 72);
  *&v34 = 136315138;
  v99 = v34;
  v119 = 0.0001;
  v123 = v28;
  v107 = v32;
  v124 = v10;
  v120 = v11;
  v118 = -0.0001;
  while (1)
  {
    v117 = v33;
    sub_1D99C7D24(v109 + v108 * v33, v28, type metadata accessor for VisualUnderstanding.ImageRegion);
    v35 = *(v28 + 14);
    v36 = v114;
    sub_1D99AB100(v115 + v110, v114, &qword_1ECB512B0);
    v37 = *v32;
    v38 = v113;
    if ((*v32)(v36, 1, v113) == 1)
    {
      v39 = v112;
      *v112 = MEMORY[0x1E69E7CC0];

      sub_1D9C7D3BC();
      if (v37(v36, 1, v38) != 1)
      {
        sub_1D99A6AE0(v36, &qword_1ECB512B0);
      }
    }

    else
    {
      v39 = v112;
      sub_1D99C8B08(v36, v112, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
    }

    sub_1D99C7D8C(v35, v39);
    v41 = *(v40 + 16);
    v116 = v40;
    if (v41)
    {
      break;
    }

    v44 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v55 = v44[2];

    if (v55)
    {
      v56 = *(v106 + 16);
      v57 = v104;
      v122 = v56[2];
      if (v122)
      {
        v58 = 0;
        v121 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
        v59 = (*(*(v121 - 8) + 80) + 32) & ~*(*(v121 - 8) + 80);
        v60 = *(*(v121 - 8) + 72);
        while (1)
        {
          v61 = v56;
          v62 = v56 + v59 + *(v121 + 36);
          v63 = v124;
          sub_1D99AB100(v62, v124, &qword_1ECB51248);
          v64 = *v57;
          v65 = v120;
          if ((*v57)(v63, 1, v120) == 1)
          {
            *v14 = 0u;
            *(v14 + 1) = 0u;
            sub_1D9C7D3BC();
            if (v64(v63, 1, v65) != 1)
            {
              sub_1D99A6AE0(v124, &qword_1ECB51248);
            }
          }

          else
          {
            sub_1D99C8B08(v63, v14, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
          }

          v66 = *v14;
          v67 = *(v14 + 1);
          v69 = *(v14 + 2);
          v68 = *(v14 + 3);
          sub_1D99C7CC4(v14, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
          v70 = *v123;
          v71 = v123[1];
          v72 = v123[2];
          v73 = v123[3];
          v127 = v67;
          v128 = v66;
          v132.origin.x = v66;
          v132.origin.y = v67;
          v125 = v68;
          v126 = v69;
          v132.size.width = v69;
          v132.size.height = v68;
          MinX = CGRectGetMinX(v132);
          v75 = v118;
          v76 = MinX + v118;
          v133.origin.x = v70;
          v133.origin.y = v71;
          v133.size.width = v72;
          v133.size.height = v73;
          v77 = CGRectGetMinX(v133);
          v78 = v119;
          v79 = v76 > v77 || v77 > MinX + v119;
          v56 = v61;
          if (!v79)
          {
            v134.origin.y = v127;
            v134.origin.x = v128;
            v134.size.height = v125;
            v134.size.width = v126;
            MinY = CGRectGetMinY(v134);
            v135.origin.x = v70;
            v135.origin.y = v71;
            v135.size.width = v72;
            v135.size.height = v73;
            v81 = CGRectGetMinY(v135);
            if (MinY + v75 <= v81 && v81 <= MinY + v78)
            {
              v136.origin.y = v127;
              v136.origin.x = v128;
              v136.size.height = v125;
              v136.size.width = v126;
              Width = CGRectGetWidth(v136);
              v137.origin.x = v70;
              v137.origin.y = v71;
              v137.size.width = v72;
              v137.size.height = v73;
              v84 = CGRectGetWidth(v137);
              if (Width + v75 <= v84 && v84 <= Width + v78)
              {
                v138.origin.y = v127;
                v138.origin.x = v128;
                v138.size.height = v125;
                v138.size.width = v126;
                Height = CGRectGetHeight(v138);
                v139.origin.x = v70;
                v139.origin.y = v71;
                v139.size.width = v72;
                v139.size.height = v73;
                v87 = CGRectGetHeight(v139);
                if (Height + v75 <= v87 && v87 <= Height + v78)
                {
                  break;
                }
              }
            }
          }

          ++v58;
          v59 += v60;
          if (v122 == v58)
          {
            goto LABEL_51;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A724(v61);
          v56 = result;
        }

        v28 = v123;
        if (v58 >= v56[2])
        {
          goto LABEL_63;
        }

        *(v56 + v59 + 24) = v116;

        *(v106 + 16) = v56;
        goto LABEL_57;
      }

LABEL_51:

      v88 = v102;
      static Logger.argos.getter(v102);
      v89 = v101;
      sub_1D99C7D24(v123, v101, type metadata accessor for VisualUnderstanding.ImageRegion);
      v90 = sub_1D9C7D8BC();
      v91 = sub_1D9C7E09C();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v131 = v93;
        *v92 = v99;
        v94 = v89[1];
        v129 = *v89;
        v130 = v94;
        v95 = NormalizedRect.loggingDescription.getter();
        v97 = v96;
        sub_1D99C7CC4(v89, type metadata accessor for VisualUnderstanding.ImageRegion);
        v98 = sub_1D9A0E224(v95, v97, &v131);

        *(v92 + 4) = v98;
        _os_log_impl(&dword_1D9962000, v90, v91, "Failed to find matched region for %s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v93);
        MEMORY[0x1DA7405F0](v93, -1, -1);
        MEMORY[0x1DA7405F0](v92, -1, -1);
      }

      else
      {

        sub_1D99C7CC4(v89, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      (*v100)(v88, v103);
    }

    else
    {
    }

    v28 = v123;
LABEL_57:
    v33 = v117 + 1;
    result = sub_1D99C7CC4(v28, type metadata accessor for VisualUnderstanding.ImageRegion);
    v32 = v107;
    if (v33 == v111)
    {
      return result;
    }
  }

  v42 = v40 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
  v43 = *(v105 + 72);
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D99C7D24(v42, v17, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
    v45 = *v17;

    result = sub_1D99C7CC4(v17, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
    v46 = *(v45 + 16);
    v47 = v44[2];
    v48 = v47 + v46;
    if (__OFADD__(v47, v46))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v48 <= v44[3] >> 1)
    {
      if (*(v45 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v47 <= v48)
      {
        v50 = v47 + v46;
      }

      else
      {
        v50 = v47;
      }

      v44 = sub_1D9AF9254(isUniquelyReferenced_nonNull_native, v50, 1, v44);
      if (*(v45 + 16))
      {
LABEL_20:
        v51 = (v44[3] >> 1) - v44[2];
        result = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult(0);
        if (v51 < v46)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v46)
        {
          v52 = v44[2];
          v53 = __OFADD__(v52, v46);
          v54 = v52 + v46;
          if (v53)
          {
            goto LABEL_62;
          }

          v44[2] = v54;
        }

        goto LABEL_10;
      }
    }

    if (v46)
    {
      goto LABEL_60;
    }

LABEL_10:
    v42 += v43;
    if (!--v41)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1D99C1A08(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0) - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v8 = *(v3 + 72);
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D99C7D24(v7, v5, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
    v11 = *v5;

    result = sub_1D99C7CC4(v5, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
    v12 = *(v11 + 16);
    v13 = v9[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= v9[3] >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v9 = sub_1D9AF9254(isUniquelyReferenced_nonNull_native, v16, 1, v9);
      if (*(v11 + 16))
      {
LABEL_14:
        v17 = (v9[3] >> 1) - v9[2];
        result = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult(0);
        if (v17 < v12)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v18 = v9[2];
          v19 = __OFADD__(v18, v12);
          v20 = v18 + v12;
          if (v19)
          {
            goto LABEL_23;
          }

          v9[2] = v20;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_21;
    }

LABEL_4:
    v7 += v8;
    if (!--v6)
    {
      return v9;
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

void sub_1D99C1C3C(char *a1, unint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v9))
  {
    *a1 = v9;
    MEMORY[0x1EEE9AC00](v6);
    *(&v11 - 2) = a2;
    sub_1D99C8BAC(qword_1EDD2D720, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    sub_1D9C7D6BC();
    v10 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0) + 28);
    sub_1D99A6AE0(&a1[v10], &qword_1ECB51248);
    sub_1D99C8B08(v8, &a1[v10], type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    (*(v5 + 56))(&a1[v10], 0, 1, v4);
    return;
  }

  __break(1u);
}

char *sub_1D99C1E0C(uint64_t *a1, uint64_t a2)
{
  v75 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v73 - v4;
  v82 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v6 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D9C7D8DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig(0);
  v91 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v94 = (&v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult(0);
  v74 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v73 - v17;
  v80 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  v18 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v84 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(sub_1D99C1A08(a2) + 16);

  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v79 = *(a2 + 16);
  if (!v79)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = 0;
  v78 = a2 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v85 = 0x80000001D9CA3A40;
  v89 = (v9 + 8);
  v90 = (v9 + 16);
  v23 = (v6 + 48);
  v77 = *(v18 + 72);
  *&v21 = 67109120;
  v87 = v21;
  v86 = MEMORY[0x1E69E7CC0];
  v24 = v92;
  v25 = v84;
  v98 = v23;
  v76 = v5;
  v88 = v8;
  while (1)
  {
    v83 = v22;
    sub_1D99C7D24(v78 + v77 * v22, v25, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
    v26 = *v25;
    v27 = *(*v25 + 16);
    if (v27)
    {
      break;
    }

    v99 = MEMORY[0x1E69E7CC0];
LABEL_38:
    v59 = v76;
    sub_1D99AB100(&v84[*(v80 + 24)], v76, &qword_1ECB51248);
    v60 = *v23;
    v61 = v82;
    if ((*v23)(v59, 1, v82) == 1)
    {
      v62 = v81;
      *v81 = 0u;
      v62[1] = 0u;
      sub_1D9C7D3BC();
      if (v60(v59, 1, v61) != 1)
      {
        sub_1D99A6AE0(v59, &qword_1ECB51248);
      }
    }

    else
    {
      v62 = v81;
      sub_1D99C8B08(v59, v81, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    }

    v63 = *v62;
    v96 = v62[1];
    v97 = v63;
    sub_1D99C7CC4(v62, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_1D9AF8CE0(0, *(v86 + 2) + 1, 1, v86);
    }

    v64 = v83;
    v25 = v84;
    v66 = *(v86 + 2);
    v65 = *(v86 + 3);
    if (v66 >= v65 >> 1)
    {
      v72 = sub_1D9AF8CE0((v65 > 1), v66 + 1, 1, v86);
      v64 = v83;
      v86 = v72;
    }

    v67 = v64 + 1;
    sub_1D99C7CC4(v25, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
    v22 = v67;
    v68 = v86;
    *(v86 + 2) = v66 + 1;
    v69 = &v68[48 * v66];
    v70 = v96;
    *(v69 + 2) = v97;
    *(v69 + 3) = v70;
    v71 = v99;
    *(v69 + 8) = MEMORY[0x1E69E7CC0];
    *(v69 + 9) = v71;
    v48 = v67 == v79;
    v23 = v98;
    if (v48)
    {
      return v86;
    }
  }

  v93 = *v75;
  *&v97 = *(v93 + 16);
  v28 = v26 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  *&v96 = *(v74 + 72);
  v99 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    result = sub_1D99C7D24(v28, v24, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
    v30 = *v24;
    if (v97 > v30)
    {
      break;
    }

    if (qword_1EDD354B8 != -1)
    {
      swift_once();
    }

    if (byte_1EDD354C0 != 1)
    {
LABEL_33:
      v53 = qword_1EDD354D8;
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
        v53 = qword_1EDD354D8;
      }

      goto LABEL_35;
    }

    v43 = [objc_opt_self() mainBundle];
    v44 = [v43 bundleIdentifier];

    if (!v44)
    {
LABEL_25:
      v50 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v50 = &qword_1EDD355A8;
      }

      goto LABEL_30;
    }

    v45 = sub_1D9C7DC7C();
    v47 = v46;

    v48 = v45 == 0xD00000000000002BLL && v85 == v47;
    if (v48)
    {
    }

    else
    {
      v49 = sub_1D9C7E7DC();

      if ((v49 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v50 = &off_1ECB51BA8;
    if (qword_1ECB50988 != -1)
    {
      swift_once();
      v50 = &off_1ECB51BA8;
    }

LABEL_30:
    v51 = *(*v50 + 32);

    v52 = sub_1D9C7DC4C();
    LODWORD(v51) = [v51 BOOLForKey_];

    if (!v51)
    {
      goto LABEL_33;
    }

    v53 = qword_1EDD2C990;
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
      v53 = qword_1EDD2C990;
    }

LABEL_35:
    v54 = __swift_project_value_buffer(v8, v53);
    (*v90)(v95, v54, v8);
    sub_1D99C7D24(v24, v15, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
    v55 = sub_1D9C7D8BC();
    v56 = sub_1D9C7E09C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = v87;
      v58 = *v15;
      sub_1D99C7CC4(v15, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
      *(v57 + 4) = v58;
      _os_log_impl(&dword_1D9962000, v55, v56, "Invalid model urn index %u", v57, 8u);
      MEMORY[0x1DA7405F0](v57, -1, -1);
    }

    else
    {
      sub_1D99C7CC4(v15, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
    }

    (*v89)(v95, v8);
    sub_1D99C7CC4(v24, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
LABEL_8:
    v28 += v96;
    --v27;
    v23 = v98;
    if (!v27)
    {
      goto LABEL_38;
    }
  }

  if (*(v93 + 16) > v30)
  {
    v31 = v24;
    v32 = v15;
    v33 = v94;
    v34 = sub_1D99C7D24(v93 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v30, v94, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
    v35 = *v33;
    v36 = v33[1];
    v37 = *(v31 + 1);
    MEMORY[0x1EEE9AC00](v34);
    *(&v73 - 2) = v33;

    v38 = sub_1D9BE7DE0(sub_1D99C7CA8, (&v73 - 4), v37);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v99 = sub_1D9AF85EC(0, *(v99 + 2) + 1, 1, v99);
    }

    v15 = v32;
    v40 = *(v99 + 2);
    v39 = *(v99 + 3);
    v24 = v92;
    if (v40 >= v39 >> 1)
    {
      v99 = sub_1D9AF85EC((v39 > 1), v40 + 1, 1, v99);
    }

    sub_1D99C7CC4(v24, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
    v41 = v99;
    *(v99 + 2) = v40 + 1;
    v42 = &v41[24 * v40];
    *(v42 + 4) = v35;
    *(v42 + 5) = v36;
    *(v42 + 6) = v38;
    sub_1D99C7CC4(v94, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
    v8 = v88;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D99C2988(uint64_t a1, uint64_t a2)
{
  v114 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v108 - v3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v111 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v120 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
  v129 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v134 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
  v116 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v115 = (&v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512C8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v117 = &v108 - v11;
  v113 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v121 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v108 - v17;
  v131 = type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  v124 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v123 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v108 - v21;
  v23 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult(0);
  v133 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = (&v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512C0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v108 - v27;
  v29 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v33 = (&v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*v31 != 1)
  {
    v34 = v31[2];
    if (v34)
    {
      if (*(v34 + 16))
      {
        return 0;
      }
    }
  }

  v130 = v15;
  v110 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  sub_1D99AB100(v125 + *(v110 + 20), v28, &qword_1ECB512C0);
  v35 = *(v30 + 48);
  v36 = v35(v28, 1, v29);
  v37 = MEMORY[0x1E69E7CC0];
  v119 = v4;
  v118 = v5;
  if (v36 == 1)
  {
    *v33 = 0;
    v33[1] = 0xE000000000000000;
    v33[2] = v37;
    sub_1D9C7D3BC();
    v38 = v35(v28, 1, v29);
    v39 = v131;
    if (v38 != 1)
    {
      sub_1D99A6AE0(v28, &qword_1ECB512C0);
    }
  }

  else
  {
    sub_1D99C8B08(v28, v33, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
    v39 = v131;
  }

  v40 = v33[2];

  sub_1D99C7CC4(v33, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
  v41 = v40;
  v42 = v130;
  v132 = *(v40 + 16);
  if (v132)
  {
    v43 = *(v114 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
    v126 = v40 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
    v127 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__parseCachingConfig;
    v128 = v43;
    result = swift_beginAccess();
    v45 = 0;
    v46 = (v124 + 48);
    v109 = 0x80000001D9CA37A0;
    v108 = 0x80000001D9CA3780;
    do
    {
      if (v45 >= *(v41 + 16))
      {
        goto LABEL_85;
      }

      sub_1D99C7D24(v126 + *(v133 + 72) * v45, v25, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
      sub_1D99AB100(v128 + v127, v18, &qword_1ECB512D0);
      v47 = *v46;
      if ((*v46)(v18, 1, v39) == 1)
      {
        v48 = MEMORY[0x1E69E7CC8];
        *v22 = MEMORY[0x1E69E7CC8];
        *(v22 + 1) = v48;
        *(v22 + 2) = v48;
        sub_1D9C7D3BC();
        v49 = *(v39 + 32);
        v50 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig(0);
        (*(*(v50 - 8) + 56))(&v22[v49], 1, 1, v50);
        if (v47(v18, 1, v39) != 1)
        {
          sub_1D99A6AE0(v18, &qword_1ECB512D0);
        }
      }

      else
      {
        sub_1D99C8B08(v18, v22, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
      }

      v51 = *(v22 + 1);

      sub_1D99C7CC4(v22, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
      if (*(v25 + 8) == 1)
      {
        v52 = 0xE500000000000000;
        v53 = 0x6D75626C61;
        switch(*v25)
        {
          case 1:
            break;
          case 2:
            v52 = 0xE600000000000000;
            v53 = 0x6C616D696E61;
            break;
          case 3:
            v52 = 0xE300000000000000;
            v53 = 7631457;
            break;
          case 4:
            v52 = 0xE400000000000000;
            v53 = 1937006947;
            break;
          case 5:
            v52 = 0xE400000000000000;
            v53 = 1936158564;
            break;
          case 6:
            v53 = 0xD000000000000011;
            v52 = v108;
            break;
          case 7:
            v53 = 0x6E616D7568;
            break;
          case 8:
            v52 = 0xE800000000000000;
            v53 = 0x6B72616D646E616CLL;
            break;
          case 9:
            v53 = 0x616964656DLL;
            break;
          case 0xALL:
            v53 = 0xD000000000000010;
            v52 = v109;
            break;
          case 0xBLL:
            v52 = 0xE600000000000000;
            v53 = 0x65727574616ELL;
            break;
          case 0xCLL:
            v52 = 0xE900000000000033;
            goto LABEL_46;
          case 0xDLL:
            v52 = 0xE900000000000032;
            goto LABEL_46;
          case 0xELL:
            v53 = 0x6465767265736572;
            v52 = 0xE900000000000031;
            break;
          case 0xFLL:
            v52 = 0xEA0000000000746FLL;
            v53 = 0x68736E6565726373;
            break;
          case 0x10:
            v52 = 0xE900000000000065;
            v53 = 0x727574706C756373;
            break;
          case 0x11:
            v52 = 0xE700000000000000;
            v53 = 0x656E696C796B73;
            break;
          case 0x12:
            v52 = 0xE900000000000035;
            goto LABEL_46;
          case 0x13:
            v52 = 0xE900000000000034;
            goto LABEL_46;
          case 0x14:
            v52 = 0xE900000000000037;
LABEL_46:
            v53 = 0x6465767265736572;
            break;
          case 0x15:
            v52 = 0xE700000000000000;
            v53 = 0x6E6F6968736166;
            break;
          default:
            v52 = 0xE700000000000000;
            v53 = 0x6E776F6E6B6E75;
            break;
        }
      }

      else
      {
        v53 = 0x6E676F6365726E75;
        v52 = 0xEC00000064657A69;
      }

      if (*(v51 + 16))
      {
        v54 = sub_1D99ED894(v53, v52);
        v56 = v55;

        if (v56)
        {
          v57 = *(*(v51 + 56) + 4 * v54);

          v58 = v25[3];
          result = sub_1D99C7CC4(v25, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
          if (v57 <= v58)
          {
LABEL_83:

            return 1;
          }

          goto LABEL_12;
        }
      }

      else
      {
      }

      result = sub_1D99C7CC4(v25, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
LABEL_12:
      ++v45;
      v39 = v131;
      v42 = v130;
    }

    while (v132 != v45);
  }

  v59 = v117;
  sub_1D99AB100(v125 + *(v110 + 24), v117, &qword_1ECB512C8);
  v60 = *(v112 + 48);
  v61 = v113;
  if (v60(v59, 1, v113) == 1)
  {
    v62 = v121;
    *v121 = 0;
    *(v62 + 1) = 0xE000000000000000;
    *(v62 + 2) = MEMORY[0x1E69E7CC0];
    sub_1D9C7D3BC();
    v63 = *(v61 + 28);
    v64 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
    (*(*(v64 - 8) + 56))(&v62[v63], 1, 1, v64);
    v65 = v60(v59, 1, v61);
    v66 = v120;
    if (v65 != 1)
    {
      sub_1D99A6AE0(v59, &qword_1ECB512C8);
    }
  }

  else
  {
    v62 = v121;
    sub_1D99C8B08(v59, v121, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
    v66 = v120;
  }

  v67 = *(v62 + 2);

  result = sub_1D99C7CC4(v62, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  v68 = *(v67 + 16);
  if (!v68)
  {
LABEL_81:

    return 0;
  }

  v69 = 0;
  v113 = v67 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
  v132 = (v124 + 48);
  v121 = (v111 + 48);
  v70 = v119;
  v71 = v118;
  v112 = v67;
  v110 = v68;
  while (1)
  {
    if (v69 >= *(v67 + 16))
    {
      goto LABEL_86;
    }

    v72 = *(v116 + 72);
    v117 = v69;
    v73 = v115;
    sub_1D99C7D24(v113 + v72 * v69, v115, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);
    v74 = *v73;

    sub_1D99C7CC4(v73, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);
    v128 = *(v74 + 16);
    if (v128)
    {
      break;
    }

LABEL_54:
    v69 = v117 + 1;
    if (v117 + 1 == v68)
    {
      goto LABEL_81;
    }
  }

  v75 = *(v114 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  v125 = v74 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
  v126 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__parseCachingConfig;
  v127 = v75;
  swift_beginAccess();
  v76 = 0;
  v77 = v132;
  result = v74;
  v124 = v74;
  while (v76 < *(result + 16))
  {
    sub_1D99C7D24(v125 + *(v129 + 72) * v76, v134, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
    sub_1D99AB100(v127 + v126, v42, &qword_1ECB512D0);
    v78 = *v77;
    if ((*v77)(v42, 1, v39) == 1)
    {
      v79 = v123;
      v80 = MEMORY[0x1E69E7CC8];
      *v123 = MEMORY[0x1E69E7CC8];
      *(v79 + 1) = v80;
      *(v79 + 2) = v80;
      sub_1D9C7D3BC();
      v81 = *(v39 + 32);
      v82 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig(0);
      (*(*(v82 - 8) + 56))(&v79[v81], 1, 1, v82);
      v83 = v78(v42, 1, v39);
      v84 = MEMORY[0x1E69E7CC0];
      v85 = v121;
      if (v83 != 1)
      {
        sub_1D99A6AE0(v42, &qword_1ECB512D0);
      }
    }

    else
    {
      v79 = v123;
      sub_1D99C8B08(v42, v123, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
      v84 = MEMORY[0x1E69E7CC0];
      v85 = v121;
    }

    v86 = *v79;

    sub_1D99C7CC4(v79, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
    sub_1D99AB100(v134 + *(v122 + 32), v70, &qword_1ECB51240);
    v87 = *v85;
    v88 = (*v85)(v70, 1, v71);
    v133 = v86;
    if (v88 == 1)
    {
      *v66 = v84;
      v66[1] = 0;
      v66[2] = 0xE000000000000000;
      sub_1D9C7D3BC();
      if (v87(v70, 1, v71) != 1)
      {
        sub_1D99A6AE0(v70, &qword_1ECB51240);
      }
    }

    else
    {
      sub_1D99C8B08(v70, v66, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
    }

    v89 = *v66;
    v90 = *(*v66 + 16);
    if (v90)
    {
      v138 = v84;
      sub_1D99FE164(0, v90, 0);
      v84 = v138;
      v91 = (v89 + 32);
      do
      {
        v92 = *v91++;
        v135 = v92;
        v136 = 81;
        v137 = 0xE100000000000000;
        v93 = sub_1D9C7E7AC();
        MEMORY[0x1DA73DF90](v93);

        v95 = v136;
        v94 = v137;
        v138 = v84;
        v97 = *(v84 + 16);
        v96 = *(v84 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_1D99FE164((v96 > 1), v97 + 1, 1);
          v84 = v138;
        }

        *(v84 + 16) = v97 + 1;
        v98 = v84 + 16 * v97;
        *(v98 + 32) = v95;
        *(v98 + 40) = v94;
        --v90;
      }

      while (v90);
      v70 = v119;
      v71 = v118;
      v66 = v120;
    }

    v136 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51040);
    sub_1D99C7C60(&qword_1EDD2C4B0, &qword_1ECB51040);
    v99 = sub_1D9C7DC0C();
    v101 = v100;

    sub_1D99C7CC4(v66, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
    v102 = v133;
    if (!*(v133 + 16))
    {

LABEL_59:

      sub_1D99C7CC4(v134, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
      v77 = v132;
      goto LABEL_60;
    }

    v103 = sub_1D99ED894(v99, v101);
    v105 = v104;

    if ((v105 & 1) == 0)
    {
      goto LABEL_59;
    }

    v106 = *(*(v102 + 56) + 4 * v103);

    v107 = *(v134 + 4);
    sub_1D99C7CC4(v134, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
    v77 = v132;
    if (v106 <= v107)
    {

      goto LABEL_83;
    }

LABEL_60:
    ++v76;
    v42 = v130;
    v39 = v131;
    result = v124;
    if (v76 == v128)
    {

      v67 = v112;
      v68 = v110;
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1D99C3CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v64 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v53 - v6;
  v7 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v53 - v10;
  v12 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v55 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512C8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v53 - v15;
  v17 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  v63 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  v24 = v63[6];
  v56 = a2;
  sub_1D99AB100(a2 + v24, v16, &qword_1ECB512C8);
  v25 = *(v18 + 48);
  v26 = v25(v16, 1, v17);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26 == 1)
  {
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    v20[2] = v27;
    sub_1D9C7D3BC();
    v28 = v11;
    v29 = *(v17 + 28);
    v30 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
    v31 = v20 + v29;
    v11 = v28;
    (*(*(v30 - 8) + 56))(v31, 1, 1, v30);
    if (v25(v16, 1, v17) != 1)
    {
      sub_1D99A6AE0(v16, &qword_1ECB512C8);
    }
  }

  else
  {
    sub_1D99C8B08(v16, v20, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  }

  sub_1D99C0DD8(v53, v54, v23);
  sub_1D99C7CC4(v20, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  v32 = v63;
  v33 = v63[6];
  v34 = v64;
  sub_1D99A6AE0(v64 + v33, &qword_1ECB512C8);
  sub_1D99C8B08(v23, v34 + v33, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  (*(v18 + 56))(v34 + v33, 0, 1, v17);
  v35 = v56;
  sub_1D99AB100(v56 + v32[5], v11, &qword_1ECB512C0);
  v36 = v62;
  v37 = *(v61 + 48);
  if (v37(v11, 1, v62) == 1)
  {
    v38 = v11;
    v39 = v55;
    *v55 = 0;
    v39[1] = 0xE000000000000000;
    v39[2] = MEMORY[0x1E69E7CC0];
    sub_1D9C7D3BC();
    v40 = v37(v38, 1, v36);
    v42 = v59;
    v41 = v60;
    v44 = v57;
    v43 = v58;
    if (v40 != 1)
    {
      sub_1D99A6AE0(v38, &qword_1ECB512C0);
    }
  }

  else
  {
    v45 = v11;
    v39 = v55;
    sub_1D99C8B08(v45, v55, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
    v42 = v59;
    v41 = v60;
    v44 = v57;
    v43 = v58;
  }

  v46 = v63;
  v47 = v63[5];
  v48 = v64;
  sub_1D99A6AE0(v64 + v47, &qword_1ECB512C0);
  sub_1D99C8B08(v39, v48 + v47, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
  (*(v61 + 56))(v48 + v47, 0, 1, v62);
  sub_1D99AB100(v35 + v46[7], v44, &qword_1ECB51248);
  v49 = *(v42 + 48);
  if (v49(v44, 1, v41) == 1)
  {
    *v43 = 0u;
    v43[1] = 0u;
    sub_1D9C7D3BC();
    if (v49(v44, 1, v41) != 1)
    {
      sub_1D99A6AE0(v44, &qword_1ECB51248);
    }
  }

  else
  {
    sub_1D99C8B08(v44, v43, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  }

  v50 = v63[7];
  v51 = v64;
  sub_1D99A6AE0(v64 + v50, &qword_1ECB51248);
  sub_1D99C8B08(v43, v51 + v50, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  return (*(v42 + 56))(v51 + v50, 0, 1, v41);
}

BOOL sub_1D99C4384()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  sub_1D99AB100(v0 + v10[6], v9, &qword_1ECB512C8);
  v11 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  v12 = (*(*(v11 - 8) + 48))(v9, 1, v11);
  sub_1D99A6AE0(v9, &qword_1ECB512C8);
  if (v12 == 1)
  {
    return 0;
  }

  sub_1D99AB100(v0 + v10[5], v6, &qword_1ECB512C0);
  v13 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  v14 = (*(*(v13 - 8) + 48))(v6, 1, v13);
  sub_1D99A6AE0(v6, &qword_1ECB512C0);
  if (v14 == 1)
  {
    return 0;
  }

  sub_1D99AB100(v0 + v10[7], v3, &qword_1ECB51248);
  v16 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v17 = (*(*(v16 - 8) + 48))(v3, 1, v16) != 1;
  sub_1D99A6AE0(v3, &qword_1ECB51248);
  return v17;
}

_DWORD *sub_1D99C462C(_DWORD *result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    v2 = result;
    *result = a2;
    MEMORY[0x1EEE9AC00](result);
    v6[2] = v3;
    v5 = sub_1D9BE7F90(sub_1D99C8B70, v6, v4);

    *(v2 + 1) = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D99C46D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v63 = a2;
  v4 = sub_1D9C7D8DC();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v59 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512B8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v59 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v59 - v18;
  v64 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v20 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v65 = &v59 - v23;
  v25 = *a1;
  v24 = *(a1 + 8);
  v26 = *(a1 + 16);
  v27 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig(0);
  sub_1D99AB100(v63 + *(v27 + 24), v12, &qword_1ECB512B8);
  v28 = *(v14 + 48);
  if (v28(v12, 1, v13) == 1)
  {
    v29 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
    (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
    sub_1D9C7D3BC();
    if (v28(v12, 1, v13) != 1)
    {
      sub_1D99A6AE0(v12, &qword_1ECB512B8);
    }
  }

  else
  {
    sub_1D99C8B08(v12, v16, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
  }

  v30 = v25;
  sub_1D9A5A698(v25, v24, v16, v19);
  sub_1D99C7CC4(v16, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
  if ((*(v20 + 48))(v19, 1, v64) == 1)
  {
    sub_1D99A6AE0(v19, &qword_1ECB51240);
    v31 = v61;
    static Logger.argos.getter(v61);

    v32 = sub_1D9C7D8BC();
    v33 = sub_1D9C7E09C();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v66;
    if (v34)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v69 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1D9A0E224(v30, v24, &v69);
      _os_log_impl(&dword_1D9962000, v32, v33, "Failed to encode label %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x1DA7405F0](v37, -1, -1);
      MEMORY[0x1DA7405F0](v36, -1, -1);
    }

    (*(v35 + 1))(v31, v67);
    v38 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0);
    return (*(*(v38 - 8) + 56))(v68, 1, 1, v38);
  }

  else
  {
    v40 = v65;
    sub_1D99C8B08(v19, v65, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
    v41 = v59;
    static Logger.argos.getter(v59);
    v42 = v62;
    sub_1D9A3E0E0(v62);
    v43 = v67;
    v44 = *(v66 + 1);
    v44(v41, v67);
    v45 = v60;
    sub_1D99C7D24(v40, v60, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
    v46 = sub_1D9C7D8BC();
    v47 = sub_1D9C7E09C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v66 = v44;
      v49 = v48;
      v50 = v45;
      v51 = swift_slowAlloc();
      v69 = v51;
      *v49 = 136315138;
      sub_1D99C8BAC(&qword_1EDD2D860, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      v52 = sub_1D9C7E7EC();
      v54 = v53;
      sub_1D99C7CC4(v50, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      v55 = sub_1D9A0E224(v52, v54, &v69);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_1D9962000, v46, v47, "Writing %s to parseCache", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x1DA7405F0](v51, -1, -1);
      MEMORY[0x1DA7405F0](v49, -1, -1);

      v66(v62, v43);
    }

    else
    {

      sub_1D99C7CC4(v45, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      v44(v42, v43);
    }

    v56 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0);
    MEMORY[0x1EEE9AC00](v56);
    v57 = v65;
    *(&v59 - 2) = v65;
    *(&v59 - 2) = v26;
    sub_1D99C8BAC(&qword_1EDD2AB10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);
    v58 = v68;
    sub_1D9C7D6BC();
    (*(*(v56 - 8) + 56))(v58, 0, 1, v56);
    return sub_1D99C7CC4(v57, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  }
}

uint64_t sub_1D99C4F3C(float *a1, uint64_t a2, float a3)
{
  v6 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99C7D24(a2, v9, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  v10 = *(type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0) + 24);
  sub_1D99A6AE0(a1 + v10, &qword_1ECB51240);
  sub_1D99C8B08(v9, a1 + v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  result = (*(v7 + 56))(a1 + v10, 0, 1, v6);
  *a1 = a3;
  return result;
}

uint64_t sub_1D99C5088@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v84 = a3;
  v81 = a2;
  v86 = a1;
  v3 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0);
  MEMORY[0x1EEE9AC00](v3);
  v77 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D9C7D8DC();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v78 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v80 = v73 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v79 = v73 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512B8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v73 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v82 = v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v73 - v20;
  v22 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  MEMORY[0x1EEE9AC00](v22);
  v74 = (v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v26 = (v73 - v25);
  v76 = v3;
  v27 = *(v3 + 24);
  v29 = v28;
  v31 = v30;
  sub_1D99AB100(v86 + v27, v21, &qword_1ECB51240);
  v32 = *(v31 + 48);
  v33 = v32(v21, 1, v29);
  v73[1] = v31 + 48;
  if (v33 == 1)
  {
    *v26 = MEMORY[0x1E69E7CC0];
    v26[1] = 0;
    v26[2] = 0xE000000000000000;
    sub_1D9C7D3BC();
    if (v32(v21, 1, v29) != 1)
    {
      sub_1D99A6AE0(v21, &qword_1ECB51240);
    }
  }

  else
  {
    sub_1D99C8B08(v21, v26, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  }

  v75 = v29;
  v34 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig(0);
  sub_1D99AB100(v81 + *(v34 + 24), v12, &qword_1ECB512B8);
  v35 = *(v14 + 48);
  if (v35(v12, 1, v13) == 1)
  {
    v36 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
    (*(*(v36 - 8) + 56))(v16, 1, 1, v36);
    sub_1D9C7D3BC();
    v37 = v35(v12, 1, v13);
    v38 = v85;
    v39 = v82;
    v40 = v83;
    if (v37 != 1)
    {
      sub_1D99A6AE0(v12, &qword_1ECB512B8);
    }
  }

  else
  {
    sub_1D99C8B08(v12, v16, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
    v38 = v85;
    v39 = v82;
    v40 = v83;
  }

  v41 = sub_1D9A5AB18(v26, v16);
  v43 = v42;
  sub_1D99C7CC4(v16, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
  sub_1D99C7CC4(v26, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  if (v43)
  {
    v44 = v79;
    static Logger.argos.getter(v79);
    v45 = v80;
    sub_1D9A3E0E0(v80);
    v46 = *(v40 + 8);
    v46(v44, v38);

    v47 = v38;
    v48 = sub_1D9C7D8BC();
    v49 = sub_1D9C7E09C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v87 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_1D9A0E224(v41, v43, &v87);
      _os_log_impl(&dword_1D9962000, v48, v49, "Reading %s from parseCache", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x1DA7405F0](v51, -1, -1);
      MEMORY[0x1DA7405F0](v50, -1, -1);

      v52 = v45;
      v53 = v85;
    }

    else
    {

      v52 = v45;
      v53 = v47;
    }

    result = (v46)(v52, v53);
    v65 = *v86;
    v66 = v84;
    *v84 = v41;
    v66[1] = v43;
    *(v66 + 4) = v65;
  }

  else
  {
    v54 = v78;
    static Logger.argos.getter(v78);
    v55 = v77;
    sub_1D99C7D24(v86, v77, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);
    v56 = sub_1D9C7D8BC();
    v57 = sub_1D9C7E09C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = v55;
      v59 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87 = v86;
      *v59 = 136315138;
      sub_1D99AB100(v58 + *(v76 + 24), v39, &qword_1ECB51240);
      v60 = v75;
      if (v32(v39, 1, v75) == 1)
      {
        v61 = v74;
        *v74 = MEMORY[0x1E69E7CC0];
        v61[1] = 0;
        v61[2] = 0xE000000000000000;
        sub_1D9C7D3BC();
        v62 = v32(v39, 1, v60);
        v63 = v61;
        if (v62 != 1)
        {
          sub_1D99A6AE0(v39, &qword_1ECB51240);
        }
      }

      else
      {
        v63 = v74;
        sub_1D99C8B08(v39, v74, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      }

      sub_1D99C8BAC(&qword_1EDD2D860, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      v67 = sub_1D9C7E7EC();
      v69 = v68;
      sub_1D99C7CC4(v63, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
      sub_1D99C7CC4(v77, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);
      v70 = sub_1D9A0E224(v67, v69, &v87);

      *(v59 + 4) = v70;
      _os_log_impl(&dword_1D9962000, v56, v57, "Failed to encode label %s", v59, 0xCu);
      v71 = v86;
      __swift_destroy_boxed_opaque_existential_0Tm(v86);
      MEMORY[0x1DA7405F0](v71, -1, -1);
      MEMORY[0x1DA7405F0](v59, -1, -1);

      result = (*(v40 + 8))(v78, v85);
    }

    else
    {

      sub_1D99C7CC4(v55, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);
      result = (*(v40 + 8))(v54, v38);
    }

    v72 = v84;
    *v84 = 0;
    v72[1] = 0;
    *(v72 + 4) = 0;
  }

  return result;
}

uint64_t sub_1D99C59D4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D99E91EC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D99C5AFC(v5);
  *a1 = v2;
  return result;
}

float sub_1D99C5A40(uint64_t a1)
{
  result = *(v1 + 32);
  v3 = *(v1 + 40);
  *(a1 + 12) = result;
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

__n128 sub_1D99C5A60(uint64_t a1)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void *sub_1D99C5A88(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1D99C5AFC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D9C7E79C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51258);
        v5 = sub_1D9C7DF5C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D99C5CEC(v7, v8, a1, v4);
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
    return sub_1D99C5C04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D99C5C04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 + 24);
      v11 = result == *v10 && *(v10 + 32) == *(v10 + 8);
      if (v11 || (result = sub_1D9C7E7DC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v13 = *(v10 + 24);
      v12 = *(v10 + 32);
      v14 = *(v10 + 40);
      v15 = *(v10 + 16);
      *(v10 + 24) = *v10;
      *(v10 + 40) = v15;
      *v10 = v13;
      *(v10 + 8) = v12;
      *(v10 + 16) = v14;
      v10 -= 24;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}