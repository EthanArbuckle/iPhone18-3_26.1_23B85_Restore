uint64_t sub_1D8973960(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for RefinementState(0);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BundleClassification.ClassificationType(0);
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B0);
  v47 = a2;
  result = sub_1D8B16900();
  v12 = v10;
  v13 = result;
  if (*(v10 + 16))
  {
    v43 = v3;
    v44 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v45 + 72);
      v28 = *(v12 + 48) + v27 * v26;
      if (v47)
      {
        sub_1D897999C(v28, v9, type metadata accessor for BundleClassification.ClassificationType);
        v29 = *(v12 + 56);
        v30 = v9;
        v31 = *(v46 + 72);
        sub_1D897999C(v29 + v31 * v26, v48, type metadata accessor for RefinementState);
      }

      else
      {
        sub_1D89798EC(v28, v9, type metadata accessor for BundleClassification.ClassificationType);
        v32 = *(v12 + 56);
        v30 = v9;
        v31 = *(v46 + 72);
        sub_1D89798EC(v32 + v31 * v26, v48, type metadata accessor for RefinementState);
      }

      sub_1D8B16D20();
      v33 = v30;
      BundleClassification.ClassificationType.hash(into:)(v49);
      result = sub_1D8B16D80();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_1D897999C(v33, *(v13 + 48) + v27 * v21, type metadata accessor for BundleClassification.ClassificationType);
      v22 = *(v13 + 56) + v31 * v21;
      v9 = v33;
      result = sub_1D897999C(v48, v22, type metadata accessor for RefinementState);
      ++*(v13 + 16);
      v12 = v44;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

uint64_t sub_1D8973DB4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CVBundle(0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657C8);
  v39 = a2;
  result = sub_1D8B16900();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v37 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v39)
      {
        sub_1D897999C(v24, v7, type metadata accessor for CVBundle);
        v25 = *(*(v8 + 56) + 8 * v22);
      }

      else
      {
        sub_1D89798EC(v24, v7, type metadata accessor for CVBundle);
        v25 = *(*(v8 + 56) + 8 * v22);
      }

      sub_1D8B16D20();
      sub_1D891CA54(v40);
      v26 = v38;
      sub_1D87CF97C(v40, *&v7[*(v38 + 20)]);
      sub_1D87CF97C(v40, *&v7[*(v26 + 24)]);
      sub_1D893983C(v40, *&v7[*(v26 + 28)]);
      result = sub_1D8B16D80();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D897999C(v7, *(v10 + 48) + v23 * v18, type metadata accessor for CVBundle);
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
      v8 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1D8974160(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BundleClassification.ClassificationType(0);
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F88);
  v47 = a2;
  result = sub_1D8B16900();
  v12 = v10;
  v13 = result;
  if (*(v10 + 16))
  {
    v43 = v3;
    v44 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v45 + 72);
      v28 = *(v12 + 48) + v27 * v26;
      if (v47)
      {
        sub_1D897999C(v28, v9, type metadata accessor for BundleClassification.ClassificationType);
        v29 = *(v12 + 56);
        v30 = v9;
        v31 = *(v46 + 72);
        sub_1D897999C(v29 + v31 * v26, v48, type metadata accessor for BundleClassifier.ClassificationInfo);
      }

      else
      {
        sub_1D89798EC(v28, v9, type metadata accessor for BundleClassification.ClassificationType);
        v32 = *(v12 + 56);
        v30 = v9;
        v31 = *(v46 + 72);
        sub_1D89798EC(v32 + v31 * v26, v48, type metadata accessor for BundleClassifier.ClassificationInfo);
      }

      sub_1D8B16D20();
      v33 = v30;
      BundleClassification.ClassificationType.hash(into:)(v49);
      result = sub_1D8B16D80();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_1D897999C(v33, *(v13 + 48) + v27 * v21, type metadata accessor for BundleClassification.ClassificationType);
      v22 = *(v13 + 56) + v31 * v21;
      v9 = v33;
      result = sub_1D897999C(v48, v22, type metadata accessor for BundleClassifier.ClassificationInfo);
      ++*(v13 + 16);
      v12 = v44;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

