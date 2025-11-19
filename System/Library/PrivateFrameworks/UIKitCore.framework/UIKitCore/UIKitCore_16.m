uint64_t sub_188C412CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C10);
  result = sub_18A4A8468();
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

      result = sub_18A4A8878();
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

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
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

LABEL_33:
  *v3 = v7;
  return result;
}

char *sub_188C4153C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9341E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _TextFieldScalesClearButton()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    LODWORD(result) = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_TextFieldScalesClearButton, @"TextFieldScalesClearButton");
    if (byte_1ED48B624)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

void sub_188C423E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188C42BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

double sub_188C449C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A5FA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = (*(v5 + 16))(v8, a1, v4, v6);
  v17 = 1;
  v16[0] = 1;
  v10 = MEMORY[0x18CFE0EE0](v9);
  sub_18A4A5F58();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  v13 = v16[0];
  v14 = v17 & 1;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  *(a2 + 24) = v14;
  *(a2 + 32) = 0;
  *(a2 + 40) = v13 & 1 | 0x8000000000000000;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 73) = 0u;
  return result;
}

uint64_t sub_188C44B9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 89))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 88);
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

uint64_t get_enum_tag_for_layout_string_So6UIViewC5UIKitE18InProcessAnimationVSg(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *_NSStringFromUIKeyWindowEvaluationStrategy(uint64_t a1)
{
  if ((a1 + 1) > 2)
  {
    return &stru_1EFB14550;
  }

  else
  {
    return off_1E711F770[a1 + 1];
  }
}

void sub_188C44EC0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [(UIView *)v2 _typedStorage];
  v7 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v8 = *(&v6->super.isa + v7);
  if (*(v8 + 16) && (v9 = sub_188A403F4(&_s29CornerMaskingConfigurationKeyVN), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v12 = v11[3];
    v33 = v11[2];
    v34 = v12;
    *v35 = v11[4];
    *&v35[10] = *(v11 + 74);
    v32 = v11[1];
    sub_188A74E4C(&v32, &v31);

    if (*&v35[16])
    {
      switch(a2)
      {
        case 1:
          v13 = v32;
          goto LABEL_14;
        case 8:
          v13 = *v35;
          goto LABEL_14;
        case 4:
          v13 = v34;
          goto LABEL_14;
        case 2:
          v13 = v33;
LABEL_14:
          v30 = v13;
          sub_188A85484(v13);
          sub_188A854E0(*(&v30 + 1));
          v31 = v30;
          v14 = [v3 traitCollection];
          sub_188B22BDC(v3, v14, a2);
          v16 = v15;

          v17 = *(&v31 + 1);
          sub_188A79914(v31);
          sub_188A74020(v17);
          sub_188BB96BC();
          v19 = v18;
          [v3 bounds];
          [a1 convertRect:v3 fromMaskingCoordinateSpace:?];
          v24 = 0.0;
          if (a2 != 1)
          {
            if (a2 == 2)
            {
              v25 = CGRectGetWidth(*&v20) - v16;
              goto LABEL_19;
            }

            if (a2 != 4)
            {
              v26 = v20;
              v27 = v21;
              v28 = v22;
              v29 = v23;
              v25 = CGRectGetWidth(*&v20) - v16;
              v37.origin.x = v26;
              v37.origin.y = v27;
              v37.size.width = v28;
              v37.size.height = v29;
              v24 = CGRectGetHeight(v37) - v16;
              goto LABEL_19;
            }

            v24 = CGRectGetHeight(*&v20) - v16;
          }

          v25 = 0.0;
LABEL_19:
          [a1 bounds];
          [a1 convertRect:v3 toMaskingCoordinateSpace:?];
          v38.origin.x = v25;
          v38.origin.y = v24;
          v38.size.width = v16;
          v38.size.height = v16;
          CGRectIntersection(v36, v38);

          sub_188A3F5FC(&v32, &qword_1EA938E70);
          return;
      }

      sub_18A4A8398();
      __break(1u);
    }
  }

  else
  {
    swift_endAccess();
  }
}

void sub_188C45320()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [(UIView *)Strong _invalidateMaskingConfiguration];
  }
}

void sub_188C45430()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [(UIView *)Strong _invalidateMaskingConfiguration];
  }
}

uint64_t sub_188C45494(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938C08);
  result = sub_18A4A8468();
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
      result = sub_18A4A8878();
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

unint64_t sub_188C45700(uint64_t a1, char a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_188C4585C(a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_188FA6298();
      v13 = v21;
      goto LABEL_8;
    }

    sub_188C45860(v18, a4 & 1);
    v13 = sub_188C4585C(a3);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v13;
    *v24 = a1;
    *(v24 + 8) = a5;
    *(v24 + 16) = a2 & 1;
  }

  else
  {

    return sub_188C45B04(v13, a3, a1, a2 & 1, v23, a5);
  }
}

uint64_t sub_188C45860(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938C00);
  v35 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if ((v35 & 1) == 0)
      {
      }

      result = sub_18A4A8878();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      ++*(v7 + 16);
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

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_188C45B04(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5, double a6)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v6 = a5[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a6;
  *(v6 + 16) = a4;
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

void *sub_188C45B58(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9341B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9341C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188C45C8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9341A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_188C45DBC()
{
  result = qword_1ED48C480;
  if (!qword_1ED48C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48C480);
  }

  return result;
}

unint64_t sub_188C45E14()
{
  result = qword_1ED48C478;
  if (!qword_1ED48C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48C478);
  }

  return result;
}

unint64_t sub_188C45E7C()
{
  result = qword_1ED48D270;
  if (!qword_1ED48D270)
  {
    type metadata accessor for _UINavigationButtonBarPosition(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D270);
  }

  return result;
}

char *sub_188C45F78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_188C460A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_188C46158(uint64_t result)
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

  result = sub_188C45F78(result, v10, 1, v3);
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

char *sub_188C46250(char *a1, int64_t a2, char a3)
{
  result = sub_188C478AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_188C462CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_188C46270(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x18CFE2F70](v9, a1);
      sub_188C4D06C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t getEnumTagSinglePayload for NavigationButtonBar.SectionID(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationButtonBar.SectionID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So15UIBarButtonItemC5UIKitE10SemanticIDOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 5)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_188C46540(uint64_t a1)
{
  sub_18A4A8888();
  sub_188C46604(a1, v7);
  if (v9)
  {
    v5[0] = v7[0];
    v5[1] = v7[1];
    v6 = v8;
    MEMORY[0x18CFE37E0](1);
    sub_18A4A8038();
    sub_188BBA15C(v5);
  }

  else
  {
    v2 = *&v7[0];
    MEMORY[0x18CFE37E0](0);
    MEMORY[0x18CFE37E0](v2);
  }

  v3 = sub_18A4A88E8();
  return sub_188C4666C(a1, v3);
}

unint64_t sub_188C4666C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_188C46604(*(v2 + 48) + 48 * v4, v16);
      sub_188C46604(v16, v12);
      sub_188C46604(a1, v13);
      if (v12[40])
      {
        sub_188C46604(v12, v11);
        if (v15)
        {
          v9[0] = v13[0];
          v9[1] = v13[1];
          v10 = v14;
          v7 = MEMORY[0x18CFE2F70](v11, v9);
          sub_188BBA15C(v9);
          sub_188C4680C(v16);
          sub_188BBA15C(v11);
          if (v7)
          {
            goto LABEL_14;
          }

LABEL_12:
          sub_188C4680C(v12);
          goto LABEL_5;
        }

        sub_188C4680C(v16);
        sub_188BBA15C(v11);
      }

      else
      {
        sub_188C4680C(v16);
        sub_188C46604(v12, v11);
        if ((v15 & 1) == 0)
        {
          if (v11[0] == *&v13[0])
          {
LABEL_14:
            sub_188C4680C(v12);
            return v4;
          }

          goto LABEL_12;
        }
      }

      sub_188A3F5FC(v12, &unk_1EA93F050);
LABEL_5:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_188C46860(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_188BB395C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_188C46874(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_188BB3988(a1, a2, a3);
  }

  return a1;
}

id sub_188C468DC(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

uint64_t sub_188C46918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_s11AnyHashableVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

BOOL sub_188C46978(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 104);
  v7 = *(a1 + 120);
  v8 = *(a1 + 128);
  v10 = *(a1 + 144);
  v9 = *(a1 + 152);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }

    v45 = *(a2 + 56);
    v46 = *(a2 + 72);
    v47 = *(a1 + 56);
    v48 = *(a1 + 72);
    v40 = *(a1 + 96);
    v41 = *(a1 + 88);
    v43 = *(a2 + 112);
    v44 = *(a2 + 136);
    v35 = *(a2 + 120);
    v36 = *(a2 + 128);
    v37 = *(a2 + 144);
    v38 = *(a2 + 152);
    v42 = *(a1 + 136);
    v39 = *(a1 + 112);
    v34 = *(a1 + 144);
    sub_188A34624(0, &qword_1ED490230);
    if ((sub_18A4A7C88() & 1) == 0)
    {
      return 0;
    }

    v10 = v34;
    if ((sub_18A4A7C88() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v45 = *(a2 + 56);
    v46 = *(a2 + 72);
    v47 = *(a1 + 56);
    v48 = *(a1 + 72);
    v40 = *(a1 + 96);
    v41 = *(a1 + 88);
    v43 = *(a2 + 112);
    v44 = *(a2 + 136);
    v35 = *(a2 + 120);
    v36 = *(a2 + 128);
    v37 = *(a2 + 144);
    v38 = *(a2 + 152);
    v42 = *(a1 + 136);
    v39 = *(a1 + 112);
    sub_188A34624(0, &qword_1ED490230);
    if ((sub_18A4A7C88() & 1) == 0)
    {
      return 0;
    }
  }

  v61.origin.x = v2;
  v61.origin.y = v3;
  v61.size.width = v4;
  v61.size.height = v5;
  v62.origin.x = v11;
  v62.origin.y = v12;
  v62.size.width = v13;
  v62.size.height = v14;
  v18 = 0;
  if (CGRectEqualToRect(v61, v62) && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v47, v45), vceqq_f64(v48, v46)), xmmword_18A650B80)) & 0xF) == 0)
  {
    if (v6 == 255)
    {
      if (v17 != 255)
      {
        return 0;
      }
    }

    else if (v17 == 255 || (sub_188C477D0(v41, v40, v6, v15, v16, v17) & 1) == 0)
    {
      return 0;
    }

    if (v42 == 1)
    {
      v19 = v39;
      sub_188EC2284(v39, v7, v8, 1, v10, v9);
      if (v44 == 1)
      {
        v18 = 1;
        sub_188EC2284(v43, v35, v36, 1, v37, v38);
        sub_188EC2210(v39, v7, v8, 1, v10, v9);
        return v18;
      }

      v21 = v35;
      v20 = v36;
      v23 = v37;
      v22 = v38;
      sub_188EC2284(v43, v35, v36, v44, v37, v38);
    }

    else
    {
      v55 = v39;
      v56 = v7;
      v57 = v8;
      v58 = v42;
      v59 = v10;
      v60 = v9;
      if (v44 != 1)
      {
        v49 = v43;
        v50 = v35;
        v51 = v36;
        v52 = v44;
        v53 = v37;
        v54 = v38;
        sub_188EC2284(v39, v7, v8, v42, v10, v9);
        sub_188EC2284(v43, v35, v36, v44, v37, v38);
        sub_188EC2284(v39, v7, v8, v42, v10, v9);
        v25 = _sSo15UIBarButtonItemC5UIKitE5BadgeV2eeoiySbAE_AEtFZ_0(&v55, &v49);
        v26 = v8;
        v27 = v52;
        v28 = v53;
        v29 = v7;
        v30 = v54;
        sub_188EC226C(v49, v50, v51);

        v31 = v58;
        v32 = v59;
        v33 = v60;
        sub_188EC226C(v55, v56, v57);

        sub_188EC2210(v39, v29, v26, v42, v10, v9);
        return (v25 & 1) != 0;
      }

      v44 = 1;
      v19 = v39;
      sub_188EC2284(v39, v7, v8, v42, v10, v9);
      v21 = v35;
      v20 = v36;
      v23 = v37;
      v22 = v38;
      sub_188EC2284(v43, v35, v36, 1, v37, v38);
      sub_188EC2284(v39, v7, v8, v42, v10, v9);
      sub_188EC226C(v39, v7, v8);
    }

    sub_188EC2210(v19, v7, v8, v42, v10, v9);
    sub_188EC2210(v43, v21, v20, v44, v23, v22);
    return 0;
  }

  return v18;
}

uint64_t sub_188C46FE4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>, double a4@<D2>)
{
  v8 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v24 - v16);
  if ([a1 _barPlattersHidden])
  {
    v18 = [objc_opt_self() clearColor];
    result = sub_188A34624(0, qword_1ED4913C0);
    a3[3] = result;
    a3[4] = &protocol witness table for UIColor;
    *a3 = v18;
  }

  else
  {
    if (qword_1ED48E920 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v8, qword_1ED48E930);
    sub_188B90950(v20, v10);
    _Glass.init(_:smoothness:)(v10, v17, a4);
    *(v17 + *(v11 + 52)) = 1;
    if (a2)
    {
      sub_188C4CD1C(v17, v13);
      v21 = *v13;
      v22 = a2;

      *v13 = a2;
      sub_188C4CD1C(v13, v17);
    }

    a3[3] = v11;
    a3[4] = &protocol witness table for _Glass;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return sub_188C4CD1C(v17, boxed_opaque_existential_0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for UIHostingViewBase.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_188C4738C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void (*UIView.registerDescendantForGeometryOrMaskingConfigurationChanges(_:invalidationBlock:)(void *a1, uint64_t a2, uint64_t a3))()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() && (sub_188A34624(0, &qword_1ED48F680), swift_unknownObjectRetain(), v7 = v3, v8 = sub_18A4A7C88(), swift_unknownObjectRelease(), v7, (v8 & 1) != 0))
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    sub_188BB96BC();
    v10 = v9;
    v11 = [a1 contextIdentifier];
    sub_18A4A8048();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v13 = OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDescendantInvalidationBlocks;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *&v10[v13];
    *&v10[v13] = 0x8000000000000000;
    sub_188BB9C50(sub_188A4B574, v12, v19, isUniquelyReferenced_nonNull_native);
    sub_188BBA15C(v19);
    *&v10[v13] = v18;
    swift_endAccess();
    if ([a1 respondsToSelector_])
    {
      [a1 registerBoundingPathObserverForCornerMaskingConfigurationChanges_];
    }

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v11;
    return sub_188CAC8A4;
  }

  return result;
}

uint64_t sub_188C4777C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188C477D0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      v7 = a6 == 1 && a1 == a4;
      v9 = a6 == 2 && a1 == a4;
      if (a3 == 1)
      {
        return v7;
      }

      else
      {
        return v9;
      }
    }

    if (!a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_18A4A86C8();
    }

    return 0;
  }

  if (a3 == 3)
  {
    if (a6 == 3)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_18A4A86C8();
    }

    return 0;
  }

  if (a3 == 4)
  {
    if (a6 == 4)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_18A4A86C8();
    }

    return 0;
  }

  return a6 == 5 && a1 == a4;
}

char *sub_188C478AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_188C479E4(uint64_t a1)
{
  sub_18A4A8888();
  sub_18A4A8038();
  v2 = sub_18A4A88E8();

  return sub_188C462CC(a1, v2);
}

void sub_188C47A50(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_188C47AA8()
{
  v1 = v0[1];
  MEMORY[0x18CFE37E0](*v0);
  return MEMORY[0x18CFE37E0](v1);
}

uint64_t _edgeForScrollAccessoryEdge(uint64_t a1, int a2)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 2;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 8;
      }

      goto LABEL_12;
    }

    return 4;
  }

  else
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          return 1;
        }

LABEL_12:
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIRectEdge _edgeForScrollAccessoryEdge(UIScrollAccessoryEdge, BOOL)"}];
        [v7 handleFailureInFunction:v8 file:@"UIScrollView.m" lineNumber:15555 description:{@"Invalid UIScrollAccessoryEdge value (%ld)", a1}];

        return 0;
      }

      v4 = a2 == 0;
      v5 = 8;
      v6 = 2;
    }

    else
    {
      v4 = a2 == 0;
      v5 = 2;
      v6 = 8;
    }

    if (v4)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_188C47E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C482B4;

  return sub_188C47EF4(a1, v4, v5, v6);
}

uint64_t sub_188C47EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_18A4A76A8();
  v4[4] = sub_18A4A7698();
  v6 = sub_18A4A7678();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_188C48140, v6, v5);
}

uint64_t sub_188C47F90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_188C48500;

  return sub_188C48048(a1, v4);
}

uint64_t sub_188C48048(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_188C48408;

  return v6(a1);
}

uint64_t sub_188C48140()
{
  v0[7] = *(v0[2] + OBJC_IVAR____UIFloatingBarContainerView_keyboardAssistant);
  v0[8] = sub_18A4A7698();
  v2 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188C481DC, v2, v1);
}

uint64_t sub_188C481DC()
{
  v1 = v0[7];

  v2 = OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_observationEnabled;
  if ((*(v1 + OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_observationEnabled) & 1) == 0)
  {
    v3 = v0[7];
    v4 = [objc_opt_self() defaultCenter];
    [v4 addObserver:v3 selector:sel_updateKeyboardAvoidance name:@"UIWindowFirstResponderDidChangeNotification" object:0];

    *(v1 + v2) = 1;
  }

  v5 = v0[5];
  v6 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_188C483A8, v5, v6);
}

uint64_t sub_188C482B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_188C483A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_188C48408()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_188C48568()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isEnteringForeground;
  swift_beginAccess();
  *(v1 + v2) = 0;
  UIHostingViewBase.updateSceneActivationState()();
}

void sub_188C485B8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isEnteringForeground;
  swift_beginAccess();
  *(a1 + v2) = 0;
  UIHostingViewBase.updateSceneActivationState()();
}

void sub_188C4864C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-v1];
  v3 = sub_18A4A5CC8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    *(Strong + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPreferencesUpdate) = 0;
    if (sub_18A4A46F8())
    {
      v9 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_canAdvanceTimeAutomatically;
      swift_beginAccess();
      if (*(v8 + v9))
      {
        CACurrentMediaTime();
        sub_18A4A5C88();
        sub_188B27A38(v6);
        (*(v4 + 8))(v6, v3);
        UIAnimationDragCoefficient();
        swift_getObjectType();
        (*(v4 + 56))(v2, 1, 1, v3);
        sub_18A4A58C8();

        swift_unknownObjectRelease();
        sub_188A3F5FC(v2, &qword_1EA936FE8);
        return;
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_188C48960()
{
  v1 = [*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar15ItemWrapperView_contentView) superview];
  if (v1)
  {
    v2 = v1;
    sub_188A34624(0, &qword_1ED48F680);
    if (sub_18A4A7C88())
    {

      return 0;
    }

    v3 = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar15ItemWrapperView_tamicAdaptorView);
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      v6 = sub_18A4A7C88();

      if (v6)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

void sub_188C48C3C(void *a1)
{
  if (a1)
  {
    if (([a1 isTracking] & 1) != 0 || objc_msgSend(a1, sel_isDecelerating))
    {

      sub_188F9173C(a1);
    }

    else
    {
      [a1 contentOffset];
      v3 = (v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_lastContentOffset);
      *v3 = v4;
      v3[1] = v5;
    }
  }

  else
  {
    __break(1u);
  }
}

double _UIGraphicsCurrentContextScale()
{
  ContextStack = GetContextStack(0);
  result = 0.0;
  if (*ContextStack >= 1)
  {
    v2 = &ContextStack[3 * (*ContextStack - 1)];
    if (*(v2 + 4) == 1)
    {
      v3 = v2[3];
      if (v3)
      {
        return *v3;
      }
    }
  }

  return result;
}

void UIRectFillUsingBlendMode(CGRect rect, CGBlendMode blendMode)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v9 = CGContextGetBlendMode();
  if (v9 == blendMode)
  {
    v10 = x;
    v11 = y;
    v12 = width;
    v13 = height;

    CGContextFillRect(v8, *&v10);
  }

  else
  {
    v14 = v9;
    CGContextSetBlendMode(v8, blendMode);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    CGContextFillRect(v8, v16);

    CGContextSetBlendMode(v8, v14);
  }
}

__CFString *_UIStatisticsBundleIdentifier(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = &stru_1EFB14550;
  }

  else
  {
    if (qword_1ED4A28A0 != -1)
    {
      dispatch_once(&qword_1ED4A28A0, &__block_literal_global_411_3);
    }

    v5 = _MergedGlobals_1361;
    if (a1)
    {
      v5 = a1 == 3;
    }

    if ((v5 & 1) != 0 || byte_1ED4A27D1 == 1)
    {
      v6 = qword_1ED4A2898;
    }

    else
    {
      v6 = &stru_1EFB14550;
    }

    v2 = v6;
  }

  return v2;
}

void _BatteryStatusChanged(uint64_t a1, io_registry_entry_t a2, int a3)
{
  if (a3 == -536723200)
  {
    kdebug_trace();

    _UpdateBatteryStatus(a2);
  }
}

