uint64_t VisualUnderstanding.DebugData.ClassificationItem.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VisualUnderstanding.DebugData.ClassificationInfo.modelURN.getter()
{
  v1 = *v0;

  return v1;
}

__n128 VisualUnderstanding.DebugData.ClassificationInfo.boundingBox.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 VisualUnderstanding.DebugData.DetectorResult.boundingBox.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t VisualUnderstanding.DebugData.DetectorResult.ontology.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D99FE1B4(v2, v3);
}

uint64_t VisualUnderstanding.DebugData.DurationMeasurement.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VisualUnderstanding.DebugData.curlCommand.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *VisualUnderstanding.DebugData.annotation.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

__n128 VisualUnderstanding.DebugData.refinedRegion.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1D9B5B620()
{
  v1 = *v0;
  v16 = MEMORY[0x1E69E7CC0];
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 40;
    while (v3 < *(v1 + 16))
    {
      v6 = *(v4 + 32);
      v5 = *(v4 + 40);
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      v9 = *(v4 + 12);
      v10 = *(v4 + 8);
      v11 = objc_allocWithZone(VIReducePersonOverTriggerRegionalAnnotation);

      v12 = sub_1D9C7DC4C();
      LODWORD(v13) = v10;
      [v11 initWithLabel:v12 boundingBox:v9 confidence:v8 faceCount:{v7, v6, v5, v13}];

      MEMORY[0x1DA73E0E0]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D9C7DF4C();
      }

      ++v3;
      sub_1D9C7DF6C();
      v4 += 56;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v14 = objc_allocWithZone(VIReducePersonOverTriggerAnnotation);
    sub_1D9A0835C(0, &qword_1ECB533B8);
    v15 = sub_1D9C7DF1C();

    [v14 initWithRegionsItems_];
  }
}

uint64_t sub_1D9B5B840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B5B8A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D9B5B8F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9B5B968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D9B5B9B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12VisualLookUp12OntologyNodeVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D9B5BA40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D9B5BA88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9B5BB00(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D99E8FDC(v7);
      v7 = result;
    }

    v81 = (v7 + 16);
    v82 = *(v7 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v7 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1D9B5C10C((*a3 + 96 * *v83), (*a3 + 96 * *v85), (*a3 + 96 * v86), v90);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 96 * v6 + 64);
      v10 = 96 * v8;
      v11 = *a3 + 96 * v8;
      v12 = *(v11 + 64);
      v13 = v8 + 2;
      v14 = (v11 + 256);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 24;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 96 * v6 - 96;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v95 = *(v22 + v10 + 32);
            v97 = *(v22 + v10 + 48);
            v99 = *(v22 + v10 + 64);
            v101 = *(v22 + v10 + 80);
            v91 = *(v22 + v10);
            v93 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x60uLL);
            v21[2] = v95;
            v21[3] = v97;
            v21[4] = v99;
            v21[5] = v101;
            *v21 = v91;
            v21[1] = v93;
          }

          ++v20;
          v18 -= 96;
          v10 += 96;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v34 = *(v7 + 16);
    v33 = *(v7 + 24);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_1D99E8FF0((v33 > 1), v34 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v35;
    v36 = v7 + 32;
    v37 = (v7 + 32 + 16 * v34);
    *v37 = v8;
    v37[1] = v6;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v7 + 32);
          v40 = *(v7 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v7 + 16 * v35);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v36 + 16 * v38);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v35 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v7 + 16 * v35);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v36 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v36 + 16 * (v38 - 1));
        v77 = *v76;
        v78 = (v36 + 16 * v38);
        v79 = v78[1];
        sub_1D9B5C10C((*a3 + 96 * *v76), (*a3 + 96 * *v78), (*a3 + 96 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v38 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v7 + 16);
        if (v38 >= v80)
        {
          goto LABEL_101;
        }

        v35 = v80 - 1;
        result = memmove((v36 + 16 * v38), v78 + 2, 16 * (v80 - 1 - v38));
        *(v7 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v36 + 16 * v35;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v7 + 16 * v35);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v36 + 16 * v38);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 96 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 - 32) >= *(v27 + 64))
    {
LABEL_29:
      ++v6;
      v24 += 96;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = (v27 - 96);
    v96 = *(v27 + 32);
    v98 = *(v27 + 48);
    v100 = *(v27 + 64);
    v102 = *(v27 + 80);
    v92 = *v27;
    v94 = *(v27 + 16);
    v29 = *(v27 - 48);
    *(v27 + 32) = *(v27 - 64);
    *(v27 + 48) = v29;
    v30 = *(v27 - 16);
    *(v27 + 64) = *(v27 - 32);
    *(v27 + 80) = v30;
    v31 = *(v27 - 80);
    *v27 = *(v27 - 96);
    *(v27 + 16) = v31;
    v28[2] = v96;
    v28[3] = v98;
    v28[4] = v100;
    v28[5] = v102;
    v27 -= 96;
    *v28 = v92;
    v28[1] = v94;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1D9B5C10C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 96 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 96)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[16] < v6[16])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x60uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 96 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 96 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v15 = v5 + 24;
      if (*(v6 - 8) < *(v12 - 8))
      {
        v17 = v6 - 24;
        if (v15 != v6)
        {
          memmove(v5, v6 - 24, 0x60uLL);
        }

        if (v12 <= v4 || (v6 -= 24, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 24);
      if (v15 != v12)
      {
        memmove(v5, v12 - 24, 0x60uLL);
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 96;
  if (v6 != v4 || v6 >= &v4[24 * v18])
  {
    memmove(v6, v4, 96 * v18);
  }

  return 1;
}

uint64_t sub_1D9B5C39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D6D6F6365527369 && a2 == 0xED00006465646E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9C7E7DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9B5C42C(uint64_t a1)
{
  v2 = sub_1D9B5C5DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9B5C468(uint64_t a1)
{
  v2 = sub_1D9B5C5DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchHistoryEntry.RenderingRecommendation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB538E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B5C5DC();
  sub_1D9C7E96C();
  sub_1D9C7E6FC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9B5C5DC()
{
  result = qword_1ECB538E8;
  if (!qword_1ECB538E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB538E8);
  }

  return result;
}

uint64_t SearchHistoryEntry.RenderingRecommendation.hashValue.getter()
{
  sub_1D9C7E8DC();
  sub_1D9C7E8FC();
  return sub_1D9C7E93C();
}

uint64_t SearchHistoryEntry.RenderingRecommendation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB538F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B5C5DC();
  sub_1D9C7E95C();
  if (!v2)
  {
    v9 = sub_1D9C7E60C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1D9B5C7FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53990);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = *(v3 + 4);
  v12 = *(v3 + 5);
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B5F1F8();
  sub_1D9C7E96C();
  v10 = v3[1];
  v14 = *v3;
  v15 = v10;
  v16 = 0;
  sub_1D99EA188();
  sub_1D9C7E74C();
  if (!v2)
  {
    *&v14 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB539A0);
    sub_1D9B5F24C(&qword_1ECB539A8, &qword_1ECB539B0);
    sub_1D9C7E74C();
    LOBYTE(v14) = 2;
    sub_1D9C7E6EC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D9B5CA1C(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v15.origin.x = *v2;
  v15.origin.y = v5;
  v15.size.width = v6;
  v15.size.height = v7;
  MinX = CGRectGetMinX(v15);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v16.origin.x = v4;
  v16.origin.y = v5;
  v16.size.width = v6;
  v16.size.height = v7;
  MaxX = CGRectGetMaxX(v16);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v17.origin.x = v4;
  v17.origin.y = v5;
  v17.size.width = v6;
  v17.size.height = v7;
  MinY = CGRectGetMinY(v17);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v18.origin.x = v4;
  v18.origin.y = v5;
  v18.size.width = v6;
  v18.size.height = v7;
  MaxY = CGRectGetMaxY(v18);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  sub_1D9A2E710(a1, v8);

  return sub_1D9C7DD6C();
}

uint64_t sub_1D9B5CB2C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1D9C7E8DC();
  v12.origin.x = v1;
  v12.origin.y = v2;
  v12.size.width = v3;
  v12.size.height = v4;
  MinX = CGRectGetMinX(v12);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MaxX = CGRectGetMaxX(v13);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v14.origin.x = v1;
  v14.origin.y = v2;
  v14.size.width = v3;
  v14.size.height = v4;
  MinY = CGRectGetMinY(v14);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.width = v3;
  v15.size.height = v4;
  MaxY = CGRectGetMaxY(v15);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  sub_1D9A2E710(v11, v5);
  sub_1D9C7DD6C();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9B5CC54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB539B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B5F1F8();
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v19 = 0;
  sub_1D99EA7B8();
  sub_1D9C7E65C();
  v15 = v18;
  v16 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB539A0);
  v19 = 1;
  sub_1D9B5F24C(&qword_1ECB539C0, &qword_1ECB539C8);
  sub_1D9C7E65C();
  v9 = v17;
  LOBYTE(v17) = 2;
  v10 = sub_1D9C7E5FC();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = v15;
  *a2 = v16;
  *(a2 + 16) = v13;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1D9B5CF14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB538E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B5C5DC();
  sub_1D9C7E96C();
  sub_1D9C7E6FC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D9B5D04C()
{
  sub_1D9C7E8DC();
  sub_1D9C7E8FC();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9B5D0C0()
{
  sub_1D9C7E8DC();
  sub_1D9C7E8FC();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9B5D104()
{
  v1 = 0x7449746C75736572;
  if (*v0 != 1)
  {
    v1 = 0x6D614E6870796C67;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E756F62;
  }
}

uint64_t sub_1D9B5D174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9B5EFA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9B5D19C(uint64_t a1)
{
  v2 = sub_1D9B5F1F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9B5D1D8(uint64_t a1)
{
  v2 = sub_1D9B5F1F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9B5D244(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  v7 = *(a2 + 48);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    if (sub_1D9A28E64(v3, v6))
    {
      if (v2 == v5 && v4 == v7)
      {
        return 1;
      }

      else
      {

        return sub_1D9C7E7DC();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9B5D304()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1D9C7E8DC();
  v12.origin.x = v1;
  v12.origin.y = v2;
  v12.size.width = v3;
  v12.size.height = v4;
  MinX = CGRectGetMinX(v12);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MaxX = CGRectGetMaxX(v13);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v14.origin.x = v1;
  v14.origin.y = v2;
  v14.size.width = v3;
  v14.size.height = v4;
  MinY = CGRectGetMinY(v14);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.width = v3;
  v15.size.height = v4;
  MaxY = CGRectGetMaxY(v15);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  sub_1D9A2E710(v11, v5);
  sub_1D9C7DD6C();
  return sub_1D9C7E93C();
}

void static SearchHistoryEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0)
  {
    sub_1D9A27F14(*(a1 + 16), *(a2 + 16));
  }
}

uint64_t sub_1D9B5D45C()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0x65526E6F69676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D617473656D6974;
  }
}

uint64_t sub_1D9B5D4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9B5F0C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9B5D4F4(uint64_t a1)
{
  v2 = sub_1D9B5D784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9B5D530(uint64_t a1)
{
  v2 = sub_1D9B5D784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchHistoryEntry.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB538F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v11 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B5D784();
  sub_1D9C7E96C();
  v16 = 0;
  sub_1D9C7E70C();
  if (!v2)
  {
    v15 = v11;
    v14 = 1;
    sub_1D9B5D7D8();
    sub_1D9C7E74C();
    v13 = v8;
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53910);
    sub_1D9B5DED0(&qword_1ECB53918, sub_1D9B5D82C);
    sub_1D9C7E74C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D9B5D784()
{
  result = qword_1ECB53900;
  if (!qword_1ECB53900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53900);
  }

  return result;
}

unint64_t sub_1D9B5D7D8()
{
  result = qword_1ECB53908;
  if (!qword_1ECB53908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53908);
  }

  return result;
}

unint64_t sub_1D9B5D82C()
{
  result = qword_1ECB53920;
  if (!qword_1ECB53920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53920);
  }

  return result;
}

uint64_t SearchHistoryEntry.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1DA73EB00](*&v3);
  sub_1D9C7E8FC();

  return sub_1D9A2E5C8(a1, v4);
}

uint64_t SearchHistoryEntry.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D9C7E8DC();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x1DA73EB00](*&v3);
  sub_1D9C7E8FC();
  sub_1D9A2E5C8(v5, v2);
  return sub_1D9C7E93C();
}

uint64_t SearchHistoryEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53928);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B5D784();
  sub_1D9C7E95C();
  if (!v2)
  {
    v18 = 0;
    sub_1D9C7E61C();
    v10 = v9;
    v16 = 1;
    sub_1D9B5DE7C();
    sub_1D9C7E65C();
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53910);
    v14[15] = 2;
    sub_1D9B5DED0(&qword_1ECB53938, sub_1D9B5DF48);
    sub_1D9C7E65C();
    (*(v6 + 8))(v8, v5);
    v13 = v15;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void sub_1D9B5DBF0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0)
  {
    sub_1D9A27F14(*(a1 + 16), *(a2 + 16));
  }
}

uint64_t sub_1D9B5DC2C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D9C7E8DC();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x1DA73EB00](*&v3);
  sub_1D9C7E8FC();
  sub_1D9A2E5C8(v5, v2);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9B5DCAC(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = result + 64;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 64);
  v10 = (v7 + 63) >> 6;
  v26 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    while (1)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = (*(v4 + 48) + ((v5 << 10) | (16 * v12)));
      v15 = *v13;
      v14 = v13[1];
      v16 = *a2;
      v17 = *(*a2 + 16);

      if (v17 && (v18 = sub_1D99ED894(v15, v14), (v19 & 1) != 0))
      {
        if ((a3 & 0x100000000) == 0 && *(*(v16 + 56) + 4 * v18) == *&a3)
        {
          goto LABEL_15;
        }

LABEL_6:

        if (!v9)
        {
          break;
        }
      }

      else
      {
        if ((a3 & 0x100000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_15:
        v20 = v26;
        result = swift_isUniquelyReferenced_nonNull_native();
        v29 = v26;
        if ((result & 1) == 0)
        {
          result = sub_1D99FE164(0, *(v26 + 16) + 1, 1);
          v20 = v26;
        }

        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v27 = v22 + 1;
          v25 = *(v20 + 16);
          result = sub_1D99FE164((v21 > 1), v22 + 1, 1);
          v22 = v25;
          v23 = v27;
          v20 = v29;
        }

        *(v20 + 16) = v23;
        v26 = v20;
        v24 = v20 + 16 * v22;
        *(v24 + 32) = v15;
        *(v24 + 40) = v14;
        if (!v9)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v26;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D9B5DE7C()
{
  result = qword_1ECB53930;
  if (!qword_1ECB53930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53930);
  }

  return result;
}

uint64_t sub_1D9B5DED0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB53910);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9B5DF48()
{
  result = qword_1ECB53940;
  if (!qword_1ECB53940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53940);
  }

  return result;
}

unint64_t sub_1D9B5DFA0()
{
  result = qword_1ECB53948;
  if (!qword_1ECB53948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53948);
  }

  return result;
}

unint64_t sub_1D9B5DFF8()
{
  result = qword_1ECB53950;
  if (!qword_1ECB53950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53950);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchHistoryEntry.RenderingRecommendation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D9B5E140()
{
  result = qword_1ECB53958;
  if (!qword_1ECB53958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53958);
  }

  return result;
}

unint64_t sub_1D9B5E198()
{
  result = qword_1ECB53960;
  if (!qword_1ECB53960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53960);
  }

  return result;
}

unint64_t sub_1D9B5E1F0()
{
  result = qword_1ECB53968;
  if (!qword_1ECB53968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53968);
  }

  return result;
}

unint64_t sub_1D9B5E248()
{
  result = qword_1ECB53970;
  if (!qword_1ECB53970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53970);
  }

  return result;
}

unint64_t sub_1D9B5E2A0()
{
  result = qword_1ECB53978;
  if (!qword_1ECB53978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53978);
  }

  return result;
}

unint64_t sub_1D9B5E2F8()
{
  result = qword_1ECB53980;
  if (!qword_1ECB53980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53980);
  }

  return result;
}

unint64_t sub_1D9B5E350()
{
  result = qword_1ECB53988;
  if (!qword_1ECB53988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53988);
  }

  return result;
}

uint64_t sub_1D9B5E3A4(uint64_t a1, uint64_t a2, char a3)
{
  *&v110 = a2;
  v5 = type metadata accessor for RegionSearchResult.ResultItem(0);
  v112 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51510);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v99 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v99 - v15);
  v17 = sub_1D9C7D8DC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (a3)
  {
    if (!v22)
    {
      goto LABEL_36;
    }

    v24 = *(a1 + 64);
    v23 = *(a1 + 80);
    v119 = *(a1 + 96);
    v118 = v23;
    v25 = *(a1 + 32);
    v116 = *(a1 + 48);
    v117 = v24;
    v115 = v25;
    v26 = v24;
    if (!*(v24 + 16))
    {
      goto LABEL_36;
    }

    v106 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v27 = (v24 + v106);
    v28 = *(v5 + 28);
    sub_1D9B5F318(v24 + v106 + v28, v16);
    v29 = type metadata accessor for ObjectKnowledge();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    v108 = v29;
    v111 = v30 + 48;
    if (v31(v16, 1) == 1)
    {
      sub_1D9B5F388(v16);
LABEL_36:
      v36 = 0;
      return v36 & 1;
    }

    v109 = v31;
    v42 = v16[1];
    v104 = *v16;
    sub_1D99D0F10(&v115, v114);

    sub_1D99FF1F0(v16, type metadata accessor for ObjectKnowledge);
    v105 = v42;
    if (!v42)
    {
LABEL_35:
      sub_1D99FE184(&v115);
      goto LABEL_36;
    }

    if (!*(v26 + 16))
    {
LABEL_34:

      goto LABEL_35;
    }

    sub_1D9B5F318(&v27[v28], v13);
    v43 = v108;
    v18 = v109;
    if (v109(v13, 1, v108) == 1)
    {
      sub_1D9B5F388(v13);
      goto LABEL_34;
    }

    v44 = *&v13[*(v43 + 64)];
    sub_1D99FF1F0(v13, type metadata accessor for ObjectKnowledge);
    if (!*(v26 + 16))
    {
      goto LABEL_34;
    }

    v45 = sub_1D9A15C94(*v27);
    v47 = sub_1D9A3DBF4(v45, v46);
    v49 = v48;

    if (v47)
    {
      v21 = *(v110 + 16);
      if (v21)
      {
        v50 = 0;
        v99[1] = 0;
        v51 = v110 + 48;
        v103 = MEMORY[0x1E69E7CC0];
LABEL_24:
        v52 = (v51 + 24 * v50);
        v53 = v50;
        while (1)
        {
          if (v21 == v53)
          {
            v21 = *(&v118 + 1);
            v47 = v119;
            v107 = v116;
            v110 = v115;

            sub_1D99FE184(&v115);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_40;
            }

            goto LABEL_78;
          }

          if (v53 >= v21)
          {
            goto LABEL_75;
          }

          v50 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            break;
          }

          v55 = *v52;
          v52 += 3;
          v54 = v55;
          ++v53;
          if (*(v55 + 16))
          {
            v56 = *(v54 + 32);
            v102 = *(v54 + 48);
            v107 = v56;
            v47 = *(v54 + 64);
            v57 = *(v54 + 72);
            v58 = *(v54 + 80);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v110 = v51;
            v101 = v57;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v103 = sub_1D9AFB08C(0, *(v103 + 2) + 1, 1, v103);
            }

            v61 = *(v103 + 2);
            v60 = *(v103 + 3);
            if (v61 >= v60 >> 1)
            {
              v103 = sub_1D9AFB08C((v60 > 1), v61 + 1, 1, v103);
            }

            v62 = v103;
            *(v103 + 2) = v61 + 1;
            v63 = &v62[56 * v61];
            v64 = v102;
            *(v63 + 2) = v107;
            *(v63 + 3) = v64;
            v65 = v101;
            *(v63 + 8) = v47;
            *(v63 + 9) = v65;
            *(v63 + 10) = v58;
            v18 = v109;
            v51 = v110;
            goto LABEL_24;
          }
        }