uint64_t sub_1D89745C8(uint64_t a1, int a2)
{
  v3 = v2;
  v40 = sub_1D8B13240();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B38);
  v38 = a2;
  result = sub_1D8B16900();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = *(v7 + 56);
      v23 = v5;
      v24 = *(v5 + 72);
      v25 = v22 + v24 * (v19 | (v10 << 6));
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
      }

      sub_1D8B16D20();
      MEMORY[0x1DA720210](0);
      result = sub_1D8B16D80();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = (*v16)(*(v9 + 56) + v24 * v18, v39, v40);
      ++*(v9 + 16);
      v5 = v23;
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v11, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1D8974920(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B40);
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 56) + 8 * (v16 | (v8 << 6)));
      if ((a2 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      MEMORY[0x1DA720210](0);
      result = sub_1D8B16D80();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 56) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v27 = 1 << *(v5 + 32);
    v3 = v2;
    if (v27 >= 64)
    {
      bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8974BAC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F90);
  v36 = a2;
  result = sub_1D8B16900();
  v10 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v35 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v36)
      {
        sub_1D897999C(v24, v7, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D8788F40((*(v8 + 56) + 40 * v22), v38);
      }

      else
      {
        sub_1D89798EC(v24, v7, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D87C1470(*(v8 + 56) + 40 * v22, v38);
      }

      sub_1D8B16D20();
      BundleClassification.ClassificationType.hash(into:)(v37);
      result = sub_1D8B16D80();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1D897999C(v7, *(v10 + 48) + v23 * v18, type metadata accessor for BundleClassification.ClassificationType);
      result = sub_1D8788F40(v38, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v8 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v8 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v32;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1D8974F38(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_1D8B16900();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      sub_1D8B15A60();
      result = sub_1D8B16D80();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1D89751D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BA0);
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v24 = *v22;
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v21);
      result = sub_1D8B16D80();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v24;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8975484(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = sub_1D8B13240();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v41 = a2;
  result = sub_1D8B16900();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v37 = v3;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v38 = (v8 + 16);
    v39 = v11;
    v40 = v8;
    v42 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v41)
      {
        (*v42)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v38)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      result = sub_1D8B15790();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v42)(*(v13 + 48) + v44 * v21, v45, v7);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
      v11 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v5 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_1D8975860(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F78);
  v35 = a2;
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1D8B16D20();
      sub_1D8B15A60();
      result = sub_1D8B16D80();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8975B04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66020);
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1D8B16D10();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D8975D80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66000);
  result = sub_1D8B16900();
  v10 = result;
  if (*(v8 + 16))
  {
    v34 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v35 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (a2)
      {
        sub_1D897999C(v25, v7, type metadata accessor for CVDebugArtifactManager.BoresightState);
      }

      else
      {
        sub_1D89798EC(v25, v7, type metadata accessor for CVDebugArtifactManager.BoresightState);
      }

      result = sub_1D8B16D10();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1D897999C(v7, *(v10 + 56) + v24 * v18, type metadata accessor for CVDebugArtifactManager.BoresightState);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1D89760D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64968);
  v43 = a2;
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v2;
    v42 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(*(v5 + 48) + v24);
      if (v43)
      {
        v26 = *(v5 + 56) + 88 * v24;
        sub_1D88C5438(v26, &v45);
        v27 = *(v26 + 72);
        v28 = *(v26 + 80);
      }

      else
      {
        v29 = *(v5 + 56) + 88 * v24;
        v28 = *(v29 + 80);
        v31 = *(v29 + 32);
        v30 = *(v29 + 48);
        v49 = *(v29 + 64);
        v32 = *(v29 + 16);
        v45 = *v29;
        v46 = v32;
        v47 = v31;
        v50 = v28;
        v48 = v30;
        v27 = *(&v49 + 1);
        sub_1D881F59C(&v45, v44);
      }

      sub_1D88C5438(&v45, v44);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v25);
      result = sub_1D8B16D80();
      v33 = -1 << *(v7 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      result = sub_1D88C5438(v44, &v45);
      *(&v49 + 1) = v27;
      v50 = v28;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v25;
      v16 = *(v7 + 56) + 88 * v15;
      v17 = v46;
      *v16 = v45;
      v18 = v47;
      v19 = v48;
      v20 = v49;
      *(v16 + 80) = v50;
      *(v16 + 48) = v19;
      *(v16 + 64) = v20;
      *(v16 + 16) = v17;
      *(v16 + 32) = v18;
      ++*(v7 + 16);
      v5 = v42;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D89763FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FF0);
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (a2)
      {
        sub_1D8788F40(v21, v30);
      }

      else
      {
        sub_1D87C1470(v21, v30);
      }

      sub_1D8B16D20();
      MEMORY[0x1DA720210](v20);
      result = sub_1D8B16D80();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_1D8788F40(v30, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D897669C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AF0);
  v37 = a2;
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      sub_1D8B15A60();
      result = sub_1D8B16D80();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D897695C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AB8);
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1D8B16D10();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D8976BD4(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v31 = a2;
  result = sub_1D8B16900();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      MEMORY[0x1DA720210](v21);
      result = sub_1D8B16D80();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1D8976E70(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = sub_1D8B13240();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v41 = a2;
  result = sub_1D8B16900();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v37 = v3;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v38 = (v8 + 16);
    v39 = v11;
    v40 = v8;
    v42 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v41)
      {
        (*v42)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v38)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      result = sub_1D8B15790();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v42)(*(v13 + 48) + v44 * v21, v45, v7);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
      v11 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v5 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_1D897724C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CA8);
  v47 = a2;
  result = sub_1D8B16900();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    v43 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v49 = *(v44 + 72);
      v25 = v24 + v49 * v23;
      if (v47)
      {
        sub_1D897999C(v25, v8, type metadata accessor for TrackManager.TrackedProcessorState.Key);
        v26 = *(v9 + 56);
        v48 = *(v46 + 72);
        sub_1D897999C(v26 + v48 * v23, v50, type metadata accessor for TrackManager.TrackedProcessorState);
      }

      else
      {
        sub_1D89798EC(v25, v8, type metadata accessor for TrackManager.TrackedProcessorState.Key);
        v27 = *(v9 + 56);
        v48 = *(v46 + 72);
        sub_1D89798EC(v27 + v48 * v23, v50, type metadata accessor for TrackManager.TrackedProcessorState);
      }

      sub_1D8B16D20();
      v28 = v8[3];
      v53 = v8[2];
      v54 = v28;
      v55 = v8[4];
      v29 = v8[1];
      v51 = *v8;
      v52 = v29;
      CameraSourceFrameMetadata.hash(into:)();
      v30 = v8 + *(v45 + 20);
      MEMORY[0x1DA720210](*v30);
      v31 = type metadata accessor for DetectionRequest(0);
      DetectionRequest.Originator.hash(into:)(v56);
      sub_1D8818BD0(v56, *&v30[v31[6]]);
      sub_1D88911A0(*&v30[v31[7]], *&v30[v31[7] + 8], *&v30[v31[7] + 16], *&v30[v31[7] + 24]);
      v32 = *&v30[v31[8]];
      if (v32 == 0.0)
      {
        v32 = 0.0;
      }

      MEMORY[0x1DA720250](*&v32);
      result = sub_1D8B16D80();
      v33 = -1 << *(v11 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v9 = v43;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v9 = v43;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_1D897999C(v8, *(v11 + 48) + v49 * v19, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      result = sub_1D897999C(v50, *(v11 + 56) + v48 * v19, type metadata accessor for TrackManager.TrackedProcessorState);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v11;
  return result;
}

uint64_t sub_1D89777B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0);
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v20);
      result = sub_1D8B16D80();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8977A30(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CVTrackSnapshot(0);
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F70);
  v35 = a2;
  result = sub_1D8B16900();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v34 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v35)
      {
        sub_1D897999C(v24, v36, type metadata accessor for CVTrackSnapshot);
      }

      else
      {
        sub_1D89798EC(v24, v36, type metadata accessor for CVTrackSnapshot);
      }

      v38 = v22;
      sub_1D8B16D20();
      CVDetection.hash(into:)(v37);
      result = sub_1D8B16D80();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      result = sub_1D897999C(v36, *(v9 + 56) + v23 * v17, type metadata accessor for CVTrackSnapshot);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1D8977D9C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B90);
  v36 = a2;
  result = sub_1D8B16900();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_1D881F6FC(v24, v37, &qword_1ECA65B98);
      }

      else
      {
        sub_1D87A0E38(v24, v37, &qword_1ECA65B98);
      }

      sub_1D8B16D20();
      MEMORY[0x1DA720210](v22);
      result = sub_1D8B16D80();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_1D881F6FC(v37, *(v9 + 56) + v23 * v17, &qword_1ECA65B98);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1D89780FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA8);
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 8 * (v18 | (v8 << 6));
      v22 = *(v5 + 48) + v21;
      v23 = *(v22 + 4);
      v24 = *v22;
      v35 = *(*(v5 + 56) + v21);
      sub_1D8B16D20();
      if (v23 == 1)
      {
        if (v24)
        {
          if (v24 == 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2;
          }
        }

        else
        {
          v25 = 0;
        }

        MEMORY[0x1DA720210](v25);
      }

      else
      {
        MEMORY[0x1DA720210](3);
        sub_1D8B16D60();
      }

      result = sub_1D8B16D80();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v24;
      *(v17 + 4) = v23;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1D89783D8(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1D8978448(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1D89784A0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D8943B68(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1D897850C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  sub_1D897999C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78);
  result = sub_1D881F6FC(a3, v10 + *(*(v11 - 8) + 72) * a1, &qword_1ECA65B78);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1D8978600(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 8 * result;
  *v4 = a3;
  *(v4 + 4) = BYTE4(a3);
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

unint64_t sub_1D8978650(unint64_t result, char a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_1D89786E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_1D8B13240();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v12 = a4[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a3, v13);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

unint64_t sub_1D89787EC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1D8978834(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for BundleClassification.ClassificationType(0);
  result = sub_1D897999C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for BundleClassification.ClassificationType);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1D8978914(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_1D897999C(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_1D89789C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D8B13240();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1D8978A78(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for BundleClassification.ClassificationType(0);
  sub_1D897999C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for BundleClassification.ClassificationType);
  result = sub_1D8788F40(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1D8978B38(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  *(a3[6] + 8 * a1) = a4;
  v7 = a3[7];
  v8 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
  result = sub_1D897999C(a2, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for CVDebugArtifactManager.BoresightState);
  v10 = a3[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v12;
  }

  return result;
}

unint64_t sub_1D8978BE0(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 88 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 80) = *(a3 + 80);
  v6 = *(a3 + 64);
  *(v4 + 48) = *(a3 + 48);
  *(v4 + 64) = v6;
  *(v4 + 32) = *(a3 + 32);
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

uint64_t sub_1D8978C48(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_1D8788F40(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1D8978CB4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  sub_1D897999C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for TrackManager.TrackedProcessorState.Key);
  v10 = a4[7];
  v11 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  result = sub_1D897999C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for TrackManager.TrackedProcessorState);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1D8978DA0(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98);
  result = sub_1D881F6FC(a3, v7 + *(*(v8 - 8) + 72) * a1, &qword_1ECA65B98);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1D8978E58(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1D8978E9C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 8 * result;
  *v4 = a2;
  *(v4 + 4) = BYTE4(a2) & 1;
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

unint64_t sub_1D8978EF0()
{
  result = qword_1ECA65F38;
  if (!qword_1ECA65F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65F38);
  }

  return result;
}

uint64_t sub_1D8978F44(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v43 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 6)
  {
    v9 = i[4];
    v41 = i[3];
    *v42 = v9;
    *&v42[9] = *(i + 73);
    v10 = i[2];
    v39 = i[1];
    v40 = v10;
    v38 = *i;
    v11 = *&v42[8];
    if (*&v42[8])
    {
      if (v42[24])
      {
        v12 = 0;
        v11 = 0;
        v13 = 0;
      }

      else
      {
        v12 = *v42;
        v13 = *&v42[16];
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    sub_1D88E0F34(&v38, v37);
    v15 = sub_1D87F0454(v12, v11, v13);
    v16 = v1[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      break;
    }

    v19 = v14;
    if (v1[3] < v18)
    {
      sub_1D8972A20(v18, 1);
      v1 = v43;
      v20 = sub_1D87F0454(v12, v11, v13);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_24;
      }

      v15 = v20;
    }

    if (v19)
    {

      v22 = v1[7];
      v23 = *(v22 + 8 * v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 8 * v15) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_1D87C8AEC(0, *(v23 + 2) + 1, 1, v23);
        *(v22 + 8 * v15) = v23;
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      if (v26 >= v25 >> 1)
      {
        v23 = sub_1D87C8AEC((v25 > 1), v26 + 1, 1, v23);
        *(v22 + 8 * v15) = v23;
      }

      *(v23 + 2) = v26 + 1;
      v4 = &v23[96 * v26];
      v5 = v39;
      *(v4 + 2) = v38;
      *(v4 + 3) = v5;
      v6 = v40;
      v7 = v41;
      v8 = *v42;
      *(v4 + 105) = *&v42[9];
      *(v4 + 5) = v7;
      *(v4 + 6) = v8;
      *(v4 + 4) = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA632E8);
      v27 = swift_allocObject();
      v28 = v40;
      v29 = *v42;
      v27[5] = v41;
      v27[6] = v29;
      *(v27 + 105) = *&v42[9];
      v30 = v38;
      v31 = v39;
      v27[1] = xmmword_1D8B1AB90;
      v27[2] = v30;
      v27[3] = v31;
      v27[4] = v28;
      v1[(v15 >> 6) + 8] |= 1 << v15;
      v32 = (v1[6] + 24 * v15);
      *v32 = v12;
      v32[1] = v11;
      v32[2] = v13;
      *(v1[7] + 8 * v15) = v27;
      v33 = v1[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_23;
      }

      v1[2] = v35;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

CGPathRef sub_1D89792A0(__CVBuffer *a1, CGPathRef a2)
{
  imageOut[1] = *MEMORY[0x1E69E9840];
  imageOut[0] = 0;
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface)
  {
    v6 = IOSurface;
    viCore_lockUnlockWithFence(v6);
  }

  VTCreateCGImageFromCVPixelBuffer(a1, 0, imageOut);
  if (imageOut[0])
  {
    v7 = imageOut[0];
    Width = CGImageGetWidth(v7);
    Height = CGImageGetHeight(v7);
    v10 = sub_1D8979C44();

    if (v2)
    {
    }

    else
    {
      v13 = *(a2 + 2);
      if (v13)
      {
        v14 = Width;
        v15 = Height;
        if (Height >= Width)
        {
          v16 = Width;
        }

        else
        {
          v16 = Height;
        }

        v44 = *MEMORY[0x1E69DB648];
        v43 = *MEMORY[0x1E69DB650];
        v42 = *MEMORY[0x1E69DB600];
        v17 = a2 + 56;
        context = v10;
        do
        {
          v18 = *(v17 + 2);
          a2 = *(v17 + 4);
          v19 = *(v17 - 3) * v14;
          v20 = *(v17 - 1) * v14;
          v21 = *v17 * v15;
          v22 = v16 * *(v17 + 1);
          v23 = v15 - *(v17 - 2) * v15 - v21;

          v24 = v18;

          CGContextSetStrokeColorWithColor(v10, v24);
          CGContextSetLineWidth(v10, v22);
          v52.origin.x = v19;
          v52.origin.y = v23;
          v52.size.width = v20;
          v52.size.height = v21;
          CGContextStrokeRect(v10, v52);
          if (a2)
          {

            GenericGray = CGColorCreateGenericGray(1.0, 1.0);
            CGContextSaveGState(v10);
            v47 = sub_1D8B15940();
            v26 = CTFontCreateWithName(v47, v14 * 0.03, 0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66010);
            v48 = v13;
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1D8B1AB70;
            *(inited + 32) = v44;
            type metadata accessor for CTFont(0);
            *(inited + 40) = v26;
            *(inited + 64) = v28;
            *(inited + 72) = v43;
            type metadata accessor for CGColor(0);
            *(inited + 80) = GenericGray;
            *(inited + 104) = v29;
            *(inited + 112) = v42;
            *(inited + 144) = v29;
            *(inited + 120) = v24;
            v30 = v44;
            v45 = v26;
            v31 = v43;
            v46 = GenericGray;
            v32 = v42;
            v33 = v24;
            sub_1D893E5E4(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C28);
            swift_arrayDestroy();
            v34 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v35 = sub_1D8B15940();

            type metadata accessor for Key(0);
            sub_1D8979954(&qword_1ECA62478, type metadata accessor for Key);
            v36 = sub_1D8B15710();

            v37 = [v34 initWithString:v35 attributes:v36];

            v38 = CTFramesetterCreateWithAttributedString(v37);
            v53.origin.x = v19;
            v53.origin.y = v23;
            v53.size.width = v20;
            v53.size.height = v21;
            v54 = CGRectInset(v53, 10.0, 10.0);
            a2 = CGPathCreateWithRect(v54, 0);
            v51.location = 0;
            v51.length = 0;
            Frame = CTFramesetterCreateFrame(v38, v51, a2, 0);

            CTFrameDraw(Frame, context);
            CGContextRestoreGState(context);

            v13 = v48;
            v10 = context;
          }

          v17 += 96;

          --v13;
        }

        while (v13);
      }

      Image = CGBitmapContextCreateImage(v10);
      if (Image)
      {
        a2 = Image;
      }

      else
      {
        sub_1D89797D4();
        swift_allocError();
        *v41 = 3;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_1D89797D4();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }

  return a2;
}

unint64_t sub_1D89797D4()
{
  result = qword_1ECA65F40;
  if (!qword_1ECA65F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65F40);
  }

  return result;
}

uint64_t sub_1D897988C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D89798EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8979954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D897999C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8979A04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D8979A54(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1D8979AAC(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1D8979AE4()
{
  result = qword_1ECA66058;
  if (!qword_1ECA66058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66058);
  }

  return result;
}

uint64_t DebugImageAnnotator.AnnotatorError.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

unint64_t sub_1D8979BD0()
{
  result = qword_1ECA66060;
  if (!qword_1ECA66060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66060);
  }

  return result;
}

CGColorSpace *sub_1D8979C44()
{
  Width = CGImageGetWidth(v0);
  Height = CGImageGetHeight(v0);
  BitsPerComponent = CGImageGetBitsPerComponent(v0);
  BytesPerRow = CGImageGetBytesPerRow(v0);
  result = CGImageGetColorSpace(v0);
  if (result)
  {
    v6 = result;
    BitmapInfo = CGImageGetBitmapInfo(v0);
    v8 = __CGBitmapContextCreate_0(Width, Height, BitsPerComponent, BytesPerRow, v6, BitmapInfo);

    if (v8)
    {
      CGImageGetWidth(v0);
      CGImageGetHeight(v0);
      sub_1D8B161D0();
    }

    else
    {
      sub_1D89797D4();
      swift_allocError();
      *v9 = 2;
      swift_willThrow();
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BCSActionPickerItem.logDescription.getter()
{
  v1 = [v0 label];
  v2 = sub_1D8B15970();

  return v2;
}

uint64_t sub_1D8979FB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void __swiftcall TapToRadarDraft.Component.init(componentID:componentName:componentVersion:)(VisualIntelligenceCore::TapToRadarDraft::Component *__return_ptr retstr, Swift::Int componentID, Swift::String componentName, Swift::String componentVersion)
{
  retstr->componentID = componentID;
  retstr->componentName = componentName;
  retstr->componentVersion = componentVersion;
}

uint64_t TapToRadarDraft.init(bundleID:component:classification:reproducibility:title:problemDescription:keywords:timeOfIssue:attachments:remoteAttachments:extensionIdentifiers:deleteOnAttach:deviceIDs:deviceClasses:deviceModels:remoteDeviceSelections:includeDevicePrefixInTitle:autoDiagnostics:collaborationContactHandles:collaborationGroupChatID:callbackIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, char a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v53 = *(a3 + 4);
  v51 = *a5;
  v52 = *a4;
  v56 = *a20;
  v57 = *a22;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *a9 = 0x4449656C646E7542;
  *(a9 + 8) = 0xE800000000000000;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0;
  strcpy((a9 + 72), "Classification");
  *(a9 + 87) = -18;
  *(a9 + 112) = 6;
  *(a9 + 96) = 0x6375646F72706552;
  *(a9 + 104) = 0xEF7974696C696269;
  *(a9 + 120) = 0x656C746954;
  *(a9 + 128) = 0xE500000000000000;
  *(a9 + 144) = 0;
  *(a9 + 152) = 0x7470697263736544;
  *(a9 + 88) = 10;
  *(a9 + 136) = 0;
  *(a9 + 168) = 0;
  *(a9 + 176) = 0;
  *(a9 + 160) = 0xEB000000006E6F69;
  *(a9 + 192) = 0xE800000000000000;
  *(a9 + 200) = 0;
  *(a9 + 184) = 0x7364726F7779654BLL;
  v29 = type metadata accessor for TapToRadarDraft();
  v30 = (a9 + v29[11]);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450) + 36);
  v50 = v31;
  v32 = sub_1D8B131D0();
  v48 = a3[1];
  v49 = *a3;
  (*(*(v32 - 8) + 56))(&v30[v31], 1, 1, v32);
  *v30 = 0x7349664F656D6954;
  *(v30 + 1) = 0xEB00000000657573;
  v46 = (a9 + v29[12]);
  v47 = v30;
  *v46 = 0x656D686361747441;
  v46[1] = 0xEB0000000073746ELL;
  v46[2] = 0;
  v45 = (a9 + v29[13]);
  v45[1] = 0x80000001D8B43250;
  v45[2] = 0;
  *v45 = 0xD000000000000011;
  v44 = (a9 + v29[14]);
  v44[1] = 0x80000001D8B43270;
  v44[2] = 0;
  *v44 = 0xD000000000000014;
  v43 = (a9 + v29[15]);
  v43[16] = 2;
  strcpy(v43, "DeleteOnAttach");
  v43[15] = -18;
  v33 = (a9 + v29[16]);
  *v33 = 0x4449656369766544;
  v33[1] = 0xE900000000000073;
  v33[2] = 0;
  v34 = a9 + v29[17];
  strcpy(v34, "DeviceClasses");
  *(v34 + 14) = -4864;
  *(v34 + 16) = 0;
  v35 = a9 + v29[18];
  strcpy(v35, "DeviceModels");
  *(v35 + 13) = 0;
  *(v35 + 14) = -5120;
  *(v35 + 16) = 0;
  v36 = a9 + v29[19];
  *(v36 + 24) = 1;
  *v36 = 0xD000000000000016;
  *(v36 + 8) = 0x80000001D8B2D870;
  *(v36 + 16) = 0;
  v37 = a9 + v29[20];
  *(v37 + 16) = 2;
  *v37 = 0xD00000000000001ALL;
  *(v37 + 8) = 0x80000001D8B432B0;
  v38 = a9 + v29[21];
  *(v38 + 16) = 7;
  *v38 = 0x676169446F747541;
  *(v38 + 8) = 0xEF73636974736F6ELL;
  v39 = (a9 + v29[22]);
  *v39 = 0xD00000000000001BLL;
  v39[1] = 0x80000001D8B432D0;
  v39[2] = 0;
  v40 = (a9 + v29[23]);
  v40[2] = 0;
  v40[3] = 0;
  *v40 = 0xD000000000000018;
  v40[1] = 0x80000001D8B432F0;
  v41 = (a9 + v29[24]);
  v41[2] = 0;
  v41[3] = 0;
  *v41 = 0xD000000000000012;
  v41[1] = 0x80000001D8B43310;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  sub_1D8883F0C(*(a9 + 32), *(a9 + 40), *(a9 + 48));
  *(a9 + 32) = v49;
  *(a9 + 48) = v48;
  *(a9 + 64) = v53;
  *(a9 + 88) = v52;
  *(a9 + 112) = v51;
  *(a9 + 136) = a6;
  *(a9 + 144) = a7;
  *(a9 + 168) = a8;
  *(a9 + 176) = a10;
  *(a9 + 200) = a11;
  result = sub_1D87B6EFC(a12, &v47[v50], &qword_1ECA631A8);
  v46[2] = a13;
  v45[2] = a14;
  v44[2] = a15;
  v43[16] = a16;
  v33[2] = a17;
  *(v34 + 16) = a18;
  *(v35 + 16) = a19;
  *(v36 + 16) = v56;
  *(v36 + 24) = 0;
  *(v37 + 16) = a21;
  *(v38 + 16) = v57;
  v39[2] = a23;
  v40[2] = a24;
  v40[3] = a25;
  v41[2] = a26;
  v41[3] = a27;
  return result;
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_1ECA66270;
  if (!qword_1ECA66270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TapToRadarDraft.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1D8B12CE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B12CD0();
  sub_1D8B12CC0();
  MEMORY[0x1DA71C190](7824750, 0xE300000000000000);
  sub_1D897AE2C();
  sub_1D8B12C90();
  sub_1D8B12CA0();
  v9 = sub_1D8B13000();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1D87A14E4(v4, &qword_1ECA630C0);
    sub_1D897DF04();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

uint64_t TapToRadarDraft.timeOfIssue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft() + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450);
  return sub_1D87A0E38(v3 + *(v4 + 36), a1, &qword_1ECA631A8);
}

uint64_t sub_1D897A8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TapToRadarDraft() + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450);
  return sub_1D87A0E38(v3 + *(v4 + 36), a2, &qword_1ECA631A8);
}

uint64_t sub_1D897A918(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for TapToRadarDraft() + 44);
  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450) + 36);

  return sub_1D8986BA0(a1, v4);
}

uint64_t TapToRadarDraft.timeOfIssue.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft() + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450);
  return sub_1D87B6EFC(a1, v3 + *(v4 + 36), &qword_1ECA631A8);
}

uint64_t (*TapToRadarDraft.timeOfIssue.modify())(void)
{
  type metadata accessor for TapToRadarDraft();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450);
  return nullsub_3;
}

uint64_t TapToRadarDraft.attachments.getter()
{
  type metadata accessor for TapToRadarDraft();
}

uint64_t sub_1D897AAF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft() + 48);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.attachments.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft() + 48);

  *(v3 + 16) = a1;
  return result;
}

