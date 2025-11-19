uint64_t sub_1D88BA124(uint64_t a1, uint64_t a2)
{
  v93 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v64 - v9);
  v11 = sub_1D8B13240();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v84 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v64 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v79 = (&v64 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v65 = v10;
  v67 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v78 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v86 = (v22 & v19);
  v71 = (63 - v21) >> 6;
  v85 = v17 + 16;
  v76 = (v17 + 48);
  v77 = (v17 + 56);
  v75 = (v17 + 32);
  v81 = (a2 + 56);
  v66 = v17;
  v87 = (v17 + 8);

  v24 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v86;
    v26 = v24;
    if (v86)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v71)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v65;
    }

    v73 = *v77;
    v73(v30, v31, 1, v11);
    v88 = a1;
    v89 = v20;
    v90 = v78;
    v91 = v28;
    v92 = v2;
    v72 = *v76;
    if (v72(v30, 1, v11) == 1)
    {
      sub_1D87A14E4(v30, &qword_1ECA63178);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v30, v11);
    v69 = sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
    v32 = sub_1D8B15790();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v11);
LABEL_22:
    v24 = v28;
    v86 = v2;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v33;
  v34 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v34;
  while (1)
  {
    v82(v16, *(a2 + 48) + v83 * v24, v11);
    v35 = sub_1D88C7AAC(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
    v36 = sub_1D8B158C0();
    v86 = *v87;
    v86(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v80;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v11);
      goto LABEL_22;
    }
  }

  v80 = v35;
  v37 = (v86)(v79, v11);
  v38 = *(a2 + 32);
  v64 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v64;
  a1 = v68;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v64 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v79 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v67;
    v44 = i;
    v45 = v71;
LABEL_26:
    v66 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v82(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v83, v11);
      v50 = 0;
LABEL_39:
      v73(v24, v50, 1, v11);
      v88 = a1;
      v89 = v44;
      v90 = v78;
      v91 = v28;
      v92 = v2;
      if (v72(v24, 1, v11) == 1)
      {
        sub_1D87A14E4(v24, &qword_1ECA63178);
        a2 = sub_1D88BE8D4(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v24, v11);
      v51 = sub_1D8B15790();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        v82(v16, *(v52 + 48) + v54 * v83, v11);
        v55 = sub_1D8B158C0();
        v86(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v16, *(v52 + 48) + v54 * v83, v11);
            v57 = sub_1D8B158C0();
            v86(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v86(v84, v11);
        v58 = v79[v26];
        v79[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
        if ((v58 & v20) != 0)
        {
          v43 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v11);
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_1D88BD7F8(v63, v64, v79, v24, &v88);

  MEMORY[0x1DA721330](v63, -1, -1);
LABEL_52:
  sub_1D87977A0();
  return a2;
}

uint64_t sub_1D88BAB88(uint64_t a1, uint64_t a2)
{
  v62[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1D8B13FA0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v48 - v9;
  MEMORY[0x1EEE9AC00](v8);
  i = v48 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v62[0] = a1;
  v12 = *(a1 + 16);

  v50 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v52 = a1;
  v53 = a1 + ((v16 + 32) & ~v16);
  v59 = *(v14 + 56);
  v60 = v15;
  v57 = (a2 + 56);
  v58 = a2;
  v61 = v14;
  v17 = (v14 - 8);
  v49 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v54 = v13 + 1;
    v62[1] = v13 + 1;
    v60(i, v53 + v59 * v13, v4);
    v51 = sub_1D88C7AAC(&qword_1ECA649A0, MEMORY[0x1E69A1168]);
    v18 = sub_1D8B15790();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v54;
    if (v54 == v50)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v60(v10, *(v58 + 48) + v20 * v59, v4);
    sub_1D88C7AAC(&qword_1ECA67E10, MEMORY[0x1E69A1168]);
    v24 = sub_1D8B158C0();
    v25 = *v17;
    (*v17)(v10, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) == 0)
    {
      a2 = v58;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v58;
  v28 = *(v58 + 32);
  v48[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v48[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v48[1] = v48;
    MEMORY[0x1EEE9AC00](v26);
    v31 = v48 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v57, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v49 = v31;
    v50 = (v32 - 1);
    v33 = *(v52 + 16);
    v34 = v54;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_1D88BEBFC(v49, v48[0], v50, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v52 + 16))
      {
        break;
      }

      v54 = v34;
      v60(v56, v53 + v34 * v59, v4);
      v36 = sub_1D8B15790();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v57[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v60(v10, *(v58 + 48) + v20 * v59, v4);
      v38 = sub_1D8B158C0();
      v25(v10, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v57[v20 >> 6]) == 0)
          {
            break;
          }

          v60(v10, *(v58 + 48) + v20 * v59, v4);
          v40 = sub_1D8B158C0();
          v25(v10, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v56, v4);
        v27 = v58;
LABEL_16:
        v35 = v54;
        goto LABEL_17;
      }

LABEL_25:
      v25(v56, v4);
      v41 = v49[v22];
      v49[v22] = v41 & ~v21;
      v27 = v58;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v50 - 1;
      v35 = v54;
      if (__OFSUB__(v50, 1))
      {
        goto LABEL_33;
      }

      --v50;
      if (!v42)
      {

        a2 = MEMORY[0x1E69E7CD0];
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v58;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v57, v45);
  a2 = sub_1D88BDCCC(v47, v48[0], v58, v20, v62);

  MEMORY[0x1DA721330](v47, -1, -1);
LABEL_30:

  return a2;
}

uint64_t sub_1D88BB248(unint64_t a1, uint64_t a2)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a1;
  v64 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v2 = sub_1D8B165D0();
    v3 = type metadata accessor for CVTrackedDetection(0);
    sub_1D88C7AAC(&qword_1EE0E62B8, type metadata accessor for CVTrackedDetection);
    sub_1D8B16070();
    v5 = v73;
    v7 = v74;
    v8 = v75;
    v9 = v76;
    v10 = v77;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(a1 + 56);

    v9 = 0;
  }

  v68 = v5;
  v69 = v7;
  v70 = v8;
  v71 = v9;
  v57 = v8;
  v15 = (v8 + 64) >> 6;
  v65 = (v64 + 56);
  v72 = v10;
  v60 = v15;
  v62 = v5;
  v61 = v7;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      v22 = sub_1D8B16640();
      if (!v22)
      {
        goto LABEL_64;
      }

      v66 = v22;
      type metadata accessor for CVTrackedDetection(0);
      swift_dynamicCast();
      v21 = v67;
      v19 = v9;
      v3 = v10;
      if (!v67)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v16 = v10;
      v17 = v9;
      if (v10)
      {
LABEL_20:
        v3 = (v16 - 1) & v16;
        v21 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

        v19 = v17;
      }

      else
      {
        if (v15 <= (v9 + 1))
        {
          v18 = v9 + 1;
        }

        else
        {
          v18 = v15;
        }

        v19 = v18 - 1;
        v20 = v9;
        while (1)
        {
          v17 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_66;
          }

          if (v17 >= v15)
          {
            break;
          }

          v16 = *(v7 + 8 * v17);
          ++v20;
          if (v16)
          {
            goto LABEL_20;
          }
        }

        v21 = 0;
        v3 = 0;
      }

      v68 = v5;
      v69 = v7;
      v70 = v57;
      v71 = v19;
      v72 = v3;
      if (!v21)
      {
LABEL_64:
        sub_1D87977A0();
        return v64;
      }
    }

    sub_1D8B16D20();
    v63 = v21;
    v59 = sub_1D8B13240();
    v58 = sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
    sub_1D8B157A0();
    v23 = sub_1D8B16D80();
    v24 = -1 << *(v64 + 32);
    v2 = v23 & ~v24;
    v5 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v65[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v19;
    v10 = v3;
    v5 = v62;
    v7 = v61;
    v15 = v60;
  }

  v25 = ~v24;

  v26 = sub_1D8B13200();

  if ((v26 & 1) == 0)
  {
    do
    {
      v2 = (v2 + 1) & v25;
      v5 = v2 >> 6;
      v4 = 1 << v2;
      if (((1 << v2) & v65[v2 >> 6]) == 0)
      {
        goto LABEL_10;
      }

      v27 = sub_1D8B13200();
    }

    while ((v27 & 1) == 0);
  }

  v10 = v64;

  v29 = *(v64 + 32);
  v9 = ((1 << v29) + 63) >> 6;
  v6 = 8 * v9;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v54 = v9;
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v31 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v65, v30);
    v32 = *&v31[8 * v5] & ~v4;
    v33 = *(v10 + 16);
    v56 = v31;
    *&v31[8 * v5] = v32;
    v34 = v33 - 1;
    v2 = v62;
    v5 = v61;
    v35 = v60;
    while (2)
    {
      v63 = v34;
LABEL_35:
      if ((v2 & 0x8000000000000000) != 0)
      {
        v37 = sub_1D8B16640();
        if (!v37)
        {
          goto LABEL_61;
        }

        v66 = v37;
        type metadata accessor for CVTrackedDetection(0);
        swift_dynamicCast();
        v9 = v67;
        if (!v67)
        {
          goto LABEL_61;
        }

        goto LABEL_50;
      }

      if (v3)
      {
        v36 = v19;
LABEL_48:
        v40 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v9 = *(*(v2 + 48) + ((v36 << 9) | (8 * v40)));

        v39 = v36;
LABEL_49:
        v68 = v2;
        v69 = v5;
        v70 = v57;
        v71 = v39;
        v19 = v39;
        v72 = v3;
        if (!v9)
        {
LABEL_61:
          v11 = sub_1D88BEF24(v56, v54, v34, v10);
          goto LABEL_62;
        }

LABEL_50:
        sub_1D8B16D20();
        sub_1D8B157A0();
        v41 = sub_1D8B16D80();
        v42 = -1 << *(v10 + 32);
        v43 = v41 & ~v42;
        v4 = v43 >> 6;
        v44 = 1 << v43;
        if (((1 << v43) & v65[v43 >> 6]) != 0)
        {
          v45 = ~v42;
          while (1)
          {

            v46 = sub_1D8B13200();

            if (v46)
            {
              break;
            }

            v43 = (v43 + 1) & v45;
            v4 = v43 >> 6;
            v44 = 1 << v43;
            v10 = v64;
            if (((1 << v43) & v65[v43 >> 6]) == 0)
            {
              goto LABEL_34;
            }
          }

          v34 = v63;

          v47 = v56[v4];
          v56[v4] = v47 & ~v44;
          v10 = v64;
          v2 = v62;
          v5 = v61;
          v35 = v60;
          if ((v47 & v44) != 0)
          {
            if (__OFSUB__(v34--, 1))
            {
              __break(1u);
            }

            if (!v34)
            {

              v11 = MEMORY[0x1E69E7CD0];
              goto LABEL_62;
            }

            continue;
          }
        }

        else
        {
LABEL_34:

          v2 = v62;
          v5 = v61;
          v35 = v60;
          v34 = v63;
        }

        goto LABEL_35;
      }

      break;
    }

    if (v35 <= (v19 + 1))
    {
      v38 = v19 + 1;
    }

    else
    {
      v38 = v35;
    }

    v39 = v38 - 1;
    while (1)
    {
      v36 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v36 >= v35)
      {
        v9 = 0;
        v3 = 0;
        goto LABEL_49;
      }

      v3 = *(v5 + 8 * v36);
      ++v19;
      if (v3)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v50 = v10;
    v51 = v6;

    if (swift_stdlib_isStackAllocationSafe())
    {

      v10 = v50;
      continue;
    }

    break;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v65, v51);
  v11 = sub_1D88BE0C0(v52, v9, v50, v2, &v68);

  MEMORY[0x1DA721330](v52, -1, -1);
LABEL_62:
  sub_1D87977A0();
  return v11;
}

unint64_t sub_1D88BBAAC@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  sub_1D8B16D20();
  sub_1D8B15A60();

  result = sub_1D8B16D80();
  v6 = -1 << *(v4 + 32);
  v7 = result & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v27 = ~v6;
    v8 = 0x62616D6165727473;
    v9 = 0x6E49746C697562;
    v10 = a1;
    v11 = 0xE700000000000000;
    while (1)
    {
      v12 = *(*(v4 + 48) + v7);
      if (v12 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v13 = 0x6261686372616573;
        }

        else
        {
          v13 = 0x7474756853657270;
        }

        if (*(*(v4 + 48) + v7))
        {
          v14 = 0xEA0000000000656CLL;
        }

        else
        {
          v14 = 0xEA00000000007265;
        }
      }

      else if (v12 == 2)
      {
        v13 = 0x7261507473726966;
        v14 = 0xEA00000000007974;
      }

      else
      {
        if (v12 == 3)
        {
          v13 = v9;
        }

        else
        {
          v13 = v8;
        }

        if (v12 == 3)
        {
          v14 = 0xE700000000000000;
        }

        else
        {
          v14 = 0xEA0000000000656CLL;
        }
      }

      v15 = 0xEA00000000007265;
      if (v10 == 3)
      {
        v16 = v9;
      }

      else
      {
        v16 = v8;
      }

      if (v10 != 3)
      {
        v11 = 0xEA0000000000656CLL;
      }

      if (v10 == 2)
      {
        v16 = 0x7261507473726966;
        v11 = 0xEA00000000007974;
      }

      if (v10)
      {
        v17 = 0x6261686372616573;
      }

      else
      {
        v17 = 0x7474756853657270;
      }

      if (v10)
      {
        v15 = 0xEA0000000000656CLL;
      }

      v18 = v10 <= 1 ? v17 : v16;
      v19 = v10 <= 1 ? v15 : v11;
      if (v13 == v18 && v14 == v19)
      {
        break;
      }

      v20 = v9;
      v21 = v8;
      v22 = sub_1D8B16BA0();

      if (v22)
      {
        goto LABEL_42;
      }

      v7 = (v7 + 1) & v27;
      v8 = v21;
      v9 = v20;
      v11 = 0xE700000000000000;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_42:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v25;
    v28 = *v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D880A5A8();
      v24 = v28;
    }

    *a2 = *(*(v24 + 48) + v7);
    result = sub_1D88BF360(v7);
    *v25 = v28;
  }

  else
  {
LABEL_40:
    *a2 = 5;
  }

  return result;
}

unint64_t sub_1D88BBDAC@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](a1);
  result = sub_1D8B16D80();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v12 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D880B794();
      v11 = v12;
    }

    *a2 = *(*(v11 + 48) + v8);
    result = sub_1D88BF5C0(v8);
    *v2 = v12;
  }

  else
  {
LABEL_5:
    *a2 = 14;
  }

  return result;
}

