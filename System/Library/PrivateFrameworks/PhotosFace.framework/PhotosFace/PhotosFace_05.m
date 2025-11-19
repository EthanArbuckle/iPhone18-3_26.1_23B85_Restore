uint64_t StoredPhotoLayout.ImageLocation.protobuf(version:)()
{
  type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  sub_22FDD5628(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  return sub_22FE42C14();
}

uint64_t StoredPhotoLayout.Rect.protobuf(version:)()
{
  type metadata accessor for StoredPhotoLayoutRectProto(0);
  v2 = *v0;
  v3 = v0[1];
  sub_22FDD5628(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDDCDC0(char *a1)
{
  v1 = *a1;
  type metadata accessor for StoredPhotoLayoutProto(0);
  sub_22FDD5628(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDDCE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE42774();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE02B8(a2, v12, type metadata accessor for StoredPhotoLayout.ImageLocation);
  result = (*(v5 + 48))(v12, 1, v4);
  if (result == 1)
  {
    *a1 = 1;
    *(a1 + 8) = 1;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    *a1 = 2;
    *(a1 + 8) = 1;
    v14 = sub_22FE426D4();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = (a1 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));
    v18 = v17[1];

    *v17 = v14;
    v17[1] = v16;
  }

  return result;
}

uint64_t sub_22FDDD058()
{
  type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  sub_22FDD5628(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  return sub_22FE42C14();
}

__n128 sub_22FDDD100@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a1[1];
  v5 = *a1;
  sub_22FDE01F0(a1, type metadata accessor for StoredPhotoLayoutRectProto);
  result = v5;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_22FDDD158()
{
  type metadata accessor for StoredPhotoLayoutRectProto(0);
  v2 = *v0;
  v3 = v0[1];
  sub_22FDD5628(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDDD218(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for StoredPhotoLayout(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
  v40 = a2;
  result = sub_22FE43AF4();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + 8 * v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_22FDE0250(v27, v41, type metadata accessor for StoredPhotoLayout);
      }

      else
      {
        sub_22FDE02B8(v27, v41, type metadata accessor for StoredPhotoLayout);
      }

      v28 = *(v12 + 40);
      sub_22FE43DB4();
      MEMORY[0x23190B9C0](v25);
      result = sub_22FE43E04();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v25;
      result = sub_22FDE0250(v41, *(v12 + 56) + v26 * v20, type metadata accessor for StoredPhotoLayout);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_22FDDD574(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE0, &unk_22FE49010);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE46A8, &qword_22FE4BED8);
  v42 = a2;
  result = sub_22FE43AF4();
  v13 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v39 = v10;
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
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(v40 + 72);
      v27 = *(v10 + 48) + v26 * v25;
      if (v42)
      {
        sub_22FD93E04(v27, v9, &qword_27DAE2CE0, &unk_22FE49010);
        v28 = *(*(v10 + 56) + 8 * v25);
      }

      else
      {
        sub_22FD764B4(v27, v9, &qword_27DAE2CE0, &unk_22FE49010);
        v28 = *(*(v10 + 56) + 8 * v25);
      }

      v29 = *(v13 + 40);
      sub_22FE43DB4();
      StoredPhoto.hash(into:)(v43);
      MEMORY[0x23190B9C0](*&v9[*(v41 + 36)]);
      result = sub_22FE43E04();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_22FD93E04(v9, *(v13 + 48) + v26 * v21, &qword_27DAE2CE0, &unk_22FE49010);
      *(*(v13 + 56) + 8 * v21) = v28;
      ++*(v13 + 16);
      v10 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v15, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_22FDDD930(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_22FE428C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_22FE43AF4();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_22FDD5628(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
      result = sub_22FE42FD4();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_22FDDDD0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CB0, &qword_22FE48FF0);
  v38 = a2;
  result = sub_22FE43AF4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22FE43DB4();
      sub_22FE430D4();
      result = sub_22FE43E04();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22FDDDFC8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_22FE43AF4();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      v27 = *(v10 + 40);
      result = sub_22FE43DA4();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_22FDDE230(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - v8;
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA0, &unk_22FE48FE0);
  v40 = a2;
  result = sub_22FE43AF4();
  v13 = result;
  if (*(v10 + 16))
  {
    v38 = v3;
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
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 4 * v25);
      v27 = *(v39 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v40)
      {
        sub_22FD93E04(v28, v9, &qword_27DAE2CA8, &unk_22FE4BE90);
      }

      else
      {
        sub_22FD764B4(v28, v9, &qword_27DAE2CA8, &unk_22FE4BE90);
      }

      result = MEMORY[0x23190B990](*(v13 + 40), v26, 4);
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 4 * v21) = v26;
      result = sub_22FD93E04(v9, *(v13 + 56) + v27 * v21, &qword_27DAE2CA8, &unk_22FE4BE90);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v10 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_22FDDE578(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4680, &qword_22FE4BE88);
  result = sub_22FE43AF4();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_22FE43DB4();
      MEMORY[0x23190B9C0](qword_22FE4BEF0[v21]);
      result = sub_22FE43E04();
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
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22FDDE810(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  result = sub_22FD93E04(a3, v7 + *(*(v8 - 8) + 72) * a1, &qword_27DAE2CA8, &unk_22FE4BE90);
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

void *sub_22FDDE8C8()
{
  v1 = v0;
  v2 = type metadata accessor for StoredPhotoLayout(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
  v6 = *v0;
  v7 = sub_22FE43AE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_22FDE02B8(*(v6 + 56) + v23, v5, type metadata accessor for StoredPhotoLayout);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_22FDE0250(v5, *(v8 + 56) + v23, type metadata accessor for StoredPhotoLayout);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_22FDDEAFC()
{
  v1 = v0;
  v34 = sub_22FE428C4();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CD0, &qword_22FE49000);
  v4 = *v0;
  v5 = sub_22FE43AE4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_22FDDED90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CB0, &qword_22FE48FF0);
  v2 = *v0;
  v3 = sub_22FE43AE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22FDDEF14(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22FE43AE4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22FDDF060()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v25 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA0, &unk_22FE48FE0);
  v5 = *v0;
  v6 = sub_22FE43AE4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v27 = v5 + 64;
    v10 = 0;
    v11 = *(v5 + 16);
    v30 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v5 + 48) + 4 * v20);
        v22 = v28;
        v23 = *(v29 + 72) * v20;
        sub_22FD764B4(*(v5 + 56) + v23, v28, &qword_27DAE2CA8, &unk_22FE4BE90);
        v24 = v30;
        *(*(v30 + 48) + 4 * v20) = v21;
        result = sub_22FD93E04(v22, *(v24 + 56) + v23, &qword_27DAE2CA8, &unk_22FE4BE90);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v26;
        v7 = v30;
        goto LABEL_18;
      }

      v19 = *(v27 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_22FDDF2AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4680, &qword_22FE4BE88);
  v2 = *v0;
  v3 = sub_22FE43AE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_22FDDF410(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for StoredPhotoLayout(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v17 = (&v53 - v16);
  v57 = *(a1 + 16);
  if (!v57)
  {
    goto LABEL_22;
  }

  v53 = v3;
  v54 = v8;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v56 = *(v15 + 72);
  sub_22FD764B4(a1 + v19, &v53 - v16, &qword_27DAE2CE8, &unk_22FE4A850);
  v61 = *v17;
  v20 = v61;
  v55 = v18;
  sub_22FDE0250(v17 + v18, v11, type metadata accessor for StoredPhotoLayout);
  v21 = *a3;
  v22 = sub_22FD746AC(v20);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_22FDDD218(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_22FD746AC(v20);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      type metadata accessor for PFCTimePosition(0);
      sub_22FE43D14();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v33 = v22;
  sub_22FDDE8C8();
  v22 = v33;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();

    v60 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_22FDE01F0(v11, type metadata accessor for StoredPhotoLayout);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v34 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  *(v34[6] + 8 * v22) = v20;
  v35 = v34[7];
  v54 = *(v54 + 72);
  sub_22FDE0250(v11, v35 + v54 * v22, type metadata accessor for StoredPhotoLayout);
  v36 = v34[2];
  v26 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v26)
  {
    v34[2] = v37;
    if (v57 == 1)
    {
LABEL_22:

      return;
    }

    v38 = a1 + v56 + v19;
    v39 = 1;
    while (v39 < *(a1 + 16))
    {
      sub_22FD764B4(v38, v17, &qword_27DAE2CE8, &unk_22FE4A850);
      v61 = *v17;
      v40 = v61;
      sub_22FDE0250(v17 + v55, v11, type metadata accessor for StoredPhotoLayout);
      v41 = *a3;
      v42 = sub_22FD746AC(v40);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v26 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v26)
      {
        goto LABEL_23;
      }

      v47 = v43;
      if (v41[3] < v46)
      {
        sub_22FDDD218(v46, 1);
        v48 = *a3;
        v42 = sub_22FD746AC(v40);
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v47)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      *(v50[6] + 8 * v42) = v40;
      sub_22FDE0250(v11, v50[7] + v54 * v42, type metadata accessor for StoredPhotoLayout);
      v51 = v50[2];
      v26 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v39;
      v50[2] = v52;
      v38 += v56;
      if (v57 == v39)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD00000000000001BLL, 0x800000022FE484A0);
  type metadata accessor for PFCTimePosition(0);
  sub_22FE43A44();
  MEMORY[0x23190ACF0](39, 0xE100000000000000);
  sub_22FE43A74();
  __break(1u);
}

uint64_t sub_22FDDF95C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22FD74870(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22FDDDD0C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22FD74870(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22FE43D14();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22FDDED90();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_22FDDFAD8(uint64_t a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22FD748E8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
      return sub_22FDE176C(a1, v17 + *(*(v18 - 8) + 72) * v10, &qword_27DAE2CA8, &unk_22FE4BE90);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_22FDDF060();
    goto LABEL_7;
  }

  sub_22FDDE230(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_22FD748E8(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_22FE43D14();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_22FDDE810(v10, a2, a1, v16);
}

unint64_t sub_22FDDFC34(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22FD74930(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22FDDE578(v16, a4 & 1);
      v20 = *v5;
      result = sub_22FD74930(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22FE43D14();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22FDDF2AC();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_22FDDFD94(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22FE43AD4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_22FDDFDF8(__int128 *a1, uint64_t a2)
{
  v38 = a1;
  v3 = type metadata accessor for StoredPhotoLayout(0);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4698, &unk_22FE4BEB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v34 - v12);
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;
  v37 = a2;

  v20 = 0;
  v35 = v11;
  v39 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_12:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v24 | (v21 << 6);
      v26 = *(*(v37 + 48) + 8 * v25);
      sub_22FDE02B8(*(v37 + 56) + *(v36 + 72) * v25, v6, type metadata accessor for StoredPhotoLayout);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42E0, &qword_22FE4A870);
      v28 = *(v27 + 48);
      v11 = v35;
      *v35 = v26;
      sub_22FDE0250(v6, &v11[v28], type metadata accessor for StoredPhotoLayout);
      (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
      v23 = v21;
LABEL_13:
      sub_22FD93E04(v11, v13, &qword_27DAE4698, &unk_22FE4BEB0);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42E0, &qword_22FE4A870);
      if ((*(*(v29 - 8) + 48))(v13, 1, v29) == 1)
      {
        break;
      }

      v30 = *v13;
      sub_22FDE0250(v13 + *(v29 + 48), v6, type metadata accessor for StoredPhotoLayout);
      v31 = v38[3];
      v42 = v38[2];
      v43 = v31;
      v44 = *(v38 + 8);
      v32 = v38[1];
      v40 = *v38;
      v41 = v32;
      MEMORY[0x23190B9C0](v30);
      StoredPhotoLayout.hash(into:)();
      sub_22FDE01F0(v6, type metadata accessor for StoredPhotoLayout);
      result = sub_22FE43E04();
      v20 = v23;
      v39 ^= result;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x23190B9C0](v39);
  }

  else
  {
LABEL_5:
    if (v18 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v18;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42E0, &qword_22FE4A870);
        (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FDE01F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FDE0250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDE02B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10PhotosFace17StoredPhotoLayoutV13ImageLocationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE42774();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4690, &qword_22FE4BEA8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_22FDE02B8(a1, &v23 - v16, type metadata accessor for StoredPhotoLayout.ImageLocation);
  sub_22FDE02B8(a2, &v17[v18], type metadata accessor for StoredPhotoLayout.ImageLocation);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_22FDE02B8(v17, v12, type metadata accessor for StoredPhotoLayout.ImageLocation);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v20 = sub_22FE42724();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_22FDE01F0(v17, type metadata accessor for StoredPhotoLayout.ImageLocation);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_22FD93E6C(v17, &qword_27DAE4690, &qword_22FE4BEA8);
    v20 = 0;
    return v20 & 1;
  }

  sub_22FDE01F0(v17, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v20 = 1;
  return v20 & 1;
}

uint64_t _s10PhotosFace17StoredPhotoLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v47 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4688, &qword_22FE4BEA0);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v9 = &v47 - v8;
  v10 = sub_22FE42774();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v48 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4690, &qword_22FE4BEA8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v47 - v24;
  v26 = *(v23 + 56);
  v53 = a1;
  sub_22FDE02B8(a1, &v47 - v24, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v54 = a2;
  sub_22FDE02B8(a2, &v25[v26], type metadata accessor for StoredPhotoLayout.ImageLocation);
  v27 = *(v11 + 48);
  if (v27(v25, 1, v10) == 1)
  {
    if (v27(&v25[v26], 1, v10) == 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    v28 = &qword_27DAE4690;
    v29 = &qword_22FE4BEA8;
    v30 = v25;
LABEL_14:
    sub_22FD93E6C(v30, v28, v29);
    goto LABEL_15;
  }

  sub_22FDE02B8(v25, v20, type metadata accessor for StoredPhotoLayout.ImageLocation);
  if (v27(&v25[v26], 1, v10) == 1)
  {
    (*(v11 + 8))(v20, v10);
    goto LABEL_6;
  }

  (*(v11 + 32))(v14, &v25[v26], v10);
  v31 = sub_22FE42724();
  v32 = *(v11 + 8);
  v32(v14, v10);
  v32(v20, v10);
  if ((v31 & 1) == 0)
  {
    sub_22FDE01F0(v25, type metadata accessor for StoredPhotoLayout.ImageLocation);
    goto LABEL_15;
  }

LABEL_8:
  sub_22FDE01F0(v25, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v33 = type metadata accessor for StoredPhotoLayout(0);
  v34 = v33[5];
  v35 = *(v50 + 48);
  v36 = v53;
  sub_22FD764B4(v53 + v34, v9, &qword_27DAE42D8, &unk_22FE4BA30);
  v37 = v54 + v34;
  v38 = v54;
  sub_22FD764B4(v37, &v9[v35], &qword_27DAE42D8, &unk_22FE4BA30);
  v39 = v52;
  v40 = *(v51 + 48);
  if (v40(v9, 1, v52) != 1)
  {
    v41 = v49;
    sub_22FD764B4(v9, v49, &qword_27DAE42D8, &unk_22FE4BA30);
    if (v40(&v9[v35], 1, v39) != 1)
    {
      v44 = &v9[v35];
      v45 = v48;
      sub_22FDE0250(v44, v48, type metadata accessor for StoredPhotoLayout.ImageLocation);
      v46 = _s10PhotosFace17StoredPhotoLayoutV13ImageLocationO2eeoiySbAE_AEtFZ_0(v41, v45);
      sub_22FDE01F0(v45, type metadata accessor for StoredPhotoLayout.ImageLocation);
      sub_22FDE01F0(v41, type metadata accessor for StoredPhotoLayout.ImageLocation);
      sub_22FD93E6C(v9, &qword_27DAE42D8, &unk_22FE4BA30);
      if ((v46 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    sub_22FDE01F0(v41, type metadata accessor for StoredPhotoLayout.ImageLocation);
    goto LABEL_13;
  }

  if (v40(&v9[v35], 1, v39) != 1)
  {
LABEL_13:
    v28 = &qword_27DAE4688;
    v29 = &qword_22FE4BEA0;
    v30 = v9;
    goto LABEL_14;
  }

  sub_22FD93E6C(v9, &qword_27DAE42D8, &unk_22FE4BA30);
LABEL_19:
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v36 + v33[6]), *(v38 + v33[6])), vceqq_f64(*(v36 + v33[6] + 16), *(v38 + v33[6] + 16))))) & 1) != 0 && *(v36 + v33[7]) == *(v38 + v33[7]) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v36 + v33[8]), *(v38 + v33[8])), vceqq_f64(*(v36 + v33[8] + 16), *(v38 + v33[8] + 16))))) & 1) != 0 && *(v36 + v33[9]) == *(v38 + v33[9]) && *(v36 + v33[10]) == *(v38 + v33[10]) && *(v36 + v33[11]) == *(v38 + v33[11]) && *(v36 + v33[12]) == *(v38 + v33[12]))
  {
    v42 = *(v36 + v33[13]) ^ *(v38 + v33[13]) ^ 1;
    return v42 & 1;
  }

LABEL_15:
  v42 = 0;
  return v42 & 1;
}

uint64_t _s10PhotosFace11StoredPhotoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s10PhotosFace7DailyIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StoredPhoto(0);
  v5 = v4[5];
  if ((sub_22FE42824() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  if ((sub_22FE42824() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v7 = v4[8];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (sub_22FE43CB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = v4[9];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17 || (*v14 != *v16 || v15 != v17) && (sub_22FE43CB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (*(a1 + v4[10]) == *(a2 + v4[10]) && (sub_22FDD7B90(*(a1 + v4[11]), *(a2 + v4[11])) & 1) != 0)
  {
    v18 = v4[12];
    v19 = (a1 + v18);
    v20 = *(a1 + v18 + 8);
    v21 = (a2 + v18);
    v22 = v21[1];
    if (v20)
    {
      if (v22 && (*v19 == *v21 && v20 == v22 || (sub_22FE43CB4() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v22)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22FDE0E20(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FDE0E58(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22FDE0F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

__n128 sub_22FDE0FB8(uint64_t a1)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22FDE109C(uint64_t a1)
{
  result = sub_22FDD5628(&qword_27DAE4650, type metadata accessor for StoredPhoto);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22FDE1140()
{
  result = qword_27DAE4658;
  if (!qword_27DAE4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4658);
  }

  return result;
}

void sub_22FDE1324()
{
  sub_22FE428C4();
  if (v0 <= 0x3F)
  {
    sub_22FE42854();
    if (v1 <= 0x3F)
    {
      sub_22FDAEF38();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PFCTimePosition(319);
        if (v3 <= 0x3F)
        {
          sub_22FDE1404();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22FDE1404()
{
  if (!qword_28148AE80)
  {
    type metadata accessor for PFCTimePosition(255);
    type metadata accessor for StoredPhotoLayout(255);
    sub_22FDD5628(&qword_28148AE58, type metadata accessor for PFCTimePosition);
    v0 = sub_22FE42FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_28148AE80);
    }
  }
}

void sub_22FDE14D8()
{
  type metadata accessor for StoredPhotoLayout.ImageLocation(319);
  if (v0 <= 0x3F)
  {
    sub_22FDE15A0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PFCTimePosition(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FDE15A0()
{
  if (!qword_28148B550)
  {
    type metadata accessor for StoredPhotoLayout.ImageLocation(255);
    v0 = sub_22FE43744();
    if (!v1)
    {
      atomic_store(v0, &qword_28148B550);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22FDE1604(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FDE1624(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_22FDE16C0()
{
  v0 = sub_22FE42774();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_22FDE171C(uint64_t *a1)
{
  v3 = **(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t sub_22FDE176C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t StoredPhotoLayout.baseFilename(for:)()
{
  v1 = sub_22FE42774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE4BD4(v0, v9, type metadata accessor for StoredPhotoLayout.ImageLocation);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    v10 = *(v0 + *(type metadata accessor for StoredPhotoLayout(0) + 28));
    v15[0] = 0x5F65736162;
    v15[1] = 0xE500000000000000;
    v11 = sub_22FE436D4();
    MEMORY[0x23190ACF0](v11);

    MEMORY[0x23190ACF0](95, 0xE100000000000000);
    sub_22FE428C4();
    sub_22FDE4C9C(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
    v12 = sub_22FE43C24();
    MEMORY[0x23190ACF0](v12);

    MEMORY[0x23190ACF0](0x636965682ELL, 0xE500000000000000);
    return v15[0];
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    v14 = sub_22FE426E4();
    (*(v2 + 8))(v5, v1);
    return v14;
  }
}

uint64_t StoredPhotoLayout.maskFilename(for:)(uint64_t a1)
{
  v26[1] = a1;
  v2 = sub_22FE42774();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v26 - v17;
  v19 = type metadata accessor for StoredPhotoLayout(0);
  sub_22FDE44BC(v1 + *(v19 + 20), v18);
  v20 = (*(v8 + 48))(v18, 1, v7);
  v21 = 0;
  if (v20 != 1)
  {
    sub_22FDE4B6C(v18, v14, type metadata accessor for StoredPhotoLayout.ImageLocation);
    sub_22FDE4BD4(v14, v11, type metadata accessor for StoredPhotoLayout.ImageLocation);
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      v22 = *(v1 + *(v19 + 28));
      v27 = 0x5F6B73616DLL;
      v28 = 0xE500000000000000;
      v23 = sub_22FE436D4();
      MEMORY[0x23190ACF0](v23);

      MEMORY[0x23190ACF0](95, 0xE100000000000000);
      sub_22FE428C4();
      sub_22FDE4C9C(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
      v24 = sub_22FE43C24();
      MEMORY[0x23190ACF0](v24);

      MEMORY[0x23190ACF0](1735290926, 0xE400000000000000);
      v21 = v27;
    }

    else
    {
      (*(v3 + 32))(v6, v11, v2);
      v21 = sub_22FE426E4();
      (*(v3 + 8))(v6, v2);
    }

    sub_22FDE4C3C(v14, type metadata accessor for StoredPhotoLayout.ImageLocation);
  }

  return v21;
}

uint64_t StoredPhoto.writeToDisk(at:)(uint64_t a1)
{
  v4 = *(type metadata accessor for StoredPhoto(0) + 44);
  v5 = *(v1 + v4);
  v10 = v1;
  v11 = a1;

  v6 = sub_22FDE48DC(sub_22FDE4630, &v9, v5);

  if (!v2)
  {
    v8 = *(v1 + v4);

    *(v1 + v4) = v6;
  }

  return result;
}

uint64_t sub_22FDE1ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v129 = a3;
  v135 = a2;
  v132 = a1;
  v117 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v116 = &v96 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v119 = &v96 - v9;
  v10 = type metadata accessor for StoredPhoto(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v105 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v123 = (&v96 - v14);
  v128 = sub_22FE426C4();
  v131 = *(v128 - 8);
  v15 = *(v131 + 64);
  MEMORY[0x28223BE20](v128);
  v122 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v120 = *(v17 - 8);
  v121 = v17;
  v18 = *(v120 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22FE428C4();
  v22 = *(v21 - 8);
  v23 = v22[8];
  MEMORY[0x28223BE20](v21);
  v113 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v96 - v26;
  v28 = sub_22FE42774();
  v29 = *(v28 - 8);
  v30 = v29[8];
  MEMORY[0x28223BE20](v28);
  v104 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v103 = &v96 - v33;
  MEMORY[0x28223BE20](v34);
  v127 = &v96 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v96 - v37;
  MEMORY[0x28223BE20](v39);
  v130 = &v96 - v40;
  v41 = type metadata accessor for StoredPhotoLayout(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE4BD4(v132, v44, type metadata accessor for StoredPhotoLayout);
  v45 = v22[2];
  v110 = v22 + 2;
  v109 = v45;
  v45(v27, v135, v21);
  sub_22FDE4BD4(v44, v20, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v46 = v29[6];
  v112 = v29 + 6;
  v111 = v46;
  v47 = v46(v20, 1, v28);
  v125 = v29;
  v126 = v44;
  v114 = v22;
  v115 = v21;
  v118 = v41;
  if (v47 == 1)
  {
    static SystemDirectory.baseImageURL(timePosition:uuid:)(*&v44[*(v41 + 28)], v27, v38);
    v108 = v22[1];
    v108(v27, v21);
    v48 = v29[4];
    v49 = (v29 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  }

  else
  {
    v108 = v22[1];
    v108(v27, v21);
    v48 = v29[4];
    v49 = (v29 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v48(v38, v20, v28);
  }

  v106 = v49;
  v107 = v48;
  v50 = v130;
  v48(v130, v38, v28);
  v133 = sub_22FE426E4();
  v134 = v51;
  LODWORD(v51) = *MEMORY[0x277CC91D8];
  v52 = v131;
  v132 = v28;
  v54 = v131 + 104;
  v53 = *(v131 + 104);
  v55 = v122;
  v102 = v51;
  v56 = v128;
  v101 = v53;
  v53(v122);
  v57 = sub_22FD750CC();
  v58 = v127;
  v100 = v57;
  sub_22FE42764();
  v61 = *(v52 + 8);
  v60 = v52 + 8;
  v59 = v61;
  v61(v55, v56);

  v62 = v123;
  sub_22FDE4BD4(v135, v123, type metadata accessor for StoredPhoto);
  v63 = v124;
  sub_22FDE2BE4(v50, v58);
  if (v63)
  {
    sub_22FDE4C3C(v62, type metadata accessor for StoredPhoto);
    v64 = v132;
    v65 = v125[1];
    v65(v58, v132);
    v65(v50, v64);
    v66 = v126;
    return sub_22FDE4C3C(v66, type metadata accessor for StoredPhotoLayout);
  }

  v98 = v59;
  v99 = v54;
  v124 = 0;
  v131 = v60;
  sub_22FDE4C3C(v62, type metadata accessor for StoredPhoto);
  v66 = v126;
  sub_22FDE4C3C(v126, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v68 = v125;
  v69 = v132;
  (v125[2])(v66, v58, v132);
  v70 = v58;
  v71 = v68[7];
  (v71)(v66, 0, 1, v69);
  v72 = v119;
  v73 = v118[5];
  sub_22FDE44BC(v66 + v73, v119);
  if ((*(v120 + 48))(v72, 1, v121) == 1)
  {
    v74 = v68[1];
    v75 = v132;
    v74(v58, v132);
    v74(v130, v75);
    v76 = &qword_27DAE42D8;
    v77 = &unk_22FE4BA30;
LABEL_11:
    sub_22FD93E6C(v72, v76, v77);
    goto LABEL_12;
  }

  v97 = v73;
  v118 = v71;
  v123 = v68 + 7;
  sub_22FD93E6C(v72, &qword_27DAE42D8, &unk_22FE4BA30);
  v78 = v113;
  v79 = v135;
  v80 = v115;
  v109(v113, v135, v115);
  v81 = v116;
  StoredPhotoLayout.maskURL(for:)(v78, v116);
  v108(v78, v80);
  if (v111(v81, 1, v132) == 1)
  {
    v72 = v81;
    v82 = v68[1];
    v83 = v70;
    v84 = v132;
    v82(v83, v132);
    v82(v130, v84);
    v76 = &qword_27DAE4300;
    v77 = &qword_22FE4AB28;
    goto LABEL_11;
  }

  v85 = v103;
  v107(v103, v81, v132);
  v133 = sub_22FE426E4();
  v134 = v86;
  v87 = v128;
  v101(v55, v102, v128);
  v88 = v104;
  sub_22FE42764();
  v98(v55, v87);

  v89 = v105;
  sub_22FDE4BD4(v79, v105, type metadata accessor for StoredPhoto);
  v90 = v124;
  sub_22FDE2BE4(v85, v88);
  v124 = v90;
  if (v90)
  {
    sub_22FDE4C3C(v89, type metadata accessor for StoredPhoto);
    v91 = v68[1];
    v92 = v132;
    v91(v88, v132);
    v91(v85, v92);
    v91(v127, v92);
    v91(v130, v92);
    return sub_22FDE4C3C(v66, type metadata accessor for StoredPhotoLayout);
  }

  sub_22FDE4C3C(v89, type metadata accessor for StoredPhoto);
  v93 = v68[1];
  v94 = v132;
  v93(v85, v132);
  v93(v127, v94);
  v93(v130, v94);
  v95 = v97;
  sub_22FD93E6C(v66 + v97, &qword_27DAE42D8, &unk_22FE4BA30);
  v107((v66 + v95), v88, v94);
  (v118)(v66 + v95, 0, 1, v94);
  (*(v120 + 56))(v66 + v95, 0, 1, v121);
LABEL_12:
  sub_22FDE4BD4(v66, v117, type metadata accessor for StoredPhotoLayout);
  return sub_22FDE4C3C(v66, type metadata accessor for StoredPhotoLayout);
}

uint64_t StoredPhotoLayout.baseURL(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE4BD4(v3, v9, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v10 = sub_22FE42774();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v9, v10);
  }

  v12 = type metadata accessor for StoredPhotoLayout(0);
  return static SystemDirectory.baseImageURL(timePosition:uuid:)(*(v3 + *(v12 + 28)), a1, a2);
}

uint64_t sub_22FDE2BE4(uint64_t a1, uint64_t a2)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22FE42774();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v38[-v11];
  v44 = a1;
  result = sub_22FE42724();
  if ((result & 1) == 0)
  {
    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v14 = sub_22FE42D34();
    __swift_project_value_buffer(v14, qword_28148B108);
    v15 = v6[2];
    v15(v12, v44, v5);
    v15(v9, a2, v5);
    v16 = sub_22FE42D14();
    v17 = sub_22FE436C4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v42 = a2;
      v19 = v18;
      v41 = swift_slowAlloc();
      v45[0] = v41;
      *v19 = 136315394;
      sub_22FDE4C9C(&qword_28148BE60, MEMORY[0x277CC9260]);
      v40 = v16;
      v39 = v17;
      v20 = sub_22FE43C24();
      v22 = v21;
      v43 = v2;
      v23 = v6[1];
      v23(v12, v5);
      v24 = sub_22FD98218(v20, v22, v45);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      v25 = sub_22FE43C24();
      v27 = v26;
      v23(v9, v5);
      v28 = sub_22FD98218(v25, v27, v45);

      *(v19 + 14) = v28;
      v29 = v40;
      _os_log_impl(&dword_22FD6D000, v40, v39, "Copying cache item from %s to %s", v19, 0x16u);
      v30 = v41;
      swift_arrayDestroy();
      MEMORY[0x23190C380](v30, -1, -1);
      MEMORY[0x23190C380](v19, -1, -1);
    }

    else
    {

      v31 = v6[1];
      v31(v9, v5);
      v31(v12, v5);
    }

    v32 = [objc_opt_self() defaultManager];
    v33 = sub_22FE426F4();
    v34 = sub_22FE426F4();
    v45[0] = 0;
    v35 = [v32 copyItemAtURL:v33 toURL:v34 error:v45];

    if (v35)
    {
      result = v45[0];
    }

    else
    {
      v36 = v45[0];
      sub_22FE426B4();

      result = swift_willThrow();
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t StoredPhotoLayout.maskURL(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a1;
  v59 = a2;
  v3 = sub_22FE426C4();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FE42774();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v46 - v11;
  MEMORY[0x28223BE20](v12);
  v58 = &v46 - v13;
  v14 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v46 - v24;
  v26 = type metadata accessor for StoredPhotoLayout(0);
  v27 = *(v26 + 20);
  v51 = v2;
  sub_22FDE44BC(v2 + v27, v25);
  v28 = 1;
  v29 = (*(v15 + 48))(v25, 1, v14);
  v30 = v59;
  if (v29 != 1)
  {
    sub_22FDE4B6C(v25, v21, type metadata accessor for StoredPhotoLayout.ImageLocation);
    sub_22FDE4BD4(v21, v18, type metadata accessor for StoredPhotoLayout.ImageLocation);
    if ((*(v7 + 48))(v18, 1, v6) == 1)
    {
      v31 = v7;
      v50 = v21;
      v46 = *(v51 + *(v26 + 28));
      if (qword_28148B788 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v6, qword_28148B790);
      v32 = v52;
      sub_22FE42704();
      v60 = sub_22FE42874();
      v61 = v33;
      LODWORD(v51) = *MEMORY[0x277CC91D8];
      v35 = v53;
      v34 = v54;
      v49 = *(v54 + 104);
      v36 = v55;
      v49(v53);
      v48 = sub_22FD750CC();
      sub_22FE42764();
      v54 = *(v34 + 8);
      (v54)(v35, v36);

      v47 = v31;
      v37 = *(v31 + 8);
      v37(v32, v6);
      v60 = 0x5F6B73616DLL;
      v61 = 0xE500000000000000;
      v38 = sub_22FE436D4();
      MEMORY[0x23190ACF0](v38);

      MEMORY[0x23190ACF0](95, 0xE100000000000000);
      sub_22FE428C4();
      sub_22FDE4C9C(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
      v39 = sub_22FE43C24();
      MEMORY[0x23190ACF0](v39);

      MEMORY[0x23190ACF0](1735290926, 0xE400000000000000);
      (v49)(v35, v51, v36);
      v40 = v57;
      v41 = v58;
      sub_22FE42764();
      v42 = v36;
      v7 = v47;
      (v54)(v35, v42);

      v37(v40, v6);
      sub_22FDE4C3C(v50, type metadata accessor for StoredPhotoLayout.ImageLocation);
      (*(v7 + 32))(v30, v41, v6);
    }

    else
    {
      sub_22FDE4C3C(v21, type metadata accessor for StoredPhotoLayout.ImageLocation);
      v43 = *(v7 + 32);
      v44 = v58;
      v43(v58, v18, v6);
      v43(v30, v44, v6);
    }

    v28 = 0;
  }

  return (*(v7 + 56))(v30, v28, 1, v6);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoredPhoto.writeToCache()()
{
  v2 = *(type metadata accessor for StoredPhoto(0) + 44);
  v3 = *(v0 + v2);

  v5 = sub_22FDE464C(v4, v0);

  if (!v1)
  {

    *(v0 + v2) = v5;
  }
}

uint64_t sub_22FDE36A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a2;
  v89 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v88 = v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = v82 - v9;
  v10 = type metadata accessor for StoredPhoto(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v85 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v94 = (v82 - v14);
  v15 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v91 = *(v15 - 8);
  v92 = v15;
  v16 = *(v91 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22FE428C4();
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v19);
  v98 = v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v82 - v24;
  v26 = sub_22FE42774();
  v27 = *(v26 - 8);
  v28 = v27[8];
  MEMORY[0x28223BE20](v26);
  v83 = v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v84 = v82 - v31;
  MEMORY[0x28223BE20](v32);
  v103 = v82 - v33;
  MEMORY[0x28223BE20](v34);
  v105 = v82 - v35;
  MEMORY[0x28223BE20](v36);
  v104 = v82 - v37;
  v38 = type metadata accessor for StoredPhotoLayout(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = v82 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE4BD4(a1, v41, type metadata accessor for StoredPhotoLayout);
  v100 = v20[2];
  v97 = v20 + 2;
  v100(v25, v106, v19);
  sub_22FDE4BD4(v41, v18, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v42 = v27[6];
  v93 = v26;
  v86 = v42;
  v87 = v27 + 6;
  v43 = v42(v18, 1, v26);
  v99 = v27;
  v101 = v38;
  if (v43 == 1)
  {
    static SystemDirectory.baseImageURL(timePosition:uuid:)(*&v41[*(v38 + 28)], v25, v105);
    v44 = (v20 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v102 = v20[1];
    v102(v25, v19);
    v45 = v27[4];
    v46 = (v27 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v47 = v93;
  }

  else
  {
    v44 = (v20 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v102 = v20[1];
    v102(v25, v19);
    v45 = v27[4];
    v46 = (v27 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v48 = v18;
    v47 = v93;
    v45(v105, v48, v93);
  }

  v82[1] = v46;
  v93 = v45;
  v49 = v104;
  v45(v104, v105, v47);
  v50 = *&v41[*(v101 + 28)];
  v51 = v98;
  v52 = v106;
  v100(v98, v106, v19);
  v53 = v19;
  v54 = v103;
  static SystemDirectory.baseImageURL(timePosition:uuid:)(v50, v51, v103);
  v102(v51, v53);
  v55 = v94;
  sub_22FDE4BD4(v52, v94, type metadata accessor for StoredPhoto);
  v56 = v95;
  sub_22FDE2BE4(v49, v54);
  v96 = v41;
  if (!v56)
  {
    v95 = v50;
    v105 = v44;
    sub_22FDE4C3C(v55, type metadata accessor for StoredPhoto);
    sub_22FDE4C3C(v41, type metadata accessor for StoredPhotoLayout.ImageLocation);
    v59 = v47;
    v60 = v99;
    v62 = (v99 + 7);
    v61 = v99[7];
    (v61)(v41, 1, 1, v47);
    v101 = *(v101 + 20);
    v63 = v90;
    sub_22FDE44BC(&v41[v101], v90);
    if ((*(v91 + 48))(v63, 1, v92) == 1)
    {
      v64 = v60[1];
      v64(v103, v47);
      v64(v104, v47);
      v65 = &qword_27DAE42D8;
      v66 = &unk_22FE4BA30;
      v67 = v63;
    }

    else
    {
      v94 = v61;
      sub_22FD93E6C(v63, &qword_27DAE42D8, &unk_22FE4BA30);
      v68 = v98;
      v100(v98, v106, v53);
      v69 = v88;
      StoredPhotoLayout.maskURL(for:)(v68, v88);
      v70 = v68;
      v71 = v102;
      v102(v68, v53);
      if (v86(v69, 1, v59) != 1)
      {
        v90 = v62;
        v102 = v71;
        v75 = v84;
        v93(v84, v69, v59);
        v76 = v106;
        v100(v70, v106, v53);
        v77 = v83;
        static SystemDirectory.maskImageURL(timePosition:uuid:)(v95, v70, v83);
        v102(v70, v53);
        v78 = v85;
        sub_22FDE4BD4(v76, v85, type metadata accessor for StoredPhoto);
        sub_22FDE2BE4(v75, v77);
        sub_22FDE4C3C(v78, type metadata accessor for StoredPhoto);
        v79 = v99[1];
        v79(v77, v59);
        v79(v75, v59);
        v79(v103, v59);
        v79(v104, v59);
        v80 = v96;
        v81 = v101;
        sub_22FD93E6C(&v96[v101], &qword_27DAE42D8, &unk_22FE4BA30);
        (v94)(v80 + v81, 1, 1, v59);
        (*(v91 + 56))(v80 + v81, 0, 1, v92);
        goto LABEL_11;
      }

      v72 = v99[1];
      v72(v103, v59);
      v72(v104, v59);
      v65 = &qword_27DAE4300;
      v66 = &qword_22FE4AB28;
      v67 = v69;
    }

    sub_22FD93E6C(v67, v65, v66);
LABEL_11:
    v73 = v96;
    sub_22FDE4BD4(v96, v89, type metadata accessor for StoredPhotoLayout);
    v58 = v73;
    return sub_22FDE4C3C(v58, type metadata accessor for StoredPhotoLayout);
  }

  sub_22FDE4C3C(v55, type metadata accessor for StoredPhoto);
  v57 = v99[1];
  v57(v54, v47);
  v57(v49, v47);
  v58 = v96;
  return sub_22FDE4C3C(v58, type metadata accessor for StoredPhotoLayout);
}

uint64_t sub_22FDE4110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v31 = a3;
  v32 = a1;
  v35 = a6;
  v7 = sub_22FE426C4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22FE42774();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  if (qword_28148B788 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_28148B790);
  sub_22FE42704();
  v20 = sub_22FE42874();
  v26 = a2;
  v36 = v20;
  v37 = v21;
  v30 = *MEMORY[0x277CC91D8];
  v29 = v8[13];
  v29(v11);
  v28 = sub_22FD750CC();
  sub_22FE42764();
  v27 = v8[1];
  v27(v11, v7);
  v22 = *(v13 + 8);
  v22(v16, v12);

  v36 = v31;
  v37 = 0xE500000000000000;
  v23 = sub_22FE436D4();
  MEMORY[0x23190ACF0](v23);

  MEMORY[0x23190ACF0](95, 0xE100000000000000);
  sub_22FE428C4();
  sub_22FDE4C9C(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
  v24 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v24);

  MEMORY[0x23190ACF0](v33, v34);
  (v29)(v11, v30, v7);
  sub_22FE42764();
  v27(v11, v7);

  return (v22)(v19, v12);
}

uint64_t sub_22FDE44BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDE4548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_22FE436D4();
  MEMORY[0x23190ACF0](v7);

  MEMORY[0x23190ACF0](95, 0xE100000000000000);
  sub_22FE428C4();
  sub_22FDE4C9C(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
  v8 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v8);

  MEMORY[0x23190ACF0](a4, a5);
  return a3;
}

uint64_t sub_22FDE464C(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for StoredPhotoLayout(0);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = &v30 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
  result = sub_22FE43AE4();
  v10 = result;
  v11 = 0;
  v35 = a1;
  v14 = *(a1 + 64);
  v13 = a1 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v30 = v13;
  v31 = result + 64;
  v32 = result;
  v19 = v33;
  if (v17)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v17));
      v37 = (v17 - 1) & v17;
LABEL_10:
      v23 = v20 | (v11 << 6);
      v24 = *(*(v35 + 48) + 8 * v23);
      v25 = *(v34 + 72) * v23;
      sub_22FDE4BD4(*(v35 + 56) + v25, v19, type metadata accessor for StoredPhotoLayout);
      v26 = v38;
      sub_22FDE36A8(v19, v36, v6);
      sub_22FDE4C3C(v19, type metadata accessor for StoredPhotoLayout);
      v38 = v26;
      if (v26)
      {
        break;
      }

      v10 = v32;
      *(v31 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(v10[6] + 8 * v23) = v24;
      result = sub_22FDE4B6C(v6, v10[7] + v25, type metadata accessor for StoredPhotoLayout);
      v27 = v10[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_17;
      }

      v10[2] = v29;
      v17 = v37;
      if (!v37)
      {
        goto LABEL_5;
      }
    }

    v10 = v32;

    return v10;
  }

  else
  {
LABEL_5:
    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        return v10;
      }

      v22 = *(v30 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v37 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FDE48DC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v4 = type metadata accessor for StoredPhotoLayout(0);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = &v31 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
  result = sub_22FE43AE4();
  v11 = result;
  v12 = 0;
  v39 = a3;
  v15 = *(a3 + 64);
  v14 = a3 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v32 = v14;
  v33 = result + 64;
  v34 = result;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v40 = (v18 - 1) & v18;
LABEL_10:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v39 + 48) + 8 * v23);
      v25 = v35;
      v26 = *(v36 + 72) * v23;
      sub_22FDE4BD4(*(v39 + 56) + v26, v35, type metadata accessor for StoredPhotoLayout);
      v27 = v41;
      v37(v25);
      sub_22FDE4C3C(v25, type metadata accessor for StoredPhotoLayout);
      v41 = v27;
      if (v27)
      {
        break;
      }

      v11 = v34;
      *(v33 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(v11[6] + 8 * v23) = v24;
      result = sub_22FDE4B6C(v7, v11[7] + v26, type metadata accessor for StoredPhotoLayout);
      v28 = v11[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_17;
      }

      v11[2] = v30;
      v18 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }

    v11 = v34;

    return v11;
  }

  else
  {
LABEL_5:
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
        return v11;
      }

      v22 = *(v32 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v40 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FDE4B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDE4BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDE4C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FDE4C9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FDE4D10()
{
  type metadata accessor for CommunicationActor();
  v0 = swift_allocObject();
  if (qword_28148B420 != -1)
  {
    v1 = v0;
    swift_once();
    v0 = v1;
  }

  *(v0 + 16) = qword_28148B428;
  off_28148B418 = v0;

  return MEMORY[0x2821F9840]();
}

uint64_t static CommunicationActor.shared.getter()
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22FDE4DF8()
{
  v0 = sub_22FE436E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FE436F4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22FE42EA4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22FDE5450();
  sub_22FE42E94();
  v10[1] = MEMORY[0x277D84F90];
  sub_22FDE549C(&qword_28148AE48, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE46B8, &qword_22FE4C078);
  sub_22FDE54E4();
  sub_22FE43824();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v0);
  result = sub_22FE43704();
  qword_28148B428 = result;
  return result;
}

id static CommunicationActor.sharedQueue.getter()
{
  if (qword_28148B420 != -1)
  {
    swift_once();
  }

  v1 = qword_28148B428;

  return v1;
}

uint64_t static CommunicationActor.assumeOnQueue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22FE42EB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  v12 = *(off_28148B418 + 2);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_22FE42EC4();
  result = (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a1;
  v15[4] = a2;

  sub_22FDE5294();

  if (v3)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v17 = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FDE5294()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t CommunicationActor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22FDE5380()
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22FDE53DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CommunicationActor();

  return MEMORY[0x2822005F8](v3, a2);
}

unint64_t sub_22FDE5450()
{
  result = qword_28148AE40;
  if (!qword_28148AE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28148AE40);
  }

  return result;
}

uint64_t sub_22FDE549C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22FDE54E4()
{
  result = qword_28148AE68;
  if (!qword_28148AE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE46B8, &qword_22FE4C078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148AE68);
  }

  return result;
}

void LazyData.write(to:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_22FDE17D4(v1 + v2, &v4);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t LazyData.__allocating_init(filename:isTempFile:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_22FE42774();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  swift_allocObject();
  v10 = sub_22FDE62BC(0, 0xF000000000000000, v7, a2);
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t LazyData.getData()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v6 = *(v0 + 16);
  v7 = (v6 + *(*v6 + *MEMORY[0x277D841D0] + 16));
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  v9 = *v7;
  v10 = v7[1];
  if (v10 >> 60 != 15)
  {
    v11 = *v7;
    v18 = v7[1];
    goto LABEL_7;
  }

  v23 = *v7;
  v11 = v1;
  v12 = type metadata accessor for LazyDataState();
  sub_22FDE6558(v7 + *(v12 + 20), v5);
  v13 = sub_22FE42774();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v5, 1, v13);
  if (result != 1)
  {
    v16 = sub_22FE42794();
    v24 = v1;
    if (v1)
    {
      (*(v14 + 8))(v5, v13);
      os_unfair_lock_unlock((v6 + v8));
      return v11;
    }

    v11 = v16;
    v19 = v17;
    (*(v14 + 8))(v5, v13);
    v20 = *v7;
    v21 = v7[1];
    *v7 = v11;
    v7[1] = v19;
    sub_22FDB4380(v11, v19);
    sub_22FDC27F0(v20, v21);
    v9 = v23;
LABEL_7:
    sub_22FDE65C8(v9, v10);
    os_unfair_lock_unlock((v6 + v8));
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t LazyData.__allocating_init(data:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = sub_22FE42774();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  swift_allocObject();
  return sub_22FDE62BC(a1, a2, v7, 0);
}

void sub_22FDE5A54(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v56[1] = *MEMORY[0x277D85DE8];
  v50 = a3;
  v53 = *a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v49 - v13;
  v15 = sub_22FE42774();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v51 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v49 - v20;
  v22 = [objc_opt_self() defaultManager];
  v55 = a2;
  v23 = sub_22FE426F4();
  v56[0] = 0;
  v54 = v22;
  LODWORD(v22) = [v22 removeItemAtURL:v23 error:v56];

  if (v22)
  {
    v24 = v56[0];
  }

  else
  {
    v25 = v56[0];
    v26 = sub_22FE426B4();

    swift_willThrow();
    v5 = 0;
  }

  v27 = type metadata accessor for LazyDataState();
  sub_22FDE6558(a1 + *(v27 + 20), v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v49[0] = a4;
    v49[1] = v5;
    (*(v16 + 32))(v21, v14, v15);
    v31 = *(v27 + 24);
    v32 = *(a1 + v31);
    v33 = sub_22FE426F4();
    v34 = sub_22FE426F4();
    if (v32 == 1)
    {
      v56[0] = 0;
      v35 = v54;
      v36 = [v54 moveItemAtURL:v33 toURL:v34 error:v56];

      v37 = v56[0];
      if (v36)
      {
        v38 = *(v16 + 8);
        v39 = v56[0];
        v38(v21, v15);

        *(a1 + v31) = 0;
        *v49[0] = v50;

        goto LABEL_16;
      }
    }

    else
    {
      v56[0] = 0;
      v35 = v54;
      v40 = [v54 copyItemAtURL:v33 toURL:v34 error:v56];

      v37 = v56[0];
      if (v40)
      {
        v41 = *(v16 + 8);
        v42 = v56[0];
        v41(v21, v15);
        a4 = v49[0];
        v30 = v55;
        goto LABEL_15;
      }
    }

    v43 = v37;
    sub_22FE426B4();

    swift_willThrow();
    (*(v16 + 8))(v21, v15);
    goto LABEL_16;
  }

  sub_22FDB290C(v14);
  v28 = *(a1 + 8);
  if (v28 >> 60 != 15)
  {
    v29 = *a1;
    sub_22FDB4380(*a1, *(a1 + 8));
    v30 = v55;
    sub_22FE427D4();
    sub_22FDC27F0(v29, v28);
    if (v5)
    {

LABEL_16:
      v48 = *MEMORY[0x277D85DE8];
      return;
    }

    v35 = v54;
LABEL_15:
    v44 = *(v16 + 16);
    v45 = v51;
    v44(v51, v30, v15);
    v46 = v52;
    v44(v52, v45, v15);
    (*(v16 + 56))(v46, 0, 1, v15);
    swift_allocObject();
    v47 = sub_22FDE62BC(0, 0xF000000000000000, v46, 0);

    (*(v16 + 8))(v45, v15);
    *a4 = v47;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t LazyData.isNormalFile.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = *(v0 + 16);
  v6 = v5 + *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v8 = type metadata accessor for LazyDataState();
  sub_22FDE6558(v6 + *(v8 + 20), v4);
  v9 = sub_22FE42774();
  v10 = (*(*(v9 - 8) + 48))(v4, 1, v9);
  sub_22FDB290C(v4);
  if (v10 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v6 + *(v8 + 24)) ^ 1;
  }

  os_unfair_lock_unlock((v5 + v7));
  return v11 & 1;
}

void LazyData.filename.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3 + *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = type metadata accessor for LazyDataState();
  if (*(v4 + *(v6 + 24)) == 1)
  {
    v7 = sub_22FE42774();
    (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  else
  {
    sub_22FDE6558(v4 + *(v6 + 20), a1);
  }

  os_unfair_lock_unlock((v3 + v5));
}

BOOL LazyData.isEmpty.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(*v1 + *MEMORY[0x277D841D0] + 16));
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = v2[1];
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v2;
    v7 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v7 == 2)
      {
        v8 = *(v6 + 16);
        v9 = *(v6 + 24);
      }

      else
      {
        sub_22FDC27F0(v6, v2[1]);
        v9 = 0;
        v8 = 0;
      }
    }

    else if (v7)
    {
      v8 = v6;
      v9 = v6 >> 32;
    }

    else
    {
      sub_22FDC27F0(v6, v2[1]);
      v8 = 0;
      v9 = BYTE6(v4);
    }

    v5 = v8 == v9;
  }

  os_unfair_lock_unlock((v1 + v3));
  return v5;
}

uint64_t sub_22FDE62BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for LazyDataState();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  sub_22FDE6558(a3, v12);
  *v20 = xmmword_22FE4BA20;
  v21 = *(v14 + 28);
  v22 = sub_22FE42774();
  (*(*(v22 - 8) + 56))(&v20[v21], 1, 1, v22);
  sub_22FDC27F0(*v20, *(v20 + 1));
  *v20 = a1;
  *(v20 + 1) = a2;
  sub_22FDE6E70(v12, &v20[v21]);
  v20[*(v14 + 32)] = a4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45E8, &qword_22FE4BA40);
  v24 = *(v23 + 52);
  v25 = (*(v23 + 48) + 3) & 0x1FFFFFFFCLL;
  v26 = swift_allocObject();
  *(v26 + ((*(*v26 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_22FDE6EE0(v20, v17);
  sub_22FDB290C(a3);
  sub_22FDE6F44(v20);
  sub_22FDE6FA0(v17, v26 + *(*v26 + *MEMORY[0x277D841D0] + 16));
  *(v4 + 16) = v26;
  return v4;
}

uint64_t type metadata accessor for LazyDataState()
{
  result = qword_27DAE46C0;
  if (!qword_27DAE46C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FDE6558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDE65C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22FDB4380(a1, a2);
  }

  return a1;
}

uint64_t LazyData.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_22FDE6694(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));

  v4 = *(v0 + 16);

  return v0;
}

uint64_t sub_22FDE6694(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v20 - v4;
  v6 = sub_22FE42774();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LazyDataState();
  sub_22FDE6558(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    if (*(a1 + *(v11 + 24)) == 1)
    {
      v13 = [objc_opt_self() defaultManager];
      v14 = sub_22FE426F4();
      v20[0] = 0;
      v15 = [v13 removeItemAtURL:v14 error:v20];

      if (v15)
      {
        v16 = *(v7 + 8);
        v17 = v20[0];
        result = v16(v10, v6);
        goto LABEL_8;
      }

      v18 = v20[0];
      sub_22FE426B4();

      swift_willThrow();
    }

    result = (*(v7 + 8))(v10, v6);
    goto LABEL_8;
  }

  result = sub_22FDB290C(v5);
LABEL_8:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t LazyData.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_22FDE6694(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));

  v4 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t LazyData.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24 - v3;
  v5 = *(v0 + 16);
  v6 = (v5 + *(*v5 + *MEMORY[0x277D841D0] + 16));
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v8 = *v6;
  v9 = v6[1];
  v10 = *v6;
  v11 = v9;
  if (v9 >> 60 == 15)
  {
    v25 = v7;
    v12 = type metadata accessor for LazyDataState();
    sub_22FDE6558(v6 + *(v12 + 20), v4);
    v13 = sub_22FE42774();
    v14 = *(v13 - 8);
    result = (*(v14 + 48))(v4, 1, v13);
    if (result == 1)
    {
      goto LABEL_16;
    }

    v10 = sub_22FE42794();
    v11 = v16;
    (*(v14 + 8))(v4, v13);
    v18 = *v6;
    v17 = v6[1];
    *v6 = v10;
    v6[1] = v11;
    sub_22FDB4380(v10, v11);
    sub_22FDC27F0(v18, v17);
    v7 = v25;
  }

  sub_22FDE65C8(v8, v9);
  os_unfair_lock_unlock((v5 + v7));
  v19 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v19 != 2)
    {
      sub_22FD917D4(v10, v11);
      v20 = 0;
      goto LABEL_14;
    }

    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    sub_22FD917D4(v10, v11);
    v20 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v19)
  {
    sub_22FD917D4(v10, v11);
    v20 = BYTE6(v11);
LABEL_14:
    v26 = v20;
    v27 = sub_22FE43C24();
    v28 = v23;
    MEMORY[0x23190ACF0](0x736574796220, 0xE600000000000000);
    return v27;
  }

  result = sub_22FD917D4(v10, v11);
  LODWORD(v20) = HIDWORD(v10) - v10;
  if (!__OFSUB__(HIDWORD(v10), v10))
  {
    v20 = v20;
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_22FDE6D3C()
{
  sub_22FDE6DC8();
  if (v0 <= 0x3F)
  {
    sub_22FDE6E18();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FDE6DC8()
{
  if (!qword_27DAE46D0)
  {
    v0 = sub_22FE43744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE46D0);
    }
  }
}

void sub_22FDE6E18()
{
  if (!qword_27DAE46D8)
  {
    sub_22FE42774();
    v0 = sub_22FE43744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE46D8);
    }
  }
}

uint64_t sub_22FDE6E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDE6EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyDataState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDE6F44(uint64_t a1)
{
  v2 = type metadata accessor for LazyDataState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FDE6FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyDataState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDE7004(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v25 = *(a1 + 24);
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  v5 = sub_22FDE8BE8(*a1, v2, v3, v25, v26, v27, v4);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    sub_22FDE9138(v1, v2, v3);
    result = sub_22FD92328(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
LABEL_37:
      __break(1u);
    }

    else
    {
      v9 = v4;
      v28 = v4 + 64;
      v10 = v6;
      v11 = 1;
      v12 = v1;
      v13 = v2;
      v22 = v1;
      v23 = v2;
      v24 = v9;
      v21 = v3;
      while ((v3 & 1) == 0)
      {
        if (v13 != v2)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
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
          goto LABEL_37;
        }

        if (v12 < v1)
        {
          goto LABEL_27;
        }

        if (v27)
        {
          goto LABEL_39;
        }

        if (v2 != v26)
        {
          goto LABEL_28;
        }

        if (v12 >= v25)
        {
          goto LABEL_29;
        }

        if (v12 < 0 || v12 >= 1 << *(v9 + 32))
        {
          goto LABEL_30;
        }

        if ((*(v28 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v9 + 36) != v2)
        {
          goto LABEL_32;
        }

        v14 = (*(v9 + 48) + 16 * v12);
        v15 = *(*(v9 + 56) + 8 * v12);
        v29 = *v14;
        v30 = v14[1];
        swift_bridgeObjectRetain_n();

        MEMORY[0x23190ACF0](8250, 0xE200000000000000);
        v16 = LazyData.description.getter();
        MEMORY[0x23190ACF0](v16);

        v17 = *(v6 + 16);
        v18 = *(v6 + 24);
        if (v17 >= v18 >> 1)
        {
          result = sub_22FD92328((v18 > 1), v17 + 1, 1);
        }

        *(v6 + 16) = v17 + 1;
        v19 = v6 + 16 * v17;
        *(v19 + 32) = v29;
        *(v19 + 40) = v30;
        v9 = v24;
        if (v12 >= -(-1 << *(v24 + 32)))
        {
          goto LABEL_33;
        }

        if ((*(v28 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_34;
        }

        LODWORD(v2) = v23;
        if (*(v24 + 36) != v23)
        {
          goto LABEL_35;
        }

        result = sub_22FE43854();
        if (v7 == v11)
        {
          return v10;
        }

        v12 = result;
        v13 = *(v24 + 36);
        v20 = __OFADD__(v11++, 1);
        v1 = v22;
        v3 = v21;
        if (v20)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

PhotosFace::ProtocolVersion_optional __swiftcall ProtocolVersion.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22FDE72FC()
{
  v1 = *v0;
  sub_22FE43DB4();
  sub_22FE43DE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDE7370()
{
  v1 = *v0;
  sub_22FE43DB4();
  sub_22FE43DE4();
  return sub_22FE43E04();
}

uint64_t MessageBody.metadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MessageBody.files.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MessageBody.init(metadata:files:version:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t MessageBody.init(data:files:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  LOBYTE(a4) = *a4;
  v14 = sub_22FE42774();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  type metadata accessor for LazyData();
  swift_allocObject();
  result = sub_22FDE62BC(a1, a2, v13, 0);
  *a5 = result;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  return result;
}

uint64_t MessageBody.getData()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v6 = *(*v0 + 16);
  v7 = (v6 + *(*v6 + *MEMORY[0x277D841D0] + 16));
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  v9 = *v7;
  v10 = v7[1];
  if (v10 >> 60 != 15)
  {
    v11 = *v7;
    v18 = v7[1];
    goto LABEL_7;
  }

  v23 = *v7;
  v11 = v1;
  v12 = type metadata accessor for LazyDataState();
  sub_22FDE6558(v7 + *(v12 + 20), v5);
  v13 = sub_22FE42774();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v5, 1, v13);
  if (result != 1)
  {
    v16 = sub_22FE42794();
    v24 = v1;
    if (v1)
    {
      (*(v14 + 8))(v5, v13);
      os_unfair_lock_unlock((v6 + v8));
      return v11;
    }

    v11 = v16;
    v19 = v17;
    (*(v14 + 8))(v5, v13);
    v20 = *v7;
    v21 = v7[1];
    sub_22FDB4380(v11, v19);
    sub_22FDC27F0(v20, v21);
    *v7 = v11;
    v7[1] = v19;
    v9 = v23;
LABEL_7:
    sub_22FDE65C8(v9, v10);
    os_unfair_lock_unlock((v6 + v8));
    return v11;
  }

  __break(1u);
  return result;
}

BOOL MessageBody.isEmpty.getter()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  v3 = (v2 + *(*v2 + *MEMORY[0x277D841D0] + 16));
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    os_unfair_lock_unlock((v2 + v4));
    return 0;
  }

  v6 = *v3;
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      sub_22FDC27F0(v6, v3[1]);
      os_unfair_lock_unlock((v2 + v4));
      return *(v1 + 16) == 0;
    }

    v8 = *(v6 + 16);
    v9 = *(v6 + 24);
  }

  else if (v7)
  {
    v8 = v6;
    v9 = v6 >> 32;
  }

  else
  {
    sub_22FDC27F0(v6, v3[1]);
    v8 = 0;
    v9 = BYTE6(v5);
  }

  os_unfair_lock_unlock((v2 + v4));
  if (v8 != v9)
  {
    return 0;
  }

  return *(v1 + 16) == 0;
}

uint64_t static MessageBody.empty(version:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = *a1;
  v9 = sub_22FD75618(MEMORY[0x277D84F90]);
  v10 = sub_22FE42774();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  type metadata accessor for LazyData();
  swift_allocObject();
  result = sub_22FDE62BC(0, 0xC000000000000000, v7, 0);
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  return result;
}

uint64_t MessageBody.init<A>(serializable:version:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v25 - v14;
  v16 = *a2;
  v28 = MEMORY[0x277D84F98];
  v27 = v16;
  (*(a4 + 24))(&v28, &v27, a3, a4, v13);
  v26 = v16;
  v17 = (*(a4 + 16))(&v26, a3, a4);
  if (v5)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
  }

  else
  {
    v20 = v28;
    v21 = v17;
    v22 = v18;
    v23 = sub_22FE42774();
    (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
    type metadata accessor for LazyData();
    swift_allocObject();
    v24 = sub_22FDE62BC(v21, v22, v15, 0);
    result = (*(*(a3 - 8) + 8))(a1, a3);
    *a5 = v24;
    *(a5 + 8) = v20;
    *(a5 + 16) = v16;
  }

  return result;
}

void MessageBody.deserialized<A>()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v29 - v8;
  v10 = *v3;
  v31 = v3[1];
  v34 = *(v3 + 16);
  v11 = *(v10 + 16);
  v12 = (v11 + *(*v11 + *MEMORY[0x277D841D0] + 16));
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v11 + v13));
  v14 = *v12;
  v15 = v12[1];
  if (v15 >> 60 == 15)
  {
    v29[0] = *v12;
    v29[1] = a3;
    v30 = a1;
    v16 = type metadata accessor for LazyDataState();
    sub_22FDE6558(v12 + *(v16 + 20), v9);
    v17 = sub_22FE42774();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v9, 1, v17) == 1)
    {
      __break(1u);
      return;
    }

    v19 = v33;
    v20 = sub_22FE42794();
    v33 = v19;
    if (v19)
    {
      (*(v18 + 8))(v9, v17);
      os_unfair_lock_unlock((v11 + v13));
      return;
    }

    v22 = v20;
    v23 = v21;
    (*(v18 + 8))(v9, v17);
    v24 = *v12;
    v25 = v12[1];
    sub_22FDB4380(v22, v23);
    sub_22FDC27F0(v24, v25);
    *v12 = v22;
    v12[1] = v23;
    a1 = v30;
    v14 = v29[0];
  }

  else
  {
    v22 = *v12;
    v23 = v12[1];
  }

  sub_22FDE65C8(v14, v15);
  os_unfair_lock_unlock((v11 + v13));
  v26 = v34;
  v36 = v34;
  v28 = v32;
  v27 = v33;
  (*(v32 + 8))(v22, v23, &v36, a1, v32);
  if (!v27)
  {
    v35 = v26;
    (*(v28 + 32))(v31, &v35, a1, v28);
  }
}

uint64_t Message.Operation.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    goto LABEL_8;
  }

  if (!*(v0 + 8))
  {
    v2 = 0;
LABEL_8:
    MEMORY[0x23190B9C0](v2);
    return sub_22FE43DE4();
  }

  MEMORY[0x23190B9C0](1);
  sub_22FE43DE4();
  return sub_22FE43DE4();
}

uint64_t Message.Operation.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_22FE43DB4();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
    v3 = 0;
LABEL_8:
    MEMORY[0x23190B9C0](v3);
    goto LABEL_9;
  }

  MEMORY[0x23190B9C0](1);
  sub_22FE43DE4();
LABEL_9:
  sub_22FE43DE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDE8098()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    goto LABEL_8;
  }

  if (!*(v0 + 8))
  {
    v2 = 0;
LABEL_8:
    MEMORY[0x23190B9C0](v2);
    return sub_22FE43DE4();
  }

  MEMORY[0x23190B9C0](1);
  sub_22FE43DE4();
  return sub_22FE43DE4();
}

uint64_t sub_22FDE811C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_22FE43DB4();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
    v3 = 0;
LABEL_8:
    MEMORY[0x23190B9C0](v3);
    goto LABEL_9;
  }

  MEMORY[0x23190B9C0](1);
  sub_22FE43DE4();
LABEL_9:
  sub_22FE43DE4();
  return sub_22FE43E04();
}

void Message.operation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Message.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 Message.init(operation:content:complete:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, unsigned __int8 a3@<W2>, __n128 *a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = a2[1].n128_u8[0];
  a4->n128_u64[0] = *a1;
  a4->n128_u8[8] = v4;
  result = *a2;
  a4[1] = *a2;
  a4[2].n128_u8[0] = v5;
  a4[2].n128_u8[1] = a3;
  return result;
}

uint64_t Message.init(operation:data:files:complete:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - v14;
  v16 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v17 = sub_22FE42774();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  type metadata accessor for LazyData();
  swift_allocObject();
  result = sub_22FDE62BC(a2, a3, v15, 0);
  *a6 = v16;
  *(a6 + 8) = a1;
  *(a6 + 16) = result;
  *(a6 + 24) = a4;
  *(a6 + 32) = 2;
  *(a6 + 33) = a5;
  return result;
}

uint64_t Message.Operation.init(protobuf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8) != 1)
  {
    goto LABEL_10;
  }

  v4 = *a1;
  if (*a1 > 1)
  {
    if (v4 == 2)
    {
      v12 = type metadata accessor for MessageProto(0);
      v13 = *(v12 + 40);
      v14 = (a1 + *(v12 + 36));
      v15 = *v14;
      v16 = *(v14 + 4);
      v17 = *(a1 + v13 + 4);
      v18 = *(a1 + v13);
      result = sub_22FDE8EA4(a1);
      if (v16)
      {
        v19 = 0;
      }

      else
      {
        v19 = v15;
      }

      v20 = v18 << 32;
      if (v17)
      {
        v20 = 0;
      }

      v9 = v20 | v19;
      v10 = 1;
    }

    else if (v4 == 3)
    {
      v5 = (a1 + *(type metadata accessor for MessageProto(0) + 40));
      v6 = *v5;
      v7 = *(v5 + 4);
      result = sub_22FDE8EA4(a1);
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6;
      }

      v10 = 2;
    }

    else
    {
      v21 = (a1 + *(type metadata accessor for MessageProto(0) + 40));
      v22 = *v21;
      v23 = *(v21 + 4);
      result = sub_22FDE8EA4(a1);
      if (v23)
      {
        v9 = 0;
      }

      else
      {
        v9 = v22;
      }

      v10 = 3;
    }

    goto LABEL_24;
  }

  if (!v4)
  {
LABEL_10:
    sub_22FD91780();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return sub_22FDE8EA4(a1);
  }

  v24 = (a1 + *(type metadata accessor for MessageProto(0) + 36));
  v25 = *v24;
  v26 = *(v24 + 4);
  result = sub_22FDE8EA4(a1);
  v10 = 0;
  if (v26)
  {
    v9 = 0;
  }

  else
  {
    v9 = v25;
  }

LABEL_24:
  *a2 = v9;
  *(a2 + 8) = v10;
  return result;
}

uint64_t Message.Operation.protobuf(proto:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) == 2)
    {
      v6 = 3;
    }

    else
    {
      v6 = 4;
    }

    *a1 = v6;
    *(a1 + 8) = 1;
    result = type metadata accessor for MessageProto(0);
    v5 = (result + 40);
  }

  else if (*(v1 + 8))
  {
    *a1 = 2;
    *(a1 + 8) = 1;
    result = type metadata accessor for MessageProto(0);
    v7 = a1 + *(result + 36);
    *v7 = v3;
    *(v7 + 4) = 0;
    v5 = (result + 40);
    v3 >>= 32;
  }

  else
  {
    *a1 = 1;
    *(a1 + 8) = 1;
    result = type metadata accessor for MessageProto(0);
    v5 = (result + 36);
  }

  v8 = a1 + *v5;
  *v8 = v3;
  *(v8 + 4) = 0;
  return result;
}

uint64_t Message.shortDescription.getter()
{
  v1 = *(v0 + 33);
  v4 = *v0;
  v5 = *(v0 + 8);
  sub_22FE43A44();
  if (v1)
  {
    v2 = 33;
  }

  else
  {
    v2 = 43;
  }

  MEMORY[0x23190ACF0](v2, 0xE100000000000000);

  return 0;
}

uint64_t Message.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);

  sub_22FDE8D84(3, v4, &v18);

  v7 = sub_22FDE7004(&v18);
  v26 = v18;
  v27 = v19;
  sub_22FD93E6C(&v26, &qword_27DAE46E0, &qword_22FE4C0E8);
  v24 = v20;
  v25 = v21;
  sub_22FD93E6C(&v24, &qword_27DAE46E0, &qword_22FE4C0E8);
  v23 = v22;
  sub_22FD93E6C(&v23, &qword_27DAE46E8, &qword_22FE4C0F0);
  if (*(v4 + 16) >= 4uLL)
  {
    v8 = sub_22FE43C24();
    MEMORY[0x23190ACF0](v8);

    MEMORY[0x23190ACF0](0x65726F6D20, 0xE500000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_22FD91850(0, *(v7 + 16) + 1, 1, v7);
    }

    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_22FD91850((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 16) = v10 + 1;
    v11 = v7 + 16 * v10;
    *(v11 + 32) = 0x2B20A680E2;
    *(v11 + 40) = 0xA500000000000000;
  }

  sub_22FE438F4();
  MEMORY[0x23190ACF0](0x286567617373654DLL, 0xE800000000000000);
  sub_22FE43A44();
  if (v6)
  {
    v12 = 33;
  }

  else
  {
    v12 = 43;
  }

  MEMORY[0x23190ACF0](v12, 0xE100000000000000);

  MEMORY[0x23190ACF0](0, 0xE000000000000000);

  MEMORY[0x23190ACF0](8236, 0xE200000000000000);
  sub_22FE43A44();
  MEMORY[0x23190ACF0](8236, 0xE200000000000000);
  v13 = LazyData.description.getter();
  MEMORY[0x23190ACF0](v13);

  MEMORY[0x23190ACF0](8236, 0xE200000000000000);
  v14 = MEMORY[0x23190AE90](v7, MEMORY[0x277D837D0]);
  v16 = v15;

  MEMORY[0x23190ACF0](v14, v16);

  MEMORY[0x23190ACF0](10537, 0xE200000000000000);
  return 0;
}

uint64_t sub_22FDE89A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = -1 << *(a2 + 32);
  result = sub_22FE43834();
  v8 = 1 << *(a2 + 32);
  if (v8 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a2 + 36);
  v10 = *(a1 + 8);
  if (v9 != v10)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = *(a1 + 32);
  if (v9 != v11)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 24);
  if (v8 < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

unint64_t sub_22FDE8A84(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_22FDE9138(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 64 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 72 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FDE8BE8(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_30;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a5 != a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      if (a5 != a2)
      {
        goto LABEL_26;
      }

      v9 = v7 >> 6;
      v10 = *(a7 + 64 + 8 * (v7 >> 6));
      if ((v10 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 72 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_21;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_21:
      if (v7 == a4)
      {
        return result;
      }

      a2 = a5;
      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return 0;
}

BOOL _s10PhotosFace7MessageV9OperationO2eeoiySbAE_AEtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) > 1u)
  {
    v7 = v2 == v3;
    if (v4 != 2)
    {
      v7 = 0;
    }

    v8 = v2 == v3;
    if (v4 != 3)
    {
      v8 = 0;
    }

    if (*(a1 + 8) == 2)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else if (*(a1 + 8))
  {
    return v4 == 1 && v2 == v3 && (v3 ^ v2) >> 32 == 0;
  }

  else
  {
    v5 = v2 == v3;
    return !*(a2 + 8) && v5;
  }
}

uint64_t sub_22FDE8D84@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = -1 << *(a2 + 32);
    v7 = sub_22FE43834();
    v8 = *(a2 + 36);
    v9 = -1 << *(a2 + 32);
    v10 = sub_22FDE8A84(v7, v8, 0, v4, -v9, *(a2 + 36), 0, a2);
    v12 = v11;
    v14 = v13;
    v15 = v13;
    result = sub_22FE43834();
    if (v15 == 255)
    {
      v16 = -v9;
    }

    else
    {
      v16 = v10;
    }

    if (v15 == 255)
    {
      v17 = v8;
    }

    else
    {
      v17 = v12;
    }

    if (v15 != 255 && (v14 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= result)
      {
        v22[0] = result;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        result = sub_22FDE89A0(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22FDE8EA4(uint64_t a1)
{
  v2 = type metadata accessor for MessageProto(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22FDE8F00()
{
  result = qword_27DAE46F0;
  if (!qword_27DAE46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE46F0);
  }

  return result;
}

unint64_t sub_22FDE8F58()
{
  result = qword_27DAE46F8;
  if (!qword_27DAE46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE46F8);
  }

  return result;
}

uint64_t sub_22FDE8FBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22FDE9004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22FDE9068(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_22FDE90B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22FDE9138(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t InFlightRequest.creationDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_22FE43A14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t InFlightRequest.init(result:creationDate:requestID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v8 = *(*a1 + 80);
  v9 = type metadata accessor for InFlightRequest();
  v10 = &a4[v9[9]];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&a4[v9[10]] = 0;
  *a4 = a1;
  v11 = v9[7];
  v12 = sub_22FE43A14();
  result = (*(*(v12 - 8) + 32))(&a4[v11], a2, v12);
  *&a4[v9[8]] = a3;
  return result;
}

uint64_t InFlightRequest.readNext()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FDE92C8);
}

uint64_t sub_22FDE92C8()
{
  v14 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = (v1 + *(v2 + 36));
  if (!*v3)
  {
    v4 = *v1;
    AsyncThrowingChannel.makeAsyncIterator()(v13);
    v5 = v13[0];
    v6 = v13[1];
    v7 = v3[1];
    result = sub_22FDE9540(*v3);
    *v3 = v5;
    v3[1] = v6;
    if (!v5)
    {
      __break(1u);
      return result;
    }

    v2 = v0[3];
  }

  v9 = swift_task_alloc();
  v0[5] = v9;
  v10 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v11 = type metadata accessor for AsyncThrowingChannel.Iterator();
  *v9 = v0;
  v9[1] = sub_22FDE93DC;
  v12 = v0[2];

  return AsyncThrowingChannel.Iterator.next()(v12, v11);
}

uint64_t sub_22FDE93DC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FDE950C);
  }
}

uint64_t sub_22FDE950C()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 40);
  v3 = *(v1 + v2);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v5;
    return (*(v0 + 8))();
  }

  return result;
}

uint64_t sub_22FDE9540(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22FDE9594(uint64_t a1)
{
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t MessageDemultiplexer.__allocating_init(timeout:logTag:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  MessageDemultiplexer.init(timeout:logTag:)(a1, a2, a3 & 1, a4, a5);
  return v10;
}

uint64_t *MessageDemultiplexer.init(timeout:logTag:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  *(v5 + 8) = 0;
  v12 = *(v11 + 80);
  v13 = type metadata accessor for InFlightRequest();
  v14 = MEMORY[0x277D84CC0];
  swift_getTupleTypeMetadata2();
  v15 = sub_22FE432D4();
  v16 = sub_22FDECED0(v15, v14, v13, MEMORY[0x277D84CD0]);

  v5[9] = 0;
  v5[5] = v16;
  v5[6] = a1;
  v5[7] = a2;
  *(v5 + 64) = a3 & 1;
  v5[2] = a4;
  v5[3] = a5;
  return v5;
}

void sub_22FDE96F4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = *(*v2 + 80);
  v7 = type metadata accessor for InFlightRequest();
  v8 = sub_22FE43744();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  v12 = sub_22FE43A14();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 32);
  if (v16 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 32) = v16 + 1;

    sub_22FE439E4();
    InFlightRequest.init(result:creationDate:requestID:)(a1, v15, v16, a2);
    v17 = *(v7 - 8);
    (*(v17 + 16))(v11, a2, v7);
    (*(v17 + 56))(v11, 0, 1, v7);
    v24 = v16;
    swift_beginAccess();
    sub_22FE42FA4();
    sub_22FE42FC4();
    swift_endAccess();
    if (qword_28148B0E0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v18 = sub_22FE42D34();
  __swift_project_value_buffer(v18, qword_28148B0E8);

  v19 = sub_22FE42D14();
  v20 = sub_22FE43694();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_22FD98218(*(v3 + 16), *(v3 + 24), v23);
    *(v21 + 12) = 1024;
    *(v21 + 14) = v16;
    _os_log_impl(&dword_22FD6D000, v19, v20, "%s: Inserted request %u", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x23190C380](v22, -1, -1);
    MEMORY[0x23190C380](v21, -1, -1);
  }

  sub_22FDEB83C();
}

uint64_t sub_22FDE99F0(int a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for InFlightRequest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v9 = sub_22FE43744();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  swift_beginAccess();
  v14 = v1[5];
  v17[1] = a1;

  sub_22FE42FB4();

  if ((*(v5 + 48))(v13, 1, v4))
  {
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  else
  {
    (*(v5 + 16))(v8, v13, v4);
    (*(v10 + 8))(v13, v9);
    v15 = *&v8[*(v4 + 40)];
    (*(v5 + 8))(v8, v4);
  }

  return v15;
}

uint64_t sub_22FDE9C20(uint64_t a1, int a2)
{
  *(v3 + 244) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  *(v3 + 104) = *(*v2 + 80);
  v4 = sub_22FE43744();
  *(v3 + 112) = v4;
  v5 = *(v4 - 8);
  *(v3 + 120) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = type metadata accessor for InFlightRequest();
  v7 = sub_22FE43744();
  *(v3 + 144) = v7;
  v8 = *(v7 - 8);
  *(v3 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDED7A8(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v3 + 184) = sub_22FE43374();
  *(v3 + 192) = v10;

  return MEMORY[0x2822009F8](sub_22FDE9E14);
}

uint64_t sub_22FDE9E14()
{
  v34 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6 = *(v0 + 96);
  v7 = *(v0 + 244);
  swift_beginAccess();
  v8 = *(v6 + 40);
  *(v0 + 232) = v7;

  sub_22FE42FB4();

  (*(v4 + 16))(v1, v2, v3);
  v9 = *(*(v5 - 8) + 48);
  LODWORD(v2) = v9(v1, 1, v5);
  v10 = *(v4 + 8);
  *(v0 + 200) = v10;
  *(v0 + 208) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v3);
  if (v2 == 1)
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 96);
    v12 = sub_22FE42D34();
    __swift_project_value_buffer(v12, qword_28148B0E8);

    v13 = sub_22FE42D14();
    v14 = sub_22FE436A4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 96);
      v16 = *(v0 + 244);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_22FD98218(*(v15 + 16), *(v15 + 24), &v33);
      *(v17 + 12) = 1024;
      *(v17 + 14) = v16;
      _os_log_impl(&dword_22FD6D000, v13, v14, "%s: Received response for non-existent request %u", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x23190C380](v18, -1, -1);
      MEMORY[0x23190C380](v17, -1, -1);
    }

    sub_22FDED1BC();
    swift_allocError();
    *v19 = 2;
    v20 = *(v0 + 200);
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);
    v23 = *(v0 + 160);
    v24 = *(v0 + 144);
    v25 = *(v0 + 128);
    v26 = *(v0 + 152) + 8;
    swift_willThrow();
    v20(v21, v24);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    result = v9(*(v0 + 176), 1, *(v0 + 136));
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v29 = swift_task_alloc();
      *(v0 + 216) = v29;
      *v29 = v0;
      v29[1] = sub_22FDEA1B8;
      v30 = *(v0 + 176);
      v31 = *(v0 + 128);
      v32 = *(v0 + 136);

      return InFlightRequest.readNext()(v31, v32);
    }
  }

  return result;
}

uint64_t sub_22FDEA1B8()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_22FDEA47C;
  }

  else
  {
    v7 = sub_22FDEA2F4;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_22FDEA2F4()
{
  v1 = *(v0 + 128);
  if ((*(*(*(v0 + 104) - 8) + 48))(v1, 1) == 1)
  {
    *(v0 + 240) = *(v0 + 244);
    v3 = *(v0 + 200);
    v2 = *(v0 + 208);
    v4 = *(v0 + 160);
    v5 = *(v0 + 136);
    v6 = *(v0 + 144);
    v7 = *(v0 + 96);
    swift_beginAccess();
    sub_22FE42FA4();
    sub_22FE42F64();
    v3(v4, v6);
    swift_endAccess();
    v1 = *(v0 + 128);
  }

  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  v11 = *(v0 + 168);
  v10 = *(v0 + 176);
  v12 = *(v0 + 160);
  v13 = *(v0 + 144);
  (*(*(v0 + 120) + 32))(*(v0 + 88), v1, *(v0 + 112));
  v9(v10, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22FDEA47C()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 96);
  *(v0 + 236) = *(v0 + 244);
  swift_beginAccess();
  sub_22FE42FA4();
  sub_22FE42F64();
  v2(v3, v5);
  swift_endAccess();
  v7 = *(v0 + 224);
  v8 = *(v0 + 200);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 160);
  v12 = *(v0 + 144);
  v13 = *(v0 + 128);
  v14 = *(v0 + 152) + 8;
  swift_willThrow();
  v8(v9, v12);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_22FDEA5C0(int a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  *(v3 + 132) = a1;
  v4 = *(*v2 + 80);
  v5 = type metadata accessor for InFlightRequest();
  *(v3 + 56) = v5;
  v6 = sub_22FE43744();
  *(v3 + 64) = v6;
  v7 = *(v6 - 8);
  *(v3 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v9 = *(v5 - 8);
  *(v3 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDED7A8(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v3 + 104) = sub_22FE43374();
  *(v3 + 112) = v11;

  return MEMORY[0x2822009F8](sub_22FDEA788);
}

uint64_t sub_22FDEA788()
{
  v24 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 132);
  swift_beginAccess();
  v6 = *(v4 + 40);
  *(v0 + 128) = v5;

  sub_22FE42FB4();

  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 48);
    v8 = sub_22FE42D34();
    __swift_project_value_buffer(v8, qword_28148B0E8);

    v9 = sub_22FE42D14();
    v10 = sub_22FE436A4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 48);
      v12 = *(v0 + 132);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_22FD98218(*(v11 + 16), *(v11 + 24), &v23);
      *(v13 + 12) = 1024;
      *(v13 + 14) = v12;
      _os_log_impl(&dword_22FD6D000, v9, v10, "%s: Received response for non-existent request %u", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23190C380](v14, -1, -1);
      MEMORY[0x23190C380](v13, -1, -1);
    }

    v15 = *(v0 + 96);
    v16 = *(v0 + 80);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 96);
    (*(*(v0 + 88) + 32))(v19, *(v0 + 80), *(v0 + 56));
    v20 = *v19;
    v21 = swift_task_alloc();
    *(v0 + 120) = v21;
    *v21 = v0;
    v21[1] = sub_22FDEAA68;
    v22 = *(v0 + 40);

    return AsyncThrowingChannel.send(_:)(v22);
  }
}

uint64_t sub_22FDEAA68()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_22FDEAB88);
}