uint64_t TapToRadarDraft.$attachments.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 48));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t TapToRadarDraft.deleteOnAttach.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft();
  *(v1 + *(result + 60) + 16) = a1;
  return result;
}

uint64_t TapToRadarDraft.$deleteOnAttach.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 60));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t TapToRadarDraft.autoDiagnostics.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TapToRadarDraft();
  *a1 = *(v1 + *(result + 84) + 16);
  return result;
}

uint64_t TapToRadarDraft.autoDiagnostics.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TapToRadarDraft();
  *(v1 + *(result + 84) + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.$autoDiagnostics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 84));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

char *sub_1D897AE2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66540);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v373 = &v323 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v372 = &v323 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v371 = &v323 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v375 = &v323 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v370 = &v323 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v369 = &v323 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v368 = &v323 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v323 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v376 = &v323 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v367 = &v323 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v323 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v365 = &v323 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v364 = &v323 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v382 = (&v323 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v363 = &v323 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v377 = &v323 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v361 = &v323 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v381 = (&v323 - v40);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v379 = (&v323 - v42);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v323 - v43;
  v45 = sub_1D8B12C80();
  v46 = *(v45 - 8);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v326 = &v323 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v325 = &v323 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v357 = &v323 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v356 = &v323 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v355 = &v323 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v354 = &v323 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v336 = &v323 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v335 = &v323 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v334 = &v323 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v333 = &v323 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v332 = &v323 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v331 = &v323 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v353 = &v323 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v352 = &v323 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v324 = &v323 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v351 = &v323 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v350 = &v323 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v349 = &v323 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v330 = &v323 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v329 = &v323 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v348 = &v323 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v347 = &v323 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v346 = &v323 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v345 = &v323 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v344 = &v323 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v343 = &v323 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v328 = &v323 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v362 = &v323 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v342 = &v323 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v341 = &v323 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v340 = &v323 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v339 = &v323 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v338 = &v323 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v337 = &v323 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v327 = &v323 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v360 = &v323 - v118;
  v119 = MEMORY[0x1EEE9AC00](v117);
  v359 = &v323 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v358 = &v323 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v125 = &v323 - v124;
  MEMORY[0x1EEE9AC00](v123);
  v127 = &v323 - v126;
  v387 = MEMORY[0x1E69E7CC0];
  v128 = *(v1 + 24);
  v378 = v1;
  v380 = v46;
  v374 = v19;
  v366 = v26;
  if (!v128)
  {
    v130 = *(v46 + 56);
    v130(v44, 1, 1, v45);
    goto LABEL_7;
  }

  swift_bridgeObjectRetain_n();

  sub_1D8B12C70();

  v129 = v46;
  v130 = *(v46 + 56);
  v130(v44, 0, 1, v45);

  if ((*(v129 + 48))(v44, 1, v45) == 1)
  {
LABEL_7:
    sub_1D87A14E4(v44, &qword_1ECA66540);
    goto LABEL_8;
  }

  v131 = *(v129 + 32);
  v131(v127, v44, v45);
  (*(v129 + 16))(v125, v127, v45);
  v132 = sub_1D87C8770(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v134 = *(v132 + 2);
  v133 = *(v132 + 3);
  if (v134 >= v133 >> 1)
  {
    v132 = sub_1D87C8770(v133 > 1, v134 + 1, 1, v132);
  }

  v135 = v380 + 8;
  (*(v380 + 8))(v127, v45);
  *(v132 + 2) = v134 + 1;
  v131(&v132[((*(v135 + 72) + 32) & ~*(v135 + 72)) + *(v135 + 64) * v134], v125, v45);
  v387 = v132;
  v1 = v378;
LABEL_8:
  v136 = v381;
  v137 = *(v1 + 48);
  if (v137)
  {
    v139 = *(v1 + 56);
    v138 = *(v1 + 64);
    v383 = *(v1 + 32);
    v384 = v137;
    v385 = v139;
    v386 = v138;
    v140 = sub_1D8980318();
    sub_1D88F47E0(v140);
  }

  v141 = *(v1 + 88);

  v142 = v379;
  sub_1D898272C(v141, v379);
  v143 = v142;

  v144 = v380;
  v145 = (v380 + 48);
  v381 = *(v380 + 48);
  if (v381(v142, 1, v45) == 1)
  {
    sub_1D87A14E4(v142, &qword_1ECA66540);
  }

  else
  {
    v146 = *(v144 + 32);
    v147 = v358;
    v146(v358, v143, v45);
    (*(v144 + 16))(v359, v147, v45);
    v148 = v387;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v148 = sub_1D87C8770(0, *(v148 + 2) + 1, 1, v148);
    }

    v150 = *(v148 + 2);
    v149 = *(v148 + 3);
    if (v150 >= v149 >> 1)
    {
      v148 = sub_1D87C8770(v149 > 1, v150 + 1, 1, v148);
    }

    v151 = v380 + 8;
    (*(v380 + 8))(v358, v45);
    *(v148 + 2) = v150 + 1;
    v146(&v148[((*(v151 + 72) + 32) & ~*(v151 + 72)) + *(v151 + 64) * v150], v359, v45);
    v387 = v148;
    v1 = v378;
  }

  v152 = *(v1 + 112);

  sub_1D8982920(v152, v136);

  v153 = v381(v136, 1, v45);
  v379 = v130;
  if (v153 == 1)
  {
    sub_1D87A14E4(v136, &qword_1ECA66540);
    if (*(v1 + 144))
    {
      goto LABEL_19;
    }

LABEL_31:
    v155 = v380;
    v154 = v361;
    v130(v361, 1, 1, v45);
    goto LABEL_32;
  }

  v163 = v380;
  v164 = *(v380 + 32);
  v165 = v360;
  v164(v360, v136, v45);
  v166 = v327;
  (*(v163 + 16))(v327, v165, v45);
  v167 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v167 = sub_1D87C8770(0, *(v167 + 2) + 1, 1, v167);
  }

  v169 = *(v167 + 2);
  v168 = *(v167 + 3);
  if (v169 >= v168 >> 1)
  {
    v167 = sub_1D87C8770(v168 > 1, v169 + 1, 1, v167);
  }

  v170 = v380 + 8;
  (*(v380 + 8))(v360, v45);
  *(v167 + 2) = v169 + 1;
  v164(&v167[((*(v170 + 72) + 32) & ~*(v170 + 72)) + *(v170 + 64) * v169], v166, v45);
  v387 = v167;
  v130 = v379;
  if (!*(v1 + 144))
  {
    goto LABEL_31;
  }

LABEL_19:
  swift_bridgeObjectRetain_n();

  v154 = v361;
  sub_1D8B12C70();

  v155 = v380;
  v130(v154, 0, 1, v45);

  if (v381(v154, 1, v45) != 1)
  {
    v156 = *(v155 + 32);
    v157 = v337;
    v156(v337, v154, v45);
    (*(v155 + 16))(v338, v157, v45);
    v158 = v387;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v158 = sub_1D87C8770(0, *(v158 + 2) + 1, 1, v158);
    }

    v160 = *(v158 + 2);
    v159 = *(v158 + 3);
    if (v160 >= v159 >> 1)
    {
      v158 = sub_1D87C8770(v159 > 1, v160 + 1, 1, v158);
    }

    v155 = v380;
    v161 = v380 + 8;
    (*(v380 + 8))(v337, v45);
    *(v158 + 2) = v160 + 1;
    v156(&v158[((*(v161 + 72) + 32) & ~*(v161 + 72)) + *(v161 + 64) * v160], v338, v45);
    v387 = v158;
    v130 = v379;
    if (!*(v1 + 176))
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_32:
  sub_1D87A14E4(v154, &qword_1ECA66540);
  if (!*(v1 + 176))
  {
LABEL_25:
    v162 = v377;
    v130(v377, 1, 1, v45);
LABEL_34:
    sub_1D87A14E4(v162, &qword_1ECA66540);
    goto LABEL_40;
  }

LABEL_33:
  swift_bridgeObjectRetain_n();

  v162 = v377;
  sub_1D8B12C70();

  v130(v162, 0, 1, v45);

  if (v381(v162, 1, v45) == 1)
  {
    goto LABEL_34;
  }

  v171 = *(v155 + 32);
  v172 = v339;
  v171(v339, v162, v45);
  (*(v155 + 16))(v340, v172, v45);
  v173 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v173 = sub_1D87C8770(0, *(v173 + 2) + 1, 1, v173);
  }

  v175 = *(v173 + 2);
  v174 = *(v173 + 3);
  if (v175 >= v174 >> 1)
  {
    v173 = sub_1D87C8770(v174 > 1, v175 + 1, 1, v173);
  }

  v155 = v380;
  v176 = v380 + 8;
  (*(v380 + 8))(v339, v45);
  *(v173 + 2) = v175 + 1;
  v171(&v173[((*(v176 + 72) + 32) & ~*(v176 + 72)) + *(v176 + 64) * v175], v340, v45);
  v387 = v173;
  v130 = v379;
LABEL_40:
  v377 = v145;
  if (!*(v1 + 200))
  {
    v179 = v363;
    v130(v363, 1, 1, v45);
LABEL_46:
    sub_1D87A14E4(v179, &qword_1ECA66540);
    v181 = v382;
    goto LABEL_52;
  }

  sub_1D89834AC(v177);
  if (v178)
  {
    v179 = v363;
    sub_1D8B12C70();

    v180 = 0;
  }

  else
  {
    v180 = 1;
    v179 = v363;
  }

  v130(v179, v180, 1, v45);

  if (v381(v179, 1, v45) == 1)
  {
    goto LABEL_46;
  }

  v182 = *(v155 + 32);
  v183 = v341;
  v182(v341, v179, v45);
  (*(v155 + 16))(v342, v183, v45);
  v184 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v184 = sub_1D87C8770(0, *(v184 + 2) + 1, 1, v184);
  }

  v186 = *(v184 + 2);
  v185 = *(v184 + 3);
  v181 = v382;
  if (v186 >= v185 >> 1)
  {
    v184 = sub_1D87C8770(v185 > 1, v186 + 1, 1, v184);
  }

  v187 = v380 + 8;
  (*(v380 + 8))(v341, v45);
  *(v184 + 2) = v186 + 1;
  v182(&v184[((*(v187 + 72) + 32) & ~*(v187 + 72)) + *(v187 + 64) * v186], v342, v45);
  v387 = v184;
  v130 = v379;