LABEL_76:
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_78:
          v103 = sub_1D9AFB08C(0, *(v103 + 2) + 1, 1, v103);
LABEL_40:
          v68 = *(v103 + 2);
          v67 = *(v103 + 3);
          if (v68 >= v67 >> 1)
          {
            v103 = sub_1D9AFB08C((v67 > 1), v68 + 1, 1, v103);
          }

          v69 = v103;
          *(v103 + 2) = v68 + 1;
          v101 = v69 + 32;
          v70 = &v69[56 * v68 + 32];
          v71 = v107;
          *v70 = v110;
          *(v70 + 16) = v71;
          *(v70 + 32) = v26;
          *(v70 + 40) = v21;
          *(v70 + 48) = v47;
          v47 = sub_1D9A441B8(MEMORY[0x1E69E7CC0]);
          v113 = v47;
          v100 = *(v69 + 2);
          if (!v100)
          {
            break;
          }

          v72 = 0;
          v26 = v112;
          v34 = v108;
          while (v72 < *(v103 + 2))
          {
            v73 = *&v101[56 * v72 + 32];
            v74 = *(v73 + 16);
            if (v74)
            {
              *&v102 = v72;
              *&v110 = v73 + v106;

              v21 = 0;
              *&v107 = v73;
              while (1)
              {
                if (v21 >= *(v73 + 16))
                {
                  __break(1u);
                  goto LABEL_72;
                }

                sub_1D99FF18C(v110 + *(v26 + 72) * v21, v7);
                sub_1D9B5F318(&v7[*(v5 + 28)], v10);
                if ((v18)(v10, 1, v34) == 1)
                {
                  sub_1D99FF1F0(v7, type metadata accessor for RegionSearchResult.ResultItem);
                  sub_1D9B5F388(v10);
                }

                else
                {
                  v18 = *v10;
                  v75 = v10[1];

                  sub_1D99FF1F0(v10, type metadata accessor for ObjectKnowledge);
                  if (v75)
                  {
                    v76 = 0.0;
                    if (*(v47 + 16))
                    {
                      v77 = sub_1D99ED894(v18, v75);
                      if (v78)
                      {
                        v76 = *(*(v47 + 56) + 4 * v77);
                      }
                    }

                    v79 = *&v7[*(v5 + 32)];
                    v47 = v113;
                    v80 = swift_isUniquelyReferenced_nonNull_native();
                    v114[0] = v47;
                    v81 = sub_1D99ED894(v18, v75);
                    v83 = *(v47 + 16);
                    v84 = (v82 & 1) == 0;
                    v85 = __OFADD__(v83, v84);
                    v86 = v83 + v84;
                    if (v85)
                    {
                      __break(1u);
LABEL_74:
                      __break(1u);
LABEL_75:
                      __break(1u);
                      goto LABEL_76;
                    }

                    v26 = v82;
                    if (*(v47 + 24) >= v86)
                    {
                      if ((v80 & 1) == 0)
                      {
                        v93 = v81;
                        sub_1D9C13E54();
                        v81 = v93;
                      }
                    }

                    else
                    {
                      sub_1D9C09080(v86, v80);
                      v81 = sub_1D99ED894(v18, v75);
                      if ((v26 & 1) != (v87 & 1))
                      {
                        result = sub_1D9C7E84C();
                        __break(1u);
                        return result;
                      }
                    }

                    v34 = v108;
                    v88 = v76 + v79;
                    if (v26)
                    {
                      v89 = v81;

                      v47 = v114[0];
                      *(*(v114[0] + 56) + 4 * v89) = v88;
                      sub_1D99FF1F0(v7, type metadata accessor for RegionSearchResult.ResultItem);
                    }

                    else
                    {
                      v47 = v114[0];
                      *(v114[0] + 8 * (v81 >> 6) + 64) |= 1 << v81;
                      v90 = (*(v47 + 48) + 16 * v81);
                      *v90 = v18;
                      v90[1] = v75;
                      *(*(v47 + 56) + 4 * v81) = v88;
                      sub_1D99FF1F0(v7, type metadata accessor for RegionSearchResult.ResultItem);
                      v91 = *(v47 + 16);
                      v85 = __OFADD__(v91, 1);
                      v92 = v91 + 1;
                      if (v85)
                      {
                        goto LABEL_74;
                      }

                      *(v47 + 16) = v92;
                    }

                    v26 = v112;
                    v18 = v109;
                    v73 = v107;
                    v113 = v47;
                  }

                  else
                  {
                    sub_1D99FF1F0(v7, type metadata accessor for RegionSearchResult.ResultItem);
                    v18 = v109;
                    v73 = v107;
                  }
                }

                if (v74 == ++v21)
                {

                  v72 = v102;
                  break;
                }
              }
            }

            if (++v72 == v100)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_69:

        v95 = sub_1D9BC1CFC(v94);

        v97 = sub_1D9B5DCAC(v96, &v113, v95 | ((HIDWORD(v95) & 1) << 32));

        v114[0] = v104;
        v114[1] = v105;
        MEMORY[0x1EEE9AC00](v98);
        v99[-2] = v114;
        v36 = sub_1D9BC1698(sub_1D99A40D8, &v99[-4], v97);
      }

      else
      {
        sub_1D99FE184(&v115);

        v36 = v49 <= v44;
      }
    }

    else
    {

      sub_1D99FE184(&v115);
      v36 = 1;
    }
  }

  else
  {
    if (!v22)
    {
      goto LABEL_36;
    }

    v7 = v19;
    v32 = *(a1 + 64);
    v118 = *(a1 + 80);
    v119 = *(a1 + 96);
    v33 = *(a1 + 32);
    v116 = *(a1 + 48);
    v117 = v32;
    v115 = v33;
    v26 = *(&v32 + 1);
    v34 = *(&v32 + 1) >> 62;
    if (*(&v32 + 1) >> 62)
    {
LABEL_72:
      v35 = sub_1D9C7E50C();
    }

    else
    {
      v35 = *((*(&v32 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = v35 != 0;
    sub_1D99D0F10(&v115, v114);
    static Logger.argos.getter(v21);
    sub_1D99D0F10(&v115, v114);
    v37 = sub_1D9C7D8BC();
    v38 = sub_1D9C7E09C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v35 != 0;
      v40 = swift_slowAlloc();
      *v40 = 67109376;
      *(v40 + 4) = v39;
      *(v40 + 8) = 2048;
      if (v34)
      {
        v41 = sub_1D9C7E50C();
      }

      else
      {
        v41 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1D99FE184(&v115);
      *(v40 + 10) = v41;
      sub_1D99FE184(&v115);
      _os_log_impl(&dword_1D9962000, v37, v38, "isRecommendedForRendering: %{BOOL}d, current number of resultSection: %ld", v40, 0x12u);
      MEMORY[0x1DA7405F0](v40, -1, -1);
    }

    else
    {
      sub_1D99FE184(&v115);
      sub_1D99FE184(&v115);
    }

    (*(v18 + 8))(v21, v7);
  }

  return v36 & 1;
}

uint64_t sub_1D9B5EFA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7449746C75736572 && a2 == 0xEB00000000736D65 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6870796C67 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

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

uint64_t sub_1D9B5F0C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9CAAE50 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65526E6F69676572 && a2 == 0xED000073746C7573)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

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

unint64_t sub_1D9B5F1F8()
{
  result = qword_1ECB53998;
  if (!qword_1ECB53998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53998);
  }

  return result;
}

uint64_t sub_1D9B5F24C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB539A0);
    sub_1D9B5F2D4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9B5F2D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RegionSearchResult.ResultItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9B5F318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B5F388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9B5F404()
{
  result = qword_1ECB539D0;
  if (!qword_1ECB539D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB539D0);
  }

  return result;
}

unint64_t sub_1D9B5F45C()
{
  result = qword_1ECB539D8;
  if (!qword_1ECB539D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB539D8);
  }

  return result;
}

unint64_t sub_1D9B5F4B4()
{
  result = qword_1ECB539E0;
  if (!qword_1ECB539E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB539E0);
  }

  return result;
}