void _UpdateBatteryStatus(io_registry_entry_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DF90] dictionary];
  _addBatteryPropertyForKey(a1, v3, @"CurrentCapacity");
  _addBatteryPropertyForKey(a1, v3, @"MaxCapacity");
  _addBatteryPropertyForKey(a1, v3, @"AtCriticalLevel");
  _addBatteryPropertyForKey(a1, v3, @"Voltage");
  _addBatteryPropertyForKey(a1, v3, @"FullyCharged");
  _addBatteryPropertyForKey(a1, v3, @"IsCharging");
  _addBatteryPropertyForKey(a1, v3, @"ExternalConnected");
  _addBatteryPropertyForKey(a1, v3, @"ExternalChargeCapable");
  _addBatteryPropertyForKey(a1, v3, @"AdapterInfo");
  _addBatteryPropertyForKey(a1, v3, @"CapacityEstimated");
  _addBatteryPropertyForKey(a1, v3, @"AdapterDetails");
  _addBatteryPropertyForKey(a1, v3, @"SkipperNEIgnoreAtCritical");
  v4 = [v3 count];
  v5 = _batteryLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v10 = 0;
      v7 = "Updating battery status with populated properties";
      v8 = &v10;
LABEL_6:
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_INFO, v7, v8, 2u);
    }
  }

  else if (v6)
  {
    v9 = 0;
    v7 = "Updating battery status properties, will be UIDeviceBatteryStateUnknown";
    v8 = &v9;
    goto LABEL_6;
  }

  _updateBatteryStatusBasedOnProperties(v3);
  objc_autoreleasePoolPop(v2);
}

void _addBatteryPropertyForKey(io_registry_entry_t a1, void *a2, const __CFString *a3)
{
  v7 = a2;
  CFProperty = IORegistryEntryCreateCFProperty(a1, a3, *MEMORY[0x1E695E480], 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    [v7 setObject:CFProperty forKey:a3];
  }
}

id _UserInterfaceTraitFromPath(void *a1)
{
  v1 = a1;
  v2 = [UIImage _scaleDefinedByPath:v1];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  v4 = [UIImage _idiomDefinedByPath:v1];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UserInterfaceTraitFromPath_block_invoke;
  v7[3] = &__block_descriptor_48_e27_v16__0___UIMutableTraits__8l;
  v7[4] = v4;
  v7[5] = v3;
  v5 = [UITraitCollection traitCollectionWithTraits:v7];

  return v5;
}

uint64_t _ZNSt3__15dequeIDv3_dNS_9allocatorIS1_EEED2B8nn200100Ev(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 128;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return _ZNSt3__114__split_bufferIPDv3_dNS_9allocatorIS2_EEED2Ev(a1);
}

void anonymous namespace::Gaussian::~Gaussian(_anonymous_namespace_::Gaussian *this)
{
  *this = &unk_1EFB0ADA8;
  _ZNSt3__15dequeIDv3_dNS_9allocatorIS1_EEED2B8nn200100Ev(this + 6);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x18CFE8670);
}

{
  *this = &unk_1EFB0ADA8;
  _ZNSt3__15dequeIDv3_dNS_9allocatorIS1_EEED2B8nn200100Ev(this + 6);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

uint64_t _ZNSt3__114__split_bufferIPDv3_dNS_9allocatorIS2_EEED2Ev(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void ___queue_scheduleUpdateAndSaveForPersistedSceneSessions_block_invoke_3()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = _queue_persistentIdentifiersForDeletion();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v21;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v21 != v3)
        {
          objc_enumerationMutation(v0);
        }

        [objc_opt_class() _deleteSavedSceneSessionDirectoryWithPersistentIdentifier:*(*(&v20 + 1) + 8 * i)];
      }

      v2 = [v0 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v2);
  }

  [v0 removeAllObjects];
  v5 = _restorationDirectory(@"KnownSceneSessions");
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v19 = 0;
  [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v19];
  v7 = v19;

  v8 = _restorationPath(@"KnownSceneSessions");
  if (qword_1ED49FA80 != -1)
  {
    dispatch_once(&qword_1ED49FA80, &__block_literal_global_553_0);
  }

  if (byte_1ED49FA03 == 1 && _UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SFilesAreProte.isa, "void _queue_updateAndSavePersistedSceneSessions(void)");
  }

  v18 = 0;
  v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:qword_1ED49FA08 format:200 options:0 error:&v18];
  v10 = v18;

  if (!v9 || v10)
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SCouldNotConve_1.isa, "void _queue_updateAndSavePersistedSceneSessions(void)", v10);
    }
  }

  else
  {
    v17 = 0;
    [v9 writeToURL:v8 options:0x40000000 error:&v17];
    v11 = v17;
    if (v11)
    {
      v10 = v11;
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SCouldNotWrite.isa, "void _queue_updateAndSavePersistedSceneSessions(void)", v10);
      }
    }

    else
    {
      v16 = 0;
      v12 = *MEMORY[0x1E695DAF0];
      v15 = 0;
      [v8 getResourceValue:&v16 forKey:v12 error:&v15];
      v13 = v16;
      v14 = v15;
      v10 = v14;
      if (v14)
      {
        NSLog(&cfstr_SErrorGettingP_0.isa, "void _queue_updateAndSavePersistedSceneSessions(void)", v14);
      }

      else if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SFileProtectio_0.isa, "void _queue_updateAndSavePersistedSceneSessions(void)", v13);
      }
    }
  }

  byte_1ED49FA02 = 0;
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCompletedWork.isa, "void _queue_updateAndSavePersistedSceneSessions(void)", qword_1ED49FA78);
  }

  _queue_end_backgroundTaskToUpdatePersistentSceneSessionMap();
}

void ___filesProtectedWhileLocked_block_invoke()
{
  v1 = UICopyValueForEntitlementFromSelfIfNotSimulator(@"com.apple.developer.default-data-protection");
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCheckingIfFil.isa, "BOOL _filesProtectedWhileLocked(void)_block_invoke", v1);
  }

  if ([v1 isEqualToString:*MEMORY[0x1E696A378]])
  {
    v0 = 1;
  }

  else
  {
    v0 = [v1 isEqualToString:*MEMORY[0x1E696A380]];
  }

  byte_1ED49FA03 = v0;
}

uint64_t UICopyValueForEntitlementFromSelfIfNotSimulator(void *a1)
{
  v1 = MEMORY[0x1E698E620];
  v2 = a1;
  v3 = [v1 tokenForCurrentProcess];
  v4 = [v3 valueForEntitlement:v2];

  return v4;
}

unint64_t sub_188C4AE0C()
{
  result = qword_1EA930D28;
  if (!qword_1EA930D28)
  {
    _s4ItemCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930D28);
  }

  return result;
}

uint64_t UIMutableTraits._vibrancy.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1ED48E990, type metadata accessor for _UIUserInterfaceVibrancy);
  v4(&v7, &type metadata for UITraitVibrancy, &type metadata for UITraitVibrancy, &protocol witness table for UITraitVibrancy, v5, a1, a2);
  return v7;
}

uint64_t sub_188C4B078(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassInteractionView_coreInteractions;
  swift_beginAccess();
  v4 = sub_18A4A5B68();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_188C4B128(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_188C4B170(uint64_t *a1@<X8>)
{
  v2 = sub_18A4A6178();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIPlatformGlassInteractionRepresentable(0);
  a1[3] = v5;
  a1[4] = sub_188C4B128(&unk_1EA931148, type metadata accessor for UIPlatformGlassInteractionRepresentable);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  sub_18A4A59E8();
  sub_18A4A59D8();
  sub_18A4A59B8();
  sub_18A4A59A8();
  sub_18A4A59C8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_18A4A59D8();
  sub_188C4B2B4(v4, (boxed_opaque_existential_0 + *(v5 + 36)));
  v15 = boxed_opaque_existential_0 + *(v5 + 32);
  *v15 = v8;
  *(v15 + 1) = v10;
  *(v15 + 2) = v12;
  *(v15 + 3) = v14;
  v15[32] = 0;
}

void sub_188C4B2B4(uint64_t a1@<X0>, id *a2@<X8>)
{
  v66 = a2;
  v3 = sub_18A4A60C8();
  v62 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - v7;
  v63 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937E20);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v60 - v15;
  v17 = sub_18A4A6018();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  v67 = a1;
  sub_18A4A5FB8();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_188A3F5FC(v16, &unk_1EA937E20);
    v27 = 5;
  }

  else
  {
    (*(v18 + 32))(v26, v16, v17);
    (*(v18 + 16))(v23, v26, v17);
    sub_18A4A5FD8();
    v60 = sub_188C4BD90(&unk_1EA92F7E0, MEMORY[0x1E69818A0]);
    v28 = sub_18A4A7248();
    v29 = *(v18 + 8);
    v29(v20, v17);
    if (v28)
    {
      v29(v23, v17);
      v29(v26, v17);
      v27 = 0;
    }

    else
    {
      sub_18A4A5FF8();
      v30 = sub_18A4A7248();
      v29(v20, v17);
      if (v30)
      {
        v29(v23, v17);
        v29(v26, v17);
        v27 = 1;
      }

      else
      {
        sub_18A4A6008();
        v31 = sub_18A4A7248();
        v29(v20, v17);
        if (v31)
        {
          v29(v23, v17);
          v29(v26, v17);
          v27 = 2;
        }

        else
        {
          sub_18A4A5FE8();
          v32 = sub_18A4A7248();
          v29(v20, v17);
          if (v32)
          {
            v29(v23, v17);
            v29(v26, v17);
            v27 = 3;
          }

          else
          {
            sub_18A4A5FC8();
            v33 = sub_18A4A7248();
            v29(v20, v17);
            v29(v23, v17);
            v29(v26, v17);
            if (v33)
            {
              v27 = 4;
            }

            else
            {
              v27 = 5;
            }
          }
        }
      }
    }
  }

  v34 = v67;
  sub_18A4A6108();
  sub_18A4A60A8();
  sub_188C4BD90(qword_1EA930F28, MEMORY[0x1E69818C0]);
  v35 = sub_18A4A7248();
  v36 = *(v62 + 8);
  v36(v5, v3);
  if (v35)
  {
    v36(v8, v3);
    if (qword_1ED48E920 != -1)
    {
      swift_once();
    }

    v37 = qword_1ED48E930;
    v38 = v65;
  }

  else
  {
    sub_18A4A60B8();
    v39 = sub_18A4A7248();
    v36(v5, v3);
    if (v39)
    {
      v36(v8, v3);
      if (qword_1EA931280 != -1)
      {
        swift_once();
      }

      v37 = qword_1EA994F90;
      v38 = v65;
    }

    else
    {
      sub_18A4A6098();
      v40 = sub_18A4A7248();
      v36(v5, v3);
      v36(v8, v3);
      if (v40)
      {
        v38 = v65;
        if (qword_1ED48C6B8 != -1)
        {
          swift_once();
        }

        v37 = qword_1ED48C538;
      }

      else
      {
        v38 = v65;
        if (qword_1ED48E920 != -1)
        {
          swift_once();
        }

        v37 = qword_1ED48E930;
      }
    }
  }

  v41 = __swift_project_value_buffer(v63, v37);
  sub_188AD8C44(v41, v38, type metadata accessor for _Glass._GlassVariant);
  if (v27 != 5)
  {
    v42 = v61;
    sub_188AD8C44(v38, v61, type metadata accessor for _Glass._GlassVariant);
    v43 = sub_18A4A2D68();
    v44 = *(v43 - 8);
    MEMORY[0x1EEE9AC00](v43);
    v46 = &v60 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = MEMORY[0x1EEE9AC00](v47);
    v50 = &v60 - v49;
    (*(v44 + 104))(&v60 - v49, **(&off_1E70F1908 + v27), v43, v48);
    (*(v44 + 32))(v46, v50, v43);
    v34 = v67;
    sub_18A4A2E68();
    sub_188B0CD70(v38, type metadata accessor for _Glass._GlassVariant);
    sub_188B0D6AC(v42, v38, type metadata accessor for _Glass._GlassVariant);
  }

  v51 = v64;
  sub_188AD8C44(v38, v64, type metadata accessor for _Glass._GlassVariant);
  v52 = v66;
  _Glass.init(_:smoothness:)(v51, v66, 0.0);
  v53 = sub_18A4A6158();
  if (v53)
  {
    v54 = v53;
    v55 = objc_allocWithZone(UIColor);
    aBlock[4] = sub_188F6D76C;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188BC2240;
    aBlock[3] = &block_descriptor_43;
    v56 = _Block_copy(aBlock);

    v57 = [v55 initWithDynamicProvider_];
    _Block_release(v56);

    v58 = sub_18A4A6178();
    (*(*(v58 - 8) + 8))(v34, v58);
    sub_188B0CD70(v38, type metadata accessor for _Glass._GlassVariant);

    *v52 = v57;
  }

  else
  {
    v59 = sub_18A4A6178();
    (*(*(v59 - 8) + 8))(v34, v59);
    sub_188B0CD70(v38, type metadata accessor for _Glass._GlassVariant);
  }
}

uint64_t sub_188C4BD90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188C4BDEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_18A4A5968();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_18A4A6178();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B9C8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for _Glass(0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_188C4BFA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_18A4A5968();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_18A4A6178();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B9C8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for _Glass(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

uint64_t sub_188C4C148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18A4A2F58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t UIMutableTraits._vibrancy.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1ED48E990, type metadata accessor for _UIUserInterfaceVibrancy);
  return v5(&v8, &type metadata for UITraitVibrancy, &type metadata for UITraitVibrancy, &protocol witness table for UITraitVibrancy, v6, a2, a3);
}

uint64_t sub_188C4C2AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassInteractionView_coreInteractions;
  swift_beginAccess();
  v4 = sub_18A4A5B68();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_188C4C3E0()
{
  v0 = type metadata accessor for UIPlatformGlassInteractionRepresentable(0);
  sub_188C4B128(&unk_1EA931148, type metadata accessor for UIPlatformGlassInteractionRepresentable);
  return v0;
}

void sub_188C4C444()
{
  sub_18A4A5968();
  if (v0 <= 0x3F)
  {
    sub_18A4A6178();
    if (v1 <= 0x3F)
    {
      sub_1890A47DC(319, &qword_1EA93BA28, MEMORY[0x1E69818E0]);
      if (v2 <= 0x3F)
      {
        sub_1890A4830();
        if (v3 <= 0x3F)
        {
          type metadata accessor for _Glass(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_188C4C52C(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v32 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v32);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_18A4A5968();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18A4A6178();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIPlatformGlassInteractionRepresentable(0);
  v13 = v12[5];
  sub_18A4A6118();
  v14 = MEMORY[0x18CFE0F70](v2 + v13, v11);
  (*(v9 + 8))(v11, v8);
  v15 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle_];
  v16 = *&v15[OBJC_IVAR____UIScrollPocketInteraction_implementation];
  v17 = *(v16 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_isCapsular);
  *(v16 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_isCapsular) = 1;
  if ((v17 & 1) == 0 && *(v16 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers + 8))
  {
    v18 = *(v16 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);

    sub_1890A4410(v16, v18);
  }

  sub_1890A2DB4(v15);
  v19 = v15;
  sub_18A4A5B48();

  if ((v14 & 1) == 0)
  {
    (*(v33 + 16))(v7, v2, v34);
    sub_1890A43A8(v2 + v12[9], v4, type metadata accessor for _Glass);
    v20 = objc_allocWithZone(type metadata accessor for UIPlatformGlassBridgingInteration());
    v21 = sub_188C4C9F4(v7, v4);
    sub_18A4A5B48();
  }

  sub_18A4A60E8();
  v22 = sub_18A4A6078();
  sub_18A4A6088();
  if (sub_18A4A6088() == v22)
  {
    type metadata accessor for UIPlatformGlassFlexInteraction(0);
    v23 = v2 + v12[8];
    v37 = *(v23 + 32);
    v24 = *(v23 + 16);
    v36[0] = *v23;
    v36[1] = v24;
    (*(v33 + 16))(v7, v2, v34);
    v25 = sub_1890A3208(v36, v7);
    sub_1890A43A8(v2 + v12[9], v4, type metadata accessor for _Glass);
    _s9GlassInfoCMa();
    v26 = swift_allocObject();
    v27 = v26 + OBJC_IVAR____TtCE5UIKitCSo18_UIFlexInteraction9GlassInfo_variant;
    sub_1890A43A8(v4 + *(v32 + 24), v26 + OBJC_IVAR____TtCE5UIKitCSo18_UIFlexInteraction9GlassInfo_variant, type metadata accessor for _Glass._GlassVariant);
    *(v27 + *(type metadata accessor for _Glass._GlassVariant(0) + 24)) = 0;
    v28 = *v4;
    v29 = *v4;
    v30 = v25;
    sub_188B7533C(v4);
    *(v26 + OBJC_IVAR____TtCE5UIKitCSo18_UIFlexInteraction9GlassInfo_tint) = v28;
    *&v30[OBJC_IVAR____UIFlexInteraction_glassInfo] = v26;

    v31 = v30;
    sub_18A4A5B48();
  }
}

uint64_t sub_188C4C96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Glass(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_188C4C9F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A5968();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v13, a1, v10);
  sub_1890A43A8(a2, v9, type metadata accessor for _Glass);
  type metadata accessor for GlassElementBridge(0);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7418GlassElementBridge_isGlassSuppressed) = 0;
  (*(v11 + 32))(v14 + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7418GlassElementBridge_proxy, v13, v10);
  sub_188C4CD1C(v9, v14 + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7418GlassElementBridge_glass);
  *&v3[OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7433UIPlatformGlassBridgingInteration_bridge] = v14;
  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  sub_188B7533C(a2);
  (*(v11 + 8))(a1, v10);
  return v15;
}

uint64_t sub_188C4CC3C()
{
  result = sub_18A4A5968();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for _Glass(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_188C4CD1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Glass(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_188C4CDA0()
{
  result = sub_18A4A5B68();
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

id sub_188C4CE9C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassInteractionView_coreInteractions;
  v5 = sub_18A4A5B68();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  (*(v6 + 8))(a1, v5);
  return v7;
}

unint64_t sub_188C4D018()
{
  result = qword_1EA931370;
  if (!qword_1EA931370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931370);
  }

  return result;
}

uint64_t sub_188C4D0C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_18A4A8468();
  v8 = result;
  if (*(v6 + 16))
  {
    v38 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v23 = v20 | (v9 << 6);
      v24 = (*(v6 + 48) + 48 * v23);
      if (a2)
      {
        v25 = *v24;
        v26 = v24[1];
        *(v46 + 9) = *(v24 + 25);
        v45 = v25;
        v46[0] = v26;
        v39 = *(*(v6 + 56) + 8 * v23);
      }

      else
      {
        sub_188C46604(v24, &v45);
        v39 = *(*(v6 + 56) + 8 * v23);
      }

      sub_18A4A8888();
      sub_188C46604(&v45, v42);
      if (v44)
      {
        v40[0] = v42[0];
        v40[1] = v42[1];
        v41 = v43;
        MEMORY[0x18CFE37E0](1);
        sub_18A4A8038();
        sub_188BBA15C(v40);
      }

      else
      {
        v27 = a2;
        v28 = *&v42[0];
        MEMORY[0x18CFE37E0](0);
        v29 = v28;
        a2 = v27;
        MEMORY[0x18CFE37E0](v29);
      }

      result = sub_18A4A88E8();
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
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 48 * v16);
      v18 = v45;
      v19 = v46[0];
      *(v17 + 25) = *(v46 + 9);
      *v17 = v18;
      v17[1] = v19;
      *(*(v8 + 56) + 8 * v16) = v39;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
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
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v38;
      goto LABEL_37;
    }

    v37 = 1 << *(v6 + 32);
    v4 = v38;
    if (v37 >= 64)
    {
      bzero((v6 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v6 + 16) = 0;
  }

LABEL_37:
  *v4 = v8;
  return result;
}

unint64_t sub_188C4D404()
{
  result = qword_1EA931368;
  if (!qword_1EA931368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931368);
  }

  return result;
}

uint64_t sub_188C4D460(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = 48 * v6;
      sub_188C46604(*(a2 + 48) + 48 * v6, v29);
      sub_18A4A8888();
      sub_188C46604(v29, v26);
      if (v28)
      {
        v24[0] = v26[0];
        v24[1] = v26[1];
        v25 = v27;
        MEMORY[0x18CFE37E0](1);
        sub_18A4A8038();
        sub_188BBA15C(v24);
      }

      else
      {
        v10 = *&v26[0];
        MEMORY[0x18CFE37E0](0);
        MEMORY[0x18CFE37E0](v10);
      }

      v11 = sub_18A4A88E8();
      result = sub_188C4680C(v29);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v12)
      {
LABEL_13:
        v13 = *(a2 + 48);
        v14 = (v13 + 48 * v3);
        v15 = (v13 + v9);
        if (48 * v3 < v9 || v14 >= v15 + 3 || v3 != v6)
        {
          v16 = *v15;
          v17 = v15[2];
          v14[1] = v15[1];
          v14[2] = v17;
          *v14 = v16;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
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

id UIButton.pointerStyleProvider.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_188FCFD60;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_188FCF4C4;
    v9[3] = &block_descriptor_58;
    v7 = _Block_copy(v9);
    sub_188A52E38(a1);

    [v3 setPointerStyleProvider_];
    _Block_release(v7);

    return sub_188A55B8C(a1);
  }

  else
  {

    return [v2 setPointerStyleProvider_];
  }
}

uint64_t sub_188C4D7D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188C4D814(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((UIHostingViewBase.updatesWillBeVisible.getter() & 1) == 0)
  {
    return 0;
  }

  result = [a4 window];
  if (result)
  {
    v8 = result;
    v9 = [result screen];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v10 = [v9 displayLinkWithTarget:sub_18A4A86A8() selector:a2];

    swift_unknownObjectRelease();
    return v10;
  }

  return result;
}

void sub_188C4D9A8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (Strong)
    {
      v3 = Strong;

      if (v3 == a1)
      {
        return;
      }
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [(UIView *)v4 _traitOverrides];
    v7 = [(_UITraitOverrides *)v6 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    inited = swift_initStackObject();
    *(inited + 16) = v7;
    v25 = inited;
    sub_188C4DFD4(0);
    v9 = [(UIView *)v5 _traitOverrides];
    v10 = *(v25 + 16);

    [(_UITraitOverrides *)v9 _replaceWithOverrides:v10];
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = [(UIView *)v11 _traitOverrides];
    v14 = [(_UITraitOverrides *)v13 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v15 = swift_initStackObject();
    *(v15 + 16) = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v15 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = [(_UITraitOverrides *)*(v15 + 16) _swiftImplCopy];
      v18 = swift_allocObject();
      *(v18 + 16) = v17;

      v15 = v18;
    }

    v19 = qword_1ED491B40;
    v20 = v17;
    if (v19 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v21 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    v22 = sub_18901A704(&type metadata for MorphableProviderTraitDefinition, 0);
    os_unfair_lock_unlock(v21[2]);
    [(_UITraitOverrides *)v20 _removeTraitToken:v22];

    swift_unknownObjectRelease();
    v23 = [(UIView *)v12 _traitOverrides];
    v24 = *(v15 + 16);

    [(_UITraitOverrides *)v23 _replaceWithOverrides:v24];
  }
}

uint64_t sub_188C4DCD8(void *a1)
{
  swift_unknownObjectWeakAssign();
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7433UIPlatformGlassBridgingInteration_bridge);

    v4 = [(UIView *)a1 _traitOverrides];
    v5 = [(_UITraitOverrides *)v4 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    inited = swift_initStackObject();
    *(inited + 16) = v5;
    v28 = inited;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BA20);
    v8 = objc_allocWithZone(v7);
    v9 = MEMORY[0x1E69E7D40];
    *&v8[*((*MEMORY[0x1E69E7D40] & *v8) + 0x58)] = v3;
    v27.receiver = v8;
    v27.super_class = v7;

    v10 = objc_msgSendSuper2(&v27, sel_init);
    sub_188C4DFD4(v10);

    v11 = v28;
    v12 = [(UIView *)a1 _traitOverrides];
    v13 = *(v11 + 16);

    [(_UITraitOverrides *)v12 _replaceWithOverrides:v13];

    v14 = [(UIView *)a1 _traitOverrides];
    v15 = [(_UITraitOverrides *)v14 _swiftImplCopy];

    v16 = swift_initStackObject();
    *(v16 + 16) = v15;
    v28 = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1890A44FC;
    *(v17 + 24) = v3;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93A3B0);
    v19 = objc_allocWithZone(v18);
    v20 = &v19[*((*v9 & *v19) + 0x58)];
    *v20 = sub_1890A4504;
    v20[1] = v17;
    v26.receiver = v19;
    v26.super_class = v18;

    v21 = objc_msgSendSuper2(&v26, sel_init);
    sub_18901DF38(v21);

    v22 = v28;
    v23 = [(UIView *)a1 _traitOverrides];
    v24 = *(v22 + 16);

    [(_UITraitOverrides *)v23 _replaceWithOverrides:v24];
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_188C4DF9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188C4DFD4(void *a1)
{
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9332F8);
  v17[0] = a1;
  sub_188A55598(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v14[0] = v15;
  v14[1] = v16;
  v3 = *(&v16 + 1);
  sub_188A3F5FC(v14, &qword_1EA934050);
  if (v3)
  {
    *&v15 = a1;
    v4 = a1;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    *v1 = v8;
  }

  v9 = qword_1ED491B40;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v11 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_188C4E254(&type metadata for SwiftUIGlassInfoTraitDefinition, sub_188C4E57C);
  os_unfair_lock_unlock(v11[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970);
  v12 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v10 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

id sub_188C4E254(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v5 = sub_188A78D9C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
    if (a2)
    {
      v8 = objc_opt_self();
      sub_188A52E38(a2);
      swift_unknownObjectRetain();
      if ([v8 _isPlaceholderTraitToken_])
      {
        v9 = swift_unknownObjectRetain();
        v10 = a2(v9);
        sub_188A55B8C(a2);
        swift_unknownObjectRelease_n();
        return v10;
      }

      else
      {
        sub_188A55B8C(a2);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v7 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      v11 = objc_opt_self();
      v12 = sub_18A4A7258();
      v13 = sub_18A4A7258();
      v7 = [v11 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v7, a1, isUniquelyReferenced_nonNull_native, &v17);
    off_1ED491B18 = v17;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for SwiftUIGlassInfoTraitDefinition, &off_1EE43D590, v7, v15);
    swift_unknownObjectRelease();
    off_1ED491B08 = v17;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v7;
}

id sub_188C4E57C(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9332F8);
  v12[0] = 0;
  sub_188A55598(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v10;
  v9[1] = v11;
  v4 = *(&v11 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v4)
  {
    *&v10 = 0;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v7 = [v6 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v7;
}

void sub_188C4E71C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_188C4E770();
  }
}

uint64_t sub_188C4E770()
{
  v1 = v0;
  v2 = sub_18A4A4798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A780);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93A788);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - v10;
  v12 = sub_18A4A4998();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_188BA3D64(v11);
  sub_188BA3DF4(v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    result = sub_188A3F5FC(v8, &qword_1EA93A780);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_188A3F5FC(v8, &qword_1EA93A780);
    sub_18A4A4788();
    result = (*(v3 + 8))(v5, v2);
  }

  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0)) = 0;
  return result;
}

id sub_188C4E9D4()
{
  v0[OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_liftEnabled] = 1;
  v0[OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_flexEnabled] = 1;
  v1 = OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_interactionSpec;
  type metadata accessor for _UIFlexInteractionSpec();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_liquidLensSpec;
  type metadata accessor for _UILiquidLensViewSpec();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _UIFlexInteractionSettings();
  return objc_msgSendSuper2(&v4, sel_initWithDefaultValues);
}

id sub_188C4EA9C()
{
  v1 = OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_ultraSmall;
  type metadata accessor for _UIFlexInteractionUltraSmallVariantSpec();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_small;
  type metadata accessor for _UIFlexInteractionSmallVariantSpec();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_large;
  type metadata accessor for _UIFlexInteractionLargeVariantSpec();
  *&v0[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_loupe;
  type metadata accessor for _UIFlexInteractionLoupeVariantSpec();
  *&v0[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_smallLoupe;
  type metadata accessor for _UIFlexInteractionSmallLoupeVariantSpec();
  *&v0[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_menu;
  type metadata accessor for _UIFlexInteractionMenuVariantSpec();
  *&v0[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8.receiver = v0;
  v8.super_class = type metadata accessor for _UIFlexInteractionSpec();
  return objc_msgSendSuper2(&v8, sel_initWithDefaultValues);
}

id sub_188C4EBE0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for _UIFlexInteractionLargeVariantSpec();
  objc_msgSendSuper2(&v3, sel_setDefaultValues);
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_associatedDimension] = 0x4064000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_bigGlowOpacity] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowOpacity] = 0x3FC999999999999ALL;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowDissipationDistance] = 0x4049000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_liftScalePoints] = 0x4010000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleDistanceThreshold] = 0x40D7700000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementScalePts] = 0x4014000000000000;
  v1 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring] setDampingRatio_];
  [*&v0[v1] setResponse_];
  [*&v0[v1] setTrackingDampingRatio_];
  return [*&v0[v1] setTrackingResponse_];
}