uint64_t sub_22FDEAB88()
{
  (*(v0[11] + 8))(v0[12], v0[7]);
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FDEAC0C(int a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for InFlightRequest();
  v6 = sub_22FE43744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = (&v32 - v17);
  swift_beginAccess();
  v19 = v2[5];
  LODWORD(v35[0]) = a1;

  sub_22FE42FB4();

  if ((*(v14 + 48))(v13, 1, v5) == 1)
  {
    return (*(v7 + 8))(v13, v6);
  }

  (*(v14 + 32))(v18, v13, v5);
  v21 = *v18;
  AsyncThrowingChannel.finish()();
  if (qword_28148B0E0 != -1)
  {
    swift_once();
  }

  v22 = sub_22FE42D34();
  __swift_project_value_buffer(v22, qword_28148B0E8);

  v23 = sub_22FE42D14();
  v24 = sub_22FE43694();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v34 = v6;
    v26 = v25;
    v27 = swift_slowAlloc();
    v33 = v10;
    v28 = a1;
    v29 = v27;
    v35[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_22FD98218(v2[2], v2[3], v35);
    *(v26 + 12) = 1024;
    *(v26 + 14) = v28;
    _os_log_impl(&dword_22FD6D000, v23, v24, "%s: Completed request %u", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v30 = v29;
    a1 = v28;
    v10 = v33;
    MEMORY[0x23190C380](v30, -1, -1);
    v31 = v26;
    v6 = v34;
    MEMORY[0x23190C380](v31, -1, -1);
  }

  v36 = a1;
  swift_beginAccess();
  sub_22FE42FA4();
  sub_22FE42F64();
  (*(v7 + 8))(v10, v6);
  swift_endAccess();
  return (*(v14 + 8))(v18, v5);
}

void sub_22FDEAFE4(int a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for InFlightRequest();
  v5 = sub_22FE43744();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  swift_beginAccess();
  v16 = v1[5];
  v23[2] = a1;

  sub_22FE42FB4();

  v23[9] = a1;
  swift_beginAccess();
  sub_22FE42FA4();
  sub_22FE42F64();
  v17 = *(v6 + 8);
  v17(v12, v5);
  swift_endAccess();
  (*(v6 + 16))(v9, v15, v5);
  v18 = *(v4 - 8);
  if ((*(v18 + 48))(v9, 1, v4) == 1)
  {
    v17(v15, v5);
    v17(v9, v5);
  }

  else
  {
    v19 = *v9;
    v20 = *(v18 + 8);

    v20(v9, v4);
    sub_22FDED1BC();
    v21 = swift_allocError();
    *v22 = 0;
    AsyncThrowingChannel.fail<>(_:)(v21);

    v17(v15, v5);
  }
}

uint64_t sub_22FDEB2CC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[5];
  v3 = *(v1 + 80);
  v4 = type metadata accessor for InFlightRequest();

  LOBYTE(v4) = MEMORY[0x23190AB80](v5, MEMORY[0x277D84CC0], v4, MEMORY[0x277D84CD0]);

  return v4 & 1;
}

uint64_t sub_22FDEB364(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for InFlightRequest();
  v27 = sub_22FE43744();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = &v23 - v7;
  v8 = *(v4 - 8);
  v23 = *(v8 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - v10);
  swift_beginAccess();
  v28 = v1;
  v12 = v1[5];
  v30 = a1;
  v31[0] = v12;
  v29 = v3;
  sub_22FE42F74();

  swift_getWitnessTable();
  v13 = sub_22FE431F4();

  if (!sub_22FE43304())
  {
LABEL_11:

    return v13;
  }

  v14 = 0;
  v24 = *(v4 + 32);
  v25 = (v8 + 16);
  v15 = (v5 + 8);
  while (1)
  {
    v16 = sub_22FE432F4();
    sub_22FE432B4();
    if (v16)
    {
      (*(v8 + 16))(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v4);
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_22FE43924();
    if (v23 != 8)
    {
      break;
    }

    v31[0] = result;
    (*v25)(v11, v31, v4);
    swift_unknownObjectRelease();
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    v18 = *v11;
    sub_22FDED1BC();
    v19 = swift_allocError();
    *v20 = 1;
    AsyncThrowingChannel.fail<>(_:)(v19);

    v32 = *(v11 + v24);
    swift_beginAccess();
    sub_22FE42FA4();
    v21 = v26;
    sub_22FE42F64();
    (*v15)(v21, v27);
    swift_endAccess();
    (*(v8 + 8))(v11, v4);
    ++v14;
    if (v17 == sub_22FE43304())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FDEB728()
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDED7A8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = *(type metadata accessor for InFlightRequest() + 28);
  return sub_22FE439F4() & 1;
}

void sub_22FDEB83C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  if (!*(v0 + 72) && (sub_22FDEB2CC() & 1) == 0 && (*(v0 + 64) & 1) == 0)
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = sub_22FE43404();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v0;
    v8[5] = v6;
    v8[6] = v5;

    v9 = sub_22FE2EDBC(0, 0, v4, &unk_22FE4C528, v8);
    sub_22FD93E6C(v4, qword_27DAE3188, &qword_22FE49380);
    v10 = *(v0 + 72);
    *(v0 + 72) = v9;
  }
}

uint64_t sub_22FDEB990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_22FE43A14();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = sub_22FE43A24();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDED7A8(&qword_28148B408, type metadata accessor for CommunicationActor);
  v3[17] = sub_22FE43374();
  v3[18] = v10;

  return MEMORY[0x2822009F8](sub_22FDEBB48);
}

