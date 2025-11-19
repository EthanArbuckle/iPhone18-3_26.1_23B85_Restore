uint64_t sub_1D21FD6F0(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = type metadata accessor for VUStreamingGallery.Recognition(0);
  v118 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v113 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v121 = &v107 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v122 = &v107 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v107 - v17;
  v120 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_1D21C88C8(a4);
    }

    v124 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v120)
      {
        v103 = *(result + 16 * a4);
        v104 = result;
        v105 = *(result + 16 * (a4 - 1) + 40);
        sub_1D21FEBDC(*v120 + *(v118 + 72) * v103, *v120 + *(v118 + 72) * *(result + 16 * (a4 - 1) + 32), *v120 + *(v118 + 72) * v105, v5);
        if (v6)
        {
        }

        if (v105 < v103)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1D21C88C8(v104);
        }

        if (a4 - 2 >= *(v104 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v104[16 * a4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v124 = v104;
        sub_1D21C883C(a4 - 1);
        result = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v109 = a4;
  v123 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v114 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v118 + 72);
      v5 = *v120 + v24 * v23;
      v117 = *v120;
      v25 = v117;
      sub_1D220C5D4(v117 + v24 * v23, v18, type metadata accessor for VUStreamingGallery.Recognition);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v122;
      sub_1D220C5D4(v26, v122, type metadata accessor for VUStreamingGallery.Recognition);
      v29 = *(v9 + 20);
      v30 = *&v18[v29];
      v31 = *(v28 + v29);
      sub_1D220C574(v28, type metadata accessor for VUStreamingGallery.Recognition);
      result = sub_1D220C574(v18, type metadata accessor for VUStreamingGallery.Recognition);
      v108 = v27;
      v32 = v27 + 2;
      v119 = v24;
      v33 = v117 + v24 * (v27 + 2);
      while (v19 != v32)
      {
        sub_1D220C5D4(v33, v18, type metadata accessor for VUStreamingGallery.Recognition);
        v34 = v122;
        sub_1D220C5D4(v5, v122, type metadata accessor for VUStreamingGallery.Recognition);
        v35 = *(v123 + 20);
        v36 = *&v18[v35];
        v37 = *(v34 + v35);
        sub_1D220C574(v34, type metadata accessor for VUStreamingGallery.Recognition);
        result = sub_1D220C574(v18, type metadata accessor for VUStreamingGallery.Recognition);
        ++v32;
        v33 += v119;
        v5 += v119;
        if (v31 < v30 == v37 >= v36)
        {
          v19 = v32 - 1;
          break;
        }
      }

      v22 = v108;
      a4 = v109;
      v9 = v123;
      if (v31 < v30)
      {
        if (v19 < v108)
        {
          goto LABEL_126;
        }

        if (v108 < v19)
        {
          v107 = v6;
          v38 = v119 * (v19 - 1);
          v39 = v19 * v119;
          v40 = v19;
          v41 = v19;
          v42 = v108;
          v43 = v108 * v119;
          do
          {
            if (v42 != --v41)
            {
              v44 = *v120;
              if (!*v120)
              {
                goto LABEL_132;
              }

              v5 = v44 + v43;
              sub_1D220C50C(v44 + v43, v113, type metadata accessor for VUStreamingGallery.Recognition);
              if (v43 < v38 || v5 >= v44 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D220C50C(v113, v44 + v38, type metadata accessor for VUStreamingGallery.Recognition);
            }

            ++v42;
            v38 -= v119;
            v39 -= v119;
            v43 += v119;
          }

          while (v42 < v41);
          v6 = v107;
          v22 = v108;
          a4 = v109;
          v9 = v123;
          v19 = v40;
        }
      }
    }

    v45 = v120[1];
    if (v19 < v45)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v45)
        {
          v46 = v120[1];
        }

        else
        {
          v46 = v22 + a4;
        }

        if (v46 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v46)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v114;
    }

    else
    {
      result = sub_1D2195E30(0, *(v114 + 2) + 1, 1, v114);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v47 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v47 >> 1)
    {
      result = sub_1D2195E30((v47 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v48 = &v21[16 * a4];
    *(v48 + 4) = v22;
    *(v48 + 5) = v20;
    v49 = *v110;
    if (!*v110)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v50 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v51 = *(v21 + 4);
          v52 = *(v21 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_52:
          if (v54)
          {
            goto LABEL_113;
          }

          v67 = &v21[16 * v5];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_116;
          }

          v73 = &v21[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_120;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v77 = &v21[16 * v5];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_66:
        if (v72)
        {
          goto LABEL_115;
        }

        v80 = &v21[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_118;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v50 - 1;
        if (v50 - 1 >= v5)
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

        v88 = v21;
        v89 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v50 + 40];
        sub_1D21FEBDC(*v120 + *(v118 + 72) * v89, *v120 + *(v118 + 72) * *&v21[16 * v50 + 32], *v120 + *(v118 + 72) * v5, v49);
        if (v6)
        {
        }

        if (v5 < v89)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v88;
        }

        else
        {
          v90 = sub_1D21C88C8(v88);
        }

        v9 = v123;
        if (a4 >= *(v90 + 2))
        {
          goto LABEL_110;
        }

        v91 = &v90[16 * a4];
        *(v91 + 4) = v89;
        *(v91 + 5) = v5;
        v124 = v90;
        result = sub_1D21C883C(v50);
        v21 = v124;
        v5 = *(v124 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v21[16 * v5 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_111;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_112;
      }

      v62 = &v21[16 * v5];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_114;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_117;
      }

      if (v66 >= v58)
      {
        v84 = &v21[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_121;
        }

        if (v53 < v87)
        {
          v50 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v120[1];
    a4 = v109;
    if (v20 >= v19)
    {
      goto LABEL_96;
    }
  }

  v107 = v6;
  v108 = v22;
  a4 = *v120;
  v92 = *(v118 + 72);
  v93 = *v120 + v92 * (v19 - 1);
  v94 = -v92;
  v95 = v22 - v19;
  v111 = v92;
  v112 = v46;
  v5 = a4 + v19 * v92;
LABEL_86:
  v119 = v19;
  v115 = v5;
  v116 = v95;
  v117 = v93;
  v96 = v123;
  while (1)
  {
    sub_1D220C5D4(v5, v18, type metadata accessor for VUStreamingGallery.Recognition);
    v97 = v122;
    sub_1D220C5D4(v93, v122, type metadata accessor for VUStreamingGallery.Recognition);
    v98 = *(v96 + 20);
    v99 = *&v18[v98];
    v100 = *(v97 + v98);
    sub_1D220C574(v97, type metadata accessor for VUStreamingGallery.Recognition);
    result = sub_1D220C574(v18, type metadata accessor for VUStreamingGallery.Recognition);
    if (v100 >= v99)
    {
LABEL_85:
      v19 = v119 + 1;
      v20 = v112;
      v93 = v117 + v111;
      v95 = v116 - 1;
      v5 = v115 + v111;
      if (v119 + 1 != v112)
      {
        goto LABEL_86;
      }

      v6 = v107;
      v22 = v108;
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

    v101 = v121;
    sub_1D220C50C(v5, v121, type metadata accessor for VUStreamingGallery.Recognition);
    v96 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D220C50C(v101, v93, type metadata accessor for VUStreamingGallery.Recognition);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
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
  return result;
}

uint64_t sub_1D21FE018(uint64_t __dst, uint64_t *__src, uint64_t *a3, char *a4, uint64_t *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v11 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v11);
    }

    v15 = &v5[v11];
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
LABEL_41:
      v36 = v15 - v5;
      v37 = v15 - v5 + 7;
      if (v36 < 0)
      {
        v36 = v37;
      }

      if (v7 != v5 || v7 >= (v5 + (v36 & 0xFFFFFFFFFFFFFFF8)))
      {
        memmove(v7, v5, 8 * (v36 >> 3));
      }

      return 1;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_48;
      }

      v19 = v15;
      v20 = *v5;
      __dst = sub_1D2176758(*v7);
      if ((v21 & 1) == 0)
      {
        goto LABEL_49;
      }

      v22 = v7;
      v23 = *(v18 + 56);
      v24 = *(*(v23 + 8 * __dst) + 16);
      __dst = sub_1D2176758(v20);
      if ((v25 & 1) == 0)
      {
        goto LABEL_52;
      }

      if (*(*(v23 + 8 * __dst) + 16) < v24)
      {
        break;
      }

      v16 = v5;
      v17 = v8 == v5++;
      v7 = v22;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v15 = v19;
      if (v5 >= v19)
      {
        goto LABEL_10;
      }
    }

    v16 = v22;
    v7 = v22 + 1;
    if (v8 == v22)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v14);
  }

  v15 = &v5[v14];
  if (v12 < 8 || v7 <= v8)
  {
    goto LABEL_41;
  }

  v38 = v8;
  v39 = v5;
LABEL_27:
  v26 = v7 - 1;
  --v6;
  while (1)
  {
    v27 = *a5;
    if (!*(*a5 + 16))
    {
      break;
    }

    v28 = v15;
    v29 = v15 - 1;
    v30 = *v26;
    __dst = sub_1D2176758(*(v15 - 1));
    if ((v31 & 1) == 0)
    {
      goto LABEL_50;
    }

    v32 = v7;
    v33 = *(v27 + 56);
    v34 = *(*(v33 + 8 * __dst) + 16);
    __dst = sub_1D2176758(v30);
    if ((v35 & 1) == 0)
    {
      goto LABEL_51;
    }

    if (*(*(v33 + 8 * __dst) + 16) < v34)
    {
      v15 = v28;
      if (v6 + 1 != v32)
      {
        *v6 = *v26;
      }

      v5 = v39;
      if (v28 <= v39 || (v7 = v26, v26 <= v38))
      {
        v7 = v26;
        goto LABEL_41;
      }

      goto LABEL_27;
    }

    v7 = v32;
    if (v6 + 1 != v28)
    {
      *v6 = *v29;
    }

    --v6;
    v15 = v29;
    v5 = v39;
    if (v29 <= v39)
    {
      v15 = v29;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return __dst;
}

uint64_t sub_1D21FE2E0(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_1D21FE4E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  v60 = a5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490);
  v9 = MEMORY[0x1EEE9AC00](v61);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v52 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v62 = &v52 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v59 = &v52 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_81;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_82;
  }

  v22 = (a2 - a1) / v20;
  v65 = a1;
  v64 = a4;
  v58 = v20;
  if (v22 < v21 / v20)
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v23;
    v63 = a4 + v23;
    if (v23 < 1 || a2 >= a3)
    {
      goto LABEL_71;
    }

    while (1)
    {
      v26 = a3;
      v27 = v59;
      sub_1D2174DA8(a2, v59, &qword_1EC6D2490);
      sub_1D2174DA8(a4, v62, &qword_1EC6D2490);
      sub_1D2174DA8(v27, v14, &qword_1EC6D2490);

      v28 = *v60;
      if (!*(*v60 + 16))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      result = sub_1D2196E40(v14);
      if ((v29 & 1) == 0)
      {
        goto LABEL_73;
      }

      v30 = *(*(v28 + 56) + 8 * result);
      sub_1D2174DA8(v62, v11, &qword_1EC6D2490);

      v31 = *v60;
      if (!*(*v60 + 16))
      {
        goto LABEL_74;
      }

      result = sub_1D2196E40(v11);
      if ((v32 & 1) == 0)
      {
        goto LABEL_75;
      }

      v33 = *(*(v31 + 56) + 8 * result);
      sub_1D220C574(v11, type metadata accessor for VUStreamingGallery.Label);
      sub_1D220C574(v14, type metadata accessor for VUStreamingGallery.Label);
      sub_1D2176170(v62, &qword_1EC6D2490);
      sub_1D2176170(v59, &qword_1EC6D2490);
      if (v33 < v30)
      {
        v34 = v58;
        v35 = a2 + v58;
        if (a1 < a2 || a1 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_34:
          v34 = v58;
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_34;
        }

        a2 = v35;
        goto LABEL_39;
      }

      v34 = v58;
      v36 = a4 + v58;
      if (a1 < a4 || a1 >= v36)
      {
        break;
      }

      if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
LABEL_37:
        v34 = v58;
      }

      v64 = v36;
      a4 = v36;