id sub_188C4ED80()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for _UIFlexInteractionLoupeVariantSpec();
  objc_msgSendSuper2(&v3, sel_setDefaultValues);
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_associatedDimension] = 0x4051800000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_liftScalePoints] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleDistanceThreshold] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementNormalizationFactor] = 0x40A3880000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementScalePts] = 0x4059000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMinScale] = 0x3FE8000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMaxScale] = 0x3FF2666666666666;
  v1 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring] setDampingRatio_];
  [*&v0[v1] setResponse_];
  [*&v0[v1] setTrackingDampingRatio_];
  return [*&v0[v1] setTrackingResponse_];
}

id sub_188C4F1F4()
{
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_associatedDimension] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_bigGlowOpacity] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowOpacity] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowDissipationDistance] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_liftScalePoints] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleDistanceThreshold] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementNormalizationFactor] = 0x40C3880000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementScalePts] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMinScale] = 0x3FECCCCCCCCCCCCDLL;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMaxScale] = 0x3FF199999999999ALL;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_interactionPulseNormalizationFactor] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_interactionPulseScalePtsX] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_interactionPulseScalePtsY] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_interactionPulseDriftRatio] = 0;
  v1 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring;
  *&v0[v1] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for _UIFlexInteractionVariantSpec();
  return objc_msgSendSuper2(&v3, sel_initWithDefaultValues);
}

id sub_188C4F3C0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for _UIFlexInteractionSmallVariantSpec();
  objc_msgSendSuper2(&v3, sel_setDefaultValues);
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_associatedDimension] = 0x4046000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_bigGlowOpacity] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowOpacity] = 0x3FD3333333333333;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowDissipationDistance] = 0x4049000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_liftScalePoints] = 0x4030000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleDistanceThreshold] = 0x40B7700000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementScalePts] = 0x4024000000000000;
  v1 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring] setDampingRatio_];
  [*&v0[v1] setResponse_];
  [*&v0[v1] setTrackingDampingRatio_];
  return [*&v0[v1] setTrackingResponse_];
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_188C4F5E0(char *a1)
{
  v2 = &a1[OBJC_IVAR____UINavigationBarHostedViewWrapper_model];
  [a1 setFrame_];
  [a1 setAlpha_];
  v3 = [a1 layer];
  v4 = sub_18A4A2D28();
  v5 = sub_18A4A7258();
  [v3 setValue:v4 forKeyPath:v5];
}

uint64_t sub_188C4F6D0@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  a2[9] = 0u;
  a2[10] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v3 = *(result + 16);
  if (v3)
  {
    v5 = v2[15];
    v6 = v2[16];
    v7 = result + 32;
    v8 = v2[17];
    v9 = v2[18];
    v10 = 1.79769313e308;
    do
    {
      sub_188E5B14C(v7, v18);
      v23.origin.x = *(&v19 + 1);
      *&v23.origin.y = v20;
      *&v23.size.height = v21;
      MidX = CGRectGetMidX(v23);
      v24.origin.x = v5;
      v24.origin.y = v6;
      v24.size.width = v8;
      v24.size.height = v9;
      v17 = vabdd_f64(MidX, CGRectGetMidX(v24));
      if (v17 < v10)
      {
        result = sub_188A3F5FC(a2, &qword_1EA934730);
        v11 = v21;
        a2[8] = v20;
        a2[9] = v11;
        a2[10] = v22;
        v12 = v18[5];
        a2[4] = v18[4];
        a2[5] = v12;
        v13 = v19;
        a2[6] = v18[6];
        a2[7] = v13;
        v14 = v18[1];
        *a2 = v18[0];
        a2[1] = v14;
        v15 = v18[3];
        v10 = v17;
        a2[2] = v18[2];
        a2[3] = v15;
      }

      else
      {
        result = sub_188C4F518(v18);
      }

      v7 += 176;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_188C4F818(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v29 = a2;
    v14 = v5;
    v15 = result;
    while (v7 < *(a3 + 16))
    {
      sub_188E5B14C(v8, v27);
      v10 = v6(v27);
      if (v3)
      {
        sub_188C4F518(v27);

        goto LABEL_15;
      }

      if (v10)
      {
        v24 = v27[8];
        v25 = v27[9];
        v26 = v27[10];
        v20 = v27[4];
        v21 = v27[5];
        v22 = v27[6];
        v23 = v27[7];
        v16 = v27[0];
        v17 = v27[1];
        v18 = v27[2];
        v19 = v27[3];
        result = swift_isUniquelyReferenced_nonNull_native();
        v28 = v9;
        if ((result & 1) == 0)
        {
          result = sub_188C46250(0, *(v9 + 16) + 1, 1);
          v9 = v28;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_188C46250((v11 > 1), v12 + 1, 1);
          v9 = v28;
        }

        *(v9 + 16) = v12 + 1;
        v13 = (v9 + 176 * v12);
        v13[3] = v17;
        v13[4] = v18;
        v13[2] = v16;
        v13[7] = v21;
        v13[8] = v22;
        v13[5] = v19;
        v13[6] = v20;
        v13[11] = v25;
        v13[12] = v26;
        v13[9] = v23;
        v13[10] = v24;
        v5 = v14;
        v6 = v15;
      }

      else
      {
        result = sub_188C4F518(v27);
      }

      ++v7;
      v8 += 176;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

void sub_188C4FA84(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
  [v4 _setPrefersClientLayer_];
  [v4 setHidesSourceView_];
  [v4 setMatchesAlpha_];
  [v4 setMatchesTransform_];
  [v4 setMatchesPosition_];
  [v4 setAllowsHitTesting_];
  [v1 addSubview_];
  v5 = OBJC_IVAR____TtC5UIKit18ContentLensingView_portals;
  swift_beginAccess();
  v6 = *&v1[v5];
  if ((v6 & 0xC000000000000001) == 0)
  {
    v10 = v4;
    goto LABEL_8;
  }

  if (v6 < 0)
  {
    v7 = *&v1[v5];
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = v4;
  v9 = sub_18A4A7F68();
  if (!__OFADD__(v9, 1))
  {
    *&v2[v5] = sub_18907C2E8(v7, v9 + 1);
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *&v2[v5];
    sub_188C4FC24(v4, a1, isUniquelyReferenced_nonNull_native);
    *&v2[v5] = v13;
    swift_endAccess();
    v12.receiver = v2;
    v12.super_class = type metadata accessor for ContentLensingView();
    objc_msgSendSuper2(&v12, sel__addTrackedElementFor_with_, a1, 0);

    return;
  }

  __break(1u);
}

unint64_t sub_188C4FC84(uint64_t a1)
{
  result = sub_188C501A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188C4FCAC(uint64_t a1)
{
  result = sub_188C501FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188C4FCD8()
{
  result = qword_1EA9312A0;
  if (!qword_1EA9312A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9312A0);
  }

  return result;
}

id _getRestorationInProgressDictionary(void *a1, int a2, BOOL *a3)
{
  v5 = _restorationInProgressFilePath(a1);
  v6 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfURL:v5];
  if (a3)
  {
    *a3 = v6 != 0;
  }

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2 == 0;
  }

  if (v7)
  {
    v8 = v6;
LABEL_11:
    v12 = v8;
    v11 = v8;
    goto LABEL_13;
  }

  v9 = MEMORY[0x1E695DF90];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  v11 = [v9 dictionaryWithObjectsAndKeys:{v10, @"kRestorationTriesLeft", 0}];

  if ([v11 writeToURL:v5 atomically:1])
  {
    v8 = v11;
    goto LABEL_11;
  }

  NSLog(&cfstr_WarningUnableT_1.isa);
  v12 = 0;
LABEL_13:

  return v12;
}

unint64_t sub_188C4FED0()
{
  result = qword_1EA931260;
  if (!qword_1EA931260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931260);
  }

  return result;
}

uint64_t sub_188C4FF24(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v9);
      result = sub_18A4A88E8();
      v10 = result & v7;
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
        v12 = (v11 + v3);
        v13 = (v11 + v6);
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

unint64_t sub_188C501A8()
{
  result = qword_1EA931290;
  if (!qword_1EA931290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931290);
  }

  return result;
}

unint64_t sub_188C501FC()
{
  result = qword_1EA9312B0;
  if (!qword_1EA9312B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9312B0);
  }

  return result;
}

unint64_t sub_188C50254()
{
  result = qword_1EA9312A8;
  if (!qword_1EA9312A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9312A8);
  }

  return result;
}

uint64_t _getRestorationRetryCountAndUpdateIfNecessary(void *a1)
{
  v1 = a1;
  v2 = 1;
  v9 = 1;
  v3 = _getRestorationInProgressDictionary(v1, 1, &v9);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"kRestorationTriesLeft"];
    v6 = [v5 integerValue];
    v2 = v6 - 1;

    if (v9 == 1 && v6 >= 2)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v2];
      [v4 setObject:v7 forKey:@"kRestorationTriesLeft"];

      if ((_updateRestorationInProgressFile(v1, v4) & 1) == 0)
      {
        NSLog(&cfstr_WarningUnableT_0.isa);
        v2 = 0;
      }
    }
  }

  return v2;
}

id _restorationInProgressFilePath(void *a1)
{
  v1 = _restorationDirectory(a1);
  v2 = [v1 URLByAppendingPathComponent:@"inprogress.data" isDirectory:0];

  return v2;
}

void _incrementRestorationMarkerCount(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v13 = 0;
  v7 = v5;
  objc_sync_enter(v7);
  if (qword_1EA993198 > 0 || [v7 _isNormalRestorationInProgress])
  {
    if (a3 & 1) != 0 || ([v7 _isRestorationExtended])
    {
      v8 = 0;
    }

    else
    {
      v9 = _getRestorationInProgressDictionary(v6, 0, &v13);
      v8 = v9;
      if (v9)
      {
        v10 = [v9 objectForKey:@"kRestorationExtended"];
        v11 = [v10 BOOLValue];

        if ((v11 & 1) == 0)
        {
          v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
          [v8 setObject:v12 forKey:@"kRestorationExtended"];

          _updateRestorationInProgressFile(v6, v8);
        }
      }

      [v7 _setRestorationExtended:1];
    }

    ++qword_1EA993198;
    objc_sync_exit(v7);
  }

  else
  {
    objc_sync_exit(v7);

    NSLog(&cfstr_WarningExtends.isa);
  }
}

void _decrementRestorationMarkerCount(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  obj = v3;
  objc_sync_enter(obj);
  v5 = obj;
  v6 = --qword_1EA993198;
  if (!qword_1EA993198)
  {
    _deleteRestorationInProgressFile(v4);
    v6 = qword_1EA993198;
    v5 = obj;
  }

  objc_sync_exit(v5);

  if (v6 < 0)
  {
    NSLog(&cfstr_WarningComplet.isa);
  }
}

void _deleteRestorationInProgressFile(void *a1)
{
  v1 = _restorationInProgressFilePath(a1);
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = 0;
  [v2 removeItemAtURL:v1 error:&v3];
}

uint64_t GetImageAtPath(void *a1, int a2, double a3)
{
  v10 = 0;
  v4 = ImageSourceAtPath(a1, a2, &v10);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [UIImage alloc];
  v7 = [[_UIImageCGImageContent alloc] initWithCGImageSource:v5 scale:a3];
  v8 = [(UIImage *)v6 _initWithContent:v7 orientation:v10];

  CFRelease(v5);
  return v8;
}

uint64_t __UITraitEnvironmentLayoutDirectionFromCUILayoutDirection(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 5)
    {
      return 0;
    }

    if (a1 == 4)
    {
      return 1;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v3 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v5 = 134217984;
        v6 = a1;
        _os_log_fault_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "Got an unexpected layout direction from CoreUI: %lu", &v5, 0xCu);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &__UITraitEnvironmentLayoutDirectionFromCUILayoutDirection___s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 134217984;
        v6 = a1;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Got an unexpected layout direction from CoreUI: %lu", &v5, 0xCu);
      }
    }
  }

  return -1;
}