uint64_t sub_1D88BBEBC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v66 = sub_1D8B13240();
  v4 = *(v66 - 8);
  v5 = MEMORY[0x1EEE9AC00](v66);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v57 - v7;
  v78 = type metadata accessor for DetectionRequest.Originator(0);
  v8 = MEMORY[0x1EEE9AC00](v78);
  v65 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v69 = &v57 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v57 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  MEMORY[0x1EEE9AC00](v74);
  v14 = &v57 - v13;
  v15 = type metadata accessor for DetectionRequest(0);
  v64 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v2;
  v18 = *v2;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](*a1);
  v73 = v15[5];
  DetectionRequest.Originator.hash(into:)(v79);
  v68 = *&a1[v15[6]];
  sub_1D8818BD0(v79, v68);
  v19 = &a1[v15[7]];
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  sub_1D88911A0(*v19, v21, v22, v23);
  v24 = v15[8];
  v75 = a1;
  v25 = *&a1[v24];
  v26 = 0;
  if (v25 != 0.0)
  {
    v26 = *&a1[v24];
  }

  MEMORY[0x1DA720250](v26);
  v27 = sub_1D8B16D80();
  v28 = v18 + 56;
  v29 = -1 << *(v18 + 32);
  v30 = v27 & ~v29;
  if (((*(v18 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
  {
    return (*(v64 + 56))(v62, 1, 1, v15);
  }

  v31 = ~v29;
  v77 = *v75;
  v76 = *(v64 + 72);
  v63 = (v4 + 8);
  v58 = (v4 + 32);
  v70 = v18;
  v59 = v15;
  v72 = ~v29;
  v71 = v18 + 56;
  while (1)
  {
    v32 = v76 * v30;
    sub_1D88C7D1C(*(v18 + 48) + v76 * v30, v17, type metadata accessor for DetectionRequest);
    if (*v17 != v77)
    {
      goto LABEL_8;
    }

    v33 = &v14[*(v74 + 48)];
    sub_1D88C7D1C(&v17[v15[5]], v14, type metadata accessor for DetectionRequest.Originator);
    sub_1D88C7D1C(&v75[v73], v33, type metadata accessor for DetectionRequest.Originator);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    v35 = v69;
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D88C7D1C(v14, v69, type metadata accessor for DetectionRequest.Originator);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*v63)(v35, v66);
        v18 = v70;
        goto LABEL_6;
      }

      v40 = *v58;
      v41 = v60;
      v42 = v66;
      (*v58)(v60, v35, v66);
      v43 = v61;
      v40(v61, v33, v42);
      v39 = sub_1D8B13200();
      v44 = *v63;
      (*v63)(v43, v42);
      v45 = v42;
      v15 = v59;
      v44(v41, v45);
      sub_1D88C7D84(v14, type metadata accessor for DetectionRequest.Originator);
      v18 = v70;
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v46 = swift_getEnumCaseMultiPayload();
        v18 = v70;
        if (v46 == 4)
        {
          goto LABEL_32;
        }

        goto LABEL_6;
      }

      v36 = v65;
      sub_1D88C7D1C(v14, v65, type metadata accessor for DetectionRequest.Originator);
      v37 = *v36;
      v38 = swift_getEnumCaseMultiPayload();
      v18 = v70;
      if (v38 != 3)
      {

        goto LABEL_6;
      }

      v39 = sub_1D894FA18(v37, *v33);

      sub_1D88C7D84(v14, type metadata accessor for DetectionRequest.Originator);
    }

    v28 = v71;
    v31 = v72;
    if (v39)
    {
      goto LABEL_33;
    }

LABEL_8:
    sub_1D88C7D84(v17, type metadata accessor for DetectionRequest);
    v30 = (v30 + 1) & v31;
    if (((*(v28 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
      return (*(v64 + 56))(v62, 1, 1, v15);
    }
  }

  if (!EnumCaseMultiPayload)
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1D88C7D84(v33, type metadata accessor for DetectionRequest.Originator);
LABEL_32:
      sub_1D88C7D84(v14, type metadata accessor for DetectionRequest.Originator);
      v28 = v71;
      v31 = v72;
      goto LABEL_33;
    }

LABEL_6:
    sub_1D87A14E4(v14, &unk_1ECA64FB0);
LABEL_7:
    v28 = v71;
    v31 = v72;
    goto LABEL_8;
  }

  v47 = v67;
  sub_1D88C7D1C(v14, v67, type metadata accessor for DetectionRequest.Originator);
  v48 = *v47;
  v18 = v70;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_6;
  }

  v49 = *v33;
  v50 = *(v33 + 4);
  if (!*(v67 + 4))
  {
    if (v50)
    {
LABEL_37:
      sub_1D88C7D84(v14, type metadata accessor for DetectionRequest.Originator);
      goto LABEL_7;
    }

LABEL_31:
    if (v48 == v49)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  if (*(v67 + 4) == 1)
  {
    if (v50 != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

  sub_1D88C7D84(v14, type metadata accessor for DetectionRequest.Originator);
  v28 = v71;
  v31 = v72;
  if (v49 != 0.0 || v50 != 2)
  {
    goto LABEL_8;
  }

LABEL_33:
  if ((sub_1D894CAAC(*&v17[v15[6]], v68) & 1) == 0)
  {
    goto LABEL_8;
  }

  v80.origin.x = v20;
  v80.origin.y = v21;
  v80.size.width = v22;
  v80.size.height = v23;
  if (!CGRectEqualToRect(*&v17[v15[7]], v80) || *&v17[v15[8]] != v25)
  {
    goto LABEL_8;
  }

  v52 = v64;
  sub_1D88C7D84(v17, type metadata accessor for DetectionRequest);
  v53 = v57;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v53;
  *&v79[0] = *v53;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D880B588();
    v55 = *&v79[0];
  }

  v56 = v62;
  sub_1D88C7124(*(v55 + 48) + v32, v62, type metadata accessor for DetectionRequest);
  sub_1D88BF768(v30);
  *v53 = *&v79[0];
  return (*(v52 + 56))(v56, 0, 1, v15);
}

uint64_t sub_1D88BC7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D8B13240();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  v31 = a1;
  v10 = sub_1D8B15790();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1D88C7AAC(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
      v19 = sub_1D8B158C0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D880B7A8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1D88BFA6C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1D88BCA90()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {

    v2 = sub_1D8B16650();

    if (v2)
    {
      v3 = sub_1D88BF19C();

      return v3;
    }

    return 0;
  }

  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v5 = sub_1D8B16D80();
  v6 = -1 << *(v1 + 32);
  v7 = v5 & ~v6;
  if (((*(v1 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (1)
  {

    v9 = sub_1D8B13200();

    if (v9)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v1 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  v13 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D880C29C();
    v11 = v13;
  }

  v12 = *(*(v11 + 48) + 8 * v7);
  sub_1D88BFD74(v7);
  result = v12;
  *v0 = v13;
  return result;
}

uint64_t sub_1D88BCC84(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v89 = a2;
  v104 = sub_1D8B13240();
  v9 = *(v104 - 8);
  v10 = MEMORY[0x1EEE9AC00](v104);
  v93 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v88 - v12;
  v113 = type metadata accessor for DetectionRequest.Originator(0);
  v13 = MEMORY[0x1EEE9AC00](v113);
  v102 = (&v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v88 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v105 = &v88 - v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  MEMORY[0x1EEE9AC00](v110);
  v20 = &v88 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA68B20);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v97 = &v88 - v22;
  v23 = type metadata accessor for DetectionRequest(0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v24);
  v112 = &v88 - v28;
  v29 = *(a3 + 16);
  v30 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v31 = *(a1 + v30) & ((-1 << a4) - 1);
  v91 = a1;
  *(a1 + v30) = v31;
  v32 = v29 - 1;
  v96 = (v33 + 56);
  v98 = v33;
  v95 = (v33 + 48);
  v118 = a3;
  v116 = a3 + 56;
  v100 = (v9 + 8);
  v92 = (v9 + 32);
  v94 = a5;
  v101 = v17;
  v106 = v20;
  v107 = result;
LABEL_2:
  v90 = v32;
LABEL_4:
  while (2)
  {
    v34 = *a5;
    v35 = a5[1];
    v37 = a5[2];
    v36 = a5[3];
    v38 = a5[4];
    if (v38)
    {
      v39 = a5[3];
LABEL_13:
      v43 = (v38 - 1) & v38;
      v44 = v97;
      sub_1D88C7D1C(*(v34 + 48) + *(v98 + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), v97, type metadata accessor for DetectionRequest);
      v45 = 0;
      v42 = v39;
LABEL_14:
      v46 = v107;
      (*v96)(v44, v45, 1, v107);
      *a5 = v34;
      a5[1] = v35;
      a5[2] = v37;
      a5[3] = v42;
      v47 = v46;
      a5[4] = v43;
      if ((*v95)(v44, 1, v46) == 1)
      {
        sub_1D87A14E4(v44, &unk_1ECA68B20);
        v87 = v118;

        return sub_1D88BE398(v91, v89, v90, v87);
      }

      v48 = v112;
      sub_1D88C7124(v44, v112, type metadata accessor for DetectionRequest);
      v49 = v118;
      sub_1D8B16D20();
      MEMORY[0x1DA720210](*v48);
      v50 = v47[5];
      DetectionRequest.Originator.hash(into:)(&v117);
      v108 = *&v48[v47[6]];
      sub_1D8818BD0(&v117, v108);
      v51 = &v48[v47[7]];
      v52 = *v51;
      v53 = v51[1];
      v54 = v51[2];
      v55 = v51[3];
      sub_1D88911A0(*v51, v53, v54, v55);
      v56 = v47[8];
      v57 = *&v48[v56];
      if (v57 == 0.0)
      {
        v58 = 0.0;
      }

      else
      {
        v58 = *&v48[v56];
      }

      MEMORY[0x1DA720250](*&v58);
      v59 = sub_1D8B16D80();
      v60 = -1 << *(v49 + 32);
      v61 = v59 & ~v60;
      v62 = v61 >> 6;
      v63 = 1 << v61;
      if (((1 << v61) & *(v116 + 8 * (v61 >> 6))) == 0)
      {
LABEL_3:
        result = sub_1D88C7D84(v112, type metadata accessor for DetectionRequest);
        a5 = v94;
        continue;
      }

      v114 = ~v60;
      v64 = *v48;
      v115 = *(v98 + 72);
      v65 = v106;
      v109 = v50;
      v111 = v64;
      while (1)
      {
        sub_1D88C7D1C(*(v118 + 48) + v115 * v61, v26, type metadata accessor for DetectionRequest);
        if (*v26 != v64)
        {
          goto LABEL_24;
        }

        v66 = v65 + *(v110 + 48);
        sub_1D88C7D1C(&v26[v47[5]], v65, type metadata accessor for DetectionRequest.Originator);
        sub_1D88C7D1C(&v112[v50], v66, type metadata accessor for DetectionRequest.Originator);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v81 = v65;
            v82 = v105;
            sub_1D88C7D1C(v81, v105, type metadata accessor for DetectionRequest.Originator);
            v83 = *v82;
            v65 = v106;
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              goto LABEL_22;
            }

            v84 = *v66;
            v85 = *(v66 + 4);
            if (*(v105 + 4))
            {
              if (*(v105 + 4) != 1)
              {
                v99 = v84;
                sub_1D88C7D84(v65, type metadata accessor for DetectionRequest.Originator);
                v64 = v111;
                if (v99 != 0.0 || v85 != 2)
                {
                  goto LABEL_24;
                }

                goto LABEL_49;
              }

              if (v85 != 1)
              {
                goto LABEL_53;
              }
            }

            else if (v85)
            {
              goto LABEL_53;
            }

            if (v83 != v84)
            {
LABEL_53:
              sub_1D88C7D84(v65, type metadata accessor for DetectionRequest.Originator);
              goto LABEL_23;
            }
          }

          else
          {
            if (swift_getEnumCaseMultiPayload())
            {
              goto LABEL_22;
            }

            sub_1D88C7D84(v66, type metadata accessor for DetectionRequest.Originator);
          }
        }

        else
        {
          if (EnumCaseMultiPayload == 2)
          {
            v72 = v101;
            sub_1D88C7D1C(v65, v101, type metadata accessor for DetectionRequest.Originator);
            if (swift_getEnumCaseMultiPayload() != 2)
            {
              (*v100)(v72, v104);
              goto LABEL_21;
            }

            v73 = *v92;
            v74 = v72;
            v75 = v104;
            (*v92)(v103, v74, v104);
            v76 = v93;
            v73(v93, v66, v75);
            v77 = v103;
            LODWORD(v99) = sub_1D8B13200();
            v78 = *v100;
            v79 = v76;
            v65 = v106;
            (*v100)(v79, v75);
            v80 = v77;
            v47 = v107;
            v78(v80, v75);
            sub_1D88C7D84(v65, type metadata accessor for DetectionRequest.Originator);
            goto LABEL_36;
          }

          if (EnumCaseMultiPayload == 3)
          {
            v68 = v65;
            v69 = v65;
            v70 = v102;
            sub_1D88C7D1C(v68, v102, type metadata accessor for DetectionRequest.Originator);
            v71 = *v70;
            if (swift_getEnumCaseMultiPayload() != 3)
            {

              v65 = v69;
              v47 = v107;
LABEL_21:
              v50 = v109;
LABEL_22:
              sub_1D87A14E4(v65, &unk_1ECA64FB0);
LABEL_23:
              v64 = v111;
              goto LABEL_24;
            }

            LODWORD(v99) = sub_1D894FA18(v71, *v66);

            sub_1D88C7D84(v69, type metadata accessor for DetectionRequest.Originator);
            v65 = v69;
            v47 = v107;
LABEL_36:
            v50 = v109;
            v64 = v111;
            if ((LOBYTE(v99) & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_49;
          }

          if (swift_getEnumCaseMultiPayload() != 4)
          {
            goto LABEL_22;
          }
        }

        sub_1D88C7D84(v65, type metadata accessor for DetectionRequest.Originator);
        v64 = v111;
LABEL_49:
        if (sub_1D894CAAC(*&v26[v47[6]], v108))
        {
          v119.origin.x = v52;
          v119.origin.y = v53;
          v119.size.width = v54;
          v119.size.height = v55;
          if (CGRectEqualToRect(*&v26[v47[7]], v119) && *&v26[v47[8]] == v57)
          {
            sub_1D88C7D84(v26, type metadata accessor for DetectionRequest);
            result = sub_1D88C7D84(v112, type metadata accessor for DetectionRequest);
            v86 = v91[v62];
            v91[v62] = v86 & ~v63;
            a5 = v94;
            if ((v86 & v63) != 0)
            {
              v32 = v90 - 1;
              if (__OFSUB__(v90, 1))
              {
                goto LABEL_64;
              }

              if (v90 == 1)
              {
                return MEMORY[0x1E69E7CD0];
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }
        }

LABEL_24:
        sub_1D88C7D84(v26, type metadata accessor for DetectionRequest);
        v61 = (v61 + 1) & v114;
        v62 = v61 >> 6;
        v63 = 1 << v61;
        if ((*(v116 + 8 * (v61 >> 6)) & (1 << v61)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v40 = (v37 + 64) >> 6;
  if (v40 <= v36 + 1)
  {
    v41 = v36 + 1;
  }

  else
  {
    v41 = (v37 + 64) >> 6;
  }

  v42 = v41 - 1;
  while (1)
  {
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v39 >= v40)
    {
      v43 = 0;
      v45 = 1;
      v44 = v97;
      goto LABEL_14;
    }

    v38 = *(v35 + 8 * v39);
    ++v36;
    if (v38)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1D88BD7F8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1D8B13240();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1D87A14E4(v11, &qword_1ECA63178);
          v45 = v61;

          return sub_1D88BE8D4(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
        v35 = sub_1D8B15790();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1D88C7AAC(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
        v43 = sub_1D8B158C0();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1D88BDCCC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = sub_1D8B13FA0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v42 = &v35 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    return sub_1D88BEBFC(v36, v35, v37, a3);
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_1D88C7AAC(&qword_1ECA649A0, MEMORY[0x1E69A1168]);
    v25 = sub_1D8B15790();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_6:
      result = (v22)(v48, v9);
      goto LABEL_7;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      v44(v13, *(v30 + 48) + v27 * v45, v9);
      sub_1D88C7AAC(&qword_1ECA67E10, MEMORY[0x1E69A1168]);
      v32 = sub_1D8B158C0();
      v22 = *v47;
      (*v47)(v13, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_6;
      }
    }

    result = (v22)(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_7:
      v10 = v41;
      goto LABEL_8;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_21;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return MEMORY[0x1E69E7CD0];
    }

LABEL_8:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D88BE0C0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_1D8B16640())
          {
            goto LABEL_30;
          }

          type metadata accessor for CVTrackedDetection(0);
          swift_dynamicCast();
          if (!v30)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v12 = (v5[2] + 64) >> 6;
            if (v12 <= v9 + 1)
            {
              v13 = v9 + 1;
            }

            else
            {
              v13 = (v5[2] + 64) >> 6;
            }

            v14 = v13 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v12)
              {
                v16 = 0;
                v15 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v15 = (v10 - 1) & v10;
          v16 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

          v14 = v11;
LABEL_18:
          v5[3] = v14;
          v5[4] = v15;
          if (!v16)
          {
LABEL_30:

            return sub_1D88BEF24(v27, a2, v26, a3);
          }
        }

        sub_1D8B16D20();
        sub_1D8B13240();
        sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
        sub_1D8B157A0();
        v17 = sub_1D8B16D80();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v29 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      v22 = ~v18;
      while (1)
      {

        v23 = sub_1D8B13200();

        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v29 + 8 * (v19 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

      v5 = a5;

      v24 = v27[v20];
      v27[v20] = v24 & ~v21;
    }

    while ((v24 & v21) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_32:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1D88BE398(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DetectionRequest(0);
  v31 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E20);
  result = sub_1D8B166E0();
  v11 = result;
  v30 = a4;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(v30 + 48);
    v32 = *(v31 + 72);
    sub_1D88C7D1C(v19 + v32 * (v16 | (v14 << 6)), v10, type metadata accessor for DetectionRequest);
    sub_1D8B16D20();
    MEMORY[0x1DA720210](*v10);
    DetectionRequest.Originator.hash(into:)(v33);
    sub_1D8818BD0(v33, *&v10[v8[6]]);
    sub_1D88911A0(*&v10[v8[7]], *&v10[v8[7] + 8], *&v10[v8[7] + 16], *&v10[v8[7] + 24]);
    v20 = *&v10[v8[8]];
    if (v20 == 0.0)
    {
      v20 = 0.0;
    }

    MEMORY[0x1DA720250](*&v20);
    result = sub_1D8B16D80();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_28;
        }
      }

      goto LABEL_33;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_1D88C7124(v10, *(v11 + 48) + v24 * v32, type metadata accessor for DetectionRequest);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_34;
    }

    if (!a3)
    {
LABEL_30:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_30;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D88BE6CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D48);
  result = sub_1D8B166E0();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1D8B16D20();
    MEMORY[0x1DA720210](v16);
    result = sub_1D8B16D80();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D88BE8D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1D8B13240();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D50);
  result = sub_1D8B166E0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
    result = sub_1D8B15790();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_1D88BEBFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1D8B13FA0();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E00);
  result = sub_1D8B166E0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1D88C7AAC(&qword_1ECA649A0, MEMORY[0x1E69A1168]);
    result = sub_1D8B15790();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_1D88BEF24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D58);
  result = sub_1D8B166E0();
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
  v12 = result + 56;
  v26 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v27 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_1D8B16D20();
    sub_1D8B13240();
    sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);

    sub_1D8B157A0();
    result = sub_1D8B16D80();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v26;
    v10 = v27;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v27 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D88BF19C()
{

  v1 = sub_1D8B16610();
  v2 = swift_unknownObjectRetain();
  v3 = sub_1D8AF01A8(v2, v1);
  v11 = v3;
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);

  sub_1D8B157A0();
  v4 = sub_1D8B16D80();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {

      v8 = sub_1D8B13200();

      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v9 = *(*(v3 + 48) + 8 * v6);
  sub_1D88BFD74(v6);
  result = sub_1D8B13200();
  if (result)
  {
    *v0 = v11;
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D88BF360(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D8B16590();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D8B16D20();
        sub_1D8B15A60();

        v10 = sub_1D8B16D80() & v7;
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

unint64_t sub_1D88BF5C0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D8B16590();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_1D8B16D20();
        MEMORY[0x1DA720210](v10);
        v11 = sub_1D8B16D80() & v7;
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
          v13 = (v12 + v2);
          v14 = (v12 + v6);
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

uint64_t sub_1D88BF768(unint64_t a1)
{
  v3 = type metadata accessor for DetectionRequest(0);
  v4 = *(v3 - 1);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1D8B16590();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v24 = v9;
      v14 = (v13 + 1) & v12;
      v15 = *(v4 + 72);
      while (1)
      {
        v16 = v15 * v11;
        sub_1D88C7D1C(*(v8 + 48) + v15 * v11, v7, type metadata accessor for DetectionRequest);
        sub_1D8B16D20();
        MEMORY[0x1DA720210](*v7);
        DetectionRequest.Originator.hash(into:)(v25);
        sub_1D8818BD0(v25, *&v7[v3[6]]);
        sub_1D88911A0(*&v7[v3[7]], *&v7[v3[7] + 8], *&v7[v3[7] + 16], *&v7[v3[7] + 24]);
        v17 = *&v7[v3[8]];
        if (v17 == 0.0)
        {
          v17 = 0.0;
        }

        MEMORY[0x1DA720250](*&v17);
        v18 = sub_1D8B16D80();
        sub_1D88C7D84(v7, type metadata accessor for DetectionRequest);
        v19 = v18 & v12;
        if (a1 >= v14)
        {
          break;
        }

        if (v19 < v14)
        {
          goto LABEL_13;
        }

LABEL_14:
        v20 = v15 * a1;
        if ((v15 * a1) < v16 || *(v8 + 48) + v15 * a1 >= *(v8 + 48) + v16 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v11;
          if (v20 == v16)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v11;
LABEL_6:
        v11 = (v11 + 1) & v12;
        if (((*(v24 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          v9 = v24;
          goto LABEL_21;
        }
      }

      if (v19 < v14)
      {
        goto LABEL_6;
      }

LABEL_13:
      if (a1 < v19)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

LABEL_21:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v8 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v23;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_1D88BFA6C(int64_t a1)
{
  v3 = sub_1D8B13240();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1D8B16590();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
        v24 = sub_1D8B15790();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_1D88BFD74(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D8B16590();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D8B16D20();
        sub_1D8B13240();
        sub_1D88C7AAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);

        sub_1D8B157A0();
        v10 = sub_1D8B16D80();

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
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
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

uint64_t sub_1D88BFF90(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v34 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for DetectionRequest(0);
  v31 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a3 + 32);
  v10 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v27 = v10;
    v29 = &v27;
    MEMORY[0x1EEE9AC00](v7);
    v28 = &v27 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v11);
    v30 = 0;
    v10 = 0;
    v33 = a3;
    v13 = *(a3 + 56);
    a3 += 56;
    v12 = v13;
    v14 = 1 << *(a3 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v21 = v18 | (v10 << 6);
      sub_1D88C7D1C(*(v33 + 48) + *(v31 + 72) * v21, v9, type metadata accessor for DetectionRequest);
      v22 = v32(v9);
      sub_1D88C7D84(v9, type metadata accessor for DetectionRequest);
      if (v3)
      {

        return swift_willThrow();
      }

      if (v22)
      {
        *&v28[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
          return sub_1D88BE398(v28, v27, v30, v33);
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return sub_1D88BE398(v28, v27, v30, v33);
      }

      v20 = *(a3 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

  v25 = swift_slowAlloc();
  v26 = sub_1D88C0904(v25, v10, a3, v32, a2, sub_1D88C0578);

  result = MEMORY[0x1DA721330](v25, -1, -1);
  if (!v3)
  {
    return v26;
  }

  return result;
}

uint64_t sub_1D88C02DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v25[0] = v7;
    v25[1] = v25;
    MEMORY[0x1EEE9AC00](a1);
    v9 = v25 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v27 = 0;
    v10 = 0;
    v11 = 1 << *(a3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a3 + 56);
    v7 = (v11 + 63) >> 6;
    v14 = v26;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = v15 | (v10 << 6);
      v28 = *(*(a3 + 48) + v18);
      v19 = v5(&v28);
      if (v14)
      {

        return swift_willThrow();
      }

      if (v19)
      {
        *&v9[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
          return sub_1D88BE6CC(v9, v25[0], v27, a3);
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        return sub_1D88BE6CC(v9, v25[0], v27, a3);
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
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v26;
  v24 = sub_1D88C0904(v22, v7, a3, v5, a2, sub_1D88C0790);

  result = MEMORY[0x1DA721330](v22, -1, -1);
  if (!v23)
  {
    return v24;
  }

  return result;
}

uint64_t sub_1D88C0578(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for DetectionRequest(0);
  v29 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    sub_1D88C7D1C(*(v31 + 48) + *(v29 + 72) * v21, v9, type metadata accessor for DetectionRequest);
    v22 = v30(v9);
    result = sub_1D88C7D84(v9, type metadata accessor for DetectionRequest);
    if (v4)
    {
      return result;
    }

    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;

        return sub_1D88BE398(v27, v26, v28, v24);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D88C0790(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
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
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1D88BE6CC(v20, a2, v7, a3);
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
      goto LABEL_16;
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

void *sub_1D88C0904(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_1D88C09A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D88C09C8, 0, 0);
}

uint64_t sub_1D88C09C8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1D88C0AC4;
    v3 = *(v0 + 56);

    return sub_1D8894244(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1D88C0AC4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88C0BDC, 0, 0);
}

uint64_t sub_1D88C0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8, double a9)
{
  v18 = a6[3];
  *(v9 + 48) = a6[2];
  *(v9 + 64) = v18;
  v19 = a6[5];
  *(v9 + 80) = a6[4];
  *(v9 + 96) = v19;
  v20 = a6[1];
  *(v9 + 16) = *a6;
  *(v9 + 32) = v20;
  v21 = swift_task_alloc();
  *(v9 + 112) = v21;
  *v21 = v9;
  v21[1] = sub_1D88C0D08;

  return sub_1D88B2B8C(a9, a1, a2, a3, a4, a5, v9 + 16, a7, a8);
}

uint64_t sub_1D88C0D08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D88C0DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, char a6, uint64_t a7, uint64_t a8, double a9)
{
  v18 = a5[3];
  *(v9 + 48) = a5[2];
  *(v9 + 64) = v18;
  v19 = a5[5];
  *(v9 + 80) = a5[4];
  *(v9 + 96) = v19;
  v20 = a5[1];
  *(v9 + 16) = *a5;
  *(v9 + 32) = v20;
  v21 = swift_task_alloc();
  *(v9 + 112) = v21;
  *v21 = v9;
  v21[1] = sub_1D88C0D08;

  return sub_1D88B3764(a9, a1, a2, a3, a4, v9 + 16, a6, a7, a8);
}

uint64_t sub_1D88C0F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8, double a9)
{
  v18 = a6[3];
  *(v9 + 48) = a6[2];
  *(v9 + 64) = v18;
  v19 = a6[5];
  *(v9 + 80) = a6[4];
  *(v9 + 96) = v19;
  v20 = a6[1];
  *(v9 + 16) = *a6;
  *(v9 + 32) = v20;
  v21 = swift_task_alloc();
  *(v9 + 112) = v21;
  *v21 = v9;
  v21[1] = sub_1D88C7EC0;

  return sub_1D88B4248(a1, a9, a2, a3, a4, a5, v9 + 16, a7, a8);
}

BOOL _s22VisualIntelligenceCore19InProcessMediaFrameV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 8) > 1u)
  {
    if (*(a1 + 8) == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v4)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == 3;
      }

      if (!v10)
      {
        return 0;
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*(a1 + 8))
    {
      if (v5 != 1 || v6 != v4)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 8))
      {
        v7 = 0;
      }

      else
      {
        v7 = v6 == v4;
      }

      if (!v7)
      {
        return 0;
      }
    }
  }

  v17 = v2;
  v18 = v3;
  v11 = *(a1 + 4);
  v16[2] = *(a1 + 3);
  v16[3] = v11;
  v16[4] = *(a1 + 5);
  v12 = *(a1 + 2);
  v16[0] = *(a1 + 1);
  v16[1] = v12;
  v13 = *(a2 + 4);
  v15[2] = *(a2 + 3);
  v15[3] = v13;
  v15[4] = *(a2 + 5);
  v14 = *(a2 + 2);
  v15[0] = *(a2 + 1);
  v15[1] = v14;
  return _s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v16, v15);
}

uint64_t sub_1D88C10EC(uint64_t a1, uint64_t (*a2)(_OWORD *, uint64_t))
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v40 = MEMORY[0x1E69E7CC0];
  sub_1D87F4564(0, v4, 0);
  v5 = v40;
  v33 = a1 + 64;
  result = sub_1D8B16580();
  v7 = a1;
  if (result < 0 || (v8 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    v43 = *(a1 + 36);
    v9 = 1;
    while (1)
    {
      v10 = v8 >> 6;
      if ((*(v33 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        break;
      }

      if (v43 != *(v7 + 36))
      {
        goto LABEL_28;
      }

      v11 = *(v7 + 56);
      v12 = (*(v7 + 48) + 88 * v8);
      v13 = v12[1];
      v35[0] = *v12;
      v35[1] = v13;
      v15 = v12[3];
      v14 = v12[4];
      v16 = v12[2];
      v36 = *(v12 + 10);
      v35[2] = v16;
      v35[3] = v15;
      v35[4] = v14;
      v17 = *(v11 + 8 * v8);
      memmove(__dst, v12, 0x58uLL);
      v39 = v17;
      v41[2] = __dst[2];
      v41[3] = __dst[3];
      v41[4] = __dst[4];
      v42 = v38;
      v41[0] = __dst[0];
      v41[1] = __dst[1];
      sub_1D881F59C(v35, v34);

      v18 = a2(v41, v17);
      if (v3)
      {
        sub_1D87A14E4(__dst, &qword_1ECA64958);

        return v5;
      }

      v19 = v18;
      result = sub_1D87A14E4(__dst, &qword_1ECA64958);
      v40 = v5;
      v21 = *(v5 + 16);
      v20 = *(v5 + 24);
      v22 = v5;
      if (v21 >= v20 >> 1)
      {
        result = sub_1D87F4564((v20 > 1), v21 + 1, 1);
        v22 = v40;
      }

      *(v22 + 16) = v21 + 1;
      *(v22 + 8 * v21 + 32) = v19;
      v7 = a1;
      v23 = 1 << *(a1 + 32);
      if (v8 >= v23)
      {
        goto LABEL_29;
      }

      v24 = *(v33 + 8 * v10);
      if ((v24 & (1 << v8)) == 0)
      {
        goto LABEL_30;
      }

      v5 = v22;
      if (v43 != *(a1 + 36))
      {
        goto LABEL_31;
      }

      v25 = v24 & (-2 << (v8 & 0x3F));
      if (v25)
      {
        v8 = __clz(__rbit64(v25)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v10 << 6;
        v27 = v10 + 1;
        v28 = (a1 + 72 + 8 * v10);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1D87977B4(v8, v43, 0);
            v7 = a1;
            v8 = __clz(__rbit64(v29)) + v26;
            goto LABEL_20;
          }
        }

        result = sub_1D87977B4(v8, v43, 0);
        v7 = a1;
        v8 = v23;
      }

LABEL_20:
      v3 = 0;
      if (v9 == v4)
      {
        return v5;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        ++v9;
        if (v8 < 1 << *(v7 + 32))
        {
          continue;
        }
      }

      goto LABEL_26;
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

uint64_t sub_1D88C143C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v47 = a3;
  v48 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - v13;

  swift_defaultActor_initialize();
  *(v7 + 136) = 0;
  type metadata accessor for HighResolutionStillBarrier();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  v17 = sub_1D893CBEC(MEMORY[0x1E69E7CC0]);
  *(v15 + 16) = 0;
  *(v15 + 24) = v17;
  *(v15 + 32) = nullsub_3;
  *(v15 + 40) = 0;
  *(v7 + 144) = v15;
  *(v7 + 176) = &type metadata for AnalyticsLogger;
  *(v7 + 184) = &off_1F542BE38;
  v18 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput;
  v19 = type metadata accessor for BundleSelector.Output(0);
  (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
  *(v7 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_predictionResults) = v16;
  v20 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionToPredictionResultMap;
  *(v7 + v20) = sub_1D893D710(v16);
  *(v7 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionToPredictionResultMapTimeout) = 0x4014000000000000;
  v21 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_selection;
  v22 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  (*(*(v22 - 8) + 56))(v7 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_outputStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649A8);
  v24 = swift_allocObject();
  *(v24 + 16) = MEMORY[0x1E69E7CC8];
  *(v7 + v23) = v24;
  v25 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_outputStreamBufferingPolicy;
  *(v7 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_outputStreamBufferingPolicy) = 1;
  v26 = *MEMORY[0x1E69E8640];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64128);
  (*(*(v27 - 8) + 104))(v7 + v25, v26, v27);
  v28 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_identifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649B0);
  *(v7 + v28) = atomic_fetch_add((swift_initStaticObject() + 16), 1uLL);
  *(v7 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_visionProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_isPredictionRunning) = 0;
  v29 = a1 + *(type metadata accessor for SaliencyStreamConfiguration() + 36);
  v30 = *v29;
  v31 = v29[8];
  v32 = *(v29 + 2);
  v33 = *(v29 + 3);
  v34 = *(v29 + 4);
  v35 = v7 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_configuration;
  *v35 = v30;
  *(v35 + 8) = v31;
  *(v35 + 16) = v32;
  *(v35 + 24) = v33;
  *(v35 + 32) = v34;
  v36 = v47;
  *(v7 + 120) = a2;
  *(v7 + 128) = v36;
  v52[3] = &type metadata for AnalyticsLogger;
  v52[4] = &off_1F542BE38;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1D87B6EFC(v52, v7 + 152, &qword_1ECA64120);
  swift_endAccess();
  *(v7 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionPredictionClient) = a4;
  v38 = a1[1];
  v52[0] = *a1;
  v37 = v52[0];
  v52[1] = v38;

  sub_1D8879738(v37, v38);
  if (qword_1EE0E5EF0 != -1)
  {
    swift_once();
  }

  v39 = qword_1EE0E5EF8;
  v40 = qword_1EE0E9958;

  if (v40 != -1)
  {
    swift_once();
  }

  v49 = qword_1EE0E9960;
  v50 = word_1EE0E9968;
  v51 = byte_1EE0E996A;
  type metadata accessor for BuiltInActionExecutor();
  swift_allocObject();

  v41 = sub_1D88795AC(v52, v39, &v49);

  *(v7 + 112) = v41;
  v42 = sub_1D8B15EA0();
  (*(*(v42 - 8) + 56))(v14, 1, 1, v42);
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v45 = v48;
  v44[4] = v43;
  v44[5] = v45;
  v44[6] = a6;
  sub_1D8891CA0(0, 0, v14, &unk_1D8B25F78, v44);

  sub_1D88C7D84(a1, type metadata accessor for SaliencyStreamConfiguration);
  return v7;
}

uint64_t sub_1D88C1988(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D886553C;

  return sub_1D889DFA8(a1, v1);
}

uint64_t sub_1D88C1A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v56 = a8;
  v57 = a7;
  v58 = a5;
  v59 = a4;
  v54 = a3;
  v55 = a2;
  v63 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v49 - v12;
  v13 = type metadata accessor for BundleManager.Configuration(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v60 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649D8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0);
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8);
  v50 = *(v22 - 8);
  v51 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  v62 = a6;

  swift_defaultActor_initialize();
  *(v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles) = MEMORY[0x1E69E7CC0];
  v25 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_outputStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649F0);
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E7CC8];
  *(v26 + 16) = MEMORY[0x1E69E7CC8];
  *(v9 + v25) = v26;
  v28 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_outputStreamBufferingPolicy;
  *(v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_outputStreamBufferingPolicy) = 1;
  v29 = *MEMORY[0x1E69E8640];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64800);
  (*(*(v30 - 8) + 104))(v9 + v28, v29, v30);
  *(v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundleIdToBundleClassifier) = v27;
  v31 = (v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v31[4] = 0u;
  v31[5] = 0u;
  v31[2] = 0u;
  v31[3] = 0u;
  *v31 = 0u;
  v31[1] = 0u;
  v32 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_logger;
  if (qword_1EE0E44F0 != -1)
  {
    swift_once();
  }

  v33 = sub_1D8B151E0();
  v34 = __swift_project_value_buffer(v33, qword_1EE0E44F8);
  (*(*(v33 - 8) + 16))(v9 + v32, v34, v33);
  *(v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_trackReadingTask) = 0;
  v35 = v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager__bundleClassificationRunner;
  *(v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager__bundleClassificationRunner + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_otherSyntheticTracks) = MEMORY[0x1E69E7CD0];
  v36 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStream;
  v37 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStreamContinuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649F8);
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8650], v15);
  sub_1D8B15EB0();
  (*(v16 + 8))(v18, v15);
  (*(v50 + 32))(v9 + v36, v24, v51);
  (*(v52 + 32))(v9 + v37, v21, v53);
  *(v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationMergerTask) = 0;
  *(v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationWorkerTask) = 0;
  v38 = type metadata accessor for SaliencyStreamConfiguration();
  v39 = swift_unknownObjectRetain();
  v40 = v63;
  v41 = v60;
  sub_1D8924580(v39, v54, v60);
  swift_unknownObjectRelease();
  sub_1D88C7D1C(v41, v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_configuration, type metadata accessor for BundleManager.Configuration);
  *(v35 + 8) = v56;
  swift_unknownObjectWeakAssign();
  v42 = v40 + *(v38 + 32);
  v65 = *(v42 + 41);
  BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter(v64);
  sub_1D8788F40(v64, v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_stillRankingAlgorithm);
  v65 = *(v42 + 42);
  BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter(v64);
  sub_1D8788F40(v64, v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_streamingRankingAlgorithm);
  *(v9 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_vapClient) = v59;
  v43 = sub_1D8B15EA0();
  v44 = v61;
  (*(*(v43 - 8) + 56))(v61, 1, 1, v43);
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  v46[2] = 0;
  v46[3] = 0;
  v47 = v58;
  v46[4] = v45;
  v46[5] = v47;
  v46[6] = v62;

  sub_1D8B070E8(0, 0, v44, 0, 0, &unk_1D8B26038, v46);

  sub_1D88C7D84(v40, type metadata accessor for SaliencyStreamConfiguration);
  sub_1D87A14E4(v44, &unk_1ECA675E0);
  sub_1D88C7D84(v41, type metadata accessor for BundleManager.Configuration);
  return v9;
}

uint64_t sub_1D88C2128(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D886553C;

  return sub_1D889E034(a1, v1);
}

uint64_t sub_1D88C21C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v36 - v9;

  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649C8);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC8];
  *(v11 + 16) = MEMORY[0x1E69E7CC8];
  *(v3 + 112) = v11;
  v13 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_outputStreamBufferingPolicy;
  *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_outputStreamBufferingPolicy) = 1;
  v14 = *MEMORY[0x1E69E8640];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64810);
  (*(*(v15 - 8) + 104))(v4 + v13, v14, v15);
  v16 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_logger;
  if (qword_1EE0E44A8 != -1)
  {
    swift_once();
  }

  v17 = sub_1D8B151E0();
  v18 = __swift_project_value_buffer(v17, qword_1EE0E44B0);
  (*(*(v17 - 8) + 16))(v4 + v16, v18, v17);
  v19 = v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 2;
  *(v19 + 48) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 32) = 0u;
  v20 = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_refiningBundles) = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_requests) = 0;
  v21 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_userSelectedBundle;
  v22 = type metadata accessor for CVBundle(0);
  (*(*(v22 - 8) + 56))(v4 + v21, 1, 1, v22);
  v23 = v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector____lazy_storage___allowableRegion;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 1;
  v24 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_requestsBroadcastStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649D0);
  v25 = swift_allocObject();
  *(v4 + v24) = v25;
  *(v25 + 16) = v12;
  *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_bundleManagerReadingTask) = 0;
  v26 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0);
  (*(*(v27 - 8) + 56))(v4 + v26, 1, 1, v27);
  *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_saliencyRankedBundles) = v20;
  *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_guaranteedBundles) = MEMORY[0x1E69E7CD0];
  v28 = a1 + *(type metadata accessor for SaliencyStreamConfiguration() + 32);
  v29 = v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration;
  v30 = *(v28 + 48);
  *(v29 + 32) = *(v28 + 32);
  *(v29 + 48) = v30;
  *(v29 + 64) = *(v28 + 64);
  v31 = *(v28 + 16);
  *v29 = *v28;
  *(v29 + 16) = v31;
  v37 = *(v29 + 41);
  BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter(v36);
  sub_1D8788F40(v36, v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_stillRanker);
  v37 = *(v29 + 42);
  BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter(v36);
  sub_1D8788F40(v36, v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker);
  v32 = sub_1D8B15EA0();
  (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = a2;
  v34[5] = a3;
  v34[6] = v33;
  sub_1D8B070E8(0, 0, v10, 0, 0, &unk_1D8B25FF0, v34);

  sub_1D88C7D84(a1, type metadata accessor for SaliencyStreamConfiguration);
  sub_1D87A14E4(v10, &unk_1ECA675E0);
  return v4;
}

