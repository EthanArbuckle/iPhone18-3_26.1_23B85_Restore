unint64_t sub_1D21CC964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v30 - v6;
  result = swift_beginAccess();
  v8 = 0;
  v9 = *(v2 + 24);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  while (1)
  {
LABEL_4:
    if (!v12)
    {
      while (1)
      {
        v14 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
          v29 = 1;
          v28 = v32;
          return (*(v5 + 56))(v28, v29, 1, v4);
        }

        v12 = *(v9 + 64 + 8 * v14);
        ++v8;
        if (v12)
        {
          v8 = v14;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

LABEL_9:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = *(*(v9 + 56) + ((v8 << 9) | (8 * v15)));
    result = swift_beginAccess();
    v17 = v16[7];
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = (v17 + 40);
      while ((*v20 & 1) != 0 || *(v20 - 1) != a1)
      {
        ++v19;
        v20 += 16;
        if (v18 == v19)
        {
          goto LABEL_4;
        }
      }

      v21 = v16[2];
      if (v19 >= *(v21 + 16))
      {
        goto LABEL_21;
      }

      v22 = *(v21 + 8 * v19 + 32);
      result = swift_beginAccess();
      v23 = v16[9];
      if (*(v23 + 16))
      {
        result = sub_1D2176758(v22);
        if (v24)
        {
          break;
        }
      }
    }
  }

  v25 = v31;
  sub_1D2174DA8(*(v23 + 56) + *(v5 + 72) * result, v31, &qword_1EC6D2968);
  v26 = v25;
  v27 = v32;
  sub_1D21A6938(v26, v32, &qword_1EC6D2968);
  v28 = v27;
  v29 = 0;
  return (*(v5 + 56))(v28, v29, 1, v4);
}

unint64_t sub_1D21CCBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  result = swift_beginAccess();
  v9 = 0;
  v10 = *(v2 + 24);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
LABEL_4:
  while (v13)
  {
LABEL_9:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = *(*(v10 + 56) + ((v9 << 9) | (8 * v16)));
    v18 = *(v17 + 16);
    v19 = *(v18 + 16);
    v20 = (v18 + 32);
    if (v19)
    {
      while (1)
      {
        v21 = *v20++;
        if (v21 == a1)
        {
          break;
        }

        if (!--v19)
        {
          goto LABEL_4;
        }
      }

      result = swift_beginAccess();
      v22 = *(v17 + 72);
      if (*(v22 + 16))
      {
        result = sub_1D2176758(a1);
        if (v23)
        {
          sub_1D2174DA8(*(v22 + 56) + *(v5 + 72) * result, v7, &qword_1EC6D2968);
          v24 = v28;
          sub_1D21A6938(v7, v28, &qword_1EC6D2968);
          v25 = v24;
          v26 = 0;
          return (*(v5 + 56))(v25, v26, 1, v4);
        }
      }
    }
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      v26 = 1;
      v25 = v28;
      return (*(v5 + 56))(v25, v26, 1, v4);
    }

    v13 = *(v10 + 64 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D21CCDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_beginAccess();
  v6 = 0;
  v7 = *(v2 + 24);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;
  do
  {
LABEL_4:
    if (!v10)
    {
      while (1)
      {
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v12 >= v11)
        {
          v21 = sub_1D22504FC();
          return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
        }

        v10 = *(v7 + 64 + 8 * v12);
        ++v6;
        if (v10)
        {
          v6 = v12;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = *(*(v7 + 56) + ((v6 << 9) | (8 * v13)));
    v15 = *(v14 + 16);
    v16 = *(v15 + 16);
  }

  while (!v16);
  v17 = 0;
  v18 = v15 + 32;
  while (*(v18 + 8 * v17) != a1)
  {
    if (v16 == ++v17)
    {
      goto LABEL_4;
    }
  }

  result = swift_beginAccess();
  v19 = *(v14 + 32);
  if (v17 < *(v19 + 16))
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0) - 8);
    return sub_1D2174DA8(v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, a2, &qword_1EC6D23C0);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D21CCFE4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(a3 + 64);
  v8 = *(v7 + 16);
  if (v4 >= v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 >= v8)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v9 = v7 + 32;
  v10 = v9 + 8 * v4;
  v11 = *v10;
  v12 = 0.0;
  if (*(v10 + 4))
  {
    v11 = 0.0;
  }

  v13 = v9 + 8 * v5;
  if (!*(v13 + 4))
  {
    v12 = *v13;
  }

  return v12 < v11;
}

uint64_t sub_1D21CD098(__int16 a1)
{
  result = swift_beginAccess();
  v4 = 0;
  v5 = *(v1 + 24);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v8;
LABEL_10:
    v8 = (v10 - 1) & v10;
    if ((a1 & 0x100) == 0)
    {
      v12 = __clz(__rbit64(v10)) | (v4 << 6);
      if (*(*(v5 + 48) + v12) == a1)
      {
        v13 = *(*(v5 + 56) + 8 * v12);
        swift_beginAccess();
        v14 = *(v13 + 40);
        v15 = *(v14 + 16);

        v16 = 0;
        v17 = MEMORY[0x1E69E7CC0];
LABEL_13:
        v18 = 16 * v16 + 40;
        while (v15 != v16)
        {
          if (v16 >= *(v14 + 16))
          {
            goto LABEL_25;
          }

          ++v16;
          v19 = v18 + 16;
          v20 = *(v14 + v18);
          v18 += 16;
          if (v20 >> 60 != 15)
          {
            v21 = *(v14 + v19 - 24);
            sub_1D21A3B78(v21, v20);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1D21AF840(0, *(v17 + 16) + 1, 1);
            }

            v22 = *(v17 + 16);
            v23 = *(v17 + 24);
            v24 = v22 + 1;
            if (v22 >= v23 >> 1)
            {
              v27 = *(v17 + 16);
              v28 = v22 + 1;
              result = sub_1D21AF840((v23 > 1), v22 + 1, 1);
              v22 = v27;
              v24 = v28;
            }

            *(v17 + 16) = v24;
            v25 = v17 + 16 * v22;
            *(v25 + 32) = v21;
            *(v25 + 40) = v20;
            goto LABEL_13;
          }
        }

        v26 = *(v17 + 16);

        return v26;
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      return 0;
    }

    v10 = *(v5 + 64 + 8 * v11);
    ++v4;
    if (v10)
    {
      v4 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D21CD2B8(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
  v90 = *(v91 - 8);
  v7 = MEMORY[0x1EEE9AC00](v91);
  v89 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v82 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v94 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v82 - v19;
  swift_beginAccess();
  v20 = *(a1 + 24);
  v21 = *(v20 + 64);
  v85 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;

  v98 = v2;
  swift_beginAccess();
  result = swift_beginAccess();
  v92 = 0;
  v84 = (v22 + 63) >> 6;
  v102 = a2 + 32;
  v83 = a2;
  v82 = a1;
  v86 = v20;
  v103 = v18;
LABEL_5:
  while (v24)
  {
    v26 = v92;
LABEL_12:
    v29 = v24;
    v92 = v26;
    v30 = __clz(__rbit64(v24)) | (v26 << 6);
    v31 = *(v20 + 56);
    v108 = *(*(v20 + 48) + v30);
    v107 = *(v31 + 8 * v30);
    v32 = *(v98 + 16);
    if (*(v32 + 16))
    {
      result = sub_1D2176DFC(v108);
      if (v33)
      {
        v97 = *(*(*(v32 + 56) + 8 * result) + 24);
        if (v97)
        {
          goto LABEL_18;
        }
      }
    }

    v34 = *(a1 + 16);
    if (*(v34 + 16))
    {
      result = sub_1D2176DFC(v108);
      if (v35)
      {
        v97 = *(*(*(v34 + 56) + 8 * result) + 24);
LABEL_18:
        if (!*(v32 + 16))
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }

    v97 = 0;
    if (!*(v32 + 16))
    {
      goto LABEL_23;
    }

LABEL_21:
    result = sub_1D2176DFC(v108);
    if ((v36 & 1) == 0 || (v96 = *(*(*(v32 + 56) + 8 * result) + 32)) == 0)
    {
LABEL_23:
      v37 = *(a1 + 16);
      if (*(v37 + 16) && (result = sub_1D2176DFC(v108), (v38 & 1) != 0))
      {
        v96 = *(*(*(v37 + 56) + 8 * result) + 32);
      }

      else
      {
        v96 = 0;
      }
    }

    v24 = (v29 - 1) & v29;
    v39 = *(a2 + 16);
    if (v39)
    {
      v87 = v24;

      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      result = v107;
      v40 = 0;
      v95 = v39;
      while (1)
      {
        v41 = *(result + 16);
        v42 = *(v41 + 16);
        if (v42)
        {
          v43 = 0;
          v44 = 0;
          v45 = *(v102 + 8 * v40);
          v46 = v41 + 32;
          v47 = -v42;
          v48 = 40;
          while (*(v46 + v43) != v45)
          {
            --v44;
            v43 += 8;
            v48 += 16;
            if (v47 == v44)
            {
              goto LABEL_31;
            }
          }

          v49 = *(result + 24);
          v50 = -v44;
          if (-v44 >= *(v49 + 16))
          {
            goto LABEL_49;
          }

          v51 = *(result + 32);
          if (v50 >= *(v51 + 16))
          {
            goto LABEL_50;
          }

          v52 = v13;
          v101 = v4;
          v53 = (v49 + v48);
          v55 = *(v53 - 1);
          v54 = *v53;
          v105 = v55;
          v104 = v54;
          v56 = (*(v94 + 80) + 32) & ~*(v94 + 80);
          v57 = *(v94 + 72) * v50;
          result = sub_1D2174DA8(v51 + v56 + v57, v106, &qword_1EC6D23C0);
          v58 = v107[5];
          if (v50 >= *(v58 + 16))
          {
            goto LABEL_51;
          }

          v59 = v107[6];
          if (v50 >= *(v59 + 16))
          {
            goto LABEL_52;
          }

          v60 = (v58 + v48);
          v62 = *(v60 - 1);
          v61 = *v60;
          v100 = v62;
          v99 = v61;
          sub_1D2174DA8(v59 + v56 + v57, v18, &qword_1EC6D23C0);
          v63 = sub_1D225055C();
          v64 = *(*(v63 - 8) + 56);
          v65 = v93;
          v64(v93, 1, 1, v63);
          result = (v64)(v52, 1, 1, v63);
          v66 = v107[8];
          if (v50 >= *(v66 + 16))
          {
            goto LABEL_53;
          }

          v67 = v66 + v43;
          v68 = *(v67 + 32);
          v69 = *(v67 + 36);
          v70 = v105;
          sub_1D21A3B64(v105, v104);
          v71 = v100;
          v72 = v99;
          sub_1D21A3B64(v100, v99);
          v109 = v69;
          v73 = v70;
          v74 = v104;
          v75 = v101;
          sub_1D21D0018(v108, v73, v104, v97, 0, v106, v71, v72, v96, 0, v103, v65, v52, v68, (v68 | (v69 << 32)) >> 32, 0, 1, v45, 0);
          sub_1D21A1F98(v71, v72);
          v4 = v75;
          sub_1D21A1F98(v105, v74);
          v13 = v52;
          if (v75)
          {

            sub_1D2176170(v52, &qword_1EC6D2110);
            sub_1D2176170(v65, &qword_1EC6D2110);
            sub_1D2176170(v103, &qword_1EC6D23C0);
            return sub_1D2176170(v106, &qword_1EC6D23C0);
          }

          sub_1D2176170(v52, &qword_1EC6D2110);
          sub_1D2176170(v65, &qword_1EC6D2110);
          v18 = v103;
          sub_1D2176170(v103, &qword_1EC6D23C0);
          sub_1D2176170(v106, &qword_1EC6D23C0);
          result = v107;
          v76 = v107[9];
          if (*(v76 + 16))
          {
            v77 = sub_1D2176758(v45);
            if (v78)
            {
              v79 = *(v76 + 56) + *(v90 + 72) * v77;
              v80 = v89;
              sub_1D2174DA8(v79, v89, &qword_1EC6D2968);
              v81 = v88;
              sub_1D21A6938(v80, v88, &qword_1EC6D2968);
              sub_1D21D1598(v45, v81, *(v81 + *(v91 + 48)));
              sub_1D2176170(v81, &qword_1EC6D2968);
            }

            result = v107;
          }

          v39 = v95;
        }

LABEL_31:
        if (++v40 == v39)
        {

          a2 = v83;
          a1 = v82;
          v20 = v86;
          v24 = v87;
          goto LABEL_5;
        }
      }
    }
  }

  v27 = v92;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v84)
    {
    }

    v24 = *(v85 + 8 * v28);
    ++v27;
    if (v24)
    {
      v26 = v28;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1D21CDCC0(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = 0;
  v5 = *(v1 + 24);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  do
  {
LABEL_4:
    if (!v8)
    {
      while (1)
      {
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v10 >= v9)
        {
          v21 = 0;
          v22 = 1;
          return v21 | (v22 << 32);
        }

        v8 = *(v5 + 64 + 8 * v10);
        ++v4;
        if (v8)
        {
          v4 = v10;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(v5 + 56) + ((v4 << 9) | (8 * v11)));
    v13 = *(v12 + 16);
    v14 = *(v13 + 16);
  }

  while (!v14);
  v15 = 0;
  v16 = 0;
  v17 = v13 + 32;
  v18 = -v14;
  while (*(v17 + v15) != a1)
  {
    --v16;
    v15 += 8;
    if (v18 == v16)
    {
      goto LABEL_4;
    }
  }

  result = swift_beginAccess();
  v19 = *(v12 + 64);
  if (-v16 >= *(v19 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v20 = v19 + v15;
  v21 = *(v19 + v15 + 32);
  v22 = *(v20 + 36);
  return v21 | (v22 << 32);
}

uint64_t sub_1D21CDE10(unsigned __int8 a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC8];
  v103 = MEMORY[0x1E69E7CC8];
  v104 = MEMORY[0x1E69E7CC8];
  v102 = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!*(v6 + 16) || (v7 = sub_1D2176DFC(a1), (v8 & 1) == 0))
  {
LABEL_56:
    v80 = *(a2 + 16);
    if (!v80)
    {
      return v5;
    }

LABEL_57:
    v81 = (a2 + 32);
    do
    {
      v83 = *v81++;
      v82 = v83;
      v84 = sub_1D2176758(v83);
      if (v85)
      {
        v86 = v84;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D21B6C24();
        }

        sub_1D2201080(v86, v5);
      }

      v87 = sub_1D2176758(v82);
      if (v88)
      {
        v89 = v87;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D21B6D70();
        }

        sub_1D22011F0(v89, v103);
      }

      v90 = sub_1D2176758(v82);
      if (v91)
      {
        v92 = v90;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D21B6D70();
        }

        sub_1D22011F0(v92, v102);
      }

      --v80;
    }

    while (v80);
    return v5;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2148);
  sub_1D22508BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2BA8);
  sub_1D22508BC();
  sub_1D22508BC();
  v99 = v9[2];
  v98 = *(v99 + 16);
  if (!v98)
  {

    v5 = v104;
    v80 = *(a2 + 16);
    if (!v80)
    {
      return v5;
    }

    goto LABEL_57;
  }

  v94 = a2;
  v10 = v99 + 32;

  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v11 = 0;
  v12 = 0;
  v13 = v103;
  v5 = v104;
  v14 = 36;
  v15 = v102;
  while (v12 < *(v99 + 16))
  {
    v16 = v9[10];
    if (v12 >= *(v16 + 16))
    {
      goto LABEL_74;
    }

    v17 = *(v10 + v14 - 36);
    v18 = v16 + v11;
    v100 = v17;
    if (*(v18 + 40))
    {
      v19 = sub_1D2176758(v17);
      if (v20)
      {
        v21 = v19;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D21B6C24();
        }

        sub_1D2201080(v21, v5);
        v17 = v100;
      }
    }

    else
    {
      v22 = v15;
      v23 = v13;
      v95 = v11;
      v24 = v9;
      v25 = *(v18 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v5;
      v27 = sub_1D2176758(v17);
      v29 = *(v5 + 16);
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_77;
      }

      v33 = v28;
      if (*(v5 + 24) >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = v27;
          sub_1D21B6C24();
          v27 = v52;
        }
      }

      else
      {
        sub_1D21B140C(v32, isUniquelyReferenced_nonNull_native);
        v27 = sub_1D2176758(v100);
        if ((v33 & 1) != (v34 & 1))
        {
          goto LABEL_83;
        }
      }

      v13 = v23;
      v5 = v101;
      v15 = v22;
      if (v33)
      {
        *(v101[7] + 8 * v27) = v25;
        v9 = v24;
        v10 = v99 + 32;
        v11 = v95;
        v17 = v100;
      }

      else
      {
        v101[(v27 >> 6) + 8] |= 1 << v27;
        v17 = v100;
        *(v101[6] + 8 * v27) = v100;
        *(v101[7] + 8 * v27) = v25;
        v35 = v101[2];
        v31 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v31)
        {
          goto LABEL_80;
        }

        v101[2] = v36;
        v9 = v24;
        v10 = v99 + 32;
        v11 = v95;
      }
    }

    v37 = v9[11];
    if (v12 >= *(v37 + 16))
    {
      goto LABEL_75;
    }

    v38 = (v37 + v14);
    if (*v38)
    {
      v39 = sub_1D2176758(v17);
      if (v40)
      {
        v41 = v39;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D21B6D70();
        }

        sub_1D22011F0(v41, v13);
        v17 = v100;
      }

      goto LABEL_40;
    }

    v42 = *(v38 - 1);
    v43 = v13;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v45 = sub_1D2176758(v17);
    v47 = v43[2];
    v48 = (v46 & 1) == 0;
    v31 = __OFADD__(v47, v48);
    v49 = v47 + v48;
    if (v31)
    {
      goto LABEL_78;
    }

    v50 = v46;
    if (v43[3] >= v49)
    {
      if ((v44 & 1) == 0)
      {
        v96 = v11;
        v53 = v10;
        v54 = v9;
        v55 = v45;
        sub_1D21B6D70();
        v45 = v55;
        v9 = v54;
        v10 = v53;
        v11 = v96;
        v13 = v43;
        if (v50)
        {
LABEL_36:
          *(v13[7] + 4 * v45) = v42;
          v17 = v100;
          goto LABEL_40;
        }

        goto LABEL_38;
      }
    }

    else
    {
      sub_1D21B1670(v49, v44);
      v45 = sub_1D2176758(v100);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_83;
      }
    }

    v13 = v43;
    if (v50)
    {
      goto LABEL_36;
    }

LABEL_38:
    v13[(v45 >> 6) + 8] |= 1 << v45;
    v17 = v100;
    *(v13[6] + 8 * v45) = v100;
    *(v13[7] + 4 * v45) = v42;
    v56 = v13[2];
    v31 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (v31)
    {
      goto LABEL_81;
    }

    v13[2] = v57;