LABEL_52:
  v382 = type metadata accessor for TapToRadarDraft();
  sub_1D8982A78(v181);
  if (v381(v181, 1, v45) == 1)
  {
    sub_1D87A14E4(v181, &qword_1ECA66540);
  }

  else
  {
    v188 = v380;
    v189 = *(v380 + 32);
    v190 = v362;
    v189(v362, v181, v45);
    v191 = v328;
    (*(v188 + 16))(v328, v190, v45);
    v192 = v387;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v192 = sub_1D87C8770(0, *(v192 + 2) + 1, 1, v192);
    }

    v194 = *(v192 + 2);
    v193 = *(v192 + 3);
    if (v194 >= v193 >> 1)
    {
      v192 = sub_1D87C8770(v193 > 1, v194 + 1, 1, v192);
    }

    v195 = v380 + 8;
    (*(v380 + 8))(v362, v45);
    *(v192 + 2) = v194 + 1;
    v189(&v192[((*(v195 + 72) + 32) & ~*(v195 + 72)) + *(v195 + 64) * v194], v191, v45);
    v387 = v192;
    v1 = v378;
    v130 = v379;
  }

  if (!*(v1 + v382[12] + 16))
  {
    v197 = v380;
    v199 = v364;
    v130(v364, 1, 1, v45);
LABEL_65:
    sub_1D87A14E4(v199, &qword_1ECA66540);
    goto LABEL_71;
  }

  sub_1D898326C(v196);
  v197 = v380;
  if (v198)
  {
    v199 = v364;
    sub_1D8B12C70();

    v200 = 0;
  }

  else
  {
    v200 = 1;
    v199 = v364;
  }

  v130(v199, v200, 1, v45);

  if (v381(v199, 1, v45) == 1)
  {
    goto LABEL_65;
  }

  v201 = *(v197 + 32);
  v202 = v343;
  v201(v343, v199, v45);
  (*(v197 + 16))(v344, v202, v45);
  v203 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v203 = sub_1D87C8770(0, *(v203 + 2) + 1, 1, v203);
  }

  v205 = *(v203 + 2);
  v204 = *(v203 + 3);
  if (v205 >= v204 >> 1)
  {
    v203 = sub_1D87C8770(v204 > 1, v205 + 1, 1, v203);
  }

  v197 = v380;
  v206 = v380 + 8;
  (*(v380 + 8))(v343, v45);
  *(v203 + 2) = v205 + 1;
  v201(&v203[((*(v206 + 72) + 32) & ~*(v206 + 72)) + *(v206 + 64) * v205], v344, v45);
  v387 = v203;
  v1 = v378;
  v130 = v379;
LABEL_71:
  if (!*(v1 + v382[13] + 16))
  {
    v209 = v365;
    v130(v365, 1, 1, v45);
LABEL_77:
    sub_1D87A14E4(v209, &qword_1ECA66540);
    v211 = v366;
    goto LABEL_83;
  }

  sub_1D898326C(v207);
  if (v208)
  {
    v209 = v365;
    sub_1D8B12C70();

    v210 = 0;
  }

  else
  {
    v210 = 1;
    v209 = v365;
  }

  v130(v209, v210, 1, v45);

  if (v381(v209, 1, v45) == 1)
  {
    goto LABEL_77;
  }

  v212 = *(v197 + 32);
  v213 = v345;
  v212(v345, v209, v45);
  (*(v197 + 16))(v346, v213, v45);
  v214 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v214 = sub_1D87C8770(0, *(v214 + 2) + 1, 1, v214);
  }

  v216 = *(v214 + 2);
  v215 = *(v214 + 3);
  v211 = v366;
  if (v216 >= v215 >> 1)
  {
    v214 = sub_1D87C8770(v215 > 1, v216 + 1, 1, v214);
  }

  v197 = v380;
  v217 = v380 + 8;
  (*(v380 + 8))(v345, v45);
  *(v214 + 2) = v216 + 1;
  v212(&v214[((*(v217 + 72) + 32) & ~*(v217 + 72)) + *(v217 + 64) * v216], v346, v45);
  v387 = v214;
  v1 = v378;
  v130 = v379;
LABEL_83:
  if (!*(v1 + v382[14] + 16))
  {
    v130(v211, 1, 1, v45);
LABEL_89:
    sub_1D87A14E4(v211, &qword_1ECA66540);
    v221 = v374;
    goto LABEL_95;
  }

  sub_1D8983110(v218);
  if (v219)
  {
    sub_1D8B12C70();

    v220 = 0;
  }

  else
  {
    v220 = 1;
  }

  v130(v211, v220, 1, v45);

  if (v381(v211, 1, v45) == 1)
  {
    goto LABEL_89;
  }

  v222 = *(v197 + 32);
  v223 = v347;
  v222(v347, v211, v45);
  (*(v197 + 16))(v348, v223, v45);
  v224 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v224 = sub_1D87C8770(0, *(v224 + 2) + 1, 1, v224);
  }

  v221 = v374;
  v226 = *(v224 + 2);
  v225 = *(v224 + 3);
  if (v226 >= v225 >> 1)
  {
    v224 = sub_1D87C8770(v225 > 1, v226 + 1, 1, v224);
  }

  v197 = v380;
  v227 = v380 + 8;
  (*(v380 + 8))(v347, v45);
  *(v224 + 2) = v226 + 1;
  v222(&v224[((*(v227 + 72) + 32) & ~*(v227 + 72)) + *(v227 + 64) * v226], v348, v45);
  v387 = v224;
  v1 = v378;
  v130 = v379;
LABEL_95:
  if (*(v1 + v382[15] + 16) == 2)
  {
    v228 = v367;
    v130(v367, 1, 1, v45);
    v229 = v376;
LABEL_98:
    sub_1D87A14E4(v228, &qword_1ECA66540);
    goto LABEL_104;
  }

  v228 = v367;
  sub_1D8B12C70();

  v130(v228, 0, 1, v45);

  v230 = v381(v228, 1, v45);
  v229 = v376;
  if (v230 == 1)
  {
    goto LABEL_98;
  }

  v231 = *(v197 + 32);
  v232 = v329;
  v231(v329, v228, v45);
  (*(v197 + 16))(v330, v232, v45);
  v233 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v233 = sub_1D87C8770(0, *(v233 + 2) + 1, 1, v233);
  }

  v235 = *(v233 + 2);
  v234 = *(v233 + 3);
  if (v235 >= v234 >> 1)
  {
    v233 = sub_1D87C8770(v234 > 1, v235 + 1, 1, v233);
  }

  v197 = v380;
  v236 = v380 + 8;
  (*(v380 + 8))(v329, v45);
  *(v233 + 2) = v235 + 1;
  v231(&v233[((*(v236 + 72) + 32) & ~*(v236 + 72)) + *(v236 + 64) * v235], v330, v45);
  v387 = v233;
  v1 = v378;
  v130 = v379;
  v229 = v376;
LABEL_104:
  if (!*(v1 + v382[16] + 16))
  {
    v130(v229, 1, 1, v45);
LABEL_110:
    sub_1D87A14E4(v229, &qword_1ECA66540);
    goto LABEL_116;
  }

  sub_1D8983110(v237);
  if (v238)
  {
    v229 = v376;
    sub_1D8B12C70();

    v239 = 0;
  }

  else
  {
    v239 = 1;
    v229 = v376;
  }

  v130(v229, v239, 1, v45);

  v240 = v381(v229, 1, v45);
  v221 = v374;
  if (v240 == 1)
  {
    goto LABEL_110;
  }

  v241 = *(v197 + 32);
  v242 = v349;
  v241(v349, v229, v45);
  (*(v197 + 16))(v350, v242, v45);
  v243 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v243 = sub_1D87C8770(0, *(v243 + 2) + 1, 1, v243);
  }

  v245 = *(v243 + 2);
  v244 = *(v243 + 3);
  if (v245 >= v244 >> 1)
  {
    v243 = sub_1D87C8770(v244 > 1, v245 + 1, 1, v243);
  }

  v197 = v380;
  v246 = v380 + 8;
  (*(v380 + 8))(v349, v45);
  *(v243 + 2) = v245 + 1;
  v241(&v243[((*(v246 + 72) + 32) & ~*(v246 + 72)) + *(v246 + 64) * v245], v350, v45);
  v387 = v243;
  v1 = v378;
  v130 = v379;
LABEL_116:
  if (!*(v1 + v382[17] + 16))
  {
    v130(v221, 1, 1, v45);
LABEL_122:
    sub_1D87A14E4(v221, &qword_1ECA66540);
    goto LABEL_128;
  }

  sub_1D8982F0C(v247);
  if (v248)
  {
    sub_1D8B12C70();

    v249 = 0;
  }

  else
  {
    v249 = 1;
  }

  v130(v221, v249, 1, v45);

  if (v381(v221, 1, v45) == 1)
  {
    goto LABEL_122;
  }

  v250 = *(v197 + 32);
  v251 = v351;
  v250(v351, v221, v45);
  v252 = v324;
  (*(v197 + 16))(v324, v251, v45);
  v253 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v253 = sub_1D87C8770(0, *(v253 + 2) + 1, 1, v253);
  }

  v255 = *(v253 + 2);
  v254 = *(v253 + 3);
  if (v255 >= v254 >> 1)
  {
    v253 = sub_1D87C8770(v254 > 1, v255 + 1, 1, v253);
  }

  v197 = v380;
  v256 = v380 + 8;
  (*(v380 + 8))(v351, v45);
  *(v253 + 2) = v255 + 1;
  v250(&v253[((*(v256 + 72) + 32) & ~*(v256 + 72)) + *(v256 + 64) * v255], v252, v45);
  v387 = v253;
  v1 = v378;
  v130 = v379;
LABEL_128:
  if (!*(v1 + v382[18] + 16))
  {
    v259 = v368;
    v130(v368, 1, 1, v45);
LABEL_134:
    sub_1D87A14E4(v259, &qword_1ECA66540);
    goto LABEL_140;
  }

  sub_1D8983110(v257);
  if (v258)
  {
    v259 = v368;
    sub_1D8B12C70();

    v260 = 0;
  }

  else
  {
    v260 = 1;
    v259 = v368;
  }

  v130(v259, v260, 1, v45);

  if (v381(v259, 1, v45) == 1)
  {
    goto LABEL_134;
  }

  v261 = *(v197 + 32);
  v262 = v352;
  v261(v352, v259, v45);
  (*(v197 + 16))(v353, v262, v45);
  v263 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v263 = sub_1D87C8770(0, *(v263 + 2) + 1, 1, v263);
  }

  v265 = *(v263 + 2);
  v264 = *(v263 + 3);
  if (v265 >= v264 >> 1)
  {
    v263 = sub_1D87C8770(v264 > 1, v265 + 1, 1, v263);
  }

  v197 = v380;
  v266 = v380 + 8;
  (*(v380 + 8))(v352, v45);
  *(v263 + 2) = v265 + 1;
  v261(&v263[((*(v266 + 72) + 32) & ~*(v266 + 72)) + *(v266 + 64) * v265], v353, v45);
  v387 = v263;
  v1 = v378;
  v130 = v379;
LABEL_140:
  v267 = v1 + v382[19];
  if (*(v267 + 24))
  {
    v268 = v369;
    v130(v369, 1, 1, v45);
LABEL_146:
    sub_1D87A14E4(v268, &qword_1ECA66540);
    goto LABEL_152;
  }

  *&v383 = *(v267 + 16);

  TapToRadarDraft.RemoteDeviceSelections.urlParameterValue.getter();
  if (v269)
  {
    v268 = v369;
    sub_1D8B12C70();

    v270 = 0;
  }

  else
  {
    v270 = 1;
    v268 = v369;
  }

  v130(v268, v270, 1, v45);

  if (v381(v268, 1, v45) == 1)
  {
    goto LABEL_146;
  }

  v271 = *(v197 + 32);
  v272 = v331;
  v271(v331, v268, v45);
  (*(v197 + 16))(v332, v272, v45);
  v273 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v273 = sub_1D87C8770(0, *(v273 + 2) + 1, 1, v273);
  }

  v275 = *(v273 + 2);
  v274 = *(v273 + 3);
  if (v275 >= v274 >> 1)
  {
    v273 = sub_1D87C8770(v274 > 1, v275 + 1, 1, v273);
  }

  v197 = v380;
  v276 = v380 + 8;
  (*(v380 + 8))(v331, v45);
  *(v273 + 2) = v275 + 1;
  v271(&v273[((*(v276 + 72) + 32) & ~*(v276 + 72)) + *(v276 + 64) * v275], v332, v45);
  v387 = v273;
  v1 = v378;
  v130 = v379;
LABEL_152:
  if (*(v1 + v382[20] + 16) == 2)
  {
    v277 = v370;
    v130(v370, 1, 1, v45);
    v278 = v375;
LABEL_155:
    sub_1D87A14E4(v277, &qword_1ECA66540);
    goto LABEL_161;
  }

  v277 = v370;
  sub_1D8B12C70();

  v130(v277, 0, 1, v45);

  v279 = v381(v277, 1, v45);
  v278 = v375;
  if (v279 == 1)
  {
    goto LABEL_155;
  }

  v280 = *(v197 + 32);
  v281 = v333;
  v280(v333, v277, v45);
  (*(v197 + 16))(v334, v281, v45);
  v282 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v282 = sub_1D87C8770(0, *(v282 + 2) + 1, 1, v282);
  }

  v284 = *(v282 + 2);
  v283 = *(v282 + 3);
  if (v284 >= v283 >> 1)
  {
    v282 = sub_1D87C8770(v283 > 1, v284 + 1, 1, v282);
  }

  v197 = v380;
  v285 = v380 + 8;
  (*(v380 + 8))(v333, v45);
  *(v282 + 2) = v284 + 1;
  v280(&v282[((*(v285 + 72) + 32) & ~*(v285 + 72)) + *(v285 + 64) * v284], v334, v45);
  v387 = v282;
  v1 = v378;
  v130 = v379;
  v278 = v375;