uint64_t sub_188C51044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>, __n128 a8@<Q3>, __n128 a9@<Q4>, __n128 a10@<Q5>, __n128 a11@<Q6>, __n128 a12@<Q7>, double a13)
{
  v14 = v13;
  v184 = a11;
  v185 = a12;
  v182 = a9;
  v183 = a10;
  v179 = a7;
  v180 = a8;
  v177 = a5;
  v178 = a6;
  v181 = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366C0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v170 = (v161.f64 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936878);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v171 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v172 = (v161.f64 - v24);
  MEMORY[0x1EEE9AC00](v25);
  *&v173.f64[0] = v161.f64 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v161 - v28;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366B8);
  MEMORY[0x1EEE9AC00](v176);
  v169 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v161 - v32;
  v175 = v14;
  *(v14 + 81) = a3;
  sub_188AA72A8(a2, &v246);
  if (v248 != 2)
  {
    v168 = a1;
    v174 = v18;
    sub_188AA7808(&v246);
    v167 = a2;
    sub_188AA72A8(a2, &v246);
    if (v248 == 1)
    {
      v251 = *&v247[16];
      v252 = *&v247[32];
      v253 = *&v247[48];
      v249 = v246;
      v250 = *v247;
      sub_188A5EBAC(&v249, &v246);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936558);
      swift_dynamicCast();
      sub_188A5EBAC((&v251 + 8), &v190);
      swift_dynamicCast();
      v37 = v191;
      v38 = v192;
      v39 = v193;
      v40 = v194;
      v41 = v186;
      v42 = v187;
      v43 = v188;
      v44 = v189;
      v45 = v181;
      v181[8] = v191;
      v45[9] = v38;
      v45[10] = v39;
      v45[11] = v40;
      v45[14] = v41;
      v45[15] = v42;
      v45[16] = v43;
      v45[17] = v44;
      *v45 = v41;
      v45[1] = v42;
      v45[2] = v43;
      v45[3] = v44;
      v45[4] = v37;
      v45[5] = v38;
      v45[6] = v39;
      v45[7] = v40;
      *(v45 + 6) = xmmword_18A650B90;
      return swift_storeEnumTagMultiPayload();
    }

    sub_188AA7808(&v246);
    v46 = v175;
    v47 = v168;
    v48 = v19;
    v49 = *&v173.f64[0];
    if (a3)
    {
      v50 = CACurrentMediaTime();
      v51 = v50 - *v46;
      if (a13 * 0.9 < v51)
      {
        if (*v46 != 0.0)
        {
          if (*(v46 + 120) == 1)
          {
            *(v46 + 120) = 0;
            *(v46 + 104) = 0u;
            *(v46 + 88) = 0u;
          }

          else
          {
            *&v62.f64[0] = v182.n128_u64[0];
            *&v62.f64[1] = v183.n128_u64[0];
            *&v63.f64[0] = v184.n128_u64[0];
            *&v63.f64[1] = v185.n128_u64[0];
            if ((*(v46 + 80) & 1) == 0)
            {
              v62 = vsubq_f64(v62, *(v46 + 48));
              v63 = vsubq_f64(v63, *(v46 + 64));
            }

            v64 = 1.0 / v51;
            __asm
            {
              FMOV            V5.2D, #0.25
              FMOV            V6.2D, #0.75
            }

            *(v46 + 88) = vaddq_f64(vmulq_f64(vmulq_n_f64(v62, v64), _Q6), vmulq_f64(*(v46 + 88), _Q5));
            *(v46 + 104) = vaddq_f64(vmulq_f64(vmulq_n_f64(v63, v64), _Q6), vmulq_f64(*(v46 + 104), _Q5));
          }
        }

        v71 = v179.n128_u64[0];
        *(v46 + 16) = v178.n128_u64[0];
        *(v46 + 24) = v71;
        *(v46 + 32) = v180.n128_u64[0];
        *(v46 + 40) = 0;
        v72 = v177.n128_u64[0];
        *v46 = v50;
        *(v46 + 8) = v72;
      }
    }

    v73 = *(v46 + 64);
    v165 = *(v46 + 48);
    v166 = v73;
    v74 = *(v46 + 80);
    v75 = v183.n128_u64[0];
    *(v46 + 48) = v182.n128_u64[0];
    *(v46 + 56) = v75;
    v76 = v185.n128_u64[0];
    *(v46 + 64) = v184.n128_u64[0];
    *(v46 + 72) = v76;
    *(v46 + 80) = 0;
    sub_188A3F29C(v47, v49, &qword_1EA936878);
    v77 = *(v48 + 48);
    if (v77(v49, 1, v174) == 1)
    {
      v78 = &qword_1EA936878;
    }

    else
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        v164 = v74;
        v102 = *(v49 + 176);
        v245[10] = *(v49 + 160);
        v245[11] = v102;
        v103 = *(v49 + 112);
        v245[6] = *(v49 + 96);
        v245[7] = v103;
        v104 = *(v49 + 144);
        v245[8] = *(v49 + 128);
        v245[9] = v104;
        v105 = *(v49 + 48);
        v245[2] = *(v49 + 32);
        v245[3] = v105;
        v106 = *(v49 + 80);
        v245[4] = *(v49 + 64);
        v245[5] = v106;
        v107 = *(v49 + 16);
        v245[0] = *v49;
        v245[1] = v107;
        v108 = *(v49 + 192);
        v109 = *(v49 + 208);
        v111 = *(v49 + 224);
        v110 = *(v49 + 240);
        v112 = *(v49 + 256);
        v113 = *(v49 + 272);
        v245[20] = *(v49 + 320);
        v115 = *(v49 + 288);
        v114 = *(v49 + 304);
        v245[12] = v108;
        v245[13] = v109;
        v173 = v109;
        v245[14] = v111;
        v245[15] = v110;
        v162 = v113;
        v163 = v111;
        v245[16] = v112;
        v245[17] = v113;
        v245[18] = v115;
        v245[19] = v114;
        v161 = v115;
        v79 = v167;
        sub_188AA72A8(v167, &v246);
        if (v248 == 3 && v246 == 1 && (v116 = vorrq_s8(vorrq_s8(*&v247[8], *&v247[40]), vorrq_s8(*&v247[24], *&v247[56])), !(*&vorr_s8(*v116.i8, *&vextq_s8(v116, v116, 8uLL)) | *v247 | *(&v246 + 1))))
        {
          sub_188AA7808(&v246);
        }

        else
        {
          sub_188AA7808(&v246);
          sub_188AA72A8(v79, &v246);
          if (v248)
          {
            sub_188AA7808(&v246);
LABEL_25:
            v80 = v172;
            sub_188A3F29C(v47, v172, &qword_1EA936878);
            v81 = v174;
            if (v77(v80, 1, v174) == 1)
            {
              v82 = &qword_1EA936878;
            }

            else
            {
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                v84 = v80[4];
                v83 = v80[5];
                v86 = v80[6];
                v85 = v80[7];
                sub_188AA72A8(v79, &v246);
                if (v248 != 3 || (v87 = vorrq_s8(vorrq_s8(*&v247[8], *&v247[40]), vorrq_s8(*&v247[24], *&v247[56])), *&vorr_s8(*v87.i8, *&vextq_s8(v87, v87, 8uLL)) | *v247 | *(&v246 + 1) | v246))
                {
                  sub_188AA7808(&v246);
                  sub_188AA72A8(v79, &v246);
                  if (v248 != 3 || v246 != 1 || (v88 = vorrq_s8(vorrq_s8(*&v247[8], *&v247[40]), vorrq_s8(*&v247[24], *&v247[56])), *&vorr_s8(*v88.i8, *&vextq_s8(v88, v88, 8uLL)) | *v247 | *(&v246 + 1)))
                  {
                    sub_188AA7808(&v246);
                    sub_188AA72A8(v79, &v246);
                    if (v248)
                    {
                      sub_188AA7808(&v246);
LABEL_37:
                      v89 = v171;
                      sub_188A3F29C(v168, v171, &qword_1EA936878);
                      v90 = v77(v89, 1, v81);
                      if (v90 == 1)
                      {
                        sub_188A3F5FC(v89, &qword_1EA936878);
                        v91 = 0.0;
                        v92 = 0.0;
                        v93 = 0.0;
                        v94 = 0.0;
                      }

                      else
                      {
                        v95 = v170;
                        sub_188A3F29C(v89, v170, &qword_1EA9366C0);
                        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                        if (EnumCaseMultiPayload > 1)
                        {
                          if (EnumCaseMultiPayload == 2)
                          {
                            v97 = v95;
                            v98 = v169;
                            sub_188A3F704(v97, v169, &qword_1EA9366B8);
                            v91 = sub_188C54A3C();
                            v92 = v99;
                            v93 = v100;
                            v94 = v101;
                            v79 = v167;
                            sub_188A3F5FC(v98, &qword_1EA9366B8);
                          }

                          else
                          {
                            v91 = v95[4];
                            v92 = v95[5];
                            v93 = v95[6];
                            v94 = v95[7];
                          }
                        }

                        else
                        {
                          v94 = 0.0;
                          v93 = 0.0;
                          v92 = 0.0;
                          v91 = 0.0;
                          if (!EnumCaseMultiPayload)
                          {
                            v91 = v95[26];
                            v92 = v95[27];
                            v93 = v95[28];
                            v94 = v95[29];
                          }
                        }

                        sub_188A3F5FC(v89, &qword_1EA9366C0);
                      }

                      sub_188AA72A8(v79, &v246);
                      if (v248)
                      {
                        if (v248 != 2)
                        {
                          sub_188AA7808(&v246);
                          v138 = 0.0;
                          v139 = 0.0;
                          v140 = 0.0;
                          v141 = 0.0;
                          if (v90 != 1)
                          {
                            v138 = v94;
                            v139 = v93;
                            v140 = v92;
                            v141 = v91;
                          }

                          v142 = v183.n128_u64[0];
                          v143 = v181;
                          *v181 = v182.n128_u64[0];
                          *(v143 + 1) = v142;
                          v144 = v185.n128_u64[0];
                          v143[2] = v184.n128_f64[0];
                          *(v143 + 3) = v144;
                          v143[4] = v141;
                          v143[5] = v140;
                          v143[6] = v139;
                          v143[7] = v138;
                          return swift_storeEnumTagMultiPayload();
                        }

LABEL_54:
                        v117 = v246;
                        v118 = BYTE8(v246);
                        v119 = v181;
                        *v181 = 0;
                        *(v119 + 56) = 0;
                        v120 = v176;
                        sub_188C52638();
                        sub_18A4A49B8();
                        v121 = *(v120 + 64);
                        v119[1] = v117;
                        v123 = v177.n128_u64[0];
                        v122 = v178.n128_u64[0];
                        v119[2] = v177.n128_u64[0];
                        v119[3] = v122;
                        v125 = v179.n128_u64[0];
                        v124 = v180.n128_u64[0];
                        v119[4] = v179.n128_u64[0];
                        v119[5] = v124;
                        v119[6] = v123;
                        v119[7] = v122;
                        v119[8] = v125;
                        v119[9] = v124;
                        v126 = v183.n128_u64[0];
                        v119[10] = v182.n128_u64[0];
                        v119[11] = v126;
                        v127 = v185.n128_u64[0];
                        v119[12] = v184.n128_u64[0];
                        v119[13] = v127;
                        *(v119 + v121) = v118;
                        return swift_storeEnumTagMultiPayload();
                      }

                      v128 = v175;
                      v251 = *&v247[16];
                      v252 = *&v247[32];
                      v253 = *&v247[48];
                      v254 = *&v247[64];
                      v249 = v246;
                      v250 = *v247;
                      memset(v221, 0, 73);
                      v223 = 0;
                      v222 = 0;
                      v225 = 0;
                      v224 = 0;
                      v226 = 0u;
                      v227 = 0u;
                      v228 = 0u;
                      v229 = 0;
                      v230 = 0x3FF0000000000000;
                      v237 = v177.n128_u64[0];
                      v238 = v178.n128_u64[0];
                      v239 = v179.n128_u64[0];
                      v240 = v180.n128_u64[0];
                      v231 = v182.n128_u64[0];
                      v232 = v183.n128_u64[0];
                      v233 = v184.n128_u64[0];
                      v234 = v185.n128_u64[0];
                      v235 = 0u;
                      v236 = 0u;
                      v243 = 0u;
                      v244 = 0u;
                      *&v241.f64[0] = v177.n128_u64[0];
                      *&v241.f64[1] = v178.n128_u64[0];
                      *&v242.f64[0] = v179.n128_u64[0];
                      *&v242.f64[1] = v180.n128_u64[0];
                      sub_188AB1304(&v249, 1);
                      if (v90 != 1)
                      {
                        v235.f64[0] = v91;
                        v235.f64[1] = v92;
                        v236.f64[0] = v93;
                        v236.f64[1] = v94;
                      }

                      if ((*(&v251 + 1) & 0x8000000000000000) != 0)
                      {
                        if (*(&v253 + 1) > 0.0 && (*(v128 + 120) & 1) == 0)
                        {
                          v129 = *(&v253 + 1) / 1000.0 / (1.0 - *(&v253 + 1));
                          v130 = vaddq_f64(v241, vmulq_n_f64(*(v128 + 88), v129));
                          v131 = vaddq_f64(vmulq_n_f64(*(v128 + 104), v129), v242);
                          v241 = v130;
                          v242 = v131;
                        }

                        if (v254 > 0.0)
                        {
                          *&v132.f64[0] = v182.n128_u64[0];
                          *&v132.f64[1] = v183.n128_u64[0];
                          *&v133.f64[0] = v177.n128_u64[0];
                          *&v133.f64[1] = v178.n128_u64[0];
                          v134 = vsubq_f64(v132, v133);
                          *&v133.f64[0] = v184.n128_u64[0];
                          *&v133.f64[1] = v185.n128_u64[0];
                          *&v135.f64[0] = v179.n128_u64[0];
                          *&v135.f64[1] = v180.n128_u64[0];
                          v136 = 6.28318531 / *&v249 * (6.28318531 / *&v249) * v254;
                          v235 = vaddq_f64(vmulq_n_f64(v134, v136), v235);
                          v236 = vaddq_f64(vmulq_n_f64(vsubq_f64(v133, v135), v136), v236);
                        }
                      }

                      v137 = v221;
LABEL_64:
                      memcpy(v181, v137, 0x150uLL);
                      return swift_storeEnumTagMultiPayload();
                    }

                    sub_188AA72A8(v79, &v246);
                    if (!v248)
                    {
                      v156 = v175;
                      v251 = *&v247[16];
                      v252 = *&v247[32];
                      v253 = *&v247[48];
                      v254 = *&v247[64];
                      v249 = v246;
                      v250 = *v247;
                      memset(v195, 0, 73);
                      v197 = 0;
                      v196 = 0;
                      v199 = 0;
                      v198 = 0;
                      v200 = 0u;
                      v201 = 0u;
                      v202 = 0u;
                      v203 = 0;
                      v204 = 0x3FF0000000000000;
                      v213 = v177.n128_u64[0];
                      v214 = v178.n128_u64[0];
                      v215 = v179.n128_u64[0];
                      v216 = v180.n128_u64[0];
                      v205 = v182.n128_u64[0];
                      v206 = v183.n128_u64[0];
                      v207 = v184.n128_u64[0];
                      v208 = v185.n128_u64[0];
                      v219 = 0u;
                      v220 = 0u;
                      *&v217.f64[0] = v177.n128_u64[0];
                      *&v217.f64[1] = v178.n128_u64[0];
                      *&v218.f64[0] = v179.n128_u64[0];
                      *&v218.f64[1] = v180.n128_u64[0];
                      sub_188AB1304(&v249, 1);
                      v209 = v84;
                      v210 = v83;
                      v211 = v86;
                      v212 = v85;
                      if ((*(&v251 + 1) & 0x8000000000000000) != 0)
                      {
                        if (*(&v253 + 1) > 0.0 && (*(v156 + 120) & 1) == 0)
                        {
                          v157 = *(&v253 + 1) / 1000.0 / (1.0 - *(&v253 + 1));
                          v158 = vaddq_f64(v217, vmulq_n_f64(*(v156 + 88), v157));
                          v159 = vaddq_f64(vmulq_n_f64(*(v156 + 104), v157), v218);
                          v217 = v158;
                          v218 = v159;
                        }

                        if (v254 > 0.0)
                        {
                          v160 = 6.28318531 / *&v249 * (6.28318531 / *&v249) * v254;
                          v209 = v84 + (v182.n128_f64[0] - v177.n128_f64[0]) * v160;
                          v210 = v83 + (v183.n128_f64[0] - v178.n128_f64[0]) * v160;
                          v211 = v86 + (v184.n128_f64[0] - v179.n128_f64[0]) * v160;
                          v212 = v85 + (v185.n128_f64[0] - v180.n128_f64[0]) * v160;
                        }
                      }

                      v137 = v195;
                      goto LABEL_64;
                    }

                    if (v248 == 2)
                    {
                      goto LABEL_54;
                    }
                  }
                }

                sub_188AA7808(&v246);
                v153 = v183.n128_u64[0];
                v154 = v181;
                *v181 = v182.n128_u64[0];
                *(v154 + 1) = v153;
                v155 = v185.n128_u64[0];
                v154[2] = v184.n128_f64[0];
                *(v154 + 3) = v155;
                v154[4] = v84;
                v154[5] = v83;
                v154[6] = v86;
                v154[7] = v85;
                return swift_storeEnumTagMultiPayload();
              }

              v82 = &qword_1EA9366C0;
            }

            sub_188A3F5FC(v80, v82);
            goto LABEL_37;
          }

          v251 = *&v247[16];
          v252 = *&v247[32];
          v253 = *&v247[48];
          v254 = *&v247[64];
          v249 = v246;
          v250 = *v247;
          v145 = *&v247[24];
          v146 = v164;
          if ((a3 & 1) == 0)
          {
            if ((*(&v251 + 1) & 0x8000000000000000) != 0 && *(&v253 + 1) > 0.0 && (*(v46 + 120) & 1) == 0)
            {
              v147 = *(&v253 + 1) / 1000.0 / (1.0 - *(&v253 + 1));
              v148 = vaddq_f64(v162, vmulq_n_f64(*(v46 + 88), v147));
              v149 = vaddq_f64(v161, vmulq_n_f64(*(v46 + 104), v147));
              v245[17] = v148;
              v245[18] = v149;
            }

            *(v46 + 104) = 0u;
            *(v46 + 88) = 0u;
            *(v46 + 120) = 1;
            *v46 = 0;
          }

          if (v145 < 0 && !((v254 <= 0.0) | v146 & 1))
          {
            *&v150.f64[0] = v184.n128_u64[0];
            *&v150.f64[1] = v185.n128_u64[0];
            *&v151.f64[0] = v182.n128_u64[0];
            *&v151.f64[1] = v183.n128_u64[0];
            v152 = 6.28318531 / *&v249 * (6.28318531 / *&v249) * v254;
            v245[13] = vaddq_f64(v173, vmulq_n_f64(vsubq_f64(v151, v165), v152));
            v245[14] = vaddq_f64(v163, vmulq_n_f64(vsubq_f64(v150, v166), v152));
          }

          sub_188AB1304(&v249, 0);
        }

        *&v245[11] = v182.n128_u64[0];
        *(&v245[11] + 1) = v183.n128_u64[0];
        *&v245[12] = v184.n128_u64[0];
        *(&v245[12] + 1) = v185.n128_u64[0];
        memcpy(v181, v245, 0x150uLL);
        return swift_storeEnumTagMultiPayload();
      }

      v78 = &qword_1EA9366C0;
    }

    sub_188A3F5FC(v49, v78);
    v79 = v167;
    goto LABEL_25;
  }

  v34 = v246;
  v35 = BYTE8(v246);
  sub_188A3F29C(a1, v29, &qword_1EA936878);
  if ((*(v19 + 48))(v29, 1, v18) == 1)
  {
    v36 = &qword_1EA936878;
LABEL_14:
    sub_188A3F5FC(v29, v36);
    v52 = v181;
    *v181 = 0;
    *(v52 + 56) = 0;
    v53 = v176;
    sub_188C52638();
    sub_18A4A49B8();
    v54 = *(v53 + 64);
    v52[1] = v34;
    v56 = v177.n128_u64[0];
    v55 = v178.n128_u64[0];
    v52[2] = v177.n128_u64[0];
    v52[3] = v55;
    v58 = v179.n128_u64[0];
    v57 = v180.n128_u64[0];
    v52[4] = v179.n128_u64[0];
    v52[5] = v57;
    v52[6] = v56;
    v52[7] = v55;
    v52[8] = v58;
    v52[9] = v57;
    v59 = v183.n128_u64[0];
    v52[10] = v182.n128_u64[0];
    v52[11] = v59;
    v60 = v185.n128_u64[0];
    v52[12] = v184.n128_u64[0];
    v52[13] = v60;
    *(v52 + v54) = v35;
    return swift_storeEnumTagMultiPayload();
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v36 = &qword_1EA9366C0;
    goto LABEL_14;
  }

  sub_188A3F704(v29, v33, &qword_1EA9366B8);
  sub_188CBB4B0(v34, v182.n128_f64[0], v183.n128_f64[0], v184.n128_f64[0], v185.n128_f64[0]);

  sub_188A3F704(v33, v181, &qword_1EA9366B8);
  return swift_storeEnumTagMultiPayload();
}

void sub_188C52008(void *a1@<X8>)
{
  v3 = v1[3];
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v3 > 0.0)
  {
    v6 = *v1 / v3;
    v5 = v1[1] / v3;
    v4 = v1[2] / v3;
  }

  v7 = [objc_allocWithZone(UIColor) initWithRed:v6 green:v5 blue:v4 alpha:v3];
  v8 = [v7 CGColor];

  type metadata accessor for CGColor(0);
  a1[3] = v9;
  *a1 = v8;
}

unint64_t sub_188C520C4()
{
  result = qword_1ED48D400;
  if (!qword_1ED48D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D400);
  }

  return result;
}

double sub_188C52118(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0;
  sub_188A55598(a1, v9);
  type metadata accessor for CGColor(0);
  swift_dynamicCast();
  v2 = [objc_allocWithZone(UIColor) initWithCGColor_];

  [v2 getRed:&v8 green:&v7 blue:&v6 alpha:&v5];
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v5 * v8;
}

uint64_t sub_188C52214(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) == 0))
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = 0.0;
    if (Strong)
    {
      v13 = Strong;
      if (a1)
      {
        v14 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v14 = [Strong layer];
      }

      v15 = v14;

      v16 = sub_18A4A7258();
      v17 = [v15 valueForKeyPath_];

      if (v17)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v33, 0, 32);
      }

      sub_188A3F29C(v33, &v31, &qword_1EA934050);
      if (v32)
      {
        sub_188A55538(&v31, v30);
        sub_188A55598(v30, v29);
        v18 = sub_188C52118(v29);
        v20 = v19;
        v22 = v21;
        v12 = v23;
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        sub_188A3F5FC(v33, &qword_1EA934050);
LABEL_15:
        v24 = swift_unknownObjectWeakLoadStrong();
        v25 = swift_allocObject();
        swift_weakInit();
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        *(v26 + 24) = a1 & 1;
        *(v26 + 32) = a2;
        *(v26 + 40) = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364D8);
        swift_allocObject();

        v10 = sub_188C52614(v24, sub_188F0E03C, v26, v18, v20, v22, v12);

        *(v10 + 272) = 1;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v31 = *(v4 + 48);
        *(v4 + 48) = 0x8000000000000000;
        sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, &v31, &qword_1ED48D3E8, &qword_1EA9364D8);

        *(v4 + 48) = v31;
        swift_endAccess();
        sub_188A34360(&qword_1ED48D3E8, &qword_1EA9364D8);
        goto LABEL_16;
      }

      sub_188A3F5FC(v33, &qword_1EA934050);
    }

    v22 = 0.0;
    v20 = 0.0;
    v18 = 0.0;
    goto LABEL_15;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364D8);
  v10 = swift_dynamicCastClassUnconditional();
  sub_188A34360(&qword_1ED48D3E8, &qword_1EA9364D8);
  swift_unknownObjectRetain();