uint64_t sub_22FDEBB48()
{
  v1 = *(v0 + 128);
  v2 = sub_22FDB13CC(0xD000000000000015, 0x800000022FE485C0, 0x94049F30F7200000);
  v4 = v3;
  sub_22FE43D44();
  *(v0 + 40) = v2;
  *(v0 + 48) = v4;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x2822009F8](sub_22FDEBC00);
}

uint64_t sub_22FDEBC00()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = sub_22FDED7A8(&qword_27DAE4710, MEMORY[0x277D85928]);
  sub_22FE43D24();
  sub_22FDED7A8(&qword_27DAE4718, MEMORY[0x277D858F8]);
  sub_22FE43A34();
  v8 = *(v5 + 8);
  v0[19] = v8;
  v0[20] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_22FDEBD84;
  v11 = v0[16];
  v13 = v0[13];
  v12 = v0[14];

  return MEMORY[0x2822008C8](v13, v0 + 2, v12, v7);
}

uint64_t sub_22FDEBD84()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v12 = *v1;
  *(*v1 + 176) = v0;

  v4 = *(v2 + 160);
  if (v0)
  {
    (*(v2 + 152))(*(v2 + 104), *(v2 + 80));
    v5 = sub_22FDEC134;
  }

  else
  {
    v7 = *(v2 + 120);
    v6 = *(v2 + 128);
    v8 = *(v2 + 112);
    (*(v2 + 152))(*(v2 + 104), *(v2 + 80));
    (*(v7 + 8))(v6, v8);
    v9 = *(v2 + 136);
    v10 = *(v2 + 144);
    v5 = sub_22FDEBEE4;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FDEBEE4()
{
  v22 = v0;
  v1 = *(v0 + 56);
  if (sub_22FDEB2CC())
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 56);
    v3 = sub_22FE42D34();
    __swift_project_value_buffer(v3, qword_28148B0E8);

    v4 = sub_22FE42D14();
    v5 = sub_22FE436C4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 56);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_22FD98218(*(v6 + 16), *(v6 + 24), &v21);
      _os_log_impl(&dword_22FD6D000, v4, v5, "%s: No More Requests, all done!", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23190C380](v8, -1, -1);
      MEMORY[0x23190C380](v7, -1, -1);
    }

    v9 = *(v0 + 128);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 56);
    v13 = *(v12 + 72);
    *(v12 + 72) = 0;

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 56);
    sub_22FDEC48C(*(v0 + 64), *(v0 + 72));
    v17 = *(v0 + 128);
    v18 = sub_22FDB13CC(0xD000000000000015, 0x800000022FE485C0, 0x94049F30F7200000);
    v20 = v19;
    sub_22FE43D44();
    *(v0 + 40) = v18;
    *(v0 + 48) = v20;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x2822009F8](sub_22FDEBC00);
  }
}

