unint64_t sub_1CEF47D80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9338, &unk_1CEFAB3C0);
    v2 = sub_1CEFA86F0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_1CEF49BC0(&v27, v29);
        sub_1CEF49BC0(v29, v30);
        sub_1CEF49BC0(v30, &v28);
        result = sub_1CEF76970(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_1CEF49BC0(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_1CEF49BC0(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

char *sub_1CEF47FD8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9318, &qword_1CEFAB3A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CEF480E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9330, &qword_1CEFAB3B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1CEF48200(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9308, &qword_1CEFAB390);
  v10 = *(type metadata accessor for TrustedRequestHistory.Request() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TrustedRequestHistory.Request() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1CEF483D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9338, &unk_1CEFAB3C0);
  v36 = a2;
  result = sub_1CEFA86E0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1CEF49BC0(v25, v37);
      }

      else
      {
        sub_1CEF37314(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1CEFA8A00();
      sub_1CEFA8340();
      result = sub_1CEFA8A40();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1CEF49BC0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1CEF48690(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9070, &unk_1CEFAA490);
  v40 = a2;
  result = sub_1CEFA86E0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1CEFA8A00();
      sub_1CEFA8340();
      result = sub_1CEFA8A40();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1CEF48950(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for XPCWrapper.Continuation();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9300, &qword_1CEFAB9E0);
  v41 = a2;
  result = sub_1CEFA86E0();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
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
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_1CEF4BC48(v28, v9);
      }

      else
      {
        sub_1CEF4BBE4(v28, v9);
      }

      v29 = *(v13 + 40);
      result = sub_1CEFA89F0();
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
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_1CEF4BC48(v9, *(v13 + 56) + v27 * v21);
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

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1CEF48C5C(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1CEF48D44(a1, sub_1CEF491A4, sub_1CEF491A4);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CEF48CD0(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1CEF48D44(a1, sub_1CEF48FB0, sub_1CEF48FB0);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CEF48D44(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1CEF493A4(v13, v7, v5, a3);
  result = MEMORY[0x1D3867270](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CEF48EB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9078, &qword_1CEFAB9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CEF48F1C()
{
  result = qword_1EC4A9080;
  if (!qword_1EC4A9080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4A9080);
  }

  return result;
}

uint64_t sub_1CEF48F68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CEF48FB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v24 = result;
  v25 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v27 = *MEMORY[0x1E696AA08];
  v26 = *MEMORY[0x1E696A750];
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    if (v14 == sub_1CEFA8300() && v15 == v16)
    {
      goto LABEL_24;
    }

    v18 = sub_1CEFA8950();

    if (v18)
    {
      goto LABEL_24;
    }

    if (v14 == sub_1CEFA8300() && v15 == v19)
    {

LABEL_24:

LABEL_25:
      *(v24 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_1CEF4942C(v24, a2, v25, a3);
      }
    }

    else
    {
      v21 = sub_1CEFA8950();

      if (v21)
      {
        goto LABEL_25;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_1CEF4942C(v24, a2, v25, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CEF491A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v25 = result;
  v26 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v29 = *MEMORY[0x1E696AA08];
  v27 = *MEMORY[0x1E696A750];
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    if (v15 == sub_1CEFA8300() && v16 == v17)
    {
LABEL_5:
    }

    else
    {
      v19 = sub_1CEFA8950();

      if (v19)
      {
        goto LABEL_4;
      }

      if (v15 == sub_1CEFA8300() && v16 == v20)
      {

LABEL_4:
        v3 = a3;
        goto LABEL_5;
      }

      v22 = sub_1CEFA8950();

      v3 = a3;
      if ((v22 & 1) == 0)
      {
        *(v25 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v26++, 1))
        {
          goto LABEL_29;
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1CEF4942C(v25, a2, v26, v3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void *sub_1CEF493A4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_1CEF4942C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9338, &unk_1CEFAB3C0);
  result = sub_1CEFA86F0();
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
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1CEF37314(v17 + 32 * v16, v34);
    sub_1CEF49BC0(v34, v33);
    v21 = *(v9 + 40);
    sub_1CEFA8A00();

    sub_1CEFA8340();
    result = sub_1CEFA8A40();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_1CEF49BC0(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
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

_OWORD *sub_1CEF4967C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CEF76970(a2, a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1CEF9E584();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1CEF483D8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1CEF76970(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1CEFA89A0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_1CEF49BC0(a1, v23);
  }

  else
  {
    sub_1CEF49AA0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1CEF497CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1CEF76970(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1CEF48690(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1CEF76970(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1CEFA89A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1CEF9E728();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_1CEF49954(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1CEF9E1E4(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1CEF9E8A0();
      goto LABEL_7;
    }

    sub_1CEF48950(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_1CEF9E1E4(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1CEFA89A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for XPCWrapper.Continuation() - 8) + 72) * v10;

    return sub_1CEF4BB80(a1, v18);
  }

LABEL_13:

  return sub_1CEF49B0C(v10, a2, a1, v16);
}

_OWORD *sub_1CEF49AA0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1CEF49BC0(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1CEF49B0C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for XPCWrapper.Continuation();
  result = sub_1CEF4BC48(a3, v7 + *(*(v8 - 8) + 72) * a1);
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

void *sub_1CEF49BA0(void *a1, int64_t a2, char a3)
{
  result = sub_1CEF4B2F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_1CEF49BC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1CEF49C34()
{
  result = qword_1EC4A90C0;
  if (!qword_1EC4A90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90C0);
  }

  return result;
}

unint64_t sub_1CEF49C88()
{
  result = qword_1EC4A90C8;
  if (!qword_1EC4A90C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90C8);
  }

  return result;
}

unint64_t sub_1CEF49CDC()
{
  result = qword_1EC4A90D0;
  if (!qword_1EC4A90D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90D0);
  }

  return result;
}

unint64_t sub_1CEF49D30()
{
  result = qword_1EC4A90D8;
  if (!qword_1EC4A90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90D8);
  }

  return result;
}

unint64_t sub_1CEF49D84()
{
  result = qword_1EC4A90E0;
  if (!qword_1EC4A90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90E0);
  }

  return result;
}

unint64_t sub_1CEF49DD8()
{
  result = qword_1EC4A90E8;
  if (!qword_1EC4A90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90E8);
  }

  return result;
}

unint64_t sub_1CEF49E2C()
{
  result = qword_1EC4A90F0;
  if (!qword_1EC4A90F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90F0);
  }

  return result;
}

unint64_t sub_1CEF49E80()
{
  result = qword_1EC4A9118;
  if (!qword_1EC4A9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9118);
  }

  return result;
}

unint64_t sub_1CEF49ED4()
{
  result = qword_1EC4A9120;
  if (!qword_1EC4A9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9120);
  }

  return result;
}

unint64_t sub_1CEF49F28()
{
  result = qword_1EC4A9128;
  if (!qword_1EC4A9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9128);
  }

  return result;
}

unint64_t sub_1CEF49F7C()
{
  result = qword_1EC4A9158;
  if (!qword_1EC4A9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9158);
  }

  return result;
}

unint64_t sub_1CEF49FD0()
{
  result = qword_1EC4A9160;
  if (!qword_1EC4A9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9160);
  }

  return result;
}

unint64_t sub_1CEF4A024()
{
  result = qword_1EC4A9168;
  if (!qword_1EC4A9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9168);
  }

  return result;
}

unint64_t sub_1CEF4A078()
{
  result = qword_1EC4A9170;
  if (!qword_1EC4A9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9170);
  }

  return result;
}

unint64_t sub_1CEF4A0CC()
{
  result = qword_1EC4A9178;
  if (!qword_1EC4A9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9178);
  }

  return result;
}

unint64_t sub_1CEF4A120()
{
  result = qword_1EC4A91B0;
  if (!qword_1EC4A91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A91B0);
  }

  return result;
}

unint64_t sub_1CEF4A174()
{
  result = qword_1EC4A91C0;
  if (!qword_1EC4A91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A91C0);
  }

  return result;
}

unint64_t sub_1CEF4A1C8()
{
  result = qword_1EC4A91E0;
  if (!qword_1EC4A91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A91E0);
  }

  return result;
}

uint64_t sub_1CEF4A21C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A91C8, &unk_1CEFAA550);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CEF4A288(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A91D0, &qword_1CEFAB420);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CEF4A300()
{
  result = qword_1EC4A91F8;
  if (!qword_1EC4A91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A91F8);
  }

  return result;
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

uint64_t sub_1CEF4A374(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1CEF4A3BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ErrorCodableValue.NWErrorCodableValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ErrorCodableValue.NWErrorCodableValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
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

uint64_t sub_1CEF4A508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1CEF4A550(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ErrorCodableValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ErrorCodableValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CEF4A79C()
{
  result = qword_1EC4A9200;
  if (!qword_1EC4A9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9200);
  }

  return result;
}

unint64_t sub_1CEF4A7F4()
{
  result = qword_1EC4A9208;
  if (!qword_1EC4A9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9208);
  }

  return result;
}

unint64_t sub_1CEF4A84C()
{
  result = qword_1EC4A9210;
  if (!qword_1EC4A9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9210);
  }

  return result;
}

unint64_t sub_1CEF4A8A4()
{
  result = qword_1EC4A9218;
  if (!qword_1EC4A9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9218);
  }

  return result;
}

unint64_t sub_1CEF4A8FC()
{
  result = qword_1EC4A9220;
  if (!qword_1EC4A9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9220);
  }

  return result;
}

unint64_t sub_1CEF4A954()
{
  result = qword_1EC4A9228;
  if (!qword_1EC4A9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9228);
  }

  return result;
}

unint64_t sub_1CEF4A9AC()
{
  result = qword_1EC4A9230;
  if (!qword_1EC4A9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9230);
  }

  return result;
}

unint64_t sub_1CEF4AA04()
{
  result = qword_1EC4A9238;
  if (!qword_1EC4A9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9238);
  }

  return result;
}

unint64_t sub_1CEF4AA5C()
{
  result = qword_1EC4A9240;
  if (!qword_1EC4A9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9240);
  }

  return result;
}

unint64_t sub_1CEF4AAB4()
{
  result = qword_1EC4A9248;
  if (!qword_1EC4A9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9248);
  }

  return result;
}

unint64_t sub_1CEF4AB0C()
{
  result = qword_1EC4A9250;
  if (!qword_1EC4A9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9250);
  }

  return result;
}

unint64_t sub_1CEF4AB64()
{
  result = qword_1EC4A9258;
  if (!qword_1EC4A9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9258);
  }

  return result;
}

unint64_t sub_1CEF4ABBC()
{
  result = qword_1EC4A9260;
  if (!qword_1EC4A9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9260);
  }

  return result;
}

unint64_t sub_1CEF4AC14()
{
  result = qword_1EC4A9268;
  if (!qword_1EC4A9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9268);
  }

  return result;
}

unint64_t sub_1CEF4AC6C()
{
  result = qword_1EC4A9270;
  if (!qword_1EC4A9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9270);
  }

  return result;
}

unint64_t sub_1CEF4ACC4()
{
  result = qword_1EC4A9278;
  if (!qword_1EC4A9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9278);
  }

  return result;
}

unint64_t sub_1CEF4AD1C()
{
  result = qword_1EC4A9280;
  if (!qword_1EC4A9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9280);
  }

  return result;
}

unint64_t sub_1CEF4AD74()
{
  result = qword_1EC4A9288;
  if (!qword_1EC4A9288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9288);
  }

  return result;
}

unint64_t sub_1CEF4ADCC()
{
  result = qword_1EC4A9290;
  if (!qword_1EC4A9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9290);
  }

  return result;
}

unint64_t sub_1CEF4AE24()
{
  result = qword_1EC4A9298;
  if (!qword_1EC4A9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9298);
  }

  return result;
}

unint64_t sub_1CEF4AE7C()
{
  result = qword_1EC4A92A0;
  if (!qword_1EC4A92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92A0);
  }

  return result;
}

unint64_t sub_1CEF4AED4()
{
  result = qword_1EC4A92A8;
  if (!qword_1EC4A92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92A8);
  }

  return result;
}

unint64_t sub_1CEF4AF2C()
{
  result = qword_1EC4A92B0;
  if (!qword_1EC4A92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92B0);
  }

  return result;
}

unint64_t sub_1CEF4AF84()
{
  result = qword_1EC4A92B8;
  if (!qword_1EC4A92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92B8);
  }

  return result;
}

unint64_t sub_1CEF4AFDC()
{
  result = qword_1EC4A92C0;
  if (!qword_1EC4A92C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92C0);
  }

  return result;
}

unint64_t sub_1CEF4B034()
{
  result = qword_1EC4A92C8;
  if (!qword_1EC4A92C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92C8);
  }

  return result;
}

unint64_t sub_1CEF4B08C()
{
  result = qword_1EC4A92D0;
  if (!qword_1EC4A92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92D0);
  }

  return result;
}

unint64_t sub_1CEF4B0E4()
{
  result = qword_1EC4A92D8;
  if (!qword_1EC4A92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92D8);
  }

  return result;
}

unint64_t sub_1CEF4B13C()
{
  result = qword_1EC4A92E0;
  if (!qword_1EC4A92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92E0);
  }

  return result;
}

unint64_t sub_1CEF4B194()
{
  result = qword_1EC4A92E8;
  if (!qword_1EC4A92E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92E8);
  }

  return result;
}

unint64_t sub_1CEF4B1EC()
{
  result = qword_1EC4A92F0;
  if (!qword_1EC4A92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92F0);
  }

  return result;
}

unint64_t sub_1CEF4B244()
{
  result = qword_1EC4A92F8;
  if (!qword_1EC4A92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92F8);
  }

  return result;
}