LABEL_16:
  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

unint64_t sub_188C52638()
{
  result = qword_1ED48D418;
  if (!qword_1ED48D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D418);
  }

  return result;
}

unint64_t sub_188C5268C()
{
  result = qword_1ED48CE38;
  if (!qword_1ED48CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CE38);
  }

  return result;
}

unint64_t sub_188C526E0()
{
  result = qword_1ED48CE50;
  if (!qword_1ED48CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CE50);
  }

  return result;
}

unint64_t sub_188C52734()
{
  result = qword_1ED48D428;
  if (!qword_1ED48D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D428);
  }

  return result;
}

unint64_t sub_188C52788()
{
  result = qword_1ED48D440;
  if (!qword_1ED48D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D440);
  }

  return result;
}

uint64_t sub_188C527DC(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) == 0))
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = 0.0;
    if (Strong)
    {
      v13 = Strong;
      if (a1)
      {
        v14 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v14 = [Strong layer];
      }

      v15 = v14;

      v16 = sub_18A4A7258();
      v17 = [v15 valueForKeyPath_];

      if (v17)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v32, 0, 32);
      }

      sub_188A3F29C(v32, &v30, &qword_1EA934050);
      if (v31)
      {
        sub_188A55538(&v30, v29);
        sub_188A55598(v29, v28);
        sub_188A55598(v28, v27);
        sub_188A34624(0, &qword_1ED48EC30);
        swift_dynamicCast();
        [v26 CGSizeValue];
        v12 = v18;
        v20 = v19;

        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        sub_188A3F5FC(v32, &qword_1EA934050);
LABEL_15:
        v21 = swift_unknownObjectWeakLoadStrong();
        v22 = swift_allocObject();
        swift_weakInit();
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        *(v23 + 24) = a1 & 1;
        *(v23 + 32) = a2;
        *(v23 + 40) = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364B0);
        swift_allocObject();

        v10 = sub_188C52C18(v21, sub_188F0E03C, v23, v12, v20);

        *(v10 + 192) = 1;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v30 = *(v4 + 48);
        *(v4 + 48) = 0x8000000000000000;
        sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, &v30, &qword_1ED48D3F0, &qword_1EA9364B0);

        *(v4 + 48) = v30;
        swift_endAccess();
        sub_188A34360(&qword_1ED48D3F0, &qword_1EA9364B0);
        goto LABEL_16;
      }

      sub_188A3F5FC(v32, &qword_1EA934050);
    }

    v20 = 0.0;
    goto LABEL_15;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364B0);
  v10 = swift_dynamicCastClassUnconditional();
  sub_188A34360(&qword_1ED48D3F0, &qword_1EA9364B0);
  swift_unknownObjectRetain();
LABEL_16:
  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

unint64_t sub_188C52C6C(uint64_t a1)
{
  result = sub_188C52C94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188C52C94()
{
  result = qword_1ED48D420;
  if (!qword_1ED48D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D420);
  }

  return result;
}

unint64_t sub_188C52CE8(uint64_t a1)
{
  result = sub_188C52788();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188C52D14()
{
  result = qword_1ED48D430;
  if (!qword_1ED48D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D430);
  }

  return result;
}

unint64_t sub_188C52D6C()
{
  result = qword_1ED48D438;
  if (!qword_1ED48D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D438);
  }

  return result;
}

unint64_t sub_188C52DC0(uint64_t a1)
{
  result = sub_188C52DE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188C52DE8()
{
  result = qword_1ED48D3F8;
  if (!qword_1ED48D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D3F8);
  }

  return result;
}

unint64_t sub_188C52E3C(uint64_t a1)
{
  result = sub_188C52638();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188C52E68()
{
  result = qword_1ED48D408;
  if (!qword_1ED48D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D408);
  }

  return result;
}

unint64_t sub_188C52EBC(uint64_t a1)
{
  result = sub_188C52EE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188C52EE4()
{
  result = qword_1ED48CE30;
  if (!qword_1ED48CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CE30);
  }

  return result;
}

unint64_t sub_188C52F38(uint64_t a1)
{
  result = sub_188C526E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188C52F64()
{
  result = qword_1ED48CE40;
  if (!qword_1ED48CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CE40);
  }

  return result;
}

unint64_t sub_188C52FBC()
{
  result = qword_1ED48CE48;
  if (!qword_1ED48CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CE48);
  }

  return result;
}

unint64_t sub_188C53014()
{
  result = qword_1ED48D410;
  if (!qword_1ED48D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D410);
  }

  return result;
}

uint64_t sub_188C53068(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(*(v3 + 48) + 16) && (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) != 0))
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364A8);
    v10 = swift_dynamicCastClassUnconditional();
    sub_188A34360(&qword_1ED48CE58, &qword_1EA9364A8);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = 0uLL;
    if (Strong)
    {
      v13 = Strong;
      if (a1)
      {
        v14 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v14 = [Strong layer];
      }

      v19 = v14;

      v20 = sub_18A4A7258();
      v21 = [v19 valueForKeyPath_];

      if (v21)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
      }

      sub_188A3F29C(&v36, &v28, &qword_1EA934050);
      if (v29)
      {
        sub_188A55538(&v28, v27);
        sub_188EF9B1C(v27, &v30);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        sub_188A3F5FC(&v36, &qword_1EA934050);
        v35 = 0;
        v12 = v30;
        v15 = v31;
        v16 = v32;
        v17 = v33;
        v18 = v34;
      }

      else
      {
        sub_188A3F5FC(&v36, &qword_1EA934050);
        LOBYTE(v27[0]) = 1;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        v12 = 0uLL;
      }
    }

    else
    {
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
    }

    v36 = v12;
    v37 = v15;
    v38 = v16;
    v39 = v17;
    v40 = v18;
    v22 = swift_unknownObjectWeakLoadStrong();
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = a1 & 1;
    *(v24 + 32) = a2;
    *(v24 + 40) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364A8);
    swift_allocObject();

    v10 = sub_188C53494(&v36, v22, sub_188F0E03C, v24);

    *(v10 + 496) = 1;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v28 = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, &v28, &qword_1ED48CE58, &qword_1EA9364A8);

    *(v4 + 48) = v28;
    swift_endAccess();
    sub_188A34360(&qword_1ED48CE58, &qword_1EA9364A8);
  }

  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

uint64_t sub_188C53494(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a2;
  v27 = sub_18A4A7A58();
  v26 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940DA8);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *(v5 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  *(v5 + 40) = v14;
  v39 = 1;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 128) = 1;
  *(v5 + 148) = 0u;
  *(v5 + 164) = 0u;
  *(v5 + 180) = 0u;
  *(v5 + 196) = 0u;
  *(v5 + 132) = 0u;
  *(v5 + 212) = 1;
  swift_unknownObjectWeakInit();
  *(v5 + 304) = 0;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 312) = 1;
  *(v5 + 316) = 0u;
  *(v5 + 332) = 0u;
  *(v5 + 348) = 0u;
  *(v5 + 364) = 0u;
  *(v5 + 380) = 0u;
  *(v5 + 396) = 1;
  *(v5 + 400) = 0u;
  *(v5 + 416) = 0u;
  *(v5 + 432) = 0u;
  *(v5 + 448) = 0u;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 1;
  swift_unknownObjectWeakInit();
  *(v5 + 512) = 0;
  *(v5 + 520) = a3;
  *(v5 + 528) = a4;
  sub_188A5E418();

  sub_18A4A7A28();
  sub_18A4A6E38();
  (*(v26 + 104))(v10, *MEMORY[0x1E69E8090], v27);
  *(v5 + 16) = sub_18A4A7A98();
  v15 = a1[3];
  v31 = a1[2];
  v32 = v15;
  v16 = a1[4];
  v17 = a1[1];
  v29 = *a1;
  v30 = v17;
  v35 = v17;
  v36 = v31;
  v37 = v15;
  v38 = v16;
  v33 = v16;
  v34 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940DB0);
  v18 = swift_allocObject();
  *(v18 + 176) = 0;
  v19 = v36;
  *(v18 + 112) = v35;
  *(v18 + 128) = v19;
  v20 = v38;
  *(v18 + 144) = v37;
  *(v18 + 160) = v20;
  v21 = v32;
  *(v18 + 48) = v31;
  *(v18 + 64) = v21;
  v22 = v34;
  *(v18 + 80) = v33;
  *(v18 + 96) = v22;
  v23 = v30;
  *(v18 + 16) = v29;
  *(v18 + 32) = v23;
  *(v5 + 24) = v18;
  swift_beginAccess();
  *(v5 + 196) = 0u;
  *(v5 + 180) = 0u;
  *(v5 + 164) = 0u;
  *(v5 + 148) = 0u;
  *(v5 + 132) = 0u;
  LOBYTE(a3) = v39;
  *(v5 + 212) = v39;
  swift_beginAccess();
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 128) = a3;
  *(v5 + 496) = 0;
  *(v5 + 504) = 0;
  swift_unknownObjectWeakAssign();
  return v5;
}

double sub_188C53BC8(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366C0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  sub_188A3F704(v2, &v25[-v8], &qword_1EA9366C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v9, v6, &qword_1EA9366B8);
      v11 = sub_188C546A0(a1);
      sub_188A3F704(v6, v2, &qword_1EA9366B8);
    }

    else
    {
      v11 = *v9;
      v20 = *(v9 + 1);
      v21 = *(v9 + 2);
      v22 = *(v9 + 3);
      *v2 = *v9;
      v2[1] = v20;
      v2[2] = v21;
      v2[3] = v22;
      v23 = *(v9 + 3);
      *(v2 + 2) = *(v9 + 2);
      *(v2 + 3) = v23;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v12 = *(v9 + 7);
    v32 = *(v9 + 6);
    v33 = v12;
    v34 = *(v9 + 8);
    v13 = *(v9 + 3);
    v28 = *(v9 + 2);
    v29 = v13;
    v14 = *(v9 + 5);
    v30 = *(v9 + 4);
    v31 = v14;
    v15 = *(v9 + 1);
    v26 = *v9;
    v27 = v15;
    *&v11 = *&sub_188EF2650(a1);
    v16 = v33;
    *(v2 + 6) = v32;
    *(v2 + 7) = v16;
    *(v2 + 8) = v34;
    v17 = v29;
    *(v2 + 2) = v28;
    *(v2 + 3) = v17;
    v18 = v31;
    *(v2 + 4) = v30;
    *(v2 + 5) = v18;
    v19 = v27;
    *v2 = v26;
    *(v2 + 1) = v19;
  }

  else
  {
    memcpy(v25, v9, sizeof(v25));
    v11 = sub_188CB4190(a1);
    memcpy(v2, v25, 0x150uLL);
  }

  swift_storeEnumTagMultiPayload();
  return v11;
}

uint64_t sub_188C53E60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366B8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366C0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA9366C0);
  sub_188A3F29C(v9, v6, &qword_1EA9366C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_188A3F5FC(v9, &qword_1EA9366C0);
      v12 = 1;
      return v12 & 1;
    }

    sub_188A3F5FC(v9, &qword_1EA9366C0);
    sub_188A3F704(v6, v3, &qword_1EA9366B8);
    v12 = v3[112];
    v13 = v3;
    v14 = &qword_1EA9366B8;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v12 = vabdd_f64(v6[14], v6[8]) <= 0.01 && vabdd_f64(v6[15], v6[9]) <= 0.01 && vabdd_f64(v6[16], v6[10]) <= 0.01 && vabdd_f64(v6[17], v6[11]) <= 0.01;
    }

    else
    {
      memcpy(v17, v6, sizeof(v17));
      v12 = sub_188CB50C8();
    }

    v14 = &qword_1EA9366C0;
    v13 = v9;
  }

  sub_188A3F5FC(v13, v14);
  return v12 & 1;
}

double sub_188C540E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366B8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366C0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - v5);
  v7 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v7, v6, &qword_1EA9366C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v6, v3, &qword_1EA9366B8);
      v9 = sub_188C54A3C();
      sub_188A3F5FC(v3, &qword_1EA9366B8);
    }

    else
    {
      v9 = v6[4];
    }
  }

  else
  {
    v9 = 0.0;
    if (!EnumCaseMultiPayload)
    {
      v9 = v6[26];
    }
  }

  swift_endAccess();
  return v9;
}

uint64_t sub_188C54348(uint64_t result, int a2, int a3)
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

double sub_188C54374(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936668);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936670);
  v18 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  *v2 = *v2 + a1;
  if (*(v2 + 41) > 1u)
  {
    if (*(v2 + 41) != 2)
    {
      goto LABEL_9;
    }

    v11 = 3;
  }

  else
  {
    if (*(v2 + 41))
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    *v2 = 0;
  }

  *(v2 + 41) = v11;
LABEL_9:
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936658) + 60);
  (*(v5 + 16))(v7, v2 + v12, v4);
  sub_188B0BC88();
  v17 = v4;
  sub_18A4A4D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936678);
  sub_188A34360(&qword_1EA936680, &qword_1EA936678);
  sub_18A4A4D98();
  v13 = *(v2 + 32);
  v14 = *(v2 + 16);
  v19 = v13 - v14;
  sub_18A4A6C68();
  sub_18A4A4D88();
  (*(v18 + 8))(v10, v8);
  (*(v5 + 40))(v2 + v12, v7, v17);
  if (v21)
  {
    *(v2 + 40) = 1;
  }

  else
  {
    v13 = v14 + v20;
    *(v2 + 24) = v14 + v20;
  }

  return v13;
}

double sub_188C5467C(double a1)
{
  result = *v1 * a1;
  *v1 = result;
  return result;
}

double sub_188C5468C(double *a1, double *a2)
{
  result = *a1 - *a2;
  *a1 = result;
  return result;
}

double sub_188C546A0(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366D0);
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = *v2 + a1;
  *v2 = v11;
  v12 = *(v2 + 113);
  if (v12 > 1)
  {
    v29 = v11;
    if (v12 != 2)
    {
      goto LABEL_9;
    }

    v13 = 3;
  }

  else
  {
    if (*(v2 + 113))
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    *v2 = 0;
    v29 = 0.0;
  }

  *(v2 + 113) = v13;
LABEL_9:
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366B8) + 60);
  (*(v5 + 16))(v7, v2 + v14, v4);
  sub_188C52638();
  v28 = v4;
  sub_18A4A4D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366D8);
  sub_188A34360(&qword_1EA9366E0, &qword_1EA9366D8);
  sub_18A4A4D98();
  v15 = *(v2 + 80);
  v16 = *(v2 + 88);
  v17 = *(v2 + 96);
  v18 = *(v2 + 104);
  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  v22 = *(v2 + 32);
  v21 = *(v2 + 40);
  v31 = v15 - v19;
  v32 = v16 - v20;
  v33 = v17 - v22;
  v34 = v18 - v21;
  sub_18A4A6C68();
  sub_18A4A4D88();
  (*(v30 + 8))(v10, v8);
  (*(v5 + 40))(v2 + v14, v7, v28);
  if (v39)
  {
    *(v2 + 112) = 1;
  }

  else
  {
    v15 = v19 + v35;
    v23 = v20 + v36;
    v24 = v22 + v37;
    v25 = v21 + v38;
    *(v2 + 48) = v19 + v35;
    *(v2 + 56) = v23;
    *(v2 + 64) = v24;
    *(v2 + 72) = v25;
  }

  return v15;
}

double sub_188C549EC()
{
  v1 = vmulq_f64(*v0, *v0);
  v2 = vmulq_f64(v0[1], v0[1]);
  *&result = *&vaddq_f64(vaddq_f64(vaddq_f64(v1, vdupq_laneq_s64(v1, 1)), v2), vdupq_laneq_s64(v2, 1));
  return result;
}

float64x2_t sub_188C54A10(double a1)
{
  v2 = vmulq_n_f64(*v1, a1);
  result = vmulq_n_f64(v1[1], a1);
  *v1 = v2;
  v1[1] = result;
  return result;
}

float64x2_t sub_188C54A24(float64x2_t *a1, float64x2_t *a2)
{
  result = vsubq_f64(*a1, *a2);
  v3 = vsubq_f64(a1[1], a2[1]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_188C54A3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366B8);
  (*(v3 + 16))(v5, v1 + *(v10 + 60), v2);
  sub_188C52638();
  sub_18A4A4D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366D8);
  sub_188A34360(&qword_1EA9366E0, &qword_1EA9366D8);
  sub_18A4A4D98();
  v11 = vsubq_f64(v1[6], v1[2]);
  v13[0] = vsubq_f64(v1[5], v1[1]);
  v13[1] = v11;
  sub_18A4A6C88();
  (*(v7 + 8))(v9, v6);
  result = 0.0;
  if ((v15 & 1) == 0)
  {
    return v14;
  }

  return result;
}