uint64_t sub_1D88C267C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D886553C;

  return sub_1D889E0C0(a1, v1);
}

id sub_1D88C2718(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D88C273C(uint64_t a1, void *a2, double a3)
{
  v6 = a2;
  v13 = a2;
  v14 = 0;
  Width = CVPixelBufferGetWidth(v6);
  Height = CVPixelBufferGetHeight(v6);
  v17 = 0;
  v18 = 1;
  v19 = a3;
  v20 = 1;
  v21 = 0;
  v22 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v23 = _Q0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64868);
  swift_allocObject();
  return sub_1D889EA3C(a1, &v13);
}

uint64_t sub_1D88C27FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  sub_1D88C5438(a1, v73);
  sub_1D88C5438(v73, &v74);
  v14 = v74;
  v15 = v75;
  v88 = v76;
  v89 = v77;
  v16 = v78;
  v86 = v80;
  v87 = v81;
  v17 = v82;
  v18 = v83;
  *(v85 + 7) = *&v84[7];
  v85[0] = *v84;
  if (v79 != 1 || *(a2 + 8))
  {
    sub_1D88C53E4();
    swift_allocError();
    *v19 = xmmword_1D8B23E20;
    *(v19 + 16) = 3;
    return swift_willThrow();
  }

  v21 = *a2;
  sub_1D88C5530(v73, v71);
  sub_1D888406C(a2, v71);
  Width = CVPixelBufferGetWidth(v21);
  Height = CVPixelBufferGetHeight(v21);
  v90.origin.x = a4;
  v90.origin.y = a5;
  v90.size.width = a6;
  v90.size.height = a7;
  v24 = 0.0;
  if (CGRectIsEmpty(v90))
  {
    v25 = 0.0;
  }

  else
  {
    v25 = round(Width * a4);
    v26 = round(Width * 0.5 * a6);
    Width = v26 + v26;
    v24 = round(Height * a5);
    v27 = round(Height * 0.5 * a7);
    Height = v27 + v27;
  }

  v91.origin.x = v25;
  v91.origin.y = v24;
  v91.size.width = Width;
  v91.size.height = Height;
  v28 = CGRectGetWidth(v91);
  v92.origin.x = v25;
  v92.origin.y = v24;
  v92.size.width = Width;
  v92.size.height = Height;
  v29 = CGRectGetHeight(v92);
  v30 = v16;
  if (v28 > v16 || v29 > v30)
  {
    v32 = v30 / v28;
    v33 = v30 / v29;
    if (v33 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v33;
    }

    v35 = v29;
    v28 = CGRound(v28 * v34);
    v29 = CGRound(v35 * v34);
  }

  if (v28 <= -9.22337204e18)
  {
    goto LABEL_48;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_50;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v49 = v18;
  if (v29 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v36 = v28;
  v37 = v29;
  v48 = a3;
  if (v49)
  {
    if (!v17)
    {
      v39 = v28;
      v36 = v29;
      PixelFormatType = v14;
      if ((v15 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_46;
    }

    v38 = *(a2 + 32);
  }

  else
  {
    v38 = *(a2 + 32);
    if (v17 > 8)
    {
      goto LABEL_33;
    }

    if (((1 << v17) & 0x18) != 0)
    {
      v38 = v38 + -3.14159265;
      goto LABEL_34;
    }

    if (((1 << v17) & 0xC0) != 0)
    {
      v38 = v38 + -1.57079633;
      goto LABEL_34;
    }

    if (((1 << v17) & 0x120) != 0)
    {
      v38 = v38 + -4.71238898;
    }

    else
    {
LABEL_33:
      if (v17 - 1 >= 2)
      {
LABEL_53:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DA0);
        result = sub_1D8B16B90();
        __break(1u);
        return result;
      }
    }
  }

LABEL_34:
  v39 = v37;
  if (v38 == 1.57079633)
  {
    PixelFormatType = v14;
    if ((v15 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (v38 == 4.71238898)
    {
      v39 = v37;
    }

    else
    {
      v39 = v28;
    }

    if (v38 != 4.71238898)
    {
      v36 = v37;
    }

    PixelFormatType = v14;
    if ((v15 & 1) == 0)
    {
LABEL_36:
      if (((v36 | v39) & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_47;
    }
  }

LABEL_46:
  PixelFormatType = CVPixelBufferGetPixelFormatType(v21);
  if (((v36 | v39) & 0x8000000000000000) != 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_37:
  v41 = sub_1D8A4E020(v39, v36, PixelFormatType);
  if (v7)
  {
    sub_1D8884018(a2);
    return sub_1D88C558C(v73);
  }

  else
  {
    v42 = v41;
    sub_1D8884018(a2);
    v58 = v88;
    v59 = v89;
    v56 = v14;
    v57 = v15;
    v60 = v16;
    v61 = v25;
    v62 = v24;
    v63 = Width;
    v64 = Height;
    v65 = 1;
    v66 = v86;
    v67 = v87;
    v68 = v17;
    v69 = v49;
    *v70 = v85[0];
    *&v70[7] = *(v85 + 7);
    v55 = 0;
    result = sub_1D88C5438(&v56, &v50);
    *(&v54 + 1) = v42;
    v43 = v55;
    v72 = v55;
    v44 = v53;
    v71[2] = v52;
    v71[3] = v53;
    v46 = v50;
    v45 = v51;
    v71[0] = v50;
    v71[1] = v51;
    v47 = v54;
    v71[4] = v54;
    *(v48 + 32) = v52;
    *(v48 + 48) = v44;
    *(v48 + 64) = v47;
    *(v48 + 80) = v43;
    *v48 = v46;
    *(v48 + 16) = v45;
  }

  return result;
}

uint64_t sub_1D88C2CB8(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v100 = a3;
  v98 = a4;
  v99 = a5;
  v115 = a1;
  v7 = type metadata accessor for CVProcessorTaskDescriptor(0);
  *&v118 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v120 = (&v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E30);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v110 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v96 - v12;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D70);
  v104 = *(v108 - 1);
  v13 = MEMORY[0x1EEE9AC00](v108);
  v107 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v97 = &v96 - v17;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63368);
  v106 = *(v111 - 8);
  v18 = MEMORY[0x1EEE9AC00](v111);
  v105 = (&v96 - v19);
  v20 = *(a2 + 6);
  v21 = a2[3];
  v126 = a2[2];
  v127 = v21;
  v22 = a2[5];
  v128 = a2[4];
  v129 = v22;
  v23 = a2[1];
  v124 = *a2;
  v125 = v23;
  v24 = *(v5 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_processors);
  v114 = *(v24 + 16);
  v102 = v5;
  if (v114)
  {
    v96 = v7;
    v113 = (v24 + 32);

    v25 = 0;
    v26 = MEMORY[0x1E69E7CC8];
    v112 = v24;
    do
    {
      if (v25 >= *(v24 + 16))
      {
        goto LABEL_49;
      }

      v116 = v25;
      sub_1D87C1470(&v113[5 * v25], v123);
      v28 = *&v123[24];
      v29 = *&v123[32];
      __swift_project_boxed_opaque_existential_1(v123, *&v123[24]);
      v30 = (*(v29 + 16))(v115, v28, v29);
      if (v30)
      {
        v31 = v30;
        *&v119 = *(v30 + 16);
        if (v119)
        {
          v32 = 0;
          v117 = (v30 + ((*(v118 + 80) + 32) & ~*(v118 + 80)));
          do
          {
            if (v32 >= *(v31 + 16))
            {
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
LABEL_52:
              sub_1D8B16C30();
              __break(1u);
LABEL_53:
              LODWORD(v95) = 0;
              v94 = 1585;
              result = sub_1D8B168C0();
              __break(1u);
              return result;
            }

            v34 = *(v118 + 72);
            v35 = v120;
            sub_1D88C7D1C(v117 + v34 * v32, v120, type metadata accessor for CVProcessorTaskDescriptor);
            sub_1D87C1470(v123, v122);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v121 = v26;
            v38 = sub_1D87F0040(v35);
            v39 = v26[2];
            v40 = (v37 & 1) == 0;
            v41 = v39 + v40;
            if (__OFADD__(v39, v40))
            {
              goto LABEL_47;
            }

            v42 = v37;
            if (v26[3] >= v41)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v26 = *v121;
                if (v37)
                {
                  goto LABEL_9;
                }
              }

              else
              {
                sub_1D8968A94();
                v26 = *v121;
                if (v42)
                {
                  goto LABEL_9;
                }
              }
            }

            else
            {
              sub_1D897085C(v41, isUniquelyReferenced_nonNull_native);
              v43 = sub_1D87F0040(v120);
              if ((v42 & 1) != (v44 & 1))
              {
                goto LABEL_52;
              }

              v38 = v43;
              v26 = *v121;
              if (v42)
              {
LABEL_9:
                v33 = v26[7] + 40 * v38;
                __swift_destroy_boxed_opaque_existential_1(v33);
                sub_1D8788F40(v122, v33);
                sub_1D88C7D84(v120, type metadata accessor for CVProcessorTaskDescriptor);
                goto LABEL_10;
              }
            }

            v26[(v38 >> 6) + 8] |= 1 << v38;
            v45 = v120;
            sub_1D88C7D1C(v120, v26[6] + v38 * v34, type metadata accessor for CVProcessorTaskDescriptor);
            sub_1D8788F40(v122, v26[7] + 40 * v38);
            sub_1D88C7D84(v45, type metadata accessor for CVProcessorTaskDescriptor);
            v46 = v26[2];
            v47 = __OFADD__(v46, 1);
            v48 = v46 + 1;
            if (v47)
            {
              goto LABEL_48;
            }

            v26[2] = v48;
LABEL_10:
            ++v32;
          }

          while (v119 != v32);
        }

        v24 = v112;
      }

      v27 = (v116 + 1);
      __swift_destroy_boxed_opaque_existential_1(v123);
      v25 = v27;
    }

    while (v27 != v114);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC8];
  }

  MEMORY[0x1EEE9AC00](v18);
  v94 = v49;
  v95 = &v124;
  v50 = v101;
  v112 = sub_1D89163D8(sub_1D88C4EF4, (&v96 - 4), v26);
  v51 = v26[2];
  if (v51)
  {
    v120 = v50;
    v52 = sub_1D87F3884(v51, 0);
    v53 = sub_1D881748C(v123, v52 + ((*(v118 + 80) + 32) & ~*(v118 + 80)), v51, v26);

    sub_1D87977A0();
    if (v53 != v51)
    {
      goto LABEL_51;
    }

    v50 = v120;
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
  }

  v130[2] = v126;
  v130[3] = v127;
  v130[4] = v128;
  v130[5] = v129;
  v130[0] = v124;
  v130[1] = v125;
  v54 = sub_1D88B2A94(v52, v130, v100 | ((HIDWORD(v100) & 1) << 32));
  v101 = v50;
  if (v50)
  {
  }

  else
  {
    v56 = v54;

    v116 = *(v56 + 16);
    if (v116)
    {
      v57 = 0;
      v114 = (v104 + 56);
      v117 = MEMORY[0x1E69E7CC0];
      v113 = (v104 + 48);
      v58 = v111;
      v115 = v56;
      while (v57 < *(v56 + 16))
      {
        v60 = v56 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        v61 = *(v106 + 72);
        v120 = v57;
        v62 = v105;
        sub_1D87A0E38(v60 + v61 * v57, v105, &qword_1ECA63368);
        v63 = v62 + *(v58 + 48);
        v64 = *(v63 + 4);
        *&v123[48] = *(v63 + 3);
        *&v123[64] = v64;
        *&v123[80] = *(v63 + 10);
        v65 = *(v63 + 2);
        *&v123[16] = *(v63 + 1);
        *&v123[32] = v65;
        *v123 = *v63;
        if (!v26[2])
        {
          goto LABEL_53;
        }

        v66 = v62 + *(v58 + 64);
        v67 = *v66;
        v118 = *(v66 + 1);
        v119 = v67;
        v68 = v66[32];
        v69 = sub_1D87F0040(v62);
        if ((v70 & 1) == 0)
        {
          goto LABEL_53;
        }

        sub_1D87C1470(v26[7] + 40 * v69, v121);
        sub_1D8788F40(v121, v122);
        v71 = v108;
        v72 = v108[12];
        v73 = v110;
        v74 = v110 + v108[16];
        v75 = v110 + v108[20];
        sub_1D8788F40(v122, v110);
        sub_1D88C7D1C(v62, v73 + v72, type metadata accessor for CVProcessorTaskDescriptor);
        v76 = *&v123[48];
        *(v74 + 32) = *&v123[32];
        *(v74 + 48) = v76;
        *(v74 + 64) = *&v123[64];
        *(v74 + 80) = *&v123[80];
        v77 = *&v123[16];
        *v74 = *v123;
        *(v74 + 16) = v77;
        v78 = v118;
        *v75 = v119;
        *(v75 + 16) = v78;
        *(v75 + 32) = v68;
        (*v114)(v73, 0, 1, v71);
        v79 = v109;
        sub_1D881F6FC(v73, v109, &unk_1ECA67E30);
        sub_1D881F59C(v123, v122);
        sub_1D87A14E4(v62, &qword_1ECA63368);
        if ((*v113)(v79, 1, v71) == 1)
        {
          sub_1D87A14E4(v79, &unk_1ECA67E30);
          v58 = v111;
          v56 = v115;
          v59 = v120;
        }

        else
        {
          v80 = v79;
          v81 = v103;
          sub_1D881F6FC(v80, v103, &unk_1ECA67D70);
          sub_1D881F6FC(v81, v107, &unk_1ECA67D70);
          v82 = v117;
          v83 = swift_isUniquelyReferenced_nonNull_native();
          v56 = v115;
          if ((v83 & 1) == 0)
          {
            v82 = sub_1D87C7F08(0, v82[2] + 1, 1, v82);
          }

          v58 = v111;
          v59 = v120;
          v85 = v82[2];
          v84 = v82[3];
          if (v85 >= v84 >> 1)
          {
            v82 = sub_1D87C7F08(v84 > 1, v85 + 1, 1, v82);
          }

          v82[2] = v85 + 1;
          v86 = (*(v104 + 80) + 32) & ~*(v104 + 80);
          v117 = v82;
          sub_1D881F6FC(v107, v82 + v86 + *(v104 + 72) * v85, &unk_1ECA67D70);
        }

        v57 = (v59 + 1);
        if (v116 == v57)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_50;
    }

    v117 = MEMORY[0x1E69E7CC0];
LABEL_45:

    *&v121[23] = v126;
    *&v121[39] = v127;
    *&v121[55] = v128;
    *&v121[71] = v129;
    *&v121[7] = v125;
    v87 = sub_1D8B15EA0();
    v88 = v97;
    (*(*(v87 - 8) + 56))(v97, 1, 1, v87);
    *(&v122[2] + 9) = *&v121[32];
    *(&v122[3] + 9) = *&v121[48];
    *(&v122[4] + 9) = *&v121[64];
    *(v122 + 9) = *v121;
    *&v122[0] = 0;
    BYTE8(v122[0]) = 3;
    *(&v122[5] + 1) = *&v121[79];
    *(&v122[1] + 9) = *&v121[16];
    v89 = swift_allocObject();
    *(v89 + 32) = v20;
    *(v89 + 88) = v122[2];
    v90 = v122[4];
    *(v89 + 104) = v122[3];
    *(v89 + 120) = v90;
    *(v89 + 136) = v122[5];
    v91 = v122[1];
    *(v89 + 56) = v122[0];
    *(v89 + 16) = 0;
    *(v89 + 24) = 0;
    v92 = v117;
    *(v89 + 40) = v102;
    *(v89 + 48) = v92;
    *(v89 + 72) = v91;
    v93 = v99;
    *(v89 + 152) = v98;
    *(v89 + 160) = v93;

    sub_1D888406C(v122, v123);

    sub_1D89AEF08(0, 0, v88, &unk_1D8B25DE8, v89);
    *&v123[41] = *&v121[32];
    *&v123[57] = *&v121[48];
    *&v123[73] = *&v121[64];
    *&v123[9] = *v121;
    *v123 = 0;
    v123[8] = 3;
    *&v123[88] = *&v121[79];
    *&v123[25] = *&v121[16];
    sub_1D8884018(v123);

    return v112;
  }
}

unint64_t sub_1D88C3924()
{
  result = qword_1EE0E5D10;
  if (!qword_1EE0E5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E5D10);
  }

  return result;
}

void sub_1D88C3978(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

unint64_t sub_1D88C39A4()
{
  result = qword_1ECA64878;
  if (!qword_1ECA64878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64878);
  }

  return result;
}

unint64_t sub_1D88C3A54(uint64_t a1)
{
  result = sub_1D88C3A7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D88C3A7C()
{
  result = qword_1EE0E5D18[0];
  if (!qword_1EE0E5D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E5D18);
  }

  return result;
}

uint64_t dispatch thunk of SaliencyStream.refine(pixelBuffer:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v12 = (*(a3 + 8) + **(a3 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D886553C;
  v10.n128_f64[0] = a4;

  return v12(a1, a2, a3, v10);
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore13SaliencyErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D88C3C68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D88C3CB0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t dispatch thunk of SaliencyStreamStillOverlaySupporting.getHighQualityStillOverlaySupportData()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D886553C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SaliencyStreamInternalMonitorable.makeBundleManagerOutputStream(bufferingPolicyOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D886553C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SaliencyStreamInternalMonitorable.makeBundleSelectorOutputStream(bufferingPolicyOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D886553C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SaliencyStreamInternalMonitorable.makeActionPredictorOutputStream(bufferingPolicyOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D886553C;

  return v11(a1, a2, a3, a4);
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

uint64_t sub_1D88C4200(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 96))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D88C4254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D88C42C0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1D8B151E0();
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

uint64_t dispatch thunk of StillImageMediaManifest.ingest()()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D886553C;

  return v4();
}

uint64_t dispatch thunk of StillImageMediaManifest.service(requests:)(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D886553C;

  return v6(a1);
}

uint64_t dispatch thunk of StillImageMediaManifest.safeAreaFrame(maxDimension:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 248) + **(*v2 + 248));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D886553C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of SaliencyStreamActionable.executeAction<A, B>(_:pill:executionParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 8) + **(a10 + 8));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_1D886553C;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of SaliencyStreamActionable.actionPinFromUserSelection(_:excludedIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v23 = (*(a4 + 16) + **(a4 + 16));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D886553C;
  v18.n128_f64[0] = a5;
  v19.n128_f64[0] = a6;
  v20.n128_f64[0] = a7;
  v21.n128_f64[0] = a8;

  return v23(a1, a2, a3, a4, v18, v19, v20, v21);
}

uint64_t type metadata accessor for InProcessStream.Configuration()
{
  result = qword_1EE0E73B8;
  if (!qword_1EE0E73B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D88C4B24()
{
  result = sub_1D8893314();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SaliencyStreamConfiguration();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D88C4C2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D886553C;

  return sub_1D8A4247C(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroy_92Tm()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 96);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      }

      goto LABEL_10;
    }

LABEL_8:
    sub_1D87A1598(*(v0 + 56), *(v0 + 64));

    goto LABEL_10;
  }

  if (!*(v0 + 96))
  {

    goto LABEL_10;
  }

  if (v1 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D88C4D80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D886553C;

  return sub_1D8A425AC(a1, v4, v5, v1 + 32);
}

uint64_t sub_1D88C4E40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 60);
  v8 = *(v0 + 64);
  v9 = *(v0 + 120);
  v13[2] = *(v0 + 104);
  v13[3] = v9;
  v10 = *(v0 + 152);
  v13[4] = *(v0 + 136);
  v13[5] = v10;
  v11 = *(v0 + 88);
  v13[0] = *(v0 + 72);
  v13[1] = v11;
  return sub_1D88AF01C(v1, v2, v4, v5, v6, v8, v13, v3, v7);
}

uint64_t sub_1D88C4EA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 120);
  v4 = *(v1 + 72);
  v8[2] = *(v1 + 56);
  v8[3] = v4;
  v5 = *(v1 + 104);
  v8[4] = *(v1 + 88);
  v8[5] = v5;
  v6 = *(v1 + 40);
  v8[0] = *(v1 + 24);
  v8[1] = v6;
  return sub_1D88B1CC4(a1, v2, v8, v3);
}