LABEL_39:
      a1 += v34;
      v65 = a1;
      if (a4 < v57)
      {
        a3 = v26;
        if (a2 < v26)
        {
          continue;
        }
      }

      goto LABEL_71;
    }

    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_37;
  }

  v24 = v21 / v20 * v20;
  if (a4 < a2 || a2 + v24 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_43;
  }

  if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
LABEL_43:
    v20 = v58;
  }

  v57 = a2;
  v37 = a4 + v24;
  if (v24 < 1)
  {
    goto LABEL_70;
  }

  v38 = -v20;
  v39 = a4 + v24;
  v54 = a4;
  v55 = v11;
  v58 = -v20;
  while (2)
  {
    v53 = v37;
    v40 = v57;
    v56 = v57;
    v57 += v38;
    while (1)
    {
      if (v40 <= a1)
      {
        v65 = v40;
        v63 = v53;
        goto LABEL_71;
      }

      v41 = a3;
      v42 = v39 + v38;
      v43 = v59;
      sub_1D2174DA8(v39 + v38, v59, &qword_1EC6D2490);
      sub_1D2174DA8(v57, v62, &qword_1EC6D2490);
      sub_1D2174DA8(v43, v14, &qword_1EC6D2490);

      v44 = *v60;
      if (!*(*v60 + 16))
      {
        goto LABEL_76;
      }

      result = sub_1D2196E40(v14);
      if ((v45 & 1) == 0)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v46 = v14;
      v47 = *(*(v44 + 56) + 8 * result);
      v48 = v55;
      sub_1D2174DA8(v62, v55, &qword_1EC6D2490);

      v49 = *v60;
      if (!*(*v60 + 16))
      {
        goto LABEL_78;
      }

      result = sub_1D2196E40(v48);
      if ((v50 & 1) == 0)
      {
        goto LABEL_79;
      }

      v51 = *(*(v49 + 56) + 8 * result);
      sub_1D220C574(v48, type metadata accessor for VUStreamingGallery.Label);
      v14 = v46;
      sub_1D220C574(v46, type metadata accessor for VUStreamingGallery.Label);
      sub_1D2176170(v62, &qword_1EC6D2490);
      sub_1D2176170(v59, &qword_1EC6D2490);
      if (v51 < v47)
      {
        break;
      }

      v38 = v58;
      a3 = v41 + v58;
      v37 = v42;
      if (v41 < v39 || a3 >= v39)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v41 == v39)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v38 = v58;
LABEL_49:
      v39 = v42;
      v40 = v56;
      if (v42 <= v54)
      {
        v57 = v56;
        goto LABEL_70;
      }
    }

    v38 = v58;
    a3 = v41 + v58;
    if (v41 < v56 || a3 >= v56)
    {
      swift_arrayInitWithTakeFrontToBack();
LABEL_65:
      v38 = v58;
    }

    else if (v41 != v56)
    {
      swift_arrayInitWithTakeBackToFront();
      goto LABEL_65;
    }

    if (v39 > v54)
    {
      continue;
    }

    break;
  }

LABEL_70:
  v65 = v57;
  v63 = v37;
LABEL_71:
  sub_1D21FF0C0(&v65, &v64, &v63, &qword_1EC6D2490);
  return 1;
}