uint64_t sub_22FDEC134()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[17];
  v2 = v0[18];

  return MEMORY[0x2822009F8](sub_22FDEC1A8);
}

uint64_t sub_22FDEC1A8()
{
  v23 = v0;
  if (qword_28148B0E0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[7];
  v3 = sub_22FE42D34();
  __swift_project_value_buffer(v3, qword_28148B0E8);

  v4 = v1;
  v5 = sub_22FE42D14();
  v6 = sub_22FE436C4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  if (v7)
  {
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_22FD98218(*(v9 + 16), *(v9 + 24), &v22);
    *(v10 + 12) = 2112;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_22FD6D000, v5, v6, "%s: Failed to sleep during timeout task: %@", v10, 0x16u);
    sub_22FD93E6C(v11, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190C380](v12, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[16];
  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[7];
  v19 = *(v18 + 72);
  *(v18 + 72) = 0;

  v20 = v0[1];

  return v20();
}

uint64_t sub_22FDEC3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_22FD73F54;

  return sub_22FDEB990(a4, a5, a6);
}

void sub_22FDEC48C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = *v2;
  v5 = sub_22FE43A14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v46[-v11];
  if (sub_22FDEB2CC())
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v13 = sub_22FE42D34();
    __swift_project_value_buffer(v13, qword_28148B0E8);

    v52 = sub_22FE42D14();
    v14 = sub_22FE43694();

    if (os_log_type_enabled(v52, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v54 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_22FD98218(v3[2], v3[3], &v54);
      _os_log_impl(&dword_22FD6D000, v52, v14, "%s: Checked timeout requests, is empty, returning.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23190C380](v16, -1, -1);
      MEMORY[0x23190C380](v15, -1, -1);
    }

    else
    {
      v28 = v52;
    }
  }

  else
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v17 = sub_22FE42D34();
    v18 = __swift_project_value_buffer(v17, qword_28148B0E8);

    v50 = v18;
    v19 = sub_22FE42D14();
    v20 = sub_22FE43694();

    v51 = v19;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v47 = v20;
      v22 = v21;
      v48 = swift_slowAlloc();
      v54 = v48;
      *v22 = 136315394;
      *(v22 + 4) = sub_22FD98218(v3[2], v3[3], &v54);
      *(v22 + 12) = 2080;
      v23 = sub_22FE43E64();
      v49 = a2;
      v25 = sub_22FD98218(v23, v24, &v54);

      *(v22 + 14) = v25;
      v26 = v51;
      _os_log_impl(&dword_22FD6D000, v51, v47, "%s: Checking for timeout requests that are over %s old.", v22, 0x16u);
      v27 = v48;
      swift_arrayDestroy();
      MEMORY[0x23190C380](v27, -1, -1);
      MEMORY[0x23190C380](v22, -1, -1);
    }

    else
    {
    }

    sub_22FE439E4();
    sub_22FE43EA4();
    sub_22FE43E84();
    sub_22FE43A04();
    v29 = *(v6 + 8);
    v29(v9, v5);
    v30 = sub_22FDEB364(v12);
    v29(v12, v5);
    v54 = v30;
    isa = v52[10].isa;
    type metadata accessor for InFlightRequest();
    v32 = sub_22FE43354();
    WitnessTable = swift_getWitnessTable();
    if (sub_22FE43644())
    {
    }

    else
    {

      v34 = sub_22FE42D14();
      v35 = sub_22FE436C4();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v54 = v52;
        *v36 = 136315650;
        *(v36 + 4) = sub_22FD98218(v3[2], v3[3], &v54);
        *(v36 + 12) = 2048;
        v37 = sub_22FE43304();
        *(v36 + 14) = v37;
        *(v36 + 22) = 2080;
        v53 = v30;
        MEMORY[0x28223BE20](v37);
        *&v46[-16] = isa;
        v38 = MEMORY[0x277D84CC0];
        v40 = sub_22FDA5834(sub_22FDED768, &v46[-32], v32, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v39);

        v41 = MEMORY[0x23190AE90](v40, v38);
        v43 = v42;

        v44 = sub_22FD98218(v41, v43, &v54);

        *(v36 + 24) = v44;
        _os_log_impl(&dword_22FD6D000, v34, v35, "%s: Timed out %ld requests: %s", v36, 0x20u);
        v45 = v52;
        swift_arrayDestroy();
        MEMORY[0x23190C380](v45, -1, -1);
        MEMORY[0x23190C380](v36, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }
  }
}