uint64_t sub_188C54CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, float32x4_t *a5@<X4>, _OWORD *a6@<X8>, double a7@<D0>)
{
  v8 = v7;
  v175.i64[0] = a1;
  v176 = a6;
  v177 = a5;
  v12 = a5[3];
  v226 = a5[2];
  v227 = v12;
  v228 = a5[4];
  v13 = *a5;
  v225 = a5[1];
  v224 = v13;
  v14 = *a4;
  v15 = a4[1];
  v16 = a4[4];
  v232 = a4[3];
  v233 = v16;
  v17 = a4[2];
  v173.i64[0] = a4;
  v230 = v15;
  v231 = v17;
  v229 = v14;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936528);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v168 = &v161 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936520);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v171.i64[0] = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v169 = (&v161 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v170.i64[0] = &v161 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v161 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936518);
  MEMORY[0x1EEE9AC00](v30);
  v167 = &v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v161 - v33;
  v174 = v8;
  v35 = a3;
  v8[173] = a3;
  sub_188AA72A8(a2, v211);
  if (v211[5].u8[8] == 2)
  {
    v36 = v211[0].i64[0];
    v37 = v211[0].i8[8];
    sub_188A3F29C(v175.i64[0], v29, &qword_1EA936520);
    if ((*(v19 + 48))(v29, 1, v18) == 1)
    {
      v38 = &qword_1EA936520;
LABEL_14:
      sub_188A3F5FC(v29, v38);
      v63 = v176;
      *v176 = 0;
      *(v63 + 128) = 0;
      sub_188C526E0();
      sub_18A4A49B8();
      v64 = *(v30 + 64);
      *(v63 + 1) = v36;
      v65 = v173.i64[0];
      v66 = *(v173.i64[0] + 32);
      v67 = *(v173.i64[0] + 48);
      v63[3] = v66;
      v63[4] = v67;
      v68 = v65[4];
      v70 = *v65;
      v69 = v65[1];
      v63[1] = *v65;
      v63[2] = v69;
      v63[7] = v69;
      v63[8] = v66;
      v63[9] = v67;
      v63[10] = v68;
      v63[5] = v68;
      v63[6] = v70;
      v71 = *v177;
      v72 = v177[1];
      v73 = v177[2];
      v74 = v177[4];
      v63[14] = v177[3];
      v63[15] = v74;
      v63[12] = v72;
      v63[13] = v73;
      v63[11] = v71;
      *(v63 + v64) = v37;
      return swift_storeEnumTagMultiPayload();
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v38 = &qword_1EA936528;
      goto LABEL_14;
    }

    sub_188A3F704(v29, v34, &qword_1EA936518);
    sub_188EF7198(v36, v177);

    sub_188A3F704(v34, v176, &qword_1EA936518);
    return swift_storeEnumTagMultiPayload();
  }

  v39 = v175.i64[0];
  v172.i64[0] = v18;
  sub_188AA7808(v211);
  sub_188AA72A8(a2, v211);
  if (v211[5].u8[8] == 1)
  {
    v204 = v211[2];
    v205 = v211[3];
    v206 = v211[4];
    v203 = v211[1];
    v202 = v211[0];
    sub_188A5EBAC(&v202, v213);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936558);
    swift_dynamicCast();
    sub_188A5EBAC(&v204.u32[2], v212);
    swift_dynamicCast();
    v40 = v217;
    v41 = v217;
    v42 = v216;
    v43 = v176;
    v176[12] = v216;
    v43[13] = v40;
    v44 = v214;
    v45 = v215;
    v46 = v215;
    v43[10] = v214;
    v43[11] = v45;
    v47 = v222;
    v48 = v222;
    v49 = v221;
    v43[18] = v221;
    v43[19] = v47;
    v50 = v223;
    v43[20] = v223;
    v51 = v219;
    v52 = v220;
    v53 = v220;
    v43[16] = v219;
    v43[17] = v52;
    v43[2] = v49;
    v43[3] = v48;
    *v43 = v51;
    v43[1] = v53;
    v43[4] = v50;
    v43[5] = v44;
    v54 = v218;
    v55 = v218;
    v43[8] = v41;
    v43[9] = v55;
    v43[6] = v46;
    v43[7] = v42;
    v43[14] = v54;
    v43[15] = xmmword_18A650B90;
    return swift_storeEnumTagMultiPayload();
  }

  sub_188AA7808(v211);
  v166 = a2;
  v56 = v177;
  v57 = v39;
  v58 = v19;
  v59 = v170.i64[0];
  if (v35)
  {
    v60 = CACurrentMediaTime();
    v61 = v60 - *v174;
    if (a7 * 0.9 < v61)
    {
      if (*v174 != 0.0)
      {
        if (v174[16])
        {
          v211[0].i8[0] = 0;
          v62 = v174;
          v174[11] = 0u;
          v62[12] = 0u;
          v62[13] = 0u;
          v62[14] = 0u;
          v62[15] = 0u;
          *(v62 + 256) = 0;
        }

        else
        {
          v77 = *v56;
          v76 = v56[1];
          v79 = v56[2];
          v78 = v56[3];
          v80 = v56[4];
          if (*(v174 + 172))
          {
            v81 = 0;
          }

          else
          {
            v82 = v174;
            v83 = *(v174 + 108);
            v84 = *(v174 + 140);
            v221 = *(v174 + 124);
            v222 = v84;
            v223 = *(v174 + 156);
            v85 = *(v174 + 92);
            v220 = v83;
            v219 = v85;
            v214 = v77;
            v215 = v76;
            v216 = v79;
            v217 = v78;
            v218 = v80;
            v86 = v60;
            sub_188C564AC(&v214, &v219, v200);
            v60 = v86;
            v80 = v200[4];
            v78 = v200[3];
            v79 = v200[2];
            v77 = v200[0];
            v76 = v200[1];
            v81 = *(v82 + 256);
          }

          if ((v81 & 1) == 0)
          {
            v87 = v60;
            v88 = v174;
            v164 = v78;
            v165 = v80;
            v162 = v76;
            v163 = v79;
            v161 = v77;
            sub_188C5728C(0.25);
            sub_188C5728C(0.25);
            sub_188C5728C(0.25);
            sub_188C5728C(0.25);
            v60 = v87;
            v89 = *(v88 + 256);
            v57 = v39;
            if ((v89 & 1) == 0)
            {
              __asm { FMOV            V5.4S, #0.75 }

              v213[0] = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v161.f32), 1.0 / v61)), vmulq_n_f64(vcvt_hight_f64_f32(v161), 1.0 / v61)), _Q5);
              v213[1] = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v162.f32), 1.0 / v61)), vmulq_n_f64(vcvt_hight_f64_f32(v162), 1.0 / v61)), _Q5);
              v213[2] = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v163.f32), 1.0 / v61)), vmulq_n_f64(vcvt_hight_f64_f32(v163), 1.0 / v61)), _Q5);
              v213[3] = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v164.f32), 1.0 / v61)), vmulq_n_f64(vcvt_hight_f64_f32(v164), 1.0 / v61)), _Q5);
              v213[4] = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v165.f32), 1.0 / v61)), vmulq_n_f64(vcvt_hight_f64_f32(v165), 1.0 / v61)), _Q5);
              v95 = v174;
              v96 = *(v174 + 14);
              v212[2] = *(v174 + 13);
              v212[3] = v96;
              v212[4] = *(v174 + 15);
              v97 = *(v174 + 11);
              v212[1] = *(v174 + 12);
              v212[0] = v97;
              sub_188CB8D88(v212, v213, v201);
              v60 = v87;
              v98 = v201[3];
              v95[13] = v201[2];
              v95[14] = v98;
              v95[15] = v201[4];
              v99 = v201[1];
              v95[11] = v201[0];
              v95[12] = v99;
            }
          }
        }
      }

      v211[0].i8[0] = 0;
      v100 = v229;
      v101 = v174;
      *(v174 + 24) = v230;
      v102 = v232;
      *(v101 + 40) = v231;
      *(v101 + 56) = v102;
      *(v101 + 72) = v233;
      *(v101 + 8) = v100;
      *(v101 + 88) = 0;
      *v101 = v60;
    }
  }

  v103 = v174;
  v104 = *(v174 + 108);
  v105 = *(v174 + 140);
  v191 = *(v174 + 124);
  v192 = v105;
  v193 = *(v174 + 156);
  v189 = *(v174 + 92);
  v190 = v104;
  v106 = v224;
  *(v174 + 108) = v225;
  v107 = v227;
  *(v103 + 124) = v226;
  *(v103 + 140) = v107;
  *(v103 + 156) = v228;
  v108 = *(v103 + 172);
  v194 = 0;
  *(v103 + 92) = v106;
  *(v103 + 172) = 0;
  sub_188A3F29C(v57, v59, &qword_1EA936520);
  v109 = *(v58 + 48);
  if (v109(v59, 1, v172.i64[0]) == 1)
  {
    v110 = &qword_1EA936520;
LABEL_27:
    sub_188A3F5FC(v59, v110);
    v111 = v166;
    v112 = v171.i64[0];
    goto LABEL_28;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    v110 = &qword_1EA936528;
    goto LABEL_27;
  }

  memcpy(v188, v59, sizeof(v188));
  v111 = v166;
  sub_188AA72A8(v166, v211);
  v112 = v171.i64[0];
  if (v211[5].u8[8] == 3 && v211[0].i64[0] == 1)
  {
    v147 = vorrq_s8(vorrq_s8(*(&v211[1] + 8), *(&v211[3] + 8)), vorrq_s8(*(&v211[2] + 8), *(&v211[4] + 8)));
    if (!(*&vorr_s8(*v147.i8, *&vextq_s8(v147, v147, 8uLL)) | v211[1].i64[0] | v211[0].i64[1]))
    {
      sub_188AA7808(v211);
      v148 = v177;
LABEL_70:
      v159 = v148[3];
      v188[16] = v148[2];
      v188[17] = v159;
      v188[18] = v148[4];
      v160 = v148[1];
      v188[14] = *v148;
      v188[15] = v160;
      memcpy(v176, v188, 0x270uLL);
      return swift_storeEnumTagMultiPayload();
    }
  }

  sub_188AA7808(v211);
  sub_188AA72A8(v111, v211);
  if (!v211[5].i8[8])
  {
    v204 = v211[2];
    v205 = v211[3];
    v206 = v211[4];
    v207 = *v211[5].i64;
    v202 = v211[0];
    v203 = v211[1];
    v154 = v211[2].i64[1];
    v148 = v177;
    if ((v35 & 1) == 0)
    {
      if (v211[2].i64[1] < 0 && *&v206.i64[1] > 0.0)
      {
        memcpy(v211, v174, 0x101uLL);
        v155.n128_u64[0] = v206.u64[1];
        sub_188F00E14(&v188[29], v155);
      }

      v210[0].i8[0] = 1;
      v156 = v174;
      v174[11] = 0u;
      v156[12] = 0u;
      v156[13] = 0u;
      v156[14] = 0u;
      v156[15] = 0u;
      *(v156 + 256) = 1;
      *v156 = 0;
    }

    if (v154 < 0)
    {
      v157 = v207;
      if (v207 > 0.0 && (v108 & 1) == 0)
      {
        v210[2] = v191;
        v210[3] = v192;
        v210[4] = v193;
        v158 = 6.28318531 / *v202.i64 * (6.28318531 / *v202.i64);
        v210[1] = v190;
        v210[0] = v189;
        sub_188C564AC(v148, v210, &v195);
        v209[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v195.f32), v158 * v157)), vmulq_n_f64(vcvt_hight_f64_f32(v195), v158 * v157));
        v209[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v196.f32), v158 * v157)), vmulq_n_f64(vcvt_hight_f64_f32(v196), v158 * v157));
        v209[2] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v197.f32), v158 * v157)), vmulq_n_f64(vcvt_hight_f64_f32(v197), v158 * v157));
        v209[3] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v198.f32), v158 * v157)), vmulq_n_f64(vcvt_hight_f64_f32(v198), v158 * v157));
        v209[4] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v199.f32), v158 * v157)), vmulq_n_f64(vcvt_hight_f64_f32(v199), v158 * v157));
        v208[2] = v188[21];
        v208[3] = v188[22];
        v208[4] = v188[23];
        v208[1] = v188[20];
        v208[0] = v188[19];
        sub_188CB8D88(v208, v209, &v188[19]);
      }
    }

    sub_188CB4040(&v202, 0);
    goto LABEL_70;
  }

  sub_188AA7808(v211);
LABEL_28:
  v113 = v169;
  sub_188A3F29C(v39, v169, &qword_1EA936520);
  if (v109(v113, 1, v172.i64[0]) == 1)
  {
    v114 = &qword_1EA936520;
LABEL_38:
    sub_188A3F5FC(v113, v114);
    goto LABEL_39;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v114 = &qword_1EA936528;
    goto LABEL_38;
  }

  v115 = v113[7];
  v184 = v113[6];
  v185 = v115;
  v116 = v113[9];
  v186 = v113[8];
  v187 = v116;
  v117 = v113[3];
  v180 = v113[2];
  v181 = v117;
  v118 = v113[5];
  v182 = v113[4];
  v183 = v118;
  v119 = v113[1];
  v178 = *v113;
  v179 = v119;
  sub_188AA72A8(v111, v211);
  if (v211[5].u8[8] == 3 && (v120 = vorrq_s8(vorrq_s8(*(&v211[1] + 8), *(&v211[3] + 8)), vorrq_s8(*(&v211[2] + 8), *(&v211[4] + 8))), !(*&vorr_s8(*v120.i8, *&vextq_s8(v120, v120, 8uLL)) | v211[1].i64[0] | v211[0].i64[1] | v211[0].i64[0])) || (sub_188AA7808(v211), sub_188AA72A8(v111, v211), v211[5].u8[8] == 3) && v211[0].i64[0] == 1 && (v121 = vorrq_s8(vorrq_s8(*(&v211[1] + 8), *(&v211[3] + 8)), vorrq_s8(*(&v211[2] + 8), *(&v211[4] + 8))), !(*&vorr_s8(*v121.i8, *&vextq_s8(v121, v121, 8uLL)) | v211[1].i64[0] | v211[0].i64[1])))
  {
    sub_188AA7808(v211);
    v122 = v176;
    v123 = v177;
    v125 = v177[3];
    v180 = v177[2];
    v124 = v180;
    v181 = v125;
    v182 = v177[4];
    v126 = v182;
    v127 = v185;
    v128 = v186;
    v129 = v183;
    v176[6] = v184;
    v122[7] = v127;
    v130 = v187;
    v122[8] = v128;
    v122[9] = v130;
    v131 = v123[1];
    v178 = *v123;
    v132 = v178;
    v179 = v131;
    v122[2] = v124;
    v122[3] = v125;
    v122[4] = v126;
    v122[5] = v129;
    *v122 = v132;
    v122[1] = v131;
    return swift_storeEnumTagMultiPayload();
  }

  sub_188AA7808(v211);
  sub_188AA72A8(v111, v211);
  if (!v211[5].i8[8])
  {
    v204 = v185;
    v205 = v186;
    v206 = v187;
    v203 = v184;
    v202 = v183;
    v210[0].i8[0] = 0;
    LOBYTE(v207) = 0;
    v150 = &v202;
    v151 = v176;
    v152 = v111;
    v153 = v173.i64[0];
    return sub_188CB91F0(v152, v153, v150, v177, v151);
  }

  sub_188AA7808(v211);
LABEL_39:
  sub_188A3F29C(v39, v112, &qword_1EA936520);
  v133 = 1;
  if (v109(v112, 1, v172.i64[0]) != 1)
  {
    v140 = v168;
    sub_188A3F29C(v112, v168, &qword_1EA936528);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v149 = *(v140 + 128);
        v211[2] = *(v140 + 112);
        v211[3] = v149;
        v211[4] = *(v140 + 144);
        v144 = *(v140 + 80);
        v143 = *(v140 + 96);
        goto LABEL_56;
      }

      v145 = v140;
      v146 = v167;
      sub_188A3F704(v145, v167, &qword_1EA936518);
      sub_188EF4B58(v211);
      v111 = v166;
      sub_188A3F5FC(v146, &qword_1EA936518);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v142 = *(v140 + 352);
        v211[2] = *(v140 + 336);
        v211[3] = v142;
        v211[4] = *(v140 + 368);
        v144 = *(v140 + 304);
        v143 = *(v140 + 320);
LABEL_56:
        v211[1] = v143;
        v211[0] = v144;
        goto LABEL_57;
      }

      memset(v211, 0, 80);
    }

LABEL_57:
    v139 = v173.i64[0];
    v175 = v211[0];
    v172 = v211[2];
    v173 = v211[1];
    v170 = v211[4];
    v171 = v211[3];
    sub_188A3F5FC(v112, &qword_1EA936528);
    v138 = v170;
    v137 = v171;
    v136 = v172;
    v135 = v173;
    v134 = v175;
    v133 = 0;
    v202.i8[0] = 0;
    goto LABEL_58;
  }

  sub_188A3F5FC(v112, &qword_1EA936520);
  v211[0].i8[0] = 1;
  v134 = 0uLL;
  v135 = 0uLL;
  v136 = 0uLL;
  v137 = 0uLL;
  v138 = 0uLL;
  v139 = v173.i64[0];
LABEL_58:
  v211[0] = v134;
  v211[1] = v135;
  v211[2] = v136;
  v211[3] = v137;
  v211[4] = v138;
  v211[5].i8[0] = v133;
  v150 = v211;
  v151 = v176;
  v152 = v111;
  v153 = v139;
  return sub_188CB91F0(v152, v153, v150, v177, v151);
}

double sub_188C55C38(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936560);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936568);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  sub_188A3F704(v2, &v41 - v8, &qword_1EA936568);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v9, v6, &qword_1EA936560);
      v20 = sub_188C564E8(a1);
      v42 = v29;
      sub_188A3F704(v6, v2, &qword_1EA936560);
    }

    else
    {
      v20 = *v9;
      v39 = *(v9 + 3);
      *v2 = *v9;
      v42 = *(v9 + 8);
      *(v2 + 8) = v42;
      *(v2 + 24) = v39;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v20 = *(v9 + 4);
    *&v11 = *(v9 + 5);
    v32 = *(v9 + 3);
    v33 = *(v9 + 8);
    v34 = *(v9 + 9);
    if (a1 > 0.0)
    {
      v42 = v11;
      v41 = v32;
      v35 = pow(*&v32, a1 * 1000.0);
      *(&v11 + 1) = *(&v42 + 1);
      v36 = 1.0 - v35;
      v31 = v31 + (v33 - v31) * v36;
      v30 = v30 + (v34 - v30) * v36;
      v37 = v36 * (v31 - v20);
      v38 = v36 * (v30 - *&v42);
      v32 = v41;
      v20 = v20 + v37;
      *&v11 = *&v42 + v38;
    }

    v42 = v11;
    *v2 = *v9;
    *(v2 + 16) = v31;
    *(v2 + 24) = v30;
    *(v2 + 32) = v20;
    *(v2 + 40) = v11;
    *(v2 + 48) = v32;
    *(v2 + 64) = v33;
    *(v2 + 72) = v34;
  }

  else
  {
    v12 = *(v9 + 13);
    v55 = *(v9 + 12);
    v56 = v12;
    v57 = *(v9 + 14);
    v13 = *(v9 + 9);
    v51 = *(v9 + 8);
    v52 = v13;
    v14 = *(v9 + 11);
    v53 = *(v9 + 10);
    v54 = v14;
    v15 = *(v9 + 5);
    v47 = *(v9 + 4);
    v48 = v15;
    v16 = *(v9 + 7);
    v49 = *(v9 + 6);
    v50 = v16;
    v17 = *(v9 + 1);
    v43 = *v9;
    v44 = v17;
    v18 = *(v9 + 2);
    v46 = *(v9 + 3);
    v45 = v18;
    sub_188AB3ADC(a1);
    v20 = v19;
    v42 = v21;
    v22 = v56;
    *(v2 + 192) = v55;
    *(v2 + 208) = v22;
    *(v2 + 224) = v57;
    v23 = v52;
    *(v2 + 128) = v51;
    *(v2 + 144) = v23;
    v24 = v54;
    *(v2 + 160) = v53;
    *(v2 + 176) = v24;
    v25 = v48;
    *(v2 + 64) = v47;
    *(v2 + 80) = v25;
    v26 = v50;
    *(v2 + 96) = v49;
    *(v2 + 112) = v26;
    v27 = v44;
    *v2 = v43;
    *(v2 + 16) = v27;
    v28 = v46;
    *(v2 + 32) = v45;
    *(v2 + 48) = v28;
  }

  swift_storeEnumTagMultiPayload();
  return v20;
}

uint64_t sub_188C55FB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936560);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v32 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936568);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - v8;
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA936568);
  sub_188A3F29C(v9, v6, &qword_1EA936568);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F5FC(v9, &qword_1EA936568);
      sub_188A3F704(v6, v3, &qword_1EA936560);
      v22 = v3[64];
      sub_188A3F5FC(v3, &qword_1EA936560);
    }

    else
    {
      sub_188A3F5FC(v9, &qword_1EA936568);
      v22 = 1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v23 = v6[4];
      v24 = v6[5];
      v25 = v6[8];
      v26 = v6[9];
      objc_opt_self();
      v27 = +[UIScreen _mainScreen];
      [v27 scale];
      v29 = v28;

      v30 = vabdd_f64(v25, v23) <= 1.0 / v29;
      v22 = vabdd_f64(v26, v24) <= 1.0 / v29 && v30;
    }

    else
    {
      v12 = *(v6 + 12);
      v13 = *(v6 + 13);
      v14 = *(v6 + 10);
      v32[13] = *(v6 + 11);
      v32[14] = v12;
      v15 = *(v6 + 14);
      v32[15] = v13;
      v32[16] = v15;
      v16 = *(v6 + 8);
      v17 = *(v6 + 9);
      v18 = *(v6 + 6);
      v32[9] = *(v6 + 7);
      v32[10] = v16;
      v32[11] = v17;
      v32[12] = v14;
      v19 = *(v6 + 5);
      v32[6] = *(v6 + 4);
      v32[7] = v19;
      v32[8] = v18;
      v20 = *(v6 + 1);
      v32[2] = *v6;
      v32[3] = v20;
      v21 = *(v6 + 3);
      v32[4] = *(v6 + 2);
      v32[5] = v21;
      v22 = sub_188CB4F60();
    }

    sub_188A3F5FC(v9, &qword_1EA936568);
  }

  return v22 & 1;
}

uint64_t sub_188C56278@<X0>(__int128 *a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936518);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936528);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-v10];
  sub_188A3F704(v3, &v23[-v10], &qword_1EA936528);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v11, v8, &qword_1EA936518);
      sub_188C56834(a1, a2);
      sub_188A3F704(v8, v3, &qword_1EA936518);
    }

    else
    {
      v14 = v11[2];
      v15 = v11[3];
      a1[2] = v14;
      a1[3] = v15;
      v16 = v11[4];
      v17 = v11[5];
      a1[4] = v16;
      v18 = v11[7];
      v3[6] = v11[6];
      v3[7] = v18;
      v19 = v11[9];
      v3[8] = v11[8];
      v3[9] = v19;
      v21 = *v11;
      v20 = v11[1];
      *a1 = *v11;
      a1[1] = v20;
      v3[2] = v14;
      v3[3] = v15;
      v3[4] = v16;
      v3[5] = v17;
      *v3 = v21;
      v3[1] = v20;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(v24, v11, sizeof(v24));
    sub_188EF22D0(a1, a2);
    memcpy(v3, v24, 0x150uLL);
  }

  else
  {
    v13 = memcpy(v23, v11, sizeof(v23));
    sub_188CB5214(v13);
    memcpy(v3, v23, 0x270uLL);
  }

  return swift_storeEnumTagMultiPayload();
}

float32x4_t sub_188C564AC@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = vsubq_f32(a1[1], a2[1]);
  *a3 = vsubq_f32(*a1, *a2);
  a3[1] = v3;
  v4 = vsubq_f32(a1[3], a2[3]);
  a3[2] = vsubq_f32(a1[2], a2[2]);
  a3[3] = v4;
  result = vsubq_f32(a1[4], a2[4]);
  a3[4] = result;
  return result;
}

double sub_188C564E8(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936570);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936578);
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  *v2 = *v2 + a1;
  if (*(v2 + 65) > 1u)
  {
    if (*(v2 + 65) != 2)
    {
      goto LABEL_9;
    }

    v11 = 3;
  }

  else
  {
    if (*(v2 + 65))
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    *v2 = 0;
  }

  *(v2 + 65) = v11;
LABEL_9:
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936560) + 60);
  (*(v5 + 16))(v7, v2 + v12, v4);
  sub_188C52788();
  v20 = v4;
  sub_18A4A4D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936580);
  sub_188A34360(&qword_1EA936588, &qword_1EA936580);
  sub_18A4A4D98();
  v13 = *(v2 + 48);
  v14 = *(v2 + 56);
  v15 = *(v2 + 16);
  v16 = *(v2 + 24);
  v22 = v13 - v15;
  v23 = v14 - v16;
  sub_18A4A6C68();
  sub_18A4A4D88();
  (*(v21 + 8))(v10, v8);
  (*(v5 + 40))(v2 + v12, v7, v20);
  if (v26)
  {
    *(v2 + 64) = 1;
  }

  else
  {
    v13 = v15 + v24;
    v17 = v16 + v25;
    *(v2 + 32) = v15 + v24;
    *(v2 + 40) = v17;
  }

  return v13;
}

float64x2_t sub_188C56810(double a1)
{
  result = vmulq_n_f64(*v1, a1);
  *v1 = result;
  return result;
}

float64x2_t sub_188C56820(float64x2_t *a1, float64x2_t *a2)
{
  result = vsubq_f64(*a1, *a2);
  *a1 = result;
  return result;
}

void sub_188C56834(_OWORD *a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v35 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936538);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936540);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  *v3 = *v3 + a2;
  if (*(v3 + 257) > 1u)
  {
    if (*(v3 + 257) != 2)
    {
      goto LABEL_9;
    }

    v12 = 3;
  }

  else
  {
    if (*(v3 + 257))
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    *v3 = 0;
  }

  *(v3 + 257) = v12;