uint64_t sub_1D88C4EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v5 = v3[5];
  v8[4] = v3[4];
  v8[5] = v5;
  v6 = v3[1];
  v8[0] = *v3;
  v8[1] = v6;
  return sub_1D88B279C(a1, v8, a2);
}

uint64_t sub_1D88C4F44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 152);
  v10 = *(v1 + 160);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D8864FBC;

  return sub_1D88C0C04(a1, v4, v5, v7, v8, (v1 + 56), v9, v10, v6);
}

uint64_t sub_1D88C5038(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v12 = *(v2 + 56);
  v11 = *(v2 + 64);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D886553C;

  return sub_1D88C0DFC(a1, a2, v6, v7, v8, v10, v12, v11, v9);
}

void sub_1D88C5134()
{
  type metadata accessor for CVProcessorTaskDescriptor(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D886553C;

  JUMPOUT(0x1D88C0F00);
}

uint64_t sub_1D88C52C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D88B7A58(a1, v4);
}

uint64_t sub_1D88C5380()
{
  v1 = *(type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1D8A4896C(v2, v3, v4);
}

unint64_t sub_1D88C53E4()
{
  result = qword_1ECA64950;
  if (!qword_1ECA64950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64950);
  }

  return result;
}

uint64_t sub_1D88C54B8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 44);
  v8 = v4[3];
  v12[2] = v4[2];
  v12[3] = v8;
  v9 = v4[5];
  v12[4] = v4[4];
  v12[5] = v9;
  v10 = v4[1];
  v12[0] = *v4;
  v12[1] = v10;
  return sub_1D88B66BC(a1, a2, v3, v12, v5, v6 | (v7 << 32));
}