uint64_t sub_22FDECAF4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDED7A8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = type metadata accessor for InFlightRequest();
  *a2 = *(a1 + *(result + 32));
  return result;
}

void *MessageDemultiplexer.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  return v0;
}

uint64_t MessageDemultiplexer.__deallocating_deinit()
{
  MessageDemultiplexer.deinit();

  return swift_deallocClassInstance();
}

uint64_t DemuxError.hashValue.getter()
{
  v1 = *v0;
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](v1);
  return sub_22FE43E04();
}

unint64_t sub_22FDECCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_22FE42FD4();

  return sub_22FDECD48(a1, v9, a2, a3);
}

unint64_t sub_22FDECD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a1;
  v25 = a4;
  v6 = *(*(a3 - 8) + 64);
  v8.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4;
  v11 = -1 << *(v4 + 32);
  v13 = v12 & ~v11;
  v24[0] = v4 + 64;
  if ((*(v4 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v11;
    v17 = *(v7 + 16);
    v15 = v7 + 16;
    v16 = v17;
    v18 = *(v15 + 56);
    v19 = (v15 - 8);
    do
    {
      v20 = v15;
      v16(v10, *(v26 + 48) + v18 * v13, a3, v8);
      v21 = *(v25 + 8);
      v22 = sub_22FE43024();
      (*v19)(v10, a3);
      if (v22)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      v15 = v20;
    }

    while (((*(v24[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_22FDECED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_22FE43304())
  {
    sub_22FE43B14();
    v13 = sub_22FE43B04();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_22FE43304();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_22FE432F4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_22FE43924();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_22FDECCEC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_22FDED1BC()
{
  result = qword_27DAE4700;
  if (!qword_27DAE4700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4700);
  }

  return result;
}

unint64_t sub_22FDED214()
{
  result = qword_27DAE4708;
  if (!qword_27DAE4708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4708);
  }

  return result;
}

uint64_t sub_22FDED268(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  result = type metadata accessor for AsyncThrowingChannel();
  if (v3 <= 0x3F)
  {
    result = sub_22FE43A14();
    if (v4 <= 0x3F)
    {
      type metadata accessor for AsyncThrowingChannel.Iterator();
      result = sub_22FE43744();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of MessageDemultiplexer.next(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 224);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22FD73F54;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MessageDemultiplexer.send(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 232);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22FD8C738;

  return v10(a1, a2);
}

uint64_t sub_22FDED788()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_22FDEB728() & 1;
}

uint64_t sub_22FDED7A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FDED7F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FD73F54;

  return sub_22FDEC3E0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_22FDED8CC()
{
  result = qword_27DAE4720;
  if (!qword_27DAE4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4720);
  }

  return result;
}

int *sub_22FDED93C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v30 = a4;
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v37 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FE42A74();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for ShuffleIDProto();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v35 = a1;
  v36 = a2;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4500, type metadata accessor for ShuffleIDProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v19, v16, type metadata accessor for ShuffleIDProto);
  v21 = *v16;
  v22 = *(v16 + 1);
  LOBYTE(v32) = v31;
  sub_22FDB4380(v21, v22);
  UUID.init(serialized:version:)(v21, v22);
  v23 = *(v16 + 2);

  v25 = sub_22FDC2070(v24);

  sub_22FD917D4(a1, a2);
  sub_22FDF1A18(v19, type metadata accessor for ShuffleIDProto);
  v26 = v16[24];
  v27 = v16[25];
  v28 = v16[26];
  sub_22FDF1A18(v16, type metadata accessor for ShuffleIDProto);
  v29 = v30;
  (*(v8 + 32))(v30, v37, v7);
  result = type metadata accessor for ShuffleID();
  *(v29 + result[5]) = v25;
  *(v29 + result[6]) = v26;
  *(v29 + result[7]) = v27;
  *(v29 + result[8]) = v28;
  return result;
}

uint64_t sub_22FDEDCA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v24 = a4;
  v7 = sub_22FE428C4();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FE42A74();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for DailyIDProto();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  v28 = a1;
  v29 = a2;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE44D0, type metadata accessor for DailyIDProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v19, v16, type metadata accessor for DailyIDProto);
  v21 = *v16;
  v22 = v16[1];
  LOBYTE(v25) = v30;
  sub_22FDB4380(v21, v22);
  UUID.init(serialized:version:)(v21, v22);
  sub_22FD917D4(a1, a2);
  sub_22FDF1A18(v16, type metadata accessor for DailyIDProto);
  sub_22FDF1A18(v19, type metadata accessor for DailyIDProto);
  return (*(v23 + 32))(v24, v10, v7);
}

uint64_t sub_22FDEDF78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v27 = a4;
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FE42A74();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for AlbumIDProto();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v32 = a1;
  v33 = a2;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE44C8, type metadata accessor for AlbumIDProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v19, v16, type metadata accessor for AlbumIDProto);
  v21 = v16[2];
  v22 = v16[3];
  LOBYTE(v29) = v28;
  sub_22FDB4380(v21, v22);
  UUID.init(serialized:version:)(v21, v22);
  sub_22FD917D4(a1, a2);
  sub_22FDF1A18(v19, type metadata accessor for AlbumIDProto);
  v24 = *v16;
  v23 = v16[1];

  sub_22FDF1A18(v16, type metadata accessor for AlbumIDProto);
  v25 = v27;
  (*(v8 + 32))(v27, v34, v7);
  result = type metadata accessor for AlbumID();
  v26 = (v25 + *(result + 20));
  *v26 = v24;
  v26[1] = v23;
  return result;
}