LABEL_9:
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936518) + 60);
  (*(v6 + 16))(v8, v3 + v32, v5);
  sub_188C526E0();
  sub_18A4A4D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936548);
  v31 = v5;
  sub_188A34360(&qword_1EA936550, &qword_1EA936548);
  v13 = v34;
  sub_18A4A4D98();
  v14 = *(v3 + 224);
  v48[2] = *(v3 + 208);
  v48[3] = v14;
  v15 = *(v3 + 192);
  v48[0] = *(v3 + 176);
  v48[1] = v15;
  v16 = *(v3 + 48);
  v17 = *(v3 + 64);
  v18 = *(v3 + 16);
  v49[1] = *(v3 + 32);
  v49[2] = v16;
  v19 = *(v3 + 80);
  v49[3] = v17;
  v49[4] = v19;
  v48[4] = *(v3 + 240);
  v49[0] = v18;
  sub_188C564AC(v48, v49, v47);
  sub_18A4A6C68();
  sub_18A4A4D88();
  (*(v33 + 8))(v11, v13);
  (*(v6 + 40))(v3 + v32, v8, v31);
  if (v41)
  {
    *(v3 + 256) = 1;
    v20 = *(v3 + 224);
    v21 = v35;
    v35[2] = *(v3 + 208);
    v21[3] = v20;
    v21[4] = *(v3 + 240);
    v22 = *(v3 + 192);
    *v21 = *(v3 + 176);
    v21[1] = v22;
  }

  else
  {
    v47[1] = v37;
    v47[2] = v38;
    v47[3] = v39;
    v47[4] = v40;
    v23 = *(v3 + 64);
    v46[2] = *(v3 + 48);
    v46[3] = v23;
    v46[4] = *(v3 + 80);
    v47[0] = v36;
    v24 = *(v3 + 32);
    v46[0] = *(v3 + 16);
    v46[1] = v24;
    sub_188CB8D88(v46, v47, v42);
    v26 = v42[1];
    v25 = v43;
    v27 = v44;
    v28 = v45;
    *(v3 + 128) = v43;
    *(v3 + 144) = v27;
    *(v3 + 160) = v28;
    v29 = v42[0];
    *(v3 + 96) = v42[0];
    *(v3 + 112) = v26;
    v30 = v35;
    v35[2] = v25;
    v30[3] = v27;
    v30[4] = v28;
    *v30 = v29;
    v30[1] = v26;
  }
}

uint64_t static UIView.animate(bridgedAnimation:animations:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a1;
  v33 = 2;
  v34 = 2;
  sub_188C3DF9C(&v32, v31);
  sub_188C3DF9C(&v32, v29);
  v9 = swift_allocObject();
  v10 = v29[3];
  *(v9 + 48) = v29[2];
  *(v9 + 64) = v10;
  *(v9 + 80) = v30[0];
  *(v9 + 89) = *(v30 + 9);
  v11 = v29[1];
  *(v9 + 16) = v29[0];
  *(v9 + 32) = v11;
  *(v9 + 112) = signpost_c2_entryLock_start;
  *(v9 + 120) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a4;
  v13[4] = a5;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *&v26 = sub_188A4A9DC;
  *(&v26 + 1) = v15;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v25 = sub_188A4A968;
  *(&v25 + 1) = &block_descriptor_15;
  v16 = _Block_copy(&aBlock);

  sub_188C3DFF8(v31, &aBlock);
  v17 = swift_allocObject();
  v18 = v27;
  *(v17 + 56) = v26;
  *(v17 + 72) = v18;
  *(v17 + 88) = v28[0];
  *(v17 + 97) = *(v28 + 9);
  v19 = v25;
  *(v17 + 24) = aBlock;
  *(v17 + 16) = v12;
  *(v17 + 40) = v19;
  *(v17 + 113) = 0;
  *(v17 + 120) = sub_188E5B140;
  *(v17 + 128) = v9;
  v23[4] = sub_188C5745C;
  v23[5] = v17;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_188A4A8F0;
  v23[3] = &block_descriptor_15_0;
  v20 = _Block_copy(v23);

  *&v26 = sub_188ABBADC;
  *(&v26 + 1) = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v25 = sub_188ABD010;
  *(&v25 + 1) = &block_descriptor_18_3;
  v21 = _Block_copy(&aBlock);

  [ObjCClassFromMetadata _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v21);
  _Block_release(v20);
  _Block_release(v16);

  sub_188C3E234(v31);
  sub_188AAFF20(&v32);

  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_55Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double sub_188C57068@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

__n128 __swift_memcpy80_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

void sub_188C5719C(double a1)
{
  sub_188C5728C(a1);
  sub_188C5728C(a1);
  sub_188C5728C(a1);
  sub_188C5728C(a1);
}

__n128 sub_188C571F0(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *__return_ptr, _OWORD *, _OWORD *))
{
  v6 = a2[3];
  v14[2] = a2[2];
  v14[3] = v6;
  v14[4] = a2[4];
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = a1[3];
  v13[2] = a1[2];
  v13[3] = v8;
  v13[4] = a1[4];
  v9 = a1[1];
  v13[0] = *a1;
  v13[1] = v9;
  a5(v12, v13, v14);
  v10 = v12[3];
  a1[2] = v12[2];
  a1[3] = v10;
  a1[4] = v12[4];
  result = v12[1];
  *a1 = v12[0];
  a1[1] = result;
  return result;
}

float32_t sub_188C5728C(double a1)
{
  *v1->f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v1), a1)), vmulq_n_f64(vcvt_hight_f64_f32(*v1->f32), a1));
  result = v1[2].f32[0] * a1;
  v1[2].f32[0] = result;
  return result;
}

uint64_t sub_188C572C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t _UIApplicationProcessIsDruid()
{
  if (qword_1EA992F18 != -1)
  {
    dispatch_once(&qword_1EA992F18, &__block_literal_global_1307_0);
  }

  return byte_1EA992DBC;
}

uint64_t _UIApplicationProcessIsPointerUI()
{
  if (qword_1EA992F10 != -1)
  {
    dispatch_once(&qword_1EA992F10, &__block_literal_global_1302_1);
  }

  return byte_1EA992DBB;
}

uint64_t _UIIsPrototypeMenuBarEnabled()
{
  v0 = +[_UIMenuBarSettingsDomain rootSettings];
  v1 = [v0 isPrototypeMenuBarEnabled];

  return v1;
}

double sub_188C574E8(double a1)
{
  v3 = sub_18A4A7258();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(&v8, v9);
    sub_188A553EC(v9);
    v5 = sub_18A4A7258();
    [v1 doubleForKey_];
    a1 = v6;
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    sub_188A553EC(v9);
  }

  return a1;
}

void sub_188C5767C(uint64_t a1, SEL *a2)
{
  if (sub_18A4A55B8())
  {
    v6.receiver = v2;
    v6.super_class = type metadata accessor for UICorePlatformViewHost();
    objc_msgSendSuper2(&v6, *a2, a1);
  }

  else
  {
    v5 = sub_188BA4554();
    [v5 *a2];
  }
}

float sub_188C57758(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_188C5767C(a3, &selRef_contentCompressionResistancePriorityForAxis_);
  v6 = v5;

  return v6;
}

float sub_188C577A4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_188C5767C(a3, &selRef_contentHuggingPriorityForAxis_);
  v6 = v5;

  return v6;
}

uint64_t sub_188C577F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_188C57860(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

id sub_188C57880()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

unint64_t sub_188C57BE0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_18A4A8488();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_188B0944C(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_188C57D04(void *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = sub_18A4A8488();
  v8 = a1[4];
  v9 = a1[5];
  result = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v20 = v9;
    return v7;
  }

  v12 = (a1 + 7);
  while (1)
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v7[6] + 8 * result) = v8;
    *(v7[7] + 8 * result) = v9;
    v13 = v7[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v7[2] = v15;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v8 = *(v12 - 1);
    v17 = *v12;
    v18 = v9;
    result = a4(v8);
    v12 = v16;
    v9 = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_188C57E38(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_188C57FA8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem);
  if (!v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backAction);
    if (!v4)
    {
      return;
    }

    v5 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backActionItem;
    v6 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backActionItem);
    if (v6)
    {
      [v6 setPrimaryAction_];
      v3 = *(v1 + v5);
      if (v3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = [objc_allocWithZone(UIBarButtonItem) initWithPrimaryAction:v4 menu:0];
      v9 = *(v1 + v5);
      *(v1 + v5) = v8;

      v3 = *(v1 + v5);
      if (v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    return;
  }

  v4 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backActionItem);
  *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backActionItem) = 0;
LABEL_6:
  v10 = v3;

  if (*(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_toolbarStyle) == 2)
  {
    v7 = &selRef_configureBreadcrumbBackButtonFromBarItem_withAppearanceDelegate_;
  }

  else
  {
    v7 = &selRef_configureBackButtonFromBarItem_withAppearanceDelegate_;
  }

  [a1 *v7];
}

void sub_188C581B0()
{
  v1 = [v0 barButtonItem];
  v43 = [v1 menu];

  v2 = [v0 button];
  if (v2 && (v3 = v2, v4 = [v2 isBackButton], v3, (v4 & 1) != 0) || (v5 = objc_msgSend(v0, sel_barButtonItem)) == 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = v5;
    v7 = [v5 _menuIsPrimary];
  }

  v8 = [v0 barButtonItem];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _secondaryActionsProvider];

    if (v10)
    {
      v11 = swift_allocObject();
      v12 = 0;
      *(v11 + 16) = v10;
      v10 = sub_1890A16E4;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = 1;
LABEL_11:
  v13 = [v0 barButtonItem];
  v14 = [v13 _owningButtonGroup];

  if (v12)
  {
    if (v43)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v43;
      v16 = &v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider];
      v17 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider];
      *v16 = sub_1890A16A4;
      v16[1] = v15;
      v18 = v43;
      v19 = v17;
LABEL_22:
      sub_188A55B8C(v19);
      goto LABEL_23;
    }

    if (!v14)
    {
LABEL_21:
      v30 = &v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider];
      v19 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider];
      *v30 = 0;
      *(v30 + 1) = 0;
      goto LABEL_22;
    }

    v26 = v14;
    v27 = [v0 barButtonItem];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 _hasAction];

      if (v29)
      {

        goto LABEL_21;
      }
    }

    v40 = swift_allocObject();
    *(v40 + 16) = v26;
    v41 = &v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider];
    v42 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider];
    *v41 = sub_1890A166C;
    v41[1] = v40;
    sub_188A55B8C(v42);
    v7 = 1;
  }

  else
  {
    v20 = swift_allocObject();

    v21 = [v0 barButtonItem];
    swift_unknownObjectWeakInit();

    v22 = swift_allocObject();
    v22[2] = v10;
    v22[3] = v11;
    v22[4] = v20;
    v23 = &v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider];
    if (v7)
    {
      v24 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider];
      *v23 = sub_1890A16D8;
      *(v23 + 1) = v22;

      sub_188A55B8C(v24);

      v7 = 1;
    }

    else
    {
      v25 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider];
      *v23 = sub_1890A16CC;
      *(v23 + 1) = v22;

      sub_188A55B8C(v25);

      v7 = 0;
    }
  }

LABEL_23:
  v31 = [v0 button];
  if (v31)
  {
    v32 = v31;
    v33 = [v0 barButtonItem];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 preferredMenuElementOrder];
    }

    else
    {
      v35 = 0;
    }

    [v32 setPreferredMenuElementOrder_];
  }

  v36 = [v0 button];
  if (v36)
  {
    v37 = v36;
    [v36 setContextMenuInteractionEnabled_];
  }

  v38 = [v0 button];
  if (v38)
  {
    v39 = v38;
    [v38 setShowsMenuAsPrimaryAction_];
    sub_188A55B8C(v10);
  }

  else
  {
    sub_188A55B8C(v10);
  }
}

uint64_t sub_188C58678()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188C586B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188C58720()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_currentConstraints;
  v3 = MEMORY[0x1E69E7CC0];
  *&v0[v2] = sub_188C58A5C(MEMORY[0x1E69E7CC0]);
  v4 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_oldConstraints;
  *&v0[v4] = sub_188C58A5C(v3);
  *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonMask] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView] = 0;
  v5 = &v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_barButtonTitleAttributes];
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = &v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes];
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 0;
  v7 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundImages;
  *&v0[v7] = sub_188C57CDC(v3);
  *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent] = v3;
  v8 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleLookup;
  *&v0[v8] = sub_188C58A70(v3);
  *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonTitleMaxWidthConstraint] = 0;
  v9 = &v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_menuProvider];
  *v9 = 0;
  v9[1] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_systemItem] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageHasBaseline] = 0;
  v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider__backButtonMaskEnabled] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_style] = 2;
  v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_isSystemItem] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonContentTrailingPadding] = 0x4014000000000000;
  v20.receiver = v0;
  v20.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v20, sel_init);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v10;

  v13 = [(_UIButtonBarButtonVisualProvider *)v12 typedStorage];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1890A16F4;
  *(v14 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B958);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1890A16FC;
  *(v15 + 24) = v14;
  v16 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *&v13[v16];
  *&v13[v16] = 0x8000000000000000;
  sub_188A40430(v15, &_s29SemanticIdentifierProviderKeyVN, isUniquelyReferenced_nonNull_native);
  *&v13[v16] = v19;
  swift_endAccess();

  return v12;
}

uint64_t sub_188C589E8()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188C58A20()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_188C58A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C60);
    v3 = sub_18A4A8488();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = v7;

      result = sub_188B0944C(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

uint64_t sub_188C58BC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_188C58C20(void *a1, void *a2)
{
  v227 = *MEMORY[0x1E69E9840];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = [Strong respondsToSelector_], swift_unknownObjectRelease(), v6))
  {
    _UIBeginTrackingTraitUsage(a1, 0, &v180);
    v224 = v188;
    v225 = v189;
    v226 = v190;
    v220 = v184;
    v221 = v185;
    v223 = v187;
    v222 = v186;
    v216 = v180;
    v217 = v181;
    v219 = v183;
    v218 = v182;
    v212 = v200;
    v213 = v201;
    v214 = v202;
    v208 = v196;
    v209 = v197;
    v149 = v191;
    v215 = v203;
    v210 = v198;
    v211 = v199;
    v204 = v192;
    v205 = v193;
    v150 = 1;
    v206 = v194;
    v207 = v195;
  }

  else
  {
    v149 = 0;
    v150 = 0;
    v226 = 0u;
    v225 = 0u;
    v224 = 0u;
    v223 = 0u;
    v222 = 0u;
    v221 = 0u;
    v220 = 0u;
    v219 = 0u;
    v218 = 0u;
    v217 = 0u;
    v216 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v214 = 0u;
    v215 = 0;
  }

  if ([a2 isSpringLoaded])
  {
    v7 = 1;
  }

  else
  {
    v7 = [a1 isBackButton];
  }

  [a1 setSpringLoaded_];
  sub_188C581B0();
  v8 = [a2 isSystemItem];
  v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_isSystemItem] = v8;
  if (v8)
  {
    v9 = [a2 systemItem];
    *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_systemItem] = v9;
  }

  v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider__backButtonMaskEnabled] = 0;
  v10 = sub_188C5A048();
  [a1 setTintColor_];

  sub_188C5DF30(a2);
  v154 = v2;
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = [v11 compactMetrics];
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if ([a1 isBackButton])
  {
    v14 = 1;
  }

  else
  {
    v14 = [a2 _showsChevron];
  }

  sub_188C5E134(v12);
  sub_188C5AFA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18A64BFB0;
  *(v15 + 32) = &type metadata for _UITraitMonochromaticTreatment;
  *(v15 + 40) = &off_1EE43C038;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_188C5B360(v15, sub_188C5FD18, v16);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  v17 = v154;
  swift_deallocClassInstance();
  v18 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton;
  v19 = *&v154[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
  v153 = a2;
  if (v14)
  {
    if (!v19)
    {
      v20 = sub_188C5B38C();
      v21 = *&v154[v18];
      *&v154[v18] = v20;
    }

    v22 = sub_188C5B6D8(v12);
    v23 = *&v154[v18];
    if (v23)
    {
      [v23 setImage:v22 forState:0];
    }

    v152 = v22;
    v24 = sub_18909C4A0(v13, &selRef_compactBackIndicatorSymbolConfiguration, &selRef_backIndicatorSymbolConfiguration);
    v25 = *&v154[v18];
    if (v25)
    {
      [v25 setPreferredSymbolConfiguration:v24 forImageInState:0];
      v26 = *&v154[v18];
      if (v26)
      {
        [v26 setTintColor_];
      }
    }

    v27 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonMask;
    v28 = *&v154[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonMask];
    if (v28 || (type metadata accessor for ButtonBarButtonVisualProvider.BackButtonMaskView(), v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], v36 = *&v154[v27], *&v154[v27] = v35, v36, (v37 = *&v154[v27]) != 0) && (objc_msgSend(v37, sel_setTranslatesAutoresizingMaskIntoConstraints_, 0), (v28 = *&v154[v27]) != 0))
    {
      v29 = *(v28 + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskImageView);
      v30 = sub_188C5BD44(v13);
      [v29 setImage_];

      v31 = *&v154[v27];
      if (v31)
      {
        v32 = *(v31 + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskImageView);
        v33 = sub_18909C4A0(v13, &selRef_compactBackIndicatorTransitionMaskSymbolConfiguration, &selRef_backIndicatorTransitionMaskSymbolConfiguration);
        [v32 setPreferredSymbolConfiguration_];
      }
    }

    a2 = v153;
  }

  else
  {
    if (v19)
    {
      [v19 removeFromSuperview];
      v34 = *&v154[v18];
    }

    else
    {
      v34 = 0;
    }

    *&v154[v18] = 0;

    v38 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonMask;
    v39 = *&v154[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonMask];
    if (v39)
    {
      [v39 removeFromSuperview];
      v24 = *&v154[v38];
    }

    else
    {
      v24 = 0;
    }

    v152 = 0;
    *&v154[v38] = 0;
  }

  sub_188C5C00C(a2, v14);
  sub_188C5C5BC();
  sub_188C5C8A4(v13);
  [a1 setLayoutMargins_];
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v41 = [v40 edgesPaddingBarButtonItem_];
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0;
  }

  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    [v42 absorptionForItem_];
    v44 = v43;
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0.0;
  }

  v45 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_oldConstraints;
  swift_beginAccess();
  v46 = *&v154[v45];
  v47 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_currentConstraints;
  swift_beginAccess();
  *&v154[v45] = *&v154[v47];
  v151 = v47;
  *&v154[v47] = v46;
  if (!v14)
  {
    if (*&v154[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton])
    {
      v48 = v152;
      v59 = v152;
      v60 = v154;
      v61 = a2;
      sub_18909E200(a2, v13, 0);
      v63 = v62;
      v65 = v64;
      v67 = v66;
      sub_18909E5C4(v41, v62, v64, v66, v68, v44);
      sub_18909EC4C(v63, v65, v67);
      goto LABEL_76;
    }

    v77 = *&v154[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
    v78 = v152;
    if (!v77)
    {
      v91 = v154;
      v92 = a2;
      v48 = v152;
      goto LABEL_76;
    }

    v79 = v154;
    [a2 titlePositionAdjustmentForBarMetrics_];
    v81 = v80;
    v82 = sub_188C686D8(v13, &selRef_miniTitlePositionOffset, &selRef_titlePositionOffset);
    v84 = v83;
    v85 = swift_unknownObjectWeakLoadStrong();
    if (v85)
    {
      [v85 defaultTextPadding];
      v87 = v86;
      swift_unknownObjectRelease();
      v48 = v152;
      if ((v41 & 8) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v87 = 0.0;
      v48 = v152;
      if ((v41 & 8) == 0)
      {
LABEL_56:
        v88 = sub_18909EB28();
        v89 = v81 + v82;
        if ((v41 & 2) != 0)
        {
LABEL_57:
          v90 = v44 + v87;
LABEL_75:
          sub_18909E3C0(v89, 0.0, v90, 0.0, v88);
          sub_188C6EFA0(v84);
          goto LABEL_76;
        }

LABEL_74:
        v90 = sub_18909EB28();
        goto LABEL_75;
      }
    }

    v88 = v44 + v87;
    v89 = v81 + v82;
    if ((v41 & 2) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_74;
  }

  v48 = v152;
  if (v152)
  {
    v49 = v154;
    v50 = a2;
    v51 = v152;
    [v51 alignmentRectInsets];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    if ([v51 _hasBaseline])
    {
      v58 = 0.0;
      LODWORD(v148) = 1;
      goto LABEL_61;
    }
  }

  else
  {
    v53 = 0.0;
    v55 = 0.0;
    v57 = 0.0;
    v69 = v154;
    v70 = a2;
  }

  v71 = 3.0;
  if ((v13 & 1) == 0)
  {
    v72 = [v154 button];
    if (v72)
    {
      v73 = v72;
      v74 = [v72 traitCollection];

      [v74 displayScale];
      v76 = v75;

      v71 = 1.0 / v76 + 5.0;
    }

    else
    {
      v71 = 4.0;
    }
  }

  LODWORD(v148) = 0;
  v58 = v55 + v71;
LABEL_61:
  v93 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton;
  if (*&v154[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton])
  {
    sub_18909E200(a2, v13, 1);
    v97 = *&v154[v93];
    if (v97)
    {
      v98 = v94;
      v99 = v95;
      v100 = v96;
      v101 = v97;
      sub_188C5C9E0(v97, 0.0, 0.0, v53, v58, v57);
      sub_188C5D318(v148, 0.0, v58);
      sub_18909EC4C(v98, v99, v100);
      sub_188C5D680();

      a2 = v153;
    }

    goto LABEL_76;
  }

  v102 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton;
  v103 = *&v154[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (!v103)
  {
LABEL_71:
    sub_188C5C9E0(0, 0.0, 0.0, v53, v58, v57);
    sub_188C5D318(v148, 0.0, v58);
    sub_188C5D680();
    v48 = v152;
    goto LABEL_76;
  }

  v104 = v103;
  v105 = [v104 attributedTitleForState_];
  if (!v105 || (v106 = v105, v107 = [v105 string], v106, sub_18A4A7288(), v107, v108 = sub_18A4A7358(), , v108 < 1))
  {

    a2 = v153;
    goto LABEL_71;
  }

  v109 = sub_188C686D8(v13, &selRef_miniBackButtonTitlePositionOffset, &selRef_backButtonTitlePositionOffset);
  v111 = *&v154[v102];
  if (v111)
  {
    v112 = v109;
    v113 = v110;
    v114 = v111;
    sub_188C5C9E0(v111, v112, 0.0, v53, v58, v57);
    sub_188C5D318(v148, v113, v58);
    sub_188C6EFA0(v113);
    sub_188C5D680();
  }

  v48 = v152;
  a2 = v153;
LABEL_76:
  if (*&v154[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView])
  {
    v115 = sub_18909C398(v13, &selRef_backButtonBackgroundVerticalAdjustmentForBarMetrics_);
    if (v116 == 0.0)
    {
      [a2 backButtonBackgroundVerticalPositionAdjustmentForBarMetrics_];
      v118 = v117;
    }

    else
    {
      v118 = v116;
    }

    sub_18909DC5C(v14, [a2 _resizesBackgroundImage], v118);
  }

  v119 = *&v154[v45];
  v120 = *(v119 + 16);
  if (v120)
  {
    v148 = v45;
    v121 = sub_188AF0A60(v120, 0);
    v122 = sub_188C5DAF0(&v180, v121 + 32, v120, v119);

    sub_188E036A4();
    if (v122 != v120)
    {
      __break(1u);
      goto LABEL_113;
    }

    v123 = objc_opt_self();
    sub_188A34624(0, &qword_1ED48CFF0);
    v124 = sub_18A4A7518();

    [v123 deactivateConstraints_];

    v17 = v154;
    *&v154[v45] = MEMORY[0x1E69E7CC8];
  }

  v125 = *&v17[v151];
  v126 = *(v125 + 16);
  v127 = v17;
  v128 = v153;
  v129 = v153;
  if (!v126)
  {
    goto LABEL_87;
  }

  v130 = sub_188AF0A60(*(v125 + 16), 0);
  v131 = sub_188C5DAF0(&v180, v130 + 32, v126, v125);

  sub_188E036A4();
  if (v131 != v126)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v132 = objc_opt_self();
  sub_188A34624(0, &qword_1ED48CFF0);
  v129 = sub_18A4A7518();

  [v132 activateConstraints_];
  v17 = v154;

  v128 = v153;
  v127 = v153;
LABEL_87:

  v133 = [v128 _gestureRecognizers];
  if (v133)
  {
    v134 = v133;
    sub_188A34624(0, &unk_1EA930B30);
    v135 = sub_18A4A7548();

    if (!(v135 >> 62))
    {
      goto LABEL_89;
    }
  }

  else
  {
    v135 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_89:
      v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v136)
      {
        goto LABEL_98;
      }

      goto LABEL_90;
    }
  }

  v136 = sub_18A4A7F68();
  if (!v136)
  {
    goto LABEL_98;
  }

LABEL_90:
  if (v136 < 1)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
  }

  for (i = 0; i != v136; ++i)
  {
    if ((v135 & 0xC000000000000001) != 0)
    {
      v138 = sub_188E4AFF8(i, v135);
    }

    else
    {
      v138 = *(v135 + 8 * i + 32);
    }

    v139 = v138;
    [a1 addGestureRecognizer_];
  }

LABEL_98:

  v140 = [v128 _interactions];
  if (v140)
  {
    v141 = v140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938610);
    v142 = sub_18A4A7548();

    if (!(v142 >> 62))
    {
      goto LABEL_100;
    }
  }

  else
  {
    v142 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_100:
      v143 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v143)
      {
        goto LABEL_109;
      }

      goto LABEL_101;
    }
  }

  v143 = sub_18A4A7F68();
  if (!v143)
  {
    goto LABEL_109;
  }