id sub_1D88C5510(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_1D88C5520(id a1)
{
  if (a1 >= 2)
  {
  }
}

void sub_1D88C55E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a2 + 8))
  {
    sub_1D888406C(a2, v156);
    v7 = sub_1D8B151C0();
    v8 = sub_1D8B16210();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      sub_1D8884018(a2);
      *(v9 + 4) = *(a2 + 48);
      _os_log_impl(&dword_1D8783000, v7, v8, "No pixelbuffer in frame %f", v9, 0xCu);
      MEMORY[0x1DA721330](v9, -1, -1);
    }

    else
    {

      sub_1D8884018(a2);
    }

LABEL_8:
    v19 = 0uLL;
    v20 = 1;
    v21 = 0uLL;
LABEL_13:
    *a4 = v19;
    *(a4 + 16) = v21;
    *(a4 + 32) = v20;
    return;
  }

  v11 = *a2;
  sub_1D88C5438(a1, v158);
  sub_1D88C5438(v158, v162);
  v13 = v165;
  v12 = v166;
  v14 = v167;
  v15 = v168;
  v16 = v169;
  v17 = v170;
  v18 = *(a1 + 72);
  v157 = v18;
  if (!v18)
  {
    sub_1D888406C(a2, v156);
    sub_1D88C5530(v158, v156);
    v22 = sub_1D8B151C0();
    v23 = sub_1D8B16210();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D8783000, v22, v23, "No pixelbuffer in storage!", v24, 2u);
      MEMORY[0x1DA721330](v24, -1, -1);
    }

    sub_1D8884018(a2);
    sub_1D88C558C(v158);
    goto LABEL_12;
  }

  v129 = v163;
  v135 = v164;
  v131 = v171;
  type metadata accessor for CVBuffer(0);
  sub_1D888406C(a2, v156);
  sub_1D88C5530(v158, v156);
  sub_1D87A0E38(&v157, v156, &qword_1ECA64970);
  sub_1D88C7AAC(&unk_1EE0E37A0, type metadata accessor for CVBuffer);
  pixelBuffer = v11;
  if (sub_1D8B13D60())
  {
    sub_1D87A14E4(&v157, &qword_1ECA64970);
    sub_1D88C558C(v158);
    sub_1D8884018(a2);
LABEL_12:
    v19 = 0uLL;
    v20 = 1;
    v21 = 0uLL;
    goto LABEL_13;
  }

  v25 = *(a1 + 80);
  v26 = MEMORY[0x1E695F050];
  if (v25)
  {
    v156[0] = 0.0;
    memset(v161, 0, 32);
    v161[32] = 1;
    v27 = *MEMORY[0x1E695F050];
    v28 = *(MEMORY[0x1E695F050] + 8);
    v29 = *(MEMORY[0x1E695F050] + 16);
    v30 = *(MEMORY[0x1E695F050] + 24);
    v31 = MEMORY[0x1E695F050];
    v32 = v25;
    sub_1D8A3D48C(v32, v18, v156, v161, v27, v28, v29, v30);
    if (v4)
    {
      sub_1D8884018(a2);
      sub_1D88C558C(v158);
      sub_1D87A14E4(&v157, &qword_1ECA64970);

      return;
    }

    v26 = v31;
  }

  v33 = 0.0;
  if ((v17 & 1) == 0)
  {
    if (v16 != 1)
    {
      goto LABEL_26;
    }

    v34 = (a2 + 32);
    goto LABEL_25;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DA0);
    if ((a3 & 0x100000000) == 0)
    {
      if ((a3 - 1) >= 8)
      {
        sub_1D8B16B90();
        __break(1u);
        return;
      }

      v34 = (&unk_1D8B260D8 + 8 * (a3 - 1));
LABEL_25:
      v33 = *v34;
    }
  }

LABEL_26:
  v35 = 0.0;
  if (v15)
  {
    if (v15 == 1)
    {
      v36 = 0;
      v37 = *&v135;
      v35 = v13;
LABEL_47:
      v38 = pixelBuffer;
      goto LABEL_48;
    }

    v37 = 0.0;
LABEL_46:
    v36 = 1;
    v12 = 0.0;
    v14 = 0.0;
    goto LABEL_47;
  }

  v37 = v131;
  if (v131 == 0.0)
  {
    goto LABEL_46;
  }

  v38 = pixelBuffer;
  if (*&v131 != 1)
  {
    *v80.i64 = CVPixelBufferGetWidth(pixelBuffer);
    v134 = v80;
    *v81.i64 = CVPixelBufferGetHeight(pixelBuffer);
    v146 = v81;
    v82 = CGRound(*v134.i64);
    v83 = CGRound(*v146.i64);
    v84.i64[0] = 0;
    v85.f64[0] = NAN;
    v85.f64[1] = NAN;
    v128 = vnegq_f64(v85);
    v86 = CGRound(*vbslq_s8(v128, v84, v134).i64);
    v87.i64[0] = 0;
    v88 = CGRound(*vbslq_s8(v128, v87, v146).i64);
    v63 = v82 - v86;
    v62 = v83 - v88;
    v89 = v129;
    v90 = v135;
    v179.origin.x = v86;
    v179.origin.y = v88;
    v179.size.width = v63;
    v179.size.height = v62;
    Width = CGRectGetWidth(v179);
    v180.origin.x = 0.0;
    v180.origin.y = 0.0;
    v180.size.width = v129;
    v180.size.height = v135;
    if (CGRectGetWidth(v180) >= Width && (v181.origin.x = v86, v181.origin.y = v88, v181.size.width = v63, v181.size.height = v62, v92 = CGRectGetHeight(v181), v182.origin.x = 0.0, v182.origin.y = 0.0, v182.size.width = v129, v182.size.height = v135, CGRectGetHeight(v182) >= v92))
    {
      v199.origin.x = 0.0;
      v199.origin.y = 0.0;
      v199.size.width = v129;
      v199.size.height = v135;
      MidX = CGRectGetMidX(v199);
      v200.origin.x = 0.0;
      v200.origin.y = 0.0;
      v200.size.width = v129;
      v200.size.height = v135;
      MidY = CGRectGetMidY(v200);
      v37 = 0.0;
      x = MidX - v63 * 0.5;
      y = MidY - v62 * 0.5;
      v36 = 1;
      v35 = 0.0;
      v12 = 0.0;
      v14 = 0.0;
    }

    else
    {
      v183.origin.x = v86;
      v183.origin.y = v88;
      v183.size.width = v63;
      v183.size.height = v62;
      v93 = CGRectGetWidth(v183);
      v184.origin.x = v86;
      v184.origin.y = v88;
      v184.size.width = v63;
      v184.size.height = v62;
      Height = CGRectGetHeight(v184);
      v37 = 0.0;
      v95 = v93 / Height;
      if (v33 == 4.71238898 || v33 == 1.57079633)
      {
        v95 = 1.0 / v95;
      }

      v97 = v89 / v90 < v95;
      v98 = round(v95 * v89 / (v89 / v90));
      v99 = round(v89 / v90 * v90 / v95);
      if (v97)
      {
        v62 = v99;
      }

      else
      {
        v62 = v135;
      }

      if (v97)
      {
        v63 = v129;
      }

      else
      {
        v63 = v98;
      }

      x = round((v89 - v63) * 0.5);
      y = round((v90 - v62) * 0.5);
      v36 = 1;
      v12 = 0.0;
      v14 = 0.0;
      v35 = 0.0;
    }

    goto LABEL_49;
  }

  v39 = v33 * 180.0 / 3.14159265;
  v40 = v39 == 90.0;
  if (v39 == 270.0)
  {
    v40 = 1;
  }

  v41 = !v40;
  v42 = v135;
  if (v40)
  {
    v43 = v135;
  }

  else
  {
    v43 = v129;
  }

  if (!v41)
  {
    v42 = v129;
  }

  v44 = v43 / v42;
  *v45.i64 = CVPixelBufferGetWidth(pixelBuffer);
  v136 = v45;
  *v46.i64 = CVPixelBufferGetHeight(pixelBuffer);
  v144 = v46;
  v47 = CGRound(*v136.i64);
  v48 = CGRound(*v144.i64);
  v49.i64[0] = 0;
  v50.f64[0] = NAN;
  v50.f64[1] = NAN;
  v132 = vnegq_f64(v50);
  v51 = CGRound(*vbslq_s8(v132, v49, v136).i64);
  v52.i64[0] = 0;
  v53 = CGRound(*vbslq_s8(v132, v52, v144).i64);
  v54 = v47 - v51;
  v55 = v48 - v53;
  v56 = (v47 - v51) / (v48 - v53);
  v57 = v56 < v44;
  v58 = round((v48 - v53) * v56 / v44);
  v59 = round(v44 * (v47 - v51) / v56);
  if (v57)
  {
    v14 = v58;
  }

  else
  {
    v14 = v48 - v53;
  }

  if (v57)
  {
    v12 = v47 - v51;
  }

  else
  {
    v12 = v59;
  }

  v36 = 0;
  v35 = v53 + round((v55 - v14) * 0.5);
  v37 = v51 + round((v54 - v12) * 0.5);
LABEL_48:
  x = v26->origin.x;
  y = v26->origin.y;
  v63 = v26->size.width;
  v62 = v26->size.height;
LABEL_49:
  rect = v35;
  *v159 = v37;
  *&v159[1] = v35;
  *&v159[2] = v12;
  *&v159[3] = v14;
  v160 = v36;
  v156[0] = v33;
  v64 = v37;
  sub_1D8A3D48C(v38, v18, v156, v159, x, y, v63, v62);
  if (!v4)
  {
    if ((v36 & 1) == 0)
    {
      *v65.i64 = CVPixelBufferGetWidth(v38);
      v145 = v65;
      *v66.i64 = CVPixelBufferGetHeight(v38);
      v148 = v66;
      v67 = CGRound(*v145.i64);
      v68 = CGRound(*v148.i64);
      v69.i64[0] = 0;
      v70.f64[0] = NAN;
      v70.f64[1] = NAN;
      pixelBuffera = vnegq_f64(v70);
      v71 = CGRound(*vbslq_s8(pixelBuffera, v69, v145).i64);
      v72.i64[0] = 0;
      v73 = CGRound(*vbslq_s8(pixelBuffera, v72, v148).i64);
      v74 = v67 - v71;
      v75 = v68 - v73;
      v173.origin.x = v71;
      v173.origin.y = v73;
      v173.size.width = v74;
      v173.size.height = v75;
      v145.i64[0] = CGRectGetWidth(v173);
      *pixelBuffera.i64 = rect - v73;
      v174.origin.x = v71;
      v174.origin.y = v73;
      v174.size.width = v74;
      v174.size.height = v75;
      v137 = CGRectGetHeight(v174);
      v175.origin.x = v64;
      v175.origin.y = rect;
      v175.size.width = v12;
      v175.size.height = v14;
      v133 = CGRectGetWidth(v175);
      v176.origin.x = v71;
      v176.origin.y = v73;
      v176.size.width = v74;
      v176.size.height = v75;
      v130 = CGRectGetWidth(v176);
      v177.origin.x = v64;
      v177.origin.y = rect;
      v177.size.width = v12;
      v177.size.height = v14;
      recta = CGRectGetHeight(v177);
      v178.origin.x = v71;
      v178.origin.y = v73;
      v178.size.width = v74;
      v178.size.height = v75;
      v127 = CGRectGetHeight(v178);
      sub_1D8884018(a2);
      sub_1D87A14E4(&v157, &qword_1ECA64970);
      sub_1D88C558C(v158);
      v20 = 0;
      v77.f64[0] = v130;
      v76.f64[0] = v133;
      v78.f64[0] = v64 - v71;
      v76.f64[1] = recta;
      *&v78.f64[1] = pixelBuffera.i64[0];
      v77.f64[1] = v127;
      *&v79.f64[0] = v145.i64[0];
      v79.f64[1] = v137;
      v19 = vdivq_f64(v78, v79);
      v21 = vdivq_f64(v76, v77);
      goto LABEL_13;
    }

    v172.origin.x = x;
    v172.origin.y = y;
    v172.size.width = v63;
    v172.size.height = v62;
    if (!CGRectEqualToRect(v172, *v26))
    {
      *v100.i64 = CVPixelBufferGetWidth(v18);
      v149 = v100;
      *v101.i64 = CVPixelBufferGetHeight(v18);
      rectb = v101;
      v102 = CGRound(*v149.i64);
      v103 = CGRound(*rectb.i64);
      v104.i64[0] = 0;
      v105.f64[0] = NAN;
      v105.f64[1] = NAN;
      v147 = vnegq_f64(v105);
      v106 = CGRound(*vbslq_s8(v147, v104, v149).i64);
      v107.i64[0] = 0;
      v108 = CGRound(*vbslq_s8(v147, v107, rectb).i64);
      *v147.i64 = v33;
      v109 = v108;
      *rectb.i64 = v102 - v106;
      *v149.i64 = v103 - v108;
      pixelBufferb = v106;
      v185.origin.x = x;
      v185.origin.y = y;
      v185.size.width = v63;
      v185.size.height = v62;
      v110 = (v106 - x) / CGRectGetWidth(v185);
      v186.origin.x = x;
      v186.origin.y = y;
      v186.size.width = v63;
      v186.size.height = v62;
      v111 = (v109 - y) / CGRectGetHeight(v186);
      v187.origin.x = v106;
      v187.origin.y = v109;
      *&v187.size.width = rectb.i64[0];
      *&v187.size.height = v149.i64[0];
      v112 = CGRectGetWidth(v187);
      v188.origin.x = x;
      v188.origin.y = y;
      v188.size.width = v63;
      v188.size.height = v62;
      v113 = v112 / CGRectGetWidth(v188);
      v189.origin.x = pixelBufferb;
      v189.origin.y = v109;
      *&v189.size.width = rectb.i64[0];
      *&v189.size.height = v149.i64[0];
      v114 = CGRectGetHeight(v189);
      v190.origin.x = x;
      v190.origin.y = y;
      v190.size.width = v63;
      v190.size.height = v62;
      v115 = v114 / CGRectGetHeight(v190);
      v191.origin.x = v110;
      v191.origin.y = v111;
      v191.size.width = v113;
      v191.size.height = v115;
      rectb.i64[0] = CGRectGetMinX(v191);
      v192.origin.x = v110;
      v192.origin.y = v111;
      v192.size.width = v113;
      v192.size.height = v115;
      v149.i64[0] = CGRectGetMinY(v192);
      v193.origin.x = v110;
      v193.origin.y = v111;
      v193.size.width = v113;
      v193.size.height = v115;
      pixelBufferc = CGRectGetMaxX(v193);
      v194.origin.x = v110;
      v194.origin.y = v111;
      v194.size.width = v113;
      v194.size.height = v115;
      MinY = CGRectGetMinY(v194);
      v195.origin.x = v110;
      v195.origin.y = v111;
      v195.size.width = v113;
      v195.size.height = v115;
      MinX = CGRectGetMinX(v195);
      v196.origin.x = v110;
      v196.origin.y = v111;
      v196.size.width = v113;
      v196.size.height = v115;
      MaxY = CGRectGetMaxY(v196);
      v197.origin.x = v110;
      v197.origin.y = v111;
      v197.size.width = v113;
      v197.size.height = v115;
      MaxX = CGRectGetMaxX(v197);
      v198.origin.x = v110;
      v198.origin.y = v111;
      v198.size.width = v113;
      v198.size.height = v115;
      v120 = CGRectGetMaxY(v198);
      v156[0] = *rectb.i64;
      v156[1] = *v149.i64;
      v156[2] = pixelBufferc;
      v156[3] = MinY;
      v156[4] = MinX;
      v156[5] = MaxY;
      v156[6] = MaxX;
      v156[7] = v120;
      v155 = v147.i64[0];
      v154 = 0;
      sub_1D8A5A9D8(&v155, &v154, v153);
      Corners.bounds.getter();
      pixelBufferd = v122;
      v147.i64[0] = v121;
      v149.i64[0] = v124;
      rectb.i64[0] = v123;
      sub_1D8884018(a2);
      sub_1D88C558C(v158);
      sub_1D87A14E4(&v157, &qword_1ECA64970);
      v21.f64[0] = pixelBufferd;
      *&v19.f64[0] = v147.i64[0];
      v20 = 0;
      *&v21.f64[1] = v149.i64[0];
      *&v19.f64[1] = rectb.i64[0];
      goto LABEL_13;
    }

    sub_1D8884018(a2);
    sub_1D88C558C(v158);
    sub_1D87A14E4(&v157, &qword_1ECA64970);
    goto LABEL_8;
  }

  sub_1D8884018(a2);
  sub_1D88C558C(v158);
  sub_1D87A14E4(&v157, &qword_1ECA64970);
}