LABEL_161:
  if (*(v1 + v382[21] + 16) == 7)
  {
    v130(v278, 1, 1, v45);
LABEL_167:
    sub_1D87A14E4(v278, &qword_1ECA66540);
    goto LABEL_173;
  }

  LOBYTE(v383) = *(v1 + v382[21] + 16);

  TapToRadarDraft.AutoDiagnostics.urlParameterValue.getter();
  if (v286)
  {
    v287 = v375;
    sub_1D8B12C70();

    v288 = 0;
  }

  else
  {
    v288 = 1;
    v287 = v375;
  }

  v130(v287, v288, 1, v45);

  v278 = v287;
  if (v381(v287, 1, v45) == 1)
  {
    goto LABEL_167;
  }

  v289 = *(v197 + 32);
  v290 = v335;
  v289(v335, v278, v45);
  (*(v197 + 16))(v336, v290, v45);
  v291 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v291 = sub_1D87C8770(0, *(v291 + 2) + 1, 1, v291);
  }

  v293 = *(v291 + 2);
  v292 = *(v291 + 3);
  if (v293 >= v292 >> 1)
  {
    v291 = sub_1D87C8770(v292 > 1, v293 + 1, 1, v291);
  }

  v197 = v380;
  v294 = v380 + 8;
  (*(v380 + 8))(v335, v45);
  *(v291 + 2) = v293 + 1;
  v289(&v291[((*(v294 + 72) + 32) & ~*(v294 + 72)) + *(v294 + 64) * v293], v336, v45);
  v387 = v291;
  v1 = v378;
  v130 = v379;
LABEL_173:
  if (!*(v1 + v382[22] + 16))
  {
    v299 = v130;
    v297 = v371;
    v299(v371, 1, 1, v45);
LABEL_179:
    sub_1D87A14E4(v297, &qword_1ECA66540);
    goto LABEL_185;
  }

  sub_1D8983110(v295);
  if (v296)
  {
    v297 = v371;
    sub_1D8B12C70();

    v298 = 0;
  }

  else
  {
    v298 = 1;
    v297 = v371;
  }

  v379(v297, v298, 1, v45);

  if (v381(v297, 1, v45) == 1)
  {
    goto LABEL_179;
  }

  v300 = *(v197 + 32);
  v301 = v354;
  v300(v354, v297, v45);
  (*(v197 + 16))(v355, v301, v45);
  v302 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v302 = sub_1D87C8770(0, *(v302 + 2) + 1, 1, v302);
  }

  v304 = *(v302 + 2);
  v303 = *(v302 + 3);
  if (v304 >= v303 >> 1)
  {
    v302 = sub_1D87C8770(v303 > 1, v304 + 1, 1, v302);
  }

  v197 = v380;
  v305 = v380 + 8;
  (*(v380 + 8))(v354, v45);
  *(v302 + 2) = v304 + 1;
  v300(&v302[((*(v305 + 72) + 32) & ~*(v305 + 72)) + *(v305 + 64) * v304], v355, v45);
  v387 = v302;
  v1 = v378;
LABEL_185:
  v306 = v379;
  if (!*(v1 + v382[23] + 24))
  {
    v307 = v372;
    v379(v372, 1, 1, v45);
    goto LABEL_193;
  }

  swift_bridgeObjectRetain_n();

  v307 = v372;
  sub_1D8B12C70();

  v306(v307, 0, 1, v45);

  if (v381(v307, 1, v45) == 1)
  {
LABEL_193:
    sub_1D87A14E4(v307, &qword_1ECA66540);
    goto LABEL_194;
  }

  v308 = *(v197 + 32);
  v309 = v356;
  v308(v356, v307, v45);
  (*(v197 + 16))(v357, v309, v45);
  v310 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v310 = sub_1D87C8770(0, *(v310 + 2) + 1, 1, v310);
  }

  v312 = *(v310 + 2);
  v311 = *(v310 + 3);
  if (v312 >= v311 >> 1)
  {
    v310 = sub_1D87C8770(v311 > 1, v312 + 1, 1, v310);
  }

  v197 = v380;
  v313 = v380 + 8;
  (*(v380 + 8))(v356, v45);
  *(v310 + 2) = v312 + 1;
  v308(&v310[((*(v313 + 72) + 32) & ~*(v313 + 72)) + *(v313 + 64) * v312], v357, v45);
  v387 = v310;
  v1 = v378;
  v306 = v379;
LABEL_194:
  if (!*(v1 + v382[24] + 24))
  {
    v314 = v373;
    v306(v373, 1, 1, v45);
    goto LABEL_202;
  }

  swift_bridgeObjectRetain_n();

  v314 = v373;
  sub_1D8B12C70();

  v306(v314, 0, 1, v45);

  if (v381(v314, 1, v45) == 1)
  {
LABEL_202:
    sub_1D87A14E4(v314, &qword_1ECA66540);
    return v387;
  }

  v315 = *(v197 + 32);
  v316 = v325;
  v315(v325, v314, v45);
  v317 = v326;
  (*(v197 + 16))(v326, v316, v45);
  v318 = v387;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v318 = sub_1D87C8770(0, *(v318 + 2) + 1, 1, v318);
  }

  v320 = *(v318 + 2);
  v319 = *(v318 + 3);
  if (v320 >= v319 >> 1)
  {
    v318 = sub_1D87C8770(v319 > 1, v320 + 1, 1, v318);
  }

  v321 = v380 + 8;
  (*(v380 + 8))(v316, v45);
  *(v318 + 2) = v320 + 1;
  v315(&v318[((*(v321 + 72) + 32) & ~*(v321 + 72)) + *(v321 + 64) * v320], v317, v45);
  return v318;
}

unint64_t sub_1D897DF04()
{
  result = qword_1ECA66068;
  if (!qword_1ECA66068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66068);
  }

  return result;
}

unint64_t sub_1D897DF58(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x6E656E6F706D6F63;
      break;
    case 2:
      result = 0x6966697373616C63;
      break;
    case 3:
      result = 0x6375646F72706572;
      break;
    case 4:
      result = 0x656C746974;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x7364726F7779656BLL;
      break;
    case 7:
      result = 0x7349664F656D6974;
      break;
    case 8:
      result = 0x656D686361747461;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x6E4F6574656C6564;
      break;
    case 12:
      result = 0x4449656369766564;
      break;
    case 13:
      result = 0x6C43656369766564;
      break;
    case 14:
      result = 0x6F4D656369766564;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0x676169446F747561;
      break;
    case 18:
      result = 0xD00000000000001BLL;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D897E208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D89863D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D897E23C(uint64_t a1)
{
  v2 = sub_1D897EF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D897E278(uint64_t a1)
{
  v2 = sub_1D897EF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TapToRadarDraft.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66070);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v74 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D897EF18();
  sub_1D8B16DD0();
  v10 = *(v4 + 8);
  v12 = *(v4 + 16);
  v11 = *(v4 + 24);
  v77 = *v4;
  v78 = v10;
  v79 = v12;
  v80 = v11;
  v82 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66080);
  sub_1D881CF20(&qword_1ECA66088, &qword_1ECA66080);
  sub_1D8B16AE0();

  if (v3)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v13 = *(v4 + 40);
  v14 = *(v4 + 48);
  v15 = *(v4 + 56);
  v16 = *(v4 + 64);
  v77 = *(v4 + 32);
  v78 = v13;
  v79 = v14;
  v80 = v15;
  v81 = v16;
  v82 = 1;
  sub_1D897EF6C(v77, v13, v14);
  sub_1D897EFB0();
  sub_1D8B16A80();
  v76 = v7;
  sub_1D8883F0C(v77, v78, v79);
  v18 = *(v4 + 80);
  v19 = *(v4 + 88);
  v77 = *(v4 + 72);
  v78 = v18;
  LOBYTE(v79) = v19;
  v82 = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66098);
  sub_1D881CF20(&qword_1ECA660A0, &qword_1ECA66098);
  sub_1D8B16AE0();

  v20 = *(v4 + 104);
  v21 = *(v4 + 112);
  v77 = *(v4 + 96);
  v78 = v20;
  LOBYTE(v79) = v21;
  v82 = 3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660A8);
  sub_1D881CF20(&qword_1ECA660B0, &qword_1ECA660A8);
  sub_1D8B16AE0();

  v22 = *(v4 + 128);
  v24 = *(v4 + 136);
  v23 = *(v4 + 144);
  v77 = *(v4 + 120);
  v78 = v22;
  v79 = v24;
  v80 = v23;
  v82 = 4;

  sub_1D8B16AE0();

  v25 = *(v4 + 160);
  v27 = *(v4 + 168);
  v26 = *(v4 + 176);
  v77 = *(v4 + 152);
  v78 = v25;
  v79 = v27;
  v80 = v26;
  v82 = 5;

  sub_1D8B16AE0();

  v28 = *(v4 + 192);
  v29 = *(v4 + 200);
  v77 = *(v4 + 184);
  v78 = v28;
  v79 = v29;
  v82 = 6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660B8);
  sub_1D881CF20(&qword_1ECA660C0, &qword_1ECA660B8);
  sub_1D8B16AE0();

  v75 = type metadata accessor for TapToRadarDraft();
  LOBYTE(v77) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450);
  sub_1D881CF20(&qword_1ECA660C8, &qword_1ECA64450);
  sub_1D8B16AE0();
  v30 = (v4 + v75[12]);
  v31 = v30[1];
  v32 = v30[2];
  v77 = *v30;
  v78 = v31;
  v79 = v32;
  v82 = 8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660D0);
  sub_1D881CF20(&qword_1ECA660D8, &qword_1ECA660D0);
  sub_1D8B16AE0();

  v33 = (v4 + v75[13]);
  v34 = v33[1];
  v35 = v33[2];
  v77 = *v33;
  v78 = v34;
  v79 = v35;
  v82 = 9;

  sub_1D8B16AE0();

  v36 = (v4 + v75[14]);
  v37 = v36[1];
  v38 = v36[2];
  v77 = *v36;
  v78 = v37;
  v79 = v38;
  v82 = 10;

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660E0);
  v74[3] = sub_1D881CF20(&qword_1ECA660E8, &qword_1ECA660E0);
  v74[4] = v39;
  sub_1D8B16AE0();

  v40 = v4 + v75[15];
  v42 = *v40;
  v41 = *(v40 + 8);
  LOBYTE(v40) = *(v40 + 16);
  v77 = v42;
  v78 = v41;
  LOBYTE(v79) = v40;
  v82 = 11;

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660F0);
  v74[1] = sub_1D881CF20(&qword_1ECA660F8, &qword_1ECA660F0);
  v74[2] = v43;
  sub_1D8B16AE0();

  v44 = (v4 + v75[16]);
  v45 = v44[1];
  v46 = v44[2];
  v77 = *v44;
  v78 = v45;
  v79 = v46;
  v82 = 12;

  sub_1D8B16AE0();

  v47 = (v4 + v75[17]);
  v48 = v47[1];
  v49 = v47[2];
  v77 = *v47;
  v78 = v48;
  v79 = v49;
  v82 = 13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66100);
  sub_1D881CF20(&qword_1ECA66108, &qword_1ECA66100);
  sub_1D8B16AE0();

  v50 = (v4 + v75[18]);
  v51 = v50[1];
  v52 = v50[2];
  v77 = *v50;
  v78 = v51;
  v79 = v52;
  v82 = 14;

  sub_1D8B16AE0();

  v53 = v4 + v75[19];
  v55 = *v53;
  v54 = *(v53 + 8);
  v56 = *(v53 + 16);
  LOBYTE(v53) = *(v53 + 24);
  v77 = v55;
  v78 = v54;
  v79 = v56;
  LOBYTE(v80) = v53;
  v82 = 15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66110);
  sub_1D881CF20(&qword_1ECA66118, &qword_1ECA66110);
  sub_1D8B16AE0();

  v57 = v4 + v75[20];
  v59 = *v57;
  v58 = *(v57 + 8);
  LOBYTE(v57) = *(v57 + 16);
  v77 = v59;
  v78 = v58;
  LOBYTE(v79) = v57;
  v82 = 16;

  sub_1D8B16AE0();

  v60 = v4 + v75[21];
  v62 = *v60;
  v61 = *(v60 + 8);
  LOBYTE(v60) = *(v60 + 16);
  v77 = v62;
  v78 = v61;
  LOBYTE(v79) = v60;
  v82 = 17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66120);
  sub_1D881CF20(&qword_1ECA66128, &qword_1ECA66120);
  sub_1D8B16AE0();

  v63 = (v4 + v75[22]);
  v64 = v63[1];
  v65 = v63[2];
  v77 = *v63;
  v78 = v64;
  v79 = v65;
  v82 = 18;

  sub_1D8B16AE0();

  v66 = (v4 + v75[23]);
  v67 = v66[1];
  v69 = v66[2];
  v68 = v66[3];
  v77 = *v66;
  v78 = v67;
  v79 = v69;
  v80 = v68;
  v82 = 19;

  sub_1D8B16AE0();

  v70 = (v4 + v75[24]);
  v71 = v70[1];
  v73 = v70[2];
  v72 = v70[3];
  v77 = *v70;
  v78 = v71;
  v79 = v73;
  v80 = v72;
  v82 = 20;

  sub_1D8B16AE0();

  return (*(v76 + 8))(v9, v6);
}

unint64_t sub_1D897EF18()
{
  result = qword_1ECA66078;
  if (!qword_1ECA66078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66078);
  }

  return result;
}

uint64_t sub_1D897EF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1D897EFB0()
{
  result = qword_1ECA66090;
  if (!qword_1ECA66090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66090);
  }

  return result;
}