uint64_t sub_1D21FEBDC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = type metadata accessor for VUStreamingGallery.Recognition(0);
  v8 = MEMORY[0x1EEE9AC00](v47);
  v46 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v42 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
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

    v42[1] = v4;
    v25 = a4 + v18;
    if (v18 < 1)
    {
      v28 = a4 + v18;
    }

    else
    {
      v26 = -v14;
      v27 = a4 + v18;
      v28 = v25;
      v44 = v26;
      v45 = a4;
      do
      {
        v42[0] = v28;
        v29 = a2;
        v30 = a2 + v26;
        while (1)
        {
          v32 = v48;
          if (v29 <= a1)
          {
            v51 = v29;
            v49 = v42[0];
            goto LABEL_59;
          }

          v43 = v28;
          v48 += v26;
          v33 = v27 + v26;
          sub_1D220C5D4(v33, v12, type metadata accessor for VUStreamingGallery.Recognition);
          v34 = v30;
          v35 = v30;
          v36 = v12;
          v37 = v46;
          sub_1D220C5D4(v35, v46, type metadata accessor for VUStreamingGallery.Recognition);
          v38 = *(v47 + 20);
          v39 = *(v36 + v38);
          v40 = *(v37 + v38);
          v41 = v37;
          v12 = v36;
          sub_1D220C574(v41, type metadata accessor for VUStreamingGallery.Recognition);
          sub_1D220C574(v36, type metadata accessor for VUStreamingGallery.Recognition);
          if (v40 < v39)
          {
            break;
          }

          v28 = v33;
          if (v32 < v27 || v48 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v34;
          }

          else
          {
            v30 = v34;
            if (v32 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v31 = v33 > v45;
          v26 = v44;
          if (!v31)
          {
            a2 = v29;
            goto LABEL_58;
          }
        }

        if (v32 < v29 || v48 >= v29)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v43;
          v26 = v44;
        }

        else
        {
          v28 = v43;
          v26 = v44;
          a2 = v34;
          if (v32 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v45);
    }

LABEL_58:
    v51 = a2;
    v49 = v28;
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
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < v48)
    {
      do
      {
        sub_1D220C5D4(a2, v12, type metadata accessor for VUStreamingGallery.Recognition);
        v21 = v46;
        sub_1D220C5D4(a4, v46, type metadata accessor for VUStreamingGallery.Recognition);
        v22 = *(v47 + 20);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_1D220C574(v21, type metadata accessor for VUStreamingGallery.Recognition);
        sub_1D220C574(v12, type metadata accessor for VUStreamingGallery.Recognition);
        if (v24 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v14;
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
        v51 = a1;
      }

      while (a4 < v19 && a2 < v48);
    }
  }

LABEL_59:
  sub_1D21FF1A8(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_1D21FF0C0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
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

uint64_t sub_1D21FF1A8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for VUStreamingGallery.Recognition(0);
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

uint64_t sub_1D21FF28C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v34 = a2;
  v44 = a5;
  v37 = a4;
  v35 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C30);
  v6 = MEMORY[0x1EEE9AC00](v43);
  v42 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v34 - v8;
  v9 = type metadata accessor for VUStreamingGallery.Label(0);
  v40 = *(v9 - 8);
  result = MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v12 = 0;
  v45 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = v45;
    v25 = v39;
    sub_1D220C5D4(v45[6] + *(v40 + 72) * v23, v39, type metadata accessor for VUStreamingGallery.Label);
    v26 = v24[7];
    v38 = v23;
    v27 = *(v26 + 8 * v23);
    v28 = v41;
    sub_1D220C5D4(v25, v41, type metadata accessor for VUStreamingGallery.Label);
    v29 = v43;
    *(v28 + *(v43 + 48)) = v27;
    v30 = v28;
    v31 = v42;
    sub_1D21A6938(v30, v42, &qword_1EC6D2C30);
    v32 = *(v31 + *(v29 + 48));
    sub_1D220C574(v31, type metadata accessor for VUStreamingGallery.Label);
    result = sub_1D220C574(v25, type metadata accessor for VUStreamingGallery.Label);
    if ((v44 & 1) == 0 && v32 == v37)
    {
      *(v35 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_1D21FFEB4(v35, v34, v36, v45);
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_1D21FFEB4(v35, v34, v36, v45);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D21FF560(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *, uint64_t))
{
  v32 = a4;
  v27 = a2;
  v28 = a1;
  v5 = type metadata accessor for VUStreamingGallery.Label(0);
  v31 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = 0;
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v33 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v34 = (v14 - 1) & v14;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = v33[7];
    v36 = *(v33[6] + 8 * v19);
    v21 = v30;
    v22 = v19;
    sub_1D220C5D4(v20 + *(v31 + 72) * v19, v30, type metadata accessor for VUStreamingGallery.Label);
    v23 = v35;
    v24 = v32(&v36, v21);
    result = sub_1D220C574(v21, type metadata accessor for VUStreamingGallery.Label);
    v35 = v23;
    if (v23)
    {
      return result;
    }

    v14 = v34;
    if (v24)
    {
      *(v28 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_1D22000C8(v28, v27, v29, v33);
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_1D22000C8(v28, v27, v29, v33);
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D21FF780(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
LABEL_5:
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    v16 = *a4;
    if (*(*a4 + 16))
    {
      v17 = *(*(a3 + 48) + 8 * v15);
      result = sub_1D225131C();
      v18 = -1 << *(v16 + 32);
      v19 = result & ~v18;
      if ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (*(*(v16 + 48) + 8 * v19) != v17)
        {
          v19 = (v19 + 1) & v20;
          if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
          return sub_1D22005D0(v23, a2, v5, a3, &qword_1EC6D29E8);
        }
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1D22005D0(v23, a2, v5, a3, &qword_1EC6D29E8);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D21FF92C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1D21FF9D0(void *result, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v9;
    }

    v10 = sub_1D21FF28C(result, a2, a3, a4, a5 & 1);

    return v10;
  }

  return result;
}

unint64_t *sub_1D21FFA60(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
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

    v8 = sub_1D220DAC0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_1D21FFAFC(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D21FF560(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D21FFB8C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1D2206D0C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D21FFC1C(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D21FF780(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D21FFCB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2550);
  result = sub_1D225114C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = sub_1D225131C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D21FFEB4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for VUStreamingGallery.Label(0);
  v25 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24A0);
  result = sub_1D225114C();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_16:
    v21 = v18 | (v17 << 6);
    sub_1D220C5D4(a4[6] + *(v25 + 72) * v21, v13, type metadata accessor for VUStreamingGallery.Label);
    v22 = *(a4[7] + 8 * v21);
    sub_1D220C50C(v13, v11, type metadata accessor for VUStreamingGallery.Label);
    result = sub_1D21F882C(v11, v22, v15);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
      return v15;
    }
  }

  v19 = v17;
  while (1)
  {
    v17 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v20 = a1[v17];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D22000C8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for VUStreamingGallery.Label(0);
  v36 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v34 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2A28);
  result = sub_1D225114C();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v34 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[7];
    v22 = *(a4[6] + 8 * v20);
    v23 = v35;
    v24 = *(v36 + 72);
    sub_1D220C5D4(v21 + v24 * v20, v35, type metadata accessor for VUStreamingGallery.Label);
    sub_1D220C50C(v23, v37, type metadata accessor for VUStreamingGallery.Label);
    result = sub_1D225131C();
    v25 = -1 << *(v13 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v16 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v13 + 48) + 8 * v28) = v22;
    result = sub_1D220C50C(v37, *(v13 + 56) + v28 * v24, type metadata accessor for VUStreamingGallery.Label);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D22003CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D29B8);
  result = sub_1D225114C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = sub_1D225131C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D22005D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v5 = a4;
  v6 = a3;
  if (*(a4 + 16) == a3)
  {

    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = sub_1D225114C();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 64;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_16:
    v17 = v14 | (v12 << 6);
    v18 = *(*(v5 + 48) + 8 * v17);
    v19 = *(*(v5 + 56) + 8 * v17);
    result = sub_1D225131C();
    v20 = -1 << *(v10 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v13 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v10 + 48) + 8 * v23) = v18;
    *(*(v10 + 56) + 8 * v23) = v19;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      return v10;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      return v10;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void (*sub_1D22007CC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1D2176758(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1D21B7130();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1D21B1C6C(v16, a3 & 1);
    v11 = sub_1D2176758(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1D22512AC();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_1D2200914;
}

void (*sub_1D220092C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = *(type metadata accessor for VUStreamingGallery.Label(0) - 8);
  *(v10 + 24) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 32) = v12;
  v13 = *v4;
  v14 = sub_1D2196E40(a2);
  *(v10 + 48) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1D21B7988();
      v14 = v22;
      goto LABEL_14;
    }

    sub_1D21B2A84(v19, a3 & 1);
    v14 = sub_1D2196E40(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D22512AC();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 40) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v10 = v24;
  return sub_1D2200AD8;
}

void (*sub_1D2200AF0(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1D2176758(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1D21B8848();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1D21B40D8(v16, a3 & 1);
    v11 = sub_1D2176758(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1D22512AC();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_1D2200914;
}

void sub_1D2200C38(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 32);
  if (v4)
  {
    v6 = v3[3];
    v7 = *v3[2];
    if (v5)
    {
      *(*(v7 + 56) + 8 * v6) = v4;
    }

    else
    {
      a3(v6, v3[1], v4, v7);
    }
  }

  else if ((*a1)[4])
  {
    sub_1D2201080(v3[3], *v3[2]);
  }

  free(v3);
}

void (*sub_1D2200CD4(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = *(type metadata accessor for VUStreamingGallery.Label(0) - 8);
  *(v10 + 24) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 32) = v12;
  v13 = *v4;
  v14 = sub_1D2196E40(a2);
  *(v10 + 48) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1D21B8C9C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_1D21B4960(v19, a3 & 1);
    v14 = sub_1D2196E40(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D22512AC();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 40) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v10 = v24;
  return sub_1D2200AD8;
}

void sub_1D2200E80(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = **a1;
  if (v4)
  {
    v5 = *v3[2];
    v6 = v3[5];
    if ((*a1)[6])
    {
      *(*(v5 + 56) + 8 * v6) = v4;
    }

    else
    {
      v9 = v3[4];
      sub_1D220C5D4(v3[1], v9, type metadata accessor for VUStreamingGallery.Label);
      a3(v6, v9, v4, v5);
    }
  }

  else if ((*a1)[6])
  {
    v7 = v3[5];
    v8 = *v3[2];
    sub_1D220C574(*(v8 + 48) + *(v3[3] + 72) * v7, type metadata accessor for VUStreamingGallery.Label);
    sub_1D2201EC8(v7, v8);
  }

  v11 = v3[4];

  free(v11);

  free(v3);
}

uint64_t (*sub_1D2200F90(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D220F1DC;
}

uint64_t (*sub_1D2200FB8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D2200FE0;
}

uint64_t sub_1D2201018(char a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v5 = *(*v4 + 24);
  if (v5 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v5 < a2)
    {
      v6 = a2;
      v7 = 0;
      goto LABEL_9;
    }

    a4();
    return 0;
  }

  v6 = a2;
  v7 = 1;
LABEL_9:
  a3(v6, v7);
  return 1;
}

uint64_t sub_1D2201080(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D2250ECC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1D225131C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D22011F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D2250ECC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1D225131C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 4 * v3);
          v17 = (v15 + 4 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D2201360(int64_t a1, uint64_t a2)
{
  v40 = sub_1D225055C();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1D2250ECC();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1D220E134(&qword_1EDC87228, MEMORY[0x1E69695A8]);
      v23 = sub_1D22508CC();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 4 * a1);
          v30 = (v28 + 4 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1D2201680(int64_t a1, uint64_t a2)
{
  v40 = sub_1D225055C();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1D2250ECC();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1D220E134(&qword_1EDC87228, MEMORY[0x1E69695A8]);
      v23 = sub_1D22508CC();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1D22019A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D2250ECC() + 1) & ~v5;
    do
    {
      sub_1D225132C();

      sub_1D22509EC();
      v9 = sub_1D225137C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D2201B50(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D2250ECC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1D225131C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D2201D14(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1D2250ECC() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = sub_1D225131C();
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 8 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D2201EC8(int64_t a1, uint64_t a2)
{
  v44 = sub_1D225055C();
  v4 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VUStreamingGallery.Label(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v40 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v46 = (sub_1D2250ECC() + 1) & ~v15;
    v18 = *(v7 + 72);
    v40 = (v4 + 8);
    v41 = (v4 + 32);
    v19 = v18;
    v42 = v13;
    v45 = v18;
    do
    {
      v20 = v19 * v16;
      sub_1D220C5D4(*(a2 + 48) + v19 * v16, v13, type metadata accessor for VUStreamingGallery.Label);
      sub_1D225132C();
      sub_1D220C5D4(v13, v10, type metadata accessor for VUStreamingGallery.Label);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = v43;
        v22 = v10;
        v23 = a1;
        v24 = v10;
        v25 = a2;
        v26 = v17;
        v27 = v14;
        v28 = v6;
        v29 = v44;
        (*v41)(v43, v22, v44);
        sub_1D220E134(&qword_1EDC87228, MEMORY[0x1E69695A8]);
        sub_1D22508DC();
        v30 = v29;
        v6 = v28;
        v14 = v27;
        v17 = v26;
        a2 = v25;
        v10 = v24;
        a1 = v23;
        v13 = v42;
        (*v40)(v21, v30);
      }

      else
      {
        MEMORY[0x1D3898D70](*v10);
      }

      v31 = sub_1D225137C();
      result = sub_1D220C574(v13, type metadata accessor for VUStreamingGallery.Label);
      v32 = v31 & v17;
      if (a1 >= v46)
      {
        v19 = v45;
        if (v32 < v46)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v19 = v45;
        if (v32 >= v46)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v32)
      {
LABEL_13:
        v33 = *(a2 + 48);
        result = v33 + v19 * a1;
        if (v19 * a1 < v20 || result >= v33 + v20 + v19)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v19 * a1 != v20)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v34 = *(a2 + 56);
        v35 = (v34 + 8 * a1);
        v36 = (v34 + 8 * v16);
        if (a1 != v16 || v35 >= v36 + 1)
        {
          *v35 = *v36;
          a1 = v16;
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v37 = *(a2 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v39;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D22022EC(int64_t a1, uint64_t a2)
{
  v41 = sub_1D225055C();
  v4 = *(v41 - 8);
  result = MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_1D2250ECC();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v38 = (v12 + 1) & v11;
    v39 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v39(v40, *(v6 + 48) + v17 * v10, v13);
      sub_1D220E134(&qword_1EDC87228, MEMORY[0x1E69695A8]);
      v23 = sub_1D22508CC();
      result = (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v27 = *(v42 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 24 * a1;
          v30 = (v28 + 24 * v10);
          if (a1 != v10 || v29 >= v30 + 24)
          {
            v31 = *v30;
            *(v29 + 16) = *(v30 + 2);
            *v29 = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1D2202610(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D2250ECC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_1D225131C();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = v16 + 24 * v3;
          v18 = (v16 + 24 * v6);
          if (v3 != v6 || v17 >= v18 + 24)
          {
            v9 = *v18;
            *(v17 + 16) = *(v18 + 2);
            *v17 = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D220278C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D2250ECC() + 1) & ~v5;
    do
    {
      sub_1D225132C();

      sub_1D22509EC();
      v10 = sub_1D225137C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D220293C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D2195F8C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D2202A30(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D2195F78(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D2202B1C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1D2196098(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1D225055C();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1D2202C48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1D2195F78(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 8 * v15 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1D2202D5C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_1D2195F78(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = sub_1D21F8ABC(v38, &v3[8 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v13 = result;
  if (result)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v11 + 64) >> 6;
      if (v19 <= v16 + 1)
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = (v11 + 64) >> 6;
      }

      v21 = v20 - 1;
      do
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v22 >= v19)
        {
          v40 = v21;
          v41 = 0;
          goto LABEL_13;
        }

        v23 = *(v12 + 8 * v22);
        ++v16;
      }

      while (!v23);
      v17 = (v23 - 1) & v23;
      v18 = __clz(__rbit64(v23)) | (v22 << 6);
      v16 = v22;
      goto LABEL_27;
    }

    *(v3 + 2) = v16;
  }

  result = v38[0];
  if (v13 != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v12 = v38[1];
  v11 = v39;
  v16 = v40;
  if (!v41)
  {
    goto LABEL_19;
  }

  v17 = (v41 - 1) & v41;
  v18 = __clz(__rbit64(v41)) | (v40 << 6);
  v19 = (v39 + 64) >> 6;
LABEL_27:
  v24 = *(*(result + 48) + 8 * v18);
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v26)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v35 = v16;
  v36 = v19;
  v37 = result;
  v30 = v12;
  v31 = v3;
  v32 = v17;
  v33 = sub_1D2195F78((v25 > 1), v6 + 1, 1, v31);
  v17 = v32;
  v16 = v35;
  v19 = v36;
  v12 = v30;
  v3 = v33;
  result = v37;
  v26 = *(v3 + 3) >> 1;
  if (v6 >= v26)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v24;
    if (!v17)
    {
      break;
    }

LABEL_34:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(*(result + 48) + ((v16 << 9) | (8 * v27)));
    if (v6 == v26)
    {
      v6 = v26;
      goto LABEL_30;
    }
  }

  v28 = v16;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v29 >= v19)
    {
      break;
    }

    v17 = *(v12 + 8 * v29);
    ++v28;
    if (v17)
    {
      v16 = v29;
      goto LABEL_34;
    }
  }

  if (v19 <= v16 + 1)
  {
    v34 = v16 + 1;
  }

  else
  {
    v34 = v19;
  }

  v39 = v11;
  v40 = v34 - 1;
  v41 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_1D217CF78();
  *v1 = v3;
  return result;
}

void sub_1D2202FE4(void *a1, char a2, void *a3)
{
  v43 = a1[2];
  if (!v43)
  {
    goto LABEL_23;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_1D2176758(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D21B7130();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2560);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_1D21B1C6C(v13, a2 & 1);
  v17 = sub_1D2176758(v7);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_1D22512AC();
    __break(1u);
LABEL_29:
    sub_1D225101C();
    MEMORY[0x1D3898450](0xD00000000000001BLL, 0x80000001D2257420);
    sub_1D22510EC();
    MEMORY[0x1D3898450](39, 0xE100000000000000);
    sub_1D22510FC();
    __break(1u);
    return;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + 8 * v14) = v7;
  *(v21[7] + 8 * v14) = v6;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = a1 + 7;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 1);
      v27 = *v25;
      v29 = *a3;
      v30 = sub_1D2176758(v28);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];

      if (v37 < v34)
      {
        sub_1D21B1C6C(v34, 1);
        v38 = sub_1D2176758(v28);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v35 = v38;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v40[6] + 8 * v35) = v28;
      *(v40[7] + 8 * v35) = v27;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1D2203350(uint64_t result)
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
        result = sub_1D22048F4(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
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

uint64_t sub_1D2203448(uint64_t result)
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
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1D22049E4(v12, v13);

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

uint64_t sub_1D2203574(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v52 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v47 << 9) | (8 * v18)));
        v19 = sub_1D225131C();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v49 = v45;
    v50 = v47;
    v51 = v11;
    v48[0] = v46;
    v48[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, (v6 + 56), v14);
      v40 = sub_1D22042E4(v39, v4, v6, v5, v48);

      MEMORY[0x1D3899640](v39, -1, -1);
      v45 = v49;
      v47 = v50;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v4;
    v43 = &v41;
    MEMORY[0x1EEE9AC00](v22);
    v5 = &v41 - v23;
    memcpy(&v41 - v23, (v6 + 56), v14);
    v24 = *(v6 + 16);
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v47 << 9) | (8 * v29)));
      v30 = sub_1D225131C();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_1D21C9068(v5, v42, v44, v6);
LABEL_43:
    sub_1D217CF78();
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v6;
}

uint64_t sub_1D22039D0(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1D225132C();

    sub_1D22509EC();
    v23 = sub_1D225137C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1D225126C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1D21C9254(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1D225132C();

            sub_1D22509EC();
            v41 = sub_1D225137C();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1D225126C() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1D22044A0(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1D3899640](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_1D217CF78();
    return v5;
  }

  result = MEMORY[0x1D3899640](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D2203F40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v35[5] = *MEMORY[0x1E69E9840];
  if (*(a5 + 16))
  {
    v34 = a5;
    v31 = a1;
    v32 = a3;
    v35[0] = a1;
    v35[1] = a2;
    v35[2] = a3;
    v35[3] = a4;
    v10 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      return v34;
    }

    else
    {
      v12 = (v34 + 56);
      v30 = -1 << *(v34 + 32);
      v13 = ~v30;
      v14 = v32;
      v33 = a2;
      while (1)
      {
        if (v14 >= v10)
        {
          goto LABEL_32;
        }

        v5 = v14 + 1;
        v8 = *(a2 + 8 * v14);
        v15 = sub_1D225131C();
        v7 = v15 & v13;
        v9 = (v15 & v13) >> 6;
        v6 = 1 << (v15 & v13);
        if ((v6 & v12[v9]) != 0)
        {
          break;
        }

LABEL_6:
        v14 = v5;
        a2 = v33;
        if (v5 == v10)
        {
          return v34;
        }
      }

      while (*(*(v34 + 48) + 8 * v7) != v8)
      {
        v7 = (v7 + 1) & v13;
        v9 = v7 >> 6;
        v6 = 1 << v7;
        if (((1 << v7) & v12[v7 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v35[4] = v5;
      v16 = (63 - v30) >> 6;
      v8 = 8 * v16;
      v29 = v16;
      v13 = v34;
      if (v16 > 0x80)
      {
        goto LABEL_33;
      }

      for (i = swift_unknownObjectRetain(); ; i = )
      {
        v30 = &v28;
        MEMORY[0x1EEE9AC00](i);
        v7 = &v28 - v18;
        memcpy(&v28 - v18, v12, v8);
        v19 = *(v13 + 16);
        *(v7 + 8 * v9) &= ~v6;
        v8 = v19 - 1;
        if (v5 == v10)
        {
LABEL_15:
          v11 = sub_1D21C9068(v7, v29, v8, v34);
          goto LABEL_16;
        }

        v6 = ~(-1 << *(v13 + 32));
        v13 = v5;
        while (v5 >= v32 && v13 < v10)
        {
          v9 = *(v33 + 8 * v13);
          v21 = sub_1D225131C();
          v22 = v21 & v6;
          v23 = (v21 & v6) >> 6;
          v24 = 1 << (v21 & v6);
          if ((v24 & v12[v23]) != 0)
          {
            while (*(*(v34 + 48) + 8 * v22) != v9)
            {
              v22 = (v22 + 1) & v6;
              v23 = v22 >> 6;
              v24 = 1 << v22;
              if (((1 << v22) & v12[v22 >> 6]) == 0)
              {
                goto LABEL_19;
              }
            }

            v25 = *(v7 + 8 * v23);
            *(v7 + 8 * v23) = v25 & ~v24;
            if ((v25 & v24) != 0)
            {
              if (__OFSUB__(v8--, 1))
              {
                goto LABEL_31;
              }

              if (!v8)
              {

                v11 = MEMORY[0x1E69E7CD0];
                goto LABEL_16;
              }
            }
          }

LABEL_19:
          if (++v13 == v10)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:

        swift_unknownObjectRetain();
        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v27 = swift_slowAlloc();
      memcpy(v27, v12, v8);
      v11 = sub_1D22046D8(v27, v29, v13, v7, v35);

      MEMORY[0x1D3899640](v27, -1, -1);
LABEL_16:
      swift_unknownObjectRelease();
    }
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v11;
}

uint64_t sub_1D22042E4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = sub_1D225131C();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_1D21C9068(v8, a2, v10, a3);
}

uint64_t sub_1D22044A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1D21C9254(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1D225132C();

        sub_1D22509EC();
        v19 = sub_1D225137C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1D225126C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1D22046D8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v11 = a5[3];
  v10 = a5[4];
  if (v10 == v11 >> 1)
  {
LABEL_2:

    return sub_1D21C9068(v7, a2, v9, a3);
  }

  else
  {
    v13 = a3 + 56;
    while (1)
    {
      v14 = v11 >> 1;
      if (v10 < a5[2] || v10 >= v14)
      {
        break;
      }

      v16 = *(a5[1] + 8 * v10);
      a5[4] = v10 + 1;
      result = sub_1D225131C();
      v17 = -1 << *(a3 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v13 + 8 * (v18 >> 6))) != 0)
      {
        v21 = *(a3 + 48);
        if (*(v21 + 8 * v18) == v16)
        {
LABEL_15:
          v23 = v7[v19];
          v7[v19] = v23 & ~v20;
          if ((v23 & v20) != 0)
          {
            if (__OFSUB__(v9--, 1))
            {
              goto LABEL_19;
            }

            if (!v9)
            {
              return MEMORY[0x1E69E7CD0];
            }
          }
        }

        else
        {
          v22 = ~v17;
          while (1)
          {
            v18 = (v18 + 1) & v22;
            v19 = v18 >> 6;
            v20 = 1 << v18;
            if (((1 << v18) & *(v13 + 8 * (v18 >> 6))) == 0)
            {
              break;
            }

            if (*(v21 + 8 * v18) == v16)
            {
              goto LABEL_15;
            }
          }
        }
      }

      v11 = a5[3];
      v10 = a5[4];
      if (v10 == v11 >> 1)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D22048F4(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D225131C();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D219BB7C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1D2204B20(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1D22049E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D225132C();
  sub_1D22509EC();
  v6 = sub_1D225137C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D225126C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D219BEF4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1D2204CA4(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1D2204B20(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D2250ECC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1D225131C() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D2204CA4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D2250ECC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D225132C();

        sub_1D22509EC();
        v10 = sub_1D225137C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D2204E68(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D2250F4C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D2250F4C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D220F114(&qword_1EC6D2CC0, &qword_1EC6D2CB8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2CB8);
            v9 = sub_1D222D1E4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for VUIndexTag();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2204FF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1D220505C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2205110(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_1D225127C();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v7 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D22051D4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 48);
    v7 = type metadata accessor for VUStreamingGallery.Label(0);
    return sub_1D220C5D4(v6 + *(*(v7 - 8) + 72) * v4, a4, type metadata accessor for VUStreamingGallery.Label);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D2205284(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_1D225127C();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 8 * v6 + 8 * v7 != v9 + 8 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_1D21F8034(v4 - v14, v2, &qword_1EC6D24C0);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + 8 * v14), 8 * (v4 - v14));
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 8 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D220540C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v30 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v30)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v38 = v16;
  v18 = (v10 + 32);
  v19 = v10 + 32 + 8 * a2;
  v36 = v10;
  v37 = (v19 + 8 * a3);
  result = sub_1D22058D8(result);
  if (result)
  {
    v20 = result;
    v35 = a4;
    v21 = v4[2];
    v22 = (v4[1] + 8 * v21);
    v23 = &v22[8 * a2];
    if (v18 != v22 || v18 >= v23)
    {
      memmove(v18, v22, 8 * a2);
    }

    v35(v19, a3);
    v24 = &v23[8 * v38];
    if (v37 != v24 || v37 >= &v24[8 * v14])
    {
      memmove(v37, v24, 8 * v14);
    }

    *(v20 + 16) = 0;
  }

  else
  {
    v21 = v4[2];
    v26 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v26 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v27 = v4[1];
    memcpy(v18, (v27 + 8 * v21), 8 * a2);
    result = (a4)(&v18[8 * a2], a3);
    v28 = v26 + v38;
    if (__OFADD__(v26, v38))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v29 = v4[3] >> 1;
    v30 = __OFSUB__(v29, v28);
    v31 = v29 < v28;
    v32 = v29 - v28;
    if (v31)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v30)
    {
LABEL_45:
      __break(1u);
      return result;
    }

    memcpy(v37, (v27 + 8 * v28), 8 * v32);
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  result = v36;
  v33 = *(v36 + 16);
  v30 = __OFADD__(v21, v33);
  v34 = v21 + v33;
  if (v30)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v34 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v34 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v36;
  v4[1] = &v18[-8 * v21];
  v4[2] = v21;
  v4[3] = (2 * v34) | 1;
}

uint64_t sub_1D2205640(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_1D225127C();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_1D22056F8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_26:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_29;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1D225127C();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == v11 + 8 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 8 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 8 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_31:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_1D21F8034(v6, v25, &qword_1EC6D24C0);
}

uint64_t sub_1D22058D8(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 8 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1D225127C();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 8 * v7 != v9 + 8 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_1D225127C();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v15 = v8 - result - 25;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 3);
  v5 = v7 + (v15 >> 3);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    sub_1D220B098(v5, v4, 0);
    return v16;
  }

  return result;
}

uint64_t _s19VisualUnderstanding18VUStreamingGalleryC5LabelO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_1D225055C();
  v25 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = type metadata accessor for VUStreamingGallery.Label(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v25 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2460);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v25 - v17;
  v19 = *(v16 + 56);
  sub_1D220C5D4(a1, &v25 - v17, type metadata accessor for VUStreamingGallery.Label);
  sub_1D220C5D4(v26, &v18[v19], type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D220C5D4(v18, v14, type metadata accessor for VUStreamingGallery.Label);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v22 = *v14 == *&v18[v19];
      goto LABEL_6;
    }

LABEL_8:
    sub_1D2176170(v18, &qword_1EC6D2460);
    v22 = 0;
    return v22 & 1;
  }

  sub_1D220C5D4(v18, v12, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v25 + 8))(v12, v3);
    goto LABEL_8;
  }

  v20 = v25;
  v21 = *(v25 + 32);
  v21(v8, v12, v3);
  v21(v6, &v18[v19], v3);
  v22 = sub_1D225053C();
  v23 = *(v20 + 8);
  v23(v6, v3);
  v23(v8, v3);
LABEL_6:
  sub_1D220C574(v18, type metadata accessor for VUStreamingGallery.Label);
  return v22 & 1;
}

uint64_t sub_1D2205D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D225055C();
  v33 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  v9 = type metadata accessor for VUStreamingGallery.Label(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v30 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2460);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v30 - v17;
  v19 = *(v16 + 56);
  v31 = a1;
  sub_1D220C5D4(a1, &v30 - v17, type metadata accessor for VUStreamingGallery.Label);
  v32 = a2;
  sub_1D220C5D4(a2, &v18[v19], type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D220C5D4(v18, v12, type metadata accessor for VUStreamingGallery.Label);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v33;
      v21 = *(v33 + 32);
      v21(v8, v12, v4);
      v22 = v30;
      v21(v30, &v18[v19], v4);
      v23 = sub_1D225053C();
      v24 = *(v20 + 8);
      v24(v22, v4);
      v24(v8, v4);
      sub_1D220C574(v18, type metadata accessor for VUStreamingGallery.Label);
      if ((v23 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    (*(v33 + 8))(v12, v4);
LABEL_10:
    sub_1D2176170(v18, &qword_1EC6D2460);
    goto LABEL_11;
  }

  sub_1D220C5D4(v18, v14, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_10;
  }

  v25 = *v14;
  v26 = *&v18[v19];
  sub_1D220C574(v18, type metadata accessor for VUStreamingGallery.Label);
  if (v25 != v26)
  {
LABEL_11:
    v28 = 0;
    return v28 & 1;
  }

LABEL_7:
  v27 = type metadata accessor for VUStreamingGallery.RecognitionKey(0);
  if (*(v31 + *(v27 + 20)) != *(v32 + *(v27 + 20)))
  {
    goto LABEL_11;
  }

  v28 = *(v31 + *(v27 + 24)) ^ *(v32 + *(v27 + 24)) ^ 1;
  return v28 & 1;
}

uint64_t sub_1D220610C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 < v2)
    {
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_18;
      }

      v10 = *(v5 + 8 * v4++);
      v11 = *(*a2 + 16);
      v12 = (*a2 + 32);
      while (v11)
      {
        v13 = *v12++;
        --v11;
        if (v13 == v10)
        {
          goto LABEL_6;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D21AF7AC(0, *(v6 + 16) + 1, 1);
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        result = sub_1D21AF7AC((v7 > 1), v8 + 1, 1);
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + 8 * v8 + 32) = v10;
LABEL_6:
      if (v9 == v2)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D2206234(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = 0;
  v11 = a1 + 32;
  v27 = v2;
  v28 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v10; ; ++i)
    {
      if (i >= v9)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      v14 = *a2;
      if (*(*a2 + 16))
      {
        v15 = *(v11 + 8 * i);
        v16 = sub_1D2176758(v15);
        if (v17)
        {
          break;
        }
      }

      v13 = type metadata accessor for VUStreamingGallery.Label(0);
      (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
      result = sub_1D2176170(v8, &qword_1EC6D2C08);
      if (v10 == v9)
      {
        return v28;
      }
    }

    v18 = *(v14 + 56);
    v25 = v16;
    v26 = v18;
    v19 = type metadata accessor for VUStreamingGallery.Label(0);
    v20 = *(v19 - 8);
    sub_1D220C5D4(v26 + *(v20 + 72) * v25, v8, type metadata accessor for VUStreamingGallery.Label);
    (*(v20 + 56))(v8, 0, 1, v19);
    sub_1D2176170(v8, &qword_1EC6D2C08);
    v21 = v28;
    result = swift_isUniquelyReferenced_nonNull_native();
    v29 = v21;
    if ((result & 1) == 0)
    {
      result = sub_1D21AF7AC(0, *(v21 + 16) + 1, 1);
      v21 = v29;
    }

    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v28 = v23 + 1;
      result = sub_1D21AF7AC((v22 > 1), v23 + 1, 1);
      v24 = v28;
      v21 = v29;
    }

    *(v21 + 16) = v24;
    v28 = v21;
    *(v21 + 8 * v23 + 32) = v15;
  }

  while (v10 != v9);
  return v28;
}

uint64_t sub_1D22064E4(uint64_t a1, uint64_t a2)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D60);
  v4 = *(v23 - 8);
  result = MEMORY[0x1EEE9AC00](v23);
  v7 = &v21 - v6;
  v8 = 0;
  v9 = *(a1 + 16);
  v10 = a1 + 32;
  v22 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v9 == v8)
    {
      return v22;
    }

    if (v8 >= v9)
    {
      break;
    }

    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_15;
    }

    v12 = *(v10 + 8 * v8);
    if (*(a2 + 16))
    {
      v13 = sub_1D2176758(*(v10 + 8 * v8));
      if (v14)
      {
        sub_1D2174DA8(*(a2 + 56) + *(v4 + 72) * v13, v7, &unk_1EC6D2D60);
        v15 = v7[*(v23 + 48)];
        v16 = sub_1D225055C();
        result = (*(*(v16 - 8) + 8))(v7, v16);
        ++v8;
        if (!v15)
        {
          continue;
        }
      }
    }

    v17 = v22;
    result = swift_isUniquelyReferenced_nonNull_native();
    v24 = v17;
    if ((result & 1) == 0)
    {
      result = sub_1D21AF7AC(0, *(v17 + 16) + 1, 1);
      v17 = v24;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v22 = v19 + 1;
      result = sub_1D21AF7AC((v18 > 1), v19 + 1, 1);
      v20 = v22;
      v17 = v24;
    }

    *(v17 + 16) = v20;
    v22 = v17;
    *(v17 + 8 * v19 + 32) = v12;
    v8 = v11;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D22066FC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = result + 32;
  v6 = (a2 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  v15 = result + 32;
LABEL_3:
  while (2)
  {
    if (v4 >= v2)
    {
      __break(1u);
    }

    else
    {
      v8 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        v9 = *(v5 + 8 * v4++);
        v10 = *(a2 + 16);
        v11 = v6;
        while (v10)
        {
          v12 = *v11++;
          --v10;
          if (v12 == v9)
          {
            if (v8 != v2)
            {
              goto LABEL_3;
            }

            return v7;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D21AF7AC(0, *(v7 + 16) + 1, 1);
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_1D21AF7AC((v13 > 1), v14 + 1, 1);
        }

        *(v7 + 16) = v14 + 1;
        *(v7 + 8 * v14 + 32) = v9;
        v5 = v15;
        if (v8 != v2)
        {
          continue;
        }

        return v7;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2206838(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D3898620](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D2198024(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D22068AC(uint64_t a1)
{
  v2 = sub_1D225055C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D220E134(&qword_1EDC87228, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1D3898620](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1D2198104(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D2206A48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2398);
  v4 = sub_1D220F098();
  result = MEMORY[0x1D3898620](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v6 += 16;
      sub_1D2198C2C(v9, v7, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1D2206AD4(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D2250F4C())
  {
    v4 = type metadata accessor for VUWGalleryObservationIdentifier(0);
    v5 = sub_1D220E134(&qword_1EDC869A0, type metadata accessor for VUWGalleryObservationIdentifier);
    result = MEMORY[0x1D3898620](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3898A80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1D2198F8C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1D2250F4C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D2206C34(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D3898620](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D21983EC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1D2206D0C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    if (*(a4 + 16))
    {
      result = sub_1D2176758(*(*(a3 + 48) + 8 * v17));
      if (v18)
      {
        *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
          return sub_1D22003CC(v6, a2, v7, a3);
        }
      }
    }
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
      return sub_1D22003CC(v6, a2, v7, a3);
    }

    v16 = *(v9 + 8 * v8);
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

uint64_t sub_1D2206E3C(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](v9);
    bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
    v10 = sub_1D2206D0C(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);
    if (v2)
    {
      swift_willThrow();
      return swift_bridgeObjectRelease_n();
    }

    v12 = v10;
    swift_bridgeObjectRelease_n();
    return v12;
  }

  v13 = swift_slowAlloc();

  v12 = sub_1D21FFB8C(v13, v7, a1, a2);
  MEMORY[0x1D3899640](v13, -1, -1);
  result = swift_bridgeObjectRelease_n();
  if (!v2)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1D2206FEC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v30 = a2;
  v31 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
  MEMORY[0x1EEE9AC00](v34);
  v37 = (&v30 - v6);
  v7 = type metadata accessor for VUStreamingGallery.Label(0);
  v33 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0;
  v35 = a4;
  v36 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v32 = (a4 + 32);
LABEL_5:
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_12:
    v23 = v20 | (v12 << 6);
    v24 = *(v36[6] + 8 * v23);
    sub_1D220C5D4(v36[7] + *(v33 + 72) * v23, v10, type metadata accessor for VUStreamingGallery.Label);
    v25 = v37;
    *v37 = v24;
    sub_1D220C5D4(v10, v25 + *(v34 + 48), type metadata accessor for VUStreamingGallery.Label);
    v26 = *(v35 + 16);
    v27 = v32;
    do
    {
      if (!v26)
      {
        sub_1D2176170(v37, &qword_1EC6D2C20);
        result = sub_1D220C574(v10, type metadata accessor for VUStreamingGallery.Label);
        goto LABEL_5;
      }

      v28 = *v27++;
      --v26;
    }

    while (v28 != v24);
    sub_1D2176170(v37, &qword_1EC6D2C20);
    result = sub_1D220C574(v10, type metadata accessor for VUStreamingGallery.Label);
    *(v31 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    if (__OFADD__(v11++, 1))
    {
      __break(1u);
      return sub_1D22000C8(v31, v30, v11, v36);
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_1D22000C8(v31, v30, v11, v36);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D22072C0(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1D21FF92C(v12, v7, a1, a2, sub_1D2206FEC);
      MEMORY[0x1D3899640](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1D2206FEC((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1D2207494(float *__src, float *a2, float *a3, float *__dst, uint64_t a5)
{
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 4;
  v12 = a3 - a2;
  v13 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 4;
  if (v11 < v14)
  {
    v15 = 4 * v11;
    if (__dst != __src || &__src[v15] <= __dst)
    {
      memmove(__dst, __src, v15 * 4);
    }

    v16 = &v5[v15];
    result = swift_beginAccess();
    if (v9 < 16)
    {
LABEL_10:
      v7 = v8;
LABEL_47:
      v40 = (v16 - v5 + (v16 - v5 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
      if (v7 != v5 || v7 >= (v5 + v40))
      {
        memmove(v7, v5, v40);
      }

      return 1;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v20 = v7[2];
      v21 = v5[2];
      if (v20 == v21)
      {
        v22 = *(a5 + 32);
        if (!*(v22 + 16))
        {
          goto LABEL_52;
        }

        v23 = *v5;
        result = sub_1D2176758(*v7);
        if ((v24 & 1) == 0)
        {
          goto LABEL_53;
        }

        v25 = *(v22 + 56);
        v26 = *(v25 + 8 * result);
        result = sub_1D2176758(v23);
        if ((v27 & 1) == 0)
        {
          goto LABEL_56;
        }

        if (*(v25 + 8 * result) < v26)
        {
LABEL_22:
          v18 = v7;
          v19 = v8 == v7;
          v7 += 4;
          if (v19)
          {
            goto LABEL_13;
          }

LABEL_12:
          *v8 = *v18;
          goto LABEL_13;
        }
      }

      else if (v21 < v20)
      {
        goto LABEL_22;
      }

      v18 = v5;
      v19 = v8 == v5;
      v5 += 4;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 4;
      if (v5 >= v16)
      {
        goto LABEL_10;
      }
    }
  }

  v28 = 4 * v14;
  if (__dst != a2 || &a2[v28] <= __dst)
  {
    memmove(__dst, a2, 16 * v14);
  }

  v16 = &v5[v28];
  swift_beginAccess();
  if (v12 < 16 || v7 <= v8)
  {
    goto LABEL_47;
  }

LABEL_30:
  v41 = v7 - 4;
  v29 = v6;
  v30 = v16;
  while (1)
  {
    v31 = *(v30 - 16);
    v30 -= 16;
    result = v31;
    v32 = *(v30 + 8);
    v33 = *(v7 - 2);
    if (v32 != v33)
    {
      v6 = v29 - 4;
      if (v33 < v32)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    v34 = *(a5 + 32);
    if (!*(v34 + 16))
    {
      break;
    }

    v35 = *(v7 - 2);
    result = sub_1D2176758(result);
    if ((v36 & 1) == 0)
    {
      goto LABEL_54;
    }

    v37 = *(v34 + 56);
    v38 = *(v37 + 8 * result);
    result = sub_1D2176758(v35);
    if ((v39 & 1) == 0)
    {
      goto LABEL_55;
    }

    v6 = v29 - 4;
    if (*(v37 + 8 * result) < v38)
    {
LABEL_41:
      if (v29 != v7)
      {
        *v6 = *v41;
      }

      if (v16 <= v5 || (v7 -= 4, v41 <= v8))
      {
        v7 = v41;
        goto LABEL_47;
      }

      goto LABEL_30;
    }

LABEL_39:
    if (v16 != v29)
    {
      *v6 = *v30;
    }

    v16 = v30;
    v29 = v6;
    if (v30 <= v5)
    {
      v16 = v30;
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_1D2207798(char **a1, float *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_1D21C88C8(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 16 * *v12);
      v15 = (v10 + 16 * *v13);
      v16 = (v10 + 16 * v14);

      sub_1D2207494(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2207940(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v145 = MEMORY[0x1E69E7CC0];
  if (v6 >= 1)
  {
    swift_retain_n();
    swift_beginAccess();
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v144 = a5;
    v131 = a4;
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 < v6)
      {
        v12 = *a3;
        v13 = *a3 + 16 * v11;
        v14 = *(v13 + 8);
        v15 = *a3 + 16 * v10;
        v16 = *(v15 + 8);
        __dst = v6;
        if (v14 == v16)
        {
          v17 = *(v144 + 32);
          if (!*(v17 + 16))
          {
            goto LABEL_142;
          }

          v18 = *v15;
          v19 = sub_1D2176758(*v13);
          if ((v20 & 1) == 0)
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

            __break(1u);
LABEL_150:

            __break(1u);
LABEL_151:

            __break(1u);
            goto LABEL_152;
          }

          v21 = v9;
          v22 = *(v17 + 56);
          v23 = *(v22 + 8 * v19);
          v24 = sub_1D2176758(v18);
          if ((v25 & 1) == 0)
          {
            goto LABEL_144;
          }

          v26 = v10;
          v27 = v11;
          v28 = *(v22 + 8 * v24) < v23;
          v9 = v21;
          v29 = v144;
          v6 = __dst;
        }

        else
        {
          v26 = v10;
          v27 = v11;
          v28 = v16 < v14;
          v29 = v144;
        }

        v30 = 0;
        v133 = 16 * v26;
        v136 = v26;
        v31 = (v12 + 16 * v26 + 40);
        v32 = v26 + 2;
        do
        {
          v11 = v32;
          v34 = v30;
          v35 = v27;
          if (v32 >= v6)
          {
            break;
          }

          v36 = *(v31 - 4);
          if (*v31 == v36)
          {
            v37 = *(v29 + 32);
            if (!*(v37 + 16))
            {
              goto LABEL_125;
            }

            v38 = *(v31 - 3);
            v39 = sub_1D2176758(*(v31 - 1));
            if ((v40 & 1) == 0)
            {
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
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
              goto LABEL_143;
            }

            v41 = *(v37 + 56);
            v42 = *(v41 + 8 * v39);
            v43 = sub_1D2176758(v38);
            if ((v44 & 1) == 0)
            {
              goto LABEL_127;
            }

            v33 = *(v41 + 8 * v43) < v42;
            v29 = v144;
            v6 = __dst;
          }

          else
          {
            v33 = v36 < *v31;
          }

          v31 += 4;
          v32 = v11 + 1;
          v30 = v34 + 16;
          v27 = v35 + 1;
        }

        while (v28 == v33);
        if (v28)
        {
          v10 = v136;
          if (v11 < v136)
          {
            goto LABEL_147;
          }

          if (v136 < v11)
          {
            v45 = 0;
            v46 = v136;
            a4 = v131;
            while (1)
            {
              if (v46 != v35)
              {
                v48 = *a3;
                if (!*a3)
                {
                  goto LABEL_150;
                }

                v49 = v48 + v133 + v45;
                v50 = v48 + v133 + v34;
                v51 = *v49;
                v52 = *(v49 + 8);
                if (v133 + v45 != v133 + v34 + 16 || v49 >= v50 + 32)
                {
                  *v49 = *(v50 + 16);
                }

                *(v50 + 16) = v51;
                *(v48 + v133 + v34 + 24) = v52;
              }

              ++v46;
              v34 -= 16;
              v45 += 16;
              if (v46 >= v35--)
              {
                goto LABEL_35;
              }
            }
          }

          a4 = v131;
        }

        else
        {
          a4 = v131;
          v10 = v136;
        }
      }

LABEL_35:
      v53 = a3[1];
      if (v11 < v53)
      {
        if (__OFSUB__(v11, v10))
        {
          goto LABEL_141;
        }

        if (v11 - v10 < a4)
        {
          v54 = (v10 + a4);
          if (__OFADD__(v10, a4))
          {
            goto LABEL_145;
          }

          if (v54 >= v53)
          {
            v54 = a3[1];
          }

          v55 = v144;
          if (v54 < v10)
          {
            goto LABEL_146;
          }

          if (v11 != v54)
          {
            v56 = *a3;
            v57 = *a3 + 16 * v11;
            v134 = v11;
            v137 = v10;
            v58 = v10 - v11;
            __dsta = v54;
            do
            {
              v59 = v58;
              v60 = v57;
              do
              {
                v61 = *(v60 + 8);
                v62 = *(v60 - 16);
                v63 = *(v60 - 8);
                if (v61 == v63)
                {
                  v64 = *(v55 + 32);
                  if (!*(v64 + 16))
                  {
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
                    goto LABEL_126;
                  }

                  v65 = sub_1D2176758(*v60);
                  if ((v66 & 1) == 0)
                  {
                    goto LABEL_119;
                  }

                  v67 = *(v64 + 56);
                  v68 = *(v67 + 8 * v65);
                  v69 = sub_1D2176758(v62);
                  if ((v70 & 1) == 0)
                  {
                    goto LABEL_120;
                  }

                  v71 = *(v67 + 8 * v69);
                  v55 = v144;
                  if (v71 >= v68)
                  {
                    break;
                  }
                }

                else if (v63 >= v61)
                {
                  break;
                }

                if (!v56)
                {
                  goto LABEL_148;
                }

                v72 = *v60;
                v73 = *(v60 + 8);
                *v60 = *(v60 - 16);
                *(v60 - 8) = v73;
                *(v60 - 16) = v72;
                v60 -= 16;
              }

              while (!__CFADD__(v59++, 1));
              v57 += 16;
              --v58;
              ++v134;
            }

            while (v134 != __dsta);
            v11 = __dsta;
            v10 = v137;
          }
        }
      }

      if (v11 < v10)
      {
        goto LABEL_140;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D2195E30(0, *(v9 + 2) + 1, 1, v9);
      }

      v76 = *(v9 + 2);
      v75 = *(v9 + 3);
      v77 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        v9 = sub_1D2195E30((v75 > 1), v76 + 1, 1, v9);
      }

      *(v9 + 2) = v77;
      v78 = v9 + 32;
      v79 = &v9[16 * v76 + 32];
      *v79 = v10;
      *(v79 + 1) = v11;
      __dstb = *a1;
      if (!*a1)
      {
        goto LABEL_151;
      }

      v135 = v11;
      if (v76)
      {
        v138 = v9 + 32;
        while (1)
        {
          v80 = v77 - 1;
          if (v77 >= 4)
          {
            break;
          }

          if (v77 == 3)
          {
            v81 = *(v9 + 4);
            v82 = *(v9 + 5);
            v91 = __OFSUB__(v82, v81);
            v83 = v82 - v81;
            v84 = v91;
LABEL_79:
            if (v84)
            {
              goto LABEL_130;
            }

            v97 = &v9[16 * v77];
            v99 = *v97;
            v98 = *(v97 + 1);
            v100 = __OFSUB__(v98, v99);
            v101 = v98 - v99;
            v102 = v100;
            if (v100)
            {
              goto LABEL_132;
            }

            v103 = &v78[16 * v80];
            v105 = *v103;
            v104 = *(v103 + 1);
            v91 = __OFSUB__(v104, v105);
            v106 = v104 - v105;
            if (v91)
            {
              goto LABEL_135;
            }

            if (__OFADD__(v101, v106))
            {
              goto LABEL_137;
            }

            if (v101 + v106 >= v83)
            {
              if (v83 < v106)
              {
                v80 = v77 - 2;
              }

              goto LABEL_101;
            }

            goto LABEL_94;
          }

          if (v77 < 2)
          {
            goto LABEL_138;
          }

          v107 = &v9[16 * v77];
          v109 = *v107;
          v108 = *(v107 + 1);
          v91 = __OFSUB__(v108, v109);
          v101 = v108 - v109;
          v102 = v91;
LABEL_94:
          if (v102)
          {
            goto LABEL_134;
          }

          v110 = &v78[16 * v80];
          v112 = *v110;
          v111 = *(v110 + 1);
          v91 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v91)
          {
            goto LABEL_136;
          }

          if (v113 < v101)
          {
            goto LABEL_3;
          }

LABEL_101:
          if (v80 - 1 >= v77)
          {
            goto LABEL_121;
          }

          v118 = *a3;
          if (!*a3)
          {
            goto LABEL_149;
          }

          v119 = v9;
          v120 = &v78[16 * v80 - 16];
          v121 = *v120;
          v122 = v80;
          v123 = &v78[16 * v80];
          v124 = *(v123 + 1);
          v125 = (v118 + 16 * *v120);
          v126 = (v118 + 16 * *v123);
          v127 = (v118 + 16 * v124);

          sub_1D2207494(v125, v126, v127, __dstb, v144);
          if (v143)
          {

            v145 = v119;
            goto LABEL_114;
          }

          if (v124 < v121)
          {
            goto LABEL_122;
          }

          v128 = *(v119 + 2);
          if (v122 > v128)
          {
            goto LABEL_123;
          }

          *v120 = v121;
          *(v120 + 1) = v124;
          if (v122 >= v128)
          {
            goto LABEL_124;
          }

          v77 = v128 - 1;
          memmove(v123, v123 + 16, 16 * (v128 - 1 - v122));
          v9 = v119;
          *(v119 + 2) = v128 - 1;
          v78 = v138;
          if (v128 <= 2)
          {
            goto LABEL_3;
          }
        }

        v85 = &v78[16 * v77];
        v86 = *(v85 - 8);
        v87 = *(v85 - 7);
        v91 = __OFSUB__(v87, v86);
        v88 = v87 - v86;
        if (v91)
        {
          goto LABEL_128;
        }

        v90 = *(v85 - 6);
        v89 = *(v85 - 5);
        v91 = __OFSUB__(v89, v90);
        v83 = v89 - v90;
        v84 = v91;
        if (v91)
        {
          goto LABEL_129;
        }

        v92 = &v9[16 * v77];
        v94 = *v92;
        v93 = *(v92 + 1);
        v91 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v91)
        {
          goto LABEL_131;
        }

        v91 = __OFADD__(v83, v95);
        v96 = v83 + v95;
        if (v91)
        {
          goto LABEL_133;
        }

        if (v96 >= v88)
        {
          v114 = &v78[16 * v80];
          v116 = *v114;
          v115 = *(v114 + 1);
          v91 = __OFSUB__(v115, v116);
          v117 = v115 - v116;
          if (v91)
          {
            goto LABEL_139;
          }

          if (v83 < v117)
          {
            v80 = v77 - 2;
          }

          goto LABEL_101;
        }

        goto LABEL_79;
      }

LABEL_3:
      v6 = a3[1];
      v8 = v135;
      a4 = v131;
      if (v135 >= v6)
      {
        v145 = v9;
        a5 = v144;
        goto LABEL_111;
      }
    }
  }

  swift_retain_n();
LABEL_111:
  v129 = *a1;
  if (*a1)
  {

    sub_1D2207798(&v145, v129, a3, a5);
    if (v143)
    {

LABEL_114:
    }

    else
    {
    }
  }

  else
  {
LABEL_152:

    __break(1u);
  }

  return result;
}

uint64_t sub_1D22080E0(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D21C8AE8(v4);
  }

  v5 = *(v4 + 2);
  v6 = v4 + 32;
  v29[0] = (v4 + 32);
  v29[1] = v5;
  swift_retain_n();
  v7 = sub_1D225124C();
  if (v7 < v5)
  {
    v8 = v7;
    if (v5 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2CD8);
      v9 = sub_1D2250B2C();
      *(v9 + 16) = v5 >> 1;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v28[0] = (v9 + 32);
    v28[1] = (v5 >> 1);

    sub_1D2207940(v28, v30, v29, v8, a2);

    *(v9 + 16) = 0;

    goto LABEL_25;
  }

  if (!v5)
  {

    goto LABEL_25;
  }

  if (v5 == 1)
  {
    goto LABEL_24;
  }

  v24 = v4;

  v10 = -1;
  v11 = 1;
  v25 = v5;
  while (2)
  {
    result = swift_beginAccess();
    v26 = v10;
    v27 = v6;
    do
    {
      v14 = *(v6 + 2);
      v15 = *(v6 + 6);
      v16 = *(v6 + 2);
      if (v15 != v16)
      {
        if (v16 >= v15)
        {
          break;
        }

        goto LABEL_16;
      }

      v17 = *(a2 + 32);
      if (!*(v17 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v18 = a2;
      v19 = *v6;
      result = sub_1D2176758(*(v6 + 2));
      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }

      v21 = *(v17 + 56);
      v22 = *(v21 + 8 * result);
      result = sub_1D2176758(v19);
      if ((v23 & 1) == 0)
      {
        goto LABEL_28;
      }

      a2 = v18;
      if (*(v21 + 8 * result) >= v22)
      {
        break;
      }

LABEL_16:
      *(v6 + 1) = *v6;
      *v6 = v14;
      *(v6 + 2) = v15;
      v6 -= 16;
    }

    while (!__CFADD__(v10++, 1));
    ++v11;
    v6 = v27 + 16;
    v10 = v26 - 1;
    if (v11 != v25)
    {
      continue;
    }

    break;
  }

  v4 = v24;
LABEL_24:

LABEL_25:
  *a1 = v4;
}

unint64_t sub_1D220835C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v24 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D60);
  v26 = *(v27 - 8);
  result = MEMORY[0x1EEE9AC00](v27);
  v8 = &v22 - v7;
  v25 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    if (*(a4 + 16))
    {
      result = sub_1D2176758(*(*(a3 + 48) + 8 * v17));
      if (v18)
      {
        sub_1D2174DA8(*(a4 + 56) + *(v26 + 72) * result, v8, &unk_1EC6D2D60);
        v19 = v8[*(v27 + 48)];
        v20 = sub_1D225055C();
        result = (*(*(v20 - 8) + 8))(v8, v20);
        if (!v19)
        {
          *(v24 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          if (__OFADD__(v25++, 1))
          {
            __break(1u);
LABEL_17:

            return sub_1D21C9068(v24, v23, v25, a3);
          }
        }
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
      goto LABEL_17;
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

uint64_t sub_1D2208590(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D60);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v29 = v10;
    v30 = v3;
    v28 = &v28;
    MEMORY[0x1EEE9AC00](v12);
    v31 = &v28 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v11);
    v32 = 0;
    v11 = 0;
    v3 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v10 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v19 = v16 | (v11 << 6);
      if (*(a2 + 16))
      {
        v20 = sub_1D2176758(*(*(a1 + 48) + 8 * v19));
        if (v21)
        {
          sub_1D2174DA8(*(a2 + 56) + *(v33 + 72) * v20, v8, &unk_1EC6D2D60);
          v22 = v8[*(v34 + 48)];
          v23 = sub_1D225055C();
          (*(*(v23 - 8) + 8))(v8, v23);
          if (!v22)
          {
            *&v31[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
            if (__OFADD__(v32++, 1))
            {
              __break(1u);
LABEL_18:
              v25 = sub_1D21C9068(v31, v29, v32, a1);

              return v25;
            }
          }
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        goto LABEL_18;
      }

      v18 = *(v3 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();

  v25 = sub_1D21FF92C(v27, v10, a1, a2, sub_1D220835C);

  MEMORY[0x1D3899640](v27, -1, -1);

  return v25;
}

unint64_t sub_1D2208900(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v26 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D60);
  v28 = *(v29 - 8);
  result = MEMORY[0x1EEE9AC00](v29);
  v8 = &v24 - v7;
  v9 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (2)
  {
    v27 = v9;
    do
    {
      if (!v13)
      {
        v16 = v10;
        while (1)
        {
          v10 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v10 >= v14)
          {
            goto LABEL_18;
          }

          v17 = *(a3 + 56 + 8 * v10);
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v13 = (v17 - 1) & v17;
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = v15 | (v10 << 6);
      if (!*(a4 + 16))
      {
        break;
      }

      result = sub_1D2176758(*(*(a3 + 48) + 8 * v18));
      if ((v19 & 1) == 0)
      {
        break;
      }

      sub_1D2174DA8(*(a4 + 56) + *(v28 + 72) * result, v8, &unk_1EC6D2D60);
      v20 = v8[*(v29 + 48)];
      v21 = sub_1D225055C();
      result = (*(*(v21 - 8) + 8))(v8, v21);
    }

    while (!v20);
    v22 = v27;
    *(v26 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = __OFADD__(v22, 1);
    v9 = v22 + 1;
    if (!v23)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_18:

  return sub_1D21C9068(v26, v25, v27, a3);
}

uint64_t sub_1D2208B30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D60);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v29 = swift_slowAlloc();

      v27 = sub_1D21FF92C(v29, v10, a1, a2, sub_1D2208900);

      MEMORY[0x1D3899640](v29, -1, -1);

      return v27;
    }
  }

  v31 = v10;
  v32 = v3;
  v30 = &v30;
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v30 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v33, v11);
  v13 = 0;
  v11 = 0;
  v3 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v10 = (v14 + 63) >> 6;
  while (2)
  {
    v34 = v13;
    do
    {
      if (!v16)
      {
        v18 = v11;
        while (1)
        {
          v11 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v11 >= v10)
          {
            goto LABEL_19;
          }

          v19 = *(v3 + 8 * v11);
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v16 = (v19 - 1) & v19;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_22;
      }

      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      v20 = v17 | (v11 << 6);
      if (!*(a2 + 16))
      {
        break;
      }

      v21 = sub_1D2176758(*(*(a1 + 48) + 8 * v20));
      if ((v22 & 1) == 0)
      {
        break;
      }

      sub_1D2174DA8(*(a2 + 56) + *(v35 + 72) * v21, v8, &unk_1EC6D2D60);
      v23 = v8[*(v36 + 48)];
      v24 = sub_1D225055C();
      (*(*(v24 - 8) + 8))(v8, v24);
    }

    while (!v23);
    v25 = v34;
    *&v33[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v26 = __OFADD__(v25, 1);
    v13 = v25 + 1;
    if (!v26)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_19:
  v27 = sub_1D21C9068(v33, v31, v34, a1);

  return v27;
}

uint64_t sub_1D2208E9C(uint64_t *__src, uint64_t *a2, uint64_t *a3, uint64_t *__dst, uint64_t a5)
{
  v6 = __dst;
  v7 = a3;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    v15 = a2;
    if (__dst != __src || &__src[v11] <= __dst)
    {
      memmove(__dst, __src, 8 * v11);
    }

    v16 = &v6[v11];
    swift_beginAccess();
    if (v9 < 8)
    {
LABEL_10:
      v17 = v8;
      goto LABEL_51;
    }

    while (1)
    {
      if (v15 >= v7)
      {
        goto LABEL_10;
      }

      v20 = *(a5 + 32);
      if (!*(v20 + 16))
      {
        goto LABEL_11;
      }

      v21 = *v6;
      v22 = sub_1D2176758(*v15);
      if (v23)
      {
        v24 = *(*(v20 + 56) + 8 * v22);
        v25 = sub_1D2176758(v21);
        if ((v26 & 1) == 0)
        {
          if (v24 > 0.0)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v25 = sub_1D2176758(v21);
        if ((v27 & 1) == 0)
        {
          goto LABEL_11;
        }

        v24 = 0.0;
      }

      if (*(*(v20 + 56) + 8 * v25) < v24)
      {
LABEL_23:
        v18 = v15;
        v19 = v8 == v15++;
        if (v19)
        {
          goto LABEL_13;
        }

LABEL_12:
        *v8 = *v18;
        goto LABEL_13;
      }

LABEL_11:
      v18 = v6;
      v19 = v8 == v6++;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }
  }

  if (__dst != a2 || &a2[v14] <= __dst)
  {
    v28 = a2;
    memmove(__dst, a2, 8 * v14);
    a2 = v28;
  }

  v29 = a2;
  v16 = &v6[v14];
  swift_beginAccess();
  if (v12 < 8)
  {
    v17 = v29;
    goto LABEL_51;
  }

  v17 = v29;
  if (v29 > v8)
  {
LABEL_31:
    v43 = v17;
    v30 = v17 - 1;
    --v7;
    while (1)
    {
      v31 = v16 - 1;
      v32 = *(a5 + 32);
      if (*(v32 + 16))
      {
        v33 = a5;
        v34 = v30;
        v35 = *v30;
        v36 = sub_1D2176758(*v31);
        if (v37)
        {
          v38 = *(*(v32 + 56) + 8 * v36);
          v39 = sub_1D2176758(v35);
          if ((v40 & 1) == 0)
          {
            v30 = v34;
            a5 = v33;
            if (v38 > 0.0)
            {
LABEL_44:
              if (v7 + 1 != v43)
              {
                *v7 = *v30;
              }

              if (v16 <= v6 || (v17 = v30, v30 <= v8))
              {
                v17 = v30;
                break;
              }

              goto LABEL_31;
            }

            goto LABEL_42;
          }

          v30 = v34;
          a5 = v33;
          goto LABEL_39;
        }

        v39 = sub_1D2176758(v35);
        v30 = v34;
        a5 = v33;
        if (v41)
        {
          v38 = 0.0;
LABEL_39:
          if (*(*(v32 + 56) + 8 * v39) < v38)
          {
            goto LABEL_44;
          }
        }
      }

LABEL_42:
      if (v7 + 1 != v16)
      {
        *v7 = *v31;
      }

      --v7;
      --v16;
      if (v31 <= v6)
      {
        v16 = v31;
        v17 = v43;
        break;
      }
    }
  }

LABEL_51:
  if (v17 != v6 || v17 >= (v6 + ((v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v17, v6, 8 * (v16 - v6));
  }

  return 1;
}

uint64_t sub_1D22091B8(char **a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_1D21C88C8(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_1D2208E9C(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2209360(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v148 = MEMORY[0x1E69E7CC0];
  if (v6 < 1)
  {
    swift_retain_n();
    goto LABEL_167;
  }

  swift_retain_n();
  swift_beginAccess();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v134 = a4;
  v145 = a5;
  while (2)
  {
    v10 = v8++;
    if (v8 >= v6)
    {
      goto LABEL_28;
    }

    v11 = *a3;
    v12 = *(v145 + 32);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v11 + 8 * v10);
      v15 = sub_1D2176758(*(v11 + 8 * v8));
      v16 = 0.0;
      v17 = 0.0;
      if (v18)
      {
        v17 = *(*(v12 + 56) + 8 * v15);
      }

      v19 = sub_1D2176758(v14);
      if (v20)
      {
        v16 = *(*(v12 + 56) + 8 * v19);
      }
    }

    else
    {
      v16 = 0.0;
      v17 = 0.0;
    }

    v21 = (v10 + 2);
    if (v10 + 2 >= v6)
    {
      v23 = v8;
      v8 = v10 + 2;
      goto LABEL_25;
    }

    v22 = (v11 + 8 * v10 + 16);
    do
    {
      v23 = v8;
      v8 = v21;
      if (v13)
      {
        v24 = *(v22 - 1);
        v25 = sub_1D2176758(*v22);
        v26 = 0.0;
        if (v27)
        {
          v26 = *(*(v12 + 56) + 8 * v25);
        }

        v28 = sub_1D2176758(v24);
        if (v29)
        {
          if (v16 < v17 == *(*(v12 + 56) + 8 * v28) >= v26)
          {
            goto LABEL_25;
          }
        }

        else if (v16 < v17 == v26 <= 0.0)
        {
          v23 = v8 - 1;
          goto LABEL_25;
        }
      }

      else if (v16 < v17)
      {
        v23 = (v21 - 1);
        a4 = v134;
        if (v21 >= v10)
        {
          goto LABEL_27;
        }

        goto LABEL_187;
      }

      v21 = (v8 + 1);
      ++v22;
    }

    while (v6 != v8 + 1);
    v23 = v8;
    v8 = v6;
LABEL_25:
    a4 = v134;
    if (v16 < v17)
    {
      if (v8 >= v10)
      {
LABEL_27:
        if (v10 <= v23)
        {
          v47 = v8 - 1;
          v48 = v10;
          while (1)
          {
            if (v48 != v47)
            {
              v51 = *a3;
              if (!*a3)
              {
                goto LABEL_192;
              }

              v49 = *(v51 + 8 * v48);
              *(v51 + 8 * v48) = *(v51 + 8 * v47);
              *(v51 + 8 * v47) = v49;
            }

            if (++v48 >= v47--)
            {
              goto LABEL_28;
            }
          }
        }

        goto LABEL_28;
      }

LABEL_187:
      __break(1u);
      goto LABEL_188;
    }

LABEL_28:
    v30 = a3[1];
    if (v8 >= v30)
    {
      goto LABEL_60;
    }

    if (__OFSUB__(v8, v10))
    {
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_60;
    }

    if (__OFADD__(v10, a4))
    {
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:

      __break(1u);
LABEL_191:

      __break(1u);
LABEL_192:

      __break(1u);
      goto LABEL_193;
    }

    if (v10 + a4 >= v30)
    {
      v31 = a3[1];
    }

    else
    {
      v31 = v10 + a4;
    }

    if (v31 < v10)
    {
      goto LABEL_189;
    }

    if (v8 == v31)
    {
      goto LABEL_60;
    }

    v137 = v9;
    v32 = *a3;
    v33 = *a3 + 8 * v8 - 8;
    __dst = v10;
    v34 = (v10 - v8);
    while (2)
    {
      v35 = v8;
      v36 = v34;
      v37 = v33;
      do
      {
        v38 = *(v145 + 32);
        if (!*(v38 + 16))
        {
          break;
        }

        v39 = v37->i64[0];
        v40 = sub_1D2176758(v37->i64[1]);
        if ((v41 & 1) == 0)
        {
          v43 = sub_1D2176758(v39);
          if ((v45 & 1) == 0)
          {
            break;
          }

          v42 = 0.0;
LABEL_47:
          if (*(*(v38 + 56) + 8 * v43) >= v42)
          {
            break;
          }

          goto LABEL_48;
        }

        v42 = *(*(v38 + 56) + 8 * v40);
        v43 = sub_1D2176758(v39);
        if (v44)
        {
          goto LABEL_47;
        }

        if (v42 <= 0.0)
        {
          break;
        }

LABEL_48:
        if (!v32)
        {
          goto LABEL_190;
        }

        *v37 = vextq_s8(*v37, *v37, 8uLL);
        v37 = (v37 - 8);
      }

      while (!__CFADD__(v36++, 1));
      v8 = v35 + 1;
      v33 += 8;
      --v34;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }

    v8 = v31;
    v9 = v137;
    v10 = __dst;
LABEL_60:
    if (v8 < v10)
    {
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D2195E30(0, *(v9 + 2) + 1, 1, v9);
    }

    v53 = *(v9 + 2);
    v52 = *(v9 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v9 = sub_1D2195E30((v52 > 1), v53 + 1, 1, v9);
    }

    *(v9 + 2) = v54;
    v55 = v9 + 32;
    v56 = &v9[16 * v53 + 32];
    *v56 = v10;
    *(v56 + 1) = v8;
    if (!*a1)
    {
LABEL_193:

      __break(1u);
      goto LABEL_194;
    }

    a5 = v145;
    if (!v53)
    {
      goto LABEL_3;
    }

    v136 = v8;
    v138 = v9;
    v135 = v9 + 32;
    __dsta = *a1;
    while (2)
    {
      v57 = v54 - 1;
      if (v54 >= 4)
      {
        v62 = &v55[16 * v54];
        v63 = *(v62 - 8);
        v64 = *(v62 - 7);
        v68 = __OFSUB__(v64, v63);
        v65 = v64 - v63;
        if (v68)
        {
          goto LABEL_173;
        }

        v67 = *(v62 - 6);
        v66 = *(v62 - 5);
        v68 = __OFSUB__(v66, v67);
        v60 = v66 - v67;
        v61 = v68;
        if (v68)
        {
          goto LABEL_174;
        }

        v69 = &v9[16 * v54];
        v71 = *v69;
        v70 = *(v69 + 1);
        v68 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v68)
        {
          goto LABEL_176;
        }

        v68 = __OFADD__(v60, v72);
        v73 = v60 + v72;
        if (v68)
        {
          goto LABEL_178;
        }

        if (v73 >= v65)
        {
          v91 = &v55[16 * v57];
          v93 = *v91;
          v92 = *(v91 + 1);
          v68 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v68)
          {
            goto LABEL_184;
          }

          if (v60 < v94)
          {
            v57 = v54 - 2;
          }
        }

        else
        {
LABEL_81:
          if (v61)
          {
            goto LABEL_175;
          }

          v74 = &v9[16 * v54];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_177;
          }

          v80 = &v55[16 * v57];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_180;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_182;
          }

          if (v78 + v83 < v60)
          {
            goto LABEL_96;
          }

          if (v60 < v83)
          {
            v57 = v54 - 2;
          }
        }
      }

      else
      {
        if (v54 == 3)
        {
          v58 = *(v9 + 4);
          v59 = *(v9 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
          goto LABEL_81;
        }

        if (v54 < 2)
        {
          goto LABEL_183;
        }

        v84 = &v9[16 * v54];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_96:
        if (v79)
        {
          goto LABEL_179;
        }

        v87 = &v55[16 * v57];
        v89 = *v87;
        v88 = *(v87 + 1);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_181;
        }

        if (v90 < v78)
        {
          break;
        }
      }

      if (v57 - 1 >= v54)
      {
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
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
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
        goto LABEL_185;
      }

      v95 = *a3;
      if (!*a3)
      {
        goto LABEL_191;
      }

      v96 = &v55[16 * v57 - 16];
      v97 = &v55[16 * v57];
      v98 = *v97;
      v99 = *(v97 + 1);
      v144 = *v96;
      v100 = 8 * *v96;
      v101 = (v95 + v100);
      v102 = 8 * *v97;
      v103 = (v95 + v102);
      v142 = v57;
      v143 = v99;
      v104 = 8 * v99;
      v105 = (v95 + 8 * v99);
      v106 = v102 - v100;
      v107 = 8 * v99 - v102;
      v140 = v97;
      v141 = v96;
      if (v102 - v100 < v107)
      {
        v108 = __dsta;
        if (v101 != __dsta || v103 <= __dsta)
        {
          memmove(__dsta, (v95 + 8 * v144), 8 * v98 - 8 * v144);
        }

        v109 = (__dsta + v106);
        if (v106 < 1 || v104 <= v102)
        {
          v120 = v101;
          a5 = v145;
          goto LABEL_155;
        }

        a5 = v145;
        while (1)
        {
          v110 = *(v145 + 32);
          if (!*(v110 + 16))
          {
LABEL_123:
            v118 = v108;
            v119 = v101 == v108++;
            if (v119)
            {
              goto LABEL_125;
            }

LABEL_124:
            *v101 = *v118;
            goto LABEL_125;
          }

          v111 = *v108;
          v112 = sub_1D2176758(*v103);
          if (v113)
          {
            v114 = *(*(v110 + 56) + 8 * v112);
            v115 = sub_1D2176758(v111);
            if ((v116 & 1) == 0)
            {
              if (v114 <= 0.0)
              {
                goto LABEL_123;
              }

              goto LABEL_120;
            }
          }

          else
          {
            v115 = sub_1D2176758(v111);
            if ((v117 & 1) == 0)
            {
              goto LABEL_123;
            }

            v114 = 0.0;
          }

          if (*(*(v110 + 56) + 8 * v115) >= v114)
          {
            goto LABEL_123;
          }

LABEL_120:
          v118 = v103;
          v119 = v101 == v103++;
          if (!v119)
          {
            goto LABEL_124;
          }

LABEL_125:
          ++v101;
          if (v108 >= v109 || v103 >= v105)
          {
            v120 = v101;
            goto LABEL_155;
          }
        }
      }

      if (v103 != __dsta || v105 <= __dsta)
      {
        memmove(__dsta, (v95 + 8 * v98), 8 * v99 - 8 * v98);
      }

      a5 = v145;

      v109 = (__dsta + v107);
      if (v107 < 1 || v102 <= v100)
      {
        v108 = __dsta;
LABEL_154:
        v120 = v103;
        goto LABEL_155;
      }

      do
      {
        v120 = v103 - 1;
        --v105;
        v108 = __dsta;
        while (1)
        {
          v121 = v109 - 1;
          v122 = *(v145 + 32);
          if (!*(v122 + 16))
          {
            goto LABEL_144;
          }

          v123 = *v120;
          v124 = sub_1D2176758(*v121);
          if (v125)
          {
            break;
          }

          v127 = sub_1D2176758(v123);
          v108 = __dsta;
          if (v129)
          {
            v126 = 0.0;
LABEL_141:
            if (*(*(v122 + 56) + 8 * v127) < v126)
            {
              goto LABEL_146;
            }
          }

LABEL_144:
          if (v105 + 1 != v109)
          {
            *v105 = *v121;
          }

          --v105;
          --v109;
          if (v121 <= v108)
          {
            v109 = v121;
            goto LABEL_154;
          }
        }

        v126 = *(*(v122 + 56) + 8 * v124);
        v127 = sub_1D2176758(v123);
        if (v128)
        {
          v108 = __dsta;
          goto LABEL_141;
        }

        v108 = __dsta;
        if (v126 <= 0.0)
        {
          goto LABEL_144;
        }

LABEL_146:
        if (v105 + 1 != v103)
        {
          *v105 = *v120;
        }

        if (v109 <= v108)
        {
          break;
        }

        --v103;
      }

      while (v101 < v120);
LABEL_155:
      if (v120 != v108 || v120 >= (v108 + ((v109 - v108 + (v109 - v108 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
      {
        memmove(v120, v108, 8 * (v109 - v108));
      }

      v8 = v136;
      v9 = v138;
      if (v143 < v144)
      {
        goto LABEL_170;
      }

      v130 = *(v138 + 2);
      if (v142 > v130)
      {
        goto LABEL_171;
      }

      *v141 = v144;
      *(v141 + 1) = v143;
      if (v142 >= v130)
      {
        goto LABEL_172;
      }

      v54 = v130 - 1;
      memmove(v140, v140 + 16, 16 * (v130 - 1 - v142));
      *(v138 + 2) = v130 - 1;
      v55 = v135;
      if (v130 > 2)
      {
        continue;
      }

      break;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v134;
    if (v8 < v6)
    {
      continue;
    }

    break;
  }

  v148 = v9;
LABEL_167:
  v131 = *a1;
  if (*a1)
  {

    sub_1D22091B8(&v148, v131, a3, a5);
  }

LABEL_194:

  __break(1u);
  return result;
}