LABEL_40:
    v58 = v9[12];
    if (v12 >= *(v58 + 16))
    {
      goto LABEL_76;
    }

    v59 = (v58 + v14);
    if (*v59)
    {
      v60 = sub_1D2176758(v17);
      if (v61)
      {
        v62 = v11;
        v63 = v60;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D21B6D70();
        }

        sub_1D22011F0(v63, v15);
        v11 = v62;
      }
    }

    else
    {
      v64 = v15;
      v65 = v13;
      v66 = *(v59 - 1);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v68 = sub_1D2176758(v17);
      v70 = v64[2];
      v71 = (v69 & 1) == 0;
      v31 = __OFADD__(v70, v71);
      v72 = v70 + v71;
      if (v31)
      {
        goto LABEL_79;
      }

      v73 = v69;
      if (v64[3] >= v72)
      {
        if ((v67 & 1) == 0)
        {
          v97 = v11;
          v77 = v10;
          v78 = v9;
          v79 = v68;
          sub_1D21B6D70();
          v68 = v79;
          v9 = v78;
          v10 = v77;
          v11 = v97;
        }
      }

      else
      {
        sub_1D21B1670(v72, v67);
        v68 = sub_1D2176758(v100);
        if ((v73 & 1) != (v74 & 1))
        {
          goto LABEL_83;
        }
      }

      v13 = v65;
      v15 = v64;
      if (v73)
      {
        *(v64[7] + 4 * v68) = v66;
      }

      else
      {
        v64[(v68 >> 6) + 8] |= 1 << v68;
        *(v64[6] + 8 * v68) = v100;
        *(v64[7] + 4 * v68) = v66;
        v75 = v64[2];
        v31 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (v31)
        {
          goto LABEL_82;
        }

        v64[2] = v76;
      }
    }

    ++v12;
    v14 += 8;
    v11 += 16;
    if (v98 == v12)
    {
      v103 = v13;
      v102 = v15;

      a2 = v94;
      goto LABEL_56;
    }
  }

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
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D21CE564(unsigned __int8 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v42 - v4;
  v6 = sub_1D22504FC();
  v50 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v42 - v10;
  swift_beginAccess();
  v12 = *(v1 + 24);
  if (!*(v12 + 16))
  {
    return MEMORY[0x1E69E7CC8];
  }

  v13 = sub_1D2176DFC(a1);
  if ((v14 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  v16 = *(v15 + 16);
  v54 = *(v16 + 16);
  if (!v54)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v52 = v11;
  v47 = v9;

  swift_beginAccess();
  v17 = 0;
  v18 = v49;
  v53 = (v50 + 48);
  v51 = (v50 + 32);
  v48 = (v50 + 16);
  v46 = v50 + 8;
  v19 = MEMORY[0x1E69E7CC8];
  v42[1] = v50 + 40;
  v43 = v15;
  v44 = v16;
  v45 = v5;
  while (v17 < *(v16 + 16))
  {
    v20 = *(v15 + 32);
    if (v17 >= *(v20 + 16))
    {
      goto LABEL_26;
    }

    v21 = v15;
    v22 = *(v16 + 8 * v17 + 32);
    v23 = v18;
    sub_1D2174DA8(v20 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v17, v5, &qword_1EC6D23C0);
    if ((*v53)(v5, 1, v6) != 1)
    {
      v24 = *v51;
      (*v51)(v52, v5, v6);
      v25 = v47;
      v26 = v6;
      (*v48)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v19;
      v29 = sub_1D2176758(v22);
      v30 = v19[2];
      v31 = (v28 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_27;
      }

      v33 = v28;
      if (v19[3] >= v32)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v19 = v55;
          if ((v28 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_1D21B85B4();
          v19 = v55;
          if ((v33 & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        sub_1D21B3D64(v32, isUniquelyReferenced_nonNull_native);
        v34 = sub_1D2176758(v22);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_29;
        }

        v29 = v34;
        v19 = v55;
        if ((v33 & 1) == 0)
        {
LABEL_14:
          v19[(v29 >> 6) + 8] |= 1 << v29;
          *(v19[6] + 8 * v29) = v22;
          v36 = v50;
          v6 = v26;
          v24((v19[7] + *(v50 + 72) * v29), v25, v26);
          (*(v36 + 8))(v52, v26);
          v37 = v19[2];
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            goto LABEL_28;
          }

          v19[2] = v39;
          goto LABEL_19;
        }
      }

      v40 = v50;
      v6 = v26;
      (*(v50 + 40))(v19[7] + *(v50 + 72) * v29, v25, v26);
      (*(v40 + 8))(v52, v26);
LABEL_19:
      v18 = v49;
      v16 = v44;
      v5 = v45;
      v15 = v43;
      goto LABEL_6;
    }

    sub_1D2176170(v5, &qword_1EC6D23C0);
    v18 = v23;
    v15 = v21;
LABEL_6:
    if (v54 == ++v17)
    {

      return v19;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D21CEA28(unsigned __int8 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v47 - v5;
  v7 = sub_1D22504FC();
  v56 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = v47 - v11;
  swift_beginAccess();
  v12 = *(v1 + 24);
  if (!*(v12 + 16))
  {
    return MEMORY[0x1E69E7CC8];
  }

  v13 = sub_1D2176DFC(a1);
  if ((v14 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  v16 = v15[2];
  v17 = *(v16 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v57 = v10;
  v58 = v7;

  v60 = v16;

  swift_beginAccess();
  swift_beginAccess();
  v18 = 0;
  v59 = (v56 + 48);
  v55 = (v56 + 32);
  v53 = (v56 + 16);
  v47[1] = v56 + 40;
  v48 = (v56 + 8);
  v62 = MEMORY[0x1E69E7CC8];
  v19 = 40;
  v20 = &qword_1EC6D23C0;
  v21 = v4;
  v51 = v4;
  v50 = v6;
  v49 = v17;
  v52 = v15;
  while (1)
  {
    v22 = v15[5];
    if (v18 >= *(v22 + 16))
    {
      break;
    }

    if (*(v22 + v19) >> 60 != 15)
    {
      v23 = v15[6];
      if (v18 >= *(v23 + 16))
      {
        goto LABEL_25;
      }

      v24 = *(v60 + 8 * v18 + 32);
      v25 = v6;
      v26 = v6;
      v27 = v20;
      v28 = v21;
      sub_1D2174DA8(v23 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v25, v20);
      v29 = v58;
      if ((*v59)(v26, 1, v58) == 1)
      {
        sub_1D2176170(v26, v27);
        v20 = v27;
        v21 = v28;
        v6 = v26;
      }

      else
      {
        v30 = v61;
        v54 = *v55;
        v54(v61, v26, v29);
        (*v53)(v57, v30, v29);
        v31 = v62;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v31;
        v34 = sub_1D2176758(v24);
        v35 = *(v31 + 16);
        v36 = (v33 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          goto LABEL_26;
        }

        v38 = v33;
        if (*(v31 + 24) >= v37)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D21B85B4();
          }
        }

        else
        {
          sub_1D21B3D64(v37, isUniquelyReferenced_nonNull_native);
          v39 = sub_1D2176758(v24);
          if ((v38 & 1) != (v40 & 1))
          {
            goto LABEL_28;
          }

          v34 = v39;
        }

        v41 = v63;
        v42 = v57;
        v62 = v63;
        if (v38)
        {
          (*(v56 + 40))(*(v63 + 56) + *(v56 + 72) * v34, v57, v29);
          v15 = v52;
        }

        else
        {
          *(v63 + 8 * (v34 >> 6) + 64) |= 1 << v34;
          *(*(v41 + 48) + 8 * v34) = v24;
          v54((*(v41 + 56) + *(v56 + 72) * v34), v42, v29);
          v43 = *(v62 + 16);
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          v15 = v52;
          if (v44)
          {
            goto LABEL_27;
          }

          *(v62 + 16) = v45;
        }

        (*v48)(v61, v29);
        v21 = v51;
        v6 = v50;
        v17 = v49;
        v20 = &qword_1EC6D23C0;
      }
    }

    ++v18;
    v19 += 16;
    if (v17 == v18)
    {

      return v62;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D21CEF4C(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(v1 + 24);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v7 + 64;
  v11 = v9 & *(v7 + 64);
  v12 = (v8 + 63) >> 6;
  v26 = v7;
LABEL_4:
  while (v11)
  {
LABEL_9:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(*(v7 + 56) + ((v6 << 9) | (8 * v14)));
    v16 = v15[2];
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = v16 + 32;
      v20 = 40;
      while (*(v19 + 8 * v18) != a1)
      {
        ++v18;
        v20 += 16;
        if (v17 == v18)
        {
          goto LABEL_4;
        }
      }

      v27 = v4;
      result = swift_beginAccess();
      v21 = v15[3];
      if (v18 >= *(v21 + 16))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v22 = v5;
      v23 = *(v21 + v20);
      result = swift_beginAccess();
      v24 = v15[5];
      if (v18 >= *(v24 + 16))
      {
        goto LABEL_23;
      }

      v5 = (v23 >> 60 != 15) | v22;
      v4 = (*(v24 + v20) >> 60 != 15) | v27;
      v7 = v26;
    }
  }

  while (1)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v10 + 8 * v13);
    ++v6;
    if (v11)
    {
      v6 = v13;
      goto LABEL_9;
    }
  }

  if (v4)
  {
    v25 = 256;
  }

  else
  {
    v25 = 0;
  }

  return v25 & 0xFFFFFFFE | v5 & 1;
}

uint64_t sub_1D21CF108()
{

  v1 = OBJC_IVAR____TtC19VisualUnderstanding21VUIndexStreamingStore_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VUIndexStreamingStore()
{
  result = qword_1EDC87668;
  if (!qword_1EDC87668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D21CF208()
{
  result = sub_1D225082C();
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

uint64_t sub_1D21CF3E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2378);
  v82 = *(v1 - 8);
  v83 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v90 = (&v67 - v2);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
  v76 = *(v81 - 8);
  v3 = MEMORY[0x1EEE9AC00](v81);
  v89 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v80 = &v67 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v79 = &v67 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v88 = &v67 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2B98);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v67 - v16);
  swift_beginAccess();
  v18 = *(v0 + 24);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v70 = v18;

  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v69 = v19;
  v68 = v23;
  v78 = v15;
  v85 = v17;
LABEL_6:
  if (v22)
  {
    v27 = v25;
LABEL_11:
    v73 = (v22 - 1) & v22;
    v28 = *(v70 + 56);
    v72 = v27;
    v29 = *(v28 + ((v27 << 9) | (8 * __clz(__rbit64(v22)))));
    swift_beginAccess();
    v30 = *(v29 + 72);
    v31 = *(v30 + 64);
    v84 = v30 + 64;
    v32 = 1 << *(v30 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & v31;
    v74 = (v32 + 63) >> 6;
    v71 = v29;

    v77 = v30;

    v35 = 0;
    while (1)
    {
      v91 = v26;
      if (!v34)
      {
        break;
      }

      v36 = v35;
LABEL_25:
      v39 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v40 = v39 | (v36 << 6);
      v41 = *(*(v77 + 48) + 8 * v40);
      v42 = v75;
      sub_1D2174DA8(*(v77 + 56) + *(v76 + 72) * v40, v75, &qword_1EC6D2968);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2BA0);
      v44 = *(v43 + 48);
      *v15 = v41;
      sub_1D21A6938(v42, v15 + v44, &qword_1EC6D2968);
      (*(*(v43 - 8) + 56))(v15, 0, 1, v43);
      v17 = v85;
LABEL_26:
      sub_1D21A6938(v15, v17, &qword_1EC6D2B98);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2BA0);
      if ((*(*(v45 - 8) + 48))(v17, 1, v45) == 1)
      {

        v25 = v72;
        v19 = v69;
        v23 = v68;
        v26 = v91;
        v22 = v73;
        goto LABEL_6;
      }

      v86 = *v17;
      v46 = v17 + *(v45 + 48);
      v47 = v81;
      v48 = v46[*(v81 + 48)];
      v49 = sub_1D225055C();
      v87 = *(v49 - 8);
      v50 = *(v87 + 32);
      v51 = v79;
      v50(v79, v46, v49);
      v52 = *(v47 + 48);
      v53 = v88;
      v50(v88, v51, v49);
      *(v53 + v52) = v48;
      v54 = v80;
      sub_1D2174DA8(v53, v80, &qword_1EC6D2968);
      v55 = v53;
      v56 = v89;
      sub_1D2174DA8(v55, v89, &qword_1EC6D2968);
      v57 = *(v56 + *(v47 + 48));
      v58 = v90 + *(v83 + 48);
      *v90 = v86;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D60);
      v60 = *(v59 + 48);
      v61 = *(v59 + 64);
      v62 = v54;
      v63 = v49;
      v50(v58, v62, v49);
      v58[v60] = v57;
      v58[v61] = 1;
      v26 = v91;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1D21960C0(0, v26[2] + 1, 1, v26);
      }

      v65 = v26[2];
      v64 = v26[3];
      v17 = v85;
      if (v65 >= v64 >> 1)
      {
        v26 = sub_1D21960C0(v64 > 1, v65 + 1, 1, v26);
      }

      sub_1D2176170(v88, &qword_1EC6D2968);
      v26[2] = v65 + 1;
      sub_1D21A6938(v90, v26 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v65, &qword_1EC6D2378);
      result = (*(v87 + 8))(v89, v63);
      v15 = v78;
    }

    if (v74 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    else
    {
      v37 = v74;
    }

    v38 = v37 - 1;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v74)
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2BA0);
        (*(*(v66 - 8) + 56))(v15, 1, 1, v66);
        v34 = 0;
        v35 = v38;
        goto LABEL_26;
      }

      v34 = *(v84 + 8 * v36);
      ++v35;
      if (v34)
      {
        v35 = v36;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v23)
      {

        return v26;
      }

      v22 = *(v19 + 8 * v27);
      ++v25;
      if (v22)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D21CFBD0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(v5 + 24);
  if (!*(v10 + 16))
  {
    return 0;
  }

  v11 = sub_1D2176DFC(a1);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  v14 = v13[2];
  v40 = *(v14 + 16);
  if (!v40)
  {
    return 0;
  }

  v39 = v14 + 32;

  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v15 = 0;
  v16 = 0;
  v17 = 36;
  v18 = 40;
  v38 = a5;
  while (1)
  {
    v19 = *(v39 + v17 - 36);
    if (!*(a5 + 16))
    {
      goto LABEL_17;
    }

    result = sub_1D2176758(*(v39 + v17 - 36));
    if ((v21 & 1) == 0)
    {
      goto LABEL_17;
    }

    v22 = v13[7];
    if (v16 >= *(v22 + 16))
    {
      break;
    }

    v23 = *(*(a5 + 56) + 8 * result);
    if ((*(v22 + v18) & 1) != 0 || *(v22 + v18 - 8) != v23)
    {
      swift_beginAccess();
      result = swift_isUniquelyReferenced_nonNull_native();
      v13[7] = v22;
      if ((result & 1) == 0)
      {
        result = sub_1D2204890(v22);
        v22 = result;
      }

      if (v16 >= *(v22 + 16))
      {
        goto LABEL_53;
      }

      v24 = (v22 + v18);
      *(v24 - 1) = v23;
      *v24 = 0;
      v13[7] = v22;
      result = swift_endAccess();
      v25 = __OFADD__(v15++, 1);
      if (v25)
      {
        goto LABEL_55;
      }
    }

    a5 = v38;
LABEL_17:
    if (*(a3 + 16))
    {
      result = sub_1D2176758(v19);
      if (v26)
      {
        v27 = v13[10];
        if (v16 >= *(v27 + 16))
        {
          goto LABEL_50;
        }

        v28 = *(*(a3 + 56) + 8 * result);
        if ((*(v27 + v18) & 1) != 0 || *(v27 + v18 - 8) != v28)
        {
          swift_beginAccess();
          result = swift_isUniquelyReferenced_nonNull_native();
          v13[10] = v27;
          if ((result & 1) == 0)
          {
            result = sub_1D2204890(v27);
            v27 = result;
          }

          if (v16 >= *(v27 + 16))
          {
            goto LABEL_54;
          }

          v29 = (v27 + v18);
          *(v29 - 1) = v28;
          *v29 = 0;
          v13[10] = v27;
          result = swift_endAccess();
          v25 = __OFADD__(v15++, 1);
          if (v25)
          {
            goto LABEL_56;
          }
        }

        a5 = v38;
      }
    }

    if (*(a4 + 16))
    {
      result = sub_1D2176758(v19);
      if (v30)
      {
        v31 = v13[11];
        if (v16 >= *(v31 + 16))
        {
          goto LABEL_51;
        }

        v32 = *(*(a4 + 56) + 4 * result);
        if ((*(v31 + v17) & 1) != 0 || *(v31 + v17 - 4) != v32)
        {
          swift_beginAccess();
          result = swift_isUniquelyReferenced_nonNull_native();
          v13[11] = v31;
          if ((result & 1) == 0)
          {
            result = sub_1D220487C(v31);
            v31 = result;
          }

          if (v16 >= *(v31 + 16))
          {
            goto LABEL_57;
          }

          v33 = (v31 + v17);
          *(v33 - 1) = v32;
          *v33 = 0;
          v13[11] = v31;
          result = swift_endAccess();
          v25 = __OFADD__(v15++, 1);
          if (v25)
          {
            goto LABEL_59;
          }
        }
      }
    }

    if (*(a2 + 16))
    {
      result = sub_1D2176758(v19);
      if (v34)
      {
        v35 = v13[12];
        if (v16 >= *(v35 + 16))
        {
          goto LABEL_52;
        }

        v36 = *(*(a2 + 56) + 4 * result);
        if ((*(v35 + v17) & 1) != 0 || *(v35 + v17 - 4) != v36)
        {
          swift_beginAccess();
          result = swift_isUniquelyReferenced_nonNull_native();
          v13[12] = v35;
          if ((result & 1) == 0)
          {
            result = sub_1D220487C(v35);
            v35 = result;
          }

          if (v16 >= *(v35 + 16))
          {
            goto LABEL_58;
          }

          v37 = (v35 + v17);
          *(v37 - 1) = v36;
          *v37 = 0;
          v13[12] = v35;
          result = swift_endAccess();
          v25 = __OFADD__(v15++, 1);
          if (v25)
          {
            goto LABEL_60;
          }
        }
      }
    }

    ++v16;
    v17 += 8;
    v18 += 16;
    if (v40 == v16)
    {

      return v15;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
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
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

unint64_t sub_1D21D0018(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  v21 = v20;
  v22 = v19;
  v205 = a6;
  v206 = a7;
  v209 = a5;
  v207 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0) - 8;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v192 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v192 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v192 - v37;
  v208 = a3;
  v39 = a3 >> 60;
  if (v39 >= 0xF && a8 >> 60 == 15)
  {
    v40 = sub_1D225080C();
    v41 = sub_1D2250CDC();
    if (!os_log_type_enabled(v40, v41))
    {
LABEL_6:

      sub_1D217EE2C();
      swift_allocError();
      *v48 = 1;
      return swift_willThrow();
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Unable to add embedding: embedding or contextual embedding required";
    v44 = v41;
    v45 = v40;
    v46 = v42;
    v47 = 2;
LABEL_5:
    _os_log_impl(&dword_1D2171000, v45, v44, v43, v46, v47);
    MEMORY[0x1D3899640](v42, -1, -1);
    goto LABEL_6;
  }

  v201 = a4;
  v202 = v36;
  v204 = a8;
  v210 = a1;
  v203 = a10;
  v199 = v35;
  v200 = a9;
  swift_beginAccess();
  v50 = *(v22 + 16);
  if (!*(v50 + 16))
  {
LABEL_27:
    swift_beginAccess();
    v60 = *(v22 + 24);
    v61 = v210;
    if (!*(v60 + 16) || (sub_1D2176DFC(v210), (v62 & 1) == 0))
    {
      type metadata accessor for VUIndexStreamingStore.ObservationSet();
      v63 = swift_allocObject();
      v64 = MEMORY[0x1E69E7CC0];
      v63[2] = MEMORY[0x1E69E7CC0];
      v63[3] = v64;
      v63[4] = v64;
      v63[5] = v64;
      v65 = MEMORY[0x1E69E7CC8];
      v63[6] = v64;
      v63[7] = v64;
      v63[8] = v64;
      v63[9] = v65;
      v63[10] = v64;
      v63[11] = v64;
      v63[12] = v64;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v212 = *(v22 + 24);
      *(v22 + 24) = 0x8000000000000000;
      sub_1D21BA818(v63, v61, isUniquelyReferenced_nonNull_native);
      v60 = v212;
      *(v22 + 24) = v212;
      swift_endAccess();
    }

    if (!*(v60 + 16))
    {
      return 0;
    }

    v67 = sub_1D2176DFC(v61);
    if ((v68 & 1) == 0)
    {
      return 0;
    }

    v52 = *(*(v60 + 56) + 8 * v67);
    v198 = v52;
    if (a17)
    {
      v196 = v20;
      if (a19)
      {

        while (1)
        {
          do
          {
            v211[0] = 0;
            MEMORY[0x1D3899660](v211, 8);
          }

          while (((0x7FFFFFFFFFFFFFFELL * v211[0]) & 0xFFFFFFFFFFFFFFFCLL) == 0);
          v69 = *(v52 + 16);
          v70 = *(v69 + 16);
          if (!v70)
          {
            break;
          }

          v71 = (v69 + 32);
          while (1)
          {
            v72 = *v71++;
            if (v72 == ((v211[0] * 0x7FFFFFFFFFFFFFFEuLL) >> 64) + 1)
            {
              break;
            }

            if (!--v70)
            {
              goto LABEL_40;
            }
          }
        }

LABEL_40:
        v195 = ((v211[0] * 0x7FFFFFFFFFFFFFFEuLL) >> 64) + 1;
        goto LABEL_66;
      }

LABEL_65:
      v195 = a18;

LABEL_66:
      v91 = sub_1D22504FC();
      v92 = *(*(v91 - 8) + 56);
      v92(v38, 1, 1, v91);
      v92(v202, 1, 1, v91);
      v93 = *(v52 + 16);
      v94 = swift_isUniquelyReferenced_nonNull_native();
      *(v52 + 16) = v93;
      if ((v94 & 1) == 0)
      {
        goto LABEL_211;
      }

      while (1)
      {
        v96 = *(v93 + 2);
        v95 = *(v93 + 3);
        if (v96 >= v95 >> 1)
        {
          v93 = sub_1D2195F78((v95 > 1), v96 + 1, 1, v93);
        }

        *(v93 + 2) = v96 + 1;
        *&v93[8 * v96 + 32] = v195;
        *(v52 + 16) = v93;
        swift_beginAccess();
        v97 = *(v52 + 24);
        v98 = swift_isUniquelyReferenced_nonNull_native();
        *(v52 + 24) = v97;
        if ((v98 & 1) == 0)
        {
          v97 = sub_1D2196230(0, v97[2] + 1, 1, v97);
          *(v52 + 24) = v97;
        }

        v100 = v97[2];
        v99 = v97[3];
        if (v100 >= v99 >> 1)
        {
          v97 = sub_1D2196230((v99 > 1), v100 + 1, 1, v97);
        }

        v97[2] = v100 + 1;
        v194 = xmmword_1D2253ED0;
        *&v97[2 * v100 + 4] = xmmword_1D2253ED0;
        *(v52 + 24) = v97;
        swift_endAccess();
        sub_1D2174DA8(v38, v33, &qword_1EC6D23C0);
        swift_beginAccess();
        v101 = *(v52 + 32);
        v102 = swift_isUniquelyReferenced_nonNull_native();
        *(v52 + 32) = v101;
        if ((v102 & 1) == 0)
        {
          v101 = sub_1D219620C(0, v101[2] + 1, 1, v101);
          *(v52 + 32) = v101;
        }

        v103 = v199;
        v105 = v101[2];
        v104 = v101[3];
        if (v105 >= v104 >> 1)
        {
          v191 = sub_1D219620C(v104 > 1, v105 + 1, 1, v101);
          v103 = v199;
          v101 = v191;
        }

        v101[2] = v105 + 1;
        v79 = (*(v103 + 80) + 32) & ~*(v103 + 80);
        v193 = *(v103 + 72);
        sub_1D21A6938(v33, v101 + v79 + v193 * v105, &qword_1EC6D23C0);
        *(v52 + 32) = v101;
        swift_endAccess();
        swift_beginAccess();
        v106 = *(v52 + 40);
        v107 = swift_isUniquelyReferenced_nonNull_native();
        *(v52 + 40) = v106;
        if ((v107 & 1) == 0)
        {
          v106 = sub_1D2196230(0, v106[2] + 1, 1, v106);
          *(v52 + 40) = v106;
        }

        v109 = v106[2];
        v108 = v106[3];
        if (v109 >= v108 >> 1)
        {
          v106 = sub_1D2196230((v108 > 1), v109 + 1, 1, v106);
        }

        v106[2] = v109 + 1;
        *&v106[2 * v109 + 4] = v194;
        *(v52 + 40) = v106;
        swift_endAccess();
        sub_1D2174DA8(v202, v30, &qword_1EC6D23C0);
        swift_beginAccess();
        v110 = *(v52 + 48);
        v111 = swift_isUniquelyReferenced_nonNull_native();
        *(v52 + 48) = v110;
        if ((v111 & 1) == 0)
        {
          v110 = sub_1D219620C(0, v110[2] + 1, 1, v110);
          *(v52 + 48) = v110;
        }

        v113 = v110[2];
        v112 = v110[3];
        if (v113 >= v112 >> 1)
        {
          v110 = sub_1D219620C(v112 > 1, v113 + 1, 1, v110);
        }

        v110[2] = v113 + 1;
        sub_1D21A6938(v30, v110 + v79 + v113 * v193, &qword_1EC6D23C0);
        *(v52 + 48) = v110;
        swift_endAccess();
        swift_beginAccess();
        v114 = *(v52 + 64);
        v115 = swift_isUniquelyReferenced_nonNull_native();
        *(v52 + 64) = v114;
        if ((v115 & 1) == 0)
        {
          v114 = sub_1D21960E4(0, *(v114 + 2) + 1, 1, v114);
          *(v52 + 64) = v114;
        }

        v117 = *(v114 + 2);
        v116 = *(v114 + 3);
        if (v117 >= v116 >> 1)
        {
          v114 = sub_1D21960E4((v116 > 1), v117 + 1, 1, v114);
        }

        *(v114 + 2) = v117 + 1;
        v118 = &v114[8 * v117];
        *(v118 + 8) = 0;
        v118[36] = 1;
        *(v52 + 64) = v114;
        swift_endAccess();
        swift_beginAccess();
        v119 = *(v52 + 56);
        v120 = swift_isUniquelyReferenced_nonNull_native();
        *(v52 + 56) = v119;
        if ((v120 & 1) == 0)
        {
          v119 = sub_1D21961E4(0, *(v119 + 2) + 1, 1, v119);
          *(v52 + 56) = v119;
        }

        v122 = *(v119 + 2);
        v121 = *(v119 + 3);
        if (v122 >= v121 >> 1)
        {
          v119 = sub_1D21961E4((v121 > 1), v122 + 1, 1, v119);
        }

        *(v119 + 2) = v122 + 1;
        v123 = &v119[16 * v122];
        *(v123 + 4) = 0;
        v123[40] = 1;
        *(v52 + 56) = v119;
        swift_endAccess();
        swift_beginAccess();
        v124 = *(v52 + 80);
        v125 = swift_isUniquelyReferenced_nonNull_native();
        *(v52 + 80) = v124;
        if ((v125 & 1) == 0)
        {
          v124 = sub_1D21961E4(0, *(v124 + 2) + 1, 1, v124);
          *(v52 + 80) = v124;
        }

        v127 = *(v124 + 2);
        v126 = *(v124 + 3);
        if (v127 >= v126 >> 1)
        {
          v124 = sub_1D21961E4((v126 > 1), v127 + 1, 1, v124);
        }

        *(v124 + 2) = v127 + 1;
        v128 = &v124[16 * v127];
        *(v128 + 4) = 0;
        v128[40] = 1;
        *(v52 + 80) = v124;
        swift_endAccess();
        swift_beginAccess();
        v129 = *(v52 + 88);
        v130 = swift_isUniquelyReferenced_nonNull_native();
        *(v52 + 88) = v129;
        if ((v130 & 1) == 0)
        {
          v129 = sub_1D21960E4(0, *(v129 + 2) + 1, 1, v129);
          *(v52 + 88) = v129;
        }

        v132 = *(v129 + 2);
        v131 = *(v129 + 3);
        if (v132 >= v131 >> 1)
        {
          v129 = sub_1D21960E4((v131 > 1), v132 + 1, 1, v129);
        }

        *(v129 + 2) = v132 + 1;
        v133 = &v129[8 * v132];
        *(v133 + 8) = 0;
        v133[36] = 1;
        *(v52 + 88) = v129;
        swift_endAccess();
        swift_beginAccess();
        v134 = *(v52 + 96);
        v135 = swift_isUniquelyReferenced_nonNull_native();
        *(v52 + 96) = v134;
        if ((v135 & 1) == 0)
        {
          v134 = sub_1D21960E4(0, *(v134 + 2) + 1, 1, v134);
          *(v52 + 96) = v134;
        }

        v137 = *(v134 + 2);
        v136 = *(v134 + 3);
        if (v137 >= v136 >> 1)
        {
          v134 = sub_1D21960E4((v136 > 1), v137 + 1, 1, v134);
        }

        *(v134 + 2) = v137 + 1;
        v138 = &v134[8 * v137];
        *(v138 + 8) = 0;
        v138[36] = 1;
        *(v52 + 96) = v134;
        swift_endAccess();
        v93 = &unk_1D22532E0;
        sub_1D2176170(v202, &qword_1EC6D23C0);
        sub_1D2176170(v38, &qword_1EC6D23C0);
        v139 = *(v22 + 24);
        v142 = *(v139 + 64);
        v141 = v139 + 64;
        v140 = v142;
        v143 = 1 << *(*(v22 + 24) + 32);
        v144 = -1;
        if (v143 < 64)
        {
          v144 = ~(-1 << v143);
        }

        v52 = v144 & v140;
        v33 = (v143 + 63) >> 6;
        v202 = *(v22 + 24);
        swift_bridgeObjectRetain_n();
        v30 = 0;
        v145 = MEMORY[0x1E69E7CC0];
        v197 = v22;
        while (v52)
        {
LABEL_115:
          v79 = *(*(*(v202 + 56) + ((v30 << 9) | (8 * __clz(__rbit64(v52))))) + 16);
          v21 = *(v79 + 16);
          v22 = *(v145 + 2);
          v93 = (v22 + v21);
          if (__OFADD__(v22, v21))
          {
            goto LABEL_196;
          }

          v147 = swift_isUniquelyReferenced_nonNull_native();
          if (!v147 || v93 > *(v145 + 3) >> 1)
          {
            if (v22 <= v93)
            {
              v148 = v22 + v21;
            }

            else
            {
              v148 = v22;
            }

            v145 = sub_1D2195F78(v147, v148, 1, v145);
          }

          v22 = v197;
          v52 &= v52 - 1;
          if (*(v79 + 16))
          {
            v149 = *(v145 + 2);
            if ((*(v145 + 3) >> 1) - v149 < v21)
            {
              goto LABEL_198;
            }

            memcpy(&v145[8 * v149 + 32], (v79 + 32), 8 * v21);

            if (v21)
            {
              v150 = *(v145 + 2);
              v88 = __OFADD__(v150, v21);
              v151 = v150 + v21;
              if (v88)
              {
                goto LABEL_199;
              }

              *(v145 + 2) = v151;
            }
          }

          else
          {

            if (v21)
            {
              goto LABEL_197;
            }
          }
        }

        v21 = v196;
        while (1)
        {
          v146 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v146 >= v33)
          {

            v152 = *(v145 + 2);

            v79 = v152 - 1;
            v52 = v198;
            v30 = v204;
            goto LABEL_143;
          }

          v52 = *(v141 + 8 * v146);
          ++v30;
          if (v52)
          {
            v30 = v146;
            goto LABEL_115;
          }
        }

        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        v93 = sub_1D22048B8(v93);
        *(v52 + 24) = v93;
        if ((v79 & 0x8000000000000000) != 0)
        {
LABEL_201:
          __break(1u);
        }

        else
        {
LABEL_145:
          if (v79 < *(v93 + 2))
          {
            v161 = &v93[16 * v79];
            v162 = *(v161 + 4);
            v163 = *(v161 + 5);
            v164 = v208;
            *(v161 + 4) = v207;
            *(v161 + 5) = v164;
            *(v52 + 24) = v93;
            swift_endAccess();
            sub_1D21A1F98(v162, v163);
            swift_beginAccess();
            v93 = *(v52 + 32);
            v165 = swift_isUniquelyReferenced_nonNull_native();
            *(v52 + 32) = v93;
            if (v165)
            {
              goto LABEL_147;
            }

            goto LABEL_203;
          }
        }

        __break(1u);
LABEL_203:
        v93 = sub_1D22048A4(v93);
        *(v52 + 32) = v93;
LABEL_147:
        if (v79 >= *(v93 + 2))
        {
          __break(1u);
        }

        else
        {
          v52 = (*(v199 + 80) + 32) & ~*(v199 + 80);
          v33 = *(v199 + 72) * v79;
          sub_1D21D17E4(v205, &v93[v52 + v33]);
          v166 = v198;
          v198[4] = v93;
          swift_endAccess();
          swift_beginAccess();
          v93 = v166[5];
          sub_1D21A3B64(v206, v30);
          v167 = swift_isUniquelyReferenced_nonNull_native();
          v166[5] = v93;
          if (v167)
          {
            goto LABEL_149;
          }
        }

        v93 = sub_1D22048B8(v93);
        v198[5] = v93;
LABEL_149:
        if (v79 >= *(v93 + 2))
        {
          __break(1u);
        }

        else
        {
          v168 = &v93[16 * v79];
          v169 = *(v168 + 4);
          v170 = *(v168 + 5);
          *(v168 + 4) = v206;
          *(v168 + 5) = v30;
          v30 = v198;
          v198[5] = v93;
          swift_endAccess();
          sub_1D21A1F98(v169, v170);
          swift_beginAccess();
          v93 = *(v30 + 48);
          v171 = swift_isUniquelyReferenced_nonNull_native();
          *(v30 + 48) = v93;
          if (v171)
          {
            goto LABEL_151;
          }
        }

        v93 = sub_1D22048A4(v93);
        v198[6] = v93;
LABEL_151:
        if (v79 >= *(v93 + 2))
        {
          __break(1u);
        }

        else
        {
          sub_1D21D17E4(a11, &v93[v52 + v33]);
          v172 = v198;
          v198[6] = v93;
          swift_endAccess();
          swift_beginAccess();
          v93 = v172[8];
          v173 = swift_isUniquelyReferenced_nonNull_native();
          v172[8] = v93;
          if (v173)
          {
            goto LABEL_153;
          }
        }

        v93 = sub_1D220487C(v93);
LABEL_153:
        v38 = v210;
        v52 = v201;
        v33 = v203;
        if (v79 < *(v93 + 2))
        {
          v174 = &v93[8 * v79];
          *(v174 + 8) = a14;
          v174[36] = a15 & 1;
          v198[8] = v93;
          swift_endAccess();
          *(v22 + 32) = 1;
          v175 = *(v22 + 16);
          if (*(v175 + 16))
          {
            sub_1D2176DFC(v38);
            v177 = v176;
            v178 = sub_1D2176DFC(v38);
            v179 = v200;
            if ((v180 & 1) == 0)
            {
              if (v177)
              {
                goto LABEL_194;
              }

              goto LABEL_167;
            }

            v181 = *(*(v175 + 56) + 8 * v178);
            if ((v209 & 1) == 0 && *(v181 + 24) != v52)
            {
              goto LABEL_184;
            }

            if ((v33 & 1) != 0 || *(v181 + 32) == v200)
            {
LABEL_194:

              return v195;
            }

LABEL_167:
            if (v209)
            {
              v183 = sub_1D2176DFC(v38);
              if (v184)
              {
                v182 = 0;
                v52 = *(*(*(v175 + 56) + 8 * v183) + 24);
              }

              else
              {
                v52 = 0;
                v182 = 1;
              }
            }

            else
            {
LABEL_184:
              v182 = 0;
            }

            if (v33)
            {
              v186 = sub_1D2176DFC(v38);
              if (v187)
              {
                LOBYTE(v33) = 0;
                v179 = *(*(*(v175 + 56) + 8 * v186) + 32);
              }

              else
              {
                v179 = 0;
                LOBYTE(v33) = 1;
              }
            }

            else
            {
              LOBYTE(v33) = 0;
            }
          }

          else
          {
            v182 = v209;
            if (v209)
            {
              v52 = 0;
            }

            v179 = v200;
            if (v33)
            {
              v179 = 0;
            }
          }

          type metadata accessor for VUIndexParameters();
          swift_allocObject();
          v188 = sub_1D21768F0(v38, v52, v182 & 1, v179, v33 & 1, 0);
          if (!v21)
          {
            v189 = v188;
            swift_beginAccess();
            v190 = swift_isUniquelyReferenced_nonNull_native();
            v212 = *(v22 + 16);
            *(v22 + 16) = 0x8000000000000000;
            sub_1D21BA804(v189, v38, v190);
            *(v22 + 16) = v212;
            swift_endAccess();
            goto LABEL_194;
          }
        }

        __break(1u);
LABEL_211:
        v93 = sub_1D2195F78(0, *(v93 + 2) + 1, 1, v93);
        *(v52 + 16) = v93;
      }
    }

    v77 = *(v52 + 16);
    v78 = *(v77 + 16);
    v30 = v204;
    if (v78)
    {
      v79 = 0;
      v80 = v77 + 32;
      do
      {
        if (*(v80 + 8 * v79) == a16)
        {
          v195 = a16;

LABEL_143:
          swift_beginAccess();
          v93 = *(v52 + 24);
          sub_1D21A3B64(v207, v208);
          v160 = swift_isUniquelyReferenced_nonNull_native();
          *(v52 + 24) = v93;
          if ((v160 & 1) == 0)
          {
            goto LABEL_200;
          }

          if ((v79 & 0x8000000000000000) != 0)
          {
            goto LABEL_201;
          }

          goto LABEL_145;
        }

        ++v79;
      }

      while (v78 != v79);
    }

    v81 = sub_1D225080C();
    v82 = sub_1D2250CDC();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 134217984;
      *(v83 + 4) = a16;
      _os_log_impl(&dword_1D2171000, v81, v82, "Unable to update embedding: no existing embedding available for %ld", v83, 0xCu);
      MEMORY[0x1D3899640](v83, -1, -1);
    }

    sub_1D217EE2C();
    swift_allocError();
    v85 = 2;
LABEL_183:
    *v84 = v85;
    swift_willThrow();
  }

  result = sub_1D2176DFC(v210);
  if ((v51 & 1) == 0)
  {
LABEL_11:
    if (v39 <= 0xE && (v209 & 1) == 0)
    {
      v53 = sub_1D2176DFC(v210);
      if (v54)
      {
        v52 = *(*(*(v50 + 56) + 8 * v53) + 24);
        if (v52 && v52 != v201)
        {
          goto LABEL_59;
        }
      }
    }

    if ((v203 & 1) == 0 && v204 >> 60 != 15)
    {
      v56 = sub_1D2176DFC(v210);
      if (v57)
      {
        v58 = *(*(*(v50 + 56) + 8 * v56) + 32);
        if (v58 && v58 != v200)
        {
          v40 = sub_1D225080C();
          v153 = sub_1D2250CDC();
          if (!os_log_type_enabled(v40, v153))
          {
            goto LABEL_6;
          }

          v42 = swift_slowAlloc();
          *v42 = 134218240;
          *(v42 + 4) = v200;
          *(v42 + 12) = 2048;
          *(v42 + 14) = v58;
          v43 = "Unable to add embedding: provided contextual embedding revision (%ld) does not match the current embedding revision (%ld)";
LABEL_130:
          v44 = v153;
          v45 = v40;
          v46 = v42;
          v47 = 22;
          goto LABEL_5;
        }
      }
    }

    goto LABEL_27;
  }

  v52 = *(*(v50 + 56) + 8 * result);
  if (v39 <= 0xE)
  {
    v73 = v208 >> 62;
    if ((v208 >> 62) > 1)
    {
      if (v73 == 2)
      {
        v87 = *(v207 + 16);
        v86 = *(v207 + 24);
        v88 = __OFSUB__(v86, v87);
        v74 = v86 - v87;
        if (v88)
        {
          __break(1u);
LABEL_59:
          v40 = sub_1D225080C();
          v153 = sub_1D2250CDC();
          if (!os_log_type_enabled(v40, v153))
          {
            goto LABEL_6;
          }

          v42 = swift_slowAlloc();
          *v42 = 134218240;
          *(v42 + 4) = v201;
          *(v42 + 12) = 2048;
          *(v42 + 14) = v52;
          v43 = "Unable to add embedding: provided embedding revision (%ld) does not match the current embedding revision (%ld)";
          goto LABEL_130;
        }
      }

      else
      {
        v74 = 0;
      }
    }

    else if (v73)
    {
      LODWORD(v74) = HIDWORD(v207) - v207;
      if (__OFSUB__(HIDWORD(v207), v207))
      {
LABEL_216:
        __break(1u);
        goto LABEL_217;
      }

      v74 = v74;
    }

    else
    {
      v74 = BYTE6(v208);
    }

    v155 = *(v52 + 48);
    if (*(v52 + 56))
    {
      if ((v155 - 0x2000000000000000) >> 62 == 3)
      {
        if (v74 == 4 * v155)
        {
          goto LABEL_10;
        }

        goto LABEL_140;
      }

      __break(1u);
    }

    else if (v155 + 0x4000000000000000 >= 0)
    {
      if (v74 == 2 * v155)
      {
        goto LABEL_10;
      }

LABEL_140:

      v156 = sub_1D225080C();
      v157 = sub_1D2250CDC();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        v159 = "Unable to add embedding: embedding size does not match expected size";
LABEL_181:
        _os_log_impl(&dword_1D2171000, v156, v157, v159, v158, 2u);
        MEMORY[0x1D3899640](v158, -1, -1);
      }

LABEL_182:

      sub_1D217EE2C();
      swift_allocError();
      v85 = 1;
      goto LABEL_183;
    }

    __break(1u);
    goto LABEL_214;
  }

LABEL_10:
  if (v204 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v75 = v204 >> 62;
  if ((v204 >> 62) > 1)
  {
    if (v75 == 2)
    {
      v90 = *(v206 + 16);
      v89 = *(v206 + 24);
      v88 = __OFSUB__(v89, v90);
      v76 = v89 - v90;
      if (v88)
      {
        __break(1u);
        goto LABEL_65;
      }
    }

    else
    {
      v76 = 0;
    }

    goto LABEL_173;
  }

  if (!v75)
  {
    v76 = BYTE6(v204);
LABEL_173:
    v185 = *(v52 + 48);
    if ((*(v52 + 56) & 1) == 0)
    {
      if (v185 + 0x4000000000000000 >= 0)
      {
        if (v76 == 2 * v185)
        {
          goto LABEL_11;
        }

        goto LABEL_179;
      }

      goto LABEL_215;
    }

    if ((v185 - 0x2000000000000000) >> 62 == 3)
    {
      if (v76 == 4 * v185)
      {
        goto LABEL_11;
      }

LABEL_179:

      v156 = sub_1D225080C();
      v157 = sub_1D2250CDC();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        v159 = "Unable to add contextual embedding: contextual embedding size does not match expected size";
        goto LABEL_181;
      }

      goto LABEL_182;
    }

LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

  LODWORD(v76) = HIDWORD(v206) - v206;
  if (!__OFSUB__(HIDWORD(v206), v206))
  {
    v76 = v76;
    goto LABEL_173;
  }

LABEL_217:
  __break(1u);
  return result;
}

uint64_t sub_1D21D1598(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2B88);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26[-v8];
  result = swift_beginAccess();
  v11 = 0;
  v12 = *(v3 + 24);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;
  if (v15)
  {
LABEL_4:
    v17 = v11;
LABEL_8:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v19 = *(*(*(v12 + 56) + ((v17 << 9) | (8 * v18))) + 16);
    v20 = *(v19 + 16);
    v21 = (v19 + 32);
    do
    {
      if (!v20)
      {
        v11 = v17;
        if (!v15)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      v22 = *v21++;
      --v20;
    }

    while (v22 != a1);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
    v24 = *(v23 + 48);
    v25 = sub_1D225055C();
    (*(*(v25 - 8) + 16))(v9, a2, v25);
    v9[v24] = a3;
    (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
    swift_beginAccess();

    sub_1D21DED3C(v9, a1);
    swift_endAccess();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        return result;
      }

      v15 = *(v12 + 64 + 8 * v17);
      ++v11;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D21D17E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D21D1854(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1D21AF75C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1D2250EBC();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 56) + 8 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1D21AF75C((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 4 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1D217B36C(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1D217B36C(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
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
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D21D1AA8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D21C8B38(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D21D1B14(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D21D1B14(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D225124C();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
        v5 = sub_1D2250B2C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D21D1C1C(v7, v8, a1, v4);
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
    return sub_1D219E14C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D21D1C1C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1D21C88C8(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_1D21A0C2C((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D21C88C8(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_1D21C883C(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 16);
      v13 = *(*(*a3 + 8 * v11) + 16);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 16);
        v17 = (v13 < v12) ^ (v15 >= v16);
        ++v14;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v9 = v14 - 1;
          if (v13 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v13 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D2195E30(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_1D2195E30((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_1D21A0C2C((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D21C88C8(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_1D21C883C(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(*v29 + 16) >= *(v27 + 16))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1D21D218C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC8];
LABEL_26:
    v29 = v4[2];
    if (v29)
    {
      v30 = v4;
      v31 = sub_1D21F8020(v29, 0);
      v32 = sub_1D21F92BC(&v110, v31 + 4, v29, v30);
      swift_bridgeObjectRetain_n();
      sub_1D217CF78();
      if (v32 == v29)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    v31 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v110 = v31;
    v5 = 0;
    sub_1D21D1AA8(&v110);

    v33 = v110;
    v104 = v110[2];
    if (v104)
    {
      v101 = 0;
      v34 = 0;
      v105 = v110 + 4;
      v35 = 0.0;
      v36 = MEMORY[0x1E69E7CC8];
      v103 = v110;
      while (1)
      {
        if (v34 >= v33[2])
        {
          goto LABEL_116;
        }

        v106 = v34;
        v107 = v36;
        v37 = v105[v34];
        v38 = v37[2];
        if (v38)
        {
          break;
        }

        v40 = MEMORY[0x1E69E7CC8];
LABEL_58:
        if (!v40[2] || (v58 = sub_1D2176758(-1), (v59 & 1) == 0))
        {
          v60 = v37[2];
LABEL_63:
          v61 = v40[8];
          v62 = 1 << *(v40 + 32);
          if (v62 < 64)
          {
            v63 = ~(-1 << v62);
          }

          else
          {
            v63 = -1;
          }

          v64 = v63 & v61;
          if ((v63 & v61) == 0)
          {
            v68 = 0;
            v67 = (v62 + 63) >> 6;
            while (v67 - 1 != v68)
            {
              v5 = (v68 + 1);
              v69 = v40[v68 + 9];
              v64 -= 64;
              ++v68;
              if (v69)
              {

                v66 = (v69 - 1) & v69;
                v65 = __clz(__rbit64(v69)) - v64;
                goto LABEL_72;
              }
            }

            goto LABEL_111;
          }

          v5 = 0;
          v65 = __clz(__rbit64(v64));
          v66 = (v64 - 1) & v64;
          v67 = (v62 + 63) >> 6;
LABEL_72:
          v70 = v40[6];
          v71 = v40[7];
          v72 = *(v70 + 8 * v65);
          v73 = *(v71 + 8 * v65);
          v74 = v73;
          v36 = v107;
          if (!v66)
          {
            goto LABEL_74;
          }

          do
          {
            v75 = v5;
LABEL_78:
            v76 = __clz(__rbit64(v66));
            v66 &= v66 - 1;
            v77 = (v75 << 9) | (8 * v76);
            v78 = *(v70 + v77);
            v79 = *(v71 + v77);
            if (v74 < v79)
            {
              v72 = v78;
              v73 = v79;
              v74 = v79;
            }
          }

          while (v66);
          while (1)
          {
LABEL_74:
            v75 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              __break(1u);
              goto LABEL_107;
            }

            if (v75 >= v67)
            {
              break;
            }

            v66 = v40[v75 + 8];
            v5 = (v5 + 1);
            if (v66)
            {
              v5 = v75;
              goto LABEL_78;
            }
          }

          if (v72 == -1 || v107[2] && (sub_1D2176758(v72), (v80 & 1) != 0))
          {

            goto LABEL_33;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v110 = v107;
          sub_1D21B9BE8(v73, v72, isUniquelyReferenced_nonNull_native);

          if (!__OFADD__(v101, v60))
          {
            v101 += v60;
            v36 = v110;
            v35 = v35 + v73;
            goto LABEL_33;
          }

          goto LABEL_117;
        }

        v60 = v37[2];
        if (*(v40[7] + 8 * v58) != v60)
        {
          goto LABEL_63;
        }

        v36 = v107;
LABEL_33:
        v34 = v106 + 1;
        v33 = v103;
        if (v106 + 1 == v104)
        {
          goto LABEL_87;
        }
      }

      v108 = *(a2 + 16);
      v109 = v37 + 4;

      v39 = 0;
      v40 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if (v39 >= v37[2])
        {
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
          goto LABEL_114;
        }

        v41 = v109[v39];
        if (v41 >= v108)
        {
          goto LABEL_108;
        }

        v42 = *(a2 + 32 + 8 * v41);
        v43 = v40[2];
        if (v43)
        {
          v44 = sub_1D2176758(v42);
          if (v45)
          {
            v43 = *(v40[7] + 8 * v44);
          }

          else
          {
            v43 = 0;
          }
        }

        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_109;
        }

        v5 = v37;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v110 = v40;
        v49 = sub_1D2176758(v42);
        v50 = v40[2];
        v51 = (v48 & 1) == 0;
        v52 = v50 + v51;
        if (__OFADD__(v50, v51))
        {
          goto LABEL_110;
        }

        v53 = v48;
        if (v40[3] >= v52)
        {
          if (v47)
          {
            v40 = v110;
            if (v48)
            {
              goto LABEL_37;
            }
          }

          else
          {
            sub_1D21B6C24();
            v40 = v110;
            if (v53)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
          sub_1D21B140C(v52, v47);
          v54 = sub_1D2176758(v42);
          if ((v53 & 1) != (v55 & 1))
          {
            goto LABEL_118;
          }

          v49 = v54;
          v40 = v110;
          if (v53)
          {
LABEL_37:
            *(v40[7] + 8 * v49) = v46;
            goto LABEL_38;
          }
        }

        v40[(v49 >> 6) + 8] |= 1 << v49;
        *(v40[6] + 8 * v49) = v42;
        *(v40[7] + 8 * v49) = v46;
        v56 = v40[2];
        v22 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v22)
        {
          goto LABEL_112;
        }

        v40[2] = v57;
LABEL_38:
        ++v39;
        v37 = v5;
        if (v38 == v39)
        {
          goto LABEL_58;
        }
      }
    }

LABEL_87:

    v83 = sub_1D21D1854(v82);

    v84 = *(v83 + 16);
    if (v84)
    {
      if (v84 > 7)
      {
        v85 = v84 & 0x7FFFFFFFFFFFFFF8;
        v87 = v83 + 48;
        v86 = 0.0;
        v88 = v84 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v86 = (((((((v86 + COERCE_FLOAT(*(v87 - 16))) + COERCE_FLOAT(HIDWORD(*(v87 - 16)))) + COERCE_FLOAT(*(v87 - 8))) + COERCE_FLOAT(HIDWORD(*(v87 - 16)))) + COERCE_FLOAT(*v87)) + COERCE_FLOAT(HIDWORD(*v87))) + COERCE_FLOAT(*(v87 + 8))) + COERCE_FLOAT(HIDWORD(*v87));
          v87 += 32;
          v88 -= 8;
        }

        while (v88);
        if (v84 == v85)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v85 = 0;
        v86 = 0.0;
      }

      v89 = v84 - v85;
      v90 = (v83 + 4 * v85 + 32);
      do
      {
        v91 = *v90++;
        v86 = v86 + v91;
        --v89;
      }

      while (v89);
    }

LABEL_96:

    v92 = *(a2 + 16);
    if (v92)
    {
      v93 = (a2 + 32);
      v94 = MEMORY[0x1E69E7CC0];
      do
      {
        v98 = *v93++;
        v97 = v98;
        if (v98 != -1)
        {
          v99 = swift_isUniquelyReferenced_nonNull_native();
          v110 = v94;
          if ((v99 & 1) == 0)
          {
            sub_1D21AF7AC(0, v94[2] + 1, 1);
            v94 = v110;
          }

          v96 = v94[2];
          v95 = v94[3];
          if (v96 >= v95 >> 1)
          {
            sub_1D21AF7AC((v95 > 1), v96 + 1, 1);
            v94 = v110;
          }

          v94[2] = v96 + 1;
          v94[v96 + 4] = v97;
        }

        --v92;
      }

      while (v92);
    }
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  v5 = (a1 + 32);
  while (1)
  {
    v6 = v5[v3];
    if (!v4[2])
    {
      v9 = v4;
LABEL_10:
      v10 = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }

    v7 = sub_1D2176758(v5[v3]);
    if ((v8 & 1) == 0)
    {
      v9 = v4;
      goto LABEL_10;
    }

    v9 = v4;
    v10 = *(v4[7] + 8 * v7);

LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D22526E0;
    *(inited + 32) = v3;
    v12 = *(v10 + 2);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    if (!v13 || (v14 = *(v10 + 3) >> 1, v14 <= v12))
    {
      v10 = sub_1D2195F78(v13, v12 + 1, 1, v10);
      v14 = *(v10 + 3) >> 1;
    }

    v15 = *(v10 + 2);
    if (v14 <= v15)
    {
      goto LABEL_113;
    }

    *&v10[8 * v15 + 32] = *(inited + 32);

    ++*(v10 + 2);
    v16 = v9;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v110 = v16;
    v18 = sub_1D2176758(v6);
    v20 = v16[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (v16[3] < v23)
    {
      sub_1D21B1C6C(v23, v17);
      v18 = sub_1D2176758(v6);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_118;
      }

LABEL_20:
      v4 = v110;
      if (v24)
      {
        goto LABEL_3;
      }

      goto LABEL_21;
    }

    if (v17)
    {
      goto LABEL_20;
    }

    v28 = v18;
    sub_1D21B7130();
    v18 = v28;
    v4 = v110;
    if (v24)
    {
LABEL_3:
      *(v4[7] + 8 * v18) = v10;

      goto LABEL_4;
    }

LABEL_21:
    v4[(v18 >> 6) + 8] |= 1 << v18;
    *(v4[6] + 8 * v18) = v6;
    *(v4[7] + 8 * v18) = v10;
    v26 = v4[2];
    v22 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v22)
    {
      goto LABEL_115;
    }

    v4[2] = v27;
LABEL_4:
    if (v2 == ++v3)
    {
      goto LABEL_26;
    }
  }

LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  sub_1D22512AC();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D21D2A74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v63 = v3;
  if (!v3)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_22:
    v25 = *(a1 + 16);
    if (v25)
    {
      v26 = 0;
      v27 = 0;
      v28 = a1 + 32;
      v62 = a2 + 32;
      v29 = 0.0;
      v30 = 0.0;
      v57 = v5;
      do
      {
        if (v27 == v3)
        {
          goto LABEL_59;
        }

        v31 = *(v62 + 8 * v27);
        if (v31 != -1)
        {
          v59 = v27;
          v60 = v26;
          v32 = 0;
          v33 = *(v28 + 8 * v27);
          v34 = MEMORY[0x1E69E7CC0];
          do
          {
            if (*(v28 + 8 * v32) == v33)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1D21AF860(0, v34[2] + 1, 1);
              }

              v36 = v34[2];
              v35 = v34[3];
              if (v36 >= v35 >> 1)
              {
                sub_1D21AF860((v35 > 1), v36 + 1, 1);
              }

              v34[2] = v36 + 1;
              v37 = &v34[2 * v36];
              v37[4] = v32;
              v37[5] = v33;
            }

            ++v32;
          }

          while (v25 != v32);
          v38 = v34[2];
          if (v38)
          {
            v65 = MEMORY[0x1E69E7CC0];
            sub_1D21AF7AC(0, v38, 0);
            v40 = v63;
            v39 = v65;
            v41 = v34 + 4;
            v58 = v38;
            v42 = v62;
            while (1)
            {
              v44 = *v41;
              v41 += 2;
              v43 = v44;
              if (v44 >= v40)
              {
                break;
              }

              v45 = *(v42 + 8 * v43) == v31;
              v66 = v39;
              v47 = *(v39 + 16);
              v46 = *(v39 + 24);
              v48 = v47 + 1;
              if (v47 >= v46 >> 1)
              {
                sub_1D21AF7AC((v46 > 1), v47 + 1, 1);
                v42 = v62;
                v40 = v63;
                v39 = v66;
              }

              *(v39 + 16) = v48;
              *(v39 + 8 * v47 + 32) = v45;
              if (!--v38)
              {
                goto LABEL_44;
              }
            }

LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v39 = MEMORY[0x1E69E7CC0];
          v48 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v48)
          {
            v58 = v34[2];
LABEL_44:
            v49 = 0;
            v50 = 32;
            while (1)
            {
              v51 = *(v39 + v50);
              v18 = __OFADD__(v49, v51);
              v49 += v51;
              if (v18)
              {
                break;
              }

              v50 += 8;
              if (!--v48)
              {

                v52 = v49;
                v38 = v58;
                goto LABEL_48;
              }
            }

            __break(1u);
            goto LABEL_56;
          }

          v52 = 0.0;
LABEL_48:
          if (!v57[2])
          {
            goto LABEL_61;
          }

          v53 = sub_1D2176758(v31);
          v55 = v54;

          if ((v55 & 1) == 0)
          {
            goto LABEL_62;
          }

          v26 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_63;
          }

          v30 = v30 + (v52 / v38);
          v29 = v29 + (v52 / *(v57[7] + 8 * v53));
          v3 = v63;
          v27 = v59;
        }

        ++v27;
      }

      while (v27 != v25);
    }
  }

  v4 = (a2 + 32);
  v5 = MEMORY[0x1E69E7CC8];
  v6 = *(a2 + 16);
  while (1)
  {
    v8 = *v4++;
    v7 = v8;
    v9 = v5[2];
    if (v9)
    {
      v10 = sub_1D2176758(v7);
      if (v11)
      {
        v9 = *(v5[7] + 8 * v10);
      }

      else
      {
        v9 = 0;
      }
    }

    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v5;
    v14 = sub_1D2176758(v7);
    v16 = v5[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_58;
    }

    v20 = v15;
    if (v5[3] >= v19)
    {
      v3 = v63;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v15 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v24 = v14;
        sub_1D21B6C24();
        v3 = v63;
        v14 = v24;
        v5 = v64;
        if ((v20 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_3:
      *(v5[7] + 8 * v14) = v12;
      if (!--v6)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1D21B140C(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_1D2176758(v7);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_64;
      }

      v3 = v63;
      if (v20)
      {
        goto LABEL_3;
      }

LABEL_16:
      v5[(v14 >> 6) + 8] |= 1 << v14;
      *(v5[6] + 8 * v14) = v7;
      *(v5[7] + 8 * v14) = v12;
      v22 = v5[2];
      v18 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v18)
      {
        goto LABEL_60;
      }

      v5[2] = v23;
      if (!--v6)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D21D2ECC()
{

  v1 = OBJC_IVAR____TtC19VisualUnderstanding16VUStreamingIndex_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VUStreamingIndex()
{
  result = qword_1EDC876E0;
  if (!qword_1EDC876E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D21D2FD4()
{
  result = sub_1D225082C();
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

void *sub_1D21D3078(uint64_t a1)
{
  sub_1D225081C();
  type metadata accessor for VUIndexStreamingStore();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC8];
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  *(v3 + 24) = v4;
  *(v3 + 32) = 0;
  sub_1D225081C();
  *(v3 + OBJC_IVAR____TtC19VisualUnderstanding21VUIndexStreamingStore_contextualEmbeddingSize) = 128;
  *(v3 + OBJC_IVAR____TtC19VisualUnderstanding21VUIndexStreamingStore_isStreamingEnabled) = 0;
  v1[2] = v3;
  type metadata accessor for VUIndexStreamingScanner();
  v5 = swift_allocObject();

  sub_1D225081C();
  *(v5 + 16) = v3;
  v1[3] = v5;
  type metadata accessor for VUIndexClusterer(0);
  v6 = swift_allocObject();

  v1[4] = sub_1D21796D0(v7, v6, type metadata accessor for VUIndexStreamingStore, &off_1F4DAFDA0);
  if (a1)
  {
    v8 = v1[2];
    swift_beginAccess();
    *(v8 + 16) = a1;
  }

  return v1;
}

BOOL sub_1D21D3258(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1D225131C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1D21D3300(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D225055C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1D2177820(&qword_1EDC87228, MEMORY[0x1E69695A8]), v7 = sub_1D22508CC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1D2177820(&qword_1EDC87220, MEMORY[0x1E69695A8]);
      v15 = sub_1D225091C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1D21D3518(uint64_t a1, uint64_t a2)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2460);
  MEMORY[0x1EEE9AC00](v60);
  v5 = &v47 - v4;
  v55 = sub_1D225055C();
  v6 = *(v55 - 8);
  v7 = MEMORY[0x1EEE9AC00](v55);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v47 - v9;
  v10 = type metadata accessor for VUStreamingGallery.Label(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v59 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v47 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v47 - v20);
  if (*(a2 + 16))
  {
    sub_1D225132C();
    sub_1D21DB894(a1, v21, type metadata accessor for VUStreamingGallery.Label);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v48 = v6;
    if (EnumCaseMultiPayload == 1)
    {
      v23 = *(v6 + 32);
      v24 = a1;
      v25 = v6;
      v26 = v53;
      v58 = v11;
      v27 = v55;
      v23(v53, v21, v55);
      sub_1D2177820(&qword_1EDC87228, MEMORY[0x1E69695A8]);
      sub_1D22508DC();
      v28 = v25;
      a1 = v24;
      v29 = v27;
      v11 = v58;
      (*(v28 + 8))(v26, v29);
    }

    else
    {
      MEMORY[0x1D3898D70](*v21);
    }

    v30 = sub_1D225137C();
    v31 = -1 << *(a2 + 32);
    v32 = v30 & ~v31;
    v52 = a2 + 56;
    if ((*(a2 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
    {
      v56 = ~v31;
      v57 = *(v11 + 72);
      v58 = a1;
      v54 = (v48 + 1);
      v48 += 4;
      v33 = v52;
      v49 = v16;
      v50 = v10;
      do
      {
        v34 = a2;
        sub_1D21DB894(*(a2 + 48) + v57 * v32, v19, type metadata accessor for VUStreamingGallery.Label);
        v35 = *(v60 + 48);
        sub_1D21DB894(v19, v5, type metadata accessor for VUStreamingGallery.Label);
        sub_1D21DB894(v58, &v5[v35], type metadata accessor for VUStreamingGallery.Label);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D21DB894(v5, v59, type metadata accessor for VUStreamingGallery.Label);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_1D21DB838(v19);
            (*v54)(v59, v55);
LABEL_8:
            sub_1D2176170(v5, &qword_1EC6D2460);
            a2 = v34;
            goto LABEL_9;
          }

          v36 = *v48;
          v37 = v53;
          v38 = v55;
          (*v48)(v53, v59, v55);
          v39 = v51;
          v36(v51, &v5[v35], v38);
          LOBYTE(v36) = sub_1D225053C();
          v40 = *v54;
          v41 = v39;
          v33 = v52;
          (*v54)(v41, v38);
          v42 = v37;
          v16 = v49;
          v40(v42, v38);
          sub_1D21DB838(v19);
          sub_1D21DB838(v5);
          a2 = v34;
          if (v36)
          {
            return 1;
          }
        }

        else
        {
          sub_1D21DB838(v19);
          sub_1D21DB894(v5, v16, type metadata accessor for VUStreamingGallery.Label);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            goto LABEL_8;
          }

          v43 = *v16;
          v44 = *&v5[v35];
          sub_1D21DB838(v5);
          v45 = v43 == v44;
          a2 = v34;
          if (v45)
          {
            return 1;
          }
        }

LABEL_9:
        v32 = (v32 + 1) & v56;
      }

      while (((*(v33 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
    }
  }

  return 0;
}

unint64_t sub_1D21D3AC0(unint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 4 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 8) | (4 * v14);
      if (*(v11 + v15) < v12)
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        v16 = 0;
        v17 = LODWORD(v12);
        return v17 | (v16 << 32);
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    v17 = 0;
    v16 = 1;
    return v17 | (v16 << 32);
  }

  return result;
}

uint64_t sub_1D21D3BE4(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (v16 < result)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D21D3CF0(NSObject *a1, char *a2, int a3, uint64_t a4, uint64_t a5)
{
  v301 = a2;
  v300 = sub_1D225077C();
  v10 = *(v300 - 8);
  v11 = MEMORY[0x1EEE9AC00](v300);
  v297 = v259 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v299 = v259 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v259 - v15;
  v304 = v5;
  v17 = *(v5 + 56);
  v18 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  swift_beginAccess();
  v19 = *(v17 + v18);
  v20 = *(v19 + 16);
  v303 = a1;
  if (!v20 || (v21 = sub_1D2176DFC(a1), (v22 & 1) == 0))
  {
    v25 = sub_1D225080C();
    v26 = sub_1D2250CDC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 16777472;
      v27[4] = v303;
      _os_log_impl(&dword_1D2171000, v25, v26, "Missing parameters for type %hhu", v27, 5u);
      MEMORY[0x1D3899640](v27, -1, -1);
    }

    sub_1D217EE2C();
    swift_allocError();
    *v28 = 4;
    return swift_willThrow();
  }

  LODWORD(v284) = a3;
  v302 = *(*(v19 + 56) + 8 * v21);
  if (a4)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = a5;
    v24 = sub_1D21DB79C;
  }

  else
  {
    v24 = sub_1D21D6674;
    v23 = 0;
  }

  v30 = swift_allocObject();
  v288 = v24;
  *(v30 + 16) = v24;
  *(v30 + 24) = v23;
  v291 = v30;
  v31 = OBJC_IVAR____TtC19VisualUnderstanding16VUIndexQuantizer_logger;

  sub_1D21A6D54(a4);

  v285 = v31;
  v32 = sub_1D225080C();
  v33 = sub_1D2250CBC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 16777472;
    v34[4] = v303;
    _os_log_impl(&dword_1D2171000, v32, v33, "Training quantizer for type %hhu", v34, 5u);
    MEMORY[0x1D3899640](v34, -1, -1);
  }

  v296 = v23;
  v294 = v17;

  v35 = OBJC_IVAR____TtC19VisualUnderstanding16VUIndexQuantizer_signposter;
  sub_1D225076C();
  v281 = v35;
  v36 = sub_1D225078C();
  v37 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v36, v37, v39, "quantizerTrain", "", v38, 2u);
    MEMORY[0x1D3899640](v38, -1, -1);
  }

  v40 = *(v10 + 16);
  v41 = v300;
  v280 = v10 + 16;
  v279 = v40;
  v40(v299, v16, v300);
  v278 = sub_1D22507EC();
  swift_allocObject();
  v292 = sub_1D22507DC();
  v42 = v10 + 8;
  v277 = *(v10 + 8);
  v277(v16, v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v44 = swift_allocObject();
  v295 = xmmword_1D2252720;
  *(v44 + 16) = xmmword_1D2252720;
  v45 = sub_1D2174E10(0, &unk_1EDC886D0);
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v46 = swift_allocObject();
  v286 = xmmword_1D22526E0;
  *(v46 + 16) = xmmword_1D22526E0;
  v47 = MEMORY[0x1E69E65A8];
  *(v46 + 56) = MEMORY[0x1E69E6530];
  *(v46 + 64) = v47;
  *(v46 + 32) = v303;
  *(v44 + 32) = sub_1D2250C5C();
  v315 = v44;
  v283 = type metadata accessor for VUVectorSearchScanner();
  if (swift_dynamicCastClass())
  {
    goto LABEL_16;
  }

  sub_1D2250C5C();
  MEMORY[0x1D3898510]();
  if (*((v315 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v315 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_241;
  }

  while (1)
  {
    sub_1D2250B3C();
    v44 = v315;
LABEL_16:
    v290 = v44;
    v282 = v42;
    v48 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v49 = sub_1D225092C();
    v50 = [v48 initWithKey:v49 ascending:1];

    v51 = sub_1D2250AEC();
    v52 = objc_opt_self();
    v53 = [v52 andPredicateWithSubpredicates_];

    v54 = swift_allocObject();
    v293 = v259;
    *(v54 + 16) = v295;
    *(v54 + 32) = v50;
    v55 = *(v294 + 16);
    v56 = MEMORY[0x1EEE9AC00](v54);
    v259[-4] = v53;
    v259[-3] = v56;
    v259[-2] = v57;
    v58 = v50;
    v59 = v55;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
    v61 = v298;
    sub_1D2250DBC();
    if (v61)
    {

      goto LABEL_18;
    }

    v275 = v52;
    v298 = v58;
    v273 = v60;
    v276 = v43;
    v274 = v45;

    v64 = aBlock;
    v288(&aBlock, v63);
    if ((aBlock & 1) == 0)
    {

      v81 = v304;
LABEL_36:
      v66 = v292;
      goto LABEL_37;
    }

    v65 = *(v64 + 16);
    v66 = v304;
    if (!v65)
    {

      v81 = v66;
      goto LABEL_36;
    }

    v272 = v64;
    v67 = *(v304 + 16);
    if (!v67)
    {
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
      goto LABEL_308;
    }

    v54 = 0;
    v271 = v65;
    v68 = v65 / v67;
    if (v68 <= 1)
    {
      v64 = 1;
    }

    else
    {
      v64 = v68;
    }

    v43 = v303;
    v69 = sub_1D2222774(v303);
    v71 = v70;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v312 = *(v66 + 48);
    *(v66 + 48) = 0x8000000000000000;
    sub_1D21B9A88(v69, v71, v43, isUniquelyReferenced_nonNull_native);
    v73 = v312;
    *(v66 + 48) = v312;
    swift_endAccess();
    v45 = v274;
    v42 = v276;
    if (v284)
    {
      goto LABEL_27;
    }

    if (!*(v73 + 16))
    {
      goto LABEL_306;
    }

    v82 = sub_1D2176DFC(v43);
    if ((v83 & 1) == 0)
    {
      goto LABEL_307;
    }

    v84 = *(v73 + 56);
    v85 = (v84 + 16 * v82);
    v86 = *v85;
    v87 = v85[1];
    v88 = v87 >> 62;
    if ((v87 >> 62) > 1)
    {
      if (v88 != 2)
      {
        goto LABEL_27;
      }

      v144 = *(v86 + 16);
      v143 = *(v86 + 24);
    }

    else
    {
      if (!v88)
      {
        if ((v87 & 0xFF000000000000) != 0)
        {
          goto LABEL_147;
        }

        goto LABEL_27;
      }

      v144 = v86;
      v143 = v86 >> 32;
    }

    if (v144 != v143)
    {
LABEL_147:
      v154 = sub_1D2176DFC(v43);
      if ((v155 & 1) == 0)
      {
        goto LABEL_309;
      }

      v156 = (v84 + 16 * v154);
      v157 = *v156;
      v158 = v156[1];
      v159 = v158 >> 62;
      if ((v158 >> 62) > 1)
      {
        if (v159 == 2)
        {
          v162 = v157 + 16;
          v160 = *(v157 + 16);
          v161 = *(v162 + 8);
          v99 = __OFSUB__(v161, v160);
          v157 = v161 - v160;
          if (v99)
          {
            __break(1u);
            goto LABEL_155;
          }
        }

        else
        {
          v157 = 0;
        }
      }

      else if (v159)
      {
        v99 = __OFSUB__(HIDWORD(v157), v157);
        LODWORD(v157) = HIDWORD(v157) - v157;
        if (v99)
        {
          goto LABEL_319;
        }

        v157 = v157;
      }

      else
      {
        v157 = BYTE6(v158);
      }

      v167 = *(v302 + 48);
      if (*(v302 + 56))
      {
        if ((v167 - 0x2000000000000000) >> 62 != 3)
        {
          goto LABEL_315;
        }

        v168 = 4 * v167;
      }

      else
      {
        if (v167 + 0x4000000000000000 < 0)
        {
          goto LABEL_316;
        }

        v168 = 2 * v167;
      }

      if (!v168)
      {
        goto LABEL_310;
      }

      v169 = v157 / v168;
      v99 = __OFSUB__(v169, v64);
      v170 = v169 - v64;
      if (v99)
      {
        goto LABEL_311;
      }

      if (v170 < 0)
      {
        v99 = __OFSUB__(0, v170);
        v170 = -v170;
        if (v99)
        {
          goto LABEL_317;
        }
      }

      if (v170 <= 1)
      {
        v171 = sub_1D225080C();
        v172 = sub_1D2250CEC();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          *v173 = 0;
          _os_log_impl(&dword_1D2171000, v171, v172, "Quantizer training unnecessary", v173, 2u);
          MEMORY[0x1D3899640](v173, -1, -1);
        }

        v174 = swift_allocObject();
        *(v174 + 16) = v295;
        v175 = swift_allocObject();
        v176 = MEMORY[0x1E69E7508];
        *(v175 + 16) = v286;
        v177 = MEMORY[0x1E69E7558];
        *(v175 + 56) = v176;
        *(v175 + 64) = v177;
        *(v175 + 32) = v43;
        *(v174 + 32) = sub_1D2250C5C();
        *&v312 = v174;
        v45 = v301;
        v178 = swift_dynamicCastClass();
        v64 = v275;
        v66 = &off_1E83FA000;
        if (v178)
        {
          goto LABEL_191;
        }

        sub_1D2250C5C();
        MEMORY[0x1D3898510]();
        if (*((v312 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v312 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_322;
        }

        goto LABEL_190;
      }
    }

LABEL_27:
    v74 = sub_1D225080C();
    v75 = sub_1D2250CCC();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1D2171000, v74, v75, "Re-computing centroids...", v76, 2u);
      MEMORY[0x1D3899640](v76, -1, -1);
    }

    v312 = xmmword_1D2254540;
    v77 = v271;
    if (v271 >= v64)
    {
      v77 = v64;
    }

    v78 = *(v272 + 16);
    if (v78 < v77)
    {
      goto LABEL_296;
    }

    v270 = v64;
    v289 = 0;
    if (v78 == v77)
    {
      v80 = v272;
    }

    else
    {
      sub_1D21F8344(v272, v272 + 32, 0, (2 * v77) | 1);
      v80 = v79;
    }

    v89 = v273;
    v90 = swift_allocObject();
    *(v90 + 16) = v286;
    *(v90 + 56) = v89;
    v268 = sub_1D2177F3C(&qword_1EDC869D0, &qword_1EC6D21D8);
    *(v90 + 64) = v268;
    *(v90 + 32) = v80;

    v269 = "ing/VUIndexQuantizer.swift";
    v91 = sub_1D2250C5C();
    v42 = swift_allocObject();
    v293 = v259;
    *(v42 + 16) = v295;
    *(v42 + 32) = v298;
    MEMORY[0x1EEE9AC00](v42);
    v259[-2] = &v312;
    v54 = *(*v301 + 152);
    v92 = *v301 + 152;
    v45 = v93;
    v43 = v270;
    v94 = v289;
    (v54)(v91, v42, 0, v270, 0, sub_1D21DB0B8, &v259[-4]);
    v71 = v94;
    if (v94)
    {

      sub_1D21A1ED8(v312, *(&v312 + 1));
      goto LABEL_18;
    }

    v264 = v92;
    v259[1] = v80;
    v266 = v45;

    v298 = sub_1D21F4B58(0, v43);
    v95 = 64;
    if (((v271 >> 7) & 0xFFFFFFFFFFFFC0) == 0)
    {
      v95 = (v271 >> 7) & 0xFFFFFFFFFFFFF8;
    }

    if (v271 < 0x400)
    {
      v95 = 8;
    }

    v261 = v95;
    if (!v95)
    {
      v66 = v304;
      goto LABEL_141;
    }

    v262 = v54;
    v267 = 0;
    v96 = v43;
    v66 = v304;
LABEL_54:
    v97 = MEMORY[0x1D3898F20]();
    v98 = v96 % v271;
    v99 = __OFADD__(v96 % v271, 1024);
    v64 = v96 % v271 + 1024;
    if (v99)
    {
      goto LABEL_300;
    }

    v265 = v97;
    if (v271 >= v64)
    {
      v54 = v64;
    }

    else
    {
      v54 = v271;
    }

    v42 = v301;
    v45 = v272;
    if (__OFSUB__(v54, v98))
    {
      goto LABEL_301;
    }

    *&aBlock = sub_1D2178E78(v54 - v98);
    *(&aBlock + 1) = v100;
    if (v54 < v98)
    {
      goto LABEL_302;
    }

    if (v98 < 0)
    {
      goto LABEL_303;
    }

    v101 = *(v45 + 16);
    if (v101 < v98 || v101 < v54)
    {
      goto LABEL_304;
    }

    if (v64 < 0)
    {
      goto LABEL_305;
    }

    v263 = v54;
    if (v101 == v54 - v98)
    {

      v54 = v45;
    }

    else
    {
      sub_1D21F8344(v45, v45 + 32, v98, (2 * v54) | 1);
      v54 = v142;
    }

    v103 = v273;
    v104 = v268;
    v105 = swift_allocObject();
    *(v105 + 16) = v286;
    *(v105 + 56) = v103;
    *(v105 + 64) = v104;
    *(v105 + 32) = v54;
    v293 = v54;

    v106 = sub_1D2250C5C();
    v43 = swift_allocObject();
    *(v43 + 16) = v295;
    *(v43 + 32) = v266;
    MEMORY[0x1EEE9AC00](v43);
    v259[-2] = &aBlock;
    v260 = v107;
    v262(v106, v43, 0, 0, 1, sub_1D21DB994, &v259[-4]);
    if (v71)
    {

      v206 = v260;
      sub_1D21A1ED8(aBlock, *(&aBlock + 1));
      objc_autoreleasePoolPop(v265);

LABEL_219:
      sub_1D21A1ED8(v312, *(&v312 + 1));
      v62 = v66;
      goto LABEL_19;
    }

    v108 = sub_1D21DA9BC(v302, aBlock, *(&aBlock + 1), v312, *(&v312 + 1), 4);
    v64 = v108;
    v289 = 0;
    v314 = MEMORY[0x1E69E7CD0];
    v284 = *(v108 + 16);
    if (!v284)
    {
      v42 = MEMORY[0x1E69E7CD0];
      goto LABEL_112;
    }

    v45 = 0;
    v283 = v108 + 32;
    v275 = v108;
LABEL_72:
    if (v45 < *(v64 + 16))
    {
      break;
    }

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
    sub_1D2250B1C();
  }

  v43 = *(v283 + 8 * v45);
  v109 = *(v43 + 16);
  if (v109)
  {
    v310 = MEMORY[0x1E69E7CC0];

    sub_1D21AF75C(0, v109, 0);
    v110 = v310;
    v111 = v298;
    v112 = v298 + 32;
    v71 = (v43 + 40);
    while (1)
    {
      v113 = *(v71 - 1);
      if ((v113 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v113 >= *(v111 + 2))
      {
        goto LABEL_156;
      }

      v66 = *&v112[8 * v113];
      v114 = *v71;
      v310 = v110;
      v42 = *(v110 + 16);
      v115 = *(v110 + 24);
      v54 = v42 + 1;
      if (v42 >= v115 >> 1)
      {
        sub_1D21AF75C((v115 > 1), v42 + 1, 1);
        v111 = v298;
        v110 = v310;
      }

      *(v110 + 16) = v54;
      *(v110 + 4 * v42 + 32) = v114 / v66;
      v71 += 4;
      if (!--v109)
      {
        goto LABEL_82;
      }
    }

LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  v110 = MEMORY[0x1E69E7CC0];
LABEL_82:
  v310 = sub_1D21D8848(v110);
  v116 = v289;
  sub_1D21D8004(&v310);
  v66 = v116;
  if (v116)
  {
    goto LABEL_327;
  }

  if (!*(v310 + 2))
  {
    goto LABEL_325;
  }

  v117 = *(v310 + 4);

  if ((v117 & 0x8000000000000000) != 0)
  {
    goto LABEL_231;
  }

  if (v117 >= *(v43 + 16))
  {
    goto LABEL_232;
  }

  v54 = *(v43 + 16 * v117 + 32);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v118 = v298;
    if (v54 < 0)
    {
      goto LABEL_233;
    }
  }

  else
  {
    v118 = sub_1D2204868(v298);
    if (v54 < 0)
    {
      goto LABEL_233;
    }
  }

  if (v54 >= *(v118 + 2))
  {
    goto LABEL_234;
  }

  v119 = *&v118[8 * v54 + 32];
  v64 = v119 + 1;
  if (__OFADD__(v119, 1))
  {
    goto LABEL_235;
  }

  *&v118[8 * v54 + 32] = v64;
  v120 = *(v302 + 48);
  if (*(v302 + 56))
  {
    if ((v120 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_243;
    }

    v121 = v54 * 4 * v120;
    if ((v54 * (4 * v120)) >> 64 != v121 >> 63)
    {
      goto LABEL_236;
    }

    v122 = 2;
  }

  else
  {
    if (v120 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
LABEL_247:
      __break(1u);
      goto LABEL_248;
    }

    v121 = v54 * 2 * v120;
    if ((v54 * (2 * v120)) >> 64 != v121 >> 63)
    {
      goto LABEL_236;
    }

    v122 = 1;
  }

  v123 = v120 << v122;
  v124 = (v54 + 1) * v123;
  if (((v54 + 1) * v123) >> 64 != v124 >> 63)
  {
    goto LABEL_237;
  }

  v298 = v118;
  if (v124 < v121)
  {
    goto LABEL_238;
  }

  v109 = sub_1D225048C();
  v43 = v125;
  v120 = *(v302 + 48);
  if (*(v302 + 56))
  {
    if ((v120 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_244;
    }

    v120 *= 4;
    v126 = v45 * v120;
    if ((v45 * v120) >> 64 != (v45 * v120) >> 63)
    {
      goto LABEL_247;
    }
  }

  else
  {
    if (v120 + 0x4000000000000000 < 0)
    {
      goto LABEL_245;
    }

    v120 *= 2;
    v126 = v45 * v120;
    if ((v45 * v120) >> 64 != (v45 * v120) >> 63)
    {
      goto LABEL_246;
    }
  }

  ++v45;
  if ((v45 * v120) >> 64 != (v45 * v120) >> 63)
  {
    goto LABEL_239;
  }

  if (v45 * v120 < v126)
  {
    goto LABEL_240;
  }

  v127 = 1.0 / v64;
  v71 = sub_1D225048C();
  v129 = v128;
  sub_1D2198024(&v310, v54);
  v130 = v302;

  sub_1D21A3B78(v71, v129);
  sub_1D21D9698(v109, v43, v71, v129, v130, &v312, v54, v127);
  v289 = 0;
  sub_1D21A1ED8(v109, v43);
  sub_1D21A1ED8(v71, v129);
  v64 = v275;
  if (v45 != v284)
  {
    goto LABEL_72;
  }

  v42 = v314;
LABEL_112:
  ++v267;

  v131 = 0;
  v71 = (v42 + 56);
  v132 = 1 << *(v42 + 32);
  if (v132 < 64)
  {
    v133 = ~(-1 << v132);
  }

  else
  {
    v133 = -1;
  }

  v134 = v133 & *(v42 + 56);
  v45 = (v132 + 63) >> 6;
  while (1)
  {
    v43 = v276;
    if (!v134)
    {
      break;
    }

    v66 = v131;
LABEL_121:
    v135 = *(*(v42 + 48) + ((v66 << 9) | (8 * __clz(__rbit64(v134)))));
    v109 = *(v302 + 56);
    v120 = *(v302 + 48);
    if (v109)
    {
      if ((v120 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_298;
      }

      v136 = 4 * v120;
    }

    else
    {
      if (v120 + 0x4000000000000000 < 0)
      {
        goto LABEL_297;
      }

      v136 = 2 * v120;
    }

    v43 = v135 * v136;
    if ((v135 * v136) >> 64 != (v135 * v136) >> 63)
    {
      goto LABEL_249;
    }

    v99 = __OFADD__(v135, 1);
    v137 = v135 + 1;
    if (v99)
    {
      goto LABEL_250;
    }

    if (v109)
    {
      if ((v120 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_299;
      }

      v138 = 4 * v120;
    }

    else
    {
      v138 = 2 * v120;
    }

    v54 = v137 * v138;
    v120 = (v137 * v138) >> 64;
    if (v120 != v54 >> 63)
    {
      goto LABEL_251;
    }

    if (v54 < v43)
    {
      goto LABEL_252;
    }

    v134 &= v134 - 1;
    v310 = sub_1D225044C();
    v311 = v139;
    v140 = v289;
    sub_1D21DA5FC(&v310, v109);
    v64 = v310;
    v141 = v311;
    sub_1D21DA230(v310, v311);
    v289 = v140;
    sub_1D21A1ED8(v64, v141);
    v131 = v66;
  }

  while (2)
  {
    v66 = v131 + 1;
    if (__OFADD__(v131, 1))
    {
      __break(1u);
      goto LABEL_225;
    }

    if (v66 < v45)
    {
      v134 = *&v71[2 * v66];
      ++v131;
      if (v134)
      {
        goto LABEL_121;
      }

      continue;
    }

    break;
  }

  sub_1D21A1ED8(aBlock, *(&aBlock + 1));
  objc_autoreleasePoolPop(v265);
  (v288)(&aBlock);
  if ((aBlock & 1) == 0)
  {

    sub_1D21A1ED8(v312, *(&v312 + 1));
    v81 = v304;
    v66 = v292;
    goto LABEL_37;
  }

  v66 = v304;
  v71 = v289;
  v96 = v263;
  if (v267 != v261)
  {
    goto LABEL_54;
  }

LABEL_141:

  v145 = sub_1D21DB0D4(v302, v312, *(&v312 + 1));
  v147 = v146;
  sub_1D21A1ED8(v312, *(&v312 + 1));
  *&v312 = v145;
  *(&v312 + 1) = v147;
  v148 = sub_1D225080C();
  v149 = sub_1D2250CCC();
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    *v150 = 0;
    _os_log_impl(&dword_1D2171000, v148, v149, "Updating partitions...", v150, 2u);
    MEMORY[0x1D3899640](v150, -1, -1);
  }

  v151 = v312;
  swift_beginAccess();
  sub_1D21A3B78(v151, *(&v151 + 1));
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v310 = *(v66 + 48);
  *(v66 + 48) = 0x8000000000000000;
  v153 = v303;
  sub_1D21B9A88(v151, *(&v151 + 1), v303, v152);
  *(v66 + 48) = v310;
  swift_endAccess();
  sub_1D2221F50(v153, v312, *(&v312 + 1));
  if (v71)
  {

    goto LABEL_219;
  }

LABEL_157:
  v64 = 0;
  v120 = 0;
  while (1)
  {
    v109 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    v99 = __OFADD__(v120, 2048);
    v120 += 2048;
    if (v99)
    {
      v120 = 0x7FFFFFFFFFFFFFFFLL;
    }

    ++v64;
    if (v120 >= v271)
    {
      *&aBlock = MEMORY[0x1E69E7CC0];
      sub_1D21AF7AC(0, v109 & ~(v109 >> 63), 0);
      if (v109 < 0)
      {
        goto LABEL_320;
      }

      v289 = v71;
      v54 = aBlock;
      if (!v109)
      {
        v71 = 0;
        v109 = *(aBlock + 16);
        v42 = v304;
        v163 = v271;
        goto LABEL_254;
      }

      v45 = 0;
      v66 = 0x7FFFFFFFFFFFFFFFLL;
      v163 = v271;
      do
      {
        if (v45 >= v163)
        {
          goto LABEL_295;
        }

        v71 = (v45 + 2048);
        if (__OFADD__(v45, 2048))
        {
          v164 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v164 = v45 + 2048;
        }

        *&aBlock = v54;
        v166 = *(v54 + 16);
        v165 = *(v54 + 24);
        v109 = v166 + 1;
        if (v166 >= v165 >> 1)
        {
          sub_1D21AF7AC((v165 > 1), v166 + 1, 1);
          v163 = v271;
          v54 = aBlock;
        }

        *(v54 + 16) = v109;
        *(v54 + 8 * v166 + 32) = v45;
        v45 = v164;
        --v64;
      }

      while (v64);
      v42 = v304;
      if (v164 < v163)
      {
        goto LABEL_254;
      }

      goto LABEL_262;
    }
  }

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
  sub_1D21AF7AC((v120 > 1), v43, 1);
  v163 = v271;
  v54 = aBlock;
  while (1)
  {
    *(v54 + 16) = v43;
    *(v54 + 8 * v109 + 32) = v71;
    v216 = v64 >= v163 ? 1 : v66;
    v71 += 512;
    v109 = v43;
    if (v216)
    {
      break;
    }

LABEL_254:
    v64 = (v71 + 512);
    LOBYTE(v66) = __OFADD__(v71, 2048);
    *&aBlock = v54;
    v120 = *(v54 + 24);
    v43 = v109 + 1;
    if (v109 >= v120 >> 1)
    {
      goto LABEL_253;
    }
  }

LABEL_262:

  v217 = v297;
  sub_1D225076C();
  v218 = sub_1D225078C();
  v219 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v220 = swift_slowAlloc();
    *v220 = 0;
    v221 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v218, v219, v221, "quantizerAssignments", "", v220, 2u);
    MEMORY[0x1D3899640](v220, -1, -1);
  }

  v222 = v300;
  v279(v299, v217, v300);
  swift_allocObject();
  v64 = sub_1D22507DC();
  v277(v217, v222);
  v223 = swift_allocObject();
  *(v223 + 16) = MEMORY[0x1E69E7CC8];
  v224 = v223 + 16;
  sub_1D2174E10(0, &qword_1EDC886A0);
  MEMORY[0x1EEE9AC00](*(v54 + 16));
  v259[-12] = v54;
  v259[-11] = 2048;
  v225 = v301;
  v226 = v302;
  v259[-10] = v272;
  v259[-9] = v226;
  v259[-8] = v225;
  v259[-7] = v42;
  LOBYTE(v259[-6]) = v303;
  v259[-5] = &v312;
  v259[-4] = v223;
  v227 = v291;
  v259[-3] = sub_1D21DB078;
  v259[-2] = v227;
  sub_1D2250D2C();

  v228 = *(v42 + OBJC_IVAR____TtC19VisualUnderstanding16VUIndexQuantizer_lockQueue);
  v308 = nullsub_1;
  v309 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v306 = sub_1D2179EE8;
  v307 = &block_descriptor_1;
  v229 = _Block_copy(&aBlock);

  dispatch_sync(v228, v229);
  _Block_release(v229);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v66 = v292;
  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_321;
  }

  v231 = v289;
  sub_1D22299E0(16);
  v289 = v231;
  v232 = v266;
  if (v231)
  {

    sub_1D21D6CD0(v42, v64, "quantizerAssignments");

    sub_1D21A1ED8(v312, *(&v312 + 1));
    sub_1D21D6CD0(v42, v66, "quantizerTrain");
  }

  swift_beginAccess();
  if (!*(*v224 + 16))
  {
    goto LABEL_282;
  }

  swift_retain_n();
  v233 = sub_1D225080C();
  v45 = sub_1D2250CEC();
  v303 = v233;
  if (!os_log_type_enabled(v233, v45))
  {

    goto LABEL_293;
  }

  v232 = -1;
  v54 = swift_slowAlloc();
  v234 = 0;
  v235 = 0;
  *v54 = 134219264;
  v236 = *v224;
  *(v54 + 4) = *(*v224 + 16);
  *(v54 + 12) = 2048;
  *(v54 + 14) = v270;
  *(v54 + 22) = 2048;
  v237 = 1 << *(v236 + 32);
  if (v237 < 64)
  {
    v238 = ~(-1 << v237);
  }

  else
  {
    v238 = -1;
  }

  v239 = v238 & *(v236 + 64);
  v240 = (v237 + 63) >> 6;
LABEL_273:
  if (v239)
  {
    v241 = v234;
    goto LABEL_279;
  }

  while (2)
  {
    v241 = v234 + 1;
    if (!__OFADD__(v234, 1))
    {
      if (v241 < v240)
      {
        v239 = *(v236 + 64 + 8 * v241);
        ++v234;
        if (!v239)
        {
          continue;
        }

        v234 = v241;
LABEL_279:
        v242 = __clz(__rbit64(v239));
        v239 &= v239 - 1;
        v243 = *(*(v236 + 56) + ((v241 << 9) | (8 * v242)));
        v99 = __OFADD__(v235, v243);
        v235 += v243;
        if (!v99)
        {
          goto LABEL_273;
        }

        __break(1u);
LABEL_282:

LABEL_293:
        sub_1D21D6CD0(v42, v64, "quantizerAssignments");

        sub_1D21A1ED8(v312, *(&v312 + 1));
        v81 = v42;
LABEL_37:
        sub_1D21D6CD0(v81, v66, "quantizerTrain");
      }

      LODWORD(v301) = v45;

      *(v54 + 24) = v235;

      *(v54 + 32) = 2048;

      v245 = sub_1D21D3BE4(v244);
      v110 = v246;

      if (v110)
      {
        v247 = 0;
      }

      else
      {
        v247 = v245;
      }

      *(v54 + 34) = v247;

      *(v54 + 42) = 2048;
      v109 = *(v223 + 16);

      v310 = sub_1D21F8760(v248);
      v249 = v289;
      sub_1D21D8158(&v310);
      v289 = v249;
      if (v249)
      {
        goto LABEL_330;
      }

      v109 = v310;
      v250 = *(*v224 + 16) >> 1;
      if (v250 < *(v310 + 2))
      {
        v251 = *&v310[8 * v250 + 32];

        *(v54 + 44) = v251;

        *(v54 + 52) = 2048;

        v253 = sub_1D21F4E54(v252);
        v255 = v254;

        if (v255)
        {
          v256 = 0;
        }

        else
        {
          v256 = v253;
        }

        *(v54 + 54) = v256;

        v257 = v303;
        _os_log_impl(&dword_1D2171000, v303, v301, "Updated %ld out of %ld partitions with %ld primary observations (min=%ld, median=%ld, max=%ld)", v54, 0x3Eu);
        MEMORY[0x1D3899640](v54, -1, -1);

        v42 = v304;
        v232 = v266;
        goto LABEL_293;
      }

LABEL_326:
      __break(1u);
LABEL_327:
      for (i = v66; ; i = v289)
      {

        __break(1u);
LABEL_329:
        sub_1D22512AC();
        __break(1u);
        sub_1D21A1ED8(v110, v109);
        swift_unexpectedError();
        __break(1u);
LABEL_330:
      }
    }

    break;
  }

  while (2)
  {
    __break(1u);
LABEL_313:
    __break(1u);
LABEL_314:
    __break(1u);
LABEL_315:
    __break(1u);
LABEL_316:
    __break(1u);
LABEL_317:
    __break(1u);
LABEL_318:
    __break(1u);
LABEL_319:
    __break(1u);
LABEL_320:
    __break(1u);
LABEL_321:
    __break(1u);
LABEL_322:
    sub_1D2250B1C();
LABEL_190:
    sub_1D2250B3C();
LABEL_191:
    v179 = sub_1D2250AEC();
    v180 = [v64 *(v66 + 2384)];

    v310 = MEMORY[0x1E69E7CC0];
    aBlock = xmmword_1D2254540;
    MEMORY[0x1EEE9AC00](v181);
    v259[-2] = &v310;
    v259[-1] = &aBlock;
    v182 = *(*v45 + 152);
    v183 = v180;
    v184 = v182();
    if (v54)
    {

      sub_1D21A1ED8(aBlock, *(&aBlock + 1));

LABEL_18:
      v62 = v304;
LABEL_19:
      sub_1D21D6CD0(v62, v292, "quantizerTrain");
    }

    v288(&v314, v184);

    v185 = v304;
    v66 = v292;
    v109 = v298;
    if ((v314 & 1) == 0)
    {

      sub_1D21A1ED8(aBlock, *(&aBlock + 1));
LABEL_229:

      v81 = v185;
      goto LABEL_37;
    }

    v301 = v310;
    if (!*(v310 + 2))
    {

LABEL_228:
      sub_1D21A1ED8(aBlock, *(&aBlock + 1));
      goto LABEL_229;
    }

    v299 = v183;
    v314 = MEMORY[0x1E69E7CC8];
    v110 = *(v304 + 48);
    if (!*(v110 + 16))
    {
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:

      __break(1u);
      goto LABEL_326;
    }

    v54 = *(&aBlock + 1);
    v186 = aBlock;
    v187 = sub_1D2176DFC(v303);
    if ((v188 & 1) == 0)
    {
      goto LABEL_324;
    }

    v189 = (*(v110 + 56) + 16 * v187);
    v190 = *v189;
    v191 = v189[1];
    sub_1D21A3B78(*v189, v191);
    v64 = sub_1D21DA9BC(v302, v186, v54, v190, v191, 1);
    v297 = 0;

    sub_1D21A1ED8(v190, v191);

    v45 = *(v64 + 16);
    v43 = v298;
    if (v45)
    {
      v192 = 0;
      v303 = (v64 + 32);
      v300 = (v301 + 32);
      while (v192 < *(v64 + 16))
      {
        isa = v303[v192].isa;
        if (*(isa + 2))
        {
          if (v192 >= *(v301 + 2))
          {
            goto LABEL_313;
          }

          v194 = *(isa + 4);
          v109 = *(v300 + 8 * v192);
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v195 = v314;
          v313 = v314;
          v54 = sub_1D2176758(v109);
          v197 = *(v195 + 16);
          v198 = (v196 & 1) == 0;
          v199 = v197 + v198;
          if (__OFADD__(v197, v198))
          {
            goto LABEL_314;
          }

          v200 = v196;
          if (*(v195 + 24) >= v199)
          {
            if ((v66 & 1) == 0)
            {
              sub_1D21B6C24();
            }
          }

          else
          {
            sub_1D21B140C(v199, v66);
            v110 = v313;
            v201 = sub_1D2176758(v109);
            if ((v200 & 1) != (v202 & 1))
            {
              goto LABEL_329;
            }

            v54 = v201;
          }

          v66 = v292;
          v203 = v313;
          if (v200)
          {
            *(v313[7] + 8 * v54) = v194;
          }

          else
          {
            v313[(v54 >> 6) + 8] |= 1 << v54;
            *(v203[6] + 8 * v54) = v109;
            *(v203[7] + 8 * v54) = v194;
            v204 = v203[2];
            v99 = __OFADD__(v204, 1);
            v205 = v204 + 1;
            if (v99)
            {
              goto LABEL_318;
            }

            v203[2] = v205;
          }

          v43 = v298;
          v314 = v203;
        }

        if (v45 == ++v192)
        {
          goto LABEL_220;
        }
      }

LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
      continue;
    }

    break;
  }

LABEL_220:

  v208 = MEMORY[0x1EEE9AC00](v207);
  v259[-2] = &v314;
  MEMORY[0x1EEE9AC00](v208);
  v42 = v299;
  v259[-10] = v299;
  v259[-9] = &unk_1F4DADBE0;
  v259[-8] = &unk_1F4DADC10;
  v259[-7] = 1024;
  v259[-6] = v209;
  v259[-5] = sub_1D21DB0B0;
  v259[-4] = v210;
  v259[-3] = 0;
  v259[-2] = 0;
  v134 = v211;
  v212 = v297;
  sub_1D2250DBC();
  if (!v212)
  {
LABEL_225:
    sub_1D21A65D8(aIdentifier_7);

    v185 = v304;
    v213 = sub_1D225080C();
    v214 = sub_1D2250CEC();
    if (os_log_type_enabled(v213, v214))
    {
      v215 = swift_slowAlloc();
      *v215 = 134217984;
      *(v215 + 4) = *(v301 + 2);
      _os_log_impl(&dword_1D2171000, v213, v214, "Assigned %ld new observations to their respective partitions", v215, 0xCu);
      MEMORY[0x1D3899640](v215, -1, -1);
    }

    goto LABEL_228;
  }

  sub_1D21A65D8(aIdentifier_7);

  sub_1D21A1ED8(aBlock, *(&aBlock + 1));

  sub_1D21D6CD0(v304, v66, "quantizerTrain");
}

unint64_t sub_1D21D6680(unint64_t result, void *a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*(*a3 + 16))
  {
    return result;
  }

  result = sub_1D2176758(result);
  if ((v5 & 1) == 0)
  {
    return result;
  }

  v6 = *(*(v3 + 56) + 8 * result);
  result = [a2 partition];
  if (v6 == result)
  {
    return result;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [a2 setPartition_];
}

uint64_t sub_1D21D6720(__int16 *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v10 = a6;
  v13 = a1;
  if (*(a3 + 56))
  {
    if (a4 && (a5 - a4 + 3) >= 7)
    {
      if (a5 - a4 >= 0)
      {
        v30 = a5 - a4;
      }

      else
      {
        v30 = a5 - a4 + 3;
      }

      v31 = a2;
      v14 = sub_1D21F7E9C(v30 >> 2, 0);
      memcpy(v14 + 4, a4, v30 & 0xFFFFFFFFFFFFFFFCLL);
      a2 = v31;
      if (!v13)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (!a1)
      {
        goto LABEL_34;
      }
    }

    if ((a2 - v13 + 3) < 7)
    {
LABEL_34:
      v34 = MEMORY[0x1E69E7CC0];
      goto LABEL_35;
    }

    if (a2 - v13 >= 0)
    {
      v33 = a2 - v13;
    }

    else
    {
      v33 = a2 - v13 + 3;
    }

    v34 = sub_1D21F7E9C(v33 >> 2, 0);
    memcpy(v34 + 4, v13, v33 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_35:
    v67 = v14;
    *&v68 = 1.0 - a8;
    v71 = v34;
    v72 = a8;
    v42 = MEMORY[0x1EEE9AC00](v14[2]);
    v43 = sub_1D21DA4FC(v42, sub_1D21DB80C);

    if (*(a3 + 56))
    {
      v44 = *(v43 + 16);
      if (!(v44 >> 61))
      {
        v45 = *(a3 + 48);
        if ((v45 - 0x2000000000000000) >> 62 == 3)
        {
          v46 = 4 * v45;
          if ((a7 * v46) >> 64 == (a7 * v46) >> 63)
          {
            v47 = a7 + 1;
            if (!__OFADD__(a7, 1))
            {
              if ((v47 * v46) >> 64 == (v47 * v46) >> 63)
              {
                if (v47 * v46 >= a7 * v46)
                {
                  v48 = MEMORY[0x1E69E6290];
                  v49 = MEMORY[0x1E6969DF8];
                  v50 = v43 + 32;
                  v51 = v43 + 32 + 4 * v44;
LABEL_65:
                  v69 = v48;
                  v70 = v49;
                  v67 = v50;
                  v68 = v51;
                  __swift_project_boxed_opaque_existential_1(&v67, v48);
                  sub_1D225043C();
                  __swift_destroy_boxed_opaque_existential_0Tm(&v67);
                }

                goto LABEL_75;
              }

              goto LABEL_73;
            }

            goto LABEL_71;
          }

          goto LABEL_69;
        }

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

      __break(1u);
    }

    else
    {
      v52 = *(v43 + 16);
      if (v52)
      {
        v73 = v8;
        v67 = MEMORY[0x1E69E7CC0];
        sub_1D21AFC60(0, v52, 0);
        v53 = v67;
        v54 = v67[2];
        v55 = 32;
        do
        {
          _S8 = *(v43 + v55);
          v67 = v53;
          v57 = v53[3];
          if (v54 >= v57 >> 1)
          {
            sub_1D21AFC60((v57 > 1), v54 + 1, 1);
            v53 = v67;
          }

          __asm { FCVT            H0, S8 }

          v53[2] = v54 + 1;
          *(v53 + v54 + 16) = _H0;
          v55 += 4;
          ++v54;
          --v52;
        }

        while (v52);

        v59 = v53;
      }

      else
      {

        v59 = MEMORY[0x1E69E7CC0];
      }

      v60 = v59[2];
      if (v60 + 0x4000000000000000 >= 0)
      {
        v61 = *(a3 + 48);
        if (*(a3 + 56))
        {
          if ((v61 - 0x2000000000000000) >> 62 != 3)
          {
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

          v62 = 4 * v61;
        }

        else
        {
          if (v61 + 0x4000000000000000 < 0)
          {
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          v62 = 2 * v61;
        }

        v63 = a7 * v62;
        if ((a7 * v62) >> 64 == (a7 * v62) >> 63)
        {
          v64 = a7 + 1;
          if (!__OFADD__(a7, 1))
          {
            if (*(a3 + 56))
            {
              if ((v61 - 0x2000000000000000) >> 62 != 3)
              {
LABEL_79:
                __break(1u);
                goto LABEL_80;
              }

              v65 = 4 * v61;
            }

            else
            {
              v65 = 2 * v61;
            }

            if ((v64 * v65) >> 64 == (v64 * v65) >> 63)
            {
              if (v64 * v65 >= v63)
              {
                v48 = MEMORY[0x1E69E6290];
                v49 = MEMORY[0x1E6969DF8];
                v50 = (v59 + 4);
                v51 = v59 + 2 * v60 + 32;
                goto LABEL_65;
              }

              goto LABEL_76;
            }

            goto LABEL_74;
          }

          goto LABEL_72;
        }

        goto LABEL_70;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  if (a4)
  {
    v15 = a5 - a4;
    v14 = MEMORY[0x1E69E7CC0];
    if ((a5 - a4 + 1) >= 3)
    {
      v73 = a6;
      v66 = a2;
      v67 = MEMORY[0x1E69E7CC0];
      v17 = v8;
      v18 = v15 / 2;
      result = sub_1D21AF75C(0, (v15 / 2) & ~((v15 / 2) >> 63), 0);
      if (v15 < -1)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      a2 = v66;
      v14 = v67;
      v20 = v67[2];
      v21 = a4;
      do
      {
        _H9 = *v21;
        v67 = v14;
        v23 = v14[3];
        if (v20 >= v23 >> 1)
        {
          v29 = v21;
          sub_1D21AF75C((v23 > 1), v20 + 1, 1);
          v21 = v29;
          a2 = v66;
          v14 = v67;
          v8 = v17;
        }

        __asm { FCVT            S0, H9 }

        v14[2] = v20 + 1;
        *(v14 + v20 + 8) = _S0;
        ++v21;
        ++v20;
        --v18;
      }

      while (v18);
      v10 = v73;
      if (!v13)
      {
        goto LABEL_34;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (!a1)
  {
    goto LABEL_34;
  }

LABEL_27:
  v35 = a2 - v13;
  v34 = MEMORY[0x1E69E7CC0];
  if ((a2 - v13 + 1) < 3)
  {
    goto LABEL_35;
  }

  v73 = v10;
  v36 = v8;
  v37 = v35 / 2;
  v67 = MEMORY[0x1E69E7CC0];
  result = sub_1D21AF75C(0, (v35 / 2) & ~((v35 / 2) >> 63), 0);
  if (v35 >= -1)
  {
    v34 = v67;
    v38 = v67[2];
    do
    {
      _H9 = *v13;
      v67 = v34;
      v40 = v34[3];
      if (v38 >= v40 >> 1)
      {
        sub_1D21AF75C((v40 > 1), v38 + 1, 1);
        v8 = v36;
        v34 = v67;
      }

      __asm { FCVT            S0, H9 }

      v34[2] = v38 + 1;
      *(v34 + v38 + 8) = _S0;
      ++v13;
      ++v38;
      --v37;
    }

    while (v37);
    goto LABEL_35;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_1D21D6CD0(uint64_t a1, uint64_t a2, const char *a3)
{
  v18 = a3;
  v3 = sub_1D22507BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D225077C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D225078C();
  sub_1D22507CC();
  v12 = sub_1D2250D9C();
  if (sub_1D2250E4C())
  {

    sub_1D22507FC();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1D3899640](v14, -1, -1);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D21D6F28(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = MEMORY[0x1D3898F20]();
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  a2 = *(a2 + 8 * a1 + 32);
  v20 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v21 = *(a4 + 16);
  if (v21 >= v20)
  {
    a3 += a2;
  }

  else
  {
    a3 = *(a4 + 16);
  }

  v22 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
    goto LABEL_49;
  }

  v12 = v19;
  v72 = MEMORY[0x1D38982E0](a3 - a2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v23 = *(a5 + 48);
  if (*(a5 + 56))
  {
    if ((v23 - 0x2000000000000000) >> 62 != 3)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      sub_1D22512AC();
      __break(1u);

      sub_1D21A1ED8(aBlock, v66);

      objc_autoreleasePoolPop(v62);
      swift_unexpectedError();
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v24 = 4 * v23;
  }

  else
  {
    if (v23 + 0x4000000000000000 < 0)
    {
      goto LABEL_58;
    }

    v24 = 2 * v23;
  }

  if ((v22 * v24) >> 64 != (v22 * v24) >> 63)
  {
    goto LABEL_50;
  }

  aBlock = sub_1D2178E78(v22 * v24);
  v66 = v25;
  if (a3 < a2)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v21 < a2)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (a2 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v20 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v21 == v22)
  {

    goto LABEL_20;
  }

LABEL_55:
  sub_1D21F8344(a4, a4 + 32, a2, (2 * a3) | 1);
  a4 = v59;
LABEL_20:
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D22526E0;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
  *(v26 + 56) = v61;
  v60 = sub_1D2177F3C(&qword_1EDC869D0, &qword_1EC6D21D8);
  *(v26 + 64) = v60;
  *(v26 + 32) = a4;
  v64 = a4;

  v27 = sub_1D2250C5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D2252720;
  v29 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v30 = sub_1D225092C();
  v31 = [v29 initWithKey:v30 ascending:1];

  *(v28 + 32) = v31;
  MEMORY[0x1EEE9AC00](v32);
  v33 = *(*a6 + 152);
  a6 = 0;
  v33(v27, v28, 0, 0, 1, sub_1D21DB994);
  v62 = v12;

  a3 = v66;
  v34 = *a9;
  a4 = a9[1];
  sub_1D21A3B78(*a9, a4);
  a5 = sub_1D21DA9BC(a5, aBlock, v66, v34, a4, 1);
  sub_1D21A1ED8(v34, a4);
  v12 = *(a5 + 16);
  a2 = v64;
  if (v12)
  {
    v35 = 0;
    while (1)
    {
      if (v35 >= *(a5 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v36 = *(a5 + 32 + 8 * v35);
      if (*(v36 + 16))
      {
        break;
      }

LABEL_24:
      if (v12 == ++v35)
      {
        goto LABEL_39;
      }
    }

    if (v35 >= *(a2 + 16))
    {
      goto LABEL_43;
    }

    a6 = *(v36 + 32);
    a3 = *(v64 + 32 + 8 * v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2 = v72;
    v71 = v72;
    a4 = sub_1D2176758(a3);
    v39 = *(a2 + 16);
    v40 = (v38 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_44;
    }

    v42 = v38;
    if (*(a2 + 24) < v41)
    {
      sub_1D21B140C(v41, isUniquelyReferenced_nonNull_native);
      a2 = v71;
      v43 = sub_1D2176758(a3);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_59;
      }

      a4 = v43;
      v45 = v71;
      if ((v42 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_22:
      *(v45[7] + 8 * a4) = a6;
LABEL_23:
      v72 = v45;
      a2 = v64;
      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v45 = v71;
      if (v38)
      {
        goto LABEL_22;
      }
    }

    else
    {
      a2 = &v71;
      sub_1D21B6C24();
      v45 = v71;
      if (v42)
      {
        goto LABEL_22;
      }
    }

LABEL_35:
    v45[(a4 >> 6) + 8] |= 1 << a4;
    *(v45[6] + 8 * a4) = a3;
    *(v45[7] + 8 * a4) = a6;
    v46 = v45[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_45;
    }

    v45[2] = v48;
    goto LABEL_23;
  }

LABEL_39:

  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1D22526E0;
  *(v49 + 56) = v61;
  *(v49 + 64) = v60;
  *(v49 + 32) = a2;
  v50 = sub_1D2250C5C();
  v51 = MEMORY[0x1EEE9AC00](v50);
  MEMORY[0x1EEE9AC00](v51);
  v53 = v52;
  sub_1D2250DBC();
  sub_1D21A65D8(&unk_1F4DAE450);

  sub_1D21A1ED8(aBlock, v66);

  objc_autoreleasePoolPop(v62);
  a3 = *(a7 + OBJC_IVAR____TtC19VisualUnderstanding16VUIndexQuantizer_lockQueue);
  v54 = swift_allocObject();
  *(v54 + 16) = a11;
  *(v54 + 24) = a12;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1D21DB7DC;
  *(v55 + 24) = v54;
  v69 = sub_1D2179F38;
  v70 = v55;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = sub_1D2179EE8;
  v68 = &block_descriptor_26;
  v56 = _Block_copy(&aBlock);

  dispatch_sync(a3, v56);
  _Block_release(v56);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_57;
  }

  return result;
}

uint64_t sub_1D21D7750(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 8);
    sub_1D21A3B78(v2, v1);
    sub_1D225047C();

    return sub_1D21A1F98(v2, v1);
  }

  return result;
}

unint64_t sub_1D21D77CC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D225085C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D225087C();
  v24 = *(v13 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  if (*(v17 + 16))
  {
    result = sub_1D2176758(a1);
    if (v18)
    {
      v19 = *(*(v17 + 56) + 8 * result);
      result = [a2 partition];
      if (v19 != result)
      {
        if (v19 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else
        {
          v23 = v10;
          if (v19 <= 0x7FFFFFFF)
          {
            [a2 setPartition_];
            v20 = swift_allocObject();
            *(v20 + 16) = a5;
            *(v20 + 24) = v19;
            aBlock[4] = sub_1D21DB804;
            aBlock[5] = v20;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1D22102A0;
            aBlock[3] = &block_descriptor_32;
            v21 = _Block_copy(aBlock);

            sub_1D225086C();
            v25 = MEMORY[0x1E69E7CC0];
            sub_1D2177820(&qword_1EDC869F0, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AD0);
            sub_1D2177F3C(&qword_1EDC869D8, &qword_1EC6D2AD0);
            sub_1D2250EAC();
            MEMORY[0x1D38987A0](0, v16, v12, v21);
            _Block_release(v21);
            (*(v23 + 8))(v12, v9);
            (*(v24 + 8))(v16, v13);
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1D21D7B28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!*(*(a1 + 16) + 16) || (sub_1D2176758(a2), (v5 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a1 + 16);
    *(a1 + 16) = 0x8000000000000000;
    sub_1D21B9BE8(0, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 16) = v20;
  }

  swift_endAccess();
  swift_beginAccess();
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  result = sub_1D2176758(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v10;
  if (v8[3] < v14)
  {
    sub_1D21B140C(v14, v7);
    result = sub_1D2176758(a2);
    if ((v2 & 1) == (v15 & 1))
    {
      goto LABEL_9;
    }

    result = sub_1D22512AC();
    __break(1u);
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v2)
  {
    while (1)
    {
      v16 = v8[7];
      v17 = *(v16 + 8 * result);
      v13 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (!v13)
      {
        break;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      v19 = result;
      sub_1D21B6C24();
      result = v19;
      if ((v2 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    *(v16 + 8 * result) = v18;
    *(a1 + 16) = v8;
    return swift_endAccess();
  }

  else
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D21D7CCC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1D2198024(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

unint64_t sub_1D21D7DAC(unsigned __int8 a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 48);
  if (*(v10 + 16) && (v11 = sub_1D2176DFC(a1), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    sub_1D21A3B78(*v13, v15);
  }

  else
  {
    v14 = sub_1D2222774(a1);
    v15 = v16;
  }

  v17 = *(v5 + 56);
  v18 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  result = swift_beginAccess();
  if (*(*(v17 + v18) + 16))
  {
    result = sub_1D2176DFC(a1);
    if (v20)
    {

      v22 = sub_1D21DA9BC(v21, a2, a3, v14, v15, a4);
      sub_1D21A1ED8(v14, v15);

      return v22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D21D7F00()
{
  result = sub_1D225082C();
  if (v1 <= 0x3F)
  {
    result = sub_1D22507AC();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D21D8004(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D21C8A84(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D225124C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 6);
          if (*(v12 + 2) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2BB0);
      v8 = sub_1D2250B2C();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    sub_1D21D89B8(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D21D8158(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D21C8A98(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D225124C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D2250B2C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D21D8F58(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

size_t sub_1D21D828C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v33 - v1;
  v3 = type metadata accessor for VUGalleryUpdate(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 80);
  sub_1D2186824(v2);
  v8 = *(v4 + 48);
  v36 = v4 + 48;
  v38 = v8;
  v9 = v8(v2, 1, v3);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9 != 1)
  {
    v11 = 0;
    v34 = v4;
    v35 = v7;
    v37 = (v7 + 32) & ~v7;
    v17 = MEMORY[0x1E69E7CC0] + v37;
    v18 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      result = sub_1D21DB8FC(v2, v6, type metadata accessor for VUGalleryUpdate);
      if (v11)
      {
        v10 = v18;
        v15 = __OFSUB__(v11--, 1);
        if (v15)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v19 = v18[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2BB8);
        v22 = *(v4 + 72);
        v23 = v37;
        v10 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v10);
        if (!v22)
        {
          goto LABEL_34;
        }

        v24 = result - v23;
        if (result - v23 == 0x8000000000000000 && v22 == -1)
        {
          goto LABEL_35;
        }

        v26 = v3;
        v27 = v24 / v22;
        v10[2] = v21;
        v10[3] = 2 * (v24 / v22);
        v28 = v10 + v23;
        v29 = v18[3] >> 1;
        v30 = v29 * v22;
        if (v18[2])
        {
          if (v10 < v18 || v28 >= v18 + v37 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v10 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v17 = &v28[v30];
        v32 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

        v3 = v26;
        v4 = v34;
        v15 = __OFSUB__(v32, 1);
        v11 = v32 - 1;
        if (v15)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      sub_1D21DB8FC(v6, v17, type metadata accessor for VUGalleryUpdate);
      v17 += *(v4 + 72);
      sub_1D2186824(v2);
      v18 = v10;
      if (v38(v2, 1, v3) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v11 = 0;
LABEL_3:
  result = sub_1D2176170(v2, &qword_1EC6D2420);
  v13 = v10[3];
  if (v13 >= 2)
  {
    v14 = v13 >> 1;
    v15 = __OFSUB__(v14, v11);
    v16 = v14 - v11;
    if (v15)
    {
      goto LABEL_36;
    }

    v10[2] = v16;
  }

  return v10;
}

uint64_t sub_1D21D85D4(uint64_t a1, uint64_t a2)
{
  v32 = type metadata accessor for VUGallery.EntityView(0);
  result = MEMORY[0x1EEE9AC00](v32);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = 0;
  if (v7)
  {
    v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v11 = MEMORY[0x1E69E7CC0] + v10;
    v12 = *(v4 + 72);
    v33 = *(v4 + 80);
    v34 = v10;
    v13 = a2 + v10;
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      result = sub_1D21DB894(v13, v6, type metadata accessor for VUGallery.EntityView);
      if (v9)
      {
        v8 = v14;
        v15 = __OFSUB__(v9--, 1);
        if (v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v16 = v14[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }

        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AB0);
        v19 = v34;
        v8 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v8);
        if (!v12)
        {
          goto LABEL_33;
        }

        v20 = result - v19;
        if (result - v19 == 0x8000000000000000 && v12 == -1)
        {
          goto LABEL_34;
        }

        v22 = v20 / v12;
        v8[2] = v18;
        v8[3] = 2 * (v20 / v12);
        v23 = v8 + v19;
        v24 = v14[3] >> 1;
        v25 = v24 * v12;
        if (v14[2])
        {
          if (v8 < v14 || v23 >= v14 + v34 + v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v11 = &v23[v25];
        v27 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

        v15 = __OFSUB__(v27, 1);
        v9 = v27 - 1;
        if (v15)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      result = sub_1D21DB8FC(v6, v11, type metadata accessor for VUGallery.EntityView);
      v11 += v12;
      v13 += v12;
      v14 = v8;
      --v7;
    }

    while (v7);
  }

  v28 = v8[3];
  if (v28 >= 2)
  {
    v29 = v28 >> 1;
    v15 = __OFSUB__(v29, v9);
    v30 = v29 - v9;
    if (v15)
    {
      goto LABEL_35;
    }

    v8[2] = v30;
  }

  return v8;
}

uint64_t sub_1D21D8848(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 4 * v4);
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2950);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v14 = v13 >> 4;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 4);
        v15 = (v11 + 4);
        v16 = v2[3] >> 1;
        v17 = 16 * v16;
        if (v2[2])
        {
          if (v11 != v2 || v15 >= &v2[v17 / 8 + 4])
          {
            memmove(v11 + 4, v2 + 4, v17);
          }

          v2[2] = 0;
        }

        v5 = v15 + v17;
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v11;
      }

      v19 = __OFSUB__(v3--, 1);
      if (v19)
      {
        break;
      }

      *v5 = v4;
      *(v5 + 8) = v7;
      v5 += 16;
      if (v1 == ++v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v20 = v2[3];
  if (v20 < 2)
  {
    return v2;
  }

  v21 = v20 >> 1;
  v19 = __OFSUB__(v21, v3);
  v22 = v21 - v3;
  if (!v19)
  {
    v2[2] = v22;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D21D89B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v5 = *v88;
    if (!*v88)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1D21C88C8(v8);
      v8 = result;
    }

    v80 = (v8 + 16);
    v81 = *(v8 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v8 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_1D21A0A30((*a3 + 16 * *v82), (*a3 + 16 * *v84), (*a3 + 16 * v85), v5);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_117;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_119;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v87 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      while (v6 != v14)
      {
        v16 = *(v15 - 4) >= *v15;
        ++v14;
        v15 += 4;
        if ((((v13 < v10) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 16 * v7 - 16;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v22 = (v21 + v11);
            v23 = (v21 + v17);
            v24 = *(v21 + v11);
            v25 = *(v21 + v11 + 8);
            if (v11 != v17 || v22 >= v23 + 1)
            {
              *v22 = *v23;
            }

            v20 = v21 + v17;
            *v20 = v24;
            *(v20 + 8) = v25;
          }

          ++v19;
          v17 -= 16;
          v11 += 16;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D2195E30(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v34 = *(v8 + 24);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      result = sub_1D2195E30((v34 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v35;
    v36 = v8 + 32;
    v37 = (v8 + 32 + 16 * v5);
    *v37 = v9;
    v37[1] = v7;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v38 = *(v8 + 32);
          v39 = *(v8 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_60:
          if (v41)
          {
            goto LABEL_107;
          }

          v54 = (v8 + 16 * v35);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_109;
          }

          v60 = (v36 + 16 * v5);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_114;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v5 = v35 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v35 < 2)
        {
          goto LABEL_115;
        }

        v64 = (v8 + 16 * v35);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_75:
        if (v59)
        {
          goto LABEL_111;
        }

        v67 = (v36 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v35)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v75 = (v36 + 16 * (v5 - 1));
        v76 = *v75;
        v77 = (v36 + 16 * v5);
        v78 = v77[1];
        sub_1D21A0A30((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_103;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v8 + 16);
        if (v5 >= v79)
        {
          goto LABEL_104;
        }

        v35 = v79 - 1;
        result = memmove((v36 + 16 * v5), v77 + 2, 16 * (v79 - 1 - v5));
        *(v8 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v36 + 16 * v35;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = (v8 + 16 * v35);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_110;
      }

      if (v53 >= v45)
      {
        v71 = (v36 + 16 * v5);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_116;
        }

        if (v40 < v74)
        {
          v5 = v35 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v87;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v26 = *a3;
  v27 = *a3 + 16 * v7;
  v28 = v9 - v7;
LABEL_33:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 8);
    if (*(v30 - 8) >= v31)
    {
LABEL_32:
      ++v7;
      v27 += 16;
      --v28;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v26)
    {
      break;
    }

    v32 = *v30;
    *v30 = *(v30 - 16);
    *(v30 - 8) = v31;
    *(v30 - 16) = v32;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_1D21D8F58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D21C88C8(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1D21D94A4((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D2195E30(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1D2195E30((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1D21D94A4((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_1D21D94A4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D21D9698(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v14 = BYTE6(a2);
  v115[2] = *MEMORY[0x1E69E9840];
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v44 = a4 >> 62;
      memset(v115, 0, 14);
      if ((a4 >> 62) <= 1)
      {
        if (!v44)
        {
          v114[0] = a3;
          LOWORD(v114[1]) = a4;
          BYTE2(v114[1]) = BYTE2(a4);
          BYTE3(v114[1]) = BYTE3(a4);
          BYTE4(v114[1]) = BYTE4(a4);
          BYTE5(v114[1]) = BYTE5(a4);

          sub_1D21A3B78(a3, a4);

          sub_1D21A3B78(a3, a4);

          v19 = v114;
          v22 = v115;
          v20 = v114 + BYTE6(a4);
          v21 = a5;
          v23 = a8;
          v24 = a6;
          v25 = a7;
          goto LABEL_108;
        }

        v84 = (a3 >> 32) - a3;
        if (a3 >> 32 >= a3)
        {

          sub_1D21A3B78(a3, a4);

          sub_1D21A3B78(a3, a4);

          v86 = sub_1D225028C();
          if (v86)
          {
            v87 = sub_1D22502BC();
            if (__OFSUB__(a3, v87))
            {
              goto LABEL_146;
            }

            v86 += a3 - v87;
          }

          v88 = sub_1D22502AC();
          if (v88 >= v84)
          {
            v89 = (a3 >> 32) - a3;
          }

          else
          {
            v89 = v88;
          }

          v90 = (v89 + v86);
          if (v86)
          {
            v20 = v90;
          }

          else
          {
            v20 = 0;
          }

          v22 = v115;
          v19 = v86;
          v21 = a5;
          v23 = a8;
          v24 = a6;
          v25 = a7;
LABEL_108:
          sub_1D21D6720(v19, v20, v21, v115, v22, v24, v25, v23);
          if (!v8)
          {
            goto LABEL_132;
          }

          goto LABEL_150;
        }

        goto LABEL_137;
      }

      v46 = v8;
      if (v44 == 2)
      {
        v56 = *(a3 + 16);
        v57 = *(a3 + 24);

        sub_1D21A3B78(a3, a4);

        sub_1D21A3B78(a3, a4);

        v58 = sub_1D225028C();
        if (v58)
        {
          v59 = sub_1D22502BC();
          if (__OFSUB__(v56, v59))
          {
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          v58 += v56 - v59;
        }

        v51 = __OFSUB__(v57, v56);
        v60 = v57 - v56;
        if (v51)
        {
          goto LABEL_139;
        }

        v61 = sub_1D22502AC();
        if (v61 >= v60)
        {
          v62 = v60;
        }

        else
        {
          v62 = v61;
        }

        v63 = (v62 + v58);
        if (v58)
        {
          v20 = v63;
        }

        else
        {
          v20 = 0;
        }

        v22 = v115;
        v19 = v58;
        v21 = a5;
        v23 = a8;
        v24 = a6;
      }

      else
      {
        memset(v114, 0, 14);

        sub_1D21A3B78(a3, a4);

        sub_1D21A3B78(a3, a4);

        v19 = v114;
        v20 = v114;
        v22 = v115;
        v21 = a5;
        v23 = a8;
        v24 = a6;
      }

      v25 = a7;
      goto LABEL_107;
    }

    v112 = v8;
    v109 = a6;
    v26 = *(a1 + 16);
    v27 = *(a1 + 24);

    sub_1D21A3B78(a3, a4);
    sub_1D21A3B78(a3, a4);

    sub_1D21A3B78(a3, a4);

    v28 = sub_1D225028C();
    v113 = a7;
    if (!v28)
    {
      goto LABEL_57;
    }

    v29 = v28;
    v30 = sub_1D22502BC();
    if (!__OFSUB__(v26, v30))
    {
      v31 = (v26 - v30 + v29);
      v32 = v27 - v26;
      if (!__OFSUB__(v27, v26))
      {
        while (1)
        {
          v33 = sub_1D22502AC();
          v34 = v33 >= v32 ? v32 : v33;
          v35 = &v31[v34];
          v36 = v31 ? v35 : 0;
          v37 = a4 >> 62;
          if ((a4 >> 62) <= 1)
          {
            break;
          }

          if (v37 != 2)
          {
            goto LABEL_115;
          }

          v64 = *(a3 + 16);
          v27 = *(a3 + 24);

          v65 = sub_1D225028C();
          if (v65)
          {
            v66 = sub_1D22502BC();
            if (__OFSUB__(v64, v66))
            {
              goto LABEL_147;
            }

            v65 += v64 - v66;
          }

          v51 = __OFSUB__(v27, v64);
          v26 = v27 - v64;
          if (!v51)
          {
            goto LABEL_75;
          }

          __break(1u);
LABEL_57:
          v31 = 0;
          v32 = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            goto LABEL_59;
          }
        }

        if (v37)
        {
          v93 = (a3 >> 32) - a3;
          if (a3 >> 32 < a3)
          {
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          v94 = sub_1D225028C();
          if (!v94)
          {
            goto LABEL_121;
          }

          v95 = sub_1D22502BC();
          v96 = a3 - v95;
          if (!__OFSUB__(a3, v95))
          {
            goto LABEL_120;
          }

          __break(1u);
LABEL_115:
          memset(v115, 0, 14);

          v38 = v115;
          v39 = v115;
        }

        else
        {
          v115[0] = a3;
          LOWORD(v115[1]) = a4;
          BYTE2(v115[1]) = BYTE2(a4);
          BYTE3(v115[1]) = BYTE3(a4);
          BYTE4(v115[1]) = BYTE4(a4);
          BYTE5(v115[1]) = BYTE5(a4);

          v38 = v115;
          v39 = v115 + BYTE6(a4);
        }

LABEL_116:
        v97 = a5;
        v98 = v31;
        v99 = v36;
        v100 = a8;
        v101 = v109;
        v102 = v112;
        v103 = v113;
        goto LABEL_130;
      }

LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v113 = a7;
  if (!v15)
  {
    v115[0] = a1;
    LOWORD(v115[1]) = a2;
    BYTE2(v115[1]) = BYTE2(a2);
    BYTE3(v115[1]) = BYTE3(a2);
    BYTE4(v115[1]) = BYTE4(a2);
    BYTE5(v115[1]) = BYTE5(a2);
    v16 = a4 >> 62;
    v17 = v115 + BYTE6(a2);
    if ((a4 >> 62) <= 1)
    {
      if (!v16)
      {
        v114[0] = a3;
        LOWORD(v114[1]) = a4;
        BYTE2(v114[1]) = BYTE2(a4);
        BYTE3(v114[1]) = BYTE3(a4);
        BYTE4(v114[1]) = BYTE4(a4);
        BYTE5(v114[1]) = BYTE5(a4);

        sub_1D21A3B78(a3, a4);

        sub_1D21A3B78(a3, a4);

        v19 = v114;
        v20 = v114 + BYTE6(a4);
        v21 = a5;
        v22 = v17;
        v23 = a8;
        v24 = a6;
        v25 = v113;
        goto LABEL_108;
      }

      v77 = (a3 >> 32) - a3;
      if (a3 >> 32 >= a3)
      {

        sub_1D21A3B78(a3, a4);

        sub_1D21A3B78(a3, a4);

        v79 = sub_1D225028C();
        if (!v79)
        {
LABEL_86:
          v81 = sub_1D22502AC();
          if (v81 >= v77)
          {
            v82 = (a3 >> 32) - a3;
          }

          else
          {
            v82 = v81;
          }

          v83 = (v82 + v79);
          if (v79)
          {
            v20 = v83;
          }

          else
          {
            v20 = 0;
          }

          v25 = v113;
          v19 = v79;
          v21 = a5;
          v22 = v17;
          v23 = a8;
          v24 = a6;
          goto LABEL_108;
        }

        v80 = sub_1D22502BC();
        if (!__OFSUB__(a3, v80))
        {
          v79 += a3 - v80;
          goto LABEL_86;
        }

        goto LABEL_145;
      }

      goto LABEL_136;
    }

    v46 = v8;
    if (v16 == 2)
    {
      v47 = *(a3 + 16);
      v48 = *(a3 + 24);

      sub_1D21A3B78(a3, a4);

      sub_1D21A3B78(a3, a4);

      v49 = sub_1D225028C();
      if (v49)
      {
        v50 = sub_1D22502BC();
        if (__OFSUB__(v47, v50))
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v49 += v47 - v50;
      }

      v51 = __OFSUB__(v48, v47);
      v52 = v48 - v47;
      if (v51)
      {
        goto LABEL_138;
      }

      v53 = sub_1D22502AC();
      if (v53 >= v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = v53;
      }

      v55 = (v54 + v49);
      if (v49)
      {
        v20 = v55;
      }

      else
      {
        v20 = 0;
      }

      v25 = v113;
      v19 = v49;
      v21 = a5;
      v22 = v17;
      v23 = a8;
      v24 = a6;
    }

    else
    {
      memset(v114, 0, 14);

      sub_1D21A3B78(a3, a4);

      sub_1D21A3B78(a3, a4);

      v19 = v114;
      v20 = v114;
      v21 = a5;
      v22 = v115 + v14;
      v23 = a8;
      v24 = a6;
      v25 = v113;
    }

LABEL_107:
    v8 = v46;
    goto LABEL_108;
  }

  v112 = v8;
  v109 = a6;
  v40 = a1;
  v26 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_134;
  }

  sub_1D21A3B78(a3, a4);
  sub_1D21A3B78(a3, a4);

  sub_1D21A3B78(a3, a4);

  v41 = sub_1D225028C();
  if (v41)
  {
    v42 = v41;
    v43 = sub_1D22502BC();
    if (!__OFSUB__(v40, v43))
    {
      v31 = (v40 - v43 + v42);
      goto LABEL_61;
    }

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
    goto LABEL_140;
  }

LABEL_60:
  v31 = 0;
LABEL_61:
  v67 = sub_1D22502AC();
  if (v67 >= v26)
  {
    v68 = v26;
  }

  else
  {
    v68 = v67;
  }

  v69 = &v31[v68];
  if (v31)
  {
    v36 = v69;
  }

  else
  {
    v36 = 0;
  }

  v70 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v70 != 2)
    {
      memset(v115, 0, 14);

      v38 = v115;
      v39 = v115;
      goto LABEL_129;
    }

    v71 = *(a3 + 16);
    v72 = *(a3 + 24);

    v65 = sub_1D225028C();
    if (v65)
    {
      v73 = sub_1D22502BC();
      if (__OFSUB__(v71, v73))
      {
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
      }

      v65 += v71 - v73;
    }

    v51 = __OFSUB__(v72, v71);
    v26 = v72 - v71;
    if (v51)
    {
      goto LABEL_142;
    }

LABEL_75:
    v74 = sub_1D22502AC();
    if (v74 >= v26)
    {
      v75 = v26;
    }

    else
    {
      v75 = v74;
    }

    v76 = (v75 + v65);
    if (v65)
    {
      v39 = v76;
    }

    else
    {
      v39 = 0;
    }

    v38 = v65;
    goto LABEL_116;
  }

  if (!v70)
  {
    v115[0] = a3;
    LOWORD(v115[1]) = a4;
    BYTE2(v115[1]) = BYTE2(a4);
    BYTE3(v115[1]) = BYTE3(a4);
    BYTE4(v115[1]) = BYTE4(a4);
    BYTE5(v115[1]) = BYTE5(a4);

    v38 = v115;
    v39 = v115 + BYTE6(a4);
LABEL_129:
    v97 = a5;
    v98 = v31;
    v99 = v36;
    v100 = a8;
    v101 = v109;
    v103 = v113;
    v102 = v112;
    goto LABEL_130;
  }

  v93 = (a3 >> 32) - a3;
  if (a3 >> 32 < a3)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v94 = sub_1D225028C();
  if (v94)
  {
    v104 = sub_1D22502BC();
    v96 = a3 - v104;
    if (__OFSUB__(a3, v104))
    {
      goto LABEL_149;
    }

LABEL_120:
    v94 += v96;
  }

LABEL_121:
  v105 = sub_1D22502AC();
  if (v105 >= v93)
  {
    v106 = v93;
  }

  else
  {
    v106 = v105;
  }

  v107 = (v106 + v94);
  if (v94)
  {
    v39 = v107;
  }

  else
  {
    v39 = 0;
  }

  v103 = v113;
  v38 = v94;
  v97 = a5;
  v98 = v31;
  v99 = v36;
  v100 = a8;
  v101 = v109;
  v102 = v112;
LABEL_130:
  sub_1D21D6720(v38, v39, v97, v98, v99, v101, v103, v100);
  if (!v102)
  {

    sub_1D21A1ED8(a3, a4);
LABEL_132:

    sub_1D21A1ED8(a3, a4);

    sub_1D21A1ED8(a3, a4);

    sub_1D21A1ED8(a3, a4);
  }

LABEL_150:

  __break(1u);
  return result;
}