uint64_t sub_1D88C622C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 8))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0uLL;
    v7 = 1;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
LABEL_7:
    *a3 = v6;
    *(a3 + 16) = v8;
    *(a3 + 32) = v9;
    *(a3 + 48) = v10;
    *(a3 + 64) = v4;
    *(a3 + 72) = v7;
    *(a3 + 80) = v5;
    return result;
  }

  v12 = a3;
  v7 = *a2;
  v13 = result;
  sub_1D88C5438(result, v37);
  result = sub_1D88C5438(v37, &v38);
  if (!v40 || v40 == 1)
  {
    goto LABEL_5;
  }

  v43 = v39;
  v44 = v38;
  v14 = v41;
  v15 = v42;
  sub_1D88C5438(v37, v35);
  sub_1D88C5510(v36);
  sub_1D88C5530(v37, &v29);
  sub_1D888406C(a2, &v29);
  sub_1D88C5530(v37, &v29);
  sub_1D888406C(a2, &v29);
  Width = CVPixelBufferGetWidth(v7);
  Height = CVPixelBufferGetHeight(v7);
  v18 = *(a2 + 32);
  v19 = *(a2 + 56);
  if (v15 != 1)
  {
    v20 = v13;
    if (v14 <= 8)
    {
      if (((1 << v14) & 0x18) != 0)
      {
        v18 = v18 + -3.14159265;
        goto LABEL_19;
      }

      if (((1 << v14) & 0xC0) != 0)
      {
        v18 = v18 + -1.57079633;
        goto LABEL_19;
      }

      if (((1 << v14) & 0x120) != 0)
      {
        v18 = v18 + -4.71238898;
        goto LABEL_19;
      }
    }

    if (v14 - 1 >= 2)
    {
LABEL_47:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DA0);
      result = sub_1D8B16B90();
      __break(1u);
      return result;
    }

    goto LABEL_19;
  }

  v20 = v13;
  if (!v14)
  {
    v21 = Width;
    Width = Height;
    goto LABEL_25;
  }

LABEL_19:
  v21 = Height;
  if (v18 != 1.57079633)
  {
    v21 = v18 == 4.71238898 ? Height : Width;
    if (v18 != 4.71238898)
    {
      Width = Height;
    }
  }

LABEL_25:
  v22 = *(v20 + 72);
  if (v22)
  {
    v23 = v22;
    if (CVPixelBufferGetWidth(v23) == v21 && CVPixelBufferGetHeight(v23) == Width)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(v23);

      v25 = v43;
      if (PixelFormatType == v44)
      {
        v25 = 1;
      }

      if (v25 == 1)
      {
        sub_1D88C558C(v37);
        sub_1D88C558C(v37);
        sub_1D8884018(a2);
        sub_1D88C558C(v37);
        result = sub_1D8884018(a2);
LABEL_5:
        v4 = 0;
        v5 = 0;
        v6 = 0uLL;
        v7 = 1;
        v8 = 0uLL;
        v9 = 0uLL;
        v10 = 0uLL;
LABEL_6:
        a3 = v12;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  if ((v19 & 1) != 0 && CVPixelBufferGetWidth(v7) == v21 && CVPixelBufferGetHeight(v7) == Width)
  {
    v26 = CVPixelBufferGetPixelFormatType(v7);
    sub_1D88C558C(v37);
    v28 = v43;
    v27 = v44;
    if (v26 == v44)
    {
      v28 = 1;
    }

    if (v28 == 1)
    {
      sub_1D88C558C(v37);
      sub_1D8884018(a2);
      v34 = 0;
      result = sub_1D88C5438(v37, &v29);
      v6 = v29;
      v8 = v30;
      v9 = v31;
      v10 = v32;
      v4 = v33;
      v5 = v34;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D88C558C(v37);
    v27 = v44;
    if (v43)
    {
      v27 = CVPixelBufferGetPixelFormatType(v7);
    }
  }

  if (((Width | v21) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  v7 = sub_1D8A4E020(v21, Width, v27);
  sub_1D88C558C(v37);
  sub_1D8884018(a2);
  if (!v3)
  {
    sub_1D8884018(a2);
    v34 = 0;
    result = sub_1D88C5438(v37, &v29);
    v6 = v29;
    v8 = v30;
    v9 = v31;
    v10 = v32;
    v4 = v33;
    v5 = v34;
    goto LABEL_6;
  }

  sub_1D88C558C(v37);
  return sub_1D8884018(a2);
}

uint64_t sub_1D88C65F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64968);
  result = sub_1D8B168F0();
  v4 = result;
  v5 = 0;
  v57 = result;
  v58 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v56 = result + 64;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v60 = (v11 - 1) & v11;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(v58 + 56);
      v92 = *(*(v58 + 48) + v16);
      v18 = v17 + 88 * v16;
      v19 = *(v18 + 16);
      v65[0] = *v18;
      v65[1] = v19;
      v21 = *(v18 + 48);
      v20 = *(v18 + 64);
      v22 = *(v18 + 32);
      v67 = *(v18 + 80);
      v65[3] = v21;
      v66 = v20;
      v65[2] = v22;
      sub_1D88C5438(a2, v68);
      sub_1D88C5438(v65, &v69);
      v23 = v69;
      v24 = v70;
      v26 = v71;
      v25 = v72;
      v27 = v73;
      v28 = v74;
      v29 = v75;
      v30 = v76;
      v91 = v77;
      v55 = v78;
      v54 = v79;
      sub_1D88C5438(v68, &v80);
      if (v24 == 1)
      {
        if ((v81 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if ((v81 & 1) != 0 || v23 != v80)
      {
LABEL_31:
        sub_1D881F59C(v65, v61);
        v4 = v57;
        v37 = v92;
        goto LABEL_32;
      }

      if (!v30)
      {
        break;
      }

      if (v30 != 1)
      {
        v4 = v57;
        v37 = v92;
        if (v87 != 2 || *&v83 | v82 | *&v84 | *&v85 | *&v86)
        {
LABEL_38:
          sub_1D881F59C(v65, v61);
          goto LABEL_32;
        }

        goto LABEL_39;
      }

      if (v87 != 1 || v26 != v82)
      {
        goto LABEL_31;
      }

      v53 = v88;
      v31 = v89;
      v52 = v90;
      v32 = v86;
      v33 = v85;
      v34 = v84;
      v35 = v83;
      sub_1D881F59C(v65, v61);
      v93.origin.x = v25;
      v93.origin.y = v27;
      v93.size.width = v28;
      v93.size.height = v29;
      v94.origin.x = v35;
      v94.origin.y = v34;
      v94.size.width = v33;
      v94.size.height = v32;
      v36 = CGRectEqualToRect(v93, v94);
      v4 = v57;
      v37 = v92;
      if (v36)
      {
        if (v55)
        {
LABEL_21:
          if (v91)
          {
            if (v53)
            {
              v38 = v31;
            }

            else
            {
              v38 = 0;
            }

            if (v38 != 1)
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v53)
            {
              v51 = 0;
            }

            else
            {
              v51 = v31;
            }

            if ((v51 & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_49;
        }

LABEL_40:
        if (v91 == v53)
        {
          v50 = v31;
        }

        else
        {
          v50 = 1;
        }

        if (v50)
        {
          goto LABEL_32;
        }

LABEL_49:
        if (v54)
        {
          if (v54 == 1)
          {
            if (v52 == 1)
            {
              goto LABEL_57;
            }
          }

          else if (v52 >= 2)
          {
            type metadata accessor for CGColor(0);
            sub_1D88C7AAC(&unk_1EE0E3800, type metadata accessor for CGColor);
            if (sub_1D8B13D60())
            {
LABEL_57:
              v41 = *(a2 + 72);
              v40 = *(a2 + 80);
              sub_1D881F59C(a2, v61);
              sub_1D881F5F8(v65);
              v39 = v68;
              goto LABEL_33;
            }
          }
        }

        else if (!v52)
        {
          goto LABEL_57;
        }
      }

LABEL_32:
      v39 = v65;
      v41 = *(&v66 + 1);
      v40 = v67;
LABEL_33:
      sub_1D88C5438(v39, v64);
      result = sub_1D88C5438(v64, v61);
      *(&v62 + 1) = v41;
      v63 = v40;
      *(v56 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(v4[6] + v16) = v37;
      v42 = v4[7] + 88 * v16;
      v43 = v63;
      v45 = v61[3];
      v44 = v62;
      *(v42 + 32) = v61[2];
      *(v42 + 48) = v45;
      *(v42 + 64) = v44;
      *(v42 + 80) = v43;
      v46 = v61[1];
      *v42 = v61[0];
      *(v42 + 16) = v46;
      v47 = v4[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_60;
      }

      v4[2] = v49;
      v11 = v60;
      if (!v60)
      {
        goto LABEL_5;
      }
    }

    if (v87 || v26 != v82)
    {
      goto LABEL_31;
    }

    v4 = v57;
    v37 = v92;
    if (*&v25 != *&v83)
    {
      goto LABEL_38;
    }

LABEL_39:
    v53 = v88;
    v31 = v89;
    v52 = v90;
    sub_1D881F59C(v65, v61);
    if (v55)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_5:
  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v12)
    {
      return v4;
    }

    v15 = *(v7 + 8 * v5);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v60 = (v15 - 1) & v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1D88C6A88()
{
  v1 = *(type metadata accessor for ProcessorState(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 103) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = (v0 + v3);
  v8 = v7[3];
  v12[2] = v7[2];
  v12[3] = v8;
  v9 = v7[5];
  v12[4] = v7[4];
  v12[5] = v9;
  v10 = v7[1];
  v12[0] = *v7;
  v12[1] = v10;
  return sub_1D88B1F64(v0 + v2, v12, v5, v6);
}

uint64_t sub_1D88C6B44(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = v4[3];
  v10[2] = v4[2];
  v10[3] = v6;
  v7 = v4[5];
  v10[4] = v4[4];
  v10[5] = v7;
  v8 = v4[1];
  v10[0] = *v4;
  v10[1] = v8;
  return sub_1D88B0600(a1, v3, v10, v5, v2) & 1;
}

uint64_t sub_1D88C6B90(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64980) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D88A69FC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D88C6CBC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64910) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D88A7364(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D88C6DE8(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(*(v6 - 8) + 64);
  v8 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);
  v9 = *(type metadata accessor for CVBundle(0) - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D886553C;

  return sub_1D88B7948(a1, v11, v12, v1 + v8, v1 + v10, v6, v5);
}

uint64_t sub_1D88C6F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D8893A1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D88C700C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64908) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D88C09A4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D88C7124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D88C718C()
{
  v2 = *(type metadata accessor for BundleSelector.Output(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D886553C;

  return sub_1D884E398(v4, v0 + v3);
}

uint64_t sub_1D88C7264(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D886553C;

  return sub_1D884E6BC(a1, v4, v5, v6, v7);
}

uint64_t sub_1D88C732C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D886553C;

  return sub_1D884E4F8(a1, v5, v4);
}

uint64_t sub_1D88C73D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D88B7514(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D88C74A0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E40) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D88B6D98(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_206Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D88C7614(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D88AC340(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D88C76DC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E40) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D8A3BD34(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_166Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + 8, v4 | 7);
}

uint64_t sub_1D88C78DC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64848) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D8864FBC;

  return sub_1D88ACEBC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D88C7AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_271Tm()
{
  v1 = sub_1D8B13240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D88C7BE4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1D8B13240() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

uint64_t sub_1D88C7CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleManager.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D88C7D1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D88C7D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D88C7DEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D886553C;

  return sub_1D88A5DD4(a1, v4, v5, v6);
}

__n128 SaliencyStreamConfiguration.init(entryPoint:cvCoordinatorConfiguration:trackManagerConfiguration:bundleManagerConfiguration:bundleSelectorConfiguration:actionPredictorConfiguration:)@<Q0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = a2[2];
  v13 = *(a2 + 24);
  v14 = *a3;
  v15 = *(a3 + 2);
  v16 = *a6;
  v17 = *(a6 + 8);
  v18 = a6[2];
  v19 = a6[3];
  v20 = a6[4];
  *a7 = *a1;
  *(a7 + 16) = v10;
  *(a7 + 24) = v11;
  *(a7 + 32) = v12;
  *(a7 + 40) = v13;
  *(a7 + 48) = v14;
  *(a7 + 56) = v15;
  v21 = type metadata accessor for SaliencyStreamConfiguration();
  sub_1D88C8030(a4, a7 + v21[7]);
  v22 = a7 + v21[8];
  v23 = *(a5 + 48);
  *(v22 + 32) = *(a5 + 32);
  *(v22 + 48) = v23;
  *(v22 + 64) = *(a5 + 64);
  result = *(a5 + 16);
  *v22 = *a5;
  *(v22 + 16) = result;
  v25 = a7 + v21[9];
  *v25 = v16;
  *(v25 + 8) = v17;
  *(v25 + 16) = v18;
  *(v25 + 24) = v19;
  *(v25 + 32) = v20;
  return result;
}

uint64_t type metadata accessor for SaliencyStreamConfiguration()
{
  result = qword_1EE0E48C8;
  if (!qword_1EE0E48C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D88C8030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleManager.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SaliencyStreamConfiguration.entryPoint.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1D8879738(v2, v3);
}

uint64_t SaliencyStreamConfiguration.entryPoint.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1D88793B8(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t SaliencyStreamConfiguration.cvCoordinatorConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t SaliencyStreamConfiguration.cvCoordinatorConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t SaliencyStreamConfiguration.trackManagerConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t SaliencyStreamConfiguration.trackManagerConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t SaliencyStreamConfiguration.bundleManagerConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SaliencyStreamConfiguration() + 28);

  return sub_1D88C7CB8(a1, v3);
}

__n128 SaliencyStreamConfiguration.bundleSelectorConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SaliencyStreamConfiguration() + 32);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

__n128 SaliencyStreamConfiguration.bundleSelectorConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SaliencyStreamConfiguration() + 32);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

double SaliencyStreamConfiguration.actionPredictorConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SaliencyStreamConfiguration() + 36);
  result = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t SaliencyStreamConfiguration.actionPredictorConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  result = type metadata accessor for SaliencyStreamConfiguration();
  v8 = v1 + *(result + 36);
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  return result;
}

unint64_t sub_1D88C84BC()
{
  v1 = *v0;
  v2 = 0x696F507972746E65;
  v3 = 0xD00000000000001ALL;
  v4 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001ALL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000019;
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

uint64_t sub_1D88C8584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D88C96E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D88C85AC(uint64_t a1)
{
  v2 = sub_1D88C90FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88C85E8(uint64_t a1)
{
  v2 = sub_1D88C90FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SaliencyStreamConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88C90FC();
  sub_1D8B16DD0();
  v9 = *(v3 + 8);
  *&v26 = *v3;
  *(&v26 + 1) = v9;
  v31 = 0;
  sub_1D8879738(v26, v9);
  sub_1D88C9150();
  sub_1D8B16AE0();
  sub_1D88793B8(v26, *(&v26 + 1));
  if (!v2)
  {
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
    v12 = *(v3 + 40);
    *&v26 = *(v3 + 16);
    BYTE8(v26) = v10;
    *&v27 = v11;
    BYTE8(v27) = v12;
    v31 = 1;
    sub_1D88C91A4();

    sub_1D8B16AE0();

    v13 = *(v3 + 56);
    *&v26 = *(v3 + 48);
    DWORD2(v26) = v13;
    v31 = 2;
    sub_1D88C91F8();

    sub_1D8B16AE0();

    v15 = type metadata accessor for SaliencyStreamConfiguration();
    v31 = 3;
    type metadata accessor for BundleManager.Configuration(0);
    sub_1D88C939C(&qword_1ECA64A90);
    sub_1D8B16AE0();
    v16 = (v3 + *(v15 + 32));
    v17 = v16[3];
    v28 = v16[2];
    v29 = v17;
    v30 = *(v16 + 64);
    v18 = v16[1];
    v26 = *v16;
    v27 = v18;
    v25 = 4;
    sub_1D88C924C();
    sub_1D8B16AE0();
    v19 = v3 + *(v15 + 36);
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    v23 = *(v19 + 32);
    *&v26 = *v19;
    BYTE8(v26) = v20;
    *&v27 = v21;
    *(&v27 + 1) = v22;
    *&v28 = v23;
    v25 = 5;
    sub_1D885E654();
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SaliencyStreamConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for BundleManager.Configuration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64AA0);
  v7 = *(v6 - 8);
  v34 = v6;
  v35 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = type metadata accessor for SaliencyStreamConfiguration();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D88C90FC();
  v14 = v36;
  sub_1D8B16DB0();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v36 = v5;
  LOBYTE(v38) = 0;
  sub_1D88C92A0();
  v15 = v34;
  sub_1D8B16A10();
  v16 = *(&v43 + 1);
  *v12 = v43;
  *(v12 + 1) = v16;
  LOBYTE(v38) = 1;
  sub_1D88C92F4();
  sub_1D8B16A10();
  v17 = BYTE8(v43);
  v18 = v44;
  v19 = BYTE8(v44);
  *(v12 + 2) = v43;
  v12[24] = v17;
  *(v12 + 4) = v18;
  v12[40] = v19;
  LOBYTE(v38) = 2;
  sub_1D88C9348();
  sub_1D8B16A10();
  v20 = DWORD2(v43);
  *(v12 + 6) = v43;
  *(v12 + 14) = v20;
  LOBYTE(v43) = 3;
  sub_1D88C939C(&qword_1ECA64AB8);
  v21 = v36;
  sub_1D8B16A10();
  v22 = v10;
  sub_1D88C8030(v21, &v12[*(v10 + 28)]);
  v49 = 4;
  sub_1D88C93E0();
  sub_1D8B16A10();
  v23 = v35;
  v24 = *(v22 + 32);
  v25 = v46;
  *(v24 + 0x20) = v45;
  *(v24 + 48) = v25;
  *(v24 + 64) = v47;
  v26 = v44;
  *v24 = v43;
  *(v24 + 16) = v26;
  v48 = 5;
  sub_1D885E600();
  sub_1D8B16A10();
  (*(v23 + 8))(v9, v15);
  v28 = v39;
  v29 = v40;
  v30 = v41;
  v31 = v42;
  v32 = *(v22 + 36);
  *v32 = v38;
  *(v32 + 8) = v28;
  *(v32 + 16) = v29;
  *(v32 + 24) = v30;
  *(v32 + 32) = v31;
  sub_1D88C9434(0, v33, type metadata accessor for SaliencyStreamConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_1D88C949C(0, type metadata accessor for SaliencyStreamConfiguration);
}

BOOL _s22VisualIntelligenceCore27SaliencyStreamConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *&v41 = *a1;
  *(&v41 + 1) = v4;
  v5 = *(a2 + 8);
  *&v36 = *a2;
  *(&v36 + 1) = v5;
  sub_1D8879738(v41, v4);
  sub_1D8879738(v36, v5);
  v6 = _s22VisualIntelligenceCore10EntryPointO2eeoiySbAC_ACtFZ_0(&v41, &v36);
  sub_1D88793B8(v36, *(&v36 + 1));
  sub_1D88793B8(v41, *(&v41 + 1));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = sub_1D8855000(*(a1 + 16), *(a2 + 16));
  v14 = 0;
  if ((v13 & 1) != 0 && ((v7 ^ v10) & 1) == 0 && v8 == v11 && v9 == v12)
  {
    v15 = *(a1 + 56);
    v16 = *(a2 + 56);
    v17 = sub_1D894C93C(*(a1 + 48), *(a2 + 48));
    v14 = 0;
    if ((v17 & 1) != 0 && v15 == v16)
    {
      v18 = type metadata accessor for SaliencyStreamConfiguration();
      if (static BundleManager.Configuration.== infix(_:_:)(a1 + v18[7], a2 + v18[7]))
      {
        v19 = (a1 + v18[8]);
        v20 = v19[3];
        v43 = v19[2];
        v44 = v20;
        v45 = *(v19 + 64);
        v21 = v19[1];
        v41 = *v19;
        v42 = v21;
        v22 = (a2 + v18[8]);
        v23 = v22[3];
        v38 = v22[2];
        v39 = v23;
        v40 = *(v22 + 64);
        v24 = v22[1];
        v36 = *v22;
        v37 = v24;
        if (_s22VisualIntelligenceCore14BundleSelectorC13ConfigurationV2eeoiySbAE_AEtFZ_0(&v41, &v36))
        {
          v25 = a1 + v18[9];
          v26 = *(v25 + 8);
          v27 = *(v25 + 16);
          v28 = *(v25 + 24);
          v29 = *(v25 + 32);
          *&v41 = *v25;
          BYTE8(v41) = v26;
          *&v42 = v27;
          *(&v42 + 1) = v28;
          *&v43 = v29;
          v30 = a2 + v18[9];
          v31 = *(v30 + 8);
          v32 = *(v30 + 16);
          v33 = *(v30 + 24);
          v34 = *(v30 + 32);
          *&v36 = *v30;
          BYTE8(v36) = v31;
          *&v37 = v32;
          *(&v37 + 1) = v33;
          *&v38 = v34;
          return _s22VisualIntelligenceCore15ActionPredictorC13ConfigurationV2eeoiySbAE_AEtFZ_0(&v41, &v36);
        }
      }

      return 0;
    }
  }

  return v14;
}

unint64_t sub_1D88C90FC()
{
  result = qword_1ECA64A70;
  if (!qword_1ECA64A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64A70);
  }

  return result;
}

unint64_t sub_1D88C9150()
{
  result = qword_1ECA64A78;
  if (!qword_1ECA64A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64A78);
  }

  return result;
}

unint64_t sub_1D88C91A4()
{
  result = qword_1ECA64A80;
  if (!qword_1ECA64A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64A80);
  }

  return result;
}

unint64_t sub_1D88C91F8()
{
  result = qword_1ECA64A88;
  if (!qword_1ECA64A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64A88);
  }

  return result;
}

unint64_t sub_1D88C924C()
{
  result = qword_1ECA64A98;
  if (!qword_1ECA64A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64A98);
  }

  return result;
}