uint64_t type metadata accessor for NestedNatureDomainAssignmentRule()
{
  result = qword_1EDD31390;
  if (!qword_1EDD31390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B5F588()
{
  result = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9B5F610@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v187 = a3;
  v7 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v179 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for NestedNatureDomainAssignmentRule();
  MEMORY[0x1EEE9AC00](v189);
  v178 = &v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v177 = &v167 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v186 = &v167 - v13;
  v188 = _s14DetectedResultVMa();
  v185 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v15 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9C7D8DC();
  v192 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v167 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v182 = &v167 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v181 = &v167 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v180 = &v167 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v176 = &v167 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v175 = &v167 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v174 = &v167 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v173 = &v167 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v36 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v167 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v167 - v42;
  v44 = a1[7];
  v235 = a1[6];
  v236 = v44;
  v237[0] = a1[8];
  *(v237 + 13) = *(a1 + 141);
  v45 = a1[3];
  v231 = a1[2];
  v232 = v45;
  v46 = a1[5];
  v233 = a1[4];
  v234 = v46;
  v47 = a1[1];
  v229 = *a1;
  v230 = v47;
  v190 = a2;
  if (*(a2 + 104))
  {
    v48 = a1[7];
    a4[6] = a1[6];
    a4[7] = v48;
    a4[8] = a1[8];
    *(a4 + 141) = *(a1 + 141);
    v49 = a1[3];
    a4[2] = a1[2];
    a4[3] = v49;
    v50 = a1[5];
    a4[4] = a1[4];
    a4[5] = v50;
    v51 = a1[1];
    *a4 = *a1;
    a4[1] = v51;
    return sub_1D99AB100(&v229, &v220, &qword_1ECB510B8);
  }

  v171 = v21;
  v172 = v18;
  v169 = v41;
  v170 = v15;
  v183 = a4;
  v184 = v16;
  v52 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  v53 = v191;
  v168 = *(v52 + 32);
  sub_1D99AB100(v191 + v168, v43, &qword_1ECB510C8);
  v54 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v167 = *(v54 - 8);
  v55 = *(v167 + 48);
  v56 = v55(v43, 1, v54);
  sub_1D99A6AE0(v43, &qword_1ECB510C8);
  if (v56 == 1 || (sub_1D99AB100(v53 + *(v52 + 36), v39, &qword_1ECB510C8), v57 = v55(v39, 1, v54), sub_1D99A6AE0(v39, &qword_1ECB510C8), v57 == 1) || (v58 = *(v53 + 12), v58 < 1))
  {
    v63 = v171;
    static Logger.argos.getter(v171);
    v64 = v172;
    sub_1D9A3E0E0(v172);
    v65 = *(v192 + 8);
    v66 = v184;
    v65(v63, v184);
    v67 = sub_1D9C7D8BC();
    v68 = sub_1D9C7E09C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1D9962000, v67, v68, "Must have both detector and inner detector threshold config.", v69, 2u);
      MEMORY[0x1DA7405F0](v69, -1, -1);
    }

    v65(v64, v66);
    v70 = v236;
    v71 = v183;
    v183[6] = v235;
    v71[7] = v70;
    v71[8] = v237[0];
    *(v71 + 141) = *(v237 + 13);
    v72 = v232;
    v71[2] = v231;
    v71[3] = v72;
    v73 = v234;
    v71[4] = v233;
    v71[5] = v73;
    v74 = v230;
    *v71 = v229;
    v71[1] = v74;
    return sub_1D99AB100(&v229, &v220, &qword_1ECB510B8);
  }

  v172 = v55;
  if (*(*v53 + 16))
  {
    v59 = v183;
    v60 = v190;
    if (*(v187 + 8))
    {
      sub_1D99B1E14(*v53);
      if (!v61)
      {
        v137 = v173;
        static Logger.argos.getter(v173);
        v138 = v174;
        sub_1D9A3E0E0(v174);
        v139 = *(v192 + 8);
        v140 = v184;
        v139(v137, v184);
        v141 = sub_1D9C7D8BC();
        v142 = sub_1D9C7E09C();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&dword_1D9962000, v141, v142, "No satisfied coarse label.", v143, 2u);
          MEMORY[0x1DA7405F0](v143, -1, -1);
        }

        v139(v138, v140);
        sub_1D99AB100(&v229, &v220, &qword_1ECB510B8);
        goto LABEL_35;
      }

      v173 = v58;
      v174 = v61;
      LODWORD(v171) = v62;
    }

    else
    {
      v173 = v58;
      v174 = 0;
      LODWORD(v171) = 0;
    }
  }

  else
  {
    v173 = v58;
    v174 = 0;
    LODWORD(v171) = 0;
    v60 = v190;
  }

  v76 = *(v60 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D8);
  v77 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1D9C85660;
  v79 = v78 + v77;
  v80 = v169;
  sub_1D99AB100(v53 + v168, v169, &qword_1ECB510C8);
  v81 = v172;
  if (v172(v80, 1, v54) == 1)
  {
    *v79 = 0;
    *(v79 + 8) = 0xE000000000000000;
    *(v79 + 16) = 0;
    *(v79 + 20) = 0;
    sub_1D9C7D3BC();
    v82 = v81(v80, 1, v54);
    v83 = v170;
    v84 = v192;
    v85 = v189;
    if (v82 != 1)
    {
      sub_1D99A6AE0(v80, &qword_1ECB510C8);
    }
  }

  else
  {
    sub_1D99E03D4(v80, v79, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    v83 = v170;
    v84 = v192;
    v85 = v189;
  }

  *&v220 = *(v53 + *(v85 + 28));

  v86 = v186;
  sub_1D9A5FF38(v78, &v220, v76, v186);
  swift_setDeallocating();
  sub_1D9B60C44(v79, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  swift_deallocClassInstance();

  if ((*(v185 + 48))(v86, 1, v188) != 1)
  {
    v98 = v83;
    sub_1D99E03D4(v86, v83, _s14DetectedResultVMa);
    v99 = v190;
    v100 = v53;
    v101 = sub_1D9B60804(v190, v187);
    if (v101 < v173)
    {
      v102 = v101;
      v103 = v175;
      static Logger.argos.getter(v175);
      v104 = v176;
      sub_1D9A3E0E0(v176);
      v105 = *(v84 + 8);
      v105(v103, v184);
      v106 = v177;
      sub_1D9B60BDC(v100, v177, type metadata accessor for NestedNatureDomainAssignmentRule);
      v107 = sub_1D9C7D8BC();
      v108 = sub_1D9C7E09C();
      v109 = os_log_type_enabled(v107, v108);
      v59 = v183;
      if (v109)
      {
        v110 = swift_slowAlloc();
        v111 = v106;
        v112 = v110;
        *v110 = 134218240;
        *(v110 + 4) = v102;
        *(v110 + 12) = 1024;
        v113 = *(v111 + 12);
        sub_1D9B60C44(v111, type metadata accessor for NestedNatureDomainAssignmentRule);
        *(v112 + 14) = v113;
        _os_log_impl(&dword_1D9962000, v107, v108, "Not enough satisfied inner detection results %ld requires %d.", v112, 0x12u);
        MEMORY[0x1DA7405F0](v112, -1, -1);
      }

      else
      {
        sub_1D9B60C44(v106, type metadata accessor for NestedNatureDomainAssignmentRule);
      }

      v105(v104, v184);
      sub_1D9B60C44(v98, _s14DetectedResultVMa);
      sub_1D99AB100(&v229, &v220, &qword_1ECB510B8);
LABEL_35:

      v144 = v236;
      v59[6] = v235;
      v59[7] = v144;
      v59[8] = v237[0];
      *(v59 + 141) = *(v237 + 13);
      v145 = v232;
      v59[2] = v231;
      v59[3] = v145;
      v146 = v234;
      v59[4] = v233;
      v59[5] = v146;
      v147 = v230;
      *v59 = v229;
      v59[1] = v147;
      return result;
    }

    v114 = v180;
    static Logger.argos.getter(v180);
    v115 = v53;
    v116 = v178;
    sub_1D9B60BDC(v115, v178, type metadata accessor for NestedNatureDomainAssignmentRule);
    v117 = v179;
    sub_1D9B60BDC(v99, v179, type metadata accessor for VisualUnderstanding.ImageRegion);
    v118 = sub_1D9C7D8BC();
    v119 = sub_1D9C7E09C();
    v120 = os_log_type_enabled(v118, v119);
    v121 = v183;
    if (v120)
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *&v213[0] = v123;
      *v122 = 136315394;
      v124 = v189;
      v125 = sub_1D9A15C94(*(v116 + *(v189 + 20)));
      v126 = v116;
      v127 = v117;
      v129 = v128;
      sub_1D9B60C44(v126, type metadata accessor for NestedNatureDomainAssignmentRule);
      v130 = sub_1D9A0E224(v125, v129, v213);

      *(v122 + 4) = v130;
      *(v122 + 12) = 2080;
      v131 = v127[1];
      v220 = *v127;
      v221 = v131;
      v132 = NormalizedRect.loggingDescription.getter();
      v134 = v133;
      sub_1D9B60C44(v127, type metadata accessor for VisualUnderstanding.ImageRegion);
      v135 = sub_1D9A0E224(v132, v134, v213);

      *(v122 + 14) = v135;
      _os_log_impl(&dword_1D9962000, v118, v119, "Assign %s to region %s", v122, 0x16u);
      swift_arrayDestroy();
      v136 = v123;
      v121 = v183;
      MEMORY[0x1DA7405F0](v136, -1, -1);
      MEMORY[0x1DA7405F0](v122, -1, -1);

      (*(v192 + 8))(v180, v184);
    }

    else
    {

      sub_1D9B60C44(v117, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B60C44(v116, type metadata accessor for NestedNatureDomainAssignmentRule);
      (*(v192 + 8))(v114, v184);
      v124 = v189;
    }

    v148 = *(v100 + *(v124 + 20));
    v149 = &v170[*(v188 + 28)];
    v150 = *v149;
    v151 = *(v149 + 1);
    v152 = *(v149 + 2);
    v153 = *(v149 + 3);
    v154 = *&v170[*(v188 + 32)];
    LODWORD(v155) = v171;
    if (!v174)
    {
      v155 = 0.0;
    }

    LOBYTE(v213[0]) = v148;
    *(v213 + 8) = 0u;
    *(&v213[1] + 8) = 0u;
    BYTE8(v213[2]) = 0;
    v214 = 0u;
    v215 = 0u;
    *&v216 = v150;
    *(&v216 + 1) = v151;
    *&v217 = v152;
    *(&v217 + 1) = v153;
    LODWORD(v218) = 0;
    *(&v218 + 4) = __PAIR64__(LODWORD(v155), v154);
    HIDWORD(v218) = 0;
    LOWORD(v219[0]) = 0;
    *&v219[1] = 0;
    *(&v219[0] + 1) = 0;
    *(&v219[1] + 5) = 0;
    v226 = v235;
    v227 = v236;
    v228[0] = v237[0];
    *(v228 + 13) = *(v237 + 13);
    v222 = v231;
    v223 = v232;
    v224 = v233;
    v225 = v234;
    v220 = v229;
    v221 = v230;
    if (sub_1D99AE104(&v220) == 1)
    {

LABEL_41:
      sub_1D9B60C44(v170, _s14DetectedResultVMa);
      v201 = v217;
      v202 = v218;
      v203[0] = v219[0];
      *(v203 + 13) = *(v219 + 13);
      v197 = v213[2];
      v198 = v214;
      v199 = v215;
      v200 = v216;
      v156 = v213[0];
      v157 = v213[1];
LABEL_47:
      v195 = v156;
      v196 = v157;
      faiss::NormalizationTransform::~NormalizationTransform(&v195);
      v210 = v201;
      v211 = v202;
      v212[0] = v203[0];
      *(v212 + 13) = *(v203 + 13);
      v206 = v197;
      v207 = v198;
      v208 = v199;
      v209 = v200;
      v204 = v195;
      v205 = v196;
      v163 = v202;
      v121[6] = v201;
      v121[7] = v163;
      v121[8] = v212[0];
      *(v121 + 141) = *(v212 + 13);
      v164 = v207;
      v121[2] = v206;
      v121[3] = v164;
      v165 = v209;
      v121[4] = v208;
      v121[5] = v165;
      v166 = v205;
      *v121 = v204;
      v121[1] = v166;
    }

    v158 = sub_1D9A15C94(v220);
    v160 = v159;
    if (v158 == sub_1D9A15C94(v148) && v160 == v161)
    {
    }

    else
    {
      v162 = sub_1D9C7E7DC();

      if ((v162 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v210 = v226;
    v211 = v227;
    v212[0] = v228[0];
    *(v212 + 13) = *(v228 + 13);
    v206 = v222;
    v207 = v223;
    v208 = v224;
    v209 = v225;
    v204 = v220;
    v205 = v221;
    v201 = v217;
    v202 = v218;
    v203[0] = v219[0];
    *(v203 + 13) = *(v219 + 13);
    v197 = v213[2];
    v198 = v214;
    v199 = v215;
    v200 = v216;
    v195 = v213[0];
    v196 = v213[1];
    sub_1D9B67854(&v204, &v195, v193);
    sub_1D9B60C44(v170, _s14DetectedResultVMa);
    sub_1D99AE0B0(v213);
    v201 = v193[6];
    v202 = v193[7];
    v203[0] = v194[0];
    *(v203 + 13) = *(v194 + 13);
    v197 = v193[2];
    v198 = v193[3];
    v199 = v193[4];
    v200 = v193[5];
    v156 = v193[0];
    v157 = v193[1];
    goto LABEL_47;
  }

  sub_1D99A6AE0(v86, &qword_1ECB510C0);
  v87 = v181;
  static Logger.argos.getter(v181);
  v88 = v182;
  sub_1D9A3E0E0(v182);
  v89 = *(v84 + 8);
  v89(v87, v184);
  v90 = sub_1D9C7D8BC();
  v91 = sub_1D9C7E09C();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&dword_1D9962000, v90, v91, "No satisfied detection results.", v92, 2u);
    MEMORY[0x1DA7405F0](v92, -1, -1);
  }

  v89(v88, v184);
  sub_1D99AB100(&v229, &v220, &qword_1ECB510B8);

  v93 = v236;
  v94 = v183;
  v183[6] = v235;
  v94[7] = v93;
  v94[8] = v237[0];
  *(v94 + 141) = *(v237 + 13);
  v95 = v232;
  v94[2] = v231;
  v94[3] = v95;
  v96 = v234;
  v94[4] = v233;
  v94[5] = v96;
  v97 = v230;
  *v94 = v229;
  v94[1] = v97;
  return result;
}

uint64_t sub_1D9B60804(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D8);
  v9 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9C85660;
  v13 = v12 + v11;
  v14 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  sub_1D99AB100(v2 + *(v14 + 36), v7, &qword_1ECB510C8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v9) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 20) = 0;
    sub_1D9C7D3BC();
    if (v15(v7, 1, v9) != 1)
    {
      sub_1D99A6AE0(v7, &qword_1ECB510C8);
    }
  }

  else
  {
    sub_1D99E03D4(v7, v13, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  }

  v22 = *(v2 + *(type metadata accessor for NestedNatureDomainAssignmentRule() + 28));

  v16 = sub_1D9A601D8(v12, &v22, v8);
  swift_setDeallocating();
  sub_1D9B60C44(v13, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  swift_deallocClassInstance();

  MEMORY[0x1EEE9AC00](v17);
  *(&v21 - 2) = a1;
  *(&v21 - 1) = v2;
  sub_1D9A19388(sub_1D9B60CA4, (&v21 - 4), v16);
  v19 = *(v18 + 16);

  return v19;
}

BOOL sub_1D9B60ABC(uint64_t a1, CGFloat *a2, uint64_t a3)
{
  v5 = (a1 + *(_s14DetectedResultVMa() + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v18[4] = *v5;
  v18[5] = v7;
  v18[6] = v8;
  v18[7] = v9;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v18[0] = *a2;
  v18[1] = v11;
  v18[2] = v12;
  v18[3] = v13;
  if (*(a3 + 8) >= sub_1D9A47A7C(v18))
  {
    return 0;
  }

  v19.origin.x = v10;
  v19.origin.y = v11;
  v19.size.width = v12;
  v19.size.height = v13;
  Width = CGRectGetWidth(v19);
  v20.origin.x = v10;
  v20.origin.y = v11;
  v20.size.width = v12;
  v20.size.height = v13;
  v14 = Width * CGRectGetHeight(v20);
  v21.origin.x = v6;
  v21.origin.y = v7;
  v21.size.width = v8;
  v21.size.height = v9;
  v15 = CGRectGetWidth(v21);
  v22.origin.x = v6;
  v22.origin.y = v7;
  v22.size.width = v8;
  v22.size.height = v9;
  return v15 * CGRectGetHeight(v22) < v14;
}

uint64_t sub_1D9B60BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B60C44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D9B60CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
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
  v19 = OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_modelInfo;
  v20 = v98;
  result = sub_1D9C1B898(v18, v4 + OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_modelInfo, 0x6972656767697274, 0xEA0000000000676ELL, 0x74696E676F636572, 0xEB000000006E6F69);
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
          *(v48 + 16) = sub_1D9B62418;
          *(v48 + 24) = v30;
          type metadata accessor for EspressoRequest(0);
          v49 = swift_allocObject();
          sub_1D9B6242C(v45, v49 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model, type metadata accessor for EspressoModel);
          *(v49 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_features) = 0;
          *(v49 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_vnScalingMode) = 0;
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
          *(v78 + 16) = sub_1D9B62418;
          *(v78 + 24) = v30;
          type metadata accessor for E5Request();
          v79 = v36;
          v80 = swift_allocObject();
          *(v80 + 16) = v76;
          *(v80 + 24) = 0;
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
        v64[3] = sub_1D9B62418;
        v64[4] = v30;
        v65 = objc_allocWithZone(MEMORY[0x1E6984468]);
        v99[4] = sub_1D99A1A20;
        v99[5] = v64;
        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 1107296256;
        v99[2] = sub_1D9BD99E0;
        v99[3] = &block_descriptor_12;
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

void sub_1D9B61800(uint64_t a1, void (*a2)(id *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
      v12 = Strong + OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_modelInfo;
      v13 = type metadata accessor for MLModelInfo(0);
      sub_1D99A7FF8(*(v12 + *(v13 + 32)), v27);
      v14 = *(a5 + 144);
      type metadata accessor for DurationMeasurement();
      swift_allocObject();

      sub_1D9AFD4B8(v27, v14);

      sub_1D9B61A38(v24, a5, a6, &v19);
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

uint64_t sub_1D9B61A38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
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
      v20 = OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_modelInfo;
      sub_1D9B6242C(v84 + OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_modelInfo, v14, type metadata accessor for MLModelInfo);
      v21 = *(v19 + OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_postProcessor);
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
      v41 = sub_1D99F767C(v40, 2, 0);
      v74 = sub_1D99F7828(2, v40, v41, sub_1D9B624AC, v21);

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
        _os_log_impl(&dword_1D9962000, v31, v32, "Food model expected 2 outputs", v33, 2u);
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

unint64_t sub_1D9B62188(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > result)
  {
    return sub_1D9B1E3D0(*(a3 + 8 * result + 32));
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B62200()
{
  sub_1D99A19C0(v0 + OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_modelInfo, type metadata accessor for MLModelInfo);
}

uint64_t sub_1D9B62264()
{
  v1 = OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_modelInfo;

  sub_1D99A19C0(v0 + v1, type metadata accessor for MLModelInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FoodModelFactory()
{
  result = qword_1EDD33EC8;
  if (!qword_1EDD33EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B6236C()
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

uint64_t sub_1D9B6242C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9B624B4@<X0>(unint64_t *a1@<X8>)
{
  v78 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v76 - v2;
  type metadata accessor for JsonFileMapper();
  sub_1D9C7B75C();
  v4 = sub_1D9C7B80C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_1D9B1E4B8(v3);
  sub_1D99A6AE0(v3, &qword_1ECB51FD0);
  v6 = sub_1D9A45CA8(MEMORY[0x1E69E7CC0]);
  v7 = 0;
  v8 = v5 + 64;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v85 = &v96 + 1;
LABEL_4:
  while (1)
  {
    v13 = v7;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = (v7 << 10) | (16 * v14);
    v16 = (*(v5 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(v5 + 56) + v15);
    v21 = *v19;
    v20 = v19[1];
    v96 = v21;
    v97 = v20;
    v94 = 44;
    v95 = 0xE100000000000000;
    sub_1D99A57F8();

    v22 = sub_1D9C7E2AC();
    v23 = *(v22 + 16);
    if (v23)
    {
      v92 = v22 + 32;
      v93 = v22;
      v24 = v17 & 0xFFFFFFFFFFFFLL;
      v83 = v17 & 0xFFFFFFFFFFFFLL;
      v84 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v18) & 0xF;
      }

      v91 = v24;
      v82 = v18 & 0xFFFFFFFFFFFFFFLL;
      v81 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v77 = (HIBYTE(v18) & 0xF) - 1;
      v80 = v17;
      v25 = v6;
      v26 = v17;
      v27 = 0;
      v89 = v26;
      v90 = v18;
      v88 = v23;
      v79 = v12;
      while (1)
      {
        if (v27 >= *(v93 + 16))
        {
          goto LABEL_96;
        }

        v29 = (v92 + 16 * v27);
        v30 = v29[1];
        v98 = *v29;
        if (!v91)
        {

          goto LABEL_76;
        }

        if ((v18 & 0x1000000000000000) == 0)
        {
          break;
        }

        v35 = sub_1D9B635EC(v26, v18, 10);

        if ((v35 & 0x100) == 0)
        {
LABEL_81:
          v87 = v35;
          v86 = v27;
          v59 = v8;
          v60 = v5;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v96 = v25;
          v62 = v30;
          v64 = sub_1D99ED894(v98, v30);
          v65 = v25[2];
          v66 = (v63 & 1) == 0;
          v67 = v65 + v66;
          if (__OFADD__(v65, v66))
          {
            goto LABEL_97;
          }

          v68 = v63;
          if (v25[3] >= v67)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D9C163AC();
            }
          }

          else
          {
            sub_1D9C0DCD8(v67, isUniquelyReferenced_nonNull_native);
            v69 = sub_1D99ED894(v98, v62);
            if ((v68 & 1) != (v70 & 1))
            {
              goto LABEL_103;
            }

            v64 = v69;
          }

          v5 = v60;
          v8 = v59;
          if (v68)
          {

            v25 = v96;
            *(v96[7] + v64) = v87;
            v18 = v90;
          }

          else
          {
            v25 = v96;
            v96[(v64 >> 6) + 8] |= 1 << v64;
            v71 = (v25[6] + 16 * v64);
            *v71 = v98;
            v71[1] = v62;
            *(v25[7] + v64) = v87;
            v72 = v25[2];
            v73 = __OFADD__(v72, 1);
            v74 = v72 + 1;
            v18 = v90;
            if (v73)
            {
              goto LABEL_98;
            }

            v25[2] = v74;
          }

          v12 = v79;
          v28 = v88;
          v26 = v89;
          v27 = v86;
          goto LABEL_15;
        }

LABEL_76:
        v55 = sub_1D99ED894(v98, v30);
        v57 = v56;

        if (v57)
        {
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v96 = v25;
          if (!v58)
          {
            sub_1D9C163AC();
            v25 = v96;
          }

          sub_1D9C10AE0(v55, v25);
        }

        v26 = v89;
        v18 = v90;
        v28 = v88;
LABEL_15:
        if (++v27 == v28)
        {
          v6 = v25;

          goto LABEL_4;
        }
      }

      if ((v18 & 0x2000000000000000) != 0)
      {
        v96 = v26;
        v97 = v82;
        if (v80 == 43)
        {
          LOBYTE(v34) = v84;
          if (!v84)
          {
            goto LABEL_99;
          }

          if (v84 == 1)
          {
            v35 = 0;
            goto LABEL_75;
          }

          LOBYTE(v35) = 0;
          v34 = v77;
          v46 = v85;
          while (1)
          {
            v47 = *v46 - 48;
            if (v47 > 9)
            {
              break;
            }

            v48 = (10 * v35);
            if (v48 != 10 * v35)
            {
              break;
            }

            v35 = v48 + v47;
            if ((v48 + v47) != v35)
            {
              break;
            }

            ++v46;
            if (!--v34)
            {
              goto LABEL_75;
            }
          }
        }

        else
        {
          v39 = v84;
          if (v80 == 45)
          {
            if (!v84)
            {
              goto LABEL_100;
            }

            if (v84 != 1)
            {
              LOBYTE(v35) = 0;
              v34 = v77;
              v40 = v85;
              while (1)
              {
                v41 = *v40 - 48;
                if (v41 > 9)
                {
                  break;
                }

                v42 = (10 * v35);
                if (v42 != 10 * v35)
                {
                  break;
                }

                v35 = v42 - v41;
                if ((v42 - v41) != v35)
                {
                  break;
                }

                ++v40;
                if (!--v34)
                {
                  goto LABEL_75;
                }
              }
            }
          }

          else if (v84)
          {
            LOBYTE(v35) = 0;
            v51 = &v96;
            while (1)
            {
              v52 = *v51 - 48;
              if (v52 > 9)
              {
                break;
              }

              v53 = (10 * v35);
              if (v53 != 10 * v35)
              {
                break;
              }

              v35 = v53 + v52;
              if ((v53 + v52) != v35)
              {
                break;
              }

              ++v51;
              if (!--v39)
              {
                goto LABEL_73;
              }
            }
          }
        }
      }

      else
      {
        v31 = v81;
        v32 = v83;
        if ((v26 & 0x1000000000000000) == 0)
        {
          v31 = sub_1D9C7E47C();
        }

        v33 = *v31;
        if (v33 == 43)
        {
          if (v32 < 1)
          {
            goto LABEL_102;
          }

          v34 = v32 - 1;
          if (v32 != 1)
          {
            v35 = 0;
            if (!v31)
            {
              goto LABEL_73;
            }

            v43 = v31 + 1;
            while (1)
            {
              v44 = *v43 - 48;
              if (v44 > 9)
              {
                break;
              }

              v45 = (10 * v35);
              if (v45 != 10 * v35)
              {
                break;
              }

              v35 = v45 + v44;
              if ((v45 + v44) != v35)
              {
                break;
              }

              ++v43;
              if (!--v34)
              {
                goto LABEL_75;
              }
            }
          }
        }

        else if (v33 == 45)
        {
          if (v32 < 1)
          {
            goto LABEL_101;
          }

          v34 = v32 - 1;
          if (v32 != 1)
          {
            v35 = 0;
            if (v31)
            {
              v36 = v31 + 1;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  goto LABEL_74;
                }

                v38 = (10 * v35);
                if (v38 != 10 * v35)
                {
                  goto LABEL_74;
                }

                v35 = v38 - v37;
                if ((v38 - v37) != v35)
                {
                  goto LABEL_74;
                }

                ++v36;
                if (!--v34)
                {
                  goto LABEL_75;
                }
              }
            }

LABEL_73:
            LOBYTE(v34) = 0;
LABEL_75:
            LOBYTE(v94) = v34;
            v54 = v34;

            if ((v54 & 1) == 0)
            {
              goto LABEL_81;
            }

            goto LABEL_76;
          }
        }

        else
        {
          if (!v32)
          {
            goto LABEL_74;
          }

          v35 = 0;
          if (!v31)
          {
            goto LABEL_73;
          }

          while (1)
          {
            v49 = *v31 - 48;
            if (v49 > 9)
            {
              break;
            }

            v50 = (10 * v35);
            if (v50 != 10 * v35)
            {
              break;
            }

            v35 = v50 + v49;
            if ((v50 + v49) != v35)
            {
              break;
            }

            ++v31;
            if (!--v32)
            {
              goto LABEL_73;
            }
          }
        }
      }

LABEL_74:
      v35 = 0;
      LOBYTE(v34) = 1;
      goto LABEL_75;
    }
  }

  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      *v78 = v6;
      return result;
    }

    v11 = *(v8 + 8 * v7);
    ++v13;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

uint64_t sub_1D9B62C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v22 = a1;
  v23 = a3;
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB539E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  v9 = sub_1D9C7CB3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9C19C14();
  if (*(v13 + 16) && (v14 = sub_1D99ED894(v22, a2), (v15 & 1) != 0))
  {
    v21[1] = a2;
    v21[2] = v5;
    v21[3] = v4;
    v16 = *(*(v13 + 56) + v14);

    (*(v10 + 104))(v12, *MEMORY[0x1E69BD608], v9);
    v17 = sub_1D9C7CB2C();
    v18 = *(v10 + 8);
    result = v18(v12, v9);
    if (v17 != v16)
    {
      sub_1D9C7CB1C();
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        sub_1D9AB8524(&v24);
        result = v18(v8, v9);
        v20 = v24;
        goto LABEL_8;
      }

      result = sub_1D99A6AE0(v8, &qword_1ECB539E8);
    }
  }

  else
  {
  }

  v20 = 27;
LABEL_8:
  *v23 = v20;
  return result;
}

unsigned __int8 *sub_1D9B63060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1D9C7DE9C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D99C7060();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D9C7E47C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1D9B635EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v76 = a2;

  result = sub_1D9C7DE9C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D99C7060();
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D9C7E47C();
      v7 = v74;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_126;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          LOBYTE(v35) = 0;
          v36 = a3;
          v16 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v32)
            {
              if (v37 < 0x41 || v37 >= v33)
              {
                v19 = 0;
                if (v37 < 0x61 || v37 >= v34)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v35 * v36;
            v40 = (v35 * v36);
            if (v40 != v39)
            {
              goto LABEL_126;
            }

            v35 = v40 + (v37 + v38);
            if (v35 != v35)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v16 = 0;
          v19 = v35;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_126;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        return (v19 | (v16 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v5) & 0xF;
  v75 = v6;
  v76 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOBYTE(v45) = 0;
        v65 = a3 + 48;
        v66 = a3 + 55;
        v67 = a3 + 87;
        if (a3 > 10)
        {
          v65 = 58;
        }

        else
        {
          v67 = 97;
          v66 = 65;
        }

        v68 = &v75;
        v69 = a3;
        v16 = 1;
        while (1)
        {
          v70 = *v68;
          if (v70 < 0x30 || v70 >= v65)
          {
            if (v70 < 0x41 || v70 >= v66)
            {
              v19 = 0;
              if (v70 < 0x61 || v70 >= v67)
              {
                goto LABEL_127;
              }

              v71 = -87;
            }

            else
            {
              v71 = -55;
            }
          }

          else
          {
            v71 = -48;
          }

          v72 = v45 * v69;
          v73 = (v45 * v69);
          if (v73 != v72)
          {
            goto LABEL_126;
          }

          v45 = v73 + (v70 + v71);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          v68 = (v68 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOBYTE(v45) = 0;
        v46 = a3 + 48;
        v47 = a3 + 55;
        v48 = a3 + 87;
        if (a3 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v75 + 1;
        v50 = a3;
        v16 = 1;
        while (1)
        {
          v51 = *v49;
          if (v51 < 0x30 || v51 >= v46)
          {
            if (v51 < 0x41 || v51 >= v47)
            {
              v19 = 0;
              if (v51 < 0x61 || v51 >= v48)
              {
                goto LABEL_127;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          v53 = v45 * v50;
          v54 = (v45 * v50);
          if (v54 != v53)
          {
            goto LABEL_126;
          }

          v45 = v54 - (v51 + v52);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v55 = v43 - 1;
    if (v55)
    {
      LOBYTE(v45) = 0;
      v56 = a3 + 48;
      v57 = a3 + 55;
      v58 = a3 + 87;
      if (a3 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      v59 = &v75 + 1;
      v60 = a3;
      v16 = 1;
      do
      {
        v61 = *v59;
        if (v61 < 0x30 || v61 >= v56)
        {
          if (v61 < 0x41 || v61 >= v57)
          {
            v19 = 0;
            if (v61 < 0x61 || v61 >= v58)
            {
              goto LABEL_127;
            }

            v62 = -87;
          }

          else
          {
            v62 = -55;
          }
        }

        else
        {
          v62 = -48;
        }

        v63 = v45 * v60;
        v64 = (v45 * v60);
        if (v64 != v63)
        {
          goto LABEL_126;
        }

        v45 = v64 + (v61 + v62);
        if (v45 != v45)
        {
          goto LABEL_126;
        }

        ++v59;
        --v55;
      }

      while (v55);
LABEL_125:
      v16 = 0;
      v19 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D9B63C24(void *a1, uint64_t a2)
{
  v30 = a1;
  v3 = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = *(type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig(0) + 20);
  sub_1D99CD30C(a2 + v13, v12);
  v14 = *(v4 + 48);
  v15 = v14(v12, 1, v3);
  result = sub_1D99CD37C(v12);
  if (v15 != 1)
  {
    sub_1D99CD30C(a2 + v13, v9);
    if (v14(v9, 1, v3) == 1)
    {
      *v6 = 0;
      *(v6 + 2) = 0;
      sub_1D9C7D3BC();
      if (v14(v9, 1, v3) != 1)
      {
        sub_1D99CD37C(v9);
      }
    }

    else
    {
      sub_1D9B63F54(v9, v6);
    }

    v17 = v30[3];
    v18 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v17);
    v19 = (*(v18 + 16))(v17, v18);
    v21 = v20;
    if (*v6 <= v21)
    {
      v22 = v19;
      v23 = *v6 <= v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      if (v20 <= 0.0)
      {
        return sub_1D9B63EF8(v6);
      }

      v26 = v19 / v20;
      v27 = *(v6 + 1);
      if (v27 <= 0.0 || v27 <= v26)
      {
        v28 = *(v6 + 2);
        if (v28 <= 0.0 || v28 >= v26)
        {
          return sub_1D9B63EF8(v6);
        }

        v24 = 3;
      }

      else
      {
        v24 = 2;
      }
    }

    else
    {
      v24 = 1;
    }

    sub_1D9A72694();
    swift_allocError();
    *v25 = v24;
    swift_willThrow();
    return sub_1D9B63EF8(v6);
  }

  return result;
}

uint64_t sub_1D9B63EF8(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9B63F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B63FB8@<X0>(void *a1@<X8>, float a2@<S0>)
{
  v4 = sub_1D9C7BD5C();
  v39 = v5;
  v40 = v4;
  sub_1D9C7BD6C();
  v6 = type metadata accessor for ObjectKnowledge();
  sub_1D9C7B7EC();

  v7 = sub_1D9C7BD2C();
  v37 = v8;
  v38 = v7;
  v9 = sub_1D9C7BD2C();
  v35 = v10;
  v36 = v9;
  sub_1D9C7BD4C();
  sub_1D9C7B7EC();

  v11 = sub_1D9B64370();
  v12 = sub_1D9C7BD5C();
  v34 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52518);
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520A0) - 8);
  v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D9C85660;
  v17 = v16 + v15;
  v18 = (v17 + v14[14]);
  sub_1D9C7B97C();
  *v18 = sub_1D9C7BD5C();
  v18[1] = v19;
  v20 = sub_1D9A449E0(v16);
  swift_setDeallocating();
  sub_1D99A6AE0(v17, &qword_1ECB520A0);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52520);
  v21 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52090) - 8);
  v22 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D9C85660;
  v24 = v23 + v22;
  v25 = v21[14];
  sub_1D9C7B97C();
  *(v24 + v25) = MEMORY[0x1E69E7CD0];
  v26 = sub_1D9A44BD0(v23);
  swift_setDeallocating();
  sub_1D99A6AE0(v24, &qword_1ECB52090);
  swift_deallocClassInstance();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v40;
  a1[3] = v39;
  *(a1 + v6[7]) = 1065353216;
  v27 = (a1 + v6[8]);
  *v27 = v38;
  v27[1] = v37;
  v28 = (a1 + v6[9]);
  *v28 = v36;
  v28[1] = v35;
  *(a1 + v6[11]) = v11;
  v29 = (a1 + v6[12]);
  v29[2] = 0u;
  v29[3] = 0u;
  *v29 = 0u;
  v29[1] = 0u;
  v30 = a1 + v6[13];
  *v30 = 0;
  v30[8] = 1;
  *(a1 + v6[14]) = xmmword_1D9C8CD70;
  v31 = a1 + v6[15];
  *v31 = 0;
  *(v31 + 4) = 0;
  *(v31 + 2) = v12;
  *(v31 + 3) = v34;
  *(v31 + 4) = v20;
  *(v31 + 5) = 0x3FF0000000000000;
  v31[48] = 0;
  *(v31 + 7) = 0;
  *(v31 + 8) = 0xE000000000000000;
  *(v31 + 9) = 0;
  *(v31 + 10) = 0xE000000000000000;
  *(v31 + 12) = 0;
  *(v31 + 13) = 0;
  *(v31 + 11) = v26;
  *(v31 + 28) = 0;
  *(a1 + v6[16]) = a2;
  v32 = *(*(v6 - 1) + 56);

  return v32(a1, 0, 1, v6);
}

char *sub_1D9B64370()
{
  sub_1D9C7BD7C();
  v0 = sub_1D9C7E7AC();
  v2 = v1;
  v3 = sub_1D9AF95F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1D9AF95F4((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[64 * v5];
  *(v6 + 4) = 0x73676E6976726573;
  *(v6 + 5) = 0xE800000000000000;
  *(v6 + 6) = v0;
  *(v6 + 7) = v2;
  *(v6 + 8) = 0x676E69727473;
  *(v6 + 9) = 0xE600000000000000;
  *(v6 + 10) = 0x3233746E69;
  *(v6 + 11) = 0xE500000000000000;
  sub_1D9C7BD3C();
  v7 = sub_1D9C7E7AC();
  v10 = *(v3 + 2);
  v9 = *(v3 + 3);
  if (v10 >= v9 >> 1)
  {
    v13 = v7;
    v14 = v8;
    v15 = sub_1D9AF95F4((v9 > 1), v10 + 1, 1, v3);
    v8 = v14;
    v3 = v15;
    v7 = v13;
  }

  *(v3 + 2) = v10 + 1;
  v11 = &v3[64 * v10];
  *(v11 + 4) = 0xD000000000000012;
  *(v11 + 5) = 0x80000001D9CAAF60;
  *(v11 + 6) = v7;
  *(v11 + 7) = v8;
  *(v11 + 8) = 0x676E69727473;
  *(v11 + 9) = 0xE600000000000000;
  *(v11 + 10) = 0x3233746E69;
  *(v11 + 11) = 0xE500000000000000;
  return v3;
}

void *sub_1D9B64514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v88 = a3;
  v86 = a4;
  v87 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v78 - v7;
  v9 = type metadata accessor for EspressoModel(0);
  v85 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v78 - v13;
  v15 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v92[0]) = *(a1 + 104);
  v18 = v89;
  result = sub_1D9B65230(v92, *(a1 + 128));
  if (!v18)
  {
    v80 = v9;
    v81 = v8;
    v82 = v14;
    v89 = 0;
    v20 = *(v4 + 16);
    v21 = result;
    v84 = v17;
    sub_1D9B6242C(v4 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo, v17, type metadata accessor for MLModelInfo);
    v79 = v11;
    if (v21)
    {

      v83 = sub_1D9BDBB08(v22);
    }

    else
    {
      v83 = 0;
    }

    v23 = swift_allocObject();
    swift_weakInit();
    sub_1D99A170C(a1, v92);
    v24 = swift_allocObject();
    v25 = v92[7];
    *(v24 + 136) = v92[6];
    *(v24 + 152) = v25;
    *(v24 + 168) = v92[8];
    v26 = v92[3];
    *(v24 + 72) = v92[2];
    *(v24 + 88) = v26;
    v27 = v92[5];
    *(v24 + 104) = v92[4];
    *(v24 + 120) = v27;
    v28 = v92[1];
    *(v24 + 40) = v92[0];
    *(v24 + 16) = v87;
    *(v24 + 24) = v88;
    *(v24 + 32) = v23;
    v29 = v93;
    *(v24 + 56) = v28;
    *(v24 + 184) = v29;
    *(v24 + 192) = v21;
    v30 = *(a1 + 120);

    sub_1D9B7E0E0(v30);
    v31 = v89;
    sub_1D9C1947C(v91);
    if (v31)
    {

      v32 = v84;
LABEL_24:
      sub_1D99A19C0(v32, type metadata accessor for MLModelInfo);
    }

    v88 = v23;
    v89 = 0;
    v32 = v84;
    if (v20)
    {
      if (v20 == 1)
      {
        sub_1D99A17C8(v91, v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
        v34 = v80;
        v33 = v81;
        if (swift_dynamicCast())
        {
          v35 = a1;
          (*(v85 + 56))(v33, 0, 1, v34);
          v36 = v33;
          v37 = v82;
          sub_1D99A18F0(v36, v82);
          v38 = v79;
          sub_1D9B6242C(v37, v79, type metadata accessor for EspressoModel);
          v39 = *(a1 + 144);
          v40 = swift_allocObject();
          *(v40 + 16) = sub_1D9B65C54;
          *(v40 + 24) = v24;
          type metadata accessor for EspressoRequest(0);
          v41 = swift_allocObject();
          sub_1D9B6242C(v38, v41 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model, type metadata accessor for EspressoModel);
          *(v41 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_features) = 0;
          *(v41 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_vnScalingMode) = 2;
          v42 = v41 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest;
          *v42 = 0;
          *(v42 + 8) = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(v42 + 16) = _Q0;
          *(v41 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_outputs) = v83;
          v48 = (v41 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_completionHandler);
          *v48 = sub_1D99A19B8;
          v48[1] = v40;
          v49 = qword_1EDD349F0;

          if (v49 != -1)
          {
            swift_once();
          }

          v50 = qword_1EDD41F40;

          sub_1D99A19C0(v38, type metadata accessor for EspressoModel);
          *(v41 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_engineResult) = v50;
          *(v41 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_usesCPUOnly) = 0;
          *(v41 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_metricsBucket) = v39;
          v98.origin.x = 0.0;
          v98.origin.y = 0.0;
          v98.size.width = 1.0;
          v98.size.height = 1.0;
          *(v41 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest) = CGRectIntersection(*(v35 + 40), v98);
          v51 = v86;
          v86[3] = &type metadata for EspressoModelRequest;
          v51[4] = &off_1F5533650;

          *v51 = v41;
          sub_1D99A19C0(v82, type metadata accessor for EspressoModel);
          goto LABEL_19;
        }

        (*(v85 + 56))(v33, 1, 1, v34);
        sub_1D99A1888(v33);
      }

      else
      {

        sub_1D99A17C8(v91, v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
        type metadata accessor for E5Model();
        if (swift_dynamicCast())
        {
          v67 = a1;
          v68 = v95;
          v69 = *(a1 + 144);
          v70 = swift_allocObject();
          *(v70 + 16) = sub_1D9B65C54;
          *(v70 + 24) = v24;
          type metadata accessor for E5Request();
          v71 = swift_allocObject();
          *(v71 + 16) = v68;
          *(v71 + 24) = 2;
          *(v71 + 32) = *&v68[OBJC_IVAR____TtC12VisualLookUp7E5Model_preferredMetalDevice];
          *(v71 + 40) = sub_1D99A1880;
          *(v71 + 48) = v70;
          *(v71 + 56) = 0;
          *(v71 + 64) = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(v71 + 72) = _Q0;
          *(v71 + 88) = 0;
          v73 = qword_1EDD349F0;
          swift_retain_n();

          swift_unknownObjectRetain();

          if (v73 != -1)
          {
            swift_once();
          }

          v74 = qword_1EDD41F40;

          *(v71 + 96) = v74;
          *(v71 + 104) = v69;
          v100.origin.x = 0.0;
          v100.origin.y = 0.0;
          v100.size.width = 1.0;
          v100.size.height = 1.0;
          *(v71 + 56) = CGRectIntersection(*(v67 + 40), v100);
          v75 = v86;
          v86[3] = &type metadata for E5ModelRequest;
          v75[4] = &off_1F552E318;

          *v75 = v71;
          goto LABEL_19;
        }
      }

      sub_1D99A182C();
      swift_allocError();
      *v76 = 0xD00000000000001BLL;
      *(v76 + 8) = 0x80000001D9CA3A70;
      *(v76 + 16) = 3;
      swift_willThrow();
    }

    else
    {

      sub_1D99A7E00(*(v32 + *(v15 + 32)), v94);
      v52 = *(a1 + 144);
      type metadata accessor for DurationMeasurement();
      swift_allocObject();

      v53 = sub_1D9AFD4B8(v94, v52);

      sub_1D99A17C8(v91, v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
      if (swift_dynamicCast())
      {
        v54 = a1;
        v55 = v95;
        v56 = swift_allocObject();
        v56[2] = v53;
        v56[3] = sub_1D9B65C54;
        v56[4] = v24;
        v57 = objc_allocWithZone(MEMORY[0x1E6984468]);
        v90[4] = sub_1D99A1A20;
        v90[5] = v56;
        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 1107296256;
        v90[2] = sub_1D9BD99E0;
        v90[3] = &block_descriptor_13;
        v58 = _Block_copy(v90);
        v59 = v55;

        v60 = [v57 initWithModel:v59 completionHandler:v58];
        _Block_release(v58);

        [v60 setImageCropAndScaleOption_];
        v61 = v54[5];
        v62 = v54[6];
        v63 = v54[7];
        v64 = v54[8];
        v65 = v60;
        v99.origin.x = 0.0;
        v99.origin.y = 0.0;
        v99.size.width = 1.0;
        v99.size.height = 1.0;
        v96.origin.x = v61;
        v96.origin.y = v62;
        v96.size.width = v63;
        v96.size.height = v64;
        v97 = CGRectIntersection(v96, v99);
        [v65 setRegionOfInterest_];

        v66 = v86;
        v86[3] = &type metadata for VisionModelRequest;
        v66[4] = &off_1F55305B8;

        *v66 = v65;
LABEL_19:
        __swift_destroy_boxed_opaque_existential_0Tm(v91);
        sub_1D99A19C0(v84, type metadata accessor for MLModelInfo);
      }

      sub_1D99A182C();
      swift_allocError();
      *v77 = 0xD00000000000001BLL;
      *(v77 + 8) = 0x80000001D9CA3A70;
      *(v77 + 16) = 3;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v91);
    goto LABEL_24;
  }

  return result;
}

void sub_1D9B64FF8(uint64_t a1, void (*a2)(id *), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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
      v12 = Strong + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo;
      v13 = type metadata accessor for MLModelInfo(0);
      sub_1D99A7FF8(*(v12 + *(v13 + 32)), v27);
      v14 = *(a5 + 144);
      type metadata accessor for DurationMeasurement();
      swift_allocObject();

      sub_1D9AFD4B8(v27, v14);

      sub_1D9B65618(v24, a5, a6, &v19);
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

void *sub_1D9B65230(char *a1, char a2)
{
  v4 = *a1;
  if (sub_1D9A15C94(*a1) == 0x65727574616ELL && v5 == 0xE600000000000000)
  {

    goto LABEL_16;
  }

  v7 = sub_1D9C7E7DC();

  if (v7)
  {
LABEL_16:
    v13 = 0xD000000000000010;
    v14 = v2 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo;
    v15 = 0x80000001D9CAAFF0;
    v16 = 0x80000001D9CAB010;
    v17 = a2;
    v18 = 0xD000000000000011;
    return sub_1D9C1B898(v17, v14, v13, v15, v18, v16);
  }

  if (sub_1D9A15C94(v4) == 0x73656C6974706572 && v8 == 0xE800000000000000)
  {
    goto LABEL_13;
  }

  v10 = sub_1D9C7E7DC();

  if (v10)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo, 0xD000000000000011, 0x80000001D9CAAFB0, 0xD000000000000012, 0x80000001D9CAAFD0);
  }

  if (sub_1D9A15C94(v4) == 0x736C616D6D616DLL && v11 == 0xE700000000000000)
  {
    goto LABEL_13;
  }

  v19 = sub_1D9C7E7DC();

  if (v19)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo, 0xD000000000000011, 0x80000001D9CAAFB0, 0xD000000000000012, 0x80000001D9CAAFD0);
  }

  if (sub_1D9A15C94(v4) == 0x7364726962 && v20 == 0xE500000000000000)
  {
    goto LABEL_13;
  }

  v21 = sub_1D9C7E7DC();

  if (v21)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo, 0xD000000000000011, 0x80000001D9CAAFB0, 0xD000000000000012, 0x80000001D9CAAFD0);
  }

  if (sub_1D9A15C94(v4) == 0x73746365736E69 && v22 == 0xE700000000000000)
  {
LABEL_13:

    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo, 0xD000000000000011, 0x80000001D9CAAFB0, 0xD000000000000012, 0x80000001D9CAAFD0);
  }

  v23 = sub_1D9C7E7DC();

  if (v23)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo, 0xD000000000000011, 0x80000001D9CAAFB0, 0xD000000000000012, 0x80000001D9CAAFD0);
  }

  if (sub_1D9A15C94(v4) == 1936158564 && v24 == 0xE400000000000000)
  {

LABEL_29:
    v26 = OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo;
    v13 = 0x676972745F676F64;
    v15 = 0xEE00676E69726567;
    v27 = 1600614244;
LABEL_30:
    v18 = v27 | 0x6F63657200000000;
    v16 = 0xEF6E6F6974696E67;
    v14 = v2 + v26;
    v17 = a2;
    return sub_1D9C1B898(v17, v14, v13, v15, v18, v16);
  }

  v25 = sub_1D9C7E7DC();

  if (v25)
  {
    goto LABEL_29;
  }

  if (sub_1D9A15C94(v4) == 1937006947 && v28 == 0xE400000000000000)
  {

LABEL_35:
    v26 = OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo;
    v13 = 0x676972745F746163;
    v15 = 0xEE00676E69726567;
    v27 = 1601462627;
    goto LABEL_30;
  }

  v29 = sub_1D9C7E7DC();

  if (v29)
  {
    goto LABEL_35;
  }

  return 0;
}

uint64_t sub_1D9B65618@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v10 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D99F8B94(a1, *(a2 + 112), a2, a3);
  if (!v5)
  {
    v38 = a4;
    v41 = result;
    v15 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v16 = (*(v14 + 8))(v15, v14);
    sub_1D9B6242C(v4 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo, v12, type metadata accessor for MLModelInfo);
    if (a3 && *(a3 + 16) && (v17 = sub_1D99ED894(0x6E69646465626D65, 0xE900000000000067), (v18 & 1) != 0))
    {
      v19 = (*(a3 + 56) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
    }

    else
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    v22 = *(v16 + 24);
    if (*(v22 + 16) && (v23 = sub_1D99ED894(0x6E69646465626D65, 0xE900000000000067), (v24 & 1) != 0))
    {
      v37 = v20;
      v25 = *(*(v22 + 56) + 8 * v23);
      v27 = sub_1D9C18DE8(v25);
      v36 = sub_1D9C19020(v27);
      v28 = &v12[*(v10 + 24)];
      v29 = *(v28 + 1);
      v39 = *v28;
      v40 = v29;

      MEMORY[0x1DA73DF90](v37, v21);

      v30 = v39;
      v31 = v40;
      sub_1D99A19C0(v12, type metadata accessor for MLModelInfo);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515B8);
      result = swift_allocObject();
      *(result + 16) = xmmword_1D9C85660;
      *(result + 32) = v36;
      *(result + 40) = v30;
      *(result + 48) = v31;
      v32 = *(a2 + 88);
      v33 = v38;
      *v38 = *(a2 + 72);
      v33[1] = v32;
      v34 = v41;
      *(v33 + 4) = result;
      *(v33 + 5) = v34;
    }

    else
    {

      sub_1D99A182C();
      swift_allocError();
      *v26 = 0xD00000000000001FLL;
      *(v26 + 8) = 0x80000001D9CAAEC0;
      *(v26 + 16) = 4;
      swift_willThrow();

      return sub_1D99A19C0(v12, type metadata accessor for MLModelInfo);
    }
  }

  return result;
}

BOOL sub_1D9B6596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = v3 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo;
  if (a3)
  {
    v6 = a3;
    v7 = type metadata accessor for MLModelInfo(0);
    v8 = sub_1D9AEA4B8(*(v5 + *(v7 + 24)), *(v5 + *(v7 + 24) + 8), a2);
    LOBYTE(a3) = v6;
    if (!v8)
    {
      return 0;
    }
  }

  if ((a3 & 2) == 0)
  {
    return 1;
  }

  v10 = (v5 + *(type metadata accessor for MLModelInfo(0) + 24));
  v11 = *v10;
  v12 = v10[1];
  return sub_1D9AEA42C(*v10, v12, a2) && sub_1D9AEA4B8(v11, v12, a2);
}

uint64_t sub_1D9B65A3C()
{
  sub_1D99A19C0(v0 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo, type metadata accessor for MLModelInfo);
}

uint64_t sub_1D9B65AA0()
{
  v1 = OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo;

  sub_1D99A19C0(v0 + v1, type metadata accessor for MLModelInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NatureworldModelFactory()
{
  result = qword_1EDD329B8;
  if (!qword_1EDD329B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B65BA8()
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

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9B65C80@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D9C7D8DC();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v45 - v12;
  v13 = sub_1D9C7DCDC();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v51 = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0);
  MEMORY[0x1EEE9AC00](v51);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = [objc_opt_self() defaultManager];
  v20 = sub_1D9C7DC4C();
  v21 = [v19 contentsAtPath_];

  if (v21)
  {
    v50 = a3;
    v22 = sub_1D9C7B87C();
    v24 = v23;

    v25 = sub_1D9B88EB8(v22, v24);
    v45 = a1;
    v32 = v25;
    v34 = v33;
    sub_1D99A5748(v22, v24);

    sub_1D9C7DCBC();
    v46 = v32;
    v47 = v34;
    sub_1D9C7DC9C();
    sub_1D9B663E0();
    memset(v55, 0, sizeof(v55));
    v56 = 0;
    sub_1D9C7D69C();
    v35 = v48;
    static Logger.argos.getter(v48);
    sub_1D9B66438(v18, v15);
    v36 = sub_1D9C7D8BC();
    v37 = sub_1D9C7E09C();
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v54 = v40;
      *v39 = 136315138;
      swift_beginAccess();
      type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);

      v41 = sub_1D9C7DB6C();
      v43 = v42;

      sub_1D9B6649C(v15);
      v44 = sub_1D9A0E224(v41, v43, &v54);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1D9962000, v36, v37, "Loaded ParseConfig with configs for the following domains: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x1DA7405F0](v40, -1, -1);
      MEMORY[0x1DA7405F0](v39, -1, -1);
      sub_1D99A5748(v46, v47);

      (*(v52 + 8))(v35, v53);
    }

    else
    {
      sub_1D99A5748(v46, v47);

      (*(v52 + 8))(v35, v53);
      sub_1D9B6649C(v15);
    }

    return sub_1D9B664F8(v18, v50);
  }

  else
  {

    static Logger.argos.getter(v10);

    v26 = sub_1D9C7D8BC();
    v27 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v55[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1D9A0E224(a1, a2, v55);
      _os_log_impl(&dword_1D9962000, v26, v27, "Failed to load data at path %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x1DA7405F0](v29, -1, -1);
      MEMORY[0x1DA7405F0](v28, -1, -1);
    }

    (*(v52 + 8))(v10, v53);
    sub_1D9C7D3BC();
    v30 = *(v51 + 20);
    if (qword_1EDD31028 != -1)
    {
      swift_once();
    }

    *(a3 + v30) = qword_1EDD31030;
  }
}

unint64_t sub_1D9B663E0()
{
  result = qword_1EDD30CC8;
  if (!qword_1EDD30CC8)
  {
    type metadata accessor for Argos_Protos_Queryflow_ParseConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD30CC8);
  }

  return result;
}

uint64_t sub_1D9B66438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B6649C(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9B664F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B6655C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  v6 = sub_1D9C7E93C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D9C7E7DC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D9B66654(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1D9C7E8DC();
    sub_1D9A15C94(a1);
    sub_1D9C7DD6C();

    v4 = sub_1D9C7E93C();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xE300000000000000;
        v9 = 7631457;
        switch(*(*(a2 + 48) + v6))
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
            goto LABEL_23;
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
LABEL_23:
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
            goto LABEL_30;
          case 0x14:
            v9 = 0xD000000000000011;
            v8 = 0x80000001D9CA2950;
            break;
          case 0x15:
            v11 = 1869903201;
LABEL_30:
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
              goto LABEL_84;
            }

            goto LABEL_85;
          case 2:
            v12 = 0xE800000000000000;
            if (v9 != 0x6B72616D646E616CLL)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 3:
            v12 = 0xEF6B72616D646E61;
            if (v9 != 0x4C6C61727574616ELL)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 4:
            v12 = 0xE500000000000000;
            if (v9 != 0x616964656DLL)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 5:
            v12 = 0xE400000000000000;
            if (v9 != 1802465122)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 6:
            v12 = 0xE500000000000000;
            if (v9 != 0x6D75626C61)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 7:
            v12 = 0xE400000000000000;
            if (v9 != 1937006947)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 8:
            v12 = 0xE400000000000000;
            if (v9 != 1936158564)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 9:
            v12 = 0xE700000000000000;
            v15 = 1835626081;
            goto LABEL_66;
          case 10:
            v12 = 0xE500000000000000;
            if (v9 != 0x7364726962)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 11:
            v12 = 0xE700000000000000;
            v14 = 0x746365736E69;
            goto LABEL_67;
          case 12:
            v12 = 0xE800000000000000;
            if (v9 != 0x73656C6974706572)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 13:
            v12 = 0xE700000000000000;
            v15 = 1835884909;
LABEL_66:
            v14 = v15 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_67:
            if (v9 != (v14 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 14:
            v12 = 0x80000001D9CA2910;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 15:
            v12 = 0xE700000000000000;
            if (v9 != 0x6C657261707061)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 16:
            v12 = 0xEB00000000736569;
            if (v9 != 0x726F737365636361)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 17:
            v12 = 0xE400000000000000;
            if (v9 != 1685024614)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 18:
            v12 = 0xEA0000000000746ELL;
            if (v9 != 0x6F726665726F7473)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 19:
            v16 = 1852270963;
            goto LABEL_80;
          case 20:
            v12 = 0x80000001D9CA2950;
            if (v9 != 0xD000000000000011)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 21:
            v16 = 1869903201;
LABEL_80:
            v12 = 0xEA00000000006C6FLL;
            if (v9 != (v16 | 0x626D795300000000))
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 22:
            v12 = 0xEF6C6F626D79536FLL;
            if (v9 != 0x676F4C646E617262)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 23:
            v12 = 0xE700000000000000;
            v13 = 0x65646F63726162;
            goto LABEL_83;
          case 24:
            v12 = 0xE900000000000065;
            if (v9 != 0x727574706C756373)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 25:
            v12 = 0xE700000000000000;
            if (v9 != 0x656E696C796B73)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 26:
            v12 = 0xE800000000000000;
            if (v9 != 0x44327463656A626FLL)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          default:
LABEL_83:
            if (v9 != v13)
            {
              goto LABEL_85;
            }

LABEL_84:
            if (v8 == v12)
            {

              v17 = 1;
              return v17 & 1;
            }

LABEL_85:
            v17 = sub_1D9C7E7DC();

            if (v17)
            {
              return v17 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v17 & 1;
            }

            break;
        }
      }
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D9B66D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v173 = a3;
  v5 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = a2;
  sub_1D99B1BBC(a2, v7);
  v174 = v7;
  v175 = a1;
  v8 = *(v7 + 6);
  v9 = *(v8 + 16);
  v197 = v8;
  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC8];
    goto LABEL_18;
  }

  v10 = 0;
  v11 = (v8 + 32);
  v12 = v9 - 1;
  v13 = MEMORY[0x1E69E7CC8];
  do
  {
    v14 = v11[1];
    v218 = *v11;
    v219 = v14;
    v15 = v11[2];
    v16 = v11[3];
    v17 = v11[5];
    v222 = v11[4];
    v223 = v17;
    v220 = v15;
    v221 = v16;
    v18 = v11[6];
    v19 = v11[7];
    v20 = v11[8];
    *&v226[13] = *(v11 + 141);
    v225 = v19;
    *v226 = v20;
    v224 = v18;
    v21 = v218;
    sub_1D99AE054(&v218, &v209);
    sub_1D99AE054(&v218, &v209);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v203[0] = v13;
    v23 = sub_1D99EE138(v21);
    v25 = v13[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
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
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v29 = v24;
    if (v13[3] < v28)
    {
      sub_1D9C08598(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1D99EE138(v21);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_74;
      }

LABEL_8:
      if (v29)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v46 = v23;
    sub_1D9C138D8();
    v23 = v46;
    if (v29)
    {
LABEL_9:
      v13 = *&v203[0];
      v31 = (*(*&v203[0] + 56) + 160 * v23);
      v32 = v31[1];
      v209 = *v31;
      v210 = v32;
      v33 = v31[5];
      v35 = v31[2];
      v34 = v31[3];
      v213 = v31[4];
      v214 = v33;
      v211 = v35;
      v212 = v34;
      v37 = v31[7];
      v36 = v31[8];
      v38 = *(v31 + 141);
      v215 = v31[6];
      *&v217[13] = v38;
      v216 = v37;
      *v217 = v36;
      v39 = v219;
      *v31 = v218;
      v31[1] = v39;
      v40 = v220;
      v41 = v221;
      v42 = v223;
      v31[4] = v222;
      v31[5] = v42;
      v31[2] = v40;
      v31[3] = v41;
      v43 = v224;
      v44 = v225;
      v45 = *v226;
      *(v31 + 141) = *&v226[13];
      v31[7] = v44;
      v31[8] = v45;
      v31[6] = v43;
      sub_1D99AE0B0(&v209);
      sub_1D99AE0B0(&v218);
      if (v12 == v10)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_12:
    v13 = *&v203[0];
    *(*&v203[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
    *(v13[6] + v23) = v21;
    v47 = (v13[7] + 160 * v23);
    v48 = *&v226[13];
    v50 = v225;
    v49 = *v226;
    v47[6] = v224;
    v47[7] = v50;
    v47[8] = v49;
    *(v47 + 141) = v48;
    v52 = v222;
    v51 = v223;
    v53 = v221;
    v47[2] = v220;
    v47[3] = v53;
    v47[4] = v52;
    v47[5] = v51;
    v54 = v219;
    *v47 = v218;
    v47[1] = v54;
    sub_1D99AE0B0(&v218);
    v55 = v13[2];
    v27 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v27)
    {
      goto LABEL_69;
    }

    v13[2] = v56;
    if (v12 == v10)
    {
      goto LABEL_16;
    }

LABEL_14:
    ++v10;
    v11 += 10;
  }

  while (v10 < *(v197 + 16));
  __break(1u);
LABEL_16:
  a1 = v175;
LABEL_18:
  v57 = *(a1 + 48);
  v58 = *(v57 + 16);
  if (!v58)
  {
    goto LABEL_53;
  }

  v59 = 0;
  v60 = (v57 + 32);
  v61 = v58 - 1;
  v176 = v58 - 1;
  v177 = v57;
  while (2)
  {
    v62 = v60[1];
    v218 = *v60;
    v219 = v62;
    v63 = v60[2];
    v64 = v60[3];
    v65 = v60[5];
    v222 = v60[4];
    v223 = v65;
    v220 = v63;
    v221 = v64;
    v66 = v60[6];
    v67 = v60[7];
    v68 = v60[8];
    *&v226[13] = *(v60 + 141);
    v225 = v67;
    *v226 = v68;
    v224 = v66;
    v69 = v218;
    if (!v13[2])
    {
      sub_1D99AE054(&v218, &v209);
LABEL_31:
      v99 = v59;
      v100 = v57;
      v101 = swift_isUniquelyReferenced_nonNull_native();
      *&v203[0] = v13;
      v102 = v69;
      v103 = sub_1D99EE138(v69);
      v105 = v13[2];
      v106 = (v104 & 1) == 0;
      v27 = __OFADD__(v105, v106);
      v107 = v105 + v106;
      if (v27)
      {
        goto LABEL_68;
      }

      v108 = v104;
      if (v13[3] >= v107)
      {
        if ((v101 & 1) == 0)
        {
          v157 = v103;
          sub_1D9C138D8();
          v103 = v157;
        }
      }

      else
      {
        sub_1D9C08598(v107, v101);
        v103 = sub_1D99EE138(v102);
        if ((v108 & 1) != (v109 & 1))
        {
          goto LABEL_74;
        }
      }

      v57 = v100;
      v59 = v99;
      if (v108)
      {
        v13 = *&v203[0];
        v110 = (*(*&v203[0] + 56) + 160 * v103);
        v111 = v110[1];
        v209 = *v110;
        v210 = v111;
        v112 = v110[5];
        v114 = v110[2];
        v113 = v110[3];
        v213 = v110[4];
        v214 = v112;
        v211 = v114;
        v212 = v113;
        v116 = v110[7];
        v115 = v110[8];
        v117 = v110[6];
        *&v217[13] = *(v110 + 141);
        v216 = v116;
        *v217 = v115;
        v215 = v117;
        v118 = v219;
        *v110 = v218;
        v110[1] = v118;
        v119 = v220;
        v120 = v221;
        v121 = v223;
        v110[4] = v222;
        v110[5] = v121;
        v110[2] = v119;
        v110[3] = v120;
        v122 = v224;
        v123 = v225;
        v124 = *v226;
        *(v110 + 141) = *&v226[13];
        v110[7] = v123;
        v110[8] = v124;
        v110[6] = v122;
        sub_1D99AE0B0(&v209);
        if (v61 == v99)
        {
          break;
        }
      }

      else
      {
        v13 = *&v203[0];
        *(*&v203[0] + 8 * (v103 >> 6) + 64) |= 1 << v103;
        *(v13[6] + v103) = v102;
        v125 = (v13[7] + 160 * v103);
        v126 = *&v226[13];
        v128 = v225;
        v127 = *v226;
        v125[6] = v224;
        v125[7] = v128;
        v125[8] = v127;
        *(v125 + 141) = v126;
        v130 = v222;
        v129 = v223;
        v131 = v221;
        v125[2] = v220;
        v125[3] = v131;
        v125[4] = v130;
        v125[5] = v129;
        v132 = v219;
        *v125 = v218;
        v125[1] = v132;
        v133 = v13[2];
        v27 = __OFADD__(v133, 1);
        v134 = v133 + 1;
        if (v27)
        {
          goto LABEL_70;
        }

        v13[2] = v134;
        if (v61 == v99)
        {
          break;
        }
      }

      goto LABEL_50;
    }

    sub_1D99AE054(&v218, &v209);
    v70 = sub_1D99EE138(v69);
    if ((v71 & 1) == 0)
    {
      goto LABEL_31;
    }

    v196 = v69;
    v72 = *(&v225 + 1);
    v73 = v13[7] + 160 * v70;
    v74 = *(v73 + 16);
    v209 = *v73;
    v210 = v74;
    v75 = *(v73 + 80);
    v77 = *(v73 + 32);
    v76 = *(v73 + 48);
    v213 = *(v73 + 64);
    v214 = v75;
    v211 = v77;
    v212 = v76;
    v79 = *(v73 + 112);
    v78 = *(v73 + 128);
    v80 = *(v73 + 96);
    *&v217[13] = *(v73 + 141);
    v216 = v79;
    *v217 = v78;
    v215 = v80;
    v208 = *(v73 + 24);
    v81 = *(v73 + 57);
    v206 = *(v73 + 41);
    v207[0] = v81;
    *(v207 + 15) = *(v73 + 72);
    v178 = v209;
    v82 = *(&v214 + 1);
    v83 = v214;
    v84 = v80;
    v205[0] = *(v73 + 130);
    *(v205 + 11) = *(v73 + 141);
    v85 = v79;
    v194 = *(&v214 + 1);
    v195 = v214;
    v86 = *(&v80 + 1);
    v193 = v80;
    if (*(&v79 + 1) < *(&v225 + 1))
    {
      v82 = *(&v223 + 1);
      v83 = v223;
      v86 = *(&v224 + 1);
      v84 = v224;
    }

    sub_1D99AE054(&v209, v203);
    v181 = v82;
    v182 = v83;
    v179 = v86;
    v180 = v84;
    sub_1D99FE1B4(v83, v82);
    sub_1D99FEF84(v195, v194);
    if (v72 <= *(&v85 + 1))
    {
      v72 = *(&v85 + 1);
    }

    v185 = BYTE13(v225);
    v191 = HIBYTE(v216);
    v192 = BYTE12(v216);
    v187 = HIBYTE(v225);
    v188 = BYTE13(v216);
    LODWORD(v195) = BYTE14(v225);
    v87 = *(&v209 + 1);
    v88 = v210;
    v183 = BYTE12(v225);
    v184 = BYTE14(v216);
    v186 = v217[0];
    LODWORD(v194) = v226[1];
    v189 = v217[1];
    v190 = v226[0];
    v89 = BYTE8(v220);
    LODWORD(v193) = BYTE8(v211);
    v202 = v208;
    v200 = v206;
    v201[0] = v207[0];
    *(v201 + 15) = *(v207 + 15);
    v199[0] = v205[0];
    *(v199 + 11) = *(v205 + 11);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v198 = v13;
    v92 = sub_1D99EE138(v196);
    v93 = v13[2];
    v94 = (v91 & 1) == 0;
    v95 = v93 + v94;
    if (__OFADD__(v93, v94))
    {
      goto LABEL_71;
    }

    v96 = v91;
    if (v13[3] >= v95)
    {
      sub_1D99AE0B0(&v218);
      if ((v90 & 1) == 0)
      {
        sub_1D9C138D8();
      }
    }

    else
    {
      sub_1D9C08598(v95, v90);
      v97 = sub_1D99EE138(v196);
      if ((v96 & 1) != (v98 & 1))
      {
        goto LABEL_74;
      }

      v92 = v97;
      sub_1D99AE0B0(&v218);
    }

    v135 = (v192 | v183) & 1;
    v136 = (v188 | v185) & 1;
    v137 = (v191 | v187) & 1;
    v138 = (v195 | v184) & 1;
    v139 = (v190 | v186) & 1;
    v140 = (v194 | v189) & 1;
    v141 = (v89 | v193) & 1;
    if (v96)
    {
      v13 = v198;
      v142 = v198[7] + 160 * v92;
      v143 = *(v142 + 16);
      v203[0] = *v142;
      v203[1] = v143;
      v144 = *(v142 + 80);
      v146 = *(v142 + 32);
      v145 = *(v142 + 48);
      v203[4] = *(v142 + 64);
      v203[5] = v144;
      v203[2] = v146;
      v203[3] = v145;
      v148 = *(v142 + 112);
      v147 = *(v142 + 128);
      v149 = *(v142 + 96);
      *(v204 + 13) = *(v142 + 141);
      v203[7] = v148;
      v204[0] = v147;
      v203[6] = v149;
      *v142 = v178;
      *(v142 + 8) = v87;
      *(v142 + 16) = v88;
      *(v142 + 24) = v202;
      *(v142 + 40) = v141;
      v151 = v200;
      v150 = v201[0];
      *(v142 + 72) = *(v201 + 15);
      *(v142 + 57) = v150;
      *(v142 + 41) = v151;
      *(v142 + 80) = v182;
      *(v142 + 88) = v181;
      *(v142 + 96) = v180;
      *(v142 + 104) = v179;
      *(v142 + 112) = v85;
      *(v142 + 116) = v72;
      *(v142 + 120) = HIDWORD(v85);
      *(v142 + 124) = v135;
      *(v142 + 125) = v136;
      *(v142 + 126) = v138;
      *(v142 + 127) = v137;
      *(v142 + 128) = v139;
      *(v142 + 129) = v140;
      *(v142 + 141) = *(v199 + 11);
      *(v142 + 130) = v199[0];
      sub_1D99AE0B0(v203);
    }

    else
    {
      v13 = v198;
      v198[(v92 >> 6) + 8] |= 1 << v92;
      *(v13[6] + v92) = v196;
      v152 = v13[7] + 160 * v92;
      *v152 = v178;
      *(v152 + 8) = v87;
      *(v152 + 16) = v88;
      *(v152 + 24) = v202;
      *(v152 + 40) = v141;
      v154 = v200;
      v153 = v201[0];
      *(v152 + 72) = *(v201 + 15);
      *(v152 + 57) = v153;
      *(v152 + 41) = v154;
      *(v152 + 80) = v182;
      *(v152 + 88) = v181;
      *(v152 + 96) = v180;
      *(v152 + 104) = v179;
      *(v152 + 112) = v85;
      *(v152 + 116) = v72;
      *(v152 + 120) = HIDWORD(v85);
      *(v152 + 124) = v135;
      *(v152 + 125) = v136;
      *(v152 + 126) = v138;
      *(v152 + 127) = v137;
      *(v152 + 128) = v139;
      *(v152 + 129) = v140;
      *(v152 + 130) = v199[0];
      *(v152 + 141) = *(v199 + 11);
      v155 = v13[2];
      v27 = __OFADD__(v155, 1);
      v156 = v155 + 1;
      if (v27)
      {
        goto LABEL_72;
      }

      v13[2] = v156;
    }

    v61 = v176;
    v57 = v177;
    if (v176 != v59)
    {
LABEL_50:
      ++v59;
      v60 += 10;
      if (v59 >= *(v57 + 16))
      {
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

  a1 = v175;
LABEL_53:

  v159 = v174;
  sub_1D9A1870C(v158);

  sub_1D9A18618(v160);

  sub_1D9A18524(v161);
  v162 = *(v159 + 88);
  if (v162)
  {
    v163 = *(v159 + 80);
    v164 = *(v159 + 96);
  }

  else
  {
    v163 = *(a1 + 80);
    v162 = *(a1 + 88);
    v164 = *(a1 + 96);
    sub_1D99CB864(v163, v162);
  }

  *(v159 + 80) = v163;
  *(v159 + 88) = v162;
  *(v159 + 96) = v164;
  v165 = v13[2];
  if (v165)
  {
    v166 = sub_1D9B8E190(v13[2], 0);
    v167 = sub_1D9B8E75C(&v218, v166 + 32, v165, v13);

    sub_1D99C74D4();
    if (v167 == v165)
    {

      v159 = v174;
      a1 = v175;
      goto LABEL_60;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    result = sub_1D9C7E84C();
    __break(1u);
  }

  else
  {

    v166 = MEMORY[0x1E69E7CC0];
LABEL_60:
    *(v159 + 48) = v166;
    v168 = *(v159 + 72);
    if (v168 <= *(a1 + 72))
    {
      v168 = *(a1 + 72);
    }

    *(v159 + 72) = v168;
    if (*(a1 + 104))
    {
      v169 = 1;
    }

    else
    {
      v169 = *(v172 + 104);
    }

    *(v159 + 104) = v169;

    sub_1D9A1842C(v170);
    sub_1D99B1BBC(v159, v173);

    return sub_1D99B1C88(v159);
  }

  return result;
}

__n128 sub_1D9B67854@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v10 = *(a1 + 116);
  v9 = *(a1 + 120);
  v29 = *(a1 + 124);
  v30 = *(a1 + 125);
  v31 = *(a1 + 127);
  v32 = *(a1 + 126);
  v33 = *(a1 + 128);
  v34 = *(a1 + 129);
  v35 = *(a1 + 40);
  v11 = *(a2 + 112);
  v42 = *(a2 + 96);
  v43 = v11;
  v44[0] = *(a2 + 128);
  *(v44 + 13) = *(a2 + 141);
  v12 = *(a2 + 48);
  v38 = *(a2 + 32);
  v39 = v12;
  v13 = *(a2 + 80);
  v40 = *(a2 + 64);
  v41 = v13;
  v14 = *(a2 + 16);
  *v37 = *a2;
  *&v37[16] = v14;
  v28 = *v37;
  v15 = v41;
  v16 = v43;
  if (*(&v43 + 1) >= v10)
  {
    v6 = *(&v41 + 1);
    v5 = v41;
    v8 = *(&v42 + 1);
    v7 = v42;
  }

  sub_1D99AE054(v37, v36);
  sub_1D99FE1B4(v5, v6);
  sub_1D99FEF84(v15, *(&v15 + 1));
  if (v10 > *(&v16 + 1))
  {
    v17 = v10;
  }

  else
  {
    v17 = *(&v16 + 1);
  }

  v18 = *(&v43 + 2);
  v19 = BYTE12(v43) | v29;
  if (v9 > *(&v43 + 2))
  {
    v18 = v9;
  }

  v20 = (BYTE13(v43) | v30) & 1;
  v21 = (HIBYTE(v43) | v31) & 1;
  v22 = (v32 | BYTE14(v43)) & 1;
  v23 = (v33 | LOBYTE(v44[0])) & 1;
  v24 = (v34 | BYTE1(v44[0])) & 1;
  v25 = v35 | BYTE8(v38);
  *a3 = v28;
  *(a3 + 8) = *&v37[8];
  *(a3 + 24) = *(a2 + 24);
  *(a3 + 40) = v25 & 1;
  v26 = *(a2 + 57);
  *(a3 + 72) = *(a2 + 72);
  *(a3 + 80) = v5;
  *(a3 + 57) = v26;
  *(a3 + 41) = *(a2 + 41);
  *(a3 + 88) = v6;
  *(a3 + 96) = v7;
  *(a3 + 104) = v8;
  *(a3 + 112) = v16;
  *(a3 + 116) = v17;
  *(a3 + 120) = v18;
  *(a3 + 124) = v19 & 1;
  *(a3 + 125) = v20;
  *(a3 + 126) = v22;
  *(a3 + 127) = v21;
  *(a3 + 128) = v23;
  *(a3 + 129) = v24;
  *(a3 + 130) = *(a2 + 130);
  result = *(a2 + 141);
  *(a3 + 141) = result;
  return result;
}

uint64_t sub_1D9B67A68()
{
  v1 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v43 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v46 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - v4;
  v6 = *v0;
  v42 = *(*v0 + 16);
  if (v42)
  {
    v7 = 0;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v40 = v6;
    v41 = &v40 - v4;
    while (v7 < *(v6 + 16))
    {
      v49 = v9;
      v50 = 0;
      v48 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v47 = *(v43 + 72);
      sub_1D99B1BBC(v6 + v48 + v47 * v7, v5);
      v10 = *(v5 + 6);
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = 0;
        v8 = (v10 + 32);
        v13 = v11 - 1;
        v14 = MEMORY[0x1E69E7CC0];
        do
        {
          v15 = &v8[160 * v12];
          v16 = v12;
          while (1)
          {
            if (v16 >= *(v10 + 16))
            {
              __break(1u);
              goto LABEL_30;
            }

            v17 = *(v15 + 1);
            v52 = *v15;
            v53 = v17;
            v18 = *(v15 + 2);
            v19 = *(v15 + 3);
            v20 = *(v15 + 5);
            v56 = *(v15 + 4);
            v57 = v20;
            v54 = v18;
            v55 = v19;
            v21 = *(v15 + 6);
            v22 = *(v15 + 7);
            v23 = *(v15 + 8);
            *(v60 + 13) = *(v15 + 141);
            v59 = v22;
            v60[0] = v23;
            v58 = v21;
            v12 = v16 + 1;
            if (HIBYTE(v22))
            {
              break;
            }

            v15 += 160;
            ++v16;
            if (v11 == v12)
            {
              goto LABEL_20;
            }
          }

          sub_1D99AE054(&v52, &v51);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61 = v14;
          v44 = v13;
          v45 = v8;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D99FE2D8(0, *(v14 + 16) + 1, 1);
            v14 = v61;
          }

          v26 = *(v14 + 16);
          v25 = *(v14 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1D99FE2D8((v25 > 1), v26 + 1, 1);
            v14 = v61;
          }

          *(v14 + 16) = v26 + 1;
          v27 = (v14 + 160 * v26);
          v28 = v53;
          v27[2] = v52;
          v27[3] = v28;
          v29 = v54;
          v30 = v55;
          v31 = v57;
          v27[6] = v56;
          v27[7] = v31;
          v27[4] = v29;
          v27[5] = v30;
          v32 = v58;
          v33 = v59;
          v34 = v60[0];
          *(v27 + 173) = *(v60 + 13);
          v27[9] = v33;
          v27[10] = v34;
          v27[8] = v32;
          v13 = v44;
          v8 = v45;
        }

        while (v44 != v16);
      }

      else
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

LABEL_20:
      *&v52 = v14;

      v8 = v50;
      sub_1D9B698EC(&v52);
      if (v8)
      {
        goto LABEL_31;
      }

      v35 = *(v52 + 16);

      v5 = v41;
      if (v35)
      {
        sub_1D99B1CE4(v41, v46);
        v9 = v49;
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v62 = v9;
        v6 = v40;
        if ((v36 & 1) == 0)
        {
          sub_1D99FE2B8(0, *(v9 + 16) + 1, 1);
          v9 = v62;
        }

        v38 = *(v9 + 16);
        v37 = *(v9 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1D99FE2B8(v37 > 1, v38 + 1, 1);
          v9 = v62;
        }

        *(v9 + 16) = v38 + 1;
        sub_1D99B1CE4(v46, v9 + v48 + v38 * v47);
      }

      else
      {
        sub_1D99B1C88(v41);
        v6 = v40;
        v9 = v49;
      }

      if (++v7 == v42)
      {
        return v9;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D9B67DFC()
{
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *(v2 + 16);
      v7 = (v2 + 32 + 160 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v6)
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v9 = v7[1];
        v29 = *v7;
        v30 = v9;
        v10 = v7[2];
        v11 = v7[3];
        v12 = v7[5];
        v33 = v7[4];
        v34 = v12;
        v31 = v10;
        v32 = v11;
        v13 = v7[6];
        v14 = v7[7];
        v15 = v7[8];
        *(v37 + 13) = *(v7 + 141);
        v36 = v14;
        v37[0] = v15;
        v35 = v13;
        v4 = v8 + 1;
        if (HIBYTE(v14))
        {
          break;
        }

        v7 += 10;
        ++v8;
        if (v3 == v4)
        {
          goto LABEL_15;
        }
      }

      sub_1D99AE054(&v29, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D99FE2D8(0, *(v5 + 16) + 1, 1);
        v5 = v38;
      }

      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      v1 = (v18 + 1);
      if (v18 >= v17 >> 1)
      {
        sub_1D99FE2D8((v17 > 1), v18 + 1, 1);
        v5 = v38;
      }

      *(v5 + 16) = v1;
      v19 = (v5 + 160 * v18);
      v20 = v30;
      v19[2] = v29;
      v19[3] = v20;
      v21 = v31;
      v22 = v32;
      v23 = v34;
      v19[6] = v33;
      v19[7] = v23;
      v19[4] = v21;
      v19[5] = v22;
      v24 = v35;
      v25 = v36;
      v26 = v37[0];
      *(v19 + 173) = *(v37 + 13);
      v19[9] = v25;
      v19[10] = v26;
      v19[8] = v24;
    }

    while (v3 - 1 != v8);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  *&v29 = v5;

  sub_1D9B698EC(&v29);

  return v29;
}

uint64_t sub_1D9B67FD4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *v1;
  v9 = *(*v1 + 16);
  if (!v9)
  {

    v11 = MEMORY[0x1E69E7CC0];
LABEL_38:

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_45:
      result = sub_1D9AF8CE0(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v30 = *(v11 + 2);
    v29 = *(v11 + 3);
    if (v30 >= v29 >> 1)
    {
      result = sub_1D9AF8CE0((v29 > 1), v30 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v30 + 1;
    v31 = &v11[48 * v30];
    v31[4] = v2;
    v31[5] = v3;
    v31[6] = v4;
    v31[7] = v5;
    *(v31 + 8) = v7;
    *(v31 + 9) = v6;
    goto LABEL_42;
  }

  v34 = 0;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v1 = 48;
  do
  {
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v12 = v8 + 32 + 48 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v7 = *(v12 + 32);
      v17 = *(v12 + 40);
      ++v10;

      v35.origin.x = v13;
      v35.origin.y = v14;
      v35.size.width = v15;
      v35.size.height = v16;
      v37.origin.x = v2;
      v37.origin.y = v3;
      v37.size.width = v4;
      v37.size.height = v5;
      if (!CGRectEqualToRect(v35, v37))
      {
        break;
      }

      v18 = *(v17 + 16);
      if (!v18 || v18 != *(v6 + 16))
      {
        break;
      }

      v20 = 0;
      do
      {
        if (!v18)
        {
          __break(1u);
          goto LABEL_44;
        }

        v21 = *(v17 + v20 + 32) == *(v6 + v20 + 32) && *(v17 + v20 + 40) == *(v6 + v20 + 40);
        if (!v21 && (sub_1D9C7E7DC() & 1) == 0)
        {
          goto LABEL_18;
        }

        v20 += 24;
        --v18;
      }

      while (v18);
      v36.origin.x = v13;
      v36.origin.y = v14;
      v36.size.width = v15;
      v36.size.height = v16;
      v38.origin.x = v2;
      v38.origin.y = v3;
      v38.size.width = v4;
      v38.size.height = v5;
      if (CGRectEqualToRect(v36, v38))
      {
        if (*(v33 + 16))
        {

          v7 = v33;
        }

        if (*(v6 + 16))
        {

          v17 = v6;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D9AF8CE0(0, *(v11 + 2) + 1, 1, v11);
      }

      v26 = *(v11 + 2);
      v25 = *(v11 + 3);
      if (v26 >= v25 >> 1)
      {
        v11 = sub_1D9AF8CE0((v25 > 1), v26 + 1, 1, v11);
      }

      *(v11 + 2) = v26 + 1;
      v27 = &v11[48 * v26];
      v27[4] = v13;
      v27[5] = v14;
      v27[6] = v15;
      v27[7] = v16;
      *(v27 + 8) = v7;
      *(v27 + 9) = v17;
      v34 = 1;
      if (v10 == v9)
      {

        v1 = v32;
        goto LABEL_42;
      }
    }

LABEL_18:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D9AF8CE0(0, *(v11 + 2) + 1, 1, v11);
    }

    v23 = *(v11 + 2);
    v22 = *(v11 + 3);
    if (v23 >= v22 >> 1)
    {
      v11 = sub_1D9AF8CE0((v22 > 1), v23 + 1, 1, v11);
    }

    *(v11 + 2) = v23 + 1;
    v24 = &v11[48 * v23];
    v24[4] = v13;
    v24[5] = v14;
    v24[6] = v15;
    v24[7] = v16;
    *(v24 + 8) = v7;
    *(v24 + 9) = v17;
  }

  while (v10 != v9);

  v1 = v32;
  v7 = v33;
  if ((v34 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_42:
  *v1 = v11;
  return result;
}

uint64_t sub_1D9B6834C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result + 72;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_1D9AF85EC(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 48;
    if (!--v1)
    {
      return v3;
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

uint64_t sub_1D9B6848C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result + 64;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_1D9AF870C(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 48;
    if (!--v1)
    {
      return v3;
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

uint64_t sub_1D9B685CC(char a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D9C7D8DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a5 + 16);
  if ((a1 & 1) == 0)
  {
    if (!v13)
    {

      return a2;
    }

    v44 = a2;
    v45 = MEMORY[0x1E69E7CC0];

    sub_1D99FE278(0, v13, 0);
    v16 = (a5 + 48);
    v17 = v45;
    do
    {
      v19 = *(v16 - 2);
      v18 = *(v16 - 1);
      v20 = expf(-*v16);
      v45 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);

      if (v22 >= v21 >> 1)
      {
        sub_1D99FE278((v21 > 1), v22 + 1, 1);
        v17 = v45;
      }

      *(v17 + 16) = v22 + 1;
      v23 = v17 + 24 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v18;
      *(v23 + 48) = 1.0 / (v20 + 1.0);
      v16 += 6;
      --v13;
    }

    while (v13);
    return v44;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 0;
      v15 = 0.0;
    }

    else
    {
      v14 = v13 & 0x7FFFFFFFFFFFFFFELL;
      v24 = (a5 + 72);
      v15 = 0.0;
      v25 = v13 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v26 = *(v24 - 6);
        v27 = *v24;
        v24 += 12;
        v28 = expf(v26 / a3);
        v15 = (v15 + v28) + expf(v27 / a3);
        v25 -= 2;
      }

      while (v25);
      if (v13 == v14)
      {
        goto LABEL_17;
      }
    }

    v29 = v13 - v14;
    v30 = (a5 + 24 * v14 + 48);
    do
    {
      v31 = *v30;
      v30 += 6;
      v15 = v15 + expf(v31 / a3);
      --v29;
    }

    while (v29);
LABEL_17:
    if (v15 == 0.0)
    {
      goto LABEL_18;
    }

    v44 = a2;
    v45 = MEMORY[0x1E69E7CC0];

    sub_1D99FE278(0, v13, 0);
    v35 = (a5 + 48);
    v36 = v45;
    do
    {
      v38 = *(v35 - 2);
      v37 = *(v35 - 1);
      v39 = expf(*v35 / a3);
      v45 = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);

      if (v41 >= v40 >> 1)
      {
        sub_1D99FE278((v40 > 1), v41 + 1, 1);
        v36 = v45;
      }

      *(v36 + 16) = v41 + 1;
      v42 = v36 + 24 * v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v37;
      *(v42 + 48) = v39 / v15;
      v35 += 6;
      --v13;
    }

    while (v13);
    return v44;
  }

LABEL_18:
  static Logger.argos.getter(v12);
  v32 = sub_1D9C7D8BC();
  v33 = sub_1D9C7E09C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1D9962000, v32, v33, "invalid input to softmax: all input sums to 0", v34, 2u);
    MEMORY[0x1DA7405F0](v34, -1, -1);
  }

  (*(v10 + 8))(v12, v9);

  return a2;
}

void VisualUnderstanding.init(_:annotation:payload:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v90 = a5;
  v9 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v99 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v88 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v88 - v18);
  MEMORY[0x1EEE9AC00](v20);
  *&v101 = &v88 - v21;
  v91 = *a2;
  v92 = a3;
  v22 = *(a2 + 3);
  v131 = *(a2 + 1);
  v132 = v22;
  v133 = *(a2 + 5);
  v134 = a2[7];
  v98 = a1;
  if (a4 >> 60 == 15)
  {
    v96 = *(a1 + 16);
    if (!v96)
    {

      v24 = MEMORY[0x1E69E7CC0];
LABEL_23:
      sub_1D99B3C44(a3, a4);
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v103 = v131;
      v104 = v132;
      v105 = v133;
      v106 = v134;
      LOBYTE(v124) = 1;
      v59 = 0uLL;
      __asm { FMOV            V3.2D, #1.0 }

      v65 = 0uLL;
      v66 = MEMORY[0x1E69E7CC0];
      goto LABEL_24;
    }

    v88 = 0;
    v89 = a4;
    v23 = 0;
    v93 = ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v95 = v93 + a1;
    v24 = MEMORY[0x1E69E7CC0];
    v25 = v97;
    v94 = v11;
    while (1)
    {
      if (v23 >= *(v98 + 16))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      *&v102 = v24;
      v26 = *(v99 + 72);
      *&v101 = v23;
      *&v100 = v26;
      isUniquelyReferenced_nonNull_native = sub_1D99B1BBC(&v95[v26 * v23], v25);
      v28 = *(v25 + 48);
      v24 = *(v28 + 16);
      if (v24)
      {
        break;
      }

      v31 = MEMORY[0x1E69E7CC0];
LABEL_16:

      v25 = v97;
      *(v97 + 6) = v31;
      v50 = v94;
      sub_1D99B1BBC(v25, v94);
      v24 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1D9AF8A90(0, v24[2] + 1, 1, v24);
      }

      v51 = v101;
      v52 = v100;
      v54 = v24[2];
      v53 = v24[3];
      if (v54 >= v53 >> 1)
      {
        v24 = sub_1D9AF8A90(v53 > 1, v54 + 1, 1, v24);
      }

      v23 = v51 + 1;
      v24[2] = v54 + 1;
      sub_1D99B1CE4(v50, v93 + v24 + v54 * v52);
      sub_1D99B1C88(v25);
      if (v23 == v96)
      {

        a4 = v89;
        a3 = v92;
        goto LABEL_23;
      }
    }

    v29 = 0;
    v30 = (v28 + 160);
    v31 = MEMORY[0x1E69E7CC0];
    while (v29 < *(v28 + 16))
    {
      v32 = *(v30 - 7);
      v113 = *(v30 - 8);
      v114 = v32;
      v33 = *(v30 - 6);
      v34 = *(v30 - 5);
      v35 = *(v30 - 3);
      v117 = *(v30 - 4);
      v118 = v35;
      v115 = v33;
      v116 = v34;
      v36 = *(v30 - 2);
      v37 = *(v30 - 1);
      v38 = *v30;
      *(v121 + 13) = *(v30 + 13);
      v120 = v37;
      v121[0] = v38;
      v119 = v36;
      v128 = *(v30 - 4);
      v129 = *(v30 - 3);
      v130[0] = *(v30 - 2);
      *(v130 + 15) = *(v30 - 17);
      v124 = *(v30 - 8);
      v125 = *(v30 - 7);
      v126 = *(v30 - 6);
      v127 = *(v30 - 5);
      v39 = *v30;
      *(v123 + 13) = *(v30 + 13);
      v123[0] = v39;
      sub_1D99AE054(&v113, &v107);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1D9AF8974(0, *(v31 + 16) + 1, 1, v31);
        v31 = isUniquelyReferenced_nonNull_native;
      }

      v41 = *(v31 + 16);
      v40 = *(v31 + 24);
      if (v41 >= v40 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1D9AF8974((v40 > 1), v41 + 1, 1, v31);
        v31 = isUniquelyReferenced_nonNull_native;
      }

      v29 = (v29 + 1);
      *(v31 + 16) = v41 + 1;
      v42 = v31 + 160 * v41;
      v43 = v126;
      v44 = v127;
      v45 = v125;
      *(v42 + 32) = v124;
      *(v42 + 48) = v45;
      *(v42 + 64) = v43;
      *(v42 + 80) = v44;
      v46 = v128;
      v47 = v129;
      v48 = v130[0];
      *(v42 + 143) = *(v130 + 15);
      *(v42 + 112) = v47;
      *(v42 + 128) = v48;
      *(v42 + 96) = v46;
      *(v42 + 159) = 1;
      v49 = *(v123 + 13);
      *(v42 + 160) = v123[0];
      *(v42 + 173) = v49;
      v30 += 10;
      if (v24 == v29)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_40:
    sub_1D99B3C44(isUniquelyReferenced_nonNull_native, v89);

LABEL_42:
    v56 = *(&v110 + 1);
    v58 = *(&v111 + 1);
    v57 = v111;
    if (v91 == 1)
    {
      sub_1D9B6A180(&v107 + 8, &v124);
      v91 = *(&v107 + 1);
      v86 = v108;
    }

    else
    {
      v86 = &v131;
    }

    v87 = v86[1];
    v103 = *v86;
    v104 = v87;
    v105 = v86[2];
    v106 = *(v86 + 6);
    v101 = *(&v109[1] + 8);
    v102 = *(v109 + 8);
    v100 = *(&v109[2] + 8);
    LOBYTE(v124) = BYTE8(v109[3]);
    v66 = v112;
    sub_1D99BB2FC(v56);

    sub_1D9A0009C(&v107);
    _Q3 = v101;
    v65 = v102;
    v59 = v100;
    v55 = v110;
LABEL_24:
    v67 = v124;
    v69 = v90;
    v68 = v91;
    *v90 = v24;
    v69[1] = v68;
    v70 = v104;
    *(v69 + 1) = v103;
    *(v69 + 2) = v70;
    *(v69 + 3) = v105;
    v69[8] = v106;
    *(v69 + 9) = v65;
    *(v69 + 11) = _Q3;
    *(v69 + 13) = v59;
    *(v69 + 120) = v67;
    v69[16] = 0;
    v69[17] = 0xE000000000000000;
    v69[18] = v55;
    v69[19] = v56;
    v69[20] = v57;
    v69[21] = v58;
    v69[22] = v66;
    return;
  }

  sub_1D9C7B54C();
  swift_allocObject();
  sub_1D99AF2FC(a3, a4);
  sub_1D9C7B53C();
  sub_1D9B6A110();
  sub_1D9C7B52C();
  sub_1D99B3C44(a3, a4);

  v108[1] = v115;
  v108[2] = v116;
  v109[2] = v119;
  v109[3] = v120;
  v109[0] = v117;
  v109[1] = v118;
  v112 = v122;
  v110 = v121[1];
  v111 = v121[2];
  v109[4] = v121[0];
  v107 = v113;
  v108[0] = v114;
  v71 = *(v113 + 16);
  if (!v71)
  {

    sub_1D99B3C44(a3, a4);
    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  v89 = a4;
  *&v124 = MEMORY[0x1E69E7CC0];
  v96 = v71;
  *&v100 = v113;
  sub_1D99FE2B8(0, v71, 0);
  v72 = 0;
  v24 = v124;
  v73 = *(a1 + 16);
  v74 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v75 = v100;
  v97 = (v100 + v74);
  v95 = v74;
  v94 = (a1 + v74);
  while (v72 < *(v75 + 16))
  {
    *&v102 = v24;
    v76 = *(v99 + 72);
    sub_1D99B1BBC(&v97[v76 * v72], v19);
    if (v73)
    {
      v77 = 0;
      v78 = v94;
      while (v77 < *(a1 + 16))
      {
        sub_1D99B1BBC(v78, v16);
        if (CGRectEqualToRect(*v16, *v19))
        {
          v79 = v101;
          v80 = sub_1D99B1BBC(v19, v101);
          v93 = &v88;
          v81 = *(v79 + 48);
          MEMORY[0x1EEE9AC00](v80);
          *(&v88 - 2) = v16;
          v82 = sub_1D9BE77D4(sub_1D9B6A164, (&v88 - 4), v81);
          sub_1D99B1C88(v19);

          *(v79 + 48) = v82;
          sub_1D99B1C88(v16);
          goto LABEL_35;
        }

        ++v77;
        sub_1D99B1C88(v16);
        v78 += v76;
        if (v73 == v77)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

LABEL_33:
    sub_1D99B1CE4(v19, v101);
LABEL_35:
    v83 = v102;
    *&v124 = v102;
    v85 = *(v102 + 16);
    v84 = *(v102 + 24);
    if (v85 >= v84 >> 1)
    {
      sub_1D99FE2B8(v84 > 1, v85 + 1, 1);
      v83 = v124;
    }

    ++v72;
    v83[2] = v85 + 1;
    sub_1D99B1CE4(v101, &v95[v83 + v85 * v76]);
    isUniquelyReferenced_nonNull_native = v92;
    a1 = v98;
    v24 = v83;
    v75 = v100;
    if (v72 == v96)
    {
      goto LABEL_40;
    }
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_1D9B691FC(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    v5 = v2 - 1;
    while (1)
    {
      v6 = v5;
      v7 = v4[7];
      v23[6] = v4[6];
      v23[7] = v7;
      v24[0] = v4[8];
      *(v24 + 13) = *(v4 + 141);
      v8 = v4[3];
      v23[2] = v4[2];
      v23[3] = v8;
      v9 = v4[5];
      v23[4] = v4[4];
      v23[5] = v9;
      v10 = v4[1];
      v23[0] = *v4;
      v23[1] = v10;
      v11 = 0xE300000000000000;
      v12 = 7631457;
      switch(LOBYTE(v23[0]))
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
          v11 = 0xEA0000000000746ELL;
          v12 = 0x6F726665726F7473;
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
      switch(*a2)
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
        case 0xA:
          v15 = 0xE500000000000000;
          if (v12 != 0x7364726962)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 0xB:
          v15 = 0xE700000000000000;
          v17 = 0x746365736E69;
          goto LABEL_66;
        case 0xC:
          v15 = 0xE800000000000000;
          if (v12 != 0x73656C6974706572)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 0xD:
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
        case 0xE:
          v15 = 0x80000001D9CA2910;
          if (v12 != 0xD000000000000010)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 0xF:
          v15 = 0xE700000000000000;
          if (v12 != 0x6C657261707061)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 0x10:
          v15 = 0xEB00000000736569;
          if (v12 != 0x726F737365636361)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 0x11:
          v15 = 0xE400000000000000;
          if (v12 != 1685024614)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 0x12:
          v15 = 0xEA0000000000746ELL;
          if (v12 != 0x6F726665726F7473)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 0x13:
          v19 = 1852270963;
          goto LABEL_79;
        case 0x14:
          v15 = 0x80000001D9CA2950;
          if (v12 != 0xD000000000000011)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 0x15:
          v19 = 1869903201;
LABEL_79:
          v15 = 0xEA00000000006C6FLL;
          if (v12 != (v19 | 0x626D795300000000))
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 0x16:
          v15 = 0xEF6C6F626D79536FLL;
          if (v12 != 0x676F4C646E617262)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 0x17:
          v15 = 0xE700000000000000;
          v16 = 0x65646F63726162;
          goto LABEL_82;
        case 0x18:
          v15 = 0xE900000000000065;
          if (v12 != 0x727574706C756373)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 0x19:
          v15 = 0xE700000000000000;
          if (v12 != 0x656E696C796B73)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        case 0x1A:
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
          if (v11 == v15)
          {
            sub_1D99AE054(v23, v22);

            sub_1D99AE0B0(v23);
            v20 = 1;
            return v20 & 1;
          }

LABEL_84:
          v20 = sub_1D9C7E7DC();
          sub_1D99AE054(v23, v22);

          sub_1D99AE0B0(v23);
          if (v20)
          {
            return v20 & 1;
          }

          v5 = v6 - 1;
          v4 += 10;
          if (!v6)
          {
            return v20 & 1;
          }

          break;
      }
    }
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1D9B698EC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D99E91D8(v2);
  }

  v3 = *(v2 + 2);
  v44[0] = (v2 + 32);
  v44[1] = v3;
  result = sub_1D9C7E79C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 192;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 12) >= *(v12 + 28))
          {
            break;
          }

          v13 = v12 - 160;
          v14 = *(v12 + 1);
          v35 = *v12;
          v36 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 5);
          v39 = *(v12 + 4);
          v40 = v17;
          v37 = v15;
          v38 = v16;
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v20 = *(v12 + 8);
          *(v43 + 13) = *(v12 + 141);
          v43[0] = v20;
          v41 = v18;
          v42 = v19;
          v21 = *(v12 - 5);
          *(v12 + 4) = *(v12 - 6);
          *(v12 + 5) = v21;
          v22 = *(v12 - 7);
          *(v12 + 2) = *(v12 - 8);
          *(v12 + 3) = v22;
          v23 = *(v12 - 1);
          *(v12 + 8) = *(v12 - 2);
          *(v12 + 9) = v23;
          v24 = *(v12 - 3);
          *(v12 + 6) = *(v12 - 4);
          *(v12 + 7) = v24;
          v25 = *(v12 - 9);
          *v12 = *(v12 - 10);
          *(v12 + 1) = v25;
          v26 = v36;
          *v13 = v35;
          *(v13 + 1) = v26;
          v27 = v37;
          v28 = v38;
          v29 = v40;
          *(v13 + 4) = v39;
          *(v13 + 5) = v29;
          *(v13 + 2) = v27;
          *(v13 + 3) = v28;
          v30 = v41;
          v31 = v42;
          v32 = v43[0];
          *(v13 + 141) = *(v43 + 13);
          *(v13 + 7) = v31;
          *(v13 + 8) = v32;
          *(v13 + 6) = v30;
          v12 -= 160;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 160;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D9C7DF5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v35 = v7 + 32;
    *(&v35 + 1) = v6;
    sub_1D9B6A1F0(&v35, v34, v44, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D9B69AB0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[7];
  v5 = a1[5];
  v33 = a1[6];
  v34 = v4;
  v6 = a1[7];
  v35[0] = a1[8];
  *(v35 + 13) = *(a1 + 141);
  v7 = a1[3];
  v8 = a1[1];
  v29 = a1[2];
  v30 = v7;
  v9 = a1[3];
  v10 = a1[5];
  v31 = a1[4];
  v32 = v10;
  v11 = a1[1];
  v28[0] = *a1;
  v28[1] = v11;
  v25 = v33;
  v26 = v6;
  v27[0] = a1[8];
  *(v27 + 13) = *(a1 + 141);
  v21 = v29;
  v22 = v9;
  v23 = v31;
  v24 = v5;
  v19 = v28[0];
  v20 = v8;
  v12 = *(a2 + 48);
  sub_1D99AE054(v28, v47);
  HIBYTE(v26) = sub_1D9B691FC(v12, &v19) & 1;
  v37[0] = v27[0];
  *(v37 + 13) = *(v27 + 13);
  v36[2] = v21;
  v36[3] = v22;
  v36[4] = v23;
  v36[5] = v24;
  v36[0] = v19;
  v36[1] = v20;
  v36[6] = v25;
  v36[7] = v26;
  v44 = v25;
  v45 = v26;
  v46[0] = v27[0];
  *(v46 + 13) = *(v27 + 13);
  v40 = v21;
  v41 = v22;
  v42 = v23;
  v43 = v24;
  v38 = v19;
  v39 = v20;
  faiss::NormalizationTransform::~NormalizationTransform(&v38);
  v13 = v45;
  a3[6] = v44;
  a3[7] = v13;
  a3[8] = v46[0];
  *(a3 + 141) = *(v46 + 13);
  v14 = v41;
  a3[2] = v40;
  a3[3] = v14;
  v15 = v43;
  a3[4] = v42;
  a3[5] = v15;
  v16 = v39;
  *a3 = v38;
  a3[1] = v16;
  v47[6] = v25;
  v47[7] = v26;
  v48[0] = v27[0];
  *(v48 + 13) = *(v27 + 13);
  v47[2] = v21;
  v47[3] = v22;
  v47[4] = v23;
  v47[5] = v24;
  v47[0] = v19;
  v47[1] = v20;
  sub_1D99AE054(v36, &v18);
  return sub_1D99AE0B0(v47);
}

void sub_1D9B69C68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v75 = a2;
  v3 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  v10 = *v2;
  v11 = *(v2 + 7);
  v101 = *(v2 + 5);
  v102 = v11;
  v12 = *(v2 + 3);
  v99 = *(v2 + 1);
  v100 = v12;
  v13 = *(v2 + 9);
  v68 = *(v2 + 11);
  v69 = v13;
  v67 = *(v2 + 13);
  v66 = *(v2 + 120);
  v14 = v2[16];
  v15 = v2[17];
  v64 = v2[18];
  v65 = v14;
  v16 = v2[19];
  v72 = v2[20];
  v73 = v16;
  v18 = v2[21];
  v17 = v2[22];
  v70 = v15;
  v71 = v18;
  v74 = v17;
  v82 = *(v10 + 16);
  if (v82)
  {
    v19 = 0;
    v76 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v81 = v10 + v76;
    v20 = MEMORY[0x1E69E7CC0];
    v79 = v6;
    v80 = v4;
    v77 = v10;
    v78 = &v63 - v8;
    while (v19 < *(v10 + 16))
    {
      v21 = *(v4 + 72);
      v83 = v19;
      v84 = v21;
      v85 = v20;
      sub_1D99B1BBC(v81 + v21 * v19, v9);
      v22 = *(v9 + 6);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = 0;
        v25 = (v22 + 160);
        v26 = MEMORY[0x1E69E7CC0];
        while (v24 < *(v22 + 16))
        {
          v27 = *(v25 - 7);
          v96[0] = *(v25 - 8);
          v96[1] = v27;
          v28 = *(v25 - 6);
          v29 = *(v25 - 5);
          v30 = *(v25 - 3);
          v96[4] = *(v25 - 4);
          v96[5] = v30;
          v96[2] = v28;
          v96[3] = v29;
          v31 = *(v25 - 2);
          v32 = *(v25 - 1);
          v33 = *v25;
          *(v98 + 13) = *(v25 + 13);
          v97 = v32;
          v98[0] = v33;
          v96[6] = v31;
          v34 = v96[0];
          v35 = *(v25 - 47);
          v92 = *(v25 - 63);
          v93 = v35;
          v94[0] = *(v25 - 31);
          *(v94 + 14) = *(v25 - 17);
          v36 = *(v25 - 111);
          v88 = *(v25 - 127);
          v89 = v36;
          v37 = *(v25 - 79);
          v90 = *(v25 - 95);
          v91 = v37;
          v38 = HIBYTE(v97);
          v87[0] = *v25;
          *(v87 + 13) = *(v25 + 13);
          sub_1D99AE054(v96, v95);
          sub_1D99AE054(v96, v95);
          v39 = sub_1D9B66654(v34, v86);
          sub_1D99AE0B0(v96);
          if ((v39 & 1) == 0)
          {
            v38 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1D9AF8974(0, *(v26 + 2) + 1, 1, v26);
          }

          v41 = *(v26 + 2);
          v40 = *(v26 + 3);
          if (v41 >= v40 >> 1)
          {
            v26 = sub_1D9AF8974((v40 > 1), v41 + 1, 1, v26);
          }

          ++v24;
          *(v26 + 2) = v41 + 1;
          v42 = &v26[160 * v41];
          v42[32] = v34;
          v43 = v90;
          v44 = v91;
          v45 = v88;
          *(v42 + 49) = v89;
          *(v42 + 33) = v45;
          *(v42 + 81) = v44;
          *(v42 + 65) = v43;
          v46 = v92;
          v47 = v93;
          v48 = v94[0];
          *(v42 + 143) = *(v94 + 14);
          *(v42 + 129) = v48;
          *(v42 + 113) = v47;
          *(v42 + 97) = v46;
          v42[159] = v38;
          v49 = *(v87 + 13);
          *(v42 + 10) = v87[0];
          *(v42 + 173) = v49;
          v25 += 10;
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }

      v26 = MEMORY[0x1E69E7CC0];
LABEL_16:

      v9 = v78;
      v50 = v79;
      *(v78 + 6) = v26;
      sub_1D99B1BBC(v9, v50);
      v20 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D9AF8A90(0, v20[2] + 1, 1, v20);
      }

      v4 = v80;
      v10 = v77;
      v51 = v83;
      v53 = v20[2];
      v52 = v20[3];
      if (v53 >= v52 >> 1)
      {
        v20 = sub_1D9AF8A90(v52 > 1, v53 + 1, 1, v20);
      }

      v19 = v51 + 1;
      v20[2] = v53 + 1;
      sub_1D99B1CE4(v50, v20 + v76 + v53 * v84);
      sub_1D99B1C88(v9);
      if (v19 == v82)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v54 = v100;
    v55 = v75;
    *(v75 + 8) = v99;
    *(v55 + 24) = v54;
    v56 = v102;
    *(v55 + 40) = v101;
    *v55 = v20;
    *(v55 + 56) = v56;
    v57 = v68;
    *(v55 + 72) = v69;
    *(v55 + 88) = v57;
    *(v55 + 104) = v67;
    *(v55 + 120) = v66;
    v58 = v64;
    v60 = v70;
    v59 = v71;
    *(v55 + 128) = v65;
    *(v55 + 136) = v60;
    v62 = v72;
    v61 = v73;
    *(v55 + 144) = v58;
    *(v55 + 152) = v61;
    *(v55 + 160) = v62;
    *(v55 + 168) = v59;
    *(v55 + 176) = v74;
    sub_1D9B6A180(&v99, v96);

    sub_1D99BB2FC(v61);
  }
}

unint64_t sub_1D9B6A110()
{
  result = qword_1EDD2C1A8;
  if (!qword_1EDD2C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C1A8);
  }

  return result;
}

uint64_t sub_1D9B6A180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B6A1F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_1D99E8FDC(v6);
      v6 = result;
    }

    v82 = v6;
    v83 = (v6 + 16);
    v6 = *(v6 + 16);
    if (v6 >= 2)
    {
      while (*a3)
      {
        v84 = (v82 + 16 * v6);
        v85 = *v84;
        v86 = &v83[2 * v6];
        v87 = v86[1];
        sub_1D9B6A890((*a3 + 160 * *v84), (*a3 + 160 * *v86), (*a3 + 160 * v87), v5);
        if (v111)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_115;
        }

        if (v6 - 2 >= *v83)
        {
          goto LABEL_116;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v83 - v6;
        if (*v83 < v6)
        {
          goto LABEL_117;
        }

        v111 = 0;
        v6 = *v83 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v83 = v6;
        if (v6 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = *(*a3 + 160 * v5 + 112);
      v9 = 160 * v7;
      v10 = *a3 + 160 * v7;
      v11 = *(v10 + 112);
      v12 = v7 + 2;
      v13 = (v10 + 272);
      while (v4 != v12)
      {
        v14 = *v13;
        v15 = v13[40];
        v13 += 40;
        ++v12;
        if (v11 < v8 == v14 >= v15)
        {
          v5 = v12 - 1;
          if (v11 >= v8)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v5 = v4;
      if (v11 >= v8)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v5 < v7)
      {
        goto LABEL_120;
      }

      if (v7 < v5)
      {
        v16 = 160 * v5 - 160;
        v17 = v5;
        v18 = v7;
        do
        {
          if (v18 != --v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_126;
            }

            v19 = v6;
            v20 = (v21 + v16);
            v105 = *(v21 + v9 + 96);
            v107 = *(v21 + v9 + 112);
            *v109 = *(v21 + v9 + 128);
            *&v109[13] = *(v21 + v9 + 141);
            v97 = *(v21 + v9 + 32);
            v99 = *(v21 + v9 + 48);
            v101 = *(v21 + v9 + 64);
            v103 = *(v21 + v9 + 80);
            v93 = *(v21 + v9);
            v95 = *(v21 + v9 + 16);
            result = memmove((v21 + v9), (v21 + v16), 0xA0uLL);
            v20[6] = v105;
            v20[7] = v107;
            v20[8] = *v109;
            *(v20 + 141) = *&v109[13];
            v20[2] = v97;
            v20[3] = v99;
            v20[4] = v101;
            v20[5] = v103;
            *v20 = v93;
            v20[1] = v95;
            v6 = v19;
          }

          ++v18;
          v16 -= 160;
          v9 += 160;
        }

        while (v18 < v17);
        v4 = a3[1];
      }
    }

LABEL_20:
    if (v5 < v4)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_119;
      }

      if (v5 - v7 < a4)
      {
        if (__OFADD__(v7, a4))
        {
          goto LABEL_121;
        }

        if (v7 + a4 < v4)
        {
          v4 = v7 + a4;
        }

        if (v4 < v7)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v5 != v4)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v5 < v7)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v35 = *(v6 + 16);
    v34 = *(v6 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_1D99E8FF0((v34 > 1), v35 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v36;
    v37 = v6 + 32;
    v38 = (v6 + 32 + 16 * v35);
    *v38 = v7;
    v38[1] = v5;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v6 + 32);
          v41 = *(v6 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_105;
          }

          v56 = (v6 + 16 * v36);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_107;
          }

          v62 = (v37 + 16 * v39);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_112;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_113;
        }

        v66 = (v6 + 16 * v36);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_109;
        }

        v69 = (v37 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_111;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v77 = v6;
        v78 = (v37 + 16 * (v39 - 1));
        v6 = *v78;
        v79 = (v37 + 16 * v39);
        v80 = v79[1];
        sub_1D9B6A890((*a3 + 160 * *v78), (*a3 + 160 * *v79), (*a3 + 160 * v80), v91);
        if (v111)
        {
        }

        if (v80 < v6)
        {
          goto LABEL_100;
        }

        if (v39 > *(v77 + 16))
        {
          goto LABEL_101;
        }

        *v78 = v6;
        v78[1] = v80;
        v81 = *(v77 + 16);
        if (v39 >= v81)
        {
          goto LABEL_102;
        }

        v6 = v77;
        v111 = 0;
        v36 = v81 - 1;
        result = memmove((v37 + 16 * v39), v79 + 2, 16 * (v81 - 1 - v39));
        *(v77 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v37 + 16 * v36;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_103;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_104;
      }

      v51 = (v6 + 16 * v36);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_106;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_108;
      }

      if (v55 >= v47)
      {
        v73 = (v37 + 16 * v39);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_114;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 160 * v5;
  v24 = v7 - v5;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 - 48) >= *(v26 + 112))
    {
LABEL_29:
      ++v5;
      v23 += 160;
      --v24;
      if (v5 != v4)
      {
        goto LABEL_30;
      }

      v5 = v4;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = (v26 - 160);
    v106 = *(v26 + 96);
    v108 = *(v26 + 112);
    *v110 = *(v26 + 128);
    *&v110[13] = *(v26 + 141);
    v98 = *(v26 + 32);
    v100 = *(v26 + 48);
    v102 = *(v26 + 64);
    v104 = *(v26 + 80);
    v94 = *v26;
    v96 = *(v26 + 16);
    v28 = *(v26 - 48);
    *(v26 + 96) = *(v26 - 64);
    *(v26 + 112) = v28;
    v29 = *(v26 - 16);
    *(v26 + 128) = *(v26 - 32);
    *(v26 + 144) = v29;
    v30 = *(v26 - 112);
    *(v26 + 32) = *(v26 - 128);
    *(v26 + 48) = v30;
    v31 = *(v26 - 80);
    *(v26 + 64) = *(v26 - 96);
    *(v26 + 80) = v31;
    v32 = *(v26 - 144);
    *v26 = *(v26 - 160);
    *(v26 + 16) = v32;
    v27[6] = v106;
    v27[7] = v108;
    v27[8] = *v110;
    *(v27 + 141) = *&v110[13];
    v27[2] = v98;
    v27[3] = v100;
    v27[4] = v102;
    v27[5] = v104;
    v26 -= 160;
    *v27 = v94;
    v27[1] = v96;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}