uint64_t TapToRadarDraft.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a1;
  v83 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450);
  MEMORY[0x1EEE9AC00](v2);
  *&v93 = &v77 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66130);
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x1EEE9AC00](v4);
  *&v98 = &v77 - v5;
  v6 = type metadata accessor for TapToRadarDraft();
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *v9 = 0x4449656C646E7542;
  *(v9 + 1) = 0xE800000000000000;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  v9[88] = 10;
  *(v9 + 8) = 0;
  strcpy(v9 + 72, "Classification");
  v9[87] = -18;
  v9[112] = 6;
  *(v9 + 12) = 0x6375646F72706552;
  *(v9 + 13) = 0xEF7974696C696269;
  *(v9 + 17) = 0;
  *(v9 + 18) = 0;
  *(v9 + 15) = 0x656C746954;
  *(v9 + 16) = 0xE500000000000000;
  *(v9 + 21) = 0;
  *(v9 + 22) = 0;
  *(v9 + 19) = 0x7470697263736544;
  *(v9 + 20) = 0xEB000000006E6F69;
  *(v9 + 24) = 0xE800000000000000;
  *(v9 + 25) = 0;
  *(v9 + 23) = 0x7364726F7779654BLL;
  v10 = &v9[v7[13]];
  v92 = v2;
  v11 = *(v2 + 36);
  v12 = sub_1D8B131D0();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *v10 = 0x7349664F656D6954;
  *(v10 + 1) = 0xEB00000000657573;
  v91 = v10;
  v13 = &v9[v7[14]];
  *v13 = 0x656D686361747441;
  *&v90 = v13;
  *(v13 + 1) = 0xEB0000000073746ELL;
  *(v13 + 2) = 0;
  v14 = &v9[v7[15]];
  *(v14 + 1) = 0x80000001D8B43250;
  *(v14 + 2) = 0;
  *v14 = 0xD000000000000011;
  v89 = v14;
  v15 = &v9[v7[16]];
  *(v15 + 1) = 0x80000001D8B43270;
  *(v15 + 2) = 0;
  *v15 = 0xD000000000000014;
  v88 = v15;
  v16 = &v9[v7[17]];
  v16[16] = 2;
  strcpy(v16, "DeleteOnAttach");
  v16[15] = -18;
  v87 = v16;
  v17 = &v9[v7[18]];
  *v17 = 0x4449656369766544;
  v86 = v17;
  *(v17 + 1) = 0xE900000000000073;
  *(v17 + 2) = 0;
  v18 = &v9[v7[19]];
  strcpy(v18, "DeviceClasses");
  v85 = v18;
  *(v18 + 7) = -4864;
  *(v18 + 2) = 0;
  v19 = &v9[v7[20]];
  strcpy(v19, "DeviceModels");
  v84 = v19;
  v19[13] = 0;
  *(v19 + 7) = -5120;
  *(v19 + 2) = 0;
  v20 = &v9[v7[21]];
  *(v20 + 1) = 0x80000001D8B2D870;
  *(v20 + 2) = 0;
  v20[24] = 1;
  *v20 = 0xD000000000000016;
  v21 = &v9[v7[22]];
  v21[16] = 2;
  *v21 = 0xD00000000000001ALL;
  *(v21 + 1) = 0x80000001D8B432B0;
  v22 = &v9[v7[23]];
  v22[16] = 7;
  *v22 = 0x676169446F747541;
  *(v22 + 1) = 0xEF73636974736F6ELL;
  v23 = &v9[v7[24]];
  *(v23 + 1) = 0x80000001D8B432D0;
  *(v23 + 2) = 0;
  *v23 = 0xD00000000000001BLL;
  v24 = &v9[v7[25]];
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *v24 = 0xD000000000000018;
  *(v24 + 1) = 0x80000001D8B432F0;
  v25 = v7[26];
  v97 = v9;
  v26 = &v9[v25];
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *v26 = 0xD000000000000012;
  *(v26 + 1) = 0x80000001D8B43310;
  __swift_project_boxed_opaque_existential_1(v99, v99[3]);
  sub_1D897EF18();
  v27 = v96;
  sub_1D8B16DB0();
  if (v27)
  {
    v29 = v97;
    __swift_destroy_boxed_opaque_existential_1(v99);
    v76 = v29;
  }

  else
  {
    *&v96 = v20;
    v82 = v21;
    v79 = v22;
    v80 = v23;
    v81 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66080);
    v103 = 0;
    v28 = sub_1D881CF20(&qword_1ECA66138, &qword_1ECA66080);
    sub_1D8B16A10();
    v78 = v100;
    v31 = v101;
    v32 = v97;

    *v32 = v78;
    *(v32 + 16) = v31;
    v103 = 1;
    sub_1D8980230();
    sub_1D8B169B0();
    v33 = v102;
    v34 = *(v32 + 32);
    v35 = *(v32 + 40);
    v36 = *(v32 + 48);
    v78 = v100;
    v77 = v101;
    sub_1D8883F0C(v34, v35, v36);
    v37 = v77;
    *(v32 + 32) = v78;
    *(v32 + 48) = v37;
    *(v32 + 64) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66098);
    v103 = 2;
    sub_1D881CF20(&qword_1ECA66148, &qword_1ECA66098);
    sub_1D8B16A10();
    v38 = v100;
    v39 = v101;

    *(v32 + 72) = v38;
    *(v32 + 88) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660A8);
    v103 = 3;
    sub_1D881CF20(&qword_1ECA66150, &qword_1ECA660A8);
    sub_1D8B16A10();
    v40 = v100;
    v41 = v101;

    *(v32 + 96) = v40;
    *(v32 + 112) = v41;
    v103 = 4;
    sub_1D8B16A10();
    v78 = v100;
    v42 = v101;

    *(v32 + 120) = v78;
    *(v32 + 136) = v42;
    v103 = 5;
    sub_1D8B16A10();
    v78 = v100;
    v43 = v101;

    *(v32 + 152) = v78;
    *(v32 + 168) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660B8);
    v103 = 6;
    sub_1D881CF20(&qword_1ECA66158, &qword_1ECA660B8);
    sub_1D8B16A10();
    v78 = v100;
    v44 = v101;

    *(v32 + 184) = v78;
    *(v32 + 200) = v44;
    LOBYTE(v100) = 7;
    sub_1D881CF20(&qword_1ECA66160, &qword_1ECA64450);
    v45 = v93;
    sub_1D8B16A10();
    v92 = v28;
    sub_1D87B6EFC(v45, v91, &qword_1ECA64450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660D0);
    v103 = 8;
    sub_1D881CF20(&qword_1ECA66168, &qword_1ECA660D0);
    sub_1D8B16A10();
    v93 = v100;
    v46 = v101;
    v47 = v90;

    *v47 = v93;
    *(v47 + 16) = v46;
    v103 = 9;
    sub_1D8B16A10();
    v93 = v100;
    v48 = v101;
    v49 = v89;

    *v49 = v93;
    *(v49 + 2) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660E0);
    v103 = 10;
    sub_1D881CF20(&qword_1ECA66170, &qword_1ECA660E0);
    sub_1D8B16A10();
    v93 = v100;
    v50 = v101;
    v51 = v88;

    *v51 = v93;
    *(v51 + 2) = v50;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA660F0);
    v103 = 11;
    v53 = sub_1D881CF20(&qword_1ECA66178, &qword_1ECA660F0);
    *&v93 = v52;
    v91 = v53;
    sub_1D8B16A10();
    v54 = v100;
    LOBYTE(v48) = v101;
    v55 = v87;

    *v55 = v54;
    v55[16] = v48;
    v103 = 12;
    sub_1D8B16A10();
    v90 = v100;
    v56 = v101;
    v57 = v86;

    *v57 = v90;
    *(v57 + 2) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66100);
    v103 = 13;
    sub_1D881CF20(&qword_1ECA66180, &qword_1ECA66100);
    sub_1D8B16A10();
    v90 = v100;
    v58 = v101;
    v59 = v85;

    *v59 = v90;
    *(v59 + 2) = v58;
    v103 = 14;
    sub_1D8B16A10();
    v90 = v100;
    v60 = v101;
    v61 = v84;

    *v61 = v90;
    *(v61 + 2) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66110);
    v103 = 15;
    sub_1D881CF20(&qword_1ECA66188, &qword_1ECA66110);
    sub_1D8B16A10();
    v90 = v100;
    v62 = v101;
    LOBYTE(v33) = BYTE8(v101);
    v63 = v96;

    *v63 = v90;
    *(v63 + 16) = v62;
    *(v63 + 24) = v33;
    v103 = 16;
    sub_1D8B16A10();
    v64 = v100;
    LOBYTE(v48) = v101;
    v65 = v82;

    *v65 = v64;
    v65[16] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66120);
    v103 = 17;
    sub_1D881CF20(&qword_1ECA66190, &qword_1ECA66120);
    sub_1D8B16A10();
    v66 = v100;
    LOBYTE(v48) = v101;
    v67 = v79;

    *v67 = v66;
    v67[16] = v48;
    v103 = 18;
    sub_1D8B16A10();
    v96 = v100;
    v68 = v101;
    v69 = v80;

    *v69 = v96;
    *(v69 + 2) = v68;
    v103 = 19;
    sub_1D8B16A10();
    v96 = v100;
    v70 = v101;
    v71 = v81;

    *v71 = v96;
    *(v71 + 1) = v70;
    v103 = 20;
    v72 = v95;
    v73 = v98;
    sub_1D8B16A10();
    (*(v94 + 8))(v73, v72);
    v98 = v100;
    v74 = v101;

    *v26 = v98;
    *(v26 + 1) = v74;
    v75 = v97;
    sub_1D8980284(v97, v83);
    __swift_destroy_boxed_opaque_existential_1(v99);
    v76 = v75;
  }

  return sub_1D89801D4(v76);
}

uint64_t sub_1D89801D4(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8980230()
{
  result = qword_1ECA66140;
  if (!qword_1ECA66140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66140);
  }

  return result;
}

uint64_t sub_1D8980284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8980318()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63480);
  sub_1D8B12C80();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D8B1AB70;
  sub_1D8B16B50();
  sub_1D8B12C70();

  sub_1D8B12C70();
  sub_1D8B12C70();
  return v0;
}

uint64_t static TapToRadarDraft.Component.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
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

uint64_t sub_1D898055C()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0x6E656E6F706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_1D89805C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8986A6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D89805E8(uint64_t a1)
{
  v2 = sub_1D8980820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8980624(uint64_t a1)
{
  v2 = sub_1D8980820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TapToRadarDraft.Component.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66198);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[0] = v1[4];
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8980820();
  sub_1D8B16DD0();
  v14 = 0;
  sub_1D8B16AD0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_1D8B16A90();
  v12 = 2;
  sub_1D8B16A90();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D8980820()
{
  result = qword_1ECA661A0;
  if (!qword_1ECA661A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661A0);
  }

  return result;
}

uint64_t TapToRadarDraft.Component.hash(into:)()
{
  MEMORY[0x1DA720210](*v0);
  sub_1D8B15A60();

  return sub_1D8B15A60();
}

uint64_t TapToRadarDraft.Component.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  sub_1D8B15A60();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t TapToRadarDraft.Component.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA661A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8980820();
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v9 = sub_1D8B16A00();
  v23 = 1;
  v10 = sub_1D8B169C0();
  v12 = v11;
  v21 = v10;
  v22 = 2;
  v13 = sub_1D8B169C0();
  v15 = v14;
  v16 = *(v6 + 8);
  v20 = v13;
  v16(v8, v5);
  v17 = v20;
  v18 = v21;
  *a2 = v9;
  a2[1] = v18;
  a2[2] = v12;
  a2[3] = v17;
  a2[4] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D8980BC0()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  sub_1D8B15A60();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t sub_1D8980C40()
{
  MEMORY[0x1DA720210](*v0);
  sub_1D8B15A60();

  return sub_1D8B15A60();
}

uint64_t sub_1D8980CB0()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  sub_1D8B15A60();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t sub_1D8980D2C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
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