unint64_t sub_1D88C92A0()
{
  result = qword_1ECA64AA8;
  if (!qword_1ECA64AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64AA8);
  }

  return result;
}

unint64_t sub_1D88C92F4()
{
  result = qword_1ECA67A20;
  if (!qword_1ECA67A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67A20);
  }

  return result;
}

unint64_t sub_1D88C9348()
{
  result = qword_1ECA64AB0;
  if (!qword_1ECA64AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64AB0);
  }

  return result;
}

uint64_t sub_1D88C939C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BundleManager.Configuration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D88C93E0()
{
  result = qword_1ECA64AC0;
  if (!qword_1ECA64AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64AC0);
  }

  return result;
}

uint64_t sub_1D88C9434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D88C949C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D88C9524()
{
  result = type metadata accessor for BundleManager.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D88C95E4()
{
  result = qword_1ECA64AC8;
  if (!qword_1ECA64AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64AC8);
  }

  return result;
}

unint64_t sub_1D88C963C()
{
  result = qword_1ECA64AD0;
  if (!qword_1ECA64AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64AD0);
  }

  return result;
}

unint64_t sub_1D88C9694()
{
  result = qword_1ECA64AD8;
  if (!qword_1ECA64AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64AD8);
  }

  return result;
}

uint64_t sub_1D88C96E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696F507972746E65 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D8B43AE0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D8B43B00 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D8B43B20 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D8B43B40 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D8B43B60 == a2)
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

uint64_t PredictedAction.description.getter()
{
  v0 = sub_1D8B14E50();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1D8B14E60();
  sub_1D8B168A0();
  (*(v1 + 8))(v3, v0);
  MEMORY[0x1DA71EFA0](8250, 0xE200000000000000);
  v4 = sub_1D8B14DC0();
  MEMORY[0x1DA71EFA0](v4);

  return v6[0];
}

void sub_1D88C9A54(__CVBuffer *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1D8B14F70();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1D8B14FF0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  v18 = CACurrentMediaTime();
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v18 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v18 < 1.84467441e19)
  {
    v22 = v7;
    v23 = v6;
    CVPixelBufferGetWidth(a1);
    CVPixelBufferGetHeight(a1);
    v24 = a2;
    CVPixelBufferGetPixelFormatType(a1);
    sub_1D8B14FE0();
    (*(v12 + 16))(v15, v17, v11);
    *v10 = a1;
    (*(v8 + 104))(v10, *MEMORY[0x1E69DFB70], v22);
    v19 = sub_1D8B14FA0();
    (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
    v20 = a1;
    sub_1D8B14F80();
    (*(v12 + 8))(v17, v11);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1D88C9D4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D8B14D80();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v10 = sub_1D8B14E50();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v36 = v1;
  sub_1D8B14E60();
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x1E69DFAF8])
  {
    goto LABEL_11;
  }

  if (v15 != *MEMORY[0x1E69DFAE8])
  {
    if (v15 != *MEMORY[0x1E69DFB00])
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_1D8B16720();

      v37 = 0xD000000000000024;
      v38 = 0x80000001D8B43BA0;
      sub_1D8B14E60();
      v34 = sub_1D8B159E0();
      MEMORY[0x1DA71EFA0](v34);

      MEMORY[0x1DA71EFA0](46, 0xE100000000000000);
      result = sub_1D8B168C0();
      __break(1u);
      return result;
    }

LABEL_11:
    (*(v11 + 8))(v14, v10);
    goto LABEL_12;
  }

  (*(v11 + 96))(v14, v10);
  v16 = v14;
  v17 = v4;
  (*(v4 + 32))(v9, v16, v3);
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 88))(v7, v3);
  if (v18 == *MEMORY[0x1E69DFA80])
  {
    (*(v4 + 96))(v7, v3);
    if (*v7 == 0x65646F63726162 && v7[1] == 0xE700000000000000)
    {
    }

    else
    {
      v20 = sub_1D8B16BA0();

      if ((v20 & 1) == 0)
      {
LABEL_9:
        (*(v4 + 8))(v9, v3);
LABEL_12:
        v21 = type metadata accessor for BuiltInAction(0);
        return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
      }
    }

    v23 = sub_1D8B14E70();
    v25 = v24;
    v26 = sub_1D8B14DC0();
    v28 = v27;
    (*(v17 + 8))(v9, v3);
    *a1 = v23;
    a1[1] = v25;
    a1[2] = v26;
    a1[3] = v28;
    v29 = type metadata accessor for BuiltInAction(0);
    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69DFA90])
  {
    goto LABEL_20;
  }

  if (v18 == *MEMORY[0x1E69DFA88])
  {
    (*(v4 + 8))(v9, v3);
    *a1 = MEMORY[0x1E69E7CC0];
    v29 = type metadata accessor for BuiltInAction(0);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    return (*(*(v29 - 8) + 56))(a1, 0, 1, v29);
  }

  if (v18 == *MEMORY[0x1E69DFAB0])
  {
    goto LABEL_20;
  }

  if (v18 == *MEMORY[0x1E69DFAB8])
  {
    goto LABEL_9;
  }

  if (v18 == *MEMORY[0x1E69DFAA0])
  {
    goto LABEL_20;
  }

  if (v18 == *MEMORY[0x1E69DFA98])
  {
    goto LABEL_9;
  }

  if (v18 == *MEMORY[0x1E69DFA68])
  {
LABEL_20:
    (*(v4 + 8))(v9, v3);
    v29 = type metadata accessor for BuiltInAction(0);
    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69DFAA8] || v18 == *MEMORY[0x1E69DFA78])
  {
    goto LABEL_9;
  }

  v30 = *MEMORY[0x1E69DFA70];
  v31 = *(v17 + 8);
  v32 = v18;
  v31(v9, v3);
  v33 = type metadata accessor for BuiltInAction(0);
  v29 = v33;
  if (v32 == v30)
  {
    goto LABEL_21;
  }

  (*(*(v33 - 8) + 56))(a1, 1, 1, v33);
  return (v31)(v7, v3);
}