uint64_t sub_22FDEE2A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v9 = sub_22FE42A74();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  PhotoResponseProto = type metadata accessor for GeneratePhotoResponseProto(0);
  v12 = *(*(PhotoResponseProto - 8) + 64);
  MEMORY[0x28223BE20](PhotoResponseProto);
  v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = v19 - v16;
  v21[0] = a1;
  v21[1] = a2;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v17, v14, type metadata accessor for GeneratePhotoResponseProto);
  LOBYTE(v21[0]) = a3;
  GeneratePhotoResponse.init(protobuf:version:)(v14, v21, v19);
  sub_22FD917D4(a1, a2);
  result = sub_22FDF1A18(v17, type metadata accessor for GeneratePhotoResponseProto);
  *a4 = *&v19[0];
  return result;
}

uint64_t sub_22FDEE4C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v9 = sub_22FE42A74();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for FetchByDayResponseProto(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = v20 - v16;
  v22[0] = a1;
  v22[1] = a2;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v17, v14, type metadata accessor for FetchByDayResponseProto);
  LOBYTE(v22[0]) = a3;
  FetchByDayResponse.init(protobuf:version:)(v14, v22, v20);
  sub_22FD917D4(a1, a2);
  result = sub_22FDF1A18(v17, type metadata accessor for FetchByDayResponseProto);
  v19 = *(&v20[0] + 1);
  *a4 = *&v20[0];
  a4[1] = v19;
  return result;
}