char *sub_1CEF4B298(char *a1, int64_t a2, char a3)
{
  result = sub_1CEF4B42C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CEF4B2B8(void *a1, int64_t a2, char a3)
{
  result = sub_1CEF4B548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CEF4B2D8(char *a1, int64_t a2, char a3)
{
  result = sub_1CEF4B690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CEF4B2F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9340, &qword_1CEFB19C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CEF4B42C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9330, &qword_1CEFAB3B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CEF4B548(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9320, &qword_1CEFAB3A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9328, &qword_1CEFAB3B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CEF4B690(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9310, &qword_1CEFAB398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1CEF4B79C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F7774656ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C6C65636E6163 && a2 == 0xEC0000006E6F6974 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CEFA8950();

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

uint64_t sub_1CEF4B8B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7869736F70 && a2 == 0xE500000000000000;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7564900 && a2 == 0xE300000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7564404 && a2 == 0xE300000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261774169666977 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CEFA8950();

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

uint64_t sub_1CEF4BA18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CEFB50E0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CEFA8950();

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

uint64_t sub_1CEF4BB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCWrapper.Continuation();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF4BBE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCWrapper.Continuation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF4BC48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCWrapper.Continuation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PrivateCloudComputeError.init(file:line:message:)@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v24 = a2;
  v23[3] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  v12 = sub_1CEFA8030();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1CEFA8650();

  v26 = a3;
  v27 = a4;
  MEMORY[0x1D38665A0](0x3D656C696620, 0xE600000000000000);
  v14 = sub_1CEFA8660();
  MEMORY[0x1D38665A0](v14);

  MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
  v25 = v24;
  v15 = sub_1CEFA8910();
  MEMORY[0x1D38665A0](v15);

  v16 = v26;
  v17 = v27;
  v18 = type metadata accessor for PrivateCloudComputeError();
  v19 = v18[5];
  v13(&a5[v19], 1, 1, v12);
  v20 = &a5[v18[6]];
  v21 = &a5[v18[7]];
  *a5 = 21;
  sub_1CEF3D4EC(v11, &a5[v19]);
  *v20 = 0;
  v20[1] = 0;
  *v21 = v16;
  v21[1] = v17;
  result = sub_1CEF3D55C(v11, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  *&a5[v18[8]] = MEMORY[0x1E69E7CC0];
  return result;
}

char *sub_1CEF4BEE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v63[0] = a1;
  MEMORY[0x1D38670C0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
  v4 = sub_1CEFA8920();
  v58 = a1;
  v59 = a2;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = swift_allocError();
    *v6 = a1;
  }

  v7 = sub_1CEFA7EF0();

  v8 = [v7 domain];
  v9 = sub_1CEFA8300();
  v56 = v10;
  v57 = v9;

  v55 = [v7 code];
  v60 = v7;
  v11 = [v7 userInfo];
  v12 = sub_1CEFA82B0();

  v13 = sub_1CEF48C5C(v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9070, &unk_1CEFAA490);
  result = sub_1CEFA86D0();
  v15 = 0;
  v16 = 1 << *(v13 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 64);
  v19 = (v16 + 63) >> 6;
  v61 = result + 64;
  v62 = result;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_13:
      v23 = v20 | (v15 << 6);
      v24 = (*(v13 + 48) + 16 * v23);
      v26 = *v24;
      v25 = v24[1];
      sub_1CEF37314(*(v13 + 56) + 32 * v23, v63);
      sub_1CEF37314(v63, v67);

      if (!swift_dynamicCast())
      {
        v65 = 0;
        v66 = 0xE000000000000000;
        __swift_project_boxed_opaque_existential_1(v63, v64[1]);
        sub_1CEFA8930();
      }

      v27 = v65;
      v28 = v66;
      result = __swift_destroy_boxed_opaque_existential_0(v63);
      *&v61[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
      v29 = (*(v62 + 6) + 16 * v23);
      *v29 = v26;
      v29[1] = v25;
      v30 = (*(v62 + 7) + 16 * v23);
      *v30 = v27;
      v30[1] = v28;
      v31 = *(v62 + 2);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      *(v62 + 2) = v33;
      if (!v18)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v15 >= v19)
      {
        break;
      }

      v22 = *(v13 + 64 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_13;
      }
    }

    v34 = [v7 userInfo];
    v35 = sub_1CEFA82B0();

    v36 = sub_1CEF48CD0(v35);

    v37 = 1 << *(v36 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v36 + 64);
    v40 = (v37 + 63) >> 6;

    v41 = 0;
    v42 = MEMORY[0x1E69E7CC0];
    while (v39)
    {
LABEL_27:
      v44 = __clz(__rbit64(v39)) | (v41 << 6);
      v45 = (*(v36 + 48) + 16 * v44);
      v46 = *v45;
      v47 = v45[1];
      sub_1CEF37314(*(v36 + 56) + 32 * v44, v64);
      v63[0] = v46;
      v63[1] = v47;

      v48 = sub_1CEF47250(v46, v47, v64);
      result = sub_1CEF3D55C(v63, &qword_1EC4A9078, &qword_1CEFAB9D0);
      v49 = *(v48 + 16);
      v50 = *(v42 + 2);
      v51 = v50 + v49;
      if (__OFADD__(v50, v49))
      {
        goto LABEL_43;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v51 > *(v42 + 3) >> 1)
      {
        if (v50 <= v51)
        {
          v52 = v50 + v49;
        }

        else
        {
          v52 = v50;
        }

        result = sub_1CEF480E4(result, v52, 1, v42);
        v42 = result;
      }

      v39 &= v39 - 1;
      if (*(v48 + 16))
      {
        if ((*(v42 + 3) >> 1) - *(v42 + 2) < v49)
        {
          goto LABEL_45;
        }

        swift_arrayInitWithCopy();

        if (v49)
        {
          v53 = *(v42 + 2);
          v32 = __OFADD__(v53, v49);
          v54 = v53 + v49;
          if (v32)
          {
            goto LABEL_46;
          }

          *(v42 + 2) = v54;
        }
      }

      else
      {

        if (v49)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v43 >= v40)
      {

        *v59 = v57;
        v59[1] = v56;
        v59[2] = v55;
        v59[3] = v62;
        v59[4] = v42;
        return result;
      }

      v39 = *(v36 + 64 + 8 * v43);
      ++v41;
      if (v39)
      {
        v41 = v43;
        goto LABEL_27;
      }
    }

LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1CEF4C408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1CEF497CC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1CEF76970(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1CEF9E728();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1CEF9E228(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1CEF4C510(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for XPCWrapper.Continuation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1CEF3D55C(a1, &qword_1EC4A93D0, &unk_1CEFAB9B8);
    v15 = *v3;
    v16 = sub_1CEF9E1E4(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CEF9E8A0();
        v21 = v26;
      }

      sub_1CEF53BD4(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for XPCWrapper.Continuation);
      sub_1CEF9E3D8(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1CEF3D55C(v9, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  else
  {
    sub_1CEF53BD4(a1, v14, type metadata accessor for XPCWrapper.Continuation);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1CEF49954(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t PrivateCloudComputeError.retryAfterDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PrivateCloudComputeError() + 20);

  return sub_1CEF4E644(a1, v3);
}

uint64_t PrivateCloudComputeError.telemetryString.getter()
{
  v1 = &v0[*(type metadata accessor for PrivateCloudComputeError() + 24)];
  v2 = *(v1 + 1);
  if (v2)
  {
    v3 = *v1;
    MEMORY[0x1D38665A0](0xD000000000000018, 0x80000001CEFAB3D0);
    MEMORY[0x1D38665A0](95, 0xE100000000000000);
    v5 = *v0;
    sub_1CEFA86A0();
    MEMORY[0x1D38665A0](95, 0xE100000000000000);
    MEMORY[0x1D38665A0](v3, v2);
  }

  else
  {
    MEMORY[0x1D38665A0](0xD000000000000018, 0x80000001CEFAB3D0);
    MEMORY[0x1D38665A0](95, 0xE100000000000000);
    v6 = *v0;
    sub_1CEFA86A0();
  }

  return 0;
}

uint64_t PrivateCloudComputeError.debugMessage.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateCloudComputeError() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PrivateCloudComputeError.debugMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateCloudComputeError() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateCloudComputeError.underlying.getter()
{
  v41 = sub_1CEFA84C0();
  v1 = *(v41 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1CEFA8250();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + *(type metadata accessor for PrivateCloudComputeError() + 32));
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1CEF49BA0(0, v9, 0);
    v10 = v44;
    v36 = *MEMORY[0x1E6977D70];
    v38 = (v4 + 104);
    v39 = (v1 + 32);
    v35 = *MEMORY[0x1E6977D60];
    v34 = *MEMORY[0x1E6977D58];
    v33 = *MEMORY[0x1E6977D68];
    v37 = (v4 + 32);
    v11 = (v8 + 72);
    do
    {
      v12 = *(v11 - 5);
      if (*v11)
      {
        if (*v11 == 1)
        {
          sub_1CEF53B38(&qword_1EC4A9088, MEMORY[0x1E69E8550]);
          v13 = v41;
          v14 = swift_allocError();
          v16 = v15;
          v17 = v40;
          _sScE19PrivateCloudComputeE12codableValueScEAA012ErrorCodableE0O012CancellationgE0V_tcfC_0();
          (*v39)(v16, v17, v13);
        }

        else
        {
          v24 = *(v11 - 2);
          v23 = *(v11 - 1);
          v26 = *(v11 - 4);
          v25 = *(v11 - 3);
          sub_1CEF48F1C();
          codableValue.domain._countAndFlagsBits = v12;
          codableValue.domain._object = v26;
          codableValue.code = v25;
          codableValue.userInfo._rawValue = v24;
          codableValue.underlyingErrors._rawValue = v23;

          NSError.init(codableValue:)(v27, &codableValue);
          v14 = v28;
        }
      }

      else
      {
        sub_1CEF53B38(&qword_1EC4A9090, MEMORY[0x1E6977D78]);
        v14 = swift_allocError();
        v19 = v18;
        if (BYTE4(v12) > 1u)
        {
          *v7 = v12;
          if (BYTE4(v12) == 2)
          {
            v22 = v35;
          }

          else
          {
            v22 = v36;
          }
        }

        else if (BYTE4(v12))
        {
          *v7 = v12;
          v22 = v34;
        }

        else
        {
          v20 = sub_1CEFA8230();
          if ((v20 & 0x100000000) != 0)
          {
            v21 = 1;
          }

          else
          {
            v21 = v20;
          }

          *v7 = v21;
          v22 = v33;
        }

        v29 = v42;
        (*v38)(v7, v22, v42);
        (*v37)(v19, v7, v29);
      }

      v44 = v10;
      v31 = *(v10 + 16);
      v30 = *(v10 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1CEF49BA0((v30 > 1), v31 + 1, 1);
        v10 = v44;
      }

      v11 += 48;
      *(v10 + 16) = v31 + 1;
      *(v10 + 8 * v31 + 32) = v14;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t PrivateCloudComputeError.underlying.setter(uint64_t a1)
{
  v62 = sub_1CEFA84C0();
  v3 = *(v62 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CEFA8250();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v61 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  v20 = *(a1 + 16);
  if (!v20)
  {

    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v60 = v6;
  v49 = v1;
  v70 = MEMORY[0x1E69E7CC0];
  sub_1CEF4B298(0, v20, 0);
  v21 = v70;
  v53 = (v3 + 8);
  v58 = (v8 + 16);
  v59 = (v8 + 32);
  v57 = (v8 + 88);
  v56 = *MEMORY[0x1E6977D68];
  v52 = *MEMORY[0x1E6977D58];
  v51 = *MEMORY[0x1E6977D60];
  v50 = *MEMORY[0x1E6977D70];
  v54 = (v8 + 96);
  v55 = (v8 + 8);
  v22 = 32;
  v65 = v14;
  v66 = v7;
  v63 = v19;
  v64 = v17;
  v67 = a1;
  do
  {
    v23 = *(a1 + v22);
    v68[0] = v23;
    MEMORY[0x1D38670C0](v23);
    MEMORY[0x1D38670C0](v23);
    MEMORY[0x1D38670C0](v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
    if (swift_dynamicCast())
    {
      (*v59)(v17, v19, v7);
      v24 = *v58;
      (*v58)(v14, v17, v7);
      v25 = v61;
      v24(v61, v14, v7);
      v26 = (*v57)(v25, v7);
      if (v26 == v56)
      {
        (*v54)(v25, v7);
        v27 = *v25;
        v28 = sub_1CEFA8240();

        v29 = *v55;
        (*v55)(v14, v7);
        v29(v17, v7);
        v30 = 0;
LABEL_12:
        v33 = (v30 | v28);
LABEL_13:

        v34 = 0;
        v35 = 0;
        v37 = 0;
        v36 = 0uLL;
        goto LABEL_18;
      }

      if (v26 == v52)
      {

        v38 = *v55;
        (*v55)(v14, v7);
        v38(v17, v7);
        (*v54)(v25, v7);
        v28 = *v25;
        v30 = 0x100000000;
        goto LABEL_12;
      }

      if (v26 == v51)
      {

        v39 = *v55;
        (*v55)(v14, v7);
        v39(v17, v7);
        (*v54)(v25, v7);
        v28 = *v25;
        v30 = 0x200000000;
        goto LABEL_12;
      }

      if (v26 == v50)
      {

        v40 = *v55;
        (*v55)(v14, v7);
        v40(v17, v7);
        (*v54)(v25, v7);
        v33 = (*v25 | 0x300000000);
        goto LABEL_13;
      }

      v41 = *v55;
      (*v55)(v14, v7);
      v41(v17, v7);
      v41(v25, v7);
    }

    else
    {
      v31 = v60;
      v32 = v62;
      if (swift_dynamicCast())
      {

        (*v53)(v31, v32);
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0uLL;
        v37 = 1;
        goto LABEL_18;
      }
    }

    sub_1CEF4BEE0(v23, v68);
    v33 = v68[0];
    v34 = v68[1];
    v35 = v68[2];
    v37 = 2;
    v36 = v69;
LABEL_18:
    v70 = v21;
    v43 = *(v21 + 16);
    v42 = *(v21 + 24);
    if (v43 >= v42 >> 1)
    {
      v48 = v36;
      sub_1CEF4B298((v42 > 1), v43 + 1, 1);
      v36 = v48;
      v21 = v70;
    }

    *(v21 + 16) = v43 + 1;
    v44 = v21 + 48 * v43;
    *(v44 + 32) = v33;
    *(v44 + 40) = v34;
    *(v44 + 48) = v35;
    *(v44 + 56) = v36;
    *(v44 + 72) = v37;
    v22 += 8;
    --v20;
    v7 = v66;
    a1 = v67;
    v17 = v64;
    v14 = v65;
    v19 = v63;
  }

  while (v20);

  v1 = v49;
LABEL_23:
  v45 = *(type metadata accessor for PrivateCloudComputeError() + 32);
  v46 = *(v1 + v45);

  *(v1 + v45) = v21;
  return result;
}

uint64_t (*PrivateCloudComputeError.underlying.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = PrivateCloudComputeError.underlying.getter();
  return sub_1CEF4D5D0;
}

uint64_t sub_1CEF4D5D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return PrivateCloudComputeError.underlying.setter(*a1);
  }

  v4 = *a1;

  PrivateCloudComputeError.underlying.setter(v5);
}

uint64_t PrivateCloudComputeError.init(code:retryAfterDate:underlying:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_1CEFA84C0();
  v9 = *(v8 - 8);
  v80 = v8;
  v81 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1CEFA8250();
  v70 = *(v83 - 8);
  v13 = *(v70 + 64);
  v14 = MEMORY[0x1EEE9AC00](v83);
  v79 = (&v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v78 = &v61 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v77 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v61 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v61 - v23;
  LOBYTE(a1) = *a1;
  sub_1CEF53C3C(a2, &v61 - v23, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  v25 = type metadata accessor for PrivateCloudComputeError();
  v26 = v25[5];
  v27 = sub_1CEFA8030();
  (*(*(v27 - 8) + 56))(&a4[v26], 1, 1, v27);
  v28 = &a4[v25[6]];
  v29 = &a4[v25[7]];
  *a4 = a1;
  sub_1CEF3D4EC(v24, &a4[v26]);
  *v28 = 0;
  v28[1] = 0;
  *v29 = 0;
  v29[1] = 0;
  v30 = *(a3 + 16);
  if (!v30)
  {

    sub_1CEF3D55C(a2, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    result = sub_1CEF3D55C(v24, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v62 = v24;
  v63 = v25;
  v76 = v12;
  v64 = a2;
  v65 = a4;
  v86 = MEMORY[0x1E69E7CC0];
  sub_1CEF4B298(0, v30, 0);
  v31 = v86;
  v69 = (v81 + 8);
  v32 = v70;
  v74 = (v70 + 16);
  v75 = (v70 + 32);
  v73 = (v70 + 88);
  v72 = *MEMORY[0x1E6977D68];
  v68 = *MEMORY[0x1E6977D58];
  v67 = *MEMORY[0x1E6977D60];
  v66 = *MEMORY[0x1E6977D70];
  v70 += 96;
  v71 = (v32 + 8);
  v33 = 32;
  v81 = a3;
  do
  {
    v34 = *(a3 + v33);
    v84[0] = v34;
    MEMORY[0x1D38670C0](v34);
    MEMORY[0x1D38670C0](v34);
    MEMORY[0x1D38670C0](v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
    v35 = v82;
    v36 = v83;
    if (swift_dynamicCast())
    {
      v37 = v77;
      (*v75)(v77, v35, v36);
      v38 = *v74;
      v39 = v78;
      (*v74)(v78, v37, v36);
      v40 = v79;
      v38(v79, v39, v36);
      v41 = (*v73)(v40, v36);
      if (v41 == v72)
      {
        (*v70)(v40, v36);
        v42 = *v40;
        v43 = sub_1CEFA8240();

        v44 = *v71;
        (*v71)(v39, v36);
        v44(v37, v36);
        v45 = 0;
LABEL_12:
        v48 = (v45 | v43);
LABEL_13:

        v49 = 0;
        v50 = 0;
        v52 = 0;
        v51 = 0uLL;
        goto LABEL_18;
      }

      if (v41 == v68)
      {

        v53 = *v71;
        (*v71)(v39, v36);
        v53(v37, v36);
        (*v70)(v40, v36);
        v43 = *v40;
        v45 = 0x100000000;
        goto LABEL_12;
      }

      if (v41 == v67)
      {

        v54 = *v71;
        (*v71)(v39, v36);
        v54(v37, v36);
        (*v70)(v40, v36);
        v43 = *v40;
        v45 = 0x200000000;
        goto LABEL_12;
      }

      if (v41 == v66)
      {

        v55 = *v71;
        (*v71)(v39, v36);
        v55(v37, v36);
        (*v70)(v40, v36);
        v48 = (*v40 | 0x300000000);
        goto LABEL_13;
      }

      v56 = *v71;
      (*v71)(v39, v36);
      v56(v37, v36);
      v56(v40, v36);
    }

    else
    {
      v46 = v76;
      v47 = v80;
      if (swift_dynamicCast())
      {

        (*v69)(v46, v47);
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0uLL;
        v52 = 1;
        goto LABEL_18;
      }
    }

    sub_1CEF4BEE0(v34, v84);
    v48 = v84[0];
    v49 = v84[1];
    v50 = v84[2];
    v52 = 2;
    v51 = v85;
LABEL_18:
    v86 = v31;
    v58 = *(v31 + 16);
    v57 = *(v31 + 24);
    if (v58 >= v57 >> 1)
    {
      v61 = v51;
      sub_1CEF4B298((v57 > 1), v58 + 1, 1);
      v51 = v61;
      v31 = v86;
    }

    *(v31 + 16) = v58 + 1;
    v59 = v31 + 48 * v58;
    *(v59 + 32) = v48;
    *(v59 + 40) = v49;
    *(v59 + 48) = v50;
    *(v59 + 56) = v51;
    *(v59 + 72) = v52;
    v33 += 8;
    --v30;
    a3 = v81;
  }

  while (v30);

  sub_1CEF3D55C(v64, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  result = sub_1CEF3D55C(v62, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  a4 = v65;
  v25 = v63;
LABEL_23:
  *&a4[v25[8]] = v31;
  return result;
}

uint64_t PrivateCloudComputeError.init(code:retryAfterDate:telemetrySuffix:debugMessage:underlying:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v82 = a5;
  v83 = a6;
  v81 = a4;
  v80 = sub_1CEFA84C0();
  v76 = *(v80 - 8);
  v13 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CEFA8250();
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v79 = (&v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v78 = &v63 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v77 = &v63 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v84 = &v63 - v24;
  LOBYTE(a1) = *a1;
  v25 = type metadata accessor for PrivateCloudComputeError();
  v26 = v25[5];
  v27 = sub_1CEFA8030();
  (*(*(v27 - 8) + 56))(&a8[v26], 1, 1, v27);
  v66 = v25;
  v28 = v25[7];
  v29 = &a8[v25[6]];
  v30 = &a8[v28];
  *a8 = a1;
  v67 = a8;
  sub_1CEF3D4EC(a2, &a8[v26]);
  v31 = v81;
  v32 = v82;
  *v29 = a3;
  v29[1] = v31;
  v33 = v83;
  *v30 = v32;
  v30[1] = v33;
  v34 = *(a7 + 16);
  if (!v34)
  {

    result = sub_1CEF3D55C(a2, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v64 = a2;
  v87 = MEMORY[0x1E69E7CC0];
  sub_1CEF4B298(0, v34, 0);
  v35 = v87;
  v70 = (v76 + 8);
  v36 = v71;
  v75 = (v71 + 16);
  v76 = v71 + 32;
  v74 = (v71 + 88);
  v73 = *MEMORY[0x1E6977D68];
  v69 = *MEMORY[0x1E6977D58];
  v68 = *MEMORY[0x1E6977D60];
  v65 = *MEMORY[0x1E6977D70];
  v71 += 96;
  v72 = (v36 + 8);
  v37 = 32;
  v82 = v15;
  v83 = a7;
  v81 = v16;
  do
  {
    v38 = *(a7 + v37);
    v85[0] = v38;
    MEMORY[0x1D38670C0](v38);
    MEMORY[0x1D38670C0](v38);
    MEMORY[0x1D38670C0](v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
    v39 = v84;
    if (swift_dynamicCast())
    {
      v40 = v77;
      (*v76)(v77, v39, v16);
      v41 = *v75;
      v42 = v78;
      (*v75)(v78, v40, v16);
      v43 = v79;
      v41(v79, v42, v16);
      v44 = (*v74)(v43, v16);
      if (v44 == v73)
      {
        (*v71)(v43, v16);
        v45 = *v43;
        v46 = sub_1CEFA8240();

        v47 = *v72;
        (*v72)(v42, v16);
        v47(v40, v16);
        v48 = 0;
LABEL_12:
        v50 = (v48 | v46);
LABEL_13:

        v51 = 0;
        v52 = 0;
        v54 = 0;
        v53 = 0uLL;
        goto LABEL_18;
      }

      if (v44 == v69)
      {

        v55 = *v72;
        (*v72)(v42, v16);
        v55(v40, v16);
        (*v71)(v43, v16);
        v46 = *v43;
        v48 = 0x100000000;
        goto LABEL_12;
      }

      if (v44 == v68)
      {

        v56 = *v72;
        (*v72)(v42, v16);
        v56(v40, v16);
        (*v71)(v43, v16);
        v46 = *v43;
        v48 = 0x200000000;
        goto LABEL_12;
      }

      if (v44 == v65)
      {

        v57 = *v72;
        (*v72)(v42, v16);
        v57(v40, v16);
        (*v71)(v43, v16);
        v50 = (*v43 | 0x300000000);
        goto LABEL_13;
      }

      v58 = *v72;
      (*v72)(v42, v16);
      v58(v40, v16);
      v58(v43, v16);
    }

    else
    {
      v49 = v80;
      if (swift_dynamicCast())
      {

        (*v70)(v15, v49);
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0uLL;
        v54 = 1;
        goto LABEL_18;
      }
    }

    sub_1CEF4BEE0(v38, v85);
    v50 = v85[0];
    v51 = v85[1];
    v52 = v85[2];
    v54 = 2;
    v53 = v86;
LABEL_18:
    v87 = v35;
    v60 = *(v35 + 16);
    v59 = *(v35 + 24);
    if (v60 >= v59 >> 1)
    {
      v63 = v53;
      sub_1CEF4B298((v59 > 1), v60 + 1, 1);
      v53 = v63;
      v35 = v87;
    }

    *(v35 + 16) = v60 + 1;
    v61 = v35 + 48 * v60;
    *(v61 + 32) = v50;
    *(v61 + 40) = v51;
    *(v61 + 48) = v52;
    *(v61 + 56) = v53;
    *(v61 + 72) = v54;
    v37 += 8;
    --v34;
    v15 = v82;
    a7 = v83;
    v16 = v81;
  }

  while (v34);
  sub_1CEF3D55C(v64, &qword_1EC4A8F20, &unk_1CEFAB3E0);

LABEL_23:
  *&v67[v66[8]] = v35;
  return result;
}

uint64_t type metadata accessor for PrivateCloudComputeError()
{
  result = qword_1EDE38580;
  if (!qword_1EDE38580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CEF4E644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF4E6B4()
{
  v1 = *v0;
  v2 = 1701080931;
  v3 = 0x7274656D656C6574;
  v4 = 0x73654D6775626564;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7466417972746572;
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

uint64_t sub_1CEF4E76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF52E08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF4E7A0(uint64_t a1)
{
  v2 = sub_1CEF52AD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF4E7DC(uint64_t a1)
{
  v2 = sub_1CEF52AD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF4E818(uint64_t a1)
{
  v2 = sub_1CEF53B38(qword_1EDE38040, type metadata accessor for PrivateCloudComputeError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CEF4E884(uint64_t a1)
{
  v2 = sub_1CEF53B38(qword_1EDE38040, type metadata accessor for PrivateCloudComputeError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

PrivateCloudCompute::PrivateCloudComputeError::Code_optional __swiftcall PrivateCloudComputeError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 40;
  switch(rawValue)
  {
    case 32001:
      goto LABEL_56;
    case 32002:
      v2 = 1;
      goto LABEL_56;
    case 32003:
      v2 = 2;
      goto LABEL_56;
    case 32004:
      v2 = 3;
      goto LABEL_56;
    case 32005:
      v2 = 4;
      goto LABEL_56;
    case 32006:
      v2 = 5;
      goto LABEL_56;
    case 32007:
      v2 = 6;
      goto LABEL_56;
    case 32008:
      v2 = 7;
      goto LABEL_56;
    case 32009:
      v2 = 8;
      goto LABEL_56;
    case 32010:
      v2 = 9;
      goto LABEL_56;
    case 32011:
      v2 = 10;
      goto LABEL_56;
    case 32012:
      v2 = 11;
      goto LABEL_56;
    case 32013:
      v2 = 12;
      goto LABEL_56;
    case 32014:
      v2 = 13;
      goto LABEL_56;
    case 32015:
      v2 = 14;
      goto LABEL_56;
    case 32016:
      v2 = 15;
      goto LABEL_56;
    case 32017:
      v2 = 16;
      goto LABEL_56;
    case 32018:
      v2 = 17;
      goto LABEL_56;
    case 32019:
      v2 = 18;
      goto LABEL_56;
    case 32020:
      v2 = 19;
      goto LABEL_56;
    case 32021:
      v2 = 20;
      goto LABEL_56;
    case 32022:
      v2 = 21;
      goto LABEL_56;
    case 32023:
      v2 = 22;
      goto LABEL_56;
    case 32024:
      v2 = 23;
      goto LABEL_56;
    case 32025:
      v2 = 24;
      goto LABEL_56;
    case 32026:
      v2 = 25;
      goto LABEL_56;
    case 32027:
      v2 = 26;
      goto LABEL_56;
    case 32028:
      v2 = 27;
      goto LABEL_56;
    case 32029:
      v2 = 28;
      goto LABEL_56;
    case 32030:
      v2 = 29;
      goto LABEL_56;
    case 32031:
      v2 = 30;
      goto LABEL_56;
    case 32032:
      v2 = 31;
      goto LABEL_56;
    case 32033:
      v2 = 32;
      goto LABEL_56;
    case 32034:
      v2 = 33;
      goto LABEL_56;
    case 32035:
      v2 = 34;
      goto LABEL_56;
    case 32036:
      v2 = 35;
      goto LABEL_56;
    case 32037:
      v2 = 36;
      goto LABEL_56;
    case 32038:
      v2 = 37;
      goto LABEL_56;
    case 32039:
      v2 = 38;
      goto LABEL_56;
    case 32040:
      v2 = 39;
LABEL_56:
      v3 = v2;
      goto LABEL_57;
    case 32041:
LABEL_57:
      *v1 = v3;
      break;
    case 32043:
      *v1 = 41;
      break;
    case 32044:
      *v1 = 42;
      break;
    case 32045:
      *v1 = 43;
      break;
    case 32046:
      *v1 = 44;
      break;
    case 32047:
      *v1 = 45;
      break;
    case 32048:
      *v1 = 46;
      break;
    case 32049:
      *v1 = 47;
      break;
    case 32050:
      *v1 = 48;
      break;
    case 32051:
      *v1 = 49;
      break;
    case 32052:
      *v1 = 50;
      break;
    case 32053:
      *v1 = 51;
      break;
    case 32054:
      *v1 = 52;
      break;
    case 32055:
      *v1 = 54;
      break;
    case 32056:
      *v1 = 55;
      break;
    case 32057:
      *v1 = 56;
      break;
    case 32058:
      *v1 = 57;
      break;
    case 32059:
      *v1 = 53;
      break;
    default:
      *v1 = 58;
      break;
  }

  return rawValue;
}

uint64_t sub_1CEF4EB80()
{
  v1 = *v0;
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](qword_1CEFABA28[v1]);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF4EC08()
{
  v1 = *v0;
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](qword_1CEFABA28[v1]);
  return sub_1CEFA8A40();
}

uint64_t PrivateCloudComputeError.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](v1);
  return sub_1CEFA8A40();
}

uint64_t PrivateCloudComputeError.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9350, &qword_1CEFAB418);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF52AD0();
  sub_1CEFA8A60();
  v26 = *v3;
  v25 = 0;
  sub_1CEF52B24();
  sub_1CEFA88D0();
  if (!v2)
  {
    v11 = type metadata accessor for PrivateCloudComputeError();
    v12 = v11[5];
    v24 = 1;
    sub_1CEFA8030();
    sub_1CEF53B38(&qword_1EDE380D8, MEMORY[0x1E6969530]);
    sub_1CEFA8870();
    v13 = &v3[v11[6]];
    v14 = *v13;
    v15 = v13[1];
    v23 = 2;
    sub_1CEFA8830();
    v16 = &v3[v11[7]];
    v17 = *v16;
    v18 = v16[1];
    v22 = 3;
    sub_1CEFA8830();
    v21 = *&v3[v11[8]];
    v20[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91D0, &qword_1CEFAB420);
    sub_1CEF4A288(&qword_1EC4A91D8, sub_1CEF4A1C8);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PrivateCloudComputeError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9368, &qword_1CEFAB428);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for PrivateCloudComputeError();
  v12 = *(*(v11 - 1) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 20);
  v17 = sub_1CEFA8030();
  v18 = *(*(v17 - 8) + 56);
  v37 = v16;
  v19 = v15;
  v18(&v15[v16], 1, 1, v17);
  v20 = a1[3];
  v21 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1CEF52AD0();
  v22 = v36;
  sub_1CEFA8A50();
  if (v22)
  {
    v23 = v37;
    __swift_destroy_boxed_opaque_existential_0(v38);
    sub_1CEF3D55C(&v19[v23], &qword_1EC4A8F20, &unk_1CEFAB3E0);
  }

  else
  {
    v44 = 0;
    sub_1CEF52B78();
    sub_1CEFA87D0();
    *v19 = v45;
    v43 = 1;
    sub_1CEF53B38(&qword_1EC4A8FE8, MEMORY[0x1E6969530]);
    sub_1CEFA8770();
    sub_1CEF4E644(v6, &v19[v37]);
    v42 = 2;
    v24 = sub_1CEFA8730();
    v25 = v34;
    v26 = &v19[v11[6]];
    *v26 = v24;
    v26[1] = v27;
    v41 = 3;
    v28 = sub_1CEFA8730();
    v29 = &v19[v11[7]];
    *v29 = v28;
    v29[1] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91D0, &qword_1CEFAB420);
    v40 = 4;
    sub_1CEF4A288(&qword_1EC4A91F0, sub_1CEF4A300);
    sub_1CEFA87D0();
    (*(v25 + 8))(v10, v35);
    *&v19[v11[8]] = v39;
    sub_1CEF52BCC(v19, v33);
    __swift_destroy_boxed_opaque_existential_0(v38);
    return sub_1CEF53294(v19, type metadata accessor for PrivateCloudComputeError);
  }
}

unint64_t PrivateCloudComputeError.errorUserInfo.getter()
{
  v1 = sub_1CEFA8100();
  v78 = *(v1 - 8);
  v79 = v1;
  v2 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v77 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CEFA7FE0();
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v73 - v10;
  v12 = sub_1CEFA8030();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CEF52FD4(MEMORY[0x1E69E7CC0]);
  v76 = type metadata accessor for PrivateCloudComputeError();
  v18 = *(v76 + 20);
  v80 = v0;
  sub_1CEF53C3C(v0 + v18, v11, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  v19 = (*(v13 + 48))(v11, 1, v12);
  v20 = MEMORY[0x1E69E6158];
  if (v19 == 1)
  {
    sub_1CEF3D55C(v11, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    v21 = v20;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v22 = sub_1CEFA8120();
    v24 = v23;
    sub_1CEF4FD10(v7);
    v25 = sub_1CEFA7F80();
    v26 = v4;
    v74 = v4;
    v28 = v27;
    v75 = *(v75 + 8);
    (v75)(v7, v26);
    v86 = MEMORY[0x1E69E6158];
    *&v85 = v25;
    *(&v85 + 1) = v28;
    sub_1CEF49BC0(&v85, v84);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v17;
    sub_1CEF4967C(v84, v22, v24, isUniquelyReferenced_nonNull_native);

    v30 = v83;
    sub_1CEF4FD10(v7);
    v31 = sub_1CEFA7F80();
    v33 = v32;
    (v75)(v7, v74);
    v21 = MEMORY[0x1E69E6158];
    v86 = MEMORY[0x1E69E6158];
    *&v85 = v31;
    *(&v85 + 1) = v33;
    sub_1CEF49BC0(&v85, v84);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v30;
    sub_1CEF4967C(v84, 0xD000000000000026, 0x80000001CEFB5130, v34);
    (*(v13 + 8))(v16, v12);
    v17 = v83;
  }

  v35 = v80;
  v36 = PrivateCloudComputeError.telemetryString.getter();
  v86 = v21;
  *&v85 = v36;
  *(&v85 + 1) = v37;
  sub_1CEF49BC0(&v85, v84);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v17;
  sub_1CEF4967C(v84, 0xD000000000000027, 0x80000001CEFB5160, v38);
  v39 = v83;
  v40 = (v35 + *(v76 + 28));
  v41 = v40[1];
  if (v41)
  {
    v42 = *v40;
    v86 = v21;
    *&v85 = v42;
    *(&v85 + 1) = v41;
    sub_1CEF49BC0(&v85, v84);

    v43 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v39;
    sub_1CEF4967C(v84, 0xD000000000000024, 0x80000001CEFB5190, v43);
    v39 = v83;
  }

  v44 = sub_1CEFA8110();
  v46 = v45;
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  v47 = v77;
  PrivateCloudComputeError.category.getter(v77);
  v48 = v79;
  sub_1CEFA86A0();
  v49 = *(v78 + 8);
  v49(v47, v48);
  v86 = v21;
  sub_1CEF49BC0(&v85, v84);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v39;
  sub_1CEF4967C(v84, v44, v46, v50);

  v51 = v83;
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  PrivateCloudComputeError.category.getter(v47);
  sub_1CEFA86A0();
  v49(v47, v48);
  v86 = v21;
  sub_1CEF49BC0(&v85, v84);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v51;
  sub_1CEF4967C(v84, 0xD000000000000020, 0x80000001CEFB5100, v52);
  v53 = v83;
  v54 = *(PrivateCloudComputeError.underlying.getter() + 16);

  if (v54 == 1)
  {
    v55 = PrivateCloudComputeError.underlying.getter();
    if (*(v55 + 16))
    {
      v56 = *(v55 + 32);
      MEMORY[0x1D38670C0](v56);

      v57 = *MEMORY[0x1E696AA08];
      v58 = sub_1CEFA8300();
      v60 = v59;
      swift_getErrorValue();
      v61 = v81;
      v62 = v82;
      v86 = v82;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v85);
      (*(*(v62 - 8) + 16))(boxed_opaque_existential_0, v61, v62);
      sub_1CEF49BC0(&v85, v84);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v83 = v53;
      sub_1CEF4967C(v84, v58, v60, v64);

LABEL_12:

      return v83;
    }
  }

  v65 = *(PrivateCloudComputeError.underlying.getter() + 16);

  if (v65 >= 2)
  {
    v66 = *MEMORY[0x1E696A750];
    v67 = sub_1CEFA8300();
    v69 = v68;
    v70 = PrivateCloudComputeError.underlying.getter();
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9098, &qword_1CEFAA4A0);
    *&v85 = v70;
    sub_1CEF49BC0(&v85, v84);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v53;
    sub_1CEF4967C(v84, v67, v69, v71);
    goto LABEL_12;
  }

  return v53;
}

uint64_t sub_1CEF4FD10@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D8, &unk_1CEFB3600);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v35 = &v30 - v3;
  v34 = sub_1CEFA80A0();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CEFA7FD0();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CEFA7FB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CEFA7F90();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CEFA7FA0();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6969360]);
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, *MEMORY[0x1E6969358], v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, *MEMORY[0x1E6969370], v11);
  (*(v7 + 104))(v27, *MEMORY[0x1E6969380], v33);
  sub_1CEFA8080();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return sub_1CEFA7FC0();
  }

  return result;
}

uint64_t PrivateCloudComputeError.category.getter@<X0>(uint64_t a1@<X8>)
{
  PrivateCloudComputeError.errorCategory.getter(&v7);
  v2 = v7;
  v3 = sub_1CEFA8100();
  v4 = *(*(v3 - 8) + 104);
  v5 = **(&unk_1E83BC3C8 + v2);

  return v4(a1, v5, v3);
}

uint64_t PrivateCloudComputeError.description.getter()
{
  v0 = PrivateCloudComputeError.underlying.getter();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
    MEMORY[0x1D38670C0](v1);

    v2 = PrivateCloudComputeError.descriptionWithoutUnderlying.getter();
    MEMORY[0x1D38665A0](v2);

    MEMORY[0x1D38665A0](14906, 0xE200000000000000);
    swift_getErrorValue();
    sub_1CEFA8930();

    return 0;
  }

  else
  {

    return PrivateCloudComputeError.descriptionWithoutUnderlying.getter();
  }
}

uint64_t PrivateCloudComputeError.descriptionWithoutUnderlying.getter()
{
  v1 = type metadata accessor for PrivateCloudComputeError();
  v2 = &v0[*(v1 + 28)];
  v3 = *(v2 + 1);
  if (v3 || (v2 = &v0[*(v1 + 24)], (v3 = *(v2 + 1)) != 0))
  {
    v4 = *v2;
    MEMORY[0x1D38665A0](0xD000000000000018, 0x80000001CEFAB3D0);
    MEMORY[0x1D38665A0](8250, 0xE200000000000000);
    v6 = *v0;
    sub_1CEFA86A0();
    MEMORY[0x1D38665A0](10272, 0xE200000000000000);
    MEMORY[0x1D38665A0](v4, v3);
    MEMORY[0x1D38665A0](41, 0xE100000000000000);
  }

  else
  {
    MEMORY[0x1D38665A0](0xD000000000000018, 0x80000001CEFAB3D0);
    MEMORY[0x1D38665A0](8250, 0xE200000000000000);
    v7 = *v0;
    sub_1CEFA86A0();
  }

  return 0;
}

uint64_t PrivateCloudComputeError.underlyingErrors.getter()
{
  v0 = PrivateCloudComputeError.underlying.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1CEF4B2B8(0, v1, 0);
    v2 = 32;
    v3 = v14;
    do
    {
      v4 = *(v0 + v2);
      v12 = v4;
      MEMORY[0x1D38670C0](v4);
      MEMORY[0x1D38670C0](v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9328, &qword_1CEFAB3B0);
      if (swift_dynamicCast())
      {

        sub_1CEF53104(&v9, v13);
      }

      else
      {
        v11 = 0;
        v9 = 0u;
        v10 = 0u;
        v5 = sub_1CEFA7EF0();
        sub_1CEFA80F0();

        if (*(&v10 + 1))
        {
          sub_1CEF3D55C(&v9, &qword_1EC4A9378, &unk_1CEFAB430);
        }
      }

      v14 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1CEF4B2B8((v6 > 1), v7 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v7 + 1;
      sub_1CEF53104(v13, v3 + 40 * v7 + 32);
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t PrivateCloudComputeError.additionalUserInfo.getter()
{
  v1 = v0;
  v2 = sub_1CEFA8100();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CEFA7FE0();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - v11;
  v13 = sub_1CEFA8030();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  v50 = v18;
  v19 = type metadata accessor for PrivateCloudComputeError();
  v20 = *(v19 + 20);
  v45 = v1;
  sub_1CEF53C3C(v1 + v20, v12, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1CEF3D55C(v12, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_1CEF4FD10(v8);
    v21 = sub_1CEFA7F80();
    v23 = v22;
    (*(v42 + 8))(v8, v43);
    v24 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v24;
    sub_1CEF497CC(v21, v23, 0xD000000000000026, 0x80000001CEFB5130, isUniquelyReferenced_nonNull_native);
    v50 = v48;
    (*(v14 + 8))(v17, v13);
    v18 = v50;
  }

  v26 = v45;
  v27 = PrivateCloudComputeError.telemetryString.getter();
  v29 = v28;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v18;
  sub_1CEF497CC(v27, v29, 0xD000000000000027, 0x80000001CEFB5160, v30);
  v50 = v48;
  v31 = (v26 + *(v19 + 28));
  v32 = v31[1];
  if (v32)
  {
    v33 = *v31;

    sub_1CEF4C408(v33, v32, 0xD000000000000024, 0x80000001CEFB5190);
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  v34 = v44;
  PrivateCloudComputeError.category.getter(v44);
  v35 = v47;
  sub_1CEFA86A0();
  (*(v46 + 8))(v34, v35);
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v38;
  sub_1CEF497CC(v36, v37, 0xD000000000000020, 0x80000001CEFB5100, v39);
  return v48;
}

void sub_1CEF50A64()
{
  sub_1CEF53B38(&qword_1EC4A93C0, type metadata accessor for PrivateCloudComputeError);

  JUMPOUT(0x1D3866390);
}

uint64_t PrivateCloudComputeError.init(responseMetadata:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v240 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v218 = &v206 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v217 = &v206 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v216 = &v206 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v215 = &v206 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v223 = &v206 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v206 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v213 = &v206 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v212 = &v206 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v211 = &v206 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v210 = &v206 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v209 = &v206 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v208 = &v206 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v207 = &v206 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v220 = &v206 - v35;
  v237 = sub_1CEFA7FD0();
  v36 = *(v237 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v235 = &v206 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1CEFA7FB0();
  v232 = *(v39 - 8);
  v233 = v39;
  v40 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v234 = &v206 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_1CEFA7F90();
  v229 = *(v230 - 8);
  v42 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v231 = &v206 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_1CEFA7FA0();
  v44 = *(v225 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v228 = &v206 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1CEFA80A0();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v50 = &v206 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_1CEFA7FE0();
  v226 = *(v227 - 8);
  v51 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v224 = &v206 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1CEFA8030();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v238 = &v206 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for PrivateCloudComputeError();
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v241 = &v206 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1[16];
  v245 = a1;
  v219 = v7;
  v214 = v20;
  v236 = v36;
  if (v60 == 255)
  {
    v63 = a1[1];
    if (v63 == 17)
    {
      v64 = *a1;
      if (v64 == 47)
      {
        v239 = 0;
        v222 = 0;
LABEL_12:
        v66 = MEMORY[0x1E69E7CC0];
        goto LABEL_16;
      }

      v247[0] = 0;
      v247[1] = 0xE000000000000000;
      MEMORY[0x1D38665A0](0x5F70747468, 0xE500000000000000);
      LOBYTE(v246) = v64;
    }

    else
    {
      v247[0] = 0;
      v247[1] = 0xE000000000000000;
      MEMORY[0x1D38665A0](0x5F63707267, 0xE500000000000000);
      LOBYTE(v246) = v63;
    }
  }

  else
  {
    v61 = *(a1 + 1);
    if (v60)
    {
      v247[0] = *(a1 + 1);
      v222 = sub_1CEFA8910();
      v239 = v62;
      goto LABEL_11;
    }

    v247[0] = 0;
    v247[1] = 0xE000000000000000;
    LOBYTE(v246) = v61;
  }

  sub_1CEFA86A0();
  v222 = v247[0];
  v239 = v247[1];
LABEL_11:
  v65 = *a1;
  if (v65 == 47)
  {
    goto LABEL_12;
  }

  v247[0] = 0;
  v247[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0x65736E6F70736572, 0xEE003D65646F632DLL);
  LOBYTE(v246) = v65;
  sub_1CEFA86A0();
  v67 = v247[0];
  v68 = v247[1];
  v66 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v70 = *(v66 + 2);
  v69 = *(v66 + 3);
  if (v70 >= v69 >> 1)
  {
    v66 = sub_1CEF47FD8((v69 > 1), v70 + 1, 1, v66);
  }

  *(v66 + 2) = v70 + 1;
  v71 = &v66[16 * v70];
  *(v71 + 4) = v67;
  *(v71 + 5) = v68;
  a1 = v245;
LABEL_16:
  v72 = a1[1];
  if (v72 != 17)
  {
    v247[0] = 0;
    v247[1] = 0xE000000000000000;
    MEMORY[0x1D38665A0](0x3D737574617473, 0xE700000000000000);
    LOBYTE(v246) = v72;
    sub_1CEFA86A0();
    v73 = v247[0];
    v74 = v247[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_1CEF47FD8(0, *(v66 + 2) + 1, 1, v66);
    }

    v76 = *(v66 + 2);
    v75 = *(v66 + 3);
    if (v76 >= v75 >> 1)
    {
      v66 = sub_1CEF47FD8((v75 > 1), v76 + 1, 1, v66);
    }

    *(v66 + 2) = v76 + 1;
    v77 = &v66[16 * v76];
    *(v77 + 4) = v73;
    *(v77 + 5) = v74;
    a1 = v245;
  }

  v78 = a1[16];
  v242 = v57;
  v244 = v50;
  if (v78 != 255)
  {
    if ((v78 & 1) == 0)
    {
      v221 = v44;
      v243 = v53;
      v79 = *(v245 + 1);
      v247[0] = 0;
      v247[1] = 0xE000000000000000;
      MEMORY[0x1D38665A0](0x6F632D726F727265, 0xEB000000003D6564);
      LOBYTE(v246) = v79;
      sub_1CEFA86A0();
      v81 = v247[0];
      v80 = v247[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1CEF47FD8(0, *(v66 + 2) + 1, 1, v66);
      }

      v83 = *(v66 + 2);
      v82 = *(v66 + 3);
      if (v83 >= v82 >> 1)
      {
        v66 = sub_1CEF47FD8((v82 > 1), v83 + 1, 1, v66);
      }

      *(v66 + 2) = v83 + 1;
      v84 = &v66[16 * v83];
      *(v84 + 4) = v81;
      *(v84 + 5) = v80;
      v85 = v245[16];
      if (v85 == 255)
      {
        v53 = v243;
        v44 = v221;
        goto LABEL_35;
      }

      v53 = v243;
      v44 = v221;
      if ((v85 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v86 = *(v245 + 1);
    strcpy(v247, "error-code=");
    HIDWORD(v247[1]) = -352321536;
    v246 = v86;
    v87 = sub_1CEFA8910();
    MEMORY[0x1D38665A0](v87);

    v88 = v247[0];
    v89 = v247[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_1CEF47FD8(0, *(v66 + 2) + 1, 1, v66);
    }

    v91 = *(v66 + 2);
    v90 = *(v66 + 3);
    if (v91 >= v90 >> 1)
    {
      v66 = sub_1CEF47FD8((v90 > 1), v91 + 1, 1, v66);
    }

    *(v66 + 2) = v91 + 1;
    v92 = &v66[16 * v91];
    *(v92 + 4) = v88;
    *(v92 + 5) = v89;
  }

LABEL_35:
  v93 = v245;
  if (*(v245 + 4))
  {
    v94 = *(v245 + 3);
    strcpy(v247, "description=");
    BYTE5(v247[1]) = 0;
    HIWORD(v247[1]) = -5120;
    MEMORY[0x1D38665A0](v94);
    v95 = v247[0];
    v96 = v247[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_1CEF47FD8(0, *(v66 + 2) + 1, 1, v66);
    }

    v98 = *(v66 + 2);
    v97 = *(v66 + 3);
    if (v98 >= v97 >> 1)
    {
      v66 = sub_1CEF47FD8((v97 > 1), v98 + 1, 1, v66);
    }

    *(v66 + 2) = v98 + 1;
    v99 = &v66[16 * v98];
    *(v99 + 4) = v95;
    *(v99 + 5) = v96;
  }

  if (*(v93 + 6))
  {
    v100 = *(v93 + 5);
    v247[0] = 0x3D6573756163;
    v247[1] = 0xE600000000000000;
    MEMORY[0x1D38665A0](v100);
    v101 = v247[0];
    v102 = v247[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_1CEF47FD8(0, *(v66 + 2) + 1, 1, v66);
    }

    v104 = *(v66 + 2);
    v103 = *(v66 + 3);
    if (v104 >= v103 >> 1)
    {
      v66 = sub_1CEF47FD8((v103 > 1), v104 + 1, 1, v66);
    }

    *(v66 + 2) = v104 + 1;
    v105 = &v66[16 * v104];
    *(v105 + 4) = v101;
    *(v105 + 5) = v102;
  }

  v106 = *(v93 + 7);
  LODWORD(v243) = v93[64];
  v107 = v238;
  v221 = v106;
  if (v243 != 1 || (v108 = v93[16], v108 != 255) && (v108 & 1) == 0 && (v118 = *(v93 + 1), v118 <= 0x2Cu) && ((1 << v118) & 0x1E181C260000) != 0 || (v109 = v93[1], v109 <= 0xE) && ((1 << v109) & 0x4110) != 0 || (v110 = *v93, v110 <= 0x2C) && ((1 << v110) & 0x108002000000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_1CEF47FD8(0, *(v66 + 2) + 1, 1, v66);
    }

    v120 = *(v66 + 2);
    v119 = *(v66 + 3);
    if (v120 >= v119 >> 1)
    {
      v66 = sub_1CEF47FD8((v119 > 1), v120 + 1, 1, v66);
    }

    *(v66 + 2) = v120 + 1;
    v121 = &v66[16 * v120];
    strcpy(v121 + 32, "retryable=yes");
    *(v121 + 23) = -4864;
    if (v243)
    {
      v122 = type metadata accessor for RopesResponseMetadata();
      (*(v54 + 16))(v107, &v93[*(v122 + 60)], v53);
    }

    else
    {
      v123 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
      sub_1CEFA7FF0();
    }

    v124 = v236;
    v125 = v237;
    v126 = v107;
    sub_1CEFA8090();
    (*(v44 + 104))(v228, *MEMORY[0x1E6969360], v225);
    (*(v229 + 104))(v231, *MEMORY[0x1E6969358], v230);
    (*(v232 + 104))(v234, *MEMORY[0x1E6969370], v233);
    (*(v124 + 104))(v235, *MEMORY[0x1E6969380], v125);
    v127 = v224;
    sub_1CEFA7FC0();
    v128 = sub_1CEFA7F80();
    v130 = v129;
    (*(v226 + 8))(v127, v227);
    v112 = v54;
    v111 = v53;
    (*(v54 + 8))(v126, v53);
    v247[0] = 0;
    v247[1] = 0xE000000000000000;
    sub_1CEFA8650();

    v247[0] = 0x7466417972746572;
    v247[1] = 0xEF3D657461447265;
    MEMORY[0x1D38665A0](v128, v130);

    v117 = v247[0];
    v113 = v247[1];
    v115 = *(v66 + 2);
    v131 = *(v66 + 3);
    v116 = v115 + 1;
    if (v115 >= v131 >> 1)
    {
      v66 = sub_1CEF47FD8((v131 > 1), v115 + 1, 1, v66);
    }

    v93 = v245;
  }

  else
  {
    v111 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_1CEF47FD8(0, *(v66 + 2) + 1, 1, v66);
    }

    v112 = v54;
    v113 = 0xEC0000006F6E3D65;
    v115 = *(v66 + 2);
    v114 = *(v66 + 3);
    v116 = v115 + 1;
    if (v115 >= v114 >> 1)
    {
      v66 = sub_1CEF47FD8((v114 > 1), v115 + 1, 1, v66);
    }

    v117 = 0x6C62617972746572;
  }

  v132 = MEMORY[0x1E69E7CC0];
  *(v66 + 2) = v116;
  v133 = &v66[16 * v115];
  *(v133 + 4) = v117;
  *(v133 + 5) = v113;
  v247[0] = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v244 = sub_1CEFA82E0();
  v135 = v134;

  v136 = v93[16];
  if (v136 == 255 || (v136 & 1) != 0)
  {
    v137 = v132;
    v138 = v135;
    v139 = *(v112 + 56);
    v140 = v223;
    v141 = v111;
    v139(v223, 1, 1, v111);
    v142 = v242;
LABEL_74:
    v143 = v142[5];
    v144 = v241;
    v139(&v241[v143], 1, 1, v141);
    v145 = &v144[v142[6]];
    v146 = &v144[v142[7]];
    *v144 = 57;
    sub_1CEF3D4EC(v140, &v144[v143]);
    v147 = v239;
    *v145 = v222;
    v145[1] = v147;
  }

  else
  {
    v142 = v242;
    v141 = v111;
    switch(*(v93 + 1))
    {
      case 2u:
        v137 = v132;
        v138 = v135;

        v148 = *(v112 + 56);
        v140 = v223;
        v148(v223, 1, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v148(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 15;
        goto LABEL_139;
      case 0x11u:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v157 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v215;
          (*(v112 + 16))(v215, v157, v111);
        }

        else
        {
          v181 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v215;
          sub_1CEFA7FF0();
        }

        v182 = *(v112 + 56);
        v182(v140, 0, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v182(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 10;
        goto LABEL_139;
      case 0x12u:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v162 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v216;
          (*(v112 + 16))(v216, v162, v111);
        }

        else
        {
          v191 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v216;
          sub_1CEFA7FF0();
        }

        v192 = *(v112 + 56);
        v192(v140, 0, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v192(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 11;
        goto LABEL_139;
      case 0x13u:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v161 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v217;
          (*(v112 + 16))(v217, v161, v111);
        }

        else
        {
          v189 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v217;
          sub_1CEFA7FF0();
        }

        v190 = *(v112 + 56);
        v190(v140, 0, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v190(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 12;
        goto LABEL_139;
      case 0x14u:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v155 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v218;
          (*(v112 + 16))(v218, v155, v111);
        }

        else
        {
          v177 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v218;
          sub_1CEFA7FF0();
        }

        v178 = *(v112 + 56);
        v178(v140, 0, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v178(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 13;
        goto LABEL_139;
      case 0x15u:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v158 = type metadata accessor for RopesResponseMetadata();
          v159 = v220;
          (*(v112 + 16))(v220, &v93[*(v158 + 60)], v111);
        }

        else
        {
          v183 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v159 = v220;
          sub_1CEFA7FF0();
        }

        v184 = *(v112 + 56);
        v184(v159, 0, 1, v111);
        v185 = v142[5];
        v144 = v241;
        v184(&v241[v185], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        *v144 = 0;
        v186 = &v144[v185];
        v140 = v220;
        goto LABEL_140;
      case 0x16u:
        v137 = v132;
        v138 = v135;

        v163 = *(v112 + 56);
        v140 = v223;
        v163(v223, 1, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v163(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 17;
        goto LABEL_139;
      case 0x17u:
        v137 = v132;
        v138 = v135;

        v164 = *(v112 + 56);
        v140 = v223;
        v164(v223, 1, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v164(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 18;
        goto LABEL_139;
      case 0x18u:
        v137 = v132;
        v138 = v135;

        v168 = *(v112 + 56);
        v140 = v223;
        v168(v223, 1, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v168(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 19;
        goto LABEL_139;
      case 0x19u:
        v137 = v132;
        v138 = v135;

        v167 = *(v112 + 56);
        v140 = v223;
        v167(v223, 1, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v167(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 20;
        goto LABEL_139;
      case 0x1Au:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v154 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v207;
          (*(v112 + 16))(v207, v154, v111);
        }

        else
        {
          v175 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v207;
          sub_1CEFA7FF0();
        }

        v176 = *(v112 + 56);
        v176(v140, 0, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v176(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 2;
        goto LABEL_139;
      case 0x1Bu:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v160 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v208;
          (*(v112 + 16))(v208, v160, v111);
        }

        else
        {
          v187 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v208;
          sub_1CEFA7FF0();
        }

        v188 = *(v112 + 56);
        v188(v140, 0, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v188(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 3;
        goto LABEL_139;
      case 0x1Cu:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v156 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v209;
          (*(v112 + 16))(v209, v156, v111);
        }

        else
        {
          v179 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v209;
          sub_1CEFA7FF0();
        }

        v180 = *(v112 + 56);
        v180(v140, 0, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v180(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 4;
        goto LABEL_139;
      case 0x1Du:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v153 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v211;
          (*(v112 + 16))(v211, v153, v111);
        }

        else
        {
          v173 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v211;
          sub_1CEFA7FF0();
        }

        v174 = *(v112 + 56);
        v174(v140, 0, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v174(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 6;
        goto LABEL_139;
      case 0x1Eu:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v165 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v212;
          (*(v112 + 16))(v212, v165, v111);
        }

        else
        {
          v193 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v212;
          sub_1CEFA7FF0();
        }

        v194 = *(v112 + 56);
        v194(v140, 0, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v194(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 7;
        goto LABEL_139;
      case 0x1Fu:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v166 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v213;
          (*(v112 + 16))(v213, v166, v111);
        }

        else
        {
          v195 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v213;
          sub_1CEFA7FF0();
        }

        v196 = *(v112 + 56);
        v196(v140, 0, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v196(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 8;
        goto LABEL_139;
      case 0x23u:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v170 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v219;
          (*(v112 + 16))(v219, v170, v111);
        }

        else
        {
          v203 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v219;
          sub_1CEFA7FF0();
        }

        v204 = *(v112 + 56);
        v204(v140, 0, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v204(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 9;
        goto LABEL_139;
      case 0x24u:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v169 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v214;
          (*(v112 + 16))(v214, v169, v111);
        }

        else
        {
          v197 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v214;
          sub_1CEFA7FF0();
        }

        v198 = *(v112 + 56);
        v198(v140, 0, 1, v111);
        v199 = v111;
        v200 = v142[5];
        v144 = v241;
        v198(&v241[v200], 1, 1, v199);
        v201 = v142[7];
        v202 = &v144[v142[6]];
        v146 = &v144[v201];
        *v144 = 1;
        sub_1CEF3D4EC(v140, &v144[v200]);
        *v202 = 0;
        *(v202 + 1) = 0;
        v142 = v242;
        break;
      case 0x29u:
        v137 = v132;

        v138 = v135;
        if (v243)
        {
          v152 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v210;
          (*(v112 + 16))(v210, v152, v111);
        }

        else
        {
          v171 = &v93[*(type metadata accessor for RopesResponseMetadata() + 60)];
          v140 = v210;
          sub_1CEFA7FF0();
        }

        v172 = *(v112 + 56);
        v172(v140, 0, 1, v111);
        v149 = v142[5];
        v144 = v241;
        v172(&v241[v149], 1, 1, v141);
        v150 = &v144[v142[6]];
        v146 = &v144[v142[7]];
        v151 = 5;
LABEL_139:
        *v144 = v151;
        v186 = &v144[v149];
LABEL_140:
        sub_1CEF3D4EC(v140, v186);
        *v150 = 0;
        *(v150 + 1) = 0;
        break;
      default:
        v137 = v132;
        v138 = v135;
        v139 = *(v112 + 56);
        v140 = v223;
        v139(v223, 1, 1, v111);
        goto LABEL_74;
    }
  }

  *v146 = v244;
  v146[1] = v138;
  sub_1CEF3D55C(v140, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  *&v144[v142[8]] = v137;
  sub_1CEF53BD4(v144, v240, type metadata accessor for PrivateCloudComputeError);
  return sub_1CEF53294(v245, type metadata accessor for RopesResponseMetadata);
}

unint64_t sub_1CEF52AD0()
{
  result = qword_1EC4A9358;
  if (!qword_1EC4A9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9358);
  }

  return result;
}

unint64_t sub_1CEF52B24()
{
  result = qword_1EC4A9360;
  if (!qword_1EC4A9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9360);
  }

  return result;
}

unint64_t sub_1CEF52B78()
{
  result = qword_1EC4A9370;
  if (!qword_1EC4A9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9370);
  }

  return result;
}

uint64_t sub_1CEF52BCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudComputeError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CEF52C30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93E8, &qword_1CEFAB9D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9300, &qword_1CEFAB9E0);
    v8 = sub_1CEFA86F0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1CEF53C3C(v10, v6, &qword_1EC4A93E8, &qword_1CEFAB9D8);
      v12 = *v6;
      result = sub_1CEF9E1E4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for XPCWrapper.Continuation();
      result = sub_1CEF53BD4(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for XPCWrapper.Continuation);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CEF52E08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEE00657461447265 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7274656D656C6574 && a2 == 0xEF78696666755379 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73654D6775626564 && a2 == 0xEC00000065676173 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CEFB51C0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1CEFA8950();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1CEF52FD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9338, &unk_1CEFAB3C0);
    v3 = sub_1CEFA86F0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEF53C3C(v4, &v13, &qword_1EC4A93E0, &qword_1CEFAB9C8);
      v5 = v13;
      v6 = v14;
      result = sub_1CEF76970(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1CEF49BC0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CEF53104(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1CEF5311C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9070, &unk_1CEFAA490);
    v3 = sub_1CEFA86F0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1CEF76970(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CEF53230()
{
  result = qword_1EDE379A0;
  if (!qword_1EDE379A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A9380, &qword_1CEFAC540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE379A0);
  }

  return result;
}

uint64_t sub_1CEF53294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1CEF532F8()
{
  result = qword_1EC4A9388;
  if (!qword_1EC4A9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9388);
  }

  return result;
}

unint64_t sub_1CEF53350()
{
  result = qword_1EC4A9390;
  if (!qword_1EC4A9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9390);
  }

  return result;
}

void sub_1CEF534A4()
{
  sub_1CEF53598();
  if (v0 <= 0x3F)
  {
    sub_1CEF535F0(319, qword_1EDE385E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1CEF535F0(319, qword_1EDE384E8, &type metadata for ErrorCodableValue, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CEF53598()
{
  if (!qword_1EDE387F8)
  {
    sub_1CEFA8030();
    v0 = sub_1CEFA85B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE387F8);
    }
  }
}

void sub_1CEF535F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for PrivateCloudComputeError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC7)
  {
    goto LABEL_17;
  }

  if (a2 + 57 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 57) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 57;
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

      return (*a1 | (v4 << 8)) - 57;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 57;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3A;
  v8 = v6 - 58;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateCloudComputeError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 57) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC7)
  {
    v4 = 0;
  }

  if (a2 > 0xC6)
  {
    v5 = ((a2 - 199) >> 8) + 1;
    *result = a2 + 57;
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
    *result = a2 + 57;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateCloudComputeError.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateCloudComputeError.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateCloudComputeError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateCloudComputeError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CEF53A34()
{
  result = qword_1EC4A93A8;
  if (!qword_1EC4A93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A93A8);
  }

  return result;
}

unint64_t sub_1CEF53A8C()
{
  result = qword_1EC4A93B0;
  if (!qword_1EC4A93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A93B0);
  }

  return result;
}

unint64_t sub_1CEF53AE4()
{
  result = qword_1EC4A93B8;
  if (!qword_1EC4A93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A93B8);
  }

  return result;
}

uint64_t sub_1CEF53B38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CEF53B80()
{
  result = qword_1EC4A93C8;
  if (!qword_1EC4A93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A93C8);
  }

  return result;
}

uint64_t sub_1CEF53BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF53C3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t RateLimitInfo.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RateLimitInfo.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RateLimitInfo.featureID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RateLimitInfo.featureID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RateLimitInfo.workloadType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t RateLimitInfo.workloadType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RateLimitInfo.workloadTags.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t RateLimitInfo.WorkloadTag.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RateLimitInfo.WorkloadTag.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RateLimitInfo.WorkloadTag.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RateLimitInfo.WorkloadTag.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

PrivateCloudCompute::RateLimitInfo::WorkloadTag __swiftcall RateLimitInfo.WorkloadTag.init(key:value:)(Swift::String key, Swift::String value)
{
  *v2 = key;
  v2[1] = value;
  result.value = value;
  result.key = key;
  return result;
}

uint64_t sub_1CEF53FB8()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 7955819;
  }

  *v0;
  return result;
}

uint64_t sub_1CEF53FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1CEFA8950() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CEFA8950();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CEF540C0(uint64_t a1)
{
  v2 = sub_1CEF542CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF540FC(uint64_t a1)
{
  v2 = sub_1CEF542CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RateLimitInfo.WorkloadTag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93F0, &qword_1CEFABC00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF542CC();
  sub_1CEFA8A60();
  v16 = 0;
  v12 = v14[3];
  sub_1CEFA8880();
  if (!v12)
  {
    v15 = 1;
    sub_1CEFA8880();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1CEF542CC()
{
  result = qword_1EC4A93F8;
  if (!qword_1EC4A93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A93F8);
  }

  return result;
}

uint64_t RateLimitInfo.WorkloadTag.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9400, &qword_1CEFABC08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF542CC();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_1CEFA8780();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1CEFA8780();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t RateLimitInfo.retryAfterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RateLimitInfo() + 40);
  v4 = sub_1CEFA8030();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RateLimitInfo()
{
  result = qword_1EDE38028;
  if (!qword_1EDE38028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RateLimitInfo.retryAfterDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RateLimitInfo() + 40);
  v4 = sub_1CEFA8030();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RateLimitInfo.init(bundleID:featureID:workloadType:workloadTags:count:duration:retryAfterDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  v12 = *(type metadata accessor for RateLimitInfo() + 40);
  v13 = sub_1CEFA8030();
  v14 = *(*(v13 - 8) + 32);

  return v14(a9 + v12, a11, v13);
}

uint64_t RateLimitInfo.init(retryAfter:retryAfterDate:)@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 48) = MEMORY[0x1E69E7CC0];
  *(a4 + 56) = 0;
  if (a2)
  {
    a1 = 0.0;
  }

  *(a4 + 64) = a1;
  v7 = *(type metadata accessor for RateLimitInfo() + 40);
  v8 = sub_1CEFA8030();
  v9 = *(*(v8 - 8) + 32);

  return v9(a4 + v7, a3, v8);
}

uint64_t sub_1CEF5487C()
{
  v1 = *v0;
  v2 = 0x4449656C646E7562;
  v3 = 0x6E6F697461727564;
  if (v1 != 5)
  {
    v3 = 0x7466417972746572;
  }

  v4 = 0x64616F6C6B726F77;
  if (v1 != 3)
  {
    v4 = 0x746E756F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x4965727574616566;
  if (v1 != 1)
  {
    v5 = 0x64616F6C6B726F77;
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

uint64_t sub_1CEF54974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF55888(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF5499C(uint64_t a1)
{
  v2 = sub_1CEF54D00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF549D8(uint64_t a1)
{
  v2 = sub_1CEF54D00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RateLimitInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9408, &qword_1CEFABC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF54D00();
  sub_1CEFA8A60();
  v11 = *v3;
  v12 = v3[1];
  v25 = 0;
  sub_1CEFA8830();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v24 = 1;
    sub_1CEFA8830();
    v15 = v3[4];
    v16 = v3[5];
    v23 = 2;
    sub_1CEFA8830();
    v22 = v3[6];
    v21[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9418, &qword_1CEFABC18);
    sub_1CEF55288(&qword_1EC4A9420, sub_1CEF54D54);
    sub_1CEFA88D0();
    v17 = v3[7];
    v21[14] = 4;
    sub_1CEFA88C0();
    v18 = v3[8];
    v21[13] = 5;
    sub_1CEFA88A0();
    v19 = *(type metadata accessor for RateLimitInfo() + 40);
    v21[12] = 6;
    sub_1CEFA8030();
    sub_1CEF55354(&qword_1EDE380D8);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1CEF54D00()
{
  result = qword_1EC4A9410;
  if (!qword_1EC4A9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9410);
  }

  return result;
}

unint64_t sub_1CEF54D54()
{
  result = qword_1EC4A9428;
  if (!qword_1EC4A9428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9428);
  }

  return result;
}

uint64_t RateLimitInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1CEFA8030();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9430, &qword_1CEFABC20);
  v9 = *(v8 - 8);
  v31 = v8;
  v32 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for RateLimitInfo();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v33 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = a1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF54D00();
  v17 = v12;
  sub_1CEFA8A50();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v28 = v7;
    v42 = 0;
    v18 = v31;
    v19 = sub_1CEFA8730();
    v20 = v33;
    *v33 = v19;
    v20[1] = v21;
    v41 = 1;
    v20[2] = sub_1CEFA8730();
    v20[3] = v22;
    v40 = 2;
    v20[4] = sub_1CEFA8730();
    v20[5] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9418, &qword_1CEFABC18);
    v39 = 3;
    sub_1CEF55288(&qword_1EC4A9438, sub_1CEF55300);
    sub_1CEFA87D0();
    v24 = v33;
    v33[6] = v35;
    v38 = 4;
    v24[7] = sub_1CEFA87C0();
    v37 = 5;
    sub_1CEFA87A0();
    v24[8] = v25;
    v36 = 6;
    sub_1CEF55354(&qword_1EC4A8FE8);
    sub_1CEFA87D0();
    (*(v32 + 8))(v17, v18);
    v26 = v33;
    (*(v29 + 32))(v33 + *(v13 + 40), v28, v4);
    sub_1CEF55398(v26, v30);
    __swift_destroy_boxed_opaque_existential_0(v34);
    return sub_1CEF553FC(v26);
  }
}

uint64_t sub_1CEF55288(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A9418, &qword_1CEFABC18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CEF55300()
{
  result = qword_1EC4A9440;
  if (!qword_1EC4A9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9440);
  }

  return result;
}

uint64_t sub_1CEF55354(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CEFA8030();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CEF55398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RateLimitInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF553FC(uint64_t a1)
{
  v2 = type metadata accessor for RateLimitInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CEF554B0()
{
  sub_1CEF535F0(319, qword_1EDE385E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1CEF535F0(319, &qword_1EDE379B8, &type metadata for RateLimitInfo.WorkloadTag, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1CEFA8030();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
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

uint64_t sub_1CEF555C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1CEF55608(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1CEF5567C()
{
  result = qword_1EC4A9448;
  if (!qword_1EC4A9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9448);
  }

  return result;
}

unint64_t sub_1CEF556D4()
{
  result = qword_1EC4A9450;
  if (!qword_1EC4A9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9450);
  }

  return result;
}

unint64_t sub_1CEF5572C()
{
  result = qword_1EC4A9458;
  if (!qword_1EC4A9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9458);
  }

  return result;
}

unint64_t sub_1CEF55784()
{
  result = qword_1EC4A9460;
  if (!qword_1EC4A9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9460);
  }

  return result;
}

unint64_t sub_1CEF557DC()
{
  result = qword_1EC4A9468;
  if (!qword_1EC4A9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9468);
  }

  return result;
}

unint64_t sub_1CEF55834()
{
  result = qword_1EC4A9470;
  if (!qword_1EC4A9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9470);
  }

  return result;
}

uint64_t sub_1CEF55888(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4965727574616566 && a2 == 0xE900000000000044 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C6B726F77 && a2 == 0xEC00000065707954 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64616F6C6B726F77 && a2 == 0xEC00000073676154 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEE00657461447265)
  {

    return 6;
  }

  else
  {
    v6 = sub_1CEFA8950();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1CEF55AE4()
{
  v0 = sub_1CEFA8220();
  __swift_allocate_value_buffer(v0, qword_1EC4A9478);
  __swift_project_value_buffer(v0, qword_1EC4A9478);
  return sub_1CEFA8210();
}

uint64_t TrustedCloudComputeClient.__allocating_init(configuration:)(unsigned int *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  v4 = *(a1 + 4);
  type metadata accessor for TC2Client();
  v5 = swift_allocObject();
  type metadata accessor for XPCWrapper();
  swift_allocObject();
  *(v5 + 16) = sub_1CEF9360C(v3 | (v4 << 32));
  *(v2 + 16) = v5;
  *(v2 + 24) = v3;
  *(v2 + 28) = v4;
  return v2;
}

uint64_t TrustedCloudComputeClient.init(configuration:)(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  type metadata accessor for TC2Client();
  v4 = swift_allocObject();
  type metadata accessor for XPCWrapper();
  swift_allocObject();
  *(v4 + 16) = sub_1CEF9360C(v2 | (v3 << 32));
  *(v1 + 16) = v4;
  *(v1 + 24) = v2;
  *(v1 + 28) = v3;
  return v1;
}

uint64_t TrustedCloudComputeClient.withTrustedRequest<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CEF55CCC, 0, 0);
}

uint64_t sub_1CEF55CCC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = v3;
  v7 = *(MEMORY[0x1E69E88F0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_1CEF55DE4;
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v10, &unk_1CEFABF80, v4, sub_1CEF5A084, v6, 0, 0, v9);
}

uint64_t sub_1CEF55DE4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CEF55F2C, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1CEF55F2C()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1CEF55F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for TrustedRequest.Response(0);
  v5[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v8 = type metadata accessor for TrustedRequest.Writer(0);
  v5[11] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v10 = type metadata accessor for TrustedRequest(0);
  v5[13] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v12 = sub_1CEFA8190();
  v5[16] = v12;
  v13 = *(v12 - 8);
  v5[17] = v13;
  v14 = *(v13 + 64) + 15;
  v5[18] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v16 = sub_1CEFA8180();
  v5[20] = v16;
  v17 = *(v16 - 8);
  v5[21] = v17;
  v18 = *(v17 + 64) + 15;
  v5[22] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9490, &unk_1CEFB1850) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CEF561D4, 0, 0);
}

uint64_t sub_1CEF561D4()
{
  v45 = v0;
  v1 = *(v0 + 192);
  v2 = sub_1CEFA81E0();
  v3 = *(*(v2 - 8) + 56);
  v3(v1, 1, 1, v2);
  sub_1CEFA81D0();
  sub_1CEFA81C0();
  v4 = *(v0 + 176);
  v42 = *(v0 + 184);
  v43 = *(v0 + 168);
  v5 = *(v0 + 152);
  v40 = v3;
  v41 = *(v0 + 144);
  v6 = *(v0 + 40);
  v7 = sub_1CEFA8070();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5, v6, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  LOBYTE(v44[0]) = 0;
  trustedRequestEventInfo(with:step:errors:)(v5, v44, MEMORY[0x1E69E7CC0], v4);
  sub_1CEF3D55C(v5, &qword_1EC4A9068, qword_1CEFAC020);
  sub_1CEFA81B0();
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 176);
  v12 = *(v0 + 160);

  (*(v43 + 8))(v11, v12);
  sub_1CEF3D55C(v9, &qword_1EC4A9490, &unk_1CEFB1850);
  v40(v10, 0, 1, v2);
  sub_1CEF5A390(v10, v9);
  if (qword_1EC4A8E78 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 120);
  v14 = *(v0 + 40);
  v15 = sub_1CEFA8220();
  __swift_project_value_buffer(v15, qword_1EC4A9478);
  sub_1CEF5A23C(v14, v13, type metadata accessor for TrustedRequest);
  v16 = sub_1CEFA8200();
  v17 = sub_1CEFA8550();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 120);
  if (v18)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v44[0] = v21;
    *v20 = 136315138;
    sub_1CEFA8070();
    sub_1CEF5A348(&qword_1EDE380C8, MEMORY[0x1E69695A8]);
    v22 = sub_1CEFA8910();
    v24 = v23;
    sub_1CEF5A2E8(v19, type metadata accessor for TrustedRequest);
    v25 = sub_1CEF36C9C(v22, v24, v44);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_1CEF32000, v16, v17, "%s withTrustedRequest started", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1D3867270](v21, -1, -1);
    MEMORY[0x1D3867270](v20, -1, -1);
  }

  else
  {

    sub_1CEF5A2E8(v19, type metadata accessor for TrustedRequest);
  }

  v26 = *(v0 + 104);
  v27 = *(v0 + 40);
  *(v0 + 200) = *(*(*(v0 + 48) + 16) + 16);
  v28 = (v27 + v26[5]);
  v30 = *v28;
  v29 = v28[1];
  if (*(v27 + v26[6]))
  {
  }

  else
  {

    sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
    v26 = *(v0 + 104);
    v27 = *(v0 + 40);
  }

  v31 = sub_1CEFA4E38();
  v33 = v32;

  *(v0 + 208) = v31;
  *(v0 + 216) = v33;
  v34 = (v27 + v26[7]);
  *(v0 + 224) = *v34;
  *(v0 + 232) = v34[1];
  v35 = (v27 + v26[8]);
  *(v0 + 240) = *v35;
  *(v0 + 248) = v35[1];
  v36 = (v27 + v26[9]);
  *(v0 + 256) = *v36;
  *(v0 + 264) = v36[1];
  *(v0 + 352) = v26[10];
  type metadata accessor for XPCWrapper();
  *(v0 + 272) = sub_1CEF5A348(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v38 = sub_1CEFA8480();
  *(v0 + 280) = v38;
  *(v0 + 288) = v37;

  return MEMORY[0x1EEE6DFA0](sub_1CEF569F0, v38, v37);
}

uint64_t sub_1CEF569F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 200);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v8 + 264);
    v12 = *(v8 + 256);
    v14 = *(v8 + 208);
    v13 = *(v8 + 216);
    v15 = *(v8 + 40);
    v16 = v15 + *(v8 + 352);
    v23 = *(v8 + 272);
    v21 = *(v8 + 224);
    v22 = *(v8 + 240);
    *(v9 + 16) = v10 + 1;
    v17 = swift_task_alloc();
    *(v8 + 296) = v17;
    *(v17 + 16) = v9;
    *(v17 + 24) = v10;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    *(v17 + 48) = v15;
    *(v17 + 56) = v21;
    *(v17 + 72) = v22;
    *(v17 + 88) = v12;
    *(v17 + 96) = v11;
    *(v17 + 104) = v16;
    v18 = *(MEMORY[0x1E69E8920] + 4);
    v19 = swift_task_alloc();
    *(v8 + 304) = v19;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9498, &qword_1CEFAC038);
    *v19 = v8;
    v19[1] = sub_1CEF56B64;
    a6 = sub_1CEF5A2A4;
    a1 = v8 + 16;
    a3 = v23;
    a5 = 0x80000001CEFB5330;
    a2 = v9;
    a4 = 0xD00000000000007ALL;
    a7 = v17;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEF56B64()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v9 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = v2[35];
    v5 = v2[36];
    v6 = sub_1CEF57070;
  }

  else
  {
    v7 = v2[37];

    v4 = v2[35];
    v5 = v2[36];
    v6 = sub_1CEF56C80;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1CEF56C80()
{
  sub_1CEF41BE0(v0[26], v0[27]);
  v1 = v0[3];
  v0[40] = v0[2];
  v0[41] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEF56CF0, 0, 0);
}

uint64_t sub_1CEF56CF0()
{
  v20 = v0[41];
  v21 = v0[40];
  v1 = v0[24];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v22 = v0[25];
  v24 = v0[7];
  v6 = v0[5];
  v7 = sub_1CEFA8070();
  v8 = *(*(v7 - 8) + 16);
  v8(v3, v6, v7);
  sub_1CEF53C3C(v1, v3 + *(v2 + 24), &qword_1EC4A9490, &unk_1CEFB1850);
  v9 = (v3 + *(v2 + 20));
  v9[3] = &type metadata for XPCRequestProxy;
  v9[4] = &off_1F4BE32F0;
  *v9 = v20;
  v9[1] = v21;
  v9[2] = v22;
  v8(v4, v6, v7);
  sub_1CEF53C3C(v1, v4 + v5[6], &qword_1EC4A9490, &unk_1CEFB1850);
  v10 = (v4 + v5[5]);
  v10[4] = &off_1F4BE32F0;
  *v10 = v20;
  v10[1] = v21;
  v10[2] = v22;
  v10[3] = &type metadata for XPCRequestProxy;
  v11 = v5[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94A0, &qword_1CEFAC040);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v4 + v11) = v12;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  v23 = (v24 + *v24);
  v13 = v24[1];
  v14 = swift_task_alloc();
  v0[42] = v14;
  *v14 = v0;
  v14[1] = sub_1CEF56F5C;
  v15 = v0[12];
  v16 = v0[10];
  v17 = v0[8];
  v18 = v0[4];

  return v23(v18, v15, v16);
}

uint64_t sub_1CEF56F5C()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_1CEF573A0;
  }

  else
  {
    v3 = sub_1CEF5721C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CEF57070()
{
  v1 = v0[37];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];

  sub_1CEF41BE0(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1CEF570FC, 0, 0);
}

uint64_t sub_1CEF570FC()
{
  v12 = v0[39];
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v9 = v0[10];
  sub_1CEF57894(v0[5], MEMORY[0x1E69E9450], "%s withTrustedRequest finished");
  sub_1CEF3D55C(v1, &qword_1EC4A9490, &unk_1CEFB1850);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1CEF5721C()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v11 = v0[19];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[14];
  v7 = v0[12];
  v8 = v0[5];
  sub_1CEF5A2E8(v0[10], type metadata accessor for TrustedRequest.Response);
  sub_1CEF5A2E8(v7, type metadata accessor for TrustedRequest.Writer);
  sub_1CEF5752C(v8, v1, v2, v3);
  swift_unknownObjectRelease();

  sub_1CEF57894(v8, MEMORY[0x1E69E9450], "%s withTrustedRequest finished");
  sub_1CEF3D55C(v4, &qword_1EC4A9490, &unk_1CEFB1850);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1CEF573A0()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[25];
  v4 = v0[12];
  v5 = v0[5];
  sub_1CEF5A2E8(v0[10], type metadata accessor for TrustedRequest.Response);
  sub_1CEF5A2E8(v4, type metadata accessor for TrustedRequest.Writer);
  sub_1CEF5752C(v5, v2, v1, v3);
  swift_unknownObjectRelease();

  v17 = v0[43];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v10 = v0[18];
  v9 = v0[19];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[12];
  v14 = v0[10];
  sub_1CEF57894(v0[5], MEMORY[0x1E69E9450], "%s withTrustedRequest finished");
  sub_1CEF3D55C(v6, &qword_1EC4A9490, &unk_1CEFB1850);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1CEF5752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F18, &qword_1CEFAC050);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for TrustedRequest(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC4A8E78 != -1)
  {
    swift_once();
  }

  v16 = sub_1CEFA8220();
  __swift_project_value_buffer(v16, qword_1EC4A9478);
  sub_1CEF5A23C(a1, v15, type metadata accessor for TrustedRequest);
  v17 = sub_1CEFA8200();
  v18 = sub_1CEFA8550();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136315138;
    sub_1CEFA8070();
    v31 = v11;
    v21 = a3;
    v22 = a4;
    v23 = a2;
    sub_1CEF5A348(&qword_1EDE380C8, MEMORY[0x1E69695A8]);
    v24 = sub_1CEFA8910();
    v26 = v25;
    sub_1CEF5A2E8(v15, type metadata accessor for TrustedRequest);
    v27 = sub_1CEF36C9C(v24, v26, &v32);
    a2 = v23;
    a4 = v22;
    a3 = v21;
    v11 = v31;

    *(v19 + 4) = v27;
    _os_log_impl(&dword_1CEF32000, v17, v18, "%s withTrustedRequest xpc proxy closing", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1D3867270](v20, -1, -1);
    MEMORY[0x1D3867270](v19, -1, -1);
  }

  else
  {

    sub_1CEF5A2E8(v15, type metadata accessor for TrustedRequest);
  }

  v28 = sub_1CEFA84F0();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a2;
  v29[5] = a3;
  v29[6] = a4;
  swift_unknownObjectRetain();

  sub_1CEF7F370(0, 0, v11, &unk_1CEFAC058, v29);
}

void sub_1CEF57894(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  v6 = type metadata accessor for TrustedRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC4A8E78 != -1)
  {
    swift_once();
  }

  v10 = sub_1CEFA8220();
  __swift_project_value_buffer(v10, qword_1EC4A9478);
  sub_1CEF5A23C(a1, v9, type metadata accessor for TrustedRequest);
  v11 = sub_1CEFA8200();
  v12 = a2();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    sub_1CEFA8070();
    sub_1CEF5A348(&qword_1EDE380C8, MEMORY[0x1E69695A8]);
    v15 = sub_1CEFA8910();
    v17 = v16;
    sub_1CEF5A2E8(v9, type metadata accessor for TrustedRequest);
    v18 = sub_1CEF36C9C(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1CEF32000, v11, v12, a3, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1D3867270](v14, -1, -1);
    MEMORY[0x1D3867270](v13, -1, -1);
  }

  else
  {

    sub_1CEF5A2E8(v9, type metadata accessor for TrustedRequest);
  }
}

uint64_t TrustedCloudComputeClient.trustedRequestHistory()(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for PrivateCloudComputeError();
  v2[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(type metadata accessor for TC2TrustedRequestMetadata(0) - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = *(type metadata accessor for TrustedRequestHistory.Request() - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CEF57C60, 0, 0);
}

uint64_t sub_1CEF57C60()
{
  v1 = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1CEF57D00;

  return TC2Client.requestMetadata()(v0 + 16);
}

uint64_t sub_1CEF57D00()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1CEF57DFC, 0, 0);
}

uint64_t sub_1CEF57DFC()
{
  v43 = v0;
  result = v0[2];
  if (!result)
  {
    v38 = v0[12];
    v40 = v0[10];
    v14 = v0[7];
    v15 = v0[8];
    v16 = v0[6];
    sub_1CEF5A348(&qword_1EDE38038, type metadata accessor for PrivateCloudComputeError);
    swift_allocError();
    v35 = v17;
    v18 = sub_1CEFA8030();
    v19 = *(*(v18 - 8) + 56);
    v19(v15, 1, 1, v18);
    sub_1CEFA8650();

    v41 = 0xD000000000000023;
    v42 = 0x80000001CEFB5220;
    v20 = sub_1CEFA8660();
    MEMORY[0x1D38665A0](v20);

    MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
    v0[3] = 85;
    v21 = sub_1CEFA8910();
    MEMORY[0x1D38665A0](v21);

    v22 = v41;
    v23 = v42;
    v24 = v16[5];
    v19(&v14[v24], 1, 1, v18);
    v25 = &v14[v16[6]];
    v26 = &v14[v16[7]];
    *v14 = 21;
    sub_1CEF3D4EC(v15, &v14[v24]);
    *v25 = 0;
    v25[1] = 0;
    *v26 = v22;
    v26[1] = v23;
    sub_1CEF3D55C(v15, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    *&v14[v16[8]] = MEMORY[0x1E69E7CC0];
    sub_1CEF5A1D4(v14, v35, type metadata accessor for PrivateCloudComputeError);
    swift_willThrow();

    v27 = v0[1];
LABEL_17:

    return v27();
  }

  v37 = *(result + 16);
  if (!v37)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v28 = v0[12];
    v29 = v0[10];
    v31 = v0[7];
    v30 = v0[8];
    v32 = v0[4];

    *v32 = v4;

    v27 = v0[1];
    goto LABEL_17;
  }

  v2 = 0;
  v3 = v0[11];
  v33 = v0[9];
  v36 = result + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v34 = v0[2];
  while (v2 < *(result + 16))
  {
    v5 = *(v36 + 8 * v2);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v39 = *(v36 + 8 * v2);

      v8 = *(v33 + 72);
      do
      {
        v9 = v0[12];
        v10 = v0[10];
        sub_1CEF5A23C(v7, v10, type metadata accessor for TC2TrustedRequestMetadata);
        LODWORD(v41) = 0;
        BYTE4(v41) = 1;
        sub_1CEF58260(v10, &v41, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1CEF48200(0, v4[2] + 1, 1, v4);
        }

        v12 = v4[2];
        v11 = v4[3];
        if (v12 >= v11 >> 1)
        {
          v4 = sub_1CEF48200(v11 > 1, v12 + 1, 1, v4);
        }

        v13 = v0[12];
        v4[2] = v12 + 1;
        sub_1CEF5A1D4(v13, v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, type metadata accessor for TrustedRequestHistory.Request);
        v7 += v8;
        --v6;
      }

      while (v6);

      result = v34;
    }

    if (++v2 == v37)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CEF58260@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a3;
  v112 = sub_1CEFA8030();
  v111 = *(v112 - 8);
  v5 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v89 - v9;
  v125 = &v89 - v9;
  v11 = type metadata accessor for TrustedRequest(0);
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = *a2;
  v107 = *(a2 + 4);
  v16 = type metadata accessor for TC2TrustedRequestMetadata(0);
  v17 = v16[5];
  *&v124 = sub_1CEFA8070();
  v18 = *(v124 - 8);
  (*(v18 + 16))(v15, a1 + v17, v124);
  v19 = v16[13];
  v20 = (a1 + v16[12]);
  v22 = *v20;
  v21 = v20[1];
  v123 = v22;
  *&v121 = v21;
  *&v122 = *(a1 + v19);
  v23 = (a1 + v16[8]);
  v24 = *v23;
  v25 = v23[1];
  v26 = (a1 + v16[9]);
  v27 = v26[1];
  *&v120 = *v26;
  sub_1CEF53C3C(a1 + v16[10], v10, &qword_1EC4A9068, qword_1CEFAC020);
  v28 = v12[9];
  v118 = v12[8];
  v29 = &v15[v28];
  v30 = &v15[v12[10]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = v12[11];
  v119 = v12[12];
  v32 = &v15[v31];
  (*(v18 + 56))(&v15[v119], 1, 1, v124);
  v33 = &v15[v12[7]];
  v34 = v121;
  *v33 = v123;
  *(v33 + 1) = v34;
  *&v15[v118] = v122;
  v105 = v24;
  *v29 = v24;
  *(v29 + 1) = v25;
  *v32 = v120;
  *(v32 + 1) = v27;

  v104 = v25;
  swift_bridgeObjectRetain_n();

  v106 = v15;
  sub_1CEF5A164(v125, &v15[v119]);
  (*(v111 + 16))(v110, a1 + v16[7], v112);
  v35 = (a1 + v16[11]);
  v36 = *v35;
  v37 = v35[1];
  v38 = v16[15];
  v39 = (a1 + v16[14]);
  v40 = v39[1];
  v103 = *v39;
  v41 = *(a1 + v38);
  v42 = *(a1 + v38 + 8);
  v43 = v16[18];
  v44 = (a1 + v16[17]);
  v45 = v44[1];
  v99 = *v44;
  v102 = *(a1 + v43);
  v101 = *(a1 + v43 + 8);
  v46 = (a1 + v16[6]);
  v47 = v46[1];
  v100 = *v46;
  v48 = v16[19];
  v49 = v16[20];
  v50 = a1;
  v51 = (a1 + v48);
  v98 = *v51;
  v52 = *(a1 + v49);
  v53 = *(v52 + 16);
  v97 = v51[1];
  if (v53)
  {
    v93 = v41;
    v95 = v36;
    v96 = v50;
    v127 = MEMORY[0x1E69E7CC0];
    v94 = v37;

    v91 = v40;

    v92 = v42;

    v89 = v45;

    v90 = v47;

    result = sub_1CEF4B2D8(0, v53, 0);
    v55 = v127;
    v56 = v53 - 1;
    for (i = (v52 + 153); ; i += 152)
    {
      v58 = *(i - 89);
      v59 = *(i - 73);
      if ((*(i - 73) | v58) < 0)
      {
        break;
      }

      v124 = *(i - 73);
      v125 = v56;
      v60 = *(i - 121);
      v61 = *(i - 113);
      v117 = *(i - 105);
      v118 = v60;
      v62 = *(i - 97);
      v63 = *(i - 57);
      v64 = *(i - 41);
      v65 = *(i - 25);
      v113 = *(i - 9);
      LODWORD(v123) = *i;
      LODWORD(v119) = *(i - 1);
      v114 = *(i - 81);
      v121 = v64;
      v122 = v63;
      v120 = v65;
      v66 = *(v55 + 16);
      v67 = *(v55 + 24);
      v127 = v55;
      v115 = v61;

      v116 = v62;

      v68 = v113;

      if (v66 >= v67 >> 1)
      {
        result = sub_1CEF4B2D8((v67 > 1), v66 + 1, 1);
        v55 = v127;
      }

      *(v55 + 16) = v66 + 1;
      v69 = v55 + (v66 << 7);
      v70 = v115;
      *(v69 + 32) = v118;
      *(v69 + 40) = v70;
      v71 = v116;
      *(v69 + 48) = v117;
      *(v69 + 56) = v71;
      *(v69 + 64) = v58;
      *(v69 + 72) = v114;
      LODWORD(v71) = *&v126[3];
      *(v69 + 73) = *v126;
      *(v69 + 76) = v71;
      v73 = v121;
      v72 = v122;
      *(v69 + 80) = v124;
      *(v69 + 96) = v72;
      v74 = v120;
      *(v69 + 112) = v73;
      *(v69 + 128) = v74;
      *(v69 + 144) = v68;
      *(v69 + 152) = v119;
      *(v69 + 153) = v123;
      if (!v125)
      {
        v75 = v55;
        sub_1CEF5A2E8(v96, type metadata accessor for TC2TrustedRequestMetadata);
        v36 = v95;
        v37 = v94;
        v41 = v93;
        v42 = v92;
        v40 = v91;
        v47 = v90;
        v45 = v89;
        goto LABEL_10;
      }

      v56 = v125 - 1;
    }

    __break(1u);
  }

  else
  {

    sub_1CEF5A2E8(v50, type metadata accessor for TC2TrustedRequestMetadata);
    v75 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v76 = v109;
    sub_1CEF5A1D4(v106, v109, type metadata accessor for TrustedRequest);
    v77 = type metadata accessor for TrustedRequestHistory.Request();
    v78 = v76 + v77[5];
    *v78 = v108;
    *(v78 + 4) = v107;
    result = (*(v111 + 32))(v76 + v77[6], v110, v112);
    v79 = (v76 + v77[7]);
    v80 = v104;
    *v79 = v105;
    v79[1] = v80;
    v81 = (v76 + v77[8]);
    *v81 = v36;
    v81[1] = v37;
    v82 = (v76 + v77[9]);
    *v82 = v103;
    v82[1] = v40;
    v83 = (v76 + v77[10]);
    *v83 = v41;
    v83[1] = v42;
    v84 = (v76 + v77[11]);
    *v84 = v99;
    v84[1] = v45;
    v85 = v76 + v77[12];
    *v85 = v102;
    *(v85 + 8) = v101;
    v86 = (v76 + v77[13]);
    *v86 = v100;
    v86[1] = v47;
    v87 = (v76 + v77[14]);
    v88 = v97;
    *v87 = v98;
    v87[1] = v88;
    *(v76 + v77[15]) = v75;
  }

  return result;
}

uint64_t TrustedCloudComputeClient.prefetchRequest(workloadType:workloadParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CEF58A28, 0, 0);
}

uint64_t sub_1CEF58A28()
{
  v1 = v0[4];
  v2 = v0[3];
  v0[6] = *(*(v0[5] + 16) + 16);

  swift_bridgeObjectRetain_n();
  if (!v1)
  {
    v1 = sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  }

  v0[7] = v1;
  type metadata accessor for XPCWrapper();
  v0[8] = sub_1CEF5A348(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v4 = sub_1CEFA8480();
  v0[9] = v4;
  v0[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CEF58B1C, v4, v3);
}

uint64_t sub_1CEF58B1C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 48);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v8 + 56);
    v11 = *(v8 + 64);
    v16 = *(v8 + 16);
    *(v9 + 16) = v10 + 1;
    v13 = swift_task_alloc();
    *(v8 + 88) = v13;
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    *(v13 + 32) = v16;
    *(v13 + 48) = v12;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xD000000000000017;
    *(v13 + 80) = 0x80000001CEFB5250;
    *(v13 + 88) = 1;
    v14 = *(MEMORY[0x1E69E8920] + 4);
    a1 = swift_task_alloc();
    *(v8 + 96) = a1;
    *a1 = v8;
    a1[1] = sub_1CEF58C70;
    a6 = sub_1CEF5A0BC;
    a4 = 0xD000000000000064;
    a5 = 0x80000001CEFB5270;
    a8 = MEMORY[0x1E69E7CA8] + 8;
    a2 = v9;
    a3 = v11;
    a7 = v13;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEF58C70()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 96);
  v5 = *v1;

  v6 = *(v2 + 88);
  v7 = *(v2 + 56);
  if (v0)
  {

    v8 = *(v3 + 72);
    v9 = *(v3 + 80);
    v10 = sub_1CEF58E50;
  }

  else
  {

    v8 = *(v3 + 72);
    v9 = *(v3 + 80);
    v10 = sub_1CEF58DE0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1CEF58DE0()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = v0[1];

  return v3(1);
}

uint64_t TrustedCloudComputeClient.prewarm(workloadType:workloadParameters:bundleIdentifierOverride:featureIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CEF58E98, 0, 0);
}

uint64_t sub_1CEF58E98()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[10] = *(*(v0[9] + 16) + 16);

  swift_bridgeObjectRetain_n();
  if (!v2)
  {
    v2 = sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  }

  v0[11] = v2;
  type metadata accessor for XPCWrapper();
  v0[12] = sub_1CEF5A348(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v4 = sub_1CEFA8480();
  v0[13] = v4;
  v0[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CEF58F8C, v4, v3);
}

uint64_t sub_1CEF58F8C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 80);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v8 + 88);
    v11 = *(v8 + 96);
    v13 = *(v8 + 64);
    v14 = *(v8 + 40);
    v18 = *(v8 + 16);
    v19 = *(v8 + 48);
    *(v9 + 16) = v10 + 1;
    v15 = swift_task_alloc();
    *(v8 + 120) = v15;
    *(v15 + 16) = v9;
    *(v15 + 24) = v10;
    *(v15 + 32) = v18;
    *(v15 + 48) = v12;
    *(v15 + 56) = v14;
    *(v15 + 64) = v19;
    *(v15 + 80) = v13;
    *(v15 + 88) = 1;
    v16 = *(MEMORY[0x1E69E8920] + 4);
    a1 = swift_task_alloc();
    *(v8 + 128) = a1;
    *a1 = v8;
    a1[1] = sub_1CEF590E0;
    a6 = sub_1CEF5A4D8;
    a5 = 0x80000001CEFB5270;
    a8 = MEMORY[0x1E69E7CA8] + 8;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000064;
    a7 = v15;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEF590E0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = *(v2 + 120);
  v7 = *(v2 + 88);
  if (v0)
  {

    v8 = *(v3 + 104);
    v9 = *(v3 + 112);
    v10 = sub_1CEF59250;
  }

  else
  {

    v8 = *(v3 + 104);
    v9 = *(v3 + 112);
    v10 = sub_1CEF5A4CC;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t TrustedCloudComputeClient.completePrewarm(workloadType:workloadParameters:bundleIdentifierOverride:featureIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CEF59298, 0, 0);
}

uint64_t sub_1CEF59298()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[10] = *(*(v0[9] + 16) + 16);

  swift_bridgeObjectRetain_n();
  if (!v2)
  {
    v2 = sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  }

  v0[11] = v2;
  type metadata accessor for XPCWrapper();
  v0[12] = sub_1CEF5A348(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v4 = sub_1CEFA8480();
  v0[13] = v4;
  v0[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CEF5938C, v4, v3);
}

uint64_t sub_1CEF5938C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 80);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v8 + 88);
    v11 = *(v8 + 96);
    v13 = *(v8 + 64);
    v14 = *(v8 + 40);
    v18 = *(v8 + 16);
    v19 = *(v8 + 48);
    *(v9 + 16) = v10 + 1;
    v15 = swift_task_alloc();
    *(v8 + 120) = v15;
    *(v15 + 16) = v9;
    *(v15 + 24) = v10;
    *(v15 + 32) = v18;
    *(v15 + 48) = v12;
    *(v15 + 56) = v14;
    *(v15 + 64) = v19;
    *(v15 + 80) = v13;
    *(v15 + 88) = 0;
    v16 = *(MEMORY[0x1E69E8920] + 4);
    a1 = swift_task_alloc();
    *(v8 + 128) = a1;
    *a1 = v8;
    a1[1] = sub_1CEF594DC;
    a6 = sub_1CEF5A4D8;
    a5 = 0x80000001CEFB5270;
    a8 = MEMORY[0x1E69E7CA8] + 8;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000064;
    a7 = v15;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEF594DC()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = *(v2 + 120);
  v7 = *(v2 + 88);
  if (v0)
  {

    v8 = *(v3 + 104);
    v9 = *(v3 + 112);
    v10 = sub_1CEF59250;
  }

  else
  {

    v8 = *(v3 + 104);
    v9 = *(v3 + 112);
    v10 = sub_1CEF5964C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1CEF5964C()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t TrustedCloudComputeClient.prefetch(request:)(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1CEF596E4, 0, 0);
}

uint64_t sub_1CEF596E4()
{
  v1 = *(v0 + 64);
  v2 = *(*(*(v0 + 40) + 16) + 16);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1CEF59794;

  return sub_1CEF9739C(v0 + 16, v4);
}

uint64_t sub_1CEF59794(uint64_t a1)
{
  v4 = *(*v2 + 72);
  v5 = *v2;
  *(v5 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CEF598D0, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1CEF59908()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CEF5A4D0;

  return TC2Client.prefetchParametersCache()();
}

uint64_t sub_1CEF599C0()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CEF5A4D0;

  return TC2Client.prefetchParametersCacheSavedState()();
}

uint64_t sub_1CEF59A78()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CEF59B10;

  return TC2Client.prefetchCacheReset()();
}

uint64_t sub_1CEF59B10(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1CEF59C2C()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CEF59B10;

  return TC2Client.prefetchCache()();
}

uint64_t TrustedCloudComputeClient.knownRateLimits(bundleIdentifier:featureIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CEF59CEC, 0, 0);
}

uint64_t sub_1CEF59CEC()
{
  v1 = *(v0[6] + 16);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1CEF5A4D4;
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return TC2Client.knownRateLimits(bundleIdentifier:featureIdentifier:skipFetch:)(v6, v5, v3, v4, 0);
}

uint64_t TrustedCloudComputeClient.knownRateLimits(bundleIdentifier:featureIdentifier:skipFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 64) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CEF59DC0, 0, 0);
}

uint64_t sub_1CEF59DC0()
{
  v1 = *(*(v0 + 48) + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1CEF59E68;
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return TC2Client.knownRateLimits(bundleIdentifier:featureIdentifier:skipFetch:)(v7, v6, v4, v5, v3);
}

uint64_t sub_1CEF59E68(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t TrustedCloudComputeClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TrustedCloudComputeClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 29, 7);
}

uint64_t sub_1CEF59FBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CEF3C17C;

  return sub_1CEF55F98(a1, v5, v6, v7, v8);
}

uint64_t sub_1CEF5A164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF5A1D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF5A23C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF5A2E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEF5A348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CEF5A390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9490, &unk_1CEFB1850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF5A400(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CEF3C17C;

  return sub_1CEF923A4(a1, v4, v5, v6, v7, v8);
}

uint64_t TrustedCloudComputeClient.Configuration.userID.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t _s13ConfigurationVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13ConfigurationVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.featureID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.featureID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.workloadType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.workloadType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.workloadTags.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.WorkloadTag.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.WorkloadTag.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.WorkloadTag.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.WorkloadTag.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

PrivateCloudCompute::TrustedCloudComputeError::RateLimitInfo::WorkloadTag __swiftcall TrustedCloudComputeError.RateLimitInfo.WorkloadTag.init(key:value:)(Swift::String key, Swift::String value)
{
  *v2 = key;
  v2[1] = value;
  result.value = value;
  result.key = key;
  return result;
}

uint64_t sub_1CEF5A8A0(uint64_t a1)
{
  v2 = sub_1CEF5AAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5A8DC(uint64_t a1)
{
  v2 = sub_1CEF5AAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.RateLimitInfo.WorkloadTag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94B8, &qword_1CEFAC090);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5AAAC();
  sub_1CEFA8A60();
  v16 = 0;
  v12 = v14[3];
  sub_1CEFA8880();
  if (!v12)
  {
    v15 = 1;
    sub_1CEFA8880();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1CEF5AAAC()
{
  result = qword_1EC4A94C0;
  if (!qword_1EC4A94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A94C0);
  }

  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.WorkloadTag.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94C8, &qword_1CEFAC098);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5AAAC();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_1CEFA8780();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1CEFA8780();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TrustedCloudComputeError.RateLimitInfo.retryAfterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0) + 40);
  v4 = sub_1CEFA8030();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TrustedCloudComputeError.RateLimitInfo.retryAfterDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0) + 40);
  v4 = sub_1CEFA8030();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TrustedCloudComputeError.RateLimitInfo.init(bundleID:featureID:workloadType:workloadTags:count:duration:retryAfterDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  v12 = *(type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0) + 40);
  v13 = sub_1CEFA8030();
  v14 = *(*(v13 - 8) + 32);

  return v14(a9 + v12, a11, v13);
}

uint64_t TrustedCloudComputeError.RateLimitInfo.init(retryAfter:retryAfterDate:)@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 48) = MEMORY[0x1E69E7CC0];
  *(a4 + 56) = 0;
  if (a2)
  {
    a1 = 0.0;
  }

  *(a4 + 64) = a1;
  v7 = *(type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0) + 40);
  v8 = sub_1CEFA8030();
  v9 = *(*(v8 - 8) + 32);

  return v9(a4 + v7, a3, v8);
}

uint64_t sub_1CEF5B030(uint64_t a1)
{
  v2 = sub_1CEF5B3A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5B06C(uint64_t a1)
{
  v2 = sub_1CEF5B3A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.RateLimitInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94D0, &qword_1CEFAC0A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5B3A8();
  sub_1CEFA8A60();
  v11 = *v3;
  v12 = v3[1];
  v25 = 0;
  sub_1CEFA8830();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v24 = 1;
    sub_1CEFA8830();
    v15 = v3[4];
    v16 = v3[5];
    v23 = 2;
    sub_1CEFA8830();
    v22 = v3[6];
    v21[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94E0, &qword_1CEFAC0A8);
    sub_1CEF5B960(&qword_1EC4A94E8, sub_1CEF5B3FC);
    sub_1CEFA88D0();
    v17 = v3[7];
    v21[14] = 4;
    sub_1CEFA88C0();
    v18 = v3[8];
    v21[13] = 5;
    sub_1CEFA88A0();
    v19 = *(type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0) + 40);
    v21[12] = 6;
    sub_1CEFA8030();
    sub_1CEF5BA2C(&qword_1EDE380D8, MEMORY[0x1E6969530]);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1CEF5B3A8()
{
  result = qword_1EC4A94D8;
  if (!qword_1EC4A94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A94D8);
  }

  return result;
}

unint64_t sub_1CEF5B3FC()
{
  result = qword_1EC4A94F0;
  if (!qword_1EC4A94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A94F0);
  }

  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1CEFA8030();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94F8, &qword_1CEFAC0B0);
  v9 = *(v8 - 8);
  v31 = v8;
  v32 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v33 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = a1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5B3A8();
  v17 = v12;
  sub_1CEFA8A50();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v28 = v7;
    v42 = 0;
    v18 = v31;
    v19 = sub_1CEFA8730();
    v20 = v33;
    *v33 = v19;
    v20[1] = v21;
    v41 = 1;
    v20[2] = sub_1CEFA8730();
    v20[3] = v22;
    v40 = 2;
    v20[4] = sub_1CEFA8730();
    v20[5] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94E0, &qword_1CEFAC0A8);
    v39 = 3;
    sub_1CEF5B960(&qword_1EC4A9500, sub_1CEF5B9D8);
    sub_1CEFA87D0();
    v24 = v33;
    v33[6] = v35;
    v38 = 4;
    v24[7] = sub_1CEFA87C0();
    v37 = 5;
    sub_1CEFA87A0();
    v24[8] = v25;
    v36 = 6;
    sub_1CEF5BA2C(&qword_1EC4A8FE8, MEMORY[0x1E6969530]);
    sub_1CEFA87D0();
    (*(v32 + 8))(v17, v18);
    v26 = v33;
    (*(v29 + 32))(v33 + *(v13 + 40), v28, v4);
    sub_1CEF5D9E0(v26, v30, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
    __swift_destroy_boxed_opaque_existential_0(v34);
    return sub_1CEF5DA48(v26, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
  }
}

uint64_t sub_1CEF5B960(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A94E0, &qword_1CEFAC0A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CEF5B9D8()
{
  result = qword_1EC4A9508;
  if (!qword_1EC4A9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9508);
  }

  return result;
}

uint64_t sub_1CEF5BA2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CEF5BB74(uint64_t a1)
{
  v2 = sub_1CEF5C7A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BBB0(uint64_t a1)
{
  v2 = sub_1CEF5C7A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5BBEC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000010;
    if (v1 != 1)
    {
      v5 = 0x7375427365646F6ELL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x576E776F6E6B6E75;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 == 5)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000011;
    if (v1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1CEF5BCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF76AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF5BD08(uint64_t a1)
{
  v2 = sub_1CEF5C74C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BD44(uint64_t a1)
{
  v2 = sub_1CEF5C74C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5BD80(uint64_t a1)
{
  v2 = sub_1CEF5C944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BDBC(uint64_t a1)
{
  v2 = sub_1CEF5C944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5BDF8(uint64_t a1)
{
  v2 = sub_1CEF5C89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BE34(uint64_t a1)
{
  v2 = sub_1CEF5C89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}