uint64_t PredictedAction.pill.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D8B14E50();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - v7;
  v9 = sub_1D8B14E10();
  v39 = v10;
  v40 = v9;
  v11 = sub_1D8B14DC0();
  v13 = v12;
  v14 = sub_1D8B14E70();
  v16 = v15;
  sub_1D8B14E60();
  (*(v3 + 16))(v6, v8, v2);
  v17 = (*(v3 + 88))(v6, v2);
  if (v17 == *MEMORY[0x1E69DFAF8])
  {
    goto LABEL_5;
  }

  if (v17 == *MEMORY[0x1E69DFAE8])
  {
    (*(v3 + 8))(v8, v2);
    (*(v3 + 96))(v6, v2);
    v18 = sub_1D8B14D80();
    (*(*(v18 - 8) + 8))(v6, v18);
    v19 = 0;
    v20 = 0;
    goto LABEL_6;
  }

  if (v17 == *MEMORY[0x1E69DFB00])
  {
LABEL_5:
    (*(v3 + 8))(v8, v2);
    (*(v3 + 96))(v6, v2);
    v19 = *v6;
    v20 = v6[1];
LABEL_6:
    v21 = sub_1D88CA7BC();
    v22 = sub_1D87DF9F0(v21);

    v23 = *(v22 + 16);
    if (v23)
    {
      if (v23 > 3)
      {
        v24 = v23 & 0x7FFFFFFFFFFFFFFCLL;
        v26 = (v22 + 48);
        v27 = 0uLL;
        v28 = v23 & 0x7FFFFFFFFFFFFFFCLL;
        v29 = 0uLL;
        do
        {
          v27 = vorrq_s8(v26[-1], v27);
          v29 = vorrq_s8(*v26, v29);
          v26 += 2;
          v28 -= 4;
        }

        while (v28);
        v30 = vorrq_s8(v29, v27);
        v25 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
        if (v23 == v24)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      v31 = v23 - v24;
      v32 = (v22 + 8 * v24 + 32);
      do
      {
        v33 = *v32++;
        *&v25 |= v33;
        --v31;
      }

      while (v31);
    }

    else
    {
      v25 = 0;
    }

LABEL_15:

    v34 = *(type metadata accessor for ActionPin.Pill(0) + 36);
    v35 = type metadata accessor for BuiltInAction(0);
    result = (*(*(v35 - 8) + 56))(a1 + v34, 1, 1, v35);
    v37 = v39;
    *a1 = v40;
    a1[1] = v37;
    a1[2] = v11;
    a1[3] = v13;
    a1[4] = v14;
    a1[5] = v16;
    a1[6] = v19;
    a1[7] = v20;
    a1[8] = v25;
    return result;
  }

  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D88CA7BC()
{
  v1 = sub_1D8B14E50();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v45[1] = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v45 - v5;
  v7 = sub_1D8B14DF0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v45 - v12;
  v14 = MEMORY[0x1E69E7CD0];
  v50 = MEMORY[0x1E69E7CD0];
  v47 = v0;
  sub_1D8B14E00();
  (*(v8 + 104))(v11, *MEMORY[0x1E69DFAD8], v7);
  v15 = sub_1D8B14DE0();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
  if (v15)
  {
    v46 = v1;
    sub_1D8B16D20();
    sub_1D8B15A60();
    v17 = sub_1D8B16D80();
    v18 = -1 << *(v14 + 32);
    v19 = v17 & ~v18;
    if ((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19))
    {
      v20 = ~v18;
      while (1)
      {
        v21 = *(*(v14 + 48) + v19);
        if (v21 <= 2 && v21 != 1 && v21 != 2)
        {
          break;
        }

        v22 = sub_1D8B16BA0();

        if (v22)
        {
          goto LABEL_10;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v14 = MEMORY[0x1E69E7CD0];
    }

    else
    {
LABEL_9:
      v23 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v23;
      sub_1D8803990(0, v19, isUniquelyReferenced_nonNull_native);
      v14 = v48;
      v50 = v48;
    }

LABEL_10:
    v1 = v46;
  }

  sub_1D8B14E60();
  v25 = (*(v2 + 88))(v6, v1);
  if (v25 == *MEMORY[0x1E69DFAF8])
  {
    (*(v2 + 96))(v6, v1);
    v26 = v6[16];

    if (v26 == 1)
    {
      sub_1D8B16D20();
      sub_1D8B15A60();
      v27 = sub_1D8B16D80();
      v28 = -1 << *(v14 + 32);
      v29 = v27 & ~v28;
      if ((*(v14 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = *(*(v14 + 48) + v29);
          if (v31 > 1 && v31 != 3 && v31 != 4)
          {
            break;
          }

          v32 = sub_1D8B16BA0();

          if (v32)
          {
            return v50;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v14 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        v33 = v50;
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v48 = v33;
        sub_1D8803990(2, v29, v34);
        return v48;
      }
    }

    return v50;
  }

  if (v25 == *MEMORY[0x1E69DFAE8])
  {
    (*(v2 + 96))(v6, v1);
    v35 = sub_1D8B14D80();
    (*(*(v35 - 8) + 8))(v6, v35);
    return v50;
  }

  if (v25 == *MEMORY[0x1E69DFB00])
  {
    (*(v2 + 8))(v6, v1);
    sub_1D8B16D20();
    sub_1D8B15A60();
    v36 = sub_1D8B16D80();
    v37 = -1 << *(v14 + 32);
    v38 = v36 & ~v37;
    if ((*(v14 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
    {
      v39 = ~v37;
      while (*(*(v14 + 48) + v38) > 2u || !*(*(v14 + 48) + v38) || *(*(v14 + 48) + v38) == 2)
      {
        v40 = sub_1D8B16BA0();

        if (v40)
        {
          goto LABEL_32;
        }

        v38 = (v38 + 1) & v39;
        if (((*(v14 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_31:
      v41 = v50;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v41;
      sub_1D8803990(1, v38, v42);
      v50 = v48;
    }

LABEL_32:
    sub_1D88BBAAC(0, &v48);
    return v50;
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1D8B16720();

  v48 = 0xD00000000000001FLL;
  v49 = 0x80000001D8B43B80;
  sub_1D8B14E60();
  v44 = sub_1D8B159E0();
  MEMORY[0x1DA71EFA0](v44);

  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D88CAFDC()
{
  v0 = sub_1D8B14E50();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1D8B14E60();
  sub_1D8B168A0();
  (*(v1 + 8))(v3, v0);
  MEMORY[0x1DA71EFA0](8250, 0xE200000000000000);
  v4 = sub_1D8B14DC0();
  MEMORY[0x1DA71EFA0](v4);

  return v6[0];
}

uint64_t sub_1D88CB104(uint64_t a1)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v36 = a1 + 32;
    v34 = *(a1 + 16);
    v35 = MEMORY[0x1E69E7CC0] >> 62;
    do
    {
      v37 = v3;
      v4 = *(v36 + 16 * v3 + 8);
      v5 = objc_allocWithZone(MEMORY[0x1E696AB60]);
      v38[0] = 0;

      v6 = [v5 initWithTypes:8 error:v38];
      if (v6)
      {
        v7 = v6;
        v8 = v38[0];
        v9 = sub_1D8B15940();
        if ((v4 & 0x1000000000000000) != 0)
        {
          v10 = sub_1D8B15B10();
        }

        else
        {
          v10 = sub_1D8B15B20();
        }

        v11 = [v7 matchesInString:v9 options:0 range:{0, v10, v34}];

        sub_1D88D66BC();
        v12 = sub_1D8B15CF0();

        if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
        {
LABEL_10:
          v13 = 0;
          v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v18 = v38[0];
        v19 = sub_1D8B12EB0();

        swift_willThrow();

        v12 = MEMORY[0x1E69E7CC0];
        if (!v35)
        {
          goto LABEL_10;
        }
      }

      v14 = sub_1D8B16610();
      v13 = 1;
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
LABEL_12:
        v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v14;
        if (__OFADD__(v15, v14))
        {
          goto LABEL_53;
        }

        goto LABEL_13;
      }

LABEL_24:
      v20 = sub_1D8B16610();
      v16 = v20 + v14;
      if (__OFADD__(v20, v14))
      {
        goto LABEL_53;
      }

LABEL_13:
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
        {
          v17 = v2 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }
      }

      else if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        goto LABEL_28;
      }

      sub_1D8B16610();
LABEL_28:
      v2 = sub_1D8B16750();
      v17 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_29:
      v21 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v13)
      {
        v23 = sub_1D8B16610();
        if (!v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v23)
        {
LABEL_3:

          if (v14 > 0)
          {
            goto LABEL_54;
          }

          goto LABEL_4;
        }
      }

      if (((v22 >> 1) - v21) < v14)
      {
        goto LABEL_55;
      }

      v24 = (v17 + 8 * v21 + 32);
      if (v13)
      {
        if (v23 < 1)
        {
          goto LABEL_57;
        }

        v25 = 0;
        if ((v12 & 0xC000000000000001) == 0)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v26 = MEMORY[0x1DA71FC20](v25++, v12);
          *v24 = v26;
          if (v25 == v23)
          {
            break;
          }

          while (1)
          {
            ++v24;
            if ((v12 & 0xC000000000000001) != 0)
            {
              break;
            }

LABEL_39:
            if ((v25 & 0x8000000000000000) != 0)
            {
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
            }

            if (v25 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_52;
            }

            v27 = *(v12 + 32 + 8 * v25++);
            *v24 = v27;
            v28 = v27;
            if (v25 == v23)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_46:

        v1 = v34;
        v29 = v14;
        if (v14 < 1)
        {
          goto LABEL_4;
        }

        goto LABEL_47;
      }

      sub_1D88D66BC();
      v29 = v14;
      swift_arrayInitWithCopy();

      if (v14 < 1)
      {
        goto LABEL_4;
      }

LABEL_47:
      v30 = *(v17 + 16);
      v31 = __OFADD__(v30, v29);
      v32 = v30 + v29;
      if (v31)
      {
        goto LABEL_56;
      }

      *(v17 + 16) = v32;
LABEL_4:
      v3 = v37 + 1;
    }

    while (v37 + 1 != v1);
  }

  return v2;
}

uint64_t sub_1D88CB510(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v30 = a3;
  v7 = type metadata accessor for TextDetectorResult(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D88CBBC8(a4);
  v13 = v12;
  sub_1D88CC0B4(a1, a2, v11);
  v32 = a2;
  sub_1D88CC0B4(a1, a2, v13);
  v14 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v8 + 72);
    do
    {
      sub_1D88CC83C(v16, v10);
      v18 = sub_1D88CC3E4();
      sub_1D88D65E4(v10, type metadata accessor for TextDetectorResult);
      sub_1D88F47B4(v18);
      v16 += v17;
      --v15;
    }

    while (v15);
    v14 = v33;
  }

  if (v11 >> 62)
  {
    v19 = sub_1D8B16610();
    if (!v19)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_14;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
    goto LABEL_45;
  }

  v20 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA71FC20](v20, v11);
    }

    else
    {
    }

    ++v20;
    sub_1D8B146E0();
    sub_1D88D5BF0(v14);
  }

  while (v19 != v20);
LABEL_14:
  if (v13 >> 62)
  {
    v21 = sub_1D8B16610();
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  if (v21 < 1)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v22 = 0;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA71FC20](v22, v13);
    }

    else
    {
    }

    ++v22;
    sub_1D8B146E0();
    sub_1D88D5BF0(v14);
  }

  while (v21 != v22);
LABEL_23:

  v23 = v31;
  v24 = v32;
  v25 = sub_1D88CC8A0(v32, v11);
  if (v23)
  {
  }

  if (!v25)
  {
    v25 = sub_1D88CC8A0(v24, v13);
    if (!v25)
    {
      if (v30)
      {
        if (v19)
        {
          if ((v11 & 0xC000000000000001) == 0)
          {
            if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v27 = *(v11 + 32);

LABEL_36:

              goto LABEL_27;
            }

            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          v27 = MEMORY[0x1DA71FC20](0, v11);
          goto LABEL_36;
        }

        if (v21)
        {
          if ((v13 & 0xC000000000000001) == 0)
          {
            if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v28 = *(v13 + 32);

LABEL_43:

            return v28;
          }

LABEL_48:
          v28 = MEMORY[0x1DA71FC20](0, v13);
          goto LABEL_43;
        }
      }

      else
      {
      }

      return 0;
    }
  }

  v27 = v25;

LABEL_27:

  return v27;
}

uint64_t sub_1D88CB8EC(uint64_t a1)
{
  v2 = sub_1D8B144E0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v10[2] = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B14670();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C9C88]);
  sub_1D8B146A0();
  swift_allocObject();
  sub_1D8B14680();
  sub_1D8B146D0();
  swift_allocObject();
  v10[1] = sub_1D8B145F0();
  sub_1D8B12D70();
  sub_1D8B12D80();
  sub_1D8B12D40();
  sub_1D8B12D50();
  sub_1D8B12D90();
  sub_1D8B14420();
  sub_1D8B14620();
  if (qword_1ECA62108 != -1)
  {
    swift_once();
  }

  v7 = sub_1D8B14730();
  v8 = sub_1D8B12DE0();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_1D88CBBC8(unint64_t a1)
{
  v43 = sub_1D8B144E0();
  v2 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D8B16610())
  {
    v6 = 0;
    v40 = a1 & 0xC000000000000001;
    v38 = a1;
    v35 = a1 + 32;
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = (v2 + 8);
    v2 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    v39 = i;
    while (v40)
    {
      v8 = MEMORY[0x1DA71FC20](v6, v38);
      v9 = __OFADD__(v6, 1);
      v10 = v6 + 1;
      if (v9)
      {
        goto LABEL_46;
      }

LABEL_11:
      sub_1D8B14550();
      v11 = sub_1D8B14770();

      v42 = v8;
      if (v11)
      {
        sub_1D8B14550();
        MEMORY[0x1DA71F1A0]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D8B15D20();
          v8 = v42;
        }

        sub_1D8B15D70();
        v37 = v45;
      }

      a1 = v8;
      v12 = sub_1D8B14560();
      v13 = v12;
      v41 = v10;
      if (v12 >> 62)
      {
        v14 = sub_1D8B16610();
        if (!v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          goto LABEL_4;
        }
      }

      if (v14 < 1)
      {
        goto LABEL_47;
      }

      for (j = 0; j != v14; ++j)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA71FC20](j, v13);
        }

        else
        {
        }

        sub_1D8B146E0();
        sub_1D8B14610();

        a1 = sub_1D8B144A0();
        (*v7)(v4, v43);
        if (a1)
        {
          v16 = sub_1D8B14750();
          v18 = v17;

          v19 = HIBYTE(v18) & 0xF;
          if ((v18 & 0x2000000000000000) == 0)
          {
            v19 = v16 & 0xFFFFFFFFFFFFLL;
          }

          if (!v19)
          {
            sub_1D8B14550();
            sub_1D8B14750();

            sub_1D8B14760();
          }

          v20 = sub_1D8B14780();
          v22 = v21;

          v23 = HIBYTE(v22) & 0xF;
          if ((v22 & 0x2000000000000000) == 0)
          {
            v23 = v20 & 0xFFFFFFFFFFFFLL;
          }

          if (!v23)
          {
            sub_1D8B14550();
            sub_1D8B14780();

            sub_1D8B14790();
          }

          v24 = sub_1D8B14710();
          v26 = v25;

          v27 = HIBYTE(v26) & 0xF;
          if ((v26 & 0x2000000000000000) == 0)
          {
            v27 = v24 & 0xFFFFFFFFFFFFLL;
          }

          if (!v27)
          {
            sub_1D8B14550();
            sub_1D8B14710();

            sub_1D8B14720();
          }

          v28 = sub_1D8B146F0();
          v30 = v29;

          v31 = HIBYTE(v30) & 0xF;
          if ((v30 & 0x2000000000000000) == 0)
          {
            v31 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (!v31)
          {
            sub_1D8B14550();
            sub_1D8B146F0();

            sub_1D8B14700();
          }

          a1 = &v44;
          MEMORY[0x1DA71F1A0](v32);
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D8B15D20();
          }

          sub_1D8B15D70();

          v2 = v44;
        }

        else
        {
        }
      }

LABEL_4:

      v6 = v41;
      if (v41 == v39)
      {
        return v37;
      }
    }

    if (v6 >= *(v36 + 16))
    {
      goto LABEL_48;
    }

    v8 = *(v35 + 8 * v6);

    v9 = __OFADD__(v6, 1);
    v10 = v6 + 1;
    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D88CC0B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v24 = sub_1D8B144E0();
  v7 = *(v24 - 8);
  result = MEMORY[0x1EEE9AC00](v24);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_25:
    v23 = v9;
    result = sub_1D8B16610();
    v9 = v23;
    v26 = result;
  }

  else
  {
    v26 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v25 = v9 & 0xC000000000000001;
  v14 = (v7 + 8);
  v15 = v9;
  while (1)
  {
    if (v26 == v13)
    {
      return result;
    }

    if (v25)
    {
      break;
    }

    if (v13 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (__OFADD__(v13, 1))
    {
      goto LABEL_12;
    }

LABEL_8:
    sub_1D8B146E0();
    sub_1D8B14610();

    v7 = sub_1D8B14400();

    v3 = *v14;
    result = (*v14)(v11, v24);
    ++v13;
    v9 = v15;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  result = MEMORY[0x1DA71FC20](v13, v9);
  if (!__OFADD__(v13, 1))
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v16 = v9;
  MEMORY[0x1EEE9AC00](result);
  *(&v24 - 2) = a2;
  result = sub_1D8AA428C(sub_1D88D6708, (&v24 - 4), a1);
  v17 = result;
  if (!*(result + 16))
  {
  }

  if (v26 >= 1)
  {
    v18 = 0;
    v19 = v16;
    do
    {
      if (v25)
      {
        MEMORY[0x1DA71FC20](v18, v19);
      }

      else
      {
      }

      sub_1D8B146E0();
      v20 = sub_1D8B14600();
      sub_1D88CFB70(v17);
      v20(v27, 0);
      sub_1D8B145D0();
      v21 = sub_1D8B144A0();
      v3(v11, v24);
      if (v21)
      {
        v22 = sub_1D8B145C0();
        sub_1D88CFB70(v17);
        v22(v27, 0);
      }

      ++v18;

      v19 = v15;
    }

    while (v26 != v18);
  }

  __break(1u);
  return result;
}

void *sub_1D88CC3E4()
{
  v42 = sub_1D8B15240();
  v0 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D8B13450();
  v38 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B131D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70);
  v8 = sub_1D8B15270();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D8B1AB90;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E69E0208], v8);
  _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
  v12 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v11, v7, 0);

  (*(v5 + 8))(v7, v4);
  v13 = v12[2];
  if (v13)
  {
    v36 = v2;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v13, 0);
    v14 = v43;
    v16 = *(v0 + 16);
    v15 = v0 + 16;
    v17 = *(v15 + 64);
    v35 = v12;
    v18 = v12 + ((v17 + 32) & ~v17);
    v39 = *(v15 + 56);
    v40 = v16;
    v19 = (v15 - 8);
    do
    {
      v20 = v41;
      v21 = v42;
      v22 = v15;
      v40(v41, v18, v42);
      v23 = sub_1D8B15230();
      v25 = v24;
      (*v19)(v20, v21);
      v43 = v14;
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D87F3F54((v26 > 1), v27 + 1, 1);
        v14 = v43;
      }

      *(v14 + 16) = v27 + 1;
      v28 = v14 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v18 += v39;
      --v13;
      v15 = v22;
    }

    while (v13);

    v29 = v36;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
    v29 = v2;
  }

  v30 = sub_1D88CB104(v14);

  v31 = v37;
  v32 = sub_1D8B13410();
  MEMORY[0x1EEE9AC00](v32);
  *(&v35 - 2) = v31;
  v33 = sub_1D88208D0(sub_1D88D66A0, (&v35 - 4), v30);

  (*(v38 + 8))(v31, v29);
  return v33;
}

uint64_t sub_1D88CC83C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextDetectorResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D88CC8A0(uint64_t a1, unint64_t a2)
{
  v5 = sub_1D8B131D0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v31[0] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = v31 - v9;
  v46 = sub_1D8B144E0();
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v37 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = *(v6 + 7);
  v39 = v31 - v16;
  v32 = v15;
  v33 = v6 + 56;
  v15();
  if (a2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D8B16610())
  {
    v47 = a1;
    v18 = 0;
    v19 = a2 & 0xC000000000000001;
    v40 = a2 & 0xFFFFFFFFFFFFFF8;
    v41 = i;
    v38 = (v6 + 8);
    v44 = v10 + 1;
    v45 = 0;
    v34 = (v6 + 32);
    v35 = (v6 + 48);
    v31[1] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v42 = v5;
    v43 = a2 & 0xC000000000000001;
    v36 = a2;
    while (v19)
    {
      v10 = MEMORY[0x1DA71FC20](v18, a2);
      a1 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_30;
      }

LABEL_12:
      v6 = sub_1D8B146E0();
      v5 = sub_1D8B146C0();

      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      sub_1D8B146E0();
      sub_1D8B146B0();

      v20 = sub_1D8B14660();

      if (v20)
      {
        v6 = v10;
        v21 = sub_1D88CFEF0(v47);
        if (v2)
        {
          sub_1D87A14E4(v39, &qword_1ECA631A8);
        }

        v5 = v21;
        if (!v21)
        {
LABEL_4:

          goto LABEL_5;
        }
      }

      else
      {
        swift_retain_n();
        v5 = v10;
      }

      sub_1D8B146E0();
      sub_1D8B14610();

      sub_1D8B143E0();
      if (v2)
      {

        (*v44)(v48, v46);
        return sub_1D87A14E4(v39, &qword_1ECA631A8);
      }

      v6 = v49;
      sub_1D8B13090();
      if (v22 <= 0.0)
      {

        (*v38)(v49, v42);
        (*v44)(v48, v46);
      }

      else
      {
        v6 = v39;
        v23 = v37;
        sub_1D87A0E38(v39, v37, &qword_1ECA631A8);
        v24 = v42;
        if ((*v35)(v23, 1, v42) == 1)
        {

          (*v44)(v48, v46);
          v10 = &unk_1D8B1E6D0;
          sub_1D87A14E4(v6, &qword_1ECA631A8);
          sub_1D87A14E4(v23, &qword_1ECA631A8);
          v25 = *v34;
LABEL_27:
          i = v41;
          v25(v6, v49, v24);
          (v32)(v6, 0, 1, v24);
          v45 = v5;
          a2 = v36;
          v19 = v43;
          goto LABEL_5;
        }

        v26 = v23;
        v25 = *v34;
        v27 = v31[0];
        (*v34)(v31[0], v26, v24);
        sub_1D8B13090();
        v29 = v28;

        v10 = v38;
        v6 = *v38;
        (*v38)(v27, v24);
        (*v44)(v48, v46);
        if (v29 <= 0.0)
        {
          v6 = v39;
          sub_1D87A14E4(v39, &qword_1ECA631A8);

          goto LABEL_27;
        }

        (v6)(v49, v24);

        a2 = v36;
      }

      i = v41;
      v19 = v43;
LABEL_5:
      ++v18;
      if (a1 == i)
      {
        goto LABEL_34;
      }
    }

    if (v18 >= *(v40 + 16))
    {
      goto LABEL_31;
    }

    v10 = *(a2 + 8 * v18 + 32);

    a1 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_12;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v45 = 0;
LABEL_34:
  sub_1D87A14E4(v39, &qword_1ECA631A8);
  return v45;
}

uint64_t sub_1D88CCF34(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88D6860();
  sub_1D8B16DD0();
  v8[15] = 0;
  sub_1D8B16AD0();
  if (!v1)
  {
    v8[14] = 1;
    sub_1D8B16AD0();
    type metadata accessor for TimeZonedTime();
    v8[13] = 2;
    sub_1D8B134B0();
    sub_1D88D6918(&qword_1ECA64B58, MEMORY[0x1E6969BC0]);
    sub_1D8B16AE0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D88CD150@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_1D8B134B0();
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B38);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for TimeZonedTime();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D88D6860();
  v12 = v22;
  sub_1D8B16DB0();
  if (!v12)
  {
    v13 = v11;
    v22 = v9;
    v15 = v20;
    v14 = v21;
    v25 = 0;
    *v13 = sub_1D8B16A00();
    v24 = 1;
    v13[1] = sub_1D8B16A00();
    v23 = 2;
    sub_1D88D6918(&qword_1ECA64B48, MEMORY[0x1E6969BC0]);
    v17 = v5;
    sub_1D8B16A10();
    (*(v15 + 8))(v8, v14);
    (*(v18 + 32))(v13 + *(v22 + 24), v17, v3);
    sub_1D88D68B4(v13, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D88CD45C()
{
  v1 = 0x6574756E696DLL;
  if (*v0 != 1)
  {
    v1 = 0x656E6F5A656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1920298856;
  }
}

uint64_t sub_1D88CD4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D88D6A78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D88CD4D4(uint64_t a1)
{
  v2 = sub_1D88D6860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D88CD510(uint64_t a1)
{
  v2 = sub_1D88D6860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D88CD54C()
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](*v0);
  MEMORY[0x1DA720210](v0[1]);
  sub_1D8B134B0();
  sub_1D88D6918(&qword_1ECA64B30, MEMORY[0x1E6969BC0]);
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D88CD604()
{
  MEMORY[0x1DA720210](*v0);
  MEMORY[0x1DA720210](v0[1]);
  sub_1D8B134B0();
  sub_1D88D6918(&qword_1ECA64B30, MEMORY[0x1E6969BC0]);
  return sub_1D8B157A0();
}

uint64_t sub_1D88CD6A0()
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](*v0);
  MEMORY[0x1DA720210](v0[1]);
  sub_1D8B134B0();
  sub_1D88D6918(&qword_1ECA64B30, MEMORY[0x1E6969BC0]);
  sub_1D8B157A0();
  return sub_1D8B16D80();
}