LABEL_101:
  if (v143 < 1)
  {
    goto LABEL_115;
  }

  for (j = 0; j != v143; ++j)
  {
    if ((v142 & 0xC000000000000001) != 0)
    {
      v145 = sub_188E4A804(j, v142);
    }

    else
    {
      v145 = *(v142 + 8 * j + 32);
      swift_unknownObjectRetain();
    }

    [a1 addInteraction_];
    swift_unknownObjectRelease();
  }

LABEL_109:

  if (v150)
  {
    v188 = v224;
    v189 = v225;
    v190 = v226;
    v184 = v220;
    v185 = v221;
    v186 = v222;
    v187 = v223;
    v180 = v216;
    v181 = v217;
    v182 = v218;
    v183 = v219;
    v201 = v213;
    v202 = v214;
    v197 = v209;
    v198 = v210;
    v199 = v211;
    v200 = v212;
    v196 = v208;
    v192 = v204;
    v193 = v205;
    v194 = v206;
    v191 = v149;
    v203 = v215;
    v195 = v207;
    _UIEndTrackingTraitUsage(&v180, &v156);
    v188 = v164;
    v189 = v165;
    v190 = v166;
    v184 = v160;
    v185 = v161;
    v186 = v162;
    v187 = v163;
    v180 = v156;
    v181 = v157;
    v182 = v158;
    v183 = v159;
    v201 = v177;
    v202 = v178;
    v197 = v173;
    v198 = v174;
    v199 = v175;
    v200 = v176;
    v196 = v172;
    v192 = v168;
    v193 = v169;
    v194 = v170;
    v195 = v171;
    v203 = v179;
    v191 = v167;
    _UITrackedStateCompare(v149, v167, &v156);
    v155 = v156;
    v146 = v157;
    v147 = [v17 methodForSelector_];
    v156 = v155;
    *&v157 = v146;
    [(UIView *)a1 _recordTraitUsage:&v156 trackedStateDiff:v147 insideMethod:sel_traitDependenciesUpdated withInvalidationAction:?];
    _UITraitUsageTrackingResultDestroy(&v180);
  }
}

id _UIImageWithNameAndTraitCollection(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    v5 = [v4 imageConfiguration];
    v6 = [UIImageConfiguration _completeConfiguration:v5 fromConfiguration:0];

    os_unfair_lock_lock(&__tableLock);
    if (!__liveNamedTable)
    {
      v7 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:5];
      v8 = __liveNamedTable;
      __liveNamedTable = v7;
    }

    v9 = __UIKitSharedArtworkManager();
    v10 = [v9 bundle];

    v11 = [_UIImageCacheKey keyWithName:v3 configuration:v6 bundle:v10];
    v12 = [__liveNamedTable objectForKey:v11];
    os_unfair_lock_unlock(&__tableLock);
    if (!v12)
    {
      v13 = __UIKitSharedArtworkManager();
      v12 = [v13 imageNamed:v3 configuration:v6];

      os_unfair_lock_lock(&__tableLock);
      [__liveNamedTable setObject:v12 forKey:v11];
      os_unfair_lock_unlock(&__tableLock);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __UIKitSharedArtworkManager()
{
  if (qword_1ED4A2650 != -1)
  {
    dispatch_once(&qword_1ED4A2650, &__block_literal_global_41_2);
  }

  v1 = qword_1ED4A2648;

  return v1;
}

id sub_188C5A048()
{
  v1 = [v0 barButtonItem];
  if (v1)
  {
    v2 = v1;
    if ([v1 style] || (objc_msgSend(v2, sel_isEnabled) & 1) != 0)
    {
    }

    else
    {
      v11 = [objc_opt_self() tertiaryLabelColor];

      if (v11)
      {
        return v11;
      }
    }
  }

  v3 = [v0 barButtonItem];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  v5 = [v0 button];
  if (!v5)
  {
    v6 = v4;
    goto LABEL_15;
  }

  v6 = v5;
  if (![v4 _prefersFilledAppearance] || !objc_msgSend(v6, sel_usesAdjustedTintColorWhenItemPrefersFilledAppearance))
  {

LABEL_15:
    goto LABEL_16;
  }

  v7 = [v4 tintColor];
  if (!v7)
  {
    v7 = [(UIView *)v6 _ancestorTintColor];
  }

  v8 = objc_opt_self();
  v9 = [v6 traitCollection];
  v10 = [v8 _legibleForegroundColorForBackgroundColor_traitCollection_];

  if (v10)
  {
    return v10;
  }

LABEL_16:
  v12 = [v0 barButtonItem];
  v11 = [v12 tintColor];

  if (v11)
  {
    return v11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = [Strong appearanceStorage];
    swift_unknownObjectRelease();
    v16 = [v15 tintColor];

    if (v16)
    {
      return v16;
    }
  }

  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v19 = [v0 button];
  if (!v19)
  {
LABEL_30:
    v11 = [v18 tintColor];
    swift_unknownObjectRelease();
    return v11;
  }

  v20 = v19;
  if (![v18 respondsToSelector_])
  {

    goto LABEL_30;
  }

  if ([v18 respondsToSelector_])
  {
    v11 = [swift_unknownObjectRetain() tintColorForButtonBarButton_];

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();

    return 0;
  }

  return v11;
}

uint64_t sub_188C5A3BC()
{
  v1 = &selRef_bluetoothBatteryColorForCapacity_usingTintColor_;
  v2 = [v0 button];
  if (!v2 || (v3 = v2, v4 = [v2 appearanceData], v3, !v4))
  {
    v8 = [objc_opt_self() standardItemDataForStyle_];
    v9 = [v8 titleTextAttributesForState_];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for Key(0);
      sub_188C5E0DC();
      v7 = sub_18A4A70A8();
    }

    else
    {
      v7 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v12 = [Strong appearanceStorage], swift_unknownObjectRelease(), !v12) || (v13 = objc_msgSend(v12, sel_textAttributesForState_, 0), v12, !v13) || (v14 = sub_18A4A70A8(), v13, v15 = sub_18909D810(v14), , !v15))
    {
      v15 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
    }

    if (*(v15 + 16))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55[0] = v7;
      sub_188EC9588(v15, sub_189038230, 0, isUniquelyReferenced_nonNull_native, v55);

      swift_bridgeObjectRelease_n();
      v7 = v55[0];
    }

    else
    {
    }

    v17 = [v8 titleTextAttributesForState_];
    if (v17)
    {
      v18 = v17;
      type metadata accessor for Key(0);
      sub_188C5E0DC();
      v19 = sub_18A4A70A8();
    }

    else
    {
      v19 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
    }

    v20 = swift_unknownObjectWeakLoadStrong();
    if (!v20 || (v21 = [v20 appearanceStorage], swift_unknownObjectRelease(), !v21) || (v22 = objc_msgSend(v21, sel_textAttributesForState_, 1), v21, !v22) || (v23 = sub_18A4A70A8(), v22, v24 = sub_18909D810(v23), , !v24))
    {
      v24 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
    }

    if (*(v24 + 16))
    {

      v25 = swift_isUniquelyReferenced_nonNull_native();
      v55[0] = v19;
      sub_188EC9588(v24, sub_189038230, 0, v25, v55);

      swift_bridgeObjectRelease_n();
      v19 = v55[0];
    }

    else
    {
    }

    v26 = [v8 titleTextAttributesForState_];
    if (v26)
    {
      v27 = v26;
      type metadata accessor for Key(0);
      sub_188C5E0DC();
      v28 = sub_18A4A70A8();
    }

    else
    {
      v28 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
    }

    v29 = swift_unknownObjectWeakLoadStrong();
    if (!v29 || (v30 = [v29 appearanceStorage], swift_unknownObjectRelease(), !v30) || (v31 = objc_msgSend(v30, sel_textAttributesForState_, 2), v30, !v31) || (v32 = sub_18A4A70A8(), v31, v33 = sub_18909D810(v32), , !v33))
    {
      v33 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
    }

    v1 = &selRef_bluetoothBatteryColorForCapacity_usingTintColor_;
    if (*(v33 + 16))
    {

      v34 = swift_isUniquelyReferenced_nonNull_native();
      v55[0] = v28;
      sub_188EC9588(v33, sub_189038230, 0, v34, v55);

      swift_bridgeObjectRelease_n();
      v28 = v55[0];
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v5 = [v4 titleTextAttributesForState_];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v7 = sub_18A4A70A8();
  }

  else
  {
    v7 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v35 = [v4 titleTextAttributesForState_];
  if (v35)
  {
    v36 = v35;
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v19 = sub_18A4A70A8();
  }

  else
  {
    v19 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v37 = [v4 titleTextAttributesForState_];
  if (v37)
  {
    v8 = v37;
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v28 = sub_18A4A70A8();

LABEL_44:
    goto LABEL_46;
  }

  v28 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);

LABEL_46:
  v38 = sub_188C5A048();
  if (!v38)
  {
    v39 = [v0 v1[239]];
    if (v39)
    {
      v40 = v39;
      v38 = [v39 tintColor];
    }

    else
    {
      v38 = 0;
    }
  }

  v41 = [v0 v1[239]];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 traitCollection];
  }

  else
  {
    v43 = 0;
  }

  v44 = &v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_barButtonTitleAttributes];
  v45 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_barButtonTitleAttributes];
  if (v45)
  {
  }

  else
  {
    v45 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v46 = sub_188C5AC4C(v7, v45, v38, v43);

  if (*v44)
  {
    v47 = *(v44 + 1);
  }

  else
  {
    v47 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v48 = sub_188C5AC4C(v19, v47, v38, v43);

  if (*v44)
  {
    v49 = *(v44 + 2);
  }

  else
  {
    v49 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v50 = sub_188C5AC4C(v28, v49, v38, v43);

  v51 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleLookup;
  swift_beginAccess();
  *&v0[v51] = MEMORY[0x1E69E7CC8];

  v52 = &v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes];
  v53 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes];
  *v52 = v46;
  v52[1] = v48;
  v52[2] = v50;
  return sub_188C58BC4(v53);
}

uint64_t sub_188C5AC4C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = a1;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3 == 0;
  }

  if (v6 && a4 == 0)
  {

    return v4;
  }

  v32 = a1;

  if (v5)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v30 = v4;
    sub_188EC9588(a2, sub_189038230, 0, isUniquelyReferenced_nonNull_native, &v30);

    v4 = v30;
    v32 = v30;
  }

  if (a3)
  {
    v12 = *off_1E70EC920;
    v13 = *(v4 + 16);
    v14 = a3;
    if (v13 && (v15 = sub_188B00858(v12), (v16 & 1) != 0))
    {
      sub_188A55598(*(v4 + 56) + 32 * v15, &v30);

      sub_188A3F5FC(&v30, &qword_1EA934050);
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      sub_188A3F5FC(&v30, &qword_1EA934050);
      *(&v31 + 1) = sub_188A34624(0, qword_1ED4913C0);
      *&v30 = v14;
      sub_188A55538(&v30, v29);
      v17 = v14;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      sub_188B32C50(v29, v12, v18);

      v32 = v4;
    }
  }

  if (a4)
  {
    v19 = *off_1E70EC918;
    v20 = *(v4 + 16);
    v21 = a4;
    if (v20 && (v22 = sub_188B00858(v19), (v23 & 1) != 0) && (sub_188A55598(*(v4 + 56) + 32 * v22, &v30), v24 = sub_188A34624(0, &qword_1ED48C4A0), (swift_dynamicCast() & 1) != 0) && (v25 = v29[0]) != 0)
    {
      v26 = [v29[0] _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];
      if (v26)
      {
        v29[3] = v24;
        v29[0] = v26;
        sub_188A55538(v29, &v30);
        v24 = *(&v31 + 1);
        goto LABEL_25;
      }

      *(&v31 + 1) = v24;
      *&v30 = v25;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v30 = 0u;
      v31 = 0u;
    }

    v25 = v25;
LABEL_25:
    if (v24)
    {
      sub_188A55538(&v30, v29);
      v4 = v32;
      v27 = swift_isUniquelyReferenced_nonNull_native();
      sub_188B32C50(v29, v19, v27);
    }

    else
    {
      sub_188A3F5FC(&v30, &qword_1EA934050);
      sub_1891E9B7C(v19, v29);

      sub_188A3F5FC(v29, &qword_1EA934050);
      return v32;
    }
  }

  return v4;
}

void sub_188C5AFA4()
{
  v1 = v0;
  v2 = [v0 button];
  if (!v2)
  {
    return;
  }

  v22 = v2;
  v3 = [v0 barButtonItem];
  if (v3)
  {
    v4 = v3;
    if (![v3 isEnabled] || (objc_msgSend(v4, sel_selected) & 1) != 0 || objc_msgSend(v4, sel__prefersFilledAppearance) && (objc_msgSend(v22, sel_usesAdjustedTintColorWhenItemPrefersFilledAppearance) & 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v21 = [v4 tintColor];
      if (v21)
      {

        v5 = [objc_opt_self() shouldUseMonochromeTreatmentWithCustomTintColor];
      }

      else
      {
        v5 = 1;
      }
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (v6)
  {
    v7 = v6[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_enableMonochromaticTreatmentOnImageAndTitle];
    v6[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_enableMonochromaticTreatmentOnImageAndTitle] = v5;
    if (v5 != v7)
    {
      v8 = v6;
      if (![v8 _visualProvider])
      {
        __break(1u);
        goto LABEL_44;
      }

      type metadata accessor for ButtonBarButtonVisualProvider.ButtonVisualProvider();
      swift_dynamicCastClassUnconditional();
      v9 = [v8 _imageView];
      if (v9)
      {

        sub_1890A0B8C();
      }

      v10 = [v8 _titleView];
      if (v10)
      {

        sub_1890A0D18();
      }

      swift_unknownObjectRelease();
    }
  }

  v11 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v11[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_enableMonochromaticTreatmentOnImageAndTitle];
  v11[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_enableMonochromaticTreatmentOnImageAndTitle] = v5;
  if (v5 == v12)
  {
    goto LABEL_25;
  }

  v13 = v11;
  if (![v13 _visualProvider])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  type metadata accessor for ButtonBarButtonVisualProvider.ButtonVisualProvider();
  swift_dynamicCastClassUnconditional();
  v14 = [v13 _imageView];
  if (v14)
  {

    sub_1890A0B8C();
  }

  v15 = [v13 _titleView];
  if (v15)
  {

    sub_1890A0D18();
  }

  swift_unknownObjectRelease();
LABEL_25:
  v16 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
  if (v16)
  {
    v17 = v16[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_enableMonochromaticTreatmentOnImageAndTitle];
    v16[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_enableMonochromaticTreatmentOnImageAndTitle] = v5;
    if (v5 != v17)
    {
      v18 = v16;
      if ([v18 _visualProvider])
      {
        type metadata accessor for ButtonBarButtonVisualProvider.ButtonVisualProvider();
        swift_dynamicCastClassUnconditional();
        v19 = [v18 _imageView];
        if (v19)
        {

          sub_1890A0B8C();
        }

        v20 = [v18 _titleView];
        if (v20)
        {

          sub_1890A0D18();
        }

        swift_unknownObjectRelease();
        return;
      }

LABEL_45:
      __break(1u);
      return;
    }
  }
}

id sub_188C5B38C()
{
  type metadata accessor for ButtonBarButtonVisualProvider.Button();
  swift_dynamicCastMetatypeUnconditional();
  v0 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setUserInteractionEnabled_];

  v1 = v0;
  [v1 _setImageContentMode_];
  [v1 _setDisableAutomaticTitleAnimations_];

  LODWORD(v2) = 1144913920;
  [v1 setContentCompressionResistancePriority:0 forAxis:v2];
  return v1;
}

id sub_188C5B4A8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame];
  v11 = *(MEMORY[0x1E695F050] + 16);
  *v10 = *MEMORY[0x1E695F050];
  v10[1] = v11;
  v4[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_usesTintColorCapsuleForSelection] = 0;
  v4[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_enableMonochromaticTreatmentOnImageAndTitle] = 0;
  *&v4[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets] = UIEdgeInsetsZero;
  v4[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___guardAgainstDegenerateBaselineCalculation] = 0;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for _UITraitMonochromaticTreatment;
  *(inited + 40) = &off_1EE43C038;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = v12;
  sub_188B095EC(inited, sub_188C5FD74, v14);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  return v15;
}

id sub_188C5B6D8(char a1)
{
  v3 = [v1 button];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 appearanceData];

    if (v5)
    {
      v6 = &selRef_compactBackIndicatorImage;
      if ((a1 & 1) == 0)
      {
        v6 = &selRef_backIndicatorImage;
      }

      v7 = [v5 *v6];

      if (v7)
      {
        goto LABEL_12;
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v7 = [Strong backIndicatorImage], swift_unknownObjectRelease(), !v7))
  {
    v9 = ((a1 & 1) != 0 ? &selRef_compactBackIndicatorImage : &selRef_backIndicatorImage);
    v10 = [objc_opt_self() standardBackButtonData];
    v7 = [v10 *v9];

    if (!v7)
    {
      return 0;
    }
  }

LABEL_12:
  v11 = [v7 imageFlippedForRightToLeftLayoutDirection];

  return v11;
}