unint64_t TapToRadarDraft.Classification.urlParameterValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x2065727574616546;
    v7 = 0x6D65636E61686E45;
    if (v1 != 8)
    {
      v7 = 1802723668;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x2073756F69726553;
    if (v1 != 5)
    {
      v8 = 0x754220726568744FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7974697275636553;
    v3 = 0x7265776F50;
    v4 = 0x616D726F66726550;
    if (v1 != 3)
    {
      v4 = 0x69626173552F4955;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t TapToRadarDraft.Classification.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x2065727574616546;
    v7 = 0x6D65636E61686E45;
    if (v1 != 8)
    {
      v7 = 1802723668;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x2073756F69726553;
    if (v1 != 5)
    {
      v8 = 0x754220726568744FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7974697275636553;
    v3 = 0x7265776F50;
    v4 = 0x616D726F66726550;
    if (v1 != 3)
    {
      v4 = 0x69626173552F4955;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

VisualIntelligenceCore::TapToRadarDraft::Classification_optional __swiftcall TapToRadarDraft.Classification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8981110()
{
  sub_1D8B16D20();
  sub_1D8A97CC4();
  return sub_1D8B16D80();
}

uint64_t sub_1D8981160()
{
  sub_1D8B16D20();
  sub_1D8A97CC4();
  return sub_1D8B16D80();
}

unint64_t sub_1D89811B0@<X0>(unint64_t *a1@<X8>)
{
  result = TapToRadarDraft.Classification.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TapToRadarDraft.Reproducibility.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x737961776C41;
  v3 = 0x656C62616E55;
  v4 = 0x74276E6469442049;
  if (v1 != 4)
  {
    v4 = 0x6C70704120746F4ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D6974656D6F53;
  if (v1 != 1)
  {
    v5 = 0x796C65726152;
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

VisualIntelligenceCore::TapToRadarDraft::Reproducibility_optional __swiftcall TapToRadarDraft.Reproducibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D89813E4()
{
  sub_1D8B15A60();
}

void sub_1D89814F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t TapToRadarDraft.DeviceClass.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F685069;
  v3 = 6512973;
  if (v1 != 5)
  {
    v3 = 0x6E6F69736956;
  }

  v4 = 0x5654656C707041;
  if (v1 != 3)
  {
    v4 = 0x646F50656D6F48;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1684099177;
  if (v1 != 1)
  {
    v5 = 0x6863746157;
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

VisualIntelligenceCore::TapToRadarDraft::DeviceClass_optional __swiftcall TapToRadarDraft.DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D89817E4()
{
  sub_1D8B15A60();
}

void sub_1D89818EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t TapToRadarDraft.RemoteDeviceSelections.urlParameterValue.getter()
{
  v1 = *v0;
  if (*v0)
  {
    if (v1)
    {
      v2 = sub_1D87C8284(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v5 = *(v2 + 2);
      v4 = *(v2 + 3);
      if (v5 >= v4 >> 1)
      {
        v2 = sub_1D87C8284((v4 > 1), v5 + 1, 1, v2);
      }

      *(v2 + 2) = v5 + 1;
      v6 = &v2[16 * v5];
      *(v6 + 4) = 0x79616C50726941;
      *(v6 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
          }

          v11 = *(v2 + 2);
          v10 = *(v2 + 3);
          if (v11 >= v10 >> 1)
          {
            v2 = sub_1D87C8284((v10 > 1), v11 + 1, 1, v2);
          }

          *(v2 + 2) = v11 + 1;
          v12 = &v2[16 * v11];
          strcpy(v12 + 32, "MediaSystems");
          v12[45] = 0;
          *(v12 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
          }

          v14 = *(v2 + 2);
          v13 = *(v2 + 3);
          if (v14 >= v13 >> 1)
          {
            v2 = sub_1D87C8284((v13 > 1), v14 + 1, 1, v2);
          }

          *(v2 + 2) = v14 + 1;
          v15 = &v2[16 * v14];
          *(v15 + 4) = 0x616C506572616853;
          *(v15 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
        }

        v17 = *(v2 + 2);
        v16 = *(v2 + 3);
        if (v17 >= v16 >> 1)
        {
          v2 = sub_1D87C8284((v16 > 1), v17 + 1, 1, v2);
        }

        *(v2 + 2) = v17 + 1;
        v18 = &v2[16 * v17];
        *(v18 + 4) = 0x79627261654ELL;
        *(v18 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
        }

        v20 = *(v2 + 2);
        v19 = *(v2 + 3);
        if (v20 >= v19 >> 1)
        {
          v2 = sub_1D87C8284((v19 > 1), v20 + 1, 1, v2);
        }

        *(v2 + 2) = v20 + 1;
        v21 = &v2[16 * v20];
        *(v21 + 4) = 0x657463656E6E6F43;
        *(v21 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
            sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
            v3 = sub_1D8B15810();

            return v3;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
          }

          v26 = *(v2 + 2);
          v25 = *(v2 + 3);
          if (v26 >= v25 >> 1)
          {
            v2 = sub_1D87C8284((v25 > 1), v26 + 1, 1, v2);
          }

          *(v2 + 2) = v26 + 1;
          v27 = &v2[16 * v26];
          *(v27 + 4) = 0xD000000000000016;
          *(v27 + 5) = 0x80000001D8B44E70;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
        }

        v23 = *(v2 + 2);
        v22 = *(v2 + 3);
        if (v23 >= v22 >> 1)
        {
          v2 = sub_1D87C8284((v22 > 1), v23 + 1, 1, v2);
        }

        *(v2 + 2) = v23 + 1;
        v24 = &v2[16 * v23];
        *(v24 + 4) = 0x61656854656D6F48;
        *(v24 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D87C8284(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_1D87C8284((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = 0x4874694B656D6F48;
    *(v9 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return 0;
}

uint64_t TapToRadarDraft.AutoDiagnostics.urlParameterValue.getter()
{
  v1 = *v0;
  if (v1 <= 2 && !*v0)
  {

    return 0;
  }

  v2 = sub_1D8B16BA0();

  if (v2)
  {
    return 0;
  }

  if (v1 > 3)
  {
    if (v1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (v1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (v1 == 1)
  {
    return 48;
  }

  else if (v1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t TapToRadarDraft.AutoDiagnostics.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 48;
    if (v1 != 1)
    {
      v4 = 12589;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 7105633;
    }
  }

  else
  {
    v2 = 0xD000000000000010;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v2;
    }
  }
}

VisualIntelligenceCore::TapToRadarDraft::AutoDiagnostics_optional __swiftcall TapToRadarDraft.AutoDiagnostics.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8982360()
{
  sub_1D8B15A60();
}

void sub_1D8982470(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001D8B400C0;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x80000001D8B400E0;
    }

    v5 = 0x80000001D8B40080;
    if (v2 != 3)
    {
      v5 = 0x80000001D8B400A0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t TapToRadarDraft.TapToRadarError.errorDescription.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t TapToRadarDraft.TapToRadarError.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

unint64_t sub_1D89826D4()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_1D898272C@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    sub_1D8B12C70();

    v3 = 0;
  }

  v4 = sub_1D8B12C80();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_1D8982920@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    sub_1D8B12C70();

    v3 = 0;
  }

  v4 = sub_1D8B12C80();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_1D8982A78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1D8B131D0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450);
  sub_1D87A0E38(v2 + *(v11 + 36), v6, &qword_1ECA631A8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D87A14E4(v6, &qword_1ECA631A8);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v14 = sub_1D8B15940();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_1D8B13120();
    v16 = [v13 stringFromDate_];

    sub_1D8B15970();
    (*(v8 + 8))(v10, v7);
    sub_1D8B12C70();

    v12 = 0;
  }

  v17 = sub_1D8B12C80();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t Bool.urlParameterValue.getter(char a1)
{
  if (a1)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t sub_1D8982E08()
{
  if (*v0)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t Date.urlParameterValue.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1D8B15940();
  [v0 setDateFormat_];

  [v0 setDoesRelativeDateFormatting_];
  v2 = sub_1D8B13120();
  v3 = [v0 stringFromDate_];

  v4 = sub_1D8B15970();
  return v4;
}

uint64_t sub_1D8982F0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D87C8284(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_1D87C8284((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
  v17 = sub_1D8B15810();

  return v17;
}

uint64_t sub_1D8983110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D87C8284(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1D87C8284((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
  v9 = sub_1D8B15810();

  return v9;
}

uint64_t sub_1D898326C(uint64_t a1)
{
  v23 = sub_1D8B13000();
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v6 = v2 + 16;
  v8 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v21 = *(v6 + 56);
  v22 = v7;
  v9 = (v6 - 8);
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    v11 = v23;
    v12 = v6;
    v22(v4, v8, v23);
    v13 = sub_1D8B12FC0();
    v15 = v14;
    (*v9)(v4, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D87C8284(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_1D87C8284((v16 > 1), v17 + 1, 1, v10);
    }

    *(v10 + 2) = v17 + 1;
    v18 = &v10[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    v8 += v21;
    --v5;
    v6 = v12;
  }

  while (v5);
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
  v19 = sub_1D8B15810();

  return v19;
}

uint64_t sub_1D89834AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 += 8;
    v4 = sub_1D8B16B50();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D87C8284(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_1D87C8284((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
  v10 = sub_1D8B15810();

  return v10;
}

uint64_t Array<A>.urlParameterValue.getter()
{
  sub_1D8B15DB0();
  swift_getWitnessTable();
  v0 = sub_1D8B16160();
  result = 0;
  if ((v0 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](0);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getWitnessTable();
    sub_1D8B15BC0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
    sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
    v3 = sub_1D8B15810();

    return v3;
  }

  return result;
}

uint64_t Optional<A>.urlParameterValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v12, a1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v4 + 8))(v7, a1);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14 = (*(a2 + 24))(v8, a2);
    (*(v9 + 8))(v11, v8);
    return v14;
  }
}

uint64_t sub_1D8983AA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D8983BB8(char a1)
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](a1 & 1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8983C00(char a1)
{
  if (a1)
  {
    return 0x5664657070617277;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_1D8983C78()
{
  sub_1D8B16D20();
  sub_1D8983B90(v2, *v0);
  return sub_1D8B16D80();
}

uint64_t sub_1D8983CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8983AA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8983D00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8986B98();
  *a1 = result;
  return result;
}

uint64_t sub_1D8983D2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D8983D80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t URLParameter.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v11[0] = *(a2 + 24);
  v11[1] = v4;
  type metadata accessor for URLParameter.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D8B16B10();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8B16DD0();
  v13 = 0;
  v9 = v11[3];
  sub_1D8B16A90();
  if (!v9)
  {
    v12 = 1;
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t URLParameter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v24 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URLParameter.CodingKeys();
  swift_getWitnessTable();
  v29 = sub_1D8B16A30();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v21 - v8;
  v28 = a3;
  v10 = type metadata accessor for URLParameter();
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v21 - v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v30;
  sub_1D8B16DB0();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = a1;
  v22 = v10;
  v14 = v26;
  v15 = v27;
  v32 = 0;
  v16 = v12;
  *v12 = sub_1D8B169C0();
  v12[1] = v17;
  v21 = v17;
  v31 = 1;
  sub_1D8B16A10();
  (*(v14 + 8))(v9, v29);
  v18 = v22;
  (*(v24 + 32))(v12 + *(v22 + 36), v15, a2);
  v19 = v23;
  (*(v23 + 16))(v25, v16, v18);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return (*(v19 + 8))(v16, v18);
}

unint64_t sub_1D8984388()
{
  result = qword_1ECA661B0;
  if (!qword_1ECA661B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661B0);
  }

  return result;
}

unint64_t sub_1D89843E0()
{
  result = qword_1ECA661B8;
  if (!qword_1ECA661B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661B8);
  }

  return result;
}

unint64_t sub_1D8984460()
{
  result = qword_1ECA661C0;
  if (!qword_1ECA661C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661C0);
  }

  return result;
}

unint64_t sub_1D89844B4()
{
  result = qword_1ECA661C8;
  if (!qword_1ECA661C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661C8);
  }

  return result;
}

unint64_t sub_1D898450C()
{
  result = qword_1ECA661D0;
  if (!qword_1ECA661D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661D0);
  }

  return result;
}

uint64_t sub_1D898458C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D89845C8()
{
  result = qword_1ECA661D8;
  if (!qword_1ECA661D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661D8);
  }

  return result;
}

unint64_t sub_1D898461C()
{
  result = qword_1ECA661E0;
  if (!qword_1ECA661E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661E0);
  }

  return result;
}

unint64_t sub_1D8984674()
{
  result = qword_1ECA661E8;
  if (!qword_1ECA661E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661E8);
  }

  return result;
}

unint64_t sub_1D89846F4()
{
  result = qword_1ECA661F0;
  if (!qword_1ECA661F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661F0);
  }

  return result;
}

unint64_t sub_1D8984748()
{
  result = qword_1ECA661F8;
  if (!qword_1ECA661F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA661F8);
  }

  return result;
}

unint64_t sub_1D89847A0()
{
  result = qword_1ECA66200;
  if (!qword_1ECA66200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66200);
  }

  return result;
}

unint64_t sub_1D89847F8()
{
  result = qword_1ECA66208;
  if (!qword_1ECA66208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66208);
  }

  return result;
}

unint64_t sub_1D8984878()
{
  result = qword_1ECA66210;
  if (!qword_1ECA66210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66210);
  }

  return result;
}

unint64_t sub_1D89848CC()
{
  result = qword_1ECA66218;
  if (!qword_1ECA66218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66218);
  }

  return result;
}

unint64_t sub_1D8984920()
{
  result = qword_1ECA66220;
  if (!qword_1ECA66220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66220);
  }

  return result;
}

unint64_t sub_1D8984978()
{
  result = qword_1ECA66228;
  if (!qword_1ECA66228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66228);
  }

  return result;
}

unint64_t sub_1D89849D0()
{
  result = qword_1ECA66230;
  if (!qword_1ECA66230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66230);
  }

  return result;
}

unint64_t sub_1D8984A50()
{
  result = qword_1ECA66238;
  if (!qword_1ECA66238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66238);
  }

  return result;
}

unint64_t sub_1D8984AA4()
{
  result = qword_1ECA66240;
  if (!qword_1ECA66240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66240);
  }

  return result;
}

unint64_t sub_1D8984AFC()
{
  result = qword_1ECA66248;
  if (!qword_1ECA66248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66248);
  }

  return result;
}

uint64_t sub_1D8984B54(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  *(a1 + 8) = sub_1D8985658(&qword_1ECA66250, MEMORY[0x1E6969530]);
  result = sub_1D8985658(&qword_1ECA66258, v2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8984BD8(uint64_t a1)
{
  v2 = MEMORY[0x1E6968FB0];
  *(a1 + 8) = sub_1D8985658(&qword_1ECA66260, MEMORY[0x1E6968FB0]);
  result = sub_1D8985658(&qword_1ECA66268, v2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8984CB4(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_1D8984D4C()
{
  sub_1D8984FD8();
  if (v0 <= 0x3F)
  {
    sub_1D898507C();
    if (v1 <= 0x3F)
    {
      sub_1D89850CC();
      if (v2 <= 0x3F)
      {
        sub_1D89851C4();
        if (v3 <= 0x3F)
        {
          sub_1D89852BC();
          if (v4 <= 0x3F)
          {
            sub_1D89853DC(319, &qword_1ECA66300, &qword_1ECA631A8, &unk_1D8B1E6D0, sub_1D898544C);
            if (v5 <= 0x3F)
            {
              sub_1D8985500();
              if (v6 <= 0x3F)
              {
                sub_1D89853DC(319, &qword_1ECA66348, &qword_1ECA66350, &unk_1D8B2E330, sub_1D89856A0);
                if (v7 <= 0x3F)
                {
                  sub_1D89853DC(319, &qword_1ECA66368, &qword_1ECA66370, &unk_1D8B3F600, sub_1D89857B0);
                  if (v8 <= 0x3F)
                  {
                    sub_1D898582C();
                    if (v9 <= 0x3F)
                    {
                      sub_1D89853DC(319, &qword_1ECA663B0, &qword_1ECA663B8, &unk_1D8B2E350, sub_1D8985A24);
                      if (v10 <= 0x3F)
                      {
                        sub_1D89853DC(319, &qword_1ECA663D0, &qword_1ECA663D8, &unk_1D8B2E358, sub_1D8985AFC);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D8984FD8()
{
  if (!qword_1ECA66280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63660);
    sub_1D8985750(&qword_1ECA66288, &qword_1ECA63660);
    v0 = type metadata accessor for URLParameter();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA66280);
    }
  }
}

void sub_1D898507C()
{
  if (!qword_1ECA66290)
  {
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA66290);
    }
  }
}

void sub_1D89850CC()
{
  if (!qword_1ECA66298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA662A0);
    sub_1D89858D0(&qword_1ECA662A8, &qword_1ECA662A0, &unk_1D8B2E300, sub_1D8985170);
    v0 = type metadata accessor for URLParameter();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA66298);
    }
  }
}

unint64_t sub_1D8985170()
{
  result = qword_1ECA662B0;
  if (!qword_1ECA662B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA662B0);
  }

  return result;
}

void sub_1D89851C4()
{
  if (!qword_1ECA662B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA662C0);
    sub_1D89858D0(&qword_1ECA662C8, &qword_1ECA662C0, &unk_1D8B2E308, sub_1D8985268);
    v0 = type metadata accessor for URLParameter();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA662B8);
    }
  }
}

unint64_t sub_1D8985268()
{
  result = qword_1ECA662D0;
  if (!qword_1ECA662D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA662D0);
  }

  return result;
}

void sub_1D89852BC()
{
  if (!qword_1ECA662D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA662E0);
    sub_1D89858D0(&qword_1ECA662E8, &qword_1ECA662E0, &unk_1D8B2E310, sub_1D8985360);
    v0 = type metadata accessor for URLParameter();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA662D8);
    }
  }
}

unint64_t sub_1D8985360()
{
  result = qword_1ECA662F0;
  if (!qword_1ECA662F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA662F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA662F0);
  }

  return result;
}

void sub_1D89853DC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D898544C()
{
  result = qword_1ECA66308;
  if (!qword_1ECA66308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA631A8);
    sub_1D8985658(&qword_1ECA66310, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66308);
  }

  return result;
}

void sub_1D8985500()
{
  if (!qword_1ECA66318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66320);
    sub_1D89858D0(&qword_1ECA66328, &qword_1ECA66320, &unk_1D8B2E320, sub_1D89855A4);
    v0 = type metadata accessor for URLParameter();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA66318);
    }
  }
}