uint64_t sub_22FDEE6EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_22FE42A74();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for StoredPhotoLayoutProto(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v19 - v16;
  v21 = a1;
  v22 = a2;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v17, v14, type metadata accessor for StoredPhotoLayoutProto);
  LOBYTE(v19[0]) = a3;
  StoredPhotoLayout.init(protobuf:version:)(v14, a4);
  sub_22FD917D4(a1, a2);
  return sub_22FDF1A18(v17, type metadata accessor for StoredPhotoLayoutProto);
}

double sub_22FDEE904@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_22FE42A74();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v24 = a1;
  v25 = a2;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto);
  sub_22FE42BE4();
  sub_22FD917D4(a1, a2);
  if (!v3)
  {
    sub_22FDF1818(v15, v12, type metadata accessor for StoredPhotoLayoutRectProto);
    v17 = *v12;
    v19 = v12[1];
    v20 = v17;
    sub_22FDF1A18(v12, type metadata accessor for StoredPhotoLayoutRectProto);
    v18 = v19;
    result = *&v20;
    *a3 = v20;
    a3[1] = v18;
  }

  return result;
}

uint64_t sub_22FDEEAF4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_22FE42A74();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v19 - v16;
  v21 = a1;
  v22 = a2;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v17, v14, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  LOBYTE(v19[0]) = a3;
  StoredPhotoLayout.ImageLocation.init(protobuf:version:)(v14, a4);
  sub_22FD917D4(a1, a2);
  return sub_22FDF1A18(v17, type metadata accessor for StoredPhotoLayoutImageLocationProto);
}

uint64_t sub_22FDEED0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v9 = sub_22FE42A74();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for SyncFacesRequestProto(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = v19 - v16;
  v21 = a1;
  v22 = a2;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4368, type metadata accessor for SyncFacesRequestProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v17, v14, type metadata accessor for SyncFacesRequestProto);
  LOBYTE(v21) = a3;
  SyncFacesRequest.init(protobuf:version:)(v14, v19);
  sub_22FD917D4(a1, a2);
  result = sub_22FDF1A18(v17, type metadata accessor for SyncFacesRequestProto);
  *a4 = v19[0];
  return result;
}

uint64_t sub_22FDEEF48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v9 = sub_22FE42A74();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  PhotoRequestProto = type metadata accessor for GeneratePhotoRequestProto(0);
  v12 = *(*(PhotoRequestProto - 8) + 64);
  MEMORY[0x28223BE20](PhotoRequestProto);
  v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = v19 - v16;
  v21 = a1;
  v22 = a2;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v17, v14, type metadata accessor for GeneratePhotoRequestProto);
  LOBYTE(v21) = a3;
  GeneratePhotoRequest.init(protobuf:version:)(v14, v19);
  sub_22FD917D4(a1, a2);
  result = sub_22FDF1A18(v17, type metadata accessor for GeneratePhotoRequestProto);
  *a4 = *&v19[0];
  return result;
}

uint64_t sub_22FDEF184@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v31 = a4;
  v7 = sub_22FE428C4();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FE42A74();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  FaceRequestProto = type metadata accessor for FetchFaceRequestProto(0);
  v14 = *(*(FaceRequestProto - 8) + 64);
  MEMORY[0x28223BE20](FaceRequestProto);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v35 = a1;
  v36 = a2;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  v29 = v7;
  sub_22FDF1A78(v19, v16, type metadata accessor for FetchFaceRequestProto);
  v22 = *v16;
  v21 = v16[1];
  LOBYTE(v32) = v37;
  sub_22FDB4380(v22, v21);
  UUID.init(serialized:version:)(v22, v21);
  sub_22FD917D4(a1, a2);
  sub_22FDF1A18(v19, type metadata accessor for FetchFaceRequestProto);
  v23 = (v16 + *(FaceRequestProto + 24));
  v24 = *v23;
  v25 = *(v23 + 4);
  sub_22FDF1A18(v16, type metadata accessor for FetchFaceRequestProto);
  if (v25)
  {
    v24 = 0;
  }

  v26 = v31;
  (*(v30 + 32))(v31, v10, v29);
  result = type metadata accessor for FetchFaceRequest();
  v27 = v26 + *(result + 20);
  *v27 = v24;
  *(v27 + 8) = v25;
  return result;
}

uint64_t ProtobufSerializable.init(serialized:version:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a6;
  v27 = a3;
  v10 = sub_22FE42A74();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v13 = *(v24 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v22[-v17];
  v23 = *v27;
  v30 = a1;
  v31 = a2;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_22FDB4380(a1, a2);
  v26 = a5;
  v27 = a4;
  swift_getAssociatedConformanceWitness();
  sub_22FE42A64();
  v19 = v32;
  sub_22FE42BE4();
  if (!v19)
  {
    v20 = v24;
    (*(v24 + 16))(v15, v18, AssociatedTypeWitness);
    LOBYTE(v28[0]) = v23;
    (*(v26 + 32))(v15, v28, v27);
    (*(v20 + 8))(v18, AssociatedTypeWitness);
  }

  return sub_22FD917D4(a1, a2);
}

uint64_t sub_22FDEF728(char *a1, uint64_t a2)
{
  FaceRequestProto = type metadata accessor for FetchFaceRequestProto(0);
  v7 = *(*(FaceRequestProto - 8) + 64);
  MEMORY[0x28223BE20](FaceRequestProto);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v10 = sub_22FDF19D0(&qword_27DAE4780, type metadata accessor for FetchFaceRequest);
  (*(v10 + 40))(&v13, a2, v10);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto);
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v9, type metadata accessor for FetchFaceRequestProto);
  }

  return v2;
}

uint64_t ProtobufSerializable.serialized(version:)(char *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v15 - v12;
  v16 = *a1;
  (*(a3 + 40))(&v16, a2, a3, v11);
  if (!v4)
  {
    swift_getAssociatedConformanceWitness();
    v3 = sub_22FE42BD4();
    (*(v9 + 8))(v13, AssociatedTypeWitness);
  }

  return v3;
}

void *sub_22FDEFA58(_BYTE *a1, uint64_t a2)
{
  v6 = type metadata accessor for FetchByDayResponseProto(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *a1;
  v10 = v2[1];
  v16[0] = *v2;
  v16[1] = v10;
  v15 = v8;
  v11 = sub_22FDF197C();
  v12 = v16;
  (*(v11 + 40))(&v15, a2, v11);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto);
    v12 = sub_22FE42BD4();
    sub_22FDF1A18(v9, type metadata accessor for FetchByDayResponseProto);
  }

  return v12;
}

uint64_t *sub_22FDEFBCC(_BYTE *a1, uint64_t a2)
{
  PhotoRequestProto = type metadata accessor for GeneratePhotoRequestProto(0);
  v7 = *(*(PhotoRequestProto - 8) + 64);
  MEMORY[0x28223BE20](PhotoRequestProto);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *a1;
  v14 = *v2;
  HIBYTE(v13) = v8;
  v10 = sub_22FDF1928();
  v11 = &v14;
  (*(v10 + 40))(&v13 + 7, a2, v10);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto);
    v11 = sub_22FE42BD4();
    sub_22FDF1A18(v9, type metadata accessor for GeneratePhotoRequestProto);
  }

  return v11;
}

uint64_t *sub_22FDEFD40(_BYTE *a1, uint64_t a2)
{
  PhotoResponseProto = type metadata accessor for GeneratePhotoResponseProto(0);
  v7 = *(*(PhotoResponseProto - 8) + 64);
  MEMORY[0x28223BE20](PhotoResponseProto);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *a1;
  v14 = *v2;
  HIBYTE(v13) = v8;
  v10 = sub_22FDF18D4();
  v11 = &v14;
  (*(v10 + 40))(&v13 + 7, a2, v10);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto);
    v11 = sub_22FE42BD4();
    sub_22FDF1A18(v9, type metadata accessor for GeneratePhotoResponseProto);
  }

  return v11;
}

__int128 *sub_22FDEFEB4(_BYTE *a1, uint64_t a2)
{
  v6 = type metadata accessor for SyncFacesRequestProto(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *a1;
  v15 = *v2;
  v14 = v8;
  v10 = sub_22FDF1880();
  v11 = &v15;
  (*(v10 + 40))(&v14, a2, v10);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4368, type metadata accessor for SyncFacesRequestProto);
    v11 = sub_22FE42BD4();
    sub_22FDF1A18(v9, type metadata accessor for SyncFacesRequestProto);
  }

  return v11;
}

uint64_t sub_22FDF000C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *a3;
  WitnessTable = swift_getWitnessTable();
  return ProtobufSerializable.init(serialized:version:)(a1, a2, &v11, a4, WitnessTable, a5);
}

uint64_t sub_22FDF0108(char *a1, uint64_t a2)
{
  v6 = type metadata accessor for AlbumIDProto();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v10 = sub_22FDF19D0(&qword_27DAE4758, type metadata accessor for AlbumID);
  (*(v10 + 40))(&v13, a2, v10);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE44C8, type metadata accessor for AlbumIDProto);
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v9, type metadata accessor for AlbumIDProto);
  }

  return v2;
}