unint64_t sub_1D89855A4()
{
  result = qword_1ECA66330;
  if (!qword_1ECA66330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66338);
    sub_1D8985658(&qword_1ECA66340, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66330);
  }

  return result;
}

uint64_t sub_1D8985658(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D89856A0()
{
  result = qword_1ECA66358;
  if (!qword_1ECA66358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66350);
    sub_1D8985750(&qword_1ECA66360, &unk_1ECA64D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66358);
  }

  return result;
}

uint64_t sub_1D8985750(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D89857B0()
{
  result = qword_1ECA66378;
  if (!qword_1ECA66378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66378);
  }

  return result;
}

void sub_1D898582C()
{
  if (!qword_1ECA66380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66388);
    sub_1D89858D0(&qword_1ECA66390, &qword_1ECA66388, &unk_1D8B2E340, sub_1D898594C);
    v0 = type metadata accessor for URLParameter();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA66380);
    }
  }
}

uint64_t sub_1D89858D0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D898594C()
{
  result = qword_1ECA66398;
  if (!qword_1ECA66398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA663A0);
    sub_1D89859D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66398);
  }

  return result;
}

unint64_t sub_1D89859D0()
{
  result = qword_1ECA663A8;
  if (!qword_1ECA663A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA663A8);
  }

  return result;
}

unint64_t sub_1D8985A24()
{
  result = qword_1ECA663C0;
  if (!qword_1ECA663C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA663B8);
    sub_1D8985AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA663C0);
  }

  return result;
}

unint64_t sub_1D8985AA8()
{
  result = qword_1ECA663C8;
  if (!qword_1ECA663C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA663C8);
  }

  return result;
}

unint64_t sub_1D8985AFC()
{
  result = qword_1ECA663E0;
  if (!qword_1ECA663E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA663D8);
    sub_1D8985B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA663E0);
  }

  return result;
}

unint64_t sub_1D8985B80()
{
  result = qword_1ECA663E8[0];
  if (!qword_1ECA663E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA663E8);
  }

  return result;
}

uint64_t sub_1D8985BD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D8985C1C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D8985CF0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8985D70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1D8985EF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

unint64_t sub_1D8986170()
{
  result = qword_1ECA664F0;
  if (!qword_1ECA664F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA664F0);
  }

  return result;
}

unint64_t sub_1D89861C8()
{
  result = qword_1ECA664F8;
  if (!qword_1ECA664F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA664F8);
  }

  return result;
}

unint64_t sub_1D8986274()
{
  result = qword_1ECA66500;
  if (!qword_1ECA66500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66500);
  }

  return result;
}

unint64_t sub_1D89862CC()
{
  result = qword_1ECA66508;
  if (!qword_1ECA66508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66508);
  }

  return result;
}

unint64_t sub_1D8986324()
{
  result = qword_1ECA66510;
  if (!qword_1ECA66510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66510);
  }

  return result;
}

unint64_t sub_1D898637C()
{
  result = qword_1ECA66518;
  if (!qword_1ECA66518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66518);
  }

  return result;
}

uint64_t sub_1D89863D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6375646F72706572 && a2 == 0xEF7974696C696269 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D8B44F30 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7349664F656D6974 && a2 == 0xEB00000000657573 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B44F50 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B44F70 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E4F6574656C6564 && a2 == 0xEE00686361747441 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE900000000000073 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6C43656369766564 && a2 == 0xED00007365737361 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEC000000736C6564 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D8B44F90 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D8B44FB0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x676169446F747561 && a2 == 0xEF73636974736F6ELL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D8B44FD0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D8B44FF0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D8B45010 == a2)
  {

    return 20;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_1D8986A6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEB00000000444974;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xED0000656D614E74 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B45030 == a2)
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

uint64_t sub_1D8986BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8986C10()
{
  result = qword_1ECA66520;
  if (!qword_1ECA66520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66520);
  }

  return result;
}

unint64_t sub_1D8986C64()
{
  result = qword_1ECA66528;
  if (!qword_1ECA66528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66528);
  }

  return result;
}

unint64_t sub_1D8986CB8()
{
  result = qword_1ECA66530;
  if (!qword_1ECA66530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66530);
  }

  return result;
}

unint64_t sub_1D8986D0C()
{
  result = qword_1ECA66538;
  if (!qword_1ECA66538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66538);
  }

  return result;
}

unint64_t VITapToRadarInvocation.ActionType.id.getter()
{
  v1 = *v0;
  v2 = 0x6956686361747461;
  v3 = 0x6C6C6F4361746164;
  v4 = 0x695664726F636572;
  if (v1 != 3)
  {
    v4 = 0x6E67616964737973;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

VisualIntelligenceCore::VITapToRadarInvocation::ActionType_optional __swiftcall VITapToRadarInvocation.ActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8986E98()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8986F98()
{
  sub_1D8B15A60();
}

uint64_t sub_1D8987084()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

void sub_1D898724C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6956686361747461;
  v4 = 0xEE006E6F69746365;
  v5 = 0x6C6C6F4361746164;
  v6 = 0x695664726F636572;
  v7 = 0xEB0000000065736FLL;
  if (v2 == 3)
  {
    v7 = 0xEB000000006F6564;
  }

  else
  {
    v6 = 0x6E67616964737973;
  }

  if (v2 != 2)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x80000001D8B40360;
  if (*v1)
  {
    v8 = 0xEB000000006F6564;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t static VITapToRadarInvocation.createVIRadarDraft(actionType:attachments:crDocument:stillCompositeOverlay:saliencyStream:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 384) = a5;
  *(v6 + 392) = a6;
  *(v6 + 368) = a3;
  *(v6 + 376) = a4;
  *(v6 + 360) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64340);
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = type metadata accessor for TapToRadarDraftPayload();
  *(v6 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = type metadata accessor for ActionPin.PermanentPill(0);
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 497) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8987450, 0, 0);
}

uint64_t sub_1D8987450()
{
  v1 = *(v0 + 384);
  if (v1 && (v2 = *(v0 + 392), *(v0 + 304) = v1, *(v0 + 312) = v2, swift_unknownObjectRetain(), *(v0 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66550), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66558), (swift_dynamicCast() & 1) != 0))
  {
    if (*(v0 + 168))
    {
      v3 = *(v0 + 440);
      v4 = *(v0 + 424);
      v5 = *(v0 + 360);
      sub_1D8788F40((v0 + 144), v0 + 104);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
      (*(*(v6 - 8) + 56))(v3, 6, 6, v6);
      *(v0 + 352) = v5;

      sub_1D89880FC(v4);
      v7 = swift_task_alloc();
      *(v0 + 456) = v7;
      *v7 = v0;
      v7[1] = sub_1D8987704;
      v8 = *(v0 + 424);
      v9 = *(v0 + 368);

      return sub_1D8988650(v9, v8);
    }
  }

  else
  {
    *(v0 + 176) = 0;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
  }

  sub_1D87A14E4(v0 + 144, &qword_1ECA66548);
  if (qword_1ECA621B0 != -1)
  {
    swift_once();
  }

  v11 = sub_1D8B151E0();
  __swift_project_value_buffer(v11, qword_1ECA66A98);
  v12 = sub_1D8B151C0();
  v13 = sub_1D8B16210();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D8783000, v12, v13, "VITapToRadarInvocation createVIRadarDraft: the provided saliencyStream is not actionable, no-oping.", v14, 2u);
    MEMORY[0x1DA721330](v14, -1, -1);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D8987704(uint64_t a1)
{
  *(*v1 + 464) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8987804, 0, 0);
}

uint64_t sub_1D8987804()
{
  v15 = *(v0 + 384);
  sub_1D88F59DC(*(v0 + 464));
  *(v0 + 320) = v15;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66560);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 208);
    if (v1)
    {
      v2 = *(v0 + 424);
      v3 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
      v4 = SaliencyStreamIngredientsProviding.bundleSelector.getter(v1, v3);
      v18 = *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 32);
      v19 = *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 48);
      v20 = *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 64);
      v16 = *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration);
      v17 = *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 16);

      __swift_destroy_boxed_opaque_existential_1(v0 + 184);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D8B1AB90;
      *(inited + 56) = &type metadata for BundleSelector.Configuration;
      *(inited + 64) = sub_1D88C924C();
      v6 = swift_allocObject();
      *(inited + 32) = v6;
      *(v6 + 80) = v20;
      *(v6 + 48) = v18;
      *(v6 + 64) = v19;
      *(v6 + 16) = v16;
      *(v6 + 32) = v17;
      *(inited + 72) = 0xD00000000000001CLL;
      *(inited + 80) = 0x80000001D8B45070;
      v7 = sub_1D89890F8(inited, v2);
      swift_setDeallocating();
      sub_1D87A14E4(inited + 32, &qword_1ECA63400);
      sub_1D88F59DC(v7);
      goto LABEL_10;
    }
  }

  else
  {
    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
  }

  sub_1D87A14E4(v0 + 184, &qword_1ECA66568);
  if (qword_1ECA621B0 != -1)
  {
    swift_once();
  }

  v8 = sub_1D8B151E0();
  __swift_project_value_buffer(v8, qword_1ECA66A98);
  v9 = sub_1D8B151C0();
  v10 = sub_1D8B16210();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D8783000, v9, v10, "VITapToRadarInvocation createVIRadarDraft: failed to create configuration attachment file.", v11, 2u);
    MEMORY[0x1DA721330](v11, -1, -1);
  }

LABEL_10:
  *(v0 + 336) = *(v0 + 384);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 256) = 0;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
  }

  *(v0 + 496) = *(v0 + 497);
  v12 = swift_task_alloc();
  *(v0 + 472) = v12;
  *v12 = v0;
  v12[1] = sub_1D8987B68;
  v13 = *(v0 + 424);

  return sub_1D8989EE0(v0 + 224, (v0 + 496), v13);
}

uint64_t sub_1D8987B68(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 480) = a1;

  sub_1D87A14E4(v2 + 224, &qword_1ECA66578);

  return MEMORY[0x1EEE6DFA0](sub_1D8987C80, 0, 0);
}

void sub_1D8987C80()
{
  v1 = *(v0 + 497);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 376);
  sub_1D88F59DC(*(v0 + 480));
  v5 = *(v0 + 352);
  sub_1D87A0E38(v4, v2 + *(v3 + 24), &qword_1ECA630C0);
  *v2 = v1;
  *(v2 + 8) = v5;
  v6 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
  if (qword_1EE0E3EB8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 416);
  v8 = *(v0 + 400);
  v9 = type metadata accessor for ActionPin(0);
  __swift_project_value_buffer(v9, qword_1EE0E3EC0);
  sub_1D898C6F8(v7, v8, type metadata accessor for TapToRadarDraftPayload);
  v10 = type metadata accessor for ExecutionParameter();
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v12 = *(v6 + 8) + **(v6 + 8);
  v11 = swift_task_alloc();
  *(v0 + 488) = v11;
  *v11 = v0;
  v11[1] = sub_1D8987EE8;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1D8987EE8()
{
  v1 = *v0;
  v2 = *(*v0 + 400);

  sub_1D87A14E4(v2, &qword_1ECA64340);
  __swift_destroy_boxed_opaque_existential_1(v1 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1D8988018, 0, 0);
}