uint64_t sub_22FDF02A0(char *a1, uint64_t a2)
{
  v6 = type metadata accessor for DailyIDProto();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v10 = sub_22FDF19D0(&qword_27DAE4750, type metadata accessor for DailyID);
  (*(v10 + 40))(&v13, a2, v10);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE44D0, type metadata accessor for DailyIDProto);
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v9, type metadata accessor for DailyIDProto);
  }

  return v2;
}

uint64_t sub_22FDF0438(char *a1, uint64_t a2)
{
  v6 = type metadata accessor for ShuffleIDProto();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v10 = sub_22FDF19D0(&qword_27DAE4748, type metadata accessor for ShuffleID);
  (*(v10 + 40))(&v13, a2, v10);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4500, type metadata accessor for ShuffleIDProto);
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v9, type metadata accessor for ShuffleIDProto);
  }

  return v2;
}

uint64_t sub_22FDF05D0(char *a1, uint64_t a2)
{
  v6 = type metadata accessor for StoredPhotoProto(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v10 = sub_22FDF19D0(&qword_27DAE4650, type metadata accessor for StoredPhoto);
  (*(v10 + 40))(&v13, a2, v10);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v9, type metadata accessor for StoredPhotoProto);
  }

  return v2;
}

size_t sub_22FDF0768(uint64_t *a1, int a2)
{
  v26 = a2;
  v4 = type metadata accessor for StoredPhotoProto(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for StoredPhoto(0);
  v24 = *(v11 - 8);
  v12 = *(v24 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v27 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(*a1 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    return v16;
  }

  v29 = MEMORY[0x277D84F90];
  result = sub_22FD92408(0, v15, 0);
  v18 = 0;
  v16 = v29;
  v23 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  while (v18 < *(v14 + 16))
  {
    sub_22FDF1A78(v23 + *(v5 + 72) * v18, v10, type metadata accessor for StoredPhotoProto);
    v19 = v25;
    sub_22FDF1A78(v10, v25, type metadata accessor for StoredPhotoProto);
    v28 = v26;
    StoredPhoto.init(protobuf:version:)(v19, &v28, v27);
    if (v2)
    {
      sub_22FDF1A18(v10, type metadata accessor for StoredPhotoProto);

      return v16;
    }

    v20 = v5;
    sub_22FDF1A18(v10, type metadata accessor for StoredPhotoProto);
    v29 = v16;
    v22 = *(v16 + 16);
    v21 = *(v16 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_22FD92408(v21 > 1, v22 + 1, 1);
      v16 = v29;
    }

    ++v18;
    *(v16 + 16) = v22 + 1;
    result = sub_22FDF1818(v27, v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, type metadata accessor for StoredPhoto);
    v5 = v20;
    if (v15 == v18)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t static CustomListProto<>.deserialize(list:version:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v20) = *a2;
  v8 = v20;
  v9 = *(a5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = v9(&v20, AssociatedTypeWitness, a5);
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v18 = v8;
  v11 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v12 = sub_22FE43354();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
  WitnessTable = swift_getWitnessTable();
  v15 = sub_22FDA5834(sub_22FDF1670, v17, v12, a3, v13, WitnessTable, MEMORY[0x277D84950], &v19);

  return v15;
}

uint64_t sub_22FDF0BCC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v21 = a3;
  v27 = type metadata accessor for StoredPhoto(0);
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoredPhotoProto(0);
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v31 = MEMORY[0x277D84F90];
    sub_22FD924F4(0, v13, 0);
    v14 = v31;
    v15 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v25 = sub_22FDF19D0(&qword_27DAE4650, type metadata accessor for StoredPhoto);
    v23 = *(v25 + 40);
    v24 = v25 + 40;
    v22 = *(v5 + 72);
    while (1)
    {
      sub_22FDF1A78(v15, v8, type metadata accessor for StoredPhoto);
      v30 = v28;
      v23(&v30, v27, v25);
      if (v3)
      {
        break;
      }

      sub_22FDF1A18(v8, type metadata accessor for StoredPhoto);
      v31 = v14;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_22FD924F4(v16 > 1, v17 + 1, 1);
        v14 = v31;
      }

      *(v14 + 16) = v17 + 1;
      sub_22FDF1818(v12, v14 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v17, type metadata accessor for StoredPhotoProto);
      v15 += v22;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    sub_22FDF1A18(v8, type metadata accessor for StoredPhoto);
  }

  else
  {
LABEL_7:
    v18 = type metadata accessor for StoredPhotoListProto(0);
    v29 = v28;
    v19 = sub_22FDF19D0(&qword_27DAE4740, type metadata accessor for StoredPhotoListProto);
    return (*(v19 + 24))(v14, &v29, v18, v19);
  }
}

uint64_t static CustomListProto<>.serialize(list:version:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v22 = a1;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = v8;
  v9 = sub_22FE43354();
  v10 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
  WitnessTable = swift_getWitnessTable();
  result = sub_22FDA5834(sub_22FDF1698, v16, v9, AssociatedTypeWitness, v12, WitnessTable, MEMORY[0x277D84950], &v21);
  if (!v5)
  {
    v15 = result;
    swift_getAssociatedTypeWitness();
    LOBYTE(v22) = v8;
    return (*(a5 + 24))(v15, &v22);
  }

  return result;
}

uint64_t sub_22FDF10B0(char *a1, uint64_t a2)
{
  v6 = type metadata accessor for StoredPhotoLayoutProto(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v10 = sub_22FDF19D0(&qword_27DAE4738, type metadata accessor for StoredPhotoLayout);
  (*(v10 + 40))(&v13, a2, v10);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto);
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v9, type metadata accessor for StoredPhotoLayoutProto);
  }

  return v2;
}

uint64_t sub_22FDF1248(char *a1, uint64_t a2)
{
  v6 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v10 = sub_22FDF19D0(&qword_27DAE4730, type metadata accessor for StoredPhotoLayout.ImageLocation);
  (*(v10 + 40))(&v13, a2, v10);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    v2 = sub_22FE42BD4();
    sub_22FDF1A18(v9, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  }

  return v2;
}

_OWORD *sub_22FDF13E0(_BYTE *a1, uint64_t a2)
{
  v6 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *a1;
  v10 = v2[1];
  v16[0] = *v2;
  v16[1] = v10;
  v15 = v8;
  v11 = sub_22FDF17C4();
  v12 = v16;
  (*(v11 + 40))(&v15, a2, v11);
  if (!v3)
  {
    sub_22FDF19D0(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto);
    v12 = sub_22FE42BD4();
    sub_22FDF1A18(v9, type metadata accessor for StoredPhotoLayoutRectProto);
  }

  return v12;
}

uint64_t sub_22FDF153C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v19[-v15];
  (*(v17 + 16))(&v19[-v15], a1, v14);
  v20 = a2;
  result = (*(v11 + 32))(v16, &v20, a3, v11);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_22FDF1698(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 40);
  result = (*(*(v6 + 8) + 40))(&v8, v5);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

unint64_t sub_22FDF17C4()
{
  result = qword_27DAE4728;
  if (!qword_27DAE4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4728);
  }

  return result;
}

uint64_t sub_22FDF1818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22FDF1880()
{
  result = qword_27DAE4760;
  if (!qword_27DAE4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4760);
  }

  return result;
}

unint64_t sub_22FDF18D4()
{
  result = qword_27DAE4768;
  if (!qword_27DAE4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4768);
  }

  return result;
}

unint64_t sub_22FDF1928()
{
  result = qword_27DAE4770;
  if (!qword_27DAE4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4770);
  }

  return result;
}

unint64_t sub_22FDF197C()
{
  result = qword_27DAE4778;
  if (!qword_27DAE4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4778);
  }

  return result;
}

uint64_t sub_22FDF19D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FDF1A18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FDF1A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t SerializationError.hashValue.getter()
{
  v1 = *v0;
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](v1);
  return sub_22FE43E04();
}

unint64_t sub_22FDF1C18()
{
  result = qword_27DAE4788;
  if (!qword_27DAE4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4788);
  }

  return result;
}

uint64_t AlbumIDProto.album.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AlbumIDProto.album.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AlbumIDProto.id.getter()
{
  v1 = *(v0 + 16);
  sub_22FDB4380(v1, *(v0 + 24));
  return v1;
}

uint64_t AlbumIDProto.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AlbumIDProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlbumIDProto() + 24);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AlbumIDProto()
{
  result = qword_27DAE47C0;
  if (!qword_27DAE47C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlbumIDProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlbumIDProto() + 24);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AlbumIDProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_22FE4B510;
  v1 = a1 + *(type metadata accessor for AlbumIDProto() + 24);
  return sub_22FE42A44();
}

uint64_t sub_22FDF1F84()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4790);
  __swift_project_value_buffer(v0, qword_27DAE4790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "album";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "id";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t static AlbumIDProto._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAE2A28 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D04();
  v3 = __swift_project_value_buffer(v2, qword_27DAE4790);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t AlbumIDProto.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FE42B64();
    }

    else if (result == 2)
    {
      sub_22FE42B04();
    }
  }

  return result;
}

uint64_t AlbumIDProto.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_22FE42C94(), !v1))
  {
    v6 = v0[2];
    v7 = v0[3];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_14;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = sub_22FE42C54();
        if (v1)
        {
          return result;
        }

        goto LABEL_14;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
      goto LABEL_13;
    }

LABEL_14:
    v11 = v0 + *(type metadata accessor for AlbumIDProto() + 24);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t static AlbumIDProto.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22FE43CB4() & 1) == 0 || (sub_22FDF2C1C(a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for AlbumIDProto() + 24);
  sub_22FE42A54();
  sub_22FDF2F50(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t AlbumIDProto.hashValue.getter()
{
  sub_22FE43DB4();
  type metadata accessor for AlbumIDProto();
  sub_22FDF2F50(&qword_27DAE47A8, type metadata accessor for AlbumIDProto);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF24C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_22FE4B510;
  v2 = a2 + *(a1 + 24);
  return sub_22FE42A44();
}

uint64_t sub_22FDF2514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FDF2588(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22FDF25FC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_22FDF2650(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF2F50(&qword_27DAE47D0, type metadata accessor for AlbumIDProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF26CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAE2A28 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D04();
  v3 = __swift_project_value_buffer(v2, qword_27DAE4790);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22FDF2774(uint64_t a1)
{
  v2 = sub_22FDF2F50(&qword_27DAE44C8, type metadata accessor for AlbumIDProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF27E0()
{
  sub_22FE43DB4();
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF2838()
{
  sub_22FDF2F50(&qword_27DAE44C8, type metadata accessor for AlbumIDProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF28B4()
{
  sub_22FE43DB4();
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF2908(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_22FE43CB4() & 1) == 0 || (sub_22FDF2C1C(a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_22FE42A54();
  sub_22FDF2F50(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF29D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_22FDF2B64(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22FD917D4(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_22FDBBBC8(v14, a3, a4, &v13);
  v10 = v4;
  sub_22FD917D4(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_22FDF2B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22FE42654();
  v11 = result;
  if (result)
  {
    result = sub_22FE42684();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22FE42674();
  sub_22FDBBBC8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_22FDF2C1C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22FDB4380(a3, a4);
          return sub_22FDF29D4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22FDF2ECC()
{
  result = sub_22FE42A54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FDF2F50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t GenericListProto.list.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_22FDF3138@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FDF31F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FDF32D4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return sub_22FE42A44();
}

uint64_t StoredPhotoListProto.decodeMessage<A>(decoder:)()
{
  result = sub_22FE42AB4();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for StoredPhotoProto(0);
        sub_22FDF3558(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);
        sub_22FE42BA4();
      }

      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t StoredPhotoListProto.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for StoredPhotoProto(0), sub_22FDF3558(&qword_27DAE4338, type metadata accessor for StoredPhotoProto), result = sub_22FE42CC4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for StoredPhotoListProto(0) + 20);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t sub_22FDF3558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_22FDF3604(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_22FDF3658(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF3558(&qword_27DAE4888, type metadata accessor for StoredPhotoListProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF36F8(uint64_t a1)
{
  v2 = sub_22FDF3558(&qword_27DAE4628, type metadata accessor for StoredPhotoListProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF3764()
{
  sub_22FDF3558(&qword_27DAE4628, type metadata accessor for StoredPhotoListProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF3820(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22FE42D04();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22FE49F60;
  v8 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v8 = "list";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21870];
  v10 = sub_22FE42CE4();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  return sub_22FE42CF4();
}

uint64_t sub_22FDF39AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22FE42D04();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t GenericListProto.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FE42AF4();
    }
  }

  return result;
}

uint64_t GenericListProto.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_22FE42C44(), !v1))
  {
    v3 = v0 + *(type metadata accessor for GenericListProto(0) + 20);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t sub_22FDF3B68(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_22FE42A54();
  sub_22FDF3558(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF3C68(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22FE43DB4();
  a1(0);
  sub_22FDF3558(a2, a3);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF3D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FDF3D80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FDF3E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF3558(&qword_27DAE4880, type metadata accessor for GenericListProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF3EC4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22FE42D04();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_22FDF3F60(uint64_t a1)
{
  v2 = sub_22FDF3558(&qword_27DAE4840, type metadata accessor for GenericListProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF3FCC()
{
  sub_22FDF3558(&qword_27DAE4840, type metadata accessor for GenericListProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF42A0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_22FE42A54();
  sub_22FDF3558(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

void sub_22FDF438C()
{
  if (!qword_27DAE4860)
  {
    type metadata accessor for StoredPhotoProto(255);
    v0 = sub_22FE43354();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE4860);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FE42A54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22FE42A54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FDF4574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = sub_22FE42A54();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22FDF45FC()
{
  if (!qword_27DAE4878)
  {
    v0 = sub_22FE43354();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE4878);
    }
  }
}

uint64_t DailyIDProto.id.getter()
{
  v1 = *v0;
  sub_22FDB4380(*v0, *(v0 + 8));
  return v1;
}

uint64_t DailyIDProto.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t DailyIDProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DailyIDProto() + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DailyIDProto()
{
  result = qword_27DAE48C0;
  if (!qword_27DAE48C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DailyIDProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DailyIDProto() + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DailyIDProto.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_22FE4B510;
  v1 = a1 + *(type metadata accessor for DailyIDProto() + 20);
  return sub_22FE42A44();
}

uint64_t sub_22FDF48EC()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4890);
  __swift_project_value_buffer(v0, qword_27DAE4890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F60;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FE42CE4();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_22FE42CF4();
}

uint64_t static DailyIDProto._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAE2A40 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D04();
  v3 = __swift_project_value_buffer(v2, qword_27DAE4890);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t DailyIDProto.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22FE42B04();
    }
  }

  return result;
}

uint64_t DailyIDProto.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v2 == v2 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FE42C54();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v0 + *(type metadata accessor for DailyIDProto() + 20);
  return sub_22FE42A34();
}

uint64_t static DailyIDProto.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22FDF2C1C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for DailyIDProto() + 20);
  sub_22FE42A54();
  sub_22FDF5264(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t DailyIDProto.hashValue.getter()
{
  sub_22FE43DB4();
  type metadata accessor for DailyIDProto();
  sub_22FDF5264(&qword_27DAE48A8, type metadata accessor for DailyIDProto);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF4D6C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_22FE4B510;
  v2 = a2 + *(a1 + 20);
  return sub_22FE42A44();
}

uint64_t sub_22FDF4DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF5264(&qword_27DAE48D0, type metadata accessor for DailyIDProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF4E64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAE2A40 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D04();
  v3 = __swift_project_value_buffer(v2, qword_27DAE4890);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22FDF4F0C(uint64_t a1)
{
  v2 = sub_22FDF5264(&qword_27DAE44D0, type metadata accessor for DailyIDProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF4F78()
{
  sub_22FDF5264(&qword_27DAE44D0, type metadata accessor for DailyIDProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF4FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22FDF2C1C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_22FE42A54();
  sub_22FDF5264(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF51E8()
{
  result = sub_22FE42A54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}