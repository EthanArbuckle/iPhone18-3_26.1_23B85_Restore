uint64_t sub_1B383AD38(uint64_t a1, void *a2)
{
  if (a2)
  {
    swift_getObjectType();
    [a2 selectedIndex];
    return sub_1B3C98C58();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B383AE00(void *a1, double a2, double a3, double a4, double a5)
{
  if (([v5 isActivelyAdjusting] & 1) == 0)
  {
    if (a1)
    {
      [a1 convertRect:*&v5[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_controlView] toCoordinateSpace:{a2, a3, a4, a5}];

      sub_1B3834E58(v11, v12, v13, v14);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1B383AF48()
{
  [v0 setActivelyAdjusting_];
  [v0 willModifyAdjustment];
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissAnimator;
  v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_padDismissAnimator];
  if (v2)
  {
    if ([v2 state] != 2)
    {
      v3 = *&v0[v1];
      if (v3)
      {
        [v3 stopAnimation_];
        v4 = *&v0[v1];
        if (v4)
        {
          [v4 finishAnimationAtPosition_];
        }
      }
    }
  }

  OUTLINED_FUNCTION_3_36();

  sub_1B382FE48();
}

void sub_1B383B0E4()
{
  v0[OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_isDraggingScrubberView] = 0;
  [v0 setPerformingLiveInteraction_];
  [v0 setActivelyAdjusting_];
  OUTLINED_FUNCTION_13_0();
  v1 = sub_1B3C9C5A8();
  v2 = PELocalizedString();

  v3 = sub_1B3C9C5E8();
  v5 = v4;

  OUTLINED_FUNCTION_31_5();

  sub_1B382FE48();
}

uint64_t sub_1B383B2A0()
{
  v0 = *(sub_1B382C940() + 16);

  return v0;
}

uint64_t sub_1B383B318(uint64_t a1, unint64_t a2)
{
  result = sub_1B382C940();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a2)
  {
    v4 = *(result + 8 * a2 + 32);

    v5 = sub_1B3711890(v4);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B383B3E4(void *a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectUnownedInit();

  v5 = *(v2 + 24);
  *(v2 + 24) = a2;

  return v2;
}

uint64_t sub_1B383B434()
{
  swift_unknownObjectUnownedDestroy();

  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B383B490()
{
  v1 = [v0 ppt_didBecomeActiveToolBlock];
  if (v1)
  {
    _Block_release(v1);
    v2 = [v0 ppt_didBecomeActiveToolBlock];
    if (v2)
    {
      v3 = v2;
      (*(v2 + 2))();

      _Block_release(v3);
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_1B383B560()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberImageSources;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v17 = v0;
  v2 = *(v0 + v1);
  v3 = sub_1B3711890(v2);

  v5 = 0;
  while (1)
  {
    if (v3 == v5)
    {
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B8C6A930](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_1B3C987C8();

    v7 = sub_1B3C9C618();
    v9 = v8;

    if (v7 == sub_1B3C9C618() && v9 == v10)
    {
      break;
    }

    v12 = sub_1B3C9D6A8();

    if (v12)
    {
      goto LABEL_17;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_25;
    }
  }

LABEL_17:

  v14 = *(v17 + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_scrubberView);
  result = [v14 selectedIndex];
  v15 = &result[-v5];
  if (result >= v5)
  {
    if (result > v5)
    {
      do
      {
        result = [v14 switchToPreviousItem];
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    do
    {
      result = [v14 switchToNextItem];
    }

    while (!__CFADD__(v15++, 1));
  }

  return result;
}

unint64_t sub_1B383B7D4()
{
  result = qword_1EB8567A8;
  if (!qword_1EB8567A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8567A8);
  }

  return result;
}

id sub_1B383B828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1B3C9C5A8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithText:v8 style:a3 interfaceTheme:a4];

  swift_unknownObjectRelease();
  return v9;
}

id sub_1B383B8B0(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1B3C9D688();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

void *sub_1B383B9F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

size_t sub_1B383BAC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B383BBBC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_1B383BC3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B3D01200;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1B383BCA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = sub_1B3C9D2C8();
  if (!__OFADD__(v8, 1))
  {
    *v3 = sub_1B383BD38(v7, v8 + 1);
LABEL_7:
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1B3720034(a1, a2);
    *v3 = v9;
    return;
  }

  __break(1u);
}

uint64_t sub_1B383BD38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8567E8);
    v2 = sub_1B3C9D528();
    v17 = v2;
    sub_1B3C9D488();
    while (1)
    {
      v3 = sub_1B3C9D4B8();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_1B3C987D8();
      swift_dynamicCast();
      sub_1B3C9CBC8();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_1B383BF2C(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_1B3C9CF98();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B383BF2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8567E8);
  result = sub_1B3C9D518();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_32:
    *v3 = v7;
    return result;
  }

  v32 = v2;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        sub_1B383BC3C(0, (v31 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((a2 & 1) == 0)
    {
      v21 = v19;
      v22 = v20;
    }

    result = sub_1B3C9CF98();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v7 + 48) + 8 * v26) = v19;
    *(*(v7 + 56) + 8 * v26) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1B383C190(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_1B3711890(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_1B3711890(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1B37ED0C0(result, 1);
  v9 = OUTLINED_FUNCTION_5_1();

  return sub_1B37EBE40(v9, v10, 0);
}

uint64_t sub_1B383C230(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x1E69E9840];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1B383BC3C(0, v5, v6);
    v7 = sub_1B383C3D0(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_1B383C55C(v9, v5, sub_1B383CDA0);

    MEMORY[0x1B8C6EC70](v9, -1, -1);
  }

  return v7;
}

uint64_t sub_1B383C3D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v24 = *(a3 + 16);
  v22 = result;
  v23 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v21 = v5;
LABEL_3:
    if (v6 == v24)
    {
      goto LABEL_19;
    }

    if (v6 >= v24)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v23 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v25 = v6 + 1;
    sub_1B3C9D7C8();

    sub_1B3C9C668();
    v11 = sub_1B3C9D7F8();
    v12 = ~(-1 << *(a4 + 32));
    do
    {
      v13 = v11 & v12;
      v14 = (v11 & v12) >> 6;
      v15 = 1 << (v11 & v12);
      if ((v15 & *(v7 + 8 * v14)) == 0)
      {

        v6 = v25;
        goto LABEL_3;
      }

      v16 = (*(a4 + 48) + 16 * v13);
      if (*v16 == v10 && v16[1] == v9)
      {
        break;
      }

      v18 = sub_1B3C9D6A8();
      v11 = v13 + 1;
    }

    while ((v18 & 1) == 0);

    v19 = v22[v14];
    v22[v14] = v19 | v15;
    v6 = v25;
    if ((v19 & v15) != 0)
    {
      goto LABEL_3;
    }

    v5 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_19:

      return sub_1B37F98F4(v22, a2, v21, a4);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_1B383C55C(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_1B383C5D8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  }

  v1 = sub_1B3C9D2C8();
  result = sub_1B3C9D2C8();
  if ((result & 0x8000000000000000) == 0)
  {
    result = sub_1B3C9D2C8();
    if ((v1 & 0x8000000000000000) == 0 && result >= v1)
    {
      return v1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B383C64C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x1E69E9840];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1B383BC3C(0, v5, v6);
    v7 = sub_1B383C7D8(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_1B383C964(v9, v5, sub_1B383CDF0);
    MEMORY[0x1B8C6EC70](v9, -1, -1);
  }

  return v7 & 1;
}

uint64_t sub_1B383C7D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v24 = *(a3 + 16);
  v22 = result;
  v23 = a3 + 32;
  v6 = a4 + 56;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v7 = v5;
      if (v5 == v24)
      {
        return v7 != v24;
      }

      if (v5 >= v24)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v25 = v5 + 1;
      v8 = (v23 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      sub_1B3C9D7C8();

      sub_1B3C9C668();
      v11 = sub_1B3C9D7F8();
      v12 = ~(-1 << *(a4 + 32));
      do
      {
        v13 = v11 & v12;
        v14 = (v11 & v12) >> 6;
        v15 = 1 << (v11 & v12);
        if ((v15 & *(v6 + 8 * v14)) == 0)
        {

          v5 = v25;
          goto LABEL_2;
        }

        v16 = (*(a4 + 48) + 16 * v13);
        if (*v16 == v10 && v16[1] == v9)
        {
          break;
        }

        v18 = sub_1B3C9D6A8();
        v11 = v13 + 1;
      }

      while ((v18 & 1) == 0);

      v19 = *(v22 + 8 * v14);
      *(v22 + 8 * v14) = v19 | v15;
      v5 = v25;
      if ((v19 & v15) != 0)
      {
        continue;
      }

      break;
    }

    v20 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      ++v21;
      if (v20 != *(a4 + 16))
      {
        continue;
      }

      return v7 != v24;
    }

    break;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1B383C964(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

id sub_1B383C9F0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B3C9C5A8();
  OUTLINED_FUNCTION_30_0();

  v5 = [a3 didModifyAdjustmentWithLocalizedName_];

  return v5;
}

unint64_t sub_1B383CA94()
{
  result = qword_1EB8567C0;
  if (!qword_1EB8567C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8567C0);
  }

  return result;
}

id sub_1B383CAF8()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + OBJC_IVAR____TtC15PhotosUIPrivate26PUPhotoStyleToolController_labelsView) setAlpha_];
}

uint64_t sub_1B383CB38()
{
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B383CC0C;
  v8 = OUTLINED_FUNCTION_28_5();

  return sub_1B3833048(v8, v9, v4, v5, v6, v7, v2);
}

uint64_t sub_1B383CC0C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_1B383CD20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B383CD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B383C3D0(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1B383CDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1B383C7D8(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t objectdestroy_29Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_1B383CFA4()
{
  if (!qword_1EB856830)
  {
    v0 = sub_1B3C9C7A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB856830);
    }
  }
}

_BYTE *sub_1B383CFEC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B383D0CC()
{
  result = qword_1EB856860[0];
  if (!qword_1EB856860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB856860);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_21()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return sub_1B3C9CBB8();
}

uint64_t OUTLINED_FUNCTION_26_9()
{
}

void OUTLINED_FUNCTION_27_9()
{
  v2 = *(v0 - 264);
}

void OUTLINED_FUNCTION_33_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_34_6()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_37_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1B383D394(_OWORD *a1)
{
  v2 = (v1 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider_input);
  v4 = *(v1 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider_input);
  v3 = *(v1 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider_input + 8);
  v5 = *(v1 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider_input + 16);
  v6 = *(v1 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider_input + 24);
  v7 = *(v1 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider_input + 32);
  v8 = a1[1];
  *v2 = *a1;
  v2[1] = v8;
  v2[2] = a1[2];
  sub_1B383F678(v4, v3, v5, v6, v7);
  sub_1B383DAB4();
  sub_1B3C99FA8();
}

uint64_t sub_1B383D4A4()
{
  swift_unknownObjectWeakAssign();
  sub_1B383D4F0();

  return swift_unknownObjectRelease();
}

uint64_t sub_1B383D4F0()
{
  sub_1B383DBF4();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1B3753BEC(0x656C654477656976, 0xEC00000065746167, sub_1B383F670, v0);
}

void sub_1B383D598()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1B383DA6C();

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        sub_1B383D6A0();
      }

      swift_unknownObjectWeakAssign();

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1B383D6A0()
{
  swift_getKeyPath();
  sub_1B383F628(&qword_1EB84F478, type metadata accessor for OneUpNavigationTitleSubtitleViewProvider);
  sub_1B3C982D8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1B383D7AC()
{
  swift_getKeyPath();
  sub_1B383E064();

  return swift_unknownObjectRelease();
}

uint64_t sub_1B383D888(uint64_t a1)
{
  sub_1B383DBF4();
  OUTLINED_FUNCTION_20();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_14_1();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  sub_1B3753BEC(0xD000000000000010, 0x80000001B3D1BCE0, sub_1B383DCD8, v3);
}

void sub_1B383D95C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1B383DA6C();

    if (v5)
    {
      sub_1B3843E10(a2);
    }
  }
}

uint64_t sub_1B383DA6C()
{
  sub_1B383DAB4();
  sub_1B3C99FB8();

  if (v1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B383DAB4()
{
  v1 = OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider____lazy_storage___updater;
  if (*(v0 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider____lazy_storage___updater))
  {
    v2 = *(v0 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider____lazy_storage___updater);
  }

  else
  {
    v3 = v0;
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    v4 = swift_unknownObjectWeakInit();
    sub_1B3847274(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8568B8);
    swift_allocObject();
    v2 = sub_1B3C99FD8();
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_1B383DB98(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1B383DD4C(a1);
  }
}

void *sub_1B383DBF4()
{
  v1 = OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider____lazy_storage___delayedUpdater;
  if (*(v0 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider____lazy_storage___delayedUpdater))
  {
    v2 = *(v0 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider____lazy_storage___delayedUpdater);
  }

  else
  {
    OUTLINED_FUNCTION_20();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for OneUpDelayedUpdater();
    v2 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853620);
    v2[2] = sub_1B3C9C4D8();
    v2[3] = sub_1B383F6E8;
    v2[4] = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1B383DCE0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1B383DA6C();

    if (v2)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B383DD4C(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider_input);
  v4 = *(v1 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider_input + 16);
  v37[0] = *(v1 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider_input);
  v37[1] = v4;
  v37[2] = *(v1 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider_input + 32);
  v5 = swift_allocObject();
  v6 = v3[1];
  v5[1] = *v3;
  v5[2] = v6;
  v5[3] = v3[2];
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_14_1();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v16 = OUTLINED_FUNCTION_3_37(v8, v9, v10, v11, v12, v13, v14, v15, v25, v27, v29, v31, v33, v35, v37[0]);
  OUTLINED_FUNCTION_3_37(v16, v17, v18, v19, v20, v21, v22, v23, v26, v28, v30, v32, v34, v36, v37[0]);

  sub_1B383E44C(sub_1B383F5FC, v5, sub_1B383F604, v8);

  return sub_1B371B36C(v37, &qword_1EB8568B0);
}

uint64_t sub_1B383DE9C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 != 1)
  {
    v6 = *(a2 + 32);
    v7 = *(a2 + 16);
    if (v7)
    {
      v8 = v7();
      if (v3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = sub_1B3C98118();
      v8 = __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
      if (v3)
      {
LABEL_5:
        v5 = v3(v8);
        if (!v6)
        {
          return v5;
        }

LABEL_6:
        v6();
        return v5;
      }
    }

    v5 = 0;
    if (!v6)
    {
      return v5;
    }

    goto LABEL_6;
  }

  v4 = sub_1B3C98118();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  return 0;
}

void sub_1B383DF94(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v1;
    sub_1B383E004(&v4);
  }
}

uint64_t sub_1B383E004(id *a1)
{
  v3 = *a1;
  v1 = *a1;
  sub_1B3C99FC8();
  sub_1B37B1A0C(v3);
  sub_1B383DBF4();
  sub_1B3753D10();
}

id OneUpNavigationTitleSubtitleViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpNavigationTitleSubtitleViewProvider.init()()
{
  v1 = &v0[OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider_input];
  *v1 = 1;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 5) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider_producer;
  type metadata accessor for OneUpNavigationTitleSubtitleViewResultProducer();
  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider____lazy_storage___updater] = 0;
  *&v0[OBJC_IVAR___PUOneUpNavigationTitleSubtitleViewProvider____lazy_storage___delayedUpdater] = 0;
  sub_1B3C98308();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for OneUpNavigationTitleSubtitleViewProvider();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t type metadata accessor for OneUpNavigationTitleSubtitleViewProvider()
{
  result = qword_1EB84F460;
  if (!qword_1EB84F460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id OneUpNavigationTitleSubtitleViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpNavigationTitleSubtitleViewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id OneUpNavigationTitleSubtitleViewResult.titleSubtitleView.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t static OneUpNavigationTitleSubtitleViewResult.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      type metadata accessor for OneUpNavigationTitleSubtitleView();
      v4 = v3;
      v5 = v2;
      v6 = sub_1B3C9CFA8();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B383E44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1B3C9C118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B3C9C168();
  v14 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB84F448 != -1)
  {
    swift_once();
  }

  v20[1] = qword_1EB84F450;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v5;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_1B383F5AC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_47;
  v18 = _Block_copy(aBlock);

  sub_1B3C9C138();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1B383F628(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_1B383E764(uint64_t (*a1)(char *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v43 = a3;
  v47 = sub_1B3C9C118();
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B3C9C168();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8568A0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v17 = (&v41 + *(v10 + 56) - v15);
  v18 = (&v41 + *(v10 + 72) - v15);
  v19 = a1(&v41 - v15, v14);
  *v17 = v19;
  v17[1] = v20;
  *v18 = v21;
  v18[1] = v22;
  v23 = static OneUpTitleFormatter.formattedStrings(forAssetCreationDate:localizedGeoDescription:)(v16, v19, v20);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1B373EE18(v16, v12, &unk_1EB8568A0);

  v30 = &v12[*(v10 + 72)];
  v31 = *v30;
  v32 = *(v30 + 1);
  sub_1B371B36C(v12, &unk_1EB855BF0);
  sub_1B3710718(0, &qword_1EB84FE60);
  v33 = sub_1B3C9CC88();
  v34 = swift_allocObject();
  v35 = v44;
  v34[2] = v43;
  v34[3] = v23;
  v34[4] = v25;
  v34[5] = v27;
  v34[6] = v29;
  v34[7] = v31;
  v34[8] = v32;
  v34[9] = v35;
  v34[10] = v45;
  aBlock[4] = sub_1B383F5C4;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_46_0;
  v36 = _Block_copy(aBlock);

  v37 = v42;
  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B383F628(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  v39 = v46;
  v38 = v47;
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v37, v39, v36);
  _Block_release(v36);

  (*(v50 + 8))(v39, v38);
  (*(v48 + 8))(v37, v49);
  return sub_1B371B36C(v16, &unk_1EB8568A0);
}

void sub_1B383EBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void **))
{
  sub_1B383EC2C(a2, a3, a4, a5, a6, a7, &v10);
  v9 = v10;
  a8(&v10);
}

id sub_1B383EC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v8 = v7;
  v16 = *(v8 + 16);
  if (!v16 && a2 | a4)
  {
    type metadata accessor for OneUpNavigationTitleSubtitleView();
    v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v18 = *(v8 + 16);
    *(v8 + 16) = v17;

    v16 = *(v8 + 16);
  }

  if (v16)
  {
    v19 = v16;
    sub_1B3843D00(a1, a2, a3, a4, a5, a6);

    v20 = *(v8 + 16);
  }

  else
  {
    v20 = 0;
  }

  *a7 = v20;

  return v20;
}

uint64_t sub_1B383ED1C()
{
  v7 = sub_1B3C9CC78();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B3C9CC48();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1B3C9C168();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1B3710718(0, &qword_1EB84FE60);
  sub_1B3C9C148();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1B383F628(&qword_1EB84FE70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854940);
  sub_1B3739124(&qword_1EB84FE80, &unk_1EB854940);
  sub_1B3C9D278();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1B3C9CCA8();
  qword_1EB84F450 = result;
  return result;
}

uint64_t sub_1B383EF7C()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

__n128 OneUpNavigationTitleSubtitleViewInput.init(titleModelInput:symbolNamePromise:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  return result;
}

uint64_t OneUpNavigationTitleSubtitleViewProvider.setInputAsset(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *&v6 = sub_1B37B1238;
  *(&v6 + 1) = v3;
  v7 = sub_1B37B1230;
  v8 = v2;
  v9 = sub_1B383F27C;
  v10 = v4;
  swift_unknownObjectRetain_n();
  sub_1B370A6FC(sub_1B37B1238);
  sub_1B370A6FC(sub_1B37B1230);
  sub_1B383D394(&v6);
  sub_1B36F9DA0(sub_1B37B1238);

  return sub_1B36F9DA0(sub_1B37B1230);
}

uint64_t sub_1B383F0D4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1B3710718(0, &qword_1EB84FE30);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_unknownObjectRetain();
  v4 = [ObjCClassFromMetadata sharedInstance];
  v5 = [v4 showSharedLibraryStatusInSubtitle];

  v6 = 0;
  if (!v5)
  {
LABEL_6:
    swift_unknownObjectRelease();
    return v6;
  }

  v7 = PUSharedLibraryStateForAsset(v2);
  if (v7 < 3)
  {
    v6 = qword_1B3D081C0[v7];
    goto LABEL_6;
  }

  sub_1B3C9D378();
  MEMORY[0x1B8C69C10](0xD00000000000001ELL, 0x80000001B3D1BF40);
  type metadata accessor for PUSharedLibraryAssetState(0);
  sub_1B3C9D458();
  result = sub_1B3C9D4C8();
  __break(1u);
  return result;
}

uint64_t sub_1B383F28C()
{
  result = sub_1B3C98318();
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

uint64_t sub_1B383F3CC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B383F420(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B383F480(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B383F4D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B383F628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B383F678(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result != 1)
  {
    sub_1B36F9DA0(result);
    sub_1B36F9DA0(a3);

    return sub_1B36F9DA0(a5);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return sub_1B373EE18(&a15, &a9, v15);
}

id AssetHighlightTimeRangesProducer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssetHighlightTimeRangesProducer.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69C3B70]) init];
  v2 = [v0 initWithMediaAnalyzer_];

  return v2;
}

id AssetHighlightTimeRangesProducer.init(mediaAnalyzer:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PUAssetHighlightTimeRangesProducer_asset] = 0;
  *&v1[OBJC_IVAR___PUAssetHighlightTimeRangesProducer_searchQueryMatchInfo] = 0;
  v3 = &v1[OBJC_IVAR___PUAssetHighlightTimeRangesProducer_searchContextualVideoThumbnailIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___PUAssetHighlightTimeRangesProducer_highlightTimeRanges] = 0;
  *&v1[OBJC_IVAR___PUAssetHighlightTimeRangesProducer_analysisProgress] = 0;
  *&v1[OBJC_IVAR___PUAssetHighlightTimeRangesProducer_mediaAnalyzer] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AssetHighlightTimeRangesProducer();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B383F9A8(uint64_t a1)
{
  v3 = OBJC_IVAR___PUAssetHighlightTimeRangesProducer_asset;
  OUTLINED_FUNCTION_46();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  sub_1B383FA38(v4);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_1B383FA38(uint64_t a1)
{
  v3 = OBJC_IVAR___PUAssetHighlightTimeRangesProducer_asset;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  sub_1B3840678();
}

void (*sub_1B383FAA0())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_3_38(v2) + 32) = v0;
  v3 = OBJC_IVAR___PUAssetHighlightTimeRangesProducer_asset;
  OUTLINED_FUNCTION_4_21();
  *(v1 + 24) = *(v0 + v3);
  swift_unknownObjectRetain();
  return sub_1B383FB1C;
}

void sub_1B383FB1C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = swift_unknownObjectRetain();
    sub_1B383F9A8(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B383F9A8(v3);
  }

  free(v2);
}

void *sub_1B383FBB4()
{
  v1 = OBJC_IVAR___PUAssetHighlightTimeRangesProducer_searchQueryMatchInfo;
  OUTLINED_FUNCTION_4_21();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B383FC54(void *a1)
{
  v3 = OBJC_IVAR___PUAssetHighlightTimeRangesProducer_searchQueryMatchInfo;
  OUTLINED_FUNCTION_46();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1B383FCE0(v4);
}

void sub_1B383FCB0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B383FC54(v1);
}

void sub_1B383FCE0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PUAssetHighlightTimeRangesProducer_searchQueryMatchInfo;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_1B3710718(0, qword_1EB84F810), v6 = v5, v7 = a1, v8 = sub_1B3C9CFA8(), v6, v7, (v8 & 1) == 0))
  {
LABEL_6:
    sub_1B3840678();
  }
}

void (*sub_1B383FDA0())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_3_38(v2) + 32) = v0;
  v3 = OBJC_IVAR___PUAssetHighlightTimeRangesProducer_searchQueryMatchInfo;
  OUTLINED_FUNCTION_4_21();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1B383FE1C;
}

void sub_1B383FE1C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1B383FC54(v3);
  }

  else
  {
    sub_1B383FC54(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_1B383FEE0()
{
  v1 = (v0 + OBJC_IVAR___PUAssetHighlightTimeRangesProducer_searchContextualVideoThumbnailIdentifier);
  OUTLINED_FUNCTION_4_21();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B383FFB0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PUAssetHighlightTimeRangesProducer_searchContextualVideoThumbnailIdentifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1B3840064(v6, v7);
}

uint64_t sub_1B3840024(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1B383FFB0(v1, v2);
}

void sub_1B3840064(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PUAssetHighlightTimeRangesProducer_searchContextualVideoThumbnailIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (!v6)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!a2 || (*v5 == a1 ? (v7 = v6 == a2) : (v7 = 0), !v7 && (sub_1B3C9D6A8() & 1) == 0))
  {
LABEL_10:
    sub_1B3840678();
  }
}

void (*sub_1B38400F4())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *(OUTLINED_FUNCTION_3_38(v2) + 40) = v0;
  v3 = (v0 + OBJC_IVAR___PUAssetHighlightTimeRangesProducer_searchContextualVideoThumbnailIdentifier);
  OUTLINED_FUNCTION_4_21();
  v4 = v3[1];
  *(v1 + 24) = *v3;
  *(v1 + 32) = v4;

  return sub_1B3840174;
}

void sub_1B3840174(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    sub_1B383FFB0(v3, v4);
  }

  else
  {
    sub_1B383FFB0(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t sub_1B38402C0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B384034C())(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_3_38(v2);
  v4 = OBJC_IVAR___PUAssetHighlightTimeRangesProducer_delegate;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  swift_beginAccess();
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B37D9328;
}

uint64_t sub_1B3840464(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  OUTLINED_FUNCTION_4_21();
  return a2(*(v2 + v4));
}

uint64_t sub_1B3840534(uint64_t a1)
{
  v3 = OBJC_IVAR___PUAssetHighlightTimeRangesProducer_highlightTimeRanges;
  OUTLINED_FUNCTION_46();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1B38405B4(v4);
}

void *sub_1B38405B4(uint64_t a1)
{
  v3 = OBJC_IVAR___PUAssetHighlightTimeRangesProducer_highlightTimeRanges;
  result = swift_beginAccess();
  if (!*(v1 + v3))
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!a1 || (v5 = , v6 = sub_1B3761F30(v5, a1), result = , (v6 & 1) == 0))
  {
LABEL_6:
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result assetHighlightTimeRangesProducerDidChangeHighlights_];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1B3840678()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___PUAssetHighlightTimeRangesProducer_analysisProgress;
  [*(v0 + OBJC_IVAR___PUAssetHighlightTimeRangesProducer_analysisProgress) cancel];
  v3 = OBJC_IVAR___PUAssetHighlightTimeRangesProducer_asset;
  OUTLINED_FUNCTION_4_21();
  v4 = *(v0 + v3);
  if (v4)
  {
    v5 = OBJC_IVAR___PUAssetHighlightTimeRangesProducer_searchQueryMatchInfo;
    OUTLINED_FUNCTION_4_21();
    v6 = *(v0 + v5);
    if (v6)
    {
      v7 = *(v0 + OBJC_IVAR___PUAssetHighlightTimeRangesProducer_mediaAnalyzer);
      v8 = v0 + OBJC_IVAR___PUAssetHighlightTimeRangesProducer_searchContextualVideoThumbnailIdentifier;
      OUTLINED_FUNCTION_4_21();
      if (*(v8 + 8))
      {
        swift_unknownObjectRetain();
        v9 = v6;

        v10 = sub_1B3C9C5A8();
      }

      else
      {
        swift_unknownObjectRetain();
        v11 = v6;
        v10 = 0;
      }

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v4;
      v13[3] = v6;
      v13[4] = v12;
      v13[5] = ObjectType;
      aBlock[4] = sub_1B3841234;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B3840DC8;
      aBlock[3] = &block_descriptor_48;
      v14 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v15 = v6;

      v16 = [v7 requestMatchedTimeRangesForAsset:v4 searchQueryMatchInfo:v15 contextualVideoThumbnailID:v10 resultHandler:v14];
      swift_unknownObjectRelease();

      _Block_release(v14);
      v17 = *(v0 + v2);
      *(v0 + v2) = v16;
    }
  }
}

uint64_t sub_1B3840890(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v9 = sub_1B3C9C118();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B3C9C168();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3710718(0, &qword_1EB84FE60);
  v21 = sub_1B3C9CC88();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = v20;
  aBlock[4] = sub_1B3841248;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_22_0;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  v17 = a3;

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B37D49E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  sub_1B3C9D278();
  v18 = v21;
  MEMORY[0x1B8C6A210](0, v14, v11, v16);
  _Block_release(v16);

  (*(v23 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v22);
}

void sub_1B3840B5C(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    if (sub_1B3C9D2C8())
    {
      goto LABEL_8;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  if (qword_1EB84F9B0 != -1)
  {
    swift_once();
  }

  v5 = sub_1B3C9A558();
  __swift_project_value_buffer(v5, qword_1EB878B40);
  swift_unknownObjectRetain();
  v6 = a3;
  v7 = sub_1B3C9A538();
  v8 = sub_1B3C9CAA8();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = a2;
    v24[0] = v10;
    *v9 = 136315394;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8548E0);
    v11 = sub_1B3C9C608();
    v13 = sub_1B3749364(v11, v12, v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = v6;
    v15 = [v14 description];
    v16 = sub_1B3C9C5E8();
    v18 = v17;

    v19 = sub_1B3749364(v16, v18, v24);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_1B36F3000, v7, v8, "Received empty result for video highlights with asset %s and search query info: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C6EC70](v10, -1, -1);
    MEMORY[0x1B8C6EC70](v9, -1, -1);
  }

LABEL_8:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;

    sub_1B3840534(v22);
  }
}

uint64_t sub_1B3840DC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1B3710718(0, &unk_1EB84F780);
  v2 = sub_1B3C9C788();

  v1(v2);
}

id AssetHighlightTimeRangesProducer.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___PUAssetHighlightTimeRangesProducer_analysisProgress];
  if (v1)
  {
    [v1 cancel];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AssetHighlightTimeRangesProducer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B3841258()
{
  v0 = sub_1B3C9A558();
  __swift_allocate_value_buffer(v0, qword_1EB878B40);
  __swift_project_value_buffer(v0, qword_1EB878B40);
  return sub_1B3C9A528();
}

uint64_t sub_1B38412D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void *sub_1B3841324()
{
  v0 = sub_1B3C9D128();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1B3C9D108();
  sub_1B3C9D078();
  sub_1B3C9D058();
  sub_1B3C9D048();
  sub_1B3710718(0, &unk_1EB84FE10);
  (*(v1 + 16))(v3, v6, v0);
  v7 = sub_1B3C9D138();
  sub_1B38414DC();
  v8 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
  [v7 setPreferredSymbolConfiguration:v8 forImageInState:0];

  (*(v1 + 8))(v6, v0);
  return v7;
}

void sub_1B38414DC()
{
  if (MEMORY[0x1B8C6D660]())
  {
    sub_1B3710718(0, &qword_1EB84F838);
    v1 = [swift_getObjCClassFromMetadata() sharedInstance];
    v2 = [v1 disableInfoButtonMonochromaticWorkaround];

    if ((v2 & 1) == 0)
    {
      [v0 _setMonochromaticTreatment_];

      [v0 _setEnableMonochromaticTreatment_];
    }
  }
}

void *sub_1B3841598()
{
  v0 = sub_1B3C9D128();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1B3C9D108();
  sub_1B3C9D078();
  sub_1B3C9D058();
  sub_1B3C9D048();
  sub_1B3710718(0, &unk_1EB84FE10);
  (*(v1 + 16))(v3, v6, v0);
  v7 = sub_1B3C9D138();
  [v7 setAlpha_];
  sub_1B38414DC();
  v8 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
  [v7 setPreferredSymbolConfiguration:v8 forImageInState:0];

  (*(v1 + 8))(v6, v0);
  return v7;
}

uint64_t sub_1B38417B8()
{
  v1 = *(v0 + OBJC_IVAR___PUAnimatableBarButtonItem_currentImageName);

  return v1;
}

uint64_t sub_1B3841874(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___PUAnimatableBarButtonItem_currentImageName);
  *v3 = a1;
  v3[1] = a2;
}

char *sub_1B3841890(uint64_t a1, uint64_t a2)
{
  sub_1B3710718(0, &unk_1EB84FE20);
  swift_bridgeObjectRetain_n();
  v4 = sub_1B380E38C(a1, a2);
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v5 setClipsToBounds_];
  type metadata accessor for AnimatableBarButtonItem();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCustomView_];
  v7 = OBJC_IVAR___PUAnimatableBarButtonItem_currentButton;
  [*&v6[OBJC_IVAR___PUAnimatableBarButtonItem_currentButton] setImage:v4 forState:0];
  v8 = &v6[OBJC_IVAR___PUAnimatableBarButtonItem_currentImageName];
  *v8 = a1;
  v8[1] = a2;

  v9 = *&v6[v7];
  sub_1B3841B74(v9, v5);

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [v5 widthAnchor];
  v11 = [*&v6[v7] widthAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  LODWORD(v13) = 1148829696;
  [v12 setPriority_];
  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B3CFC180;
  v16 = [v5 widthAnchor];
  v17 = [v16 constraintGreaterThanOrEqualToConstant_];

  *(v15 + 32) = v17;
  v18 = [v5 heightAnchor];
  v19 = [v18 constraintGreaterThanOrEqualToConstant_];

  *(v15 + 40) = v19;
  *(v15 + 48) = v12;
  sub_1B3710718(0, &qword_1EB84FE50);
  v20 = v12;
  v21 = sub_1B3C9C778();

  [v14 activateConstraints_];

  return v6;
}

void sub_1B3841B74(void *a1, id a2)
{
  [a2 addSubview_];
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B3CFB680;
  v6 = [a1 centerXAnchor];
  v7 = [a2 centerXAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [a1 centerYAnchor];
  v10 = [a2 centerYAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  sub_1B3710718(0, &qword_1EB84FE50);
  v12 = sub_1B3C9C778();

  [v4 activateConstraints_];
}

void sub_1B3841DB0()
{
  v1 = v0;
  v2 = [v0 customView];
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR___PUAnimatableBarButtonItem_animationButton;
    [v2 addSubview_];
    [*&v0[v4] setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B3CFB680;
    v7 = [*&v1[v4] centerXAnchor];
    v8 = OBJC_IVAR___PUAnimatableBarButtonItem_currentButton;
    v9 = [*&v1[OBJC_IVAR___PUAnimatableBarButtonItem_currentButton] centerXAnchor];
    v10 = [v7 constraintEqualToAnchor_];

    *(v6 + 32) = v10;
    v11 = [*&v1[v4] centerYAnchor];
    v12 = [*&v1[v8] centerYAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v6 + 40) = v13;
    sub_1B3710718(0, &qword_1EB84FE50);
    v14 = sub_1B3C9C778();

    [v5 activateConstraints_];
  }
}

void sub_1B3841FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1B38421C4();
  sub_1B3710718(0, &unk_1EB84FE20);

  v11 = sub_1B380E38C(a1, a2);
  if (v11)
  {
    v14 = v11;
    OUTLINED_FUNCTION_1_41(OBJC_IVAR___PUAnimatableBarButtonItem_currentImageName);
    goto LABEL_8;
  }

  if (a4)
  {
    swift_bridgeObjectRetain_n();
    v12 = sub_1B380E38C(a3, a4);
    if (v12)
    {
      v14 = v12;
      v13 = (v5 + OBJC_IVAR___PUAnimatableBarButtonItem_currentImageName);
      *v13 = a3;
      v13[1] = a4;

      a1 = a3;
      a2 = a4;
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_1_41(OBJC_IVAR___PUAnimatableBarButtonItem_currentImageName);
  v14 = 0;
LABEL_8:

  if (a5)
  {
    [*(v5 + OBJC_IVAR___PUAnimatableBarButtonItem_animationButton) setImage:v14 forState:0];
    sub_1B3841DB0();
    if (a5 == 1)
    {
      sub_1B3842218(a1, a2);
    }

    else
    {
      sub_1B3842514(a1, a2);
    }
  }

  else
  {

    [*(v5 + OBJC_IVAR___PUAnimatableBarButtonItem_currentButton) setImage:v14 forState:0];
  }
}

void sub_1B38421C4()
{
  v1 = OBJC_IVAR___PUAnimatableBarButtonItem_propertyAnimator;
  v2 = *(v0 + OBJC_IVAR___PUAnimatableBarButtonItem_propertyAnimator);
  if (v2)
  {
    [v2 stopAnimation_];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

void sub_1B3842218(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(MEMORY[0x1E69DD278]);
  v6 = sub_1B38431E4(3, 0, 0, 0.3);
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v18 = sub_1B38432CC;
  v19 = v7;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1B370C014;
  v17 = &block_descriptor_48_0;
  v8 = _Block_copy(&v14);
  v9 = v2;

  [v6 addAnimations_];
  _Block_release(v8);
  OUTLINED_FUNCTION_20();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v18 = sub_1B3843314;
  v19 = v11;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1B38412D0;
  v17 = &block_descriptor_55;
  v12 = _Block_copy(&v14);

  [v6 addCompletion_];
  _Block_release(v12);
  [v6 startAnimation];
  v13 = *&v9[OBJC_IVAR___PUAnimatableBarButtonItem_propertyAnimator];
  *&v9[OBJC_IVAR___PUAnimatableBarButtonItem_propertyAnimator] = v6;
}

void sub_1B3842428(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_1B3843334;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B370C014;
  v6[3] = &block_descriptor_61;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 animateWithDuration:v4 animations:0.0];
  _Block_release(v4);
}

void sub_1B3842514(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithDampingRatio:0.1 initialVelocity:{0.2, 0.2}];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v5 timingParameters:0.3];
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v18 = sub_1B38431D4;
  v19 = v7;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1B370C014;
  v17 = &block_descriptor_49;
  v8 = _Block_copy(&v14);
  v9 = v2;

  [v6 addAnimations_];
  _Block_release(v8);
  OUTLINED_FUNCTION_20();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v18 = sub_1B3843374;
  v19 = v11;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1B38412D0;
  v17 = &block_descriptor_18_0;
  v12 = _Block_copy(&v14);

  [v6 addCompletion_];
  _Block_release(v12);
  [v6 startAnimation];

  v13 = *&v9[OBJC_IVAR___PUAnimatableBarButtonItem_propertyAnimator];
  *&v9[OBJC_IVAR___PUAnimatableBarButtonItem_propertyAnimator] = v6;
}

void sub_1B3842750(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_1B38432B4;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B370C014;
  v6[3] = &block_descriptor_24_0;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 animateKeyframesWithDuration:0 delay:v4 options:0 animations:0.0 completion:0.0];
  _Block_release(v4);
}

void sub_1B3842848(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v16 = sub_1B38432BC;
  v17 = v3;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1B370C014;
  v15 = &block_descriptor_30_0;
  v4 = _Block_copy(&v12);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v16 = sub_1B38432C4;
  v17 = v6;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1B370C014;
  v15 = &block_descriptor_36;
  v7 = _Block_copy(&v12);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.5 animations:0.5];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = sub_1B3843394;
  v17 = v9;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1B370C014;
  v15 = &block_descriptor_42;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v2 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.5 animations:0.5];
  _Block_release(v10);
}

id sub_1B3842A90(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___PUAnimatableBarButtonItem_currentButton);
  CGAffineTransformMakeScale(&v5, 1.2, 1.2);
  [v2 setTransform_];
  v3 = *(a1 + OBJC_IVAR___PUAnimatableBarButtonItem_animationButton);
  CGAffineTransformMakeScale(&v5, 1.2, 1.2);
  return [v3 setTransform_];
}

id sub_1B3842B4C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___PUAnimatableBarButtonItem_currentButton);
  v4 = *(MEMORY[0x1E695EFD0] + 8);
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v6 = *(MEMORY[0x1E695EFD0] + 24);
  v7 = *(MEMORY[0x1E695EFD0] + 32);
  v8 = *(MEMORY[0x1E695EFD0] + 40);
  v11 = *MEMORY[0x1E695EFD0];
  v3 = v11;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  [v2 setTransform_];
  v9 = *(a1 + OBJC_IVAR___PUAnimatableBarButtonItem_animationButton);
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return [v9 setTransform_];
}

id sub_1B3842BEC(uint64_t a1)
{
  [*(a1 + OBJC_IVAR___PUAnimatableBarButtonItem_currentButton) setAlpha_];
  v2 = *(a1 + OBJC_IVAR___PUAnimatableBarButtonItem_animationButton);

  return [v2 setAlpha_];
}

void sub_1B3842C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1B3842CBC(a3, a4);
  }
}

void sub_1B3842CBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B3710718(0, &unk_1EB84FE20);

  v6 = sub_1B380E38C(a1, a2);
  if (v6)
  {
    v7 = OBJC_IVAR___PUAnimatableBarButtonItem_currentButton;
    v9 = v6;
    [*(v3 + OBJC_IVAR___PUAnimatableBarButtonItem_currentButton) setImage_forState_];
    [*(v3 + v7) setAlpha_];
    v8 = OBJC_IVAR___PUAnimatableBarButtonItem_animationButton;
    [*(v3 + OBJC_IVAR___PUAnimatableBarButtonItem_animationButton) setAlpha_];
    [*(v3 + v8) removeFromSuperview];
  }
}

uint64_t sub_1B3842DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR___PUAnimatableBarButtonItem_currentButton);
  sub_1B3798758(a1, v17);
  v7 = v18;
  if (v18)
  {
    v8 = __swift_project_boxed_opaque_existential_0Tm(v17, v18);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = v6;
    v14 = sub_1B3C9D688();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    v15 = v6;
    v14 = 0;
  }

  [v6 addTarget:v14 action:a2 forControlEvents:a3];

  return swift_unknownObjectRelease();
}

id sub_1B3842FA4()
{
  v1 = OBJC_IVAR___PUAnimatableBarButtonItem_currentButton;
  *&v0[v1] = sub_1B3841324();
  v2 = OBJC_IVAR___PUAnimatableBarButtonItem_animationButton;
  *&v0[v2] = sub_1B3841598();
  v3 = &v0[OBJC_IVAR___PUAnimatableBarButtonItem_currentImageName];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR___PUAnimatableBarButtonItem_propertyAnimator] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AnimatableBarButtonItem();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1B3843040(void *a1)
{
  v3 = OBJC_IVAR___PUAnimatableBarButtonItem_currentButton;
  *&v1[v3] = sub_1B3841324();
  v4 = OBJC_IVAR___PUAnimatableBarButtonItem_animationButton;
  *&v1[v4] = sub_1B3841598();
  v5 = &v1[OBJC_IVAR___PUAnimatableBarButtonItem_currentImageName];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR___PUAnimatableBarButtonItem_propertyAnimator] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AnimatableBarButtonItem();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1B384310C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatableBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B38431E4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v10[4] = a2;
    v10[5] = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1B370C014;
    v10[3] = &block_descriptor_64_0;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithDuration:a1 curve:v7 animations:a4];
  _Block_release(v7);
  return v8;
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B38433B8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856918);
  sub_1B3C9B3E8();
  [a1 setBrowsingSession_];
}

id sub_1B384341C()
{
  v0 = [objc_allocWithZone(PUScrubberView) init];
  sub_1B3843720();
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v1 lemonadeSlitAspectRatio];
  [v0 setSlitAspectRatio_];
  [v1 lemonadeInterItemSpacing];
  [v0 setInterItemSpacing_];
  [v0 setTopOutset_];
  [v1 lemonadeInterSectionSpacing];
  [v0 setInterSectionSpacing_];
  [v1 lemonadeItemCornerRadius];
  [v0 setItemCornerRadius_];
  [v0 setCanExpandCurrentAsset_];
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v0 setLoupeAspectRatio_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856918);
  sub_1B3C9B3E8();
  [v0 setBrowsingSession_];

  return v0;
}

id sub_1B38435B0@<X0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = result;
  return result;
}

uint64_t sub_1B38435DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B38436CC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1B3843640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B38436CC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1B38436A4()
{
  sub_1B38436CC();
  sub_1B3C9B138();
  __break(1u);
}

unint64_t sub_1B38436CC()
{
  result = qword_1EB84FA40;
  if (!qword_1EB84FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84FA40);
  }

  return result;
}

unint64_t sub_1B3843720()
{
  result = qword_1EB84F848;
  if (!qword_1EB84F848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB84F848);
  }

  return result;
}

void sub_1B3843774(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_titleContentMode] = 0;
  *&v4[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_updater] = 0;
  *&v4[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_heightConstraint] = 0;
  v9 = &v4[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_cachedApproximateCenterItemsWidth];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_preferredHeight];
  *v10 = 0;
  v10[8] = 1;
  v11 = OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_containerView;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_glassTitleSubtitleView;
  type metadata accessor for OneUpGlassTitleSubtitleView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v13] = v14;
  v15 = type metadata accessor for OneUpNavigationTitleSubtitleView();
  v31.receiver = v4;
  v31.super_class = v15;
  v16 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1B3844130();
  v30[3] = v15;
  v30[0] = v16;
  v17 = objc_allocWithZone(MEMORY[0x1E69C4600]);
  v18 = sub_1B374922C(v30);
  v19 = OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_updater;
  v20 = *&v16[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_updater];
  *&v16[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_updater] = v18;
  v21 = v18;

  if (v21)
  {
    [v21 addUpdateSelector:sel_updatePreferredHeight needsUpdate:1];

    v22 = *&v16[v19];
    if (v22)
    {
      [v22 addUpdateSelector:sel_updateLabelFonts needsUpdate:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856820);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1B3CF6CE0;
      v24 = sub_1B3C9A5D8();
      v25 = MEMORY[0x1E69DC2B0];
      *(v23 + 32) = v24;
      *(v23 + 40) = v25;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1B3710718(0, &unk_1EB84F790);
      v26 = v16;
      sub_1B3C9CF48();
      swift_unknownObjectRelease();

      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1B3CF6CE0;
      v28 = sub_1B3C9A5C8();
      v29 = MEMORY[0x1E69DC130];
      *(v27 + 32) = v28;
      *(v27 + 40) = v29;
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1B3C9CF48();
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B3843AD0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B38447F4();
  }
}

void sub_1B3843B24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = &Strong[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_cachedApproximateCenterItemsWidth];
    *v1 = 0;
    v1[8] = 1;
  }
}

void sub_1B3843BAC()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_titleContentMode) = 0;
  *(v0 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_updater) = 0;
  *(v0 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_heightConstraint) = 0;
  v1 = v0 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_cachedApproximateCenterItemsWidth;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_preferredHeight;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_containerView;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_glassTitleSubtitleView;
  type metadata accessor for OneUpGlassTitleSubtitleView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  sub_1B3C9D4C8();
  __break(1u);
}

id sub_1B3843D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_1B3730024(a1, a2);

  sub_1B373009C(a3, a4);

  sub_1B37300A8(a5, a6);
  return sub_1B37301A4();
}

id sub_1B3843E10(id result)
{
  v2 = *&v1[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_titleContentMode];
  *&v1[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_titleContentMode] = result;
  if (*&v1[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_titleContentMode] != v2)
  {
    return [v1 invalidateIntrinsicContentSize];
  }

  return result;
}

void sub_1B3843E44(uint64_t a1, char a2)
{
  if (*(v2 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_preferredHeight + 8))
  {
    if ((a2 & 1) == 0)
    {
LABEL_7:
      sub_1B3844054();
    }
  }

  else if ((a2 & 1) != 0 || *(v2 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_preferredHeight) != *&a1)
  {
    goto LABEL_7;
  }
}

void sub_1B3843E7C(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_preferredHeight;
  v4 = *(v2 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_preferredHeight);
  v5 = *(v2 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_preferredHeight + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_1B3843E44(v4, v5);
}

void sub_1B3843EB4()
{
  v0 = sub_1B3C99138();
  sub_1B3730100(v0);
  v1 = sub_1B3C99148();
  sub_1B373012C(v1);
}

void *sub_1B3843F48(void *result)
{
  if (*(v1 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_updater))
  {
    return [*(v1 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_updater) setNeedsUpdateOf_];
  }

  __break(1u);
  return result;
}

void sub_1B3843F70()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_1B3C9CD68();
  if (v1)
  {
    v3 = 0x404B000000000000;
  }

  else
  {
    v3 = 0x4046000000000000;
  }

  sub_1B3843E7C(v3, 0);
}

void sub_1B3844054()
{
  if ((v0[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_preferredHeight + 8] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_preferredHeight];
    v2 = [*&v0[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_glassTitleSubtitleView] layer];
    [v2 setCornerRadius_];

    v3 = OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_heightConstraint;
    swift_beginAccess();
    v4 = v0;
    sub_1B38448E8(&v0[v3], v1, v4, v4);
    swift_endAccess();
    [v4 invalidateIntrinsicContentSize];
  }
}

void sub_1B3844130()
{
  v31[3] = type metadata accessor for OneUpNavigationTitleSubtitleView();
  v31[0] = v0;
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v1 = v0;
  v29 = sub_1B3898D74(v31, sel_didTapGlassTitleSubtitleView);
  v2 = *&v1[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_glassTitleSubtitleView];
  [v2 addGestureRecognizer_];
  v3 = *&v1[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_containerView];
  [v3 addSubview_];
  [v1 addSubview_];
  v28 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B3D03C40;
  v5 = [v3 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v3 bottomAnchor];
  v9 = OUTLINED_FUNCTION_0_41([v1 bottomAnchor]);

  *(v4 + 40) = v9;
  v10 = [v3 leadingAnchor];
  v11 = OUTLINED_FUNCTION_0_41([v1 &selRef_layout_shouldInitiallyZoomToFillForItemAtIndexPath_contentSize_viewportSize_ + 1]);

  *(v4 + 48) = v11;
  v12 = [v3 trailingAnchor];
  v13 = OUTLINED_FUNCTION_0_41([v1 &selRef_toolbarItemsChanged + 4]);

  *(v4 + 56) = v13;
  v14 = [v2 topAnchor];
  v15 = OUTLINED_FUNCTION_0_41([v3 topAnchor]);

  *(v4 + 64) = v15;
  v16 = [v2 bottomAnchor];
  v17 = OUTLINED_FUNCTION_0_41([v3 bottomAnchor]);

  *(v4 + 72) = v17;
  v18 = [v2 centerXAnchor];
  v19 = OUTLINED_FUNCTION_0_41([v3 centerXAnchor]);

  *(v4 + 80) = v19;
  v20 = [v2 leadingAnchor];
  v21 = [v3 leadingAnchor];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor_];

  *(v4 + 88) = v22;
  v23 = [v2 trailingAnchor];
  v24 = [v3 trailingAnchor];
  v25 = [v23 constraintLessThanOrEqualToAnchor_];

  *(v4 + 96) = v25;
  v26 = [v2 widthAnchor];
  sub_1B38445D8();
  v27 = [v26 constraintGreaterThanOrEqualToConstant_];

  *(v4 + 104) = v27;
  sub_1B3710718(0, &qword_1EB84FE50);
  v30 = sub_1B3C9C778();

  [v28 activateConstraints_];
}

void sub_1B38445D8()
{
  v1 = v0 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_cachedApproximateCenterItemsWidth;
  if (*(v1 + 8))
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DD180]) init];
    [v2 sizeThatFits_];
    v4 = v3;

    *v1 = round(v4 * 3.0 + 16.0);
    *(v1 + 8) = 0;
  }
}

void sub_1B38446B4()
{
  v1 = [*(v0 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_glassTitleSubtitleView) intrinsicContentSize];
  v2 = *(v0 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_titleContentMode);
  if (v2)
  {
    if (v2 == 1)
    {
      CGSizeMake(v1);
    }

    else
    {
      sub_1B3C9D6E8();
      __break(1u);
    }
  }
}

id sub_1B3844734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpNavigationTitleSubtitleView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  result = *&v0[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_updater];
  if (result)
  {
    return [result updateIfNeeded];
  }

  __break(1u);
  return result;
}

id sub_1B38447F4()
{
  sub_1B3843F3C();
  sub_1B3843EA8();
  result = *(v0 + OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_updater);
  if (result)
  {

    return [result updateIfNeeded];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1B384483C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result oneUpNavigationTitleSubtitleViewDidTapView_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1B38448E8(void **a1, double a2, uint64_t a3, char *a4)
{
  v6 = *a1;
  if (v6)
  {
    [v6 setConstant_];
  }

  else
  {
    v7 = [*&a4[OBJC_IVAR___PUOneUpNavigationTitleSubtitleView_glassTitleSubtitleView] heightAnchor];
    v8 = [v7 constraintEqualToConstant_];

    [v8 setActive_];
    *a1 = v8;
  }
}

id OneUpNavigationTitleSubtitleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpNavigationTitleSubtitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t OneUpNavigationTitleContentMode.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B3844A98()
{
  result = qword_1EB856938;
  if (!qword_1EB856938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856938);
  }

  return result;
}

unint64_t sub_1B3844AEC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = OneUpNavigationTitleContentMode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1B3844B8C()
{
  v0 = sub_1B3C9D678();
  MEMORY[0x1B8C69C10](v0);

  return 0xD00000000000008FLL;
}

uint64_t sub_1B3844C04@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856968);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = sub_1B3C99C28();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854100);
  OUTLINED_FUNCTION_8_0(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  sub_1B3845244(&v19 - v15);
  if (__swift_getEnumTagSinglePayload(v16, 1, v6) != 1)
  {
    return (*(v8 + 32))(a1, v16, v6);
  }

  sub_1B36FB21C(v16, &unk_1EB854100);
  sub_1B38456E0();
  sub_1B3C99FB8();

  v17 = type metadata accessor for OneUpSyndicationInfo(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v17) == 1)
  {
    sub_1B36FB21C(v5, &unk_1EB856968);
    return (*(v8 + 104))(a1, *MEMORY[0x1E69C2DC0], v6);
  }

  else
  {
    (*(v8 + 16))(v12, v5, v6);
    sub_1B38457E8(v5);
    return (*(v8 + 32))(a1, v12, v6);
  }
}

uint64_t sub_1B3844E30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856968);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - v2;
  sub_1B38456E0();
  sub_1B3C99FB8();

  v4 = type metadata accessor for OneUpSyndicationInfo(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1B36FB21C(v3, &unk_1EB856968);
    return 0;
  }

  else
  {
    v5 = *&v3[*(v4 + 20)];

    sub_1B38457E8(v3);
  }

  return v5;
}

uint64_t sub_1B3844F4C(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  if (v4)
  {
    if (v4 == a1)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  sub_1B38456E0();
  sub_1B3C99FA8();
}

uint64_t sub_1B3844FE4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  swift_unknownObjectRetain();
  sub_1B3844F4C(v3);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void (*sub_1B3845050(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_4_21();
  v3[3] = *(v1 + 16);
  swift_unknownObjectRetain();
  return sub_1B38450C8;
}

void sub_1B38450C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = swift_unknownObjectRetain();
    sub_1B3844FE4(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B3844FE4(v3);
  }

  free(v2);
}

uint64_t sub_1B38451B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854100);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B3845864(a1, &v6 - v3);
  return sub_1B38452F4(v4);
}

uint64_t sub_1B3845244@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v7 = v1;
  OUTLINED_FUNCTION_0_42();
  sub_1B3846CCC(v3, v4);
  sub_1B3C982D8();

  v5 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpAssetSyndicationModel__syndicationStateOverride;
  OUTLINED_FUNCTION_4_21();
  return sub_1B3845864(v7 + v5, a1);
}

uint64_t sub_1B38452F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854100);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpAssetSyndicationModel__syndicationStateOverride;
  OUTLINED_FUNCTION_4_21();
  sub_1B3845864(v1 + v7, v6);
  v8 = sub_1B3845EB4(v6, a1);
  sub_1B36FB21C(v6, &unk_1EB854100);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    sub_1B3845DFC();
  }

  else
  {
    sub_1B3845864(a1, v6);
    swift_beginAccess();
    sub_1B3846184(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1B36FB21C(a1, &unk_1EB854100);
}

uint64_t sub_1B3845474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854100);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B3845864(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpAssetSyndicationModel__syndicationStateOverride;
  swift_beginAccess();
  sub_1B3846184(v6, a1 + v7);
  return swift_endAccess();
}

void (*sub_1B3845538(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpAssetSyndicationModel___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_42();
  v3[6] = sub_1B3846CCC(v4, v5);
  sub_1B3C982D8();

  *v3 = v1;
  swift_getKeyPath();
  sub_1B3C982F8();

  v3[7] = sub_1B384512C();
  return sub_1B384564C;
}

void sub_1B384564C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1B3C982E8();

  free(v1);
}

uint64_t sub_1B38456E0()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpAssetSyndicationModel____lazy_storage___updater;
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26OneUpAssetSyndicationModel____lazy_storage___updater))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26OneUpAssetSyndicationModel____lazy_storage___updater);
  }

  else
  {
    v3 = v0;
    swift_allocObject();
    swift_weakInit();
    sub_1B3844B8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856988);
    swift_allocObject();
    v2 = sub_1B3C99FD8();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1B38457E8(uint64_t a1)
{
  v2 = type metadata accessor for OneUpSyndicationInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B3845864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B38458D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856968);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11[-v3];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = *(v6 + 16);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    swift_unknownObjectRetain_n();

    static OneUpSyndicationInfoProducer.generateSyndicationInfo(infoProvider:completion:)(sub_1B3847260, v8, sub_1B3847268, a1);

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = type metadata accessor for OneUpSyndicationInfo(0);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
    sub_1B3C99FC8();
    return sub_1B36FB21C(v4, &unk_1EB856968);
  }
}

uint64_t sub_1B3845A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856968);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_1B384712C(a1, &v7 - v3);
  v5 = type metadata accessor for OneUpSyndicationInfo(0);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  sub_1B3C99FC8();
  return sub_1B36FB21C(v4, &unk_1EB856968);
}

uint64_t static OneUpSyndicationInfoProducer.generateSyndicationInfo(infoProvider:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v24 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  if (qword_1EB84FA28 != -1)
  {
    swift_once();
  }

  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  aBlock[4] = sub_1B3846CB8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_50;
  v22 = _Block_copy(aBlock);

  sub_1B3C9C138();
  sub_1B3846CCC(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v20, v14, v22);
  _Block_release(v22);
  (*(v10 + 8))(v14, v8);
  (*(v16 + 8))(v20, v24);
}

uint64_t sub_1B3845EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B3C99C28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854100);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856978);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1B3845864(a1, &v20 - v13);
  sub_1B3845864(a2, &v14[v15]);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
  {
    sub_1B3845864(v14, v10);
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1B3846CCC(&unk_1EB84F420, MEMORY[0x1E69C2DE0]);
      v17 = sub_1B3C9C528();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1B36FB21C(v14, &unk_1EB854100);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1B36FB21C(v14, &unk_1EB856978);
    v16 = 1;
    return v16 & 1;
  }

  sub_1B36FB21C(v14, &unk_1EB854100);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1B3846184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OneUpAssetSyndicationModel.deinit()
{
  swift_unknownObjectRelease();
  sub_1B36FB21C(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26OneUpAssetSyndicationModel__syndicationStateOverride, &unk_1EB854100);

  v1 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpAssetSyndicationModel___observationRegistrar;
  sub_1B3C98318();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t OneUpAssetSyndicationModel.__deallocating_deinit()
{
  OneUpAssetSyndicationModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B38462F4()
{
  *(v0 + 16) = 0;
  sub_1B3C99C28();
  OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_6_25();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26OneUpAssetSyndicationModel____lazy_storage___updater) = 0;
  sub_1B3C98308();
  return v0;
}

uint64_t static OneUpSyndicationInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1B3C99A98())
  {
    v4 = *(type metadata accessor for OneUpSyndicationInfo(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_1B3C9D6A8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B38463DC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v5 = sub_1B3C9C118();
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B3C9C168();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OneUpSyndicationInfo(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  v27 = a1(v16);
  sub_1B3846794(v27, v18);
  sub_1B3739098();
  v19 = sub_1B3C9CC88();
  sub_1B384712C(v18, v15);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 16) = v25;
  *(v21 + 24) = v22;
  sub_1B3847190(v15, v21 + v20);
  aBlock[4] = sub_1B38471F4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_25_3;
  v23 = _Block_copy(aBlock);

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B3846CCC(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v10, v7, v23);
  _Block_release(v23);

  swift_unknownObjectRelease();
  (*(v30 + 8))(v7, v5);
  (*(v28 + 8))(v10, v29);
  return sub_1B38457E8(v18);
}

uint64_t sub_1B3846794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B3C99C28();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  if (a1 && (objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) != 0))
  {
    v12 = v11;
    swift_unknownObjectRetain();
    [v12 fetchPropertySetsIfNeeded];
    if ([v12 px_isUnsavedSyndicatedAsset])
    {
      IsBeingSaved = PXContentSyndicationCMMAssetIsBeingSaved();
      v14 = *(v5 + 104);
      if (IsBeingSaved)
      {
        v15 = MEMORY[0x1E69C2DD0];
      }

      else
      {
        v15 = MEMORY[0x1E69C2DD8];
      }
    }

    else
    {
      v18 = [v12 px_wasSavedThroughSyndication];
      v14 = *(v5 + 104);
      if (v18)
      {
        v15 = MEMORY[0x1E69C2DC8];
      }

      else
      {
        v15 = MEMORY[0x1E69C2DC0];
      }
    }

    v14(v10, *v15, v4);
    (*(v5 + 16))(v8, v10, v4);
    v19 = [v12 curationProperties];
    v20 = [v19 syndicationIdentifier];

    if (v20)
    {
      v21 = sub_1B3C9C5E8();
      v23 = v22;

      swift_unknownObjectRelease();
      (*(v5 + 8))(v10, v4);
    }

    else
    {
      (*(v5 + 8))(v10, v4);
      swift_unknownObjectRelease();
      v21 = 0;
      v23 = 0;
    }

    (*(v5 + 32))(a2, v8, v4);
    result = type metadata accessor for OneUpSyndicationInfo(0);
    v24 = (a2 + *(result + 20));
    *v24 = v21;
    v24[1] = v23;
  }

  else
  {
    (*(v5 + 104))(a2, *MEMORY[0x1E69C2DC0], v4);
    result = type metadata accessor for OneUpSyndicationInfo(0);
    v17 = (a2 + *(result + 20));
    *v17 = 0;
    v17[1] = 0;
  }

  return result;
}

uint64_t sub_1B3846A68()
{
  v7 = sub_1B3C9CC78();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B3C9CC48();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1B3C9C168();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1B3739098();
  sub_1B3C9C148();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1B3846CCC(&qword_1EB84FE70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854940);
  sub_1B3739124(&qword_1EB84FE80, &unk_1EB854940);
  sub_1B3C9D278();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1B3C9CCA8();
  qword_1EB84FA30 = result;
  return result;
}

uint64_t sub_1B3846CCC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B3846D1C()
{
  sub_1B3846F2C();
  if (v0 <= 0x3F)
  {
    sub_1B3C98318();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B3846F2C()
{
  if (!qword_1EB84F418)
  {
    sub_1B3C99C28();
    v0 = sub_1B3C9D198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB84F418);
    }
  }
}

void sub_1B3846FAC()
{
  sub_1B3C99C28();
  if (v0 <= 0x3F)
  {
    sub_1B3847030();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B3847030()
{
  if (!qword_1EB84F238)
  {
    v0 = sub_1B3C9D198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB84F238);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for OneUpSyndicationInfoProducer(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1B384712C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSyndicationInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3847190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSyndicationInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B38471F4()
{
  v1 = type metadata accessor for OneUpSyndicationInfo(0);
  OUTLINED_FUNCTION_8_0(v1);
  return (*(v0 + 16))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));
}

uint64_t OUTLINED_FUNCTION_6_25()
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v0);
}

void sub_1B38472A0(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B3C97F18();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void (*sub_1B38473E8(void *a1))(void **, char)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_10_24(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B384F7F0;
}

void (*sub_1B3847530(void *a1))(void **, char)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_10_24(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B384F7F0;
}

uint64_t sub_1B3847680()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B3847708(void *a1))(void **, char)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_10_24(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B3847778;
}

id OneUpDefaultActionsController.__allocating_init(browsingSession:viewController:)()
{
  OUTLINED_FUNCTION_17_0();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_18_20();
  return OneUpDefaultActionsController.init(browsingSession:viewController:)();
}

id OneUpDefaultActionsController.init(browsingSession:viewController:)()
{
  OUTLINED_FUNCTION_17_0();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___PUOneUpDefaultActionsController_activeActionPerformer] = 0;
  *&v1[OBJC_IVAR___PUOneUpDefaultActionsController_activeAssetActionPerformer] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___PUOneUpDefaultActionsController_preheatedSharingPerformer] = 0;
  *&v1[OBJC_IVAR___PUOneUpDefaultActionsController_preheatedSharingAssetReferences] = 0;
  v3 = &v1[OBJC_IVAR___PUOneUpDefaultActionsController____lazy_storage___scrubbingIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession] = v2;
  swift_unknownObjectWeakAssign();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for OneUpDefaultActionsController();
  v4 = v2;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

void sub_1B384792C()
{
  v1 = *(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  v2 = [v1 viewModel];
  if (!v2)
  {
    __break(1u);
    goto LABEL_31;
  }

  v3 = v2;
  v25 = [v2 currentAssetReference];

  if (!v25)
  {
    OUTLINED_FUNCTION_7_6();
    return;
  }

  v4 = [v1 actionManager];
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v6 = OUTLINED_FUNCTION_17_2();
  *(v6 + 16) = xmmword_1B3CF9810;
  *(v6 + 32) = v25;
  v26 = v25;
  if (sub_1B384E2CC(35, v6, v5))
  {
    v7 = OBJC_IVAR___PUOneUpDefaultActionsController_preheatedSharingPerformer;
    v8 = *(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_preheatedSharingPerformer);
    if (v8 && *(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_preheatedSharingAssetReferences))
    {
      v9 = v8;

      v11 = sub_1B3761F44(v10, v6);

      if (v11)
      {
LABEL_10:
        v24 = v9;
        OUTLINED_FUNCTION_19_17(v24);
        v13 = *(v0 + v7);
        *(v0 + v7) = 0;

        *(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_preheatedSharingAssetReferences) = 0;

        v14 = [v1 viewModel];
        if (v14)
        {
          v15 = v14;

          v16 = [v15 assetViewModelForCurrentAssetReference];

          if (v16)
          {
            if ([v16 isAccessoryViewVisible])
            {
              sub_1B3849714();
            }
          }

          else
          {
          }

LABEL_27:
          OUTLINED_FUNCTION_7_6();

          return;
        }

LABEL_31:
        __break(1u);
        return;
      }
    }

    sub_1B3710718(0, &unk_1EB84F850);
    v12 = sub_1B3C9C778();
    v9 = [v5 actionPerformerForSimpleActionType:35 onAssetReferences:v12];

    if (!v9)
    {

      if (qword_1EB84F960 != -1)
      {
        OUTLINED_FUNCTION_2_38();
      }

      v18 = sub_1B3C9A558();
      OUTLINED_FUNCTION_26_10(v18, qword_1EB84FEA0);
      v19 = sub_1B3C9A538();
      v20 = sub_1B3C9CAC8();
      if (OUTLINED_FUNCTION_18_1(v20))
      {
        v21 = OUTLINED_FUNCTION_12_13();
        *v21 = 0;
        _os_log_impl(&dword_1B36F3000, v19, v20, "Unable to perform share action due to missing performer, please verify if there is any discrepancy with the can perform checks", v21, 2u);
        OUTLINED_FUNCTION_3_5();
      }

      goto LABEL_27;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_6();
}

void sub_1B3847CC0()
{
  v1 = *(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  v2 = [v1 viewModel];
  if (!v2)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = v2;
  v16 = [v2 currentAssetReference];

  if (!v16)
  {
    OUTLINED_FUNCTION_55_0();
    return;
  }

  v4 = [v1 actionManager];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v6 = OUTLINED_FUNCTION_17_2();
  *(v6 + 16) = xmmword_1B3CF9810;
  *(v6 + 32) = v16;
  v17 = v16;
  if (sub_1B384E2CC(35, v6, v5))
  {
    v7 = OBJC_IVAR___PUOneUpDefaultActionsController_preheatedSharingPerformer;
    if (*(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_preheatedSharingPerformer))
    {
      if (*(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_preheatedSharingAssetReferences))
      {

        v9 = sub_1B3761F44(v8, v6);

        if (v9)
        {

LABEL_9:
          OUTLINED_FUNCTION_55_0();

          return;
        }
      }
    }

    v12 = sub_1B384E348(35, v6, v5);
    if (v12)
    {
      v13 = v12;
      [v12 preheatUserInteractionTask];

      v14 = *(v0 + v7);
      *(v0 + v7) = v13;

      *(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_preheatedSharingAssetReferences) = v6;
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
    return;
  }

LABEL_16:
  OUTLINED_FUNCTION_55_0();
}

void sub_1B3847F04(char a1)
{
  v3 = [*(v1 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession) viewModel];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 currentAssetReference];

    if (v5 && (v6 = [v5 asset], v5, v6))
    {
      [objc_opt_self() toggleLike:a1 & 1 forDisplayAsset:v6];

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EB84F960 != -1)
      {
        OUTLINED_FUNCTION_2_38();
      }

      v7 = sub_1B3C9A558();
      OUTLINED_FUNCTION_26_10(v7, qword_1EB84FEA0);
      oslog = sub_1B3C9A538();
      v8 = sub_1B3C9CAC8();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = OUTLINED_FUNCTION_12_13();
        *v9 = 0;
        _os_log_impl(&dword_1B36F3000, oslog, v8, "Unable to perform Like action because no current asset was found", v9, 2u);
        OUTLINED_FUNCTION_3_5();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1B38480E0()
{
  v1 = *(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  v2 = [v1 viewModel];
  if (!v2)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = v2;
  v19 = [v2 currentAssetReference];

  if (!v19)
  {
    OUTLINED_FUNCTION_28_10();
    return;
  }

  v4 = [v19 asset];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  v6 = [v19 assetCollection];
  if (v6)
  {
    v7 = v6;
    v8 = [v1 actionManager];
    if (v8)
    {
      v18 = v8;
      sub_1B3710718(0, &qword_1EB8569E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
      v9 = OUTLINED_FUNCTION_17_2();
      *(v9 + 16) = xmmword_1B3CF9810;
      *(v9 + 32) = v5;
      v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
      v20[0] = v9;
      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = sub_1B384E7C4(v20, v7);
      v20[0] = 0;
      sub_1B3C9C4B8();
      v11 = v20[0];
      if (v20[0])
      {

        if (sub_1B384E3CC(13, v11, v18))
        {
          v12 = OUTLINED_FUNCTION_17_2();
          *(v12 + 16) = xmmword_1B3CF9810;
          *(v12 + 32) = v19;
          v13 = v19;
          v14 = sub_1B384E45C(13, v12, v18);
          if (v14)
          {
            OUTLINED_FUNCTION_19_17(v14);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            goto LABEL_20;
          }
        }

        else
        {
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_20:
        OUTLINED_FUNCTION_28_10();

        return;
      }

LABEL_24:
      __break(1u);
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  OUTLINED_FUNCTION_28_10();

  swift_unknownObjectRelease();
}

void sub_1B38483E8(char a1)
{
  v2 = [objc_opt_self() sharedController];
  v4 = v2;
  v3 = &selRef_userDidMute;
  if ((a1 & 1) == 0)
  {
    v3 = &selRef_userDidUnmute;
  }

  [v2 *v3];
}

void sub_1B38484B4()
{
  v1 = *(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  v2 = [v1 viewModel];
  if (!v2)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = v2;
  v26 = [v2 currentAssetReference];

  if (!v26)
  {
LABEL_11:
    OUTLINED_FUNCTION_17_16();
    return;
  }

  v4 = [v26 asset];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  v6 = [v26 assetCollection];
  if (v6)
  {
    v7 = v6;
    v8 = [v1 actionManager];
    if (v8)
    {
      v25 = v8;
      if (([v8 canPerformActionType:44 onAsset:v5 inAssetCollection:v7] & 1) == 0)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_20:
        OUTLINED_FUNCTION_17_16();

        return;
      }

      v9 = [v1 viewModel];
      if (v9)
      {
        v10 = v9;
        v24 = [v9 assetViewModelForAssetReference_];

        if (v24)
        {
          v11 = [v24 isFavorite] ^ 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
          v12 = OUTLINED_FUNCTION_17_2();
          *(v12 + 16) = xmmword_1B3CF9810;
          *(v12 + 32) = v26;
          v13 = v26;
          v14 = sub_1B384E4E8(v11, v12, v25);
          if (v14)
          {
            v15 = v14;
            v16 = swift_allocObject();
            *(v16 + 16) = v24;
            *(v16 + 24) = v11;
            OUTLINED_FUNCTION_9_20();
            v28 = 1107296256;
            OUTLINED_FUNCTION_2();
            v29 = v17;
            v30 = &block_descriptor_51;
            v18 = _Block_copy(aBlock);
            v19 = v24;

            [v19 performChanges_];
            _Block_release(v18);
            OUTLINED_FUNCTION_20();
            v20 = swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_1B384CF90(v15, sub_1B384E864, v20);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            goto LABEL_11;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_20;
        }

LABEL_25:
        __break(1u);
        return;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17_16();

  swift_unknownObjectRelease();
}

void sub_1B3848820(void *a1)
{
  v2 = sub_1B3C9C838();
  [a1 setIsFavoriteOverride_];
}

void sub_1B38488C4()
{
  v1 = *(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  v2 = [v1 viewModel];
  if (!v2)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v3 = v2;
  v24 = [v2 currentAssetReference];

  if (!v24)
  {
LABEL_11:
    OUTLINED_FUNCTION_17_16();
    return;
  }

  v4 = [v1 viewModel];
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  v23 = [v4 assetViewModelForCurrentAssetReference];

  if (!v23)
  {
    goto LABEL_20;
  }

  v6 = [v24 asset];
  if (!v6)
  {

LABEL_20:
    OUTLINED_FUNCTION_17_16();

    return;
  }

  v7 = v6;
  v8 = [v24 assetCollection];
  if (v8)
  {
    v9 = v8;
    v10 = [v1 actionManager];
    if (v10)
    {
      v22 = v10;
      if ([v10 canPerformActionType:56 onAsset:v7 inAssetCollection:v9])
      {
        OUTLINED_FUNCTION_20();
        *(swift_allocObject() + 16) = v23;
        OUTLINED_FUNCTION_9_20();
        v26 = 1107296256;
        OUTLINED_FUNCTION_2();
        v27 = v11;
        v28 = &block_descriptor_9_0;
        v12 = _Block_copy(aBlock);
        v13 = v23;

        [v13 performChanges_];
        _Block_release(v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
        v14 = OUTLINED_FUNCTION_17_2();
        *(v14 + 16) = xmmword_1B3CF9810;
        *(v14 + 32) = v24;
        v15 = v24;
        v16 = sub_1B384E45C(56, v14, v22);
        if (v16)
        {
          v17 = v16;
          OUTLINED_FUNCTION_20();
          v18 = swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_1B384CF90(v17, sub_1B384E8AC, v18);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_11;
        }

        goto LABEL_25;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17_16();

  swift_unknownObjectRelease();
}

void sub_1B3848C18(void *a1)
{
  v2 = sub_1B3C9C9C8();
  [a1 setAssetSyndicationStateOverride_];
}

void sub_1B3848C74(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      OUTLINED_FUNCTION_20();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      v20 = a5;
      v21 = v10;
      OUTLINED_FUNCTION_4_31();
      v17 = 1107296256;
      OUTLINED_FUNCTION_2();
      v18 = v11;
      v19 = a6;
      v12 = _Block_copy(aBlock);
      v13 = v9;
      OUTLINED_FUNCTION_18_20();

      v14 = OUTLINED_FUNCTION_23_7();
      [v14 v15];
      _Block_release(v12);
    }
  }
}

void sub_1B3848D88()
{
  v1 = [*(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession) viewModel];
  if (v1)
  {
    v2 = v1;
    v7 = [v1 assetViewModelForCurrentAssetReference];

    if (v7)
    {
      v3 = [v7 videoPlayer];
      if (v3)
      {
        v4 = v3;
        if ([v3 isPlaybackDesired])
        {
          v5 = 2;
        }

        else
        {
          v5 = 4;
        }

        sub_1B384902C(v5);

        v6 = v4;
      }

      else
      {
        v6 = v7;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B3848F08()
{
  objc_opt_self();
  v4[4] = sub_1B384729C;
  v4[5] = 0;
  OUTLINED_FUNCTION_1_0();
  v4[1] = 1107296256;
  v4[2] = sub_1B37E137C;
  v4[3] = &block_descriptor_13_2;
  v0 = _Block_copy(v4);

  v1 = OUTLINED_FUNCTION_12_21();

  _Block_release(v0);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_1B384902C(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession) viewModel];
  if (v3)
  {
    v4 = v3;
    v13 = [v3 assetViewModelForCurrentAssetReference];

    if (v13)
    {
      v5 = [v13 videoPlayer];
      if (v5)
      {
        v6 = v5;
        OUTLINED_FUNCTION_14_1();
        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        *(v7 + 24) = a1;
        v18 = sub_1B384E8EC;
        v19 = v7;
        OUTLINED_FUNCTION_12_8();
        v15 = 1107296256;
        OUTLINED_FUNCTION_2();
        v16 = v8;
        v17 = &block_descriptor_19_2;
        v9 = _Block_copy(aBlock);
        v10 = v6;
        OUTLINED_FUNCTION_18_20();

        v11 = OUTLINED_FUNCTION_23_7();
        [v11 v12];
        _Block_release(v9);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1B384917C(void *a1, id a2)
{
  if ([a1 playState] == 5 && objc_msgSend(a1, sel_desiredPlayState) == 4)
  {
    if (qword_1EB84F960 != -1)
    {
      swift_once();
    }

    v4 = sub_1B3C9A558();
    __swift_project_value_buffer(v4, qword_1EB84FEA0);
    oslog = sub_1B3C9A538();
    v5 = sub_1B3C9CAC8();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B36F3000, oslog, v5, "Ignoring play/pause action because player is in failed state for Playing.", v6, 2u);
      MEMORY[0x1B8C6EC70](v6, -1, -1);
    }
  }

  else
  {
    if ([a1 desiredPlayState] == a2)
    {
      if (qword_1EB84F960 != -1)
      {
        swift_once();
      }

      v7 = sub_1B3C9A558();
      __swift_project_value_buffer(v7, qword_1EB84FEA0);
      v8 = sub_1B3C9A538();
      v9 = sub_1B3C9CAC8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v17 = v11;
        *v10 = 136315138;
        type metadata accessor for PUBrowsingVideoDesiredPlayState(0);
        v12 = sub_1B3C9C608();
        v14 = sub_1B3749364(v12, v13, &v17);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_1B36F3000, v8, v9, "Attempting to set the video player's desired state to %s when it is already in that state.", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x1B8C6EC70](v11, -1, -1);
        MEMORY[0x1B8C6EC70](v10, -1, -1);
      }
    }

    if ([a1 isAtEnd])
    {
      [a1 rewindExistingPlayer];
    }

    v15 = sub_1B3C9C5A8();
    [a1 setDesiredPlayState:a2 reason:v15];

    if (a2 == 4)
    {
      [a1 setActivated_];
    }
  }
}

void sub_1B38494C8()
{
  v1 = objc_opt_self();
  [v1 toggle];
  v2 = [*(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession) viewModel];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 assetViewModelForCurrentAssetReference];

    if (v4)
    {
      if ([v4 asset])
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          [v1 buttonToggledOn];
          PXSendSpatialToggleEvent();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1B3849654()
{
  v2 = [objc_opt_self() sharedController];
  v0 = [v2 isMuted];
  v1 = &selRef_userDidUnmute;
  if (!v0)
  {
    v1 = &selRef_userDidMute;
  }

  [v2 *v1];
}

void *sub_1B3849720(SEL *a1)
{
  OUTLINED_FUNCTION_3_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1B38497CC(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result oneUpActionsController:v1 zoomAtLocationProvider:a1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1B38498A0(char a1)
{
  OUTLINED_FUNCTION_7_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong oneUpActionsControllerToggleCommentsVisibility_];
    swift_unknownObjectRelease();
  }

  v4 = [*(v1 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession) viewModel];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 assetViewModelForCurrentAssetReference];

    if (v6)
    {
      if ([v6 isAccessoryViewVisible])
      {
        if (a1)
        {
          sub_1B3710718(0, &qword_1EB8567D0);
          OUTLINED_FUNCTION_20();
          v7 = swift_allocObject();
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_14_1();
          v8 = swift_allocObject();
          *(v8 + 16) = v7;
          *(v8 + 24) = v6;
          v9 = v6;
          v10 = sub_1B3849A98(0, sub_1B384E8F4, v8, 0.0);
          v6 = [objc_opt_self() currentRunLoop];
          [v6 addTimer:v10 forMode:*MEMORY[0x1E695D918]];
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1B3849A3C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1B384D858(a3);
  }
}

id sub_1B3849A98(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B37D2F2C;
  v9[3] = &block_descriptor_142_1;
  v6 = _Block_copy(v9);
  v7 = [swift_getObjCClassFromMetadata() timerWithTimeInterval:a1 & 1 repeats:v6 block:a4];
  _Block_release(v6);

  return v7;
}

void sub_1B3849BBC()
{
  v1 = [*(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession) viewModel];
  if (!v1)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  v3 = [v1 currentAssetReference];

  if (!v3)
  {
    return;
  }

  v4 = [v3 asset];

  if (!v4)
  {
    return;
  }

  v5 = [objc_opt_self() px_sharedApplication];
  v6 = [v5 px_firstKeyWindow];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  v8 = [v7 snapshotViewAfterScreenUpdates_];
  if (!v8)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v9 = v8;
  [v7 bounds];
  OUTLINED_FUNCTION_6();

  v10 = OUTLINED_FUNCTION_17();
  [v11 v12];
  [v7 addSubview_];
  aBlock[6] = &unk_1F2C98510;
  v13 = swift_dynamicCastObjCProtocolConditional();
  if (v13)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    if (qword_1EB84F960 != -1)
    {
      OUTLINED_FUNCTION_2_38();
    }

    v14 = sub_1B3C9A558();
    OUTLINED_FUNCTION_26_10(v14, qword_1EB84FEA0);
    swift_unknownObjectRetain();
    v15 = sub_1B3C9A538();
    v16 = sub_1B3C9CAC8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v17 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855F80);
      v18 = sub_1B3C9C608();
      v20 = sub_1B3749364(v18, v19, aBlock);

      *(v17 + 4) = v20;
      _os_log_impl(&dword_1B36F3000, v15, v16, "Unable to convert current asset (%s to navigable asset. Continuing navigation to Photos grid.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();
    }
  }

  OUTLINED_FUNCTION_20();
  v21 = swift_allocObject();
  *(v21 + 16) = v9;
  aBlock[4] = sub_1B384E8FC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_5();
  aBlock[2] = v22;
  aBlock[3] = &block_descriptor_31_1;
  v23 = _Block_copy(aBlock);
  v24 = v9;

  [v5 px:v13 navigateToMomentsViewRevealingDisplayAsset:0 openOneUp:v23 completionHandler:?];
  _Block_release(v23);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

void sub_1B3849F38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v15 = sub_1B384F6F4;
  v16 = v5;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1B370C014;
  v14 = &block_descriptor_133;
  v6 = _Block_copy(&v11);
  v7 = a3;

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v15 = sub_1B384F708;
  v16 = v8;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1B386A14C;
  v14 = &block_descriptor_139;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v4 animateWithDuration:0 delay:v6 options:v9 animations:0.2 completion:0.1];
  _Block_release(v9);
  _Block_release(v6);
}

void sub_1B384A1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(v3 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession) viewModel];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 assetViewModelForCurrentAssetReference];

    if (v8)
    {
      OUTLINED_FUNCTION_20();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      v15[4] = a2;
      v15[5] = v9;
      OUTLINED_FUNCTION_1_0();
      v15[1] = 1107296256;
      OUTLINED_FUNCTION_2();
      v15[2] = v10;
      v15[3] = a3;
      v11 = _Block_copy(v15);
      v12 = v8;
      OUTLINED_FUNCTION_18_20();

      v13 = OUTLINED_FUNCTION_23_7();
      [v13 v14];
      _Block_release(v11);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B384A2EC()
{
  v1 = *(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  v2 = [v1 viewModel];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v13 = [v2 currentAssetReference];

  if (!v13)
  {
    return;
  }

  v4 = [v1 actionManager];
  if (!v4)
  {
    v12 = v13;
    goto LABEL_10;
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v6 = OUTLINED_FUNCTION_17_2();
  *(v6 + 16) = xmmword_1B3CF9810;
  *(v6 + 32) = v13;
  v7 = v13;
  v8 = sub_1B384E45C(65, v6, v5);
  if (v8)
  {
    v9 = v8;
    OUTLINED_FUNCTION_19_17(v8);
    v10 = [v1 viewModel];
    if (v10)
    {
      v11 = v10;
      [v10 isInSelectionMode];

      PXDeduplicationSendMergeUISourceAnalytics();
      v7 = v5;
      v5 = v9;
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_7:

  v12 = v5;
LABEL_10:
}

void sub_1B384A538(float a1)
{
  v3 = *(v1 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  v4 = [v3 viewModel];
  if (v4)
  {
    v21 = v4;
    v5 = [v3 actionManager];
    if (v5)
    {
      v6 = v5;
      v7 = [v21 currentAssetReference];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 canPerformActionType:29 onAsset:[v7 asset] inAssetCollection:[v7 assetCollection]];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v9 && (v10 = [v8 asset], *&v11 = a1, v12 = [v6 actionPerformerForEditingPlaybackRate:v10 onAsset:v11], swift_unknownObjectRelease(), v12))
        {
          OUTLINED_FUNCTION_19_17(v12);
          v13 = v21;
          v14 = v6;
          v15 = v12;
        }

        else
        {
          if (qword_1EB84F960 != -1)
          {
            OUTLINED_FUNCTION_2_38();
          }

          v17 = sub_1B3C9A558();
          OUTLINED_FUNCTION_26_10(v17, qword_1EB84FEA0);
          v13 = sub_1B3C9A538();
          v18 = sub_1B3C9CAC8();
          if (OUTLINED_FUNCTION_18_1(v18))
          {
            v19 = OUTLINED_FUNCTION_12_13();
            *v19 = 0;
            _os_log_impl(&dword_1B36F3000, v13, v18, "Cannot perform playback rate action.", v19, 2u);
            OUTLINED_FUNCTION_3_5();
          }

          v14 = v8;
          v8 = v6;
          v15 = v21;
        }

        v6 = v15;

        v20 = v8;
      }

      else
      {
        v20 = v21;
      }

      v16 = v6;
    }

    else
    {
      v16 = v21;
    }
  }
}

void sub_1B384A80C(uint64_t a1, uint64_t a2, SEL *a3, const char *a4)
{
  v9 = *(v4 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  v10 = [v9 viewModel];
  if (v10)
  {
    v25 = v10;
    v11 = [v9 actionManager];
    if (v11)
    {
      v12 = v11;
      v13 = [v25 currentAssetReference];
      if (v13)
      {
        v14 = v13;
        v15 = [v12 canPerformActionType:a2 onAsset:[v13 asset] inAssetCollection:[v13 assetCollection]];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v15 && (v16 = [v12 *a3], swift_unknownObjectRelease(), v16))
        {
          OUTLINED_FUNCTION_19_17(v16);
          v17 = v25;
          v18 = v12;
        }

        else
        {
          if (qword_1EB84F960 != -1)
          {
            OUTLINED_FUNCTION_2_38();
          }

          v19 = sub_1B3C9A558();
          OUTLINED_FUNCTION_26_10(v19, qword_1EB84FEA0);
          v17 = sub_1B3C9A538();
          v20 = sub_1B3C9CAC8();
          if (OUTLINED_FUNCTION_18_1(v20))
          {
            v21 = OUTLINED_FUNCTION_12_13();
            *v21 = 0;
            _os_log_impl(&dword_1B36F3000, v17, v20, a4, v21, 2u);
            OUTLINED_FUNCTION_3_5();
          }

          v18 = v14;
          v14 = v12;
        }

        v22 = v14;
      }

      else
      {
        v22 = v25;
      }
    }

    OUTLINED_FUNCTION_7_6();
  }

  else
  {
    OUTLINED_FUNCTION_7_6();
  }
}

void sub_1B384AAC4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  v4 = [v3 viewModel];
  if (!v4)
  {
    goto LABEL_17;
  }

  v26 = v4;
  v5 = [v3 actionManager];
  if (!v5)
  {
    v6 = v26;
LABEL_16:

LABEL_17:
    v22 = objc_opt_self();
    v23 = sub_1B3C9C5A8();
    v6 = [v22 errorWithCode:5 debugDescription:v23];

    [a1 finishedWithSuccess:0 error:sub_1B3C97F18()];
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [v26 currentAssetReference];
  if (!v7)
  {

    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v6 canPerformActionType:15 onAsset:objc_msgSend(v7 inAssetCollection:{sel_asset), objc_msgSend(v7, sel_assetCollection)}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v9)
  {
    v10 = [v6 actionPerformerForEditingWithPendingEditsRequest:a1 onAsset:{objc_msgSend(v8, sel_asset)}];
    swift_unknownObjectRelease();
    if (v10)
    {
      OUTLINED_FUNCTION_20();
      v11 = swift_allocObject();
      *(v11 + 16) = a1;
      v12 = a1;
      sub_1B384CF90(v10, sub_1B384E934, v11);

      OUTLINED_FUNCTION_55_0();

      return;
    }
  }

  v14 = objc_opt_self();
  v15 = sub_1B3C9C5A8();
  v16 = [v14 errorWithCode:2 debugDescription:v15 asset:{objc_msgSend(v8, sel_asset)}];

  swift_unknownObjectRelease();
  v17 = sub_1B3C97F18();
  [a1 finishedWithSuccess:0 error:v17];

  if (qword_1EB84F960 != -1)
  {
    OUTLINED_FUNCTION_2_38();
  }

  v18 = sub_1B3C9A558();
  OUTLINED_FUNCTION_26_10(v18, qword_1EB84FEA0);
  v19 = sub_1B3C9A538();
  v20 = sub_1B3C9CAC8();
  if (OUTLINED_FUNCTION_18_1(v20))
  {
    v21 = OUTLINED_FUNCTION_12_13();
    *v21 = 0;
    _os_log_impl(&dword_1B36F3000, v19, v20, "Cannot perform pending edits action.", v21, 2u);
    OUTLINED_FUNCTION_3_5();
  }

LABEL_18:
  OUTLINED_FUNCTION_55_0();
}

void sub_1B384AE74(char a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v5 = sub_1B3C97F18();
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    [a3 finishedWithSuccess:0 error:?];
  }
}

id sub_1B384AF50()
{
  OUTLINED_FUNCTION_17_0();
  result = [*(v1 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession) actionManager];
  if (result)
  {
    v6 = result;
    if (sub_1B384E574(v2, v0, result))
    {
      v4 = sub_1B384E5FC(v2, v0, v6);
      if (!v4)
      {
        __break(1u);
        return MEMORY[0x1EEE66BE0]();
      }

      v5 = v4;
      OUTLINED_FUNCTION_19_17(v4);
    }

    return MEMORY[0x1EEE66BE0]();
  }

  return result;
}

void sub_1B384B09C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  v4 = [v3 actionManager];
  if (v4)
  {
    v30 = v4;
    v5 = [v3 viewModel];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 currentAssetReference];
      if (v7)
      {
        v8 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
        v9 = OUTLINED_FUNCTION_17_2();
        *(v9 + 16) = xmmword_1B3CF9810;
        *(v9 + 32) = v8;
        v10 = v8;
        if (sub_1B384E68C(41, v9, v30))
        {
          v11 = [v6 assetViewModelForCurrentAssetReference];
          if (v11 && (v12 = v11, v13 = [v11 irisPlayer], v12, v13))
          {
            [v13 scrubbingPhotoTime];
            v14 = v31;
            v15 = v32;
            v16 = v33;
            v17 = v34;
          }

          else
          {
            v14 = *MEMORY[0x1E6960C70];
            v15 = *(MEMORY[0x1E6960C70] + 8);
            v16 = *(MEMORY[0x1E6960C70] + 12);
            v17 = *(MEMORY[0x1E6960C70] + 16);
          }

          v20 = sub_1B384E710(a1, v14, v15 | (v16 << 32), v17, v30);
          if (v20)
          {
            OUTLINED_FUNCTION_19_17(v20);
            v21 = v6;
            v22 = v30;
          }

          else
          {
            if (qword_1EB84F960 != -1)
            {
              OUTLINED_FUNCTION_2_38();
            }

            v23 = sub_1B3C9A558();
            OUTLINED_FUNCTION_26_10(v23, qword_1EB84FEA0);
            v24 = v30;
            v21 = sub_1B3C9A538();
            v25 = sub_1B3C9CAC8();

            if (os_log_type_enabled(v21, v25))
            {
              v26 = swift_slowAlloc();
              v27 = swift_slowAlloc();
              *v26 = 138412290;
              *(v26 + 4) = v24;
              *v27 = v30;
              v24;
              _os_log_impl(&dword_1B36F3000, v21, v25, "Unexpected nil duplicating asset action performer from actionManager: %@", v26, 0xCu);
              sub_1B3732918(v27);
              OUTLINED_FUNCTION_3_5();
              OUTLINED_FUNCTION_3_5();
              v22 = v21;
              v21 = v10;
              v10 = v6;
            }

            else
            {
              v22 = v24;
            }
          }

          v19 = v21;
          v6 = v10;
        }

        else
        {
          v19 = v30;
        }

        v18 = v6;
      }

      else
      {
        v18 = v30;
      }
    }

    OUTLINED_FUNCTION_19_14();
  }

  else
  {
    OUTLINED_FUNCTION_19_14();
  }
}

void sub_1B384B418()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong oneUpDefaultActionsControllerAssetActionManager_];
    swift_unknownObjectRelease();
    v3 = [v2 actionPerformerForActionType_];
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_activeAssetActionPerformer);
      *(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_activeAssetActionPerformer) = v3;
      v5 = v3;

      OUTLINED_FUNCTION_20();
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = sub_1B384E93C;
      v14 = v6;
      OUTLINED_FUNCTION_4_31();
      v10 = 1107296256;
      OUTLINED_FUNCTION_5();
      v11 = v7;
      v12 = &block_descriptor_50_0;
      v8 = _Block_copy(aBlock);

      [v5 performActionWithCompletionHandler_];
      _Block_release(v8);

      v2 = v5;
    }
  }
}

void sub_1B384B568()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR___PUOneUpDefaultActionsController_activeAssetActionPerformer];
    *&Strong[OBJC_IVAR___PUOneUpDefaultActionsController_activeAssetActionPerformer] = 0;
  }
}

id sub_1B384B610()
{
  OUTLINED_FUNCTION_7_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OUTLINED_FUNCTION_12_21();
    v3 = [v1 v2];
    swift_unknownObjectRelease();
    Strong = [v3 canPerformActionType_];
  }

  return Strong;
}

void sub_1B384B6D0()
{
  v1 = *(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  v2 = [v1 viewModel];
  if (!v2)
  {
    return;
  }

  v14 = v2;
  v3 = [v1 actionManager];
  if (v3)
  {
    v13 = v3;
    v4 = [v14 currentAssetReference];
    if (v4)
    {
      v5 = v4;
      v6 = [v14 isInSelectionMode];
      v7 = swift_allocObject();
      *(v7 + 16) = v14;
      *(v7 + 24) = v6 ^ 1;
      v19 = sub_1B384E944;
      v20 = v7;
      OUTLINED_FUNCTION_12_8();
      v16 = 1107296256;
      OUTLINED_FUNCTION_2();
      v17 = v8;
      v18 = &block_descriptor_56_0;
      v9 = _Block_copy(aBlock);
      v10 = v14;

      [v10 performChanges_];
      _Block_release(v9);
      if ((v6 & 1) != 0 || (v11 = [v13 canPerformActionType:65 onAsset:objc_msgSend(v5 inAssetCollection:{sel_asset), objc_msgSend(v5, sel_assetCollection)}], swift_unknownObjectRelease(), swift_unknownObjectRelease(), !v11))
      {
      }

      else
      {
        PXDeduplicationSendEventAnalytics();
      }

      return;
    }

    v12 = v13;
  }

  else
  {
    v12 = v14;
  }
}

id sub_1B384B93C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  result = [v3 viewModel];
  if (result)
  {
    v5 = result;
    v6 = [result currentAssetReference];

    if (!v6)
    {
      return 0;
    }

    v7 = [v3 actionManager];
    if (!v7)
    {
      v13 = 0;
LABEL_14:

      return v13;
    }

    v8 = v7;
    result = [v3 viewModel];
    if (result)
    {
      v9 = result;
      v10 = [result assetViewModelForAssetReference_];

      if (v10)
      {
        v11 = [v6 asset];
        v12 = [v6 assetCollection];
        if ([v10 isInEditMode])
        {
          v13 = 0;
        }

        else
        {
          v13 = [v8 canPerformActionType:a1 onAsset:v11 inAssetCollection:v12];
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v10 = v6;
        v6 = v8;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B384BB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  result = [v7 viewModel];
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = [v7 actionManager];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v9 currentAssetReference];
  v13 = [v12 asset];
  v14 = [v12 assetCollection];

  v16 = OUTLINED_FUNCTION_29_8(v15, sel_canPerformActionType_onAsset_inAssetCollection_);
  if ((v16 & 1) == 0 || !OUTLINED_FUNCTION_29_8(v16, sel_shouldEnableActionType_onAsset_inAssetCollection_))
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_8:
    return 0;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v17 = OUTLINED_FUNCTION_17_2();
    *(v17 + 16) = xmmword_1B3CF9810;
    *(v17 + 32) = v12;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = v12;
  v19 = sub_1B384E45C(a1, v17, v11);
  if (!v19)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  v20 = v19;
  if ((sub_1B384CF90(v19, a2, a3) & 1) == 0)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return 0;
  }

  v21 = sub_1B384D908();
  v23 = v22;
  v24 = [v9 currentAssetReference];
  if (v24)
  {
    v25 = v24;
    v26 = swift_allocObject();
    v26[2] = v9;
    v26[3] = v25;
    v26[4] = v21;
    v26[5] = v23;
    v31[4] = sub_1B384E958;
    v31[5] = v26;
    OUTLINED_FUNCTION_1_0();
    v31[1] = 1107296256;
    OUTLINED_FUNCTION_2();
    v31[2] = v27;
    v31[3] = &block_descriptor_62_0;
    v28 = _Block_copy(v31);
    v29 = v9;
    v30 = v25;

    [v29 performChanges_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    _Block_release(v28);
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return 1;
}

void sub_1B384BE5C(void *a1, uint64_t a2)
{
  v4 = sub_1B3C9C5A8();
  [a1 setCurrentAssetReference:a2 transitionProgress:v4 transitionDriverIdentifier:0 animated:0.0];
}

uint64_t sub_1B384BF70(void *a1)
{
  OUTLINED_FUNCTION_3_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = [Strong oneUpActionsControllerDismissPresentedViewController_];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1 presentedViewController];
  if (v5)
  {

    if (!v4)
    {
      return 0;
    }
  }

  v6 = [a1 popoverPresentationController];
  if (v6)
  {
    v7 = v6;
    [v6 setDelegate_];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = [v8 oneUpActionsControllerShouldAnimateViewControllerPresentation_];
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = swift_dynamicCastObjCProtocolConditional();
    if (v13)
    {
      v14 = [v13 overOneUpPresentationSessionCreateIfNeeded_];

      if (v14)
      {
        [v14 presentViewController:a1 animated:v9];
LABEL_19:

        return 1;
      }
    }

    else
    {
    }
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v14 = v15;
    [v15 presentViewController:a1 animated:v9 completion:0];
    goto LABEL_19;
  }

  return 1;
}

void sub_1B384C220(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  v9 = [v8 viewModel];
  if (v9)
  {
    v18 = v9;
    v10 = [v8 viewModel];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 *a1];

      if (v12)
      {
        OUTLINED_FUNCTION_14_1();
        v13 = swift_allocObject();
        *(v13 + 16) = v18;
        *(v13 + 24) = v12;
        v23 = a3;
        v24 = v13;
        OUTLINED_FUNCTION_12_8();
        v20 = 1107296256;
        OUTLINED_FUNCTION_2();
        v21 = v14;
        v22 = a4;
        v15 = _Block_copy(aBlock);
        v16 = v18;
        v17 = v12;
        OUTLINED_FUNCTION_18_20();

        [v16 performChanges_];
        _Block_release(v15);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1B384C3BC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1B384C46C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession);
  v4 = [v3 viewModel];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [v4 currentAssetReference];
  v7 = [v6 asset];
  v8 = [v6 assetCollection];

  if (sub_1B384DB50())
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v9 = [v3 actionManager];
  if (v9)
  {
    v10 = v9;
    [v9 shouldEnableActionType:a1 onAsset:v7 inAssetCollection:v8];

LABEL_7:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_8:
    OUTLINED_FUNCTION_19_14();
    return;
  }

  OUTLINED_FUNCTION_3_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v12 = [Strong oneUpDefaultActionsControllerAssetActionManager_];
  swift_unknownObjectRelease();
  v13 = PXAssetActionTypeForPUAssetActionType(a1);
  if (!v13)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v14 = v13;
  if (!v6)
  {
    v17 = 0;
    goto LABEL_17;
  }

  v15 = [v6 pxAssetReference];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 asset];

LABEL_17:
    [v12 shouldEnableActionType:v14 onAsset:v17];

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  __break(1u);
}

id sub_1B384C754()
{
  OUTLINED_FUNCTION_7_0();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  if (sub_1B384DB50())
  {
    v0 = 0;
  }

  else
  {
    v1 = OUTLINED_FUNCTION_12_21();
    v0 = [v1 v2];
  }

  swift_unknownObjectRelease();
  return v0;
}

void sub_1B384C800()
{
  if (PFOSVariantHasInternalUI())
  {
    v1 = [*(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession) viewModel];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 assetViewModelForCurrentAssetReference];

      if (v3)
      {
        OUTLINED_FUNCTION_20();
        v4 = swift_allocObject();
        *(v4 + 16) = v3;
        v10[4] = sub_1B384E96C;
        v10[5] = v4;
        OUTLINED_FUNCTION_1_0();
        v10[1] = 1107296256;
        OUTLINED_FUNCTION_2();
        v10[2] = v5;
        v10[3] = &block_descriptor_80;
        v6 = _Block_copy(v10);
        v7 = v3;

        v8 = OUTLINED_FUNCTION_12_21();
        [v8 v9];
        _Block_release(v6);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1B384C904(void *a1)
{
  v2 = [a1 revealsGainMapImage] ^ 1;

  return [a1 setRevealsGainMapImage_];
}

void sub_1B384C998()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = Strong;
  v2 = [Strong undoManager];

  if (!v2)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1B384CA54(uint64_t a1, void *a2)
{
  if (a2)
  {
    return sub_1B384BF70(a2);
  }

  __break(1u);
  return result;
}

void sub_1B384CAC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v21 = &unk_1F2C4EA78;
    v9 = swift_dynamicCastObjCProtocolConditional();
    if (v9)
    {
      v10 = [v9 overOneUpPresentationSessionCreateIfNeeded_];

      if (v10)
      {
        if (a3)
        {
          v19 = a3;
          v20 = a4;
          OUTLINED_FUNCTION_4_31();
          v16 = 1107296256;
          v17 = sub_1B370C014;
          v18 = &block_descriptor_83;
          a3 = _Block_copy(aBlock);
        }

        [v10 dismissViewController:a2 animated:1 completionHandler:a3];

        _Block_release(a3);
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  v12 = [v11 presentedViewController];

  if (v12)
  {

    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      [v13 dismissViewControllerAnimated:1 completion:0];
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_28_10();
}

id sub_1B384CD1C()
{
  OUTLINED_FUNCTION_7_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = [Strong oneUpActionsControllerHostViewControllerForPresentingToast_];
  swift_unknownObjectRelease();
  return v2;
}

double sub_1B384CDE8()
{
  OUTLINED_FUNCTION_7_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  [Strong oneUpActionsControllerBottomPaddingForPresentingToast_];
  v3 = v2;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1B384CEAC(void *a1)
{
  OUTLINED_FUNCTION_7_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return 0;
  }

  if (a1)
  {
    [a1 actionType];
    v3 = OUTLINED_FUNCTION_12_21();
    v5 = [v3 v4];
    swift_unknownObjectRelease();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B384CF90(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1B3C9A488();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v37 - v14;
  v16 = OBJC_IVAR___PUOneUpDefaultActionsController_activeActionPerformer;
  v17 = *(v4 + OBJC_IVAR___PUOneUpDefaultActionsController_activeActionPerformer);
  if (v17)
  {
    if ([v17 state] == 10)
    {
      return 0;
    }

    v18 = *(v4 + v16);
    if (v18)
    {
      if ([v18 state] == 5)
      {
        return 0;
      }
    }
  }

  v38 = a1;
  v39 = a2;
  v40 = a3;
  if (qword_1EB84FC18 != -1)
  {
    swift_once();
  }

  v20 = sub_1B3C9A4B8();
  OUTLINED_FUNCTION_26_10(v20, qword_1EB84FC28);
  sub_1B3C9A478();
  v21 = sub_1B3C9A4A8();
  v22 = sub_1B3C9CD08();
  if (sub_1B3C9D158())
  {
    v23 = OUTLINED_FUNCTION_12_13();
    *v23 = 0;
    v24 = sub_1B3C9A468();
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v21, v22, v24, "ExecuteActionPerformer", "", v23, 2u);
    OUTLINED_FUNCTION_3_5();
  }

  (*(v9 + 16))(v11, v15, v8);
  sub_1B3C9A4F8();
  swift_allocObject();
  v19 = 1;
  v25 = sub_1B3C9A4E8();
  (*(v9 + 8))(v15, v8);
  v26 = *(v4 + v16);
  v27 = v38;
  *(v4 + v16) = v38;
  v28 = v27;

  [v28 setDelegate_];
  OUTLINED_FUNCTION_20();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v32 = v39;
  v31 = v40;
  v30[2] = v28;
  v30[3] = v32;
  v30[4] = v31;
  v30[5] = v29;
  v30[6] = v25;
  aBlock[4] = sub_1B384F738;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_5();
  aBlock[2] = v33;
  aBlock[3] = &block_descriptor_161;
  v34 = _Block_copy(aBlock);
  v35 = v28;
  sub_1B370A6FC(v32);

  [v35 performWithCompletionHandler_];

  _Block_release(v34);
  return v19;
}

uint64_t sub_1B384D2FC(int a1, void *a2, void *a3, void (*a4)(void, void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v11 = sub_1B3C9A4C8();
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B3C9A488();
  v45 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v40 = a1;
    v41 = v11;
    if (qword_1EB84F960 != -1)
    {
      swift_once();
    }

    v16 = sub_1B3C9A558();
    __swift_project_value_buffer(v16, qword_1EB84FEA0);
    v17 = a3;
    v18 = a2;
    v19 = sub_1B3C9A538();
    v20 = sub_1B3C9CAC8();

    if (os_log_type_enabled(v19, v20))
    {
      v39 = v13;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v17;
      *v22 = v17;
      *(v21 + 12) = 2112;
      v23 = v17;
      if (a2)
      {
        v24 = a2;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        v26 = v25;
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      *(v21 + 14) = v25;
      v22[1] = v26;
      _os_log_impl(&dword_1B36F3000, v19, v20, "Executing action performer %@ failed with error: %@", v21, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567E0);
      swift_arrayDestroy();
      MEMORY[0x1B8C6EC70](v22, -1, -1);
      MEMORY[0x1B8C6EC70](v21, -1, -1);
      v13 = v39;
    }

    v11 = v41;
    LOBYTE(a1) = v40;
  }

  if (a4)
  {

    a4(a1 & 1, a2);
    sub_1B36F9DA0(a4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = *&Strong[OBJC_IVAR___PUOneUpDefaultActionsController_activeActionPerformer];
    *&Strong[OBJC_IVAR___PUOneUpDefaultActionsController_activeActionPerformer] = 0;
  }

  if (qword_1EB84FC18 != -1)
  {
    swift_once();
  }

  v29 = sub_1B3C9A4B8();
  __swift_project_value_buffer(v29, qword_1EB84FC28);
  v30 = sub_1B3C9A4A8();
  sub_1B3C9A4D8();
  v31 = sub_1B3C9CCF8();
  if (sub_1B3C9D158())
  {
    v32 = v13;

    v33 = v42;
    sub_1B3C9A508();

    v34 = v43;
    if ((*(v43 + 88))(v33, v11) == *MEMORY[0x1E69E93E8])
    {
      v35 = "[Error] Interval already ended";
    }

    else
    {
      (*(v34 + 8))(v33, v11);
      v35 = "";
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = sub_1B3C9A468();
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v30, v31, v37, "ExecuteActionPerformer", v35, v36, 2u);
    MEMORY[0x1B8C6EC70](v36, -1, -1);
    v13 = v32;
  }

  return (*(v45 + 8))(v15, v13);
}

void sub_1B384D858(void *a1)
{
  OUTLINED_FUNCTION_20();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v8[4] = sub_1B384F6DC;
  v8[5] = v2;
  OUTLINED_FUNCTION_1_0();
  v8[1] = 1107296256;
  OUTLINED_FUNCTION_2();
  v8[2] = v3;
  v8[3] = &block_descriptor_117;
  v4 = _Block_copy(v8);
  v5 = a1;

  v6 = OUTLINED_FUNCTION_12_21();
  [v6 v7];
  _Block_release(v4);
}

uint64_t sub_1B384D908()
{
  v1 = (v0 + OBJC_IVAR___PUOneUpDefaultActionsController____lazy_storage___scrubbingIdentifier);
  if (*(v0 + OBJC_IVAR___PUOneUpDefaultActionsController____lazy_storage___scrubbingIdentifier + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_1B384D984();
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_1B384D984()
{
  v0 = sub_1B3C98158();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856B10);
  sub_1B3C9C608();
  sub_1B3C98148();
  sub_1B3C98128();
  (*(v1 + 8))(v3, v0);
  v4 = sub_1B384DAD0();

  return v4;
}

uint64_t sub_1B384DAD0()
{

  v1 = sub_1B3C9C718();
  sub_1B3C9C688();
  return v1;
}

id sub_1B384DB50()
{
  result = [*(v0 + OBJC_IVAR___PUOneUpDefaultActionsController_browsingSession) viewModel];
  if (result)
  {
    v2 = result;
    v3 = [result currentAssetReference];

    if (v3)
    {
      v4 = [v3 asset];

      if (v4)
      {
        v3 = [v4 needsSensitivityProtection];
        swift_unknownObjectRelease();
      }

      else
      {
        return 0;
      }
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id OneUpDefaultActionsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpDefaultActionsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpDefaultActionsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall OneUpDefaultActionsController.prepareForPopoverPresentation(_:)(UIPopoverPresentationController *a1)
{
  v3 = [(UIPopoverPresentationController *)a1 sourceView];
  if (v3)
  {

    return;
  }

  if ([(UIPopoverPresentationController *)a1 sourceItem])
  {

    goto LABEL_8;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1B3C9D378();
    MEMORY[0x1B8C69C10](0xD00000000000003BLL, 0x80000001B3D1C4B0);
    v18 = [(UIPopoverPresentationController *)a1 description];
    v19 = sub_1B3C9C5E8();
    v21 = v20;

    MEMORY[0x1B8C69C10](v19, v21);

LABEL_21:
    sub_1B3C9D4C8();
    __break(1u);
    return;
  }

  v5 = Strong;
  v6 = *(v1 + OBJC_IVAR___PUOneUpDefaultActionsController_activeActionPerformer);
  if (!v6)
  {
    sub_1B3C9D378();

    v22 = [(UIPopoverPresentationController *)a1 description];
    v23 = sub_1B3C9C5E8();
    v25 = v24;

    MEMORY[0x1B8C69C10](v23, v25);

    goto LABEL_21;
  }

  v7 = [v6 actionType];
  v8 = [v5 oneUpActionsControllerPopoverSourceItemWithActionType_];
  if (v8)
  {
    v9 = v8;
    v10 = OUTLINED_FUNCTION_12_21();
    [v10 v11];

LABEL_8:
    swift_unknownObjectRelease();
    return;
  }

  v12 = [v5 oneUpActionsControllerPopoverSourceViewWithActionType_];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  [(UIPopoverPresentationController *)a1 setSourceView:v12];
  [v5 oneUpActionsControllerPopoverSourceRectIn:v13 actionType:v7];
  OUTLINED_FUNCTION_6();
  if (CGRectIsNull(v27))
  {
    [v13 bounds];
    [(UIPopoverPresentationController *)a1 setSourceRect:v14];
  }

  else
  {
    v15 = OUTLINED_FUNCTION_17();
    [v16 v17];
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1B384E12C()
{
  v0 = sub_1B3C9A558();
  __swift_allocate_value_buffer(v0, qword_1EB84FEA0);
  __swift_project_value_buffer(v0, qword_1EB84FEA0);
  return sub_1B3C9A528();
}

uint64_t sub_1B384E190()
{
  v0 = sub_1B3C9A558();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C9A4B8();
  __swift_allocate_value_buffer(v4, qword_1EB84FC28);
  __swift_project_value_buffer(v4, qword_1EB84FC28);
  if (qword_1EB84F960 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB84FEA0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1B3C9A498();
}

id sub_1B384E2CC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B3710718(0, &unk_1EB84F850);
  v5 = sub_1B3C9C778();
  v6 = [a3 canPerformAction:a1 onAllAssetReferences:v5];

  return v6;
}

id sub_1B384E348(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B3710718(0, &unk_1EB84F850);
  v5 = sub_1B3C9C778();
  v6 = [a3 actionPerformerForSimpleActionType:a1 onAssetReferences:v5];

  return v6;
}

id sub_1B384E3CC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
  v5 = sub_1B3C9C4A8();

  v6 = [a3 canPerformAction:a1 onAllAssetsByAssetCollection:v5];

  return v6;
}

id sub_1B384E45C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B3710718(0, &unk_1EB84F850);
  v5 = sub_1B3C9C778();

  v6 = [a3 actionPerformerForSimpleActionType:a1 onAssetReferences:v5];

  return v6;
}

id sub_1B384E4E8(char a1, uint64_t a2, void *a3)
{
  sub_1B3710718(0, &unk_1EB84F850);
  v5 = sub_1B3C9C778();

  v6 = [a3 actionPerformerForSettingFavoriteTo:a1 & 1 onAssetReferences:v5];

  return v6;
}

id sub_1B384E574(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
  v5 = sub_1B3C9C4A8();
  v6 = [a3 canPerformAction:a1 onAllAssetsByAssetCollection:v5];

  return v6;
}

id sub_1B384E5FC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
  v5 = sub_1B3C9C4A8();
  v6 = [a3 actionPerformerForSimpleActionType:a1 onAssetsByAssetCollection:v5];

  return v6;
}

id sub_1B384E68C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B3710718(0, &unk_1EB84F850);
  v5 = sub_1B3C9C778();

  v6 = [a3 canPerformAction:a1 onAllAssetReferences:v5];

  return v6;
}

id sub_1B384E710(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = HIDWORD(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
  v10 = sub_1B3C9C4A8();
  v13 = a2;
  v14 = v7;
  v15 = v9;
  v16 = a4;
  v11 = [a5 actionPerformerForDuplicatingAssetsByAssetCollection:v10 withNewStillImageTime:&v13];

  return v11;
}

id sub_1B384E7C4(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v4 = sub_1B3C9D688();
  v5 = [swift_getObjCClassFromMetadata() dictionaryWithObject:v4 forKey:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v5;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OneUpDefaultActionsController.Error(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OneUpDefaultActionsController.Error(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B384F690(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B384F6AC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_38()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_24(uint64_t a1)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_17(void *a1)
{

  return sub_1B384CF90(a1, 0, 0);
}

id OUTLINED_FUNCTION_29_8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OneUpPhotosBadgeViewSpec.init(badgeInfo:)(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_1B3C99018();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = objc_opt_self();
  v16 = [v15 systemImageNameForBadges_];
  if (v16)
  {
    v17 = v16;
    sub_1B3C9C5E8();
  }

  static OneUpPhotosBadgeViewSpec.text(for:)(a1, a2, a3, a4);
  v22 = a1;
  v23 = a4;
  v24 = a2;
  v25 = a3;
  v18 = [v15 accessibilityLabelForBadgeInfo:&v22 style:3];
  sub_1B3C9C5E8();

  v22 = a1;
  v23 = a4;
  v24 = a2;
  v25 = a3;
  IsActionable = PXAssetBadgeInfoIsActionable();
  v20 = MEMORY[0x1E69C1C20];
  if ((IsActionable & 1) == 0)
  {
    v22 = a1;
    v23 = a4;
    v24 = a2;
    v25 = a3;
    if (!(PXAssetBadgeInfoIsActionableDisabled() | (a1 >> 3) & 1))
    {
      v20 = MEMORY[0x1E69C1C18];
    }
  }

  (*(v10 + 104))(v14, *v20, v8);
  return sub_1B3C99028();
}

uint64_t OneUpPhotosBadgeViewSpec.isEmpty.getter()
{
  sub_1B3C99038();
  if (!v0)
  {
    sub_1B3C99008();
    if (!v1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t static OneUpPhotosBadgeViewSpec.text(for:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_1B3C9C598();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = sub_1B3C9C578();
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_8();
  if ((a1 & 8) != 0)
  {
    sub_1B3C9C568();
    sub_1B3C9C558();
    v20[0] = a2;
    sub_1B3C9C548();
    sub_1B3C9C558();
    sub_1B3C9C588();
    v18 = sub_1B3C9C648();
    (*(v10 + 8))(v14, v8);
  }

  else
  {
    v20[0] = a1;
    *&v20[1] = a4;
    v20[2] = a2;
    v20[3] = a3;
    v16 = [objc_opt_self() textForBadgeInfo:v20 style:3];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1B3C9C5E8();
    }

    else
    {
      return 0;
    }
  }

  return v18;
}

unint64_t sub_1B384FD3C()
{
  result = qword_1EB856B80;
  if (!qword_1EB856B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856B80);
  }

  return result;
}

unint64_t sub_1B384FD94()
{
  result = qword_1EB856B88;
  if (!qword_1EB856B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856B88);
  }

  return result;
}

unint64_t sub_1B384FE38()
{
  result = qword_1EB856B90;
  if (!qword_1EB856B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856B90);
  }

  return result;
}

uint64_t sub_1B384FE8C()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878ED0);
  __swift_project_value_buffer(v6, qword_1EB878ED0);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B3850078()
{
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  v0[2] = sub_1B3C9C888();
  v0[3] = sub_1B3C9C878();
  v3 = swift_task_alloc();
  v0[4] = v3;
  sub_1B384FE38();
  *v3 = v0;
  v3[1] = sub_1B37120C8;

  return MEMORY[0x1EEE2CA70](v2, 0, 0, 0, 0, 0, 1, &unk_1B3D087D0);
}

uint64_t sub_1B385016C(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v1[3] = swift_task_alloc();
  sub_1B3C9C888();
  v1[4] = sub_1B3C9C878();
  v3 = sub_1B3C9C848();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B385023C, v3, v2);
}

uint64_t sub_1B385023C()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(v0 + 24);
  v2 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1B3712454;

  return sub_1B38502EC();
}

uint64_t sub_1B38502EC()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v1;
  v2 = sub_1B3C9A558();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();
  sub_1B3C9C888();
  v0[6] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[7] = v4;
  v0[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B38503DC, v4, v3);
}

uint64_t sub_1B38503DC()
{
  v16 = v0;
  v1 = sub_1B3C98D08();
  v3 = v2;
  sub_1B3C987F8();

  v4 = sub_1B3C9A538();
  v5 = sub_1B3C9CAE8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136446210;
    v12 = sub_1B3749364(v1, v3, &v15);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_1B36F3000, v4, v5, "Parameters: { asset: %{public}s }", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1B8C6EC70](v11, -1, -1);
    MEMORY[0x1B8C6EC70](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  v0[9] = type metadata accessor for PXEditAppDependencyManager();
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1B38505B8;

  return sub_1B37BD42C();
}

uint64_t sub_1B38505B8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1B3712CF0;
  }

  else
  {
    v7 = sub_1B38506F0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B38506F0()
{
  OUTLINED_FUNCTION_0_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v1 = swift_allocObject();
  *(v0 + 96) = v1;
  *(v1 + 16) = xmmword_1B3CF9810;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69C4238]) init];
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1B3712B7C;

  return sub_1B37BD81C();
}

uint64_t sub_1B38507D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8500D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878ED0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B3850880()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3712F14;

  return sub_1B3850078();
}

uint64_t sub_1B3850918(uint64_t a1)
{
  v2 = sub_1B384FE38();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

void sub_1B3850964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_104_0();
  a27 = v28;
  a28 = v29;
  v31 = v30;
  v32 = *(v30 + 16);
  a16 = MEMORY[0x1E69E7CC0];
  sub_1B37EABC0(0, v32, 0);
  v33 = a16;
  v34 = v31 + 32;
  if (v32)
  {
    while (1)
    {
      sub_1B37106B4(v34, &a12);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      a16 = v33;
      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1B37EABC0((v35 > 1), v36 + 1, 1);
        v33 = a16;
      }

      *(v33 + 16) = v36 + 1;
      v37 = v33 + 16 * v36;
      *(v37 + 32) = a10;
      *(v37 + 40) = a11;
      v34 += 32;
      if (!--v32)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_53_3();
}

uint64_t sub_1B3850A60(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1B3711890(a1);
  sub_1B3C9D428();
  result = sub_1B3711890(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B8C6A930](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();

      return 0;
    }

    sub_1B3C9D408();
    sub_1B3C9D438();
    sub_1B3C9D448();
    result = sub_1B3C9D418();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1B3850B9C()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  OUTLINED_FUNCTION_8_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_70_1();
  sub_1B3869524(v11, v12, &unk_1EB853B20);
  v13 = sub_1B3C9C8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B371B36C(v0, &unk_1EB853B20);
  }

  else
  {
    sub_1B3C9C8A8();
    (*(*(v13 - 8) + 8))(v0, v13);
  }

  v15 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1B371B36C(v6, &unk_1EB853B20);
    OUTLINED_FUNCTION_14_1();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1B3C9C848();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1B3C9C638();
  OUTLINED_FUNCTION_14_1();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;

  swift_task_create();

  sub_1B371B36C(v6, &unk_1EB853B20);

LABEL_9:
  OUTLINED_FUNCTION_27();
}

void sub_1B3850E50()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  OUTLINED_FUNCTION_8_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_70_1();
  sub_1B3869524(v11, v12, &unk_1EB853B20);
  v13 = sub_1B3C9C8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B371B36C(v0, &unk_1EB853B20);
  }

  else
  {
    sub_1B3C9C8A8();
    (*(*(v13 - 8) + 8))(v0, v13);
  }

  v15 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1B371B36C(v6, &unk_1EB853B20);
    OUTLINED_FUNCTION_14_1();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8572D0);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1B3C9C848();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1B3C9C638();
  OUTLINED_FUNCTION_14_1();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8572D0);
  swift_task_create();
  OUTLINED_FUNCTION_42();

  sub_1B371B36C(v6, &unk_1EB853B20);

LABEL_9:
  OUTLINED_FUNCTION_27();
}

char *StoryViewController.__allocating_init(configuration:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_42();
  return StoryViewController.init(configuration:)(v2);
}

uint64_t sub_1B3851178()
{
  OUTLINED_FUNCTION_17_0();
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCuratedAudioAssets:v2 currentAsset:v0];
  OUTLINED_FUNCTION_18_20();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

void *sub_1B3851260()
{
  v1 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_7_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B38512F8(uint64_t a1)
{
  v3 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_3_27();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B3851340(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B38512F8(v1);
}

id sub_1B3851380()
{
  v0 = sub_1B3851C34();
  v1 = [v0 mainConfiguration];

  return v1;
}

uint64_t sub_1B38513EC()
{
  v1 = OBJC_IVAR___PUStoryViewController_remainsActiveWhileApplicationIsHidden;
  OUTLINED_FUNCTION_7_0();
  return *(v0 + v1);
}

void *sub_1B3851474(char a1)
{
  v3 = OBJC_IVAR___PUStoryViewController_remainsActiveWhileApplicationIsHidden;
  OUTLINED_FUNCTION_3_27();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_1B38514BC(v4);
}

void *sub_1B38514BC(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR___PUStoryViewController_remainsActiveWhileApplicationIsHidden;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    return sub_1B3853D0C();
  }

  return result;
}

uint64_t sub_1B3851518(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR___PUStoryViewController_remainsActiveWhileApplicationIsHidden;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return OUTLINED_FUNCTION_89_0();
}

void sub_1B3851590(uint64_t a1)
{
  v1 = *a1;
  sub_1B3851474(*(*a1 + 32));

  free(v1);
}

uint64_t sub_1B385173C()
{
  v1 = OBJC_IVAR___PUStoryViewController_gridDecorationViewClass;
  OUTLINED_FUNCTION_7_0();
  return *(v0 + v1);
}

uint64_t sub_1B38517A8(uint64_t a1)
{
  v3 = OBJC_IVAR___PUStoryViewController_gridDecorationViewClass;
  result = OUTLINED_FUNCTION_3_27();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B3851910(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_10_24(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_89_0();
}

uint64_t sub_1B3851A28()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B3851AA0(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_10_24(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_89_0();
}

uint64_t sub_1B3851C34()
{
  v1 = OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel;
  v2 = *(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel);
LABEL_5:
    v6 = v2;
    return v3;
  }

  v4 = sub_1B3851CE4();
  if (v4)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
    goto LABEL_5;
  }

  result = OUTLINED_FUNCTION_108_0();
  __break(1u);
  return result;
}

id sub_1B3851CE4()
{
  v1 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_7_0();
  result = *(v0 + v1);
  if (result)
  {
    return [result viewModel];
  }

  return result;
}

void sub_1B3851D30(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PUStoryViewController_browserGridPhotoViewModel;
  v5 = *(v2 + OBJC_IVAR___PUStoryViewController_browserGridPhotoViewModel);
  if (v5)
  {
    if (a1)
    {
      sub_1B3710718(0, &qword_1EB8572C8);
      v6 = v5;
      v7 = a1;
      v8 = sub_1B3C9CFA8();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = (v2 + OBJC_IVAR___PUStoryViewController_browserGridPhotoViewModelObservation);
  *v9 = 0;
  v9[1] = 0;
  swift_unknownObjectRelease();
  v10 = *(v2 + v4);
  if (v10)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = v10;

    v12 = sub_1B3C9CA58();
    v14 = v13;

    *v9 = v12;
    v9[1] = v14;

    swift_unknownObjectRelease();
  }
}

void sub_1B3851E80(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___PUStoryViewController_browserGridPhotoViewModel);
  *(v1 + OBJC_IVAR___PUStoryViewController_browserGridPhotoViewModel) = a1;
  v2 = a1;
  sub_1B3851D30(v3);
}

void sub_1B3851EE0(char a1)
{
  if (*(v1 + OBJC_IVAR___PUStoryViewController_didAppear) != (a1 & 1))
  {
    sub_1B3853FB8();
  }
}

void sub_1B3851F00(char a1)
{
  v2 = *(v1 + OBJC_IVAR___PUStoryViewController_didAppear);
  *(v1 + OBJC_IVAR___PUStoryViewController_didAppear) = a1;
  sub_1B3851EE0(v2);
}

id sub_1B3851F18()
{
  v1 = OBJC_IVAR___PUStoryViewController____lazy_storage___eventTracker;
  if (*(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___eventTracker))
  {
    v2 = *(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___eventTracker);
  }

  else
  {
    v2 = PXMediaViewControllerEventTrackerCreate();
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id sub_1B3851F90()
{
  v1 = OBJC_IVAR___PUStoryViewController____lazy_storage___analyticsController;
  v2 = *(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___analyticsController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___analyticsController);
  }

  else
  {
    v4 = sub_1B3851C34();
    v5 = [objc_allocWithZone(MEMORY[0x1E69C3A80]) initWithViewModel_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1B3852020()
{
  v1 = sub_1B3851C34();
  v2 = [v1 mainModel];

  v3 = [v2 visibleDisplayAssets];
  v4 = [*(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel) desiredPlayState];
  if ([v3 count] == 1 && !v4)
  {
    v5 = [v3 firstObject];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    return 0;
  }

  return v5;
}

void sub_1B38520FC(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR___PUStoryViewController_exportActivityCount) != a1)
  {
    sub_1B3853FB8();
  }
}

void sub_1B3852118(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PUStoryViewController_exportActivityCount);
  *(v1 + OBJC_IVAR___PUStoryViewController_exportActivityCount) = a1;
  sub_1B38520FC(v2);
}

void *sub_1B3852174()
{
  v1 = v0;
  v2 = OBJC_IVAR___PUStoryViewController_boopableItemsProvider;
  v3 = *(v0 + OBJC_IVAR___PUStoryViewController_boopableItemsProvider);
  if (!v3)
  {
    v4 = *(v1 + OBJC_IVAR___PUStoryViewController_browserGridPhotoViewModel);
    if (v4)
    {
      v5 = objc_allocWithZone(sub_1B3C98BD8());
      v6 = v4;
      v7 = [v5 init];
      v8 = [v6 selectionManager];
      sub_1B3C98BC8();

      v9 = *(v1 + v2);
      *(v1 + v2) = v7;

      v3 = *(v1 + v2);
    }

    else
    {
      v3 = 0;
    }
  }

  v10 = v3;
  return v3;
}

uint64_t sub_1B3852288(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for StoryViewController();
  objc_msgSendSuper2(&v4, sel_setActivityItemsConfiguration_, a1);
  return swift_unknownObjectRelease();
}

id sub_1B385230C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryViewController();
  return objc_msgSendSuper2(&v2, sel_prefersStatusBarHidden);
}

char *StoryViewController.init(configuration:)(void *a1)
{
  *(v1 + OBJC_IVAR___PUStoryViewController_storyView) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_remainsActiveWhileApplicationIsHidden) = 0;
  v3 = (v1 + OBJC_IVAR___PUStoryViewController_onViewDidLoad);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_navigationItemHelper) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_gridDecorationViewClass) = 0;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_15();
  *(v1 + OBJC_IVAR___PUStoryViewController_viewEnvironmentActionDelegate) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel) = 0;
  v4 = (v1 + OBJC_IVAR___PUStoryViewController_viewModelObservation);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR___PUStoryViewController_browserGridPhotoViewModelObservation);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_browserGridPhotoViewModel) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_fullscreenOverlayController) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_didAppear) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_didAppearOnce) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_applicationState) = 0;
  v6 = (v1 + OBJC_IVAR___PUStoryViewController_applicationStateObservation);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_transitionsCoordinator) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController____lazy_storage___eventTracker) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController____lazy_storage___analyticsController) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_exportHelper) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_exportActivityCount) = 0;
  v7 = (v1 + OBJC_IVAR___PUStoryViewController_exportConfigurationCompletionBlock);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_assetPicker) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_initialSongResource) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_originalToolbarScrollEdgeAppearance) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_boopableItemsProvider) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_isAppVisible) = 0;
  v8 = OBJC_IVAR___PUStoryViewController_lastAppVisibilityChangeDate;
  v9 = sub_1B3C98118();
  OUTLINED_FUNCTION_7_3(v1 + v8, v10, v11, v9);
  *(v1 + OBJC_IVAR___PUStoryViewController__prefersHomeIndicatorHidden) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_actionPerformerProxy) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_isExportPending) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_appleMusicPreviewVC) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController____lazy_storage___tccStatusProvider) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_airPlayHelper) = 0;
  *(v1 + OBJC_IVAR___PUStoryViewController_initialConfiguration) = a1;
  v24 = v1;
  v25 = type metadata accessor for StoryViewController();
  v12 = a1;
  OUTLINED_FUNCTION_14();
  v15 = objc_msgSendSuper2(v13, v14);
  v16 = 0;
  if (MEMORY[0x1B8C6D660]([*&v15[OBJC_IVAR___PUStoryViewController_initialConfiguration] setPresentingViewController_]))
  {
    v16 = [v12 isEmbeddedInCollectionDetail] ^ 1;
  }

  [v15 px_enableBarAppearance];
  if (([v12 isAppleMusicPreview] & 1) != 0 || (v17 = objc_msgSend(v15, sel_px_barAppearance), v18 = swift_allocObject(), *(v18 + 16) = v16, *(v18 + 17) = 0, v23[4] = sub_1B3852794, v23[5] = v18, OUTLINED_FUNCTION_1_0(), OUTLINED_FUNCTION_23_8(), v23[2] = sub_1B386A148, v23[3] = &block_descriptor_52, v19 = _Block_copy(v23), , objc_msgSend(v17, sel_performChangesWithAnimationOptions_changes_, 0, v19), _Block_release(v19), v17, !v16))
  {
  }

  else
  {
    v20 = [objc_allocWithZone(sub_1B3C98338()) init];

    v21 = OBJC_IVAR___PUStoryViewController_navigationItemHelper;
    swift_beginAccess();
    *&v15[v21] = v20;
    swift_unknownObjectRelease();
  }

  return v15;
}

uint64_t type metadata accessor for StoryViewController()
{
  result = qword_1EB84FAC0;
  if (!qword_1EB84FAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1B3852728(void *a1, char a2, char a3)
{
  [a1 setPrefersToolbarVisible_];
  [a1 setPrefersNavigationBarVisible_];

  return [a1 setPrefersStatusBarVisible_];
}

id StoryViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void StoryViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR___PUStoryViewController_storyView) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_remainsActiveWhileApplicationIsHidden) = 0;
  v1 = (v0 + OBJC_IVAR___PUStoryViewController_onViewDidLoad);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_navigationItemHelper) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_gridDecorationViewClass) = 0;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_15();
  *(v0 + OBJC_IVAR___PUStoryViewController_viewEnvironmentActionDelegate) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel) = 0;
  v2 = (v0 + OBJC_IVAR___PUStoryViewController_viewModelObservation);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___PUStoryViewController_browserGridPhotoViewModelObservation);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_browserGridPhotoViewModel) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_fullscreenOverlayController) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_didAppear) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_didAppearOnce) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_applicationState) = 0;
  v4 = (v0 + OBJC_IVAR___PUStoryViewController_applicationStateObservation);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_transitionsCoordinator) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___eventTracker) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___analyticsController) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_exportHelper) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_exportActivityCount) = 0;
  v5 = (v0 + OBJC_IVAR___PUStoryViewController_exportConfigurationCompletionBlock);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_assetPicker) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_initialSongResource) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_originalToolbarScrollEdgeAppearance) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_boopableItemsProvider) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_isAppVisible) = 0;
  v6 = OBJC_IVAR___PUStoryViewController_lastAppVisibilityChangeDate;
  v7 = sub_1B3C98118();
  OUTLINED_FUNCTION_7_3(v0 + v6, v8, v9, v7);
  *(v0 + OBJC_IVAR___PUStoryViewController__prefersHomeIndicatorHidden) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_actionPerformerProxy) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_isExportPending) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_appleMusicPreviewVC) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___tccStatusProvider) = 0;
  *(v0 + OBJC_IVAR___PUStoryViewController_airPlayHelper) = 0;
  OUTLINED_FUNCTION_108_0();
  __break(1u);
}

void sub_1B3852A3C()
{
  v1 = v0;
  v68.receiver = v0;
  v68.super_class = type metadata accessor for StoryViewController();
  objc_msgSendSuper2(&v68, sel_viewDidLoad);
  v2 = sub_1B3C9CBF8();
  [v0 px_enableExtendedTraitCollection];
  [v0 px_enableOneUpPresentation];
  v3 = sub_1B3C9C5E8();
  sub_1B3853344(v3, v4, 0, sel_moveLeft_);

  v5 = sub_1B3C9C5E8();
  sub_1B3853344(v5, v6, 0, sel_moveRight_);

  v7 = [v0 px_extendedTraitCollection];
  v8 = *&v1[OBJC_IVAR___PUStoryViewController_initialConfiguration];
  sub_1B3867458();
  sub_1B3710718(0, &unk_1EB84F7D0);
  OUTLINED_FUNCTION_98_0();
  sub_1B3C9A018();
  sub_1B3710718(0, &qword_1EB84F7E0);
  v9 = v8;
  v10 = v7;
  v11 = sub_1B3853248();
  [v11 setContainerViewController_];
  [v2 bounds];
  OUTLINED_FUNCTION_6();
  v12 = objc_allocWithZone(MEMORY[0x1E69C3B30]);
  v13 = OUTLINED_FUNCTION_17();
  v16 = [v14 v15];
  OUTLINED_FUNCTION_28_4([v16 setAutoresizingMask_], sel_addSubview_);
  v17 = OBJC_IVAR___PUStoryViewController_storyView;
  swift_beginAccess();
  v18 = *&v1[v17];
  *&v1[v17] = v16;
  v61 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856C90);
  swift_allocObject();
  v19 = v1;
  *&v19[OBJC_IVAR___PUStoryViewController_actionPerformerProxy] = sub_1B3C98CF8();

  v20 = sub_1B3851C34();
  OUTLINED_FUNCTION_20();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v66 = sub_1B38674C0;
  v67 = v21;
  OUTLINED_FUNCTION_4_31();
  v63 = 1107296256;
  OUTLINED_FUNCTION_13_1();
  v64 = v22;
  v65 = &block_descriptor_6;
  v23 = _Block_copy(aBlock);
  v24 = v19;

  [v20 performChanges_];
  _Block_release(v23);

  v25 = OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel;
  v26 = *&v24[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel];
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v27 = v26;
  v28 = sub_1B3C9CA58();
  v30 = v29;

  v31 = &v24[OBJC_IVAR___PUStoryViewController_viewModelObservation];
  *v31 = v28;
  v31[1] = v30;
  swift_unknownObjectRelease();
  sub_1B3710718(0, &qword_1EB84F898);
  v32 = *&v24[v25];
  v33 = v24;
  v34 = v32;
  v35 = sub_1B3853248();
  v36 = *&v33[OBJC_IVAR___PUStoryViewController_transitionsCoordinator];
  *&v33[OBJC_IVAR___PUStoryViewController_transitionsCoordinator] = v35;

  v37 = [objc_opt_self() sharedState];
  v38 = *&v33[OBJC_IVAR___PUStoryViewController_applicationState];
  *&v33[OBJC_IVAR___PUStoryViewController_applicationState] = v37;
  v39 = v37;

  if (!v39)
  {
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v40 = sub_1B3C9CA58();
  v42 = v41;

  v43 = &v33[OBJC_IVAR___PUStoryViewController_applicationStateObservation];
  *v43 = v40;
  v43[1] = v42;
  swift_unknownObjectRelease();
  sub_1B3853C90();
  sub_1B3853D0C();
  sub_1B3853FB8();
  sub_1B3854274();
  v44 = OBJC_IVAR___PUStoryViewController_navigationItemHelper;
  OUTLINED_FUNCTION_14();
  v45 = swift_beginAccess();
  v46 = *&v33[v44];
  if (v46)
  {
    swift_unknownObjectRetain();
    v47 = [v33 navigationItem];
    v48 = *&v24[v25];
    [v46 initialSetupForNavigationItem:v47 viewModel:v48];

    v45 = swift_unknownObjectRelease();
  }

  if (!MEMORY[0x1B8C6D660](v45))
  {
    goto LABEL_9;
  }

  sub_1B3C985C8();
  swift_allocObject();
  v49 = sub_1B3C985B8();
  sub_1B3C98EC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  OUTLINED_FUNCTION_7_1();
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1B3CF9810;
  *(v50 + 32) = v49;

  v51 = sub_1B3C98EB8();

  if (v51)
  {
    [v33 addChildViewController_];
    v52 = *&v33[OBJC_IVAR___PUStoryViewController_fullscreenOverlayController];
    *&v33[OBJC_IVAR___PUStoryViewController_fullscreenOverlayController] = v51;
    v53 = v51;

    v54 = [v53 view];
    if (v54)
    {
      v55 = v54;
      OUTLINED_FUNCTION_28_4(v54, sel_addSubview_);

      [v53 didMoveToParentViewController_];
      sub_1B3C98598();
      v56 = *&v24[v25];
      sub_1B3C985A8();

      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_8:

LABEL_9:
  v57 = &v33[OBJC_IVAR___PUStoryViewController_onViewDidLoad];
  v58 = *&v33[OBJC_IVAR___PUStoryViewController_onViewDidLoad];
  if (v58)
  {

    v58(v59);
    sub_1B36F9DA0(v58);
    v60 = *v57;
  }

  else
  {
    v60 = 0;
  }

  *v57 = 0;
  v57[1] = 0;
  sub_1B36F9DA0(v60);
  sub_1B3854590();
  sub_1B3813F1C(0xD000000000000013, 0x80000001B3D087D0, v2, &selRef_setAccessibilityIdentifier_);
}

uint64_t sub_1B3853118(void *a1, uint64_t a2)
{
  [a1 setActionPerformer_];
  v4 = OBJC_IVAR___PUStoryViewController_viewEnvironmentActionDelegate;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (v5)
  {
    if ([v5 respondsToSelector_])
    {
      v5 = [v5 viewEnvironmentModel];
    }

    else
    {
      v5 = 0;
    }
  }

  [a1 setViewEnvironmentModel_];
  return swift_unknownObjectRelease();
}

void sub_1B38531E0()
{
  OUTLINED_FUNCTION_95_0();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v0(v2);
  }
}

id sub_1B3853248()
{
  OUTLINED_FUNCTION_69_1();
  v3 = v2;
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *v0];

  return v4;
}

void sub_1B38532A0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      sub_1B3853D0C();
    }
  }
}

void sub_1B3853344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1B3710718(0, &qword_1EB84F870);

  v10 = sub_1B3853404(a1, a2, a3, a4);
  [v10 setWantsPriorityOverSystemBehavior_];
  [v5 addKeyCommand_];
}

id sub_1B3853404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B3C9C5A8();

  v7 = [swift_getObjCClassFromMetadata() keyCommandWithInput:v6 modifierFlags:a3 action:a4];

  return v7;
}

uint64_t sub_1B38534E4()
{
  OUTLINED_FUNCTION_69_1();
  v4 = v3;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for StoryViewController();
  objc_msgSendSuper2(&v10, *v2, v4 & 1);
  v5 = OBJC_IVAR___PUStoryViewController_viewEnvironmentActionDelegate;
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_14();
  result = swift_beginAccess();
  v7 = *&v1[v5];
  if (v7)
  {
    result = [v7 respondsToSelector_];
    if (result)
    {
      v8 = OUTLINED_FUNCTION_18_15();
      return [v8 v9];
    }
  }

  return result;
}

void sub_1B38535D8(char a1)
{
  v32.receiver = v1;
  v32.super_class = type metadata accessor for StoryViewController();
  objc_msgSendSuper2(&v32, sel_viewDidAppear_, a1 & 1);
  [sub_1B3851F18() logViewControllerDidAppear_];
  swift_unknownObjectRelease();
  v3 = sub_1B3851F90();
  [v3 viewDidAppear];

  if ((v1[OBJC_IVAR___PUStoryViewController_didAppearOnce] & 1) == 0)
  {
    v1[OBJC_IVAR___PUStoryViewController_didAppearOnce] = 1;
    v4 = sub_1B3851C34();
    v30 = sub_1B3853858;
    v31 = 0;
    OUTLINED_FUNCTION_1_0();
    v27 = 1107296256;
    OUTLINED_FUNCTION_13_1();
    v28 = v5;
    v29 = &block_descriptor_13_3;
    v6 = _Block_copy(&v26);
    v7 = OUTLINED_FUNCTION_2_16();
    [v7 v8];
    _Block_release(v6);
  }

  sub_1B3851F00(1);
  v9 = sub_1B3851C34();
  v30 = sub_1B3853868;
  v31 = 0;
  OUTLINED_FUNCTION_1_0();
  v27 = 1107296256;
  OUTLINED_FUNCTION_13_1();
  v28 = v10;
  v29 = &block_descriptor_16_0;
  v11 = _Block_copy(&v26);
  v12 = OUTLINED_FUNCTION_2_16();
  [v12 v13];
  _Block_release(v11);

  [*&v1[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel] currentCloseCancelled];
  v14 = [v1 navigationController];
  v15 = [v14 toolbar];

  v16 = [v15 scrollEdgeAppearance];
  v17 = *&v1[OBJC_IVAR___PUStoryViewController_originalToolbarScrollEdgeAppearance];
  *&v1[OBJC_IVAR___PUStoryViewController_originalToolbarScrollEdgeAppearance] = v16;

  v18 = v15;
  v19 = [v18 standardAppearance];
  v20 = OUTLINED_FUNCTION_2_16();
  [v20 v21];

  v22 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v23 = *&v1[v22];
  if (v23)
  {
    v24 = [v23 tungstenView];
    if (v24)
    {
      v25 = v24;
      sub_1B3C98CE8();
      OUTLINED_FUNCTION_26_7();
      sub_1B3C98CC8();
    }
  }
}

void sub_1B38538CC(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for StoryViewController();
  objc_msgSendSuper2(&v11, sel_viewDidDisappear_, a1 & 1);
  [sub_1B3851F18() logViewControllerDidDisappear_];
  swift_unknownObjectRelease();
  v3 = sub_1B3851F90();
  [v3 viewDidDisappear];

  sub_1B3851F00(0);
  v4 = sub_1B3851C34();
  [v4 currentCloseCompleted];

  v5 = [v1 navigationController];
  v6 = [v5 toolbar];

  if (v6)
  {
    [v6 setScrollEdgeAppearance_];
  }

  v7 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v8 = *&v1[v7];
  if (v8)
  {
    v9 = [v8 tungstenView];
  }

  else
  {
    v9 = 0;
  }

  sub_1B3C98CE8();
  v10 = OUTLINED_FUNCTION_18_20();
  MEMORY[0x1B8C66250](v10);
}

void sub_1B3853A74(uint64_t a1, double a2, double a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for StoryViewController();
  objc_msgSendSuper2(&v9, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = *&v3[OBJC_IVAR___PUStoryViewController_airPlayHelper];
  if (v7)
  {
    v8 = v7;
    sub_1B37396C8();
  }
}

void sub_1B3853B74()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for StoryViewController();
  objc_msgSendSuper2(&v9, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR___PUStoryViewController_fullscreenOverlayController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        OUTLINED_FUNCTION_6();

        v6 = OUTLINED_FUNCTION_17();
        [v7 v8];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1B3853C90()
{
  sub_1B3851F18();
  v0 = sub_1B3851C34();
  v1 = [v0 mainAssetCollection];

  v2 = OUTLINED_FUNCTION_2_16();
  [v2 v3];
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void *sub_1B3853D0C()
{
  v1 = OBJC_IVAR___PUStoryViewController_remainsActiveWhileApplicationIsHidden;
  OUTLINED_FUNCTION_7_0();
  if (*(v0 + v1))
  {
    v2 = 1;
    return sub_1B3853FA0(v2);
  }

  result = *(v0 + OBJC_IVAR___PUStoryViewController_applicationState);
  if (result)
  {
    v2 = [result visibilityState] != 3;
    return sub_1B3853FA0(v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B3853D78(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855BF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  v7 = sub_1B3C98118();
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR___PUStoryViewController_isAppVisible;
  if (*(v2 + OBJC_IVAR___PUStoryViewController_isAppVisible) != v3)
  {
    sub_1B3C98108();
    if (*(v2 + v12) == 1)
    {
      v13 = sub_1B3851CE4();
      if (v13)
      {
        v14 = v13;
        v15 = OBJC_IVAR___PUStoryViewController_lastAppVisibilityChangeDate;
        swift_beginAccess();
        sub_1B3869524(v2 + v15, v6, &unk_1EB855BF0);
        sub_1B3C9CBE8();

        sub_1B371B36C(v6, &unk_1EB855BF0);
      }
    }

    (*(v8 + 16))(v6, v11, v7);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    v16 = OBJC_IVAR___PUStoryViewController_lastAppVisibilityChangeDate;
    swift_beginAccess();
    sub_1B386947C(v6, v2 + v16);
    swift_endAccess();
    sub_1B3853FB8();
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_1B3853FA0(char a1)
{
  v2 = *(v1 + OBJC_IVAR___PUStoryViewController_isAppVisible);
  *(v1 + OBJC_IVAR___PUStoryViewController_isAppVisible) = a1;
  return sub_1B3853D78(v2);
}

void sub_1B3853FB8()
{
  v1 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PUStoryViewController_exportActivityCount);
    v4 = *(v0 + OBJC_IVAR___PUStoryViewController_initialConfiguration);
    v5 = v2;
    if (([v4 activeStateManagedExternally] & 1) == 0)
    {
      if (*(v0 + OBJC_IVAR___PUStoryViewController_didAppear) == 1)
      {
        if (v3 < 1)
        {
          v6 = *(v0 + OBJC_IVAR___PUStoryViewController_isAppVisible);
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      [v5 setIsActive_];
    }

    v7 = sub_1B3851C34();
    v8 = [v7 mainModel];

    OUTLINED_FUNCTION_20();
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v17 = sub_1B3869CB8;
    v18 = v9;
    OUTLINED_FUNCTION_4_31();
    v14 = 1107296256;
    OUTLINED_FUNCTION_13_1();
    v15 = v10;
    v16 = &block_descriptor_732;
    v11 = _Block_copy(aBlock);
    v12 = v5;

    [v8 performChanges_];
    _Block_release(v11);
  }
}

void sub_1B3854128(void *a1, id a2)
{
  v3 = [a2 undoManager];
  [a1 setUndoManager_];
}

id sub_1B38541CC()
{
  v0 = sub_1B3851C34();
  v1 = [v0 isModalInPresentation];

  return v1;
}

uint64_t sub_1B3854274()
{
  v1 = sub_1B3851C34();
  v2 = [v1 desiredPlayState];

  v3 = (v2 == 1) & ([*(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel) wantsChromeVisible] ^ 1);

  return sub_1B3854390(v3);
}

uint64_t sub_1B38542EC(uint64_t result)
{
  if (v1[OBJC_IVAR___PUStoryViewController__prefersHomeIndicatorHidden] != (result & 1))
  {
    [v1 setNeedsUpdateOfHomeIndicatorAutoHidden];
    v2 = OBJC_IVAR___PUStoryViewController_viewEnvironmentActionDelegate;
    result = swift_beginAccess();
    v3 = *&v1[v2];
    if (v3)
    {
      result = [v3 respondsToSelector_];
      if (result)
      {
        return [v3 setNeedsUpdateViewEnvironmentChromeAppearance_];
      }
    }
  }

  return result;
}

uint64_t sub_1B3854390(char a1)
{
  v2 = *(v1 + OBJC_IVAR___PUStoryViewController__prefersHomeIndicatorHidden);
  *(v1 + OBJC_IVAR___PUStoryViewController__prefersHomeIndicatorHidden) = a1;
  return sub_1B38542EC(v2);
}

void sub_1B3854454()
{
  v0 = sub_1B3851C34();
  v1 = [v0 viewLayoutSpec];

  [v1 browseGridLayoutMargins];
  OUTLINED_FUNCTION_6();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_17();
}

void sub_1B3854590()
{
  v1 = sub_1B3851C34();
  v12 = [v1 displayedError];

  if (!v12)
  {
    return;
  }

  v2 = [v12 domain];
  v3 = sub_1B3C9C5E8();
  v5 = v4;

  if (v3 == sub_1B3C9C5E8() && v5 == v6)
  {

    goto LABEL_10;
  }

  v8 = sub_1B3C9D6A8();

  if (v8)
  {
LABEL_10:
    v9 = *(v0 + OBJC_IVAR___PUStoryViewController_applicationState);
    if (!v9)
    {
      __break(1u);
      return;
    }

    if (![v9 isLaunchedForTesting] || (sub_1B3710718(0, &qword_1EB84F200), v10 = objc_msgSend(swift_getObjCClassFromMetadata(), sel_sharedInstance), v11 = objc_msgSend(v10, sel_showErrorAlertsDuringTestExecution), v10, v11))
    {
      sub_1B3854714();
    }
  }
}

void sub_1B3854714()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = sub_1B3851C34();
  v4 = [v3 displayedError];

  if (v4)
  {
    v40 = v4;
    if (v2)
    {
      v5 = v4;
      v6 = sub_1B3C97F18();

      v7 = sub_1B3C9C5A8();
      v4 = PXStoryErrorByInsertingTitlePrefix();

      v40 = v4;
    }

    v8 = PXPresentationEnvironmentForSender();
    if (v8)
    {
      v9 = v8;
      v10 = [*(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel) mainModel];
      v11 = [v10 didStartPresentingAlert];
      OUTLINED_FUNCTION_7_1();
      v12 = swift_allocObject();
      v12[2] = &v40;
      v12[3] = v10;
      v12[4] = v11;
      OUTLINED_FUNCTION_14_1();
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1B3869BA8;
      *(v13 + 24) = v12;
      v36 = sub_1B37E5DE0;
      v37 = v13;
      v32 = MEMORY[0x1E69E9820];
      v33 = 1107296256;
      OUTLINED_FUNCTION_9_21();
      v34 = v14;
      v35 = &block_descriptor_640;
      v15 = _Block_copy(&v32);
      v4 = v10;
      v16 = v11;

      [v9 presentAlertWithConfigurationHandler_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      _Block_release(v15);
      LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

      if ((v9 & 1) == 0)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    v17 = sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      OUTLINED_FUNCTION_3_39();
    }

    v18 = qword_1EB878C60;
    if (os_log_type_enabled(qword_1EB878C60, v17))
    {
      OUTLINED_FUNCTION_9_0();
      v19 = OUTLINED_FUNCTION_57_1();
      v39 = v19;
      *v4 = 136315138;
      OUTLINED_FUNCTION_14();
      swift_beginAccess();
      swift_getErrorValue();
      v20 = v38;
      OUTLINED_FUNCTION_15_0();
      v22 = v21;
      MEMORY[0x1EEE9AC00](v23);
      OUTLINED_FUNCTION_8();
      v26 = v25 - v24;
      (*(v22 + 16))(v25 - v24);
      v27 = sub_1B3C9D748();
      v29 = v28;
      (*(v22 + 8))(v26, v20);
      v30 = sub_1B3749364(v27, v29, &v39);

      *(v4 + 1) = v30;
      _os_log_impl(&dword_1B36F3000, v18, v17, "unable to create presentation environment for error: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      OUTLINED_FUNCTION_1_31();
      MEMORY[0x1B8C6EC70]();
      OUTLINED_FUNCTION_1_31();
      MEMORY[0x1B8C6EC70]();
      v31 = v40;
    }

    else
    {
      v31 = v4;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_27();
}

void sub_1B3854B20(void *a1, id *a2, void *a3, void *a4)
{
  v7 = *a2;
  v8 = *a2;
  v9 = sub_1B3C97F18();

  [a1 configureForError_];
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v14[4] = sub_1B3869BB4;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1B370C014;
  v14[3] = &block_descriptor_646;
  v11 = _Block_copy(v14);
  v12 = a3;
  v13 = a4;

  [a1 setCompletionHandler_];
  _Block_release(v11);
}

uint64_t sub_1B3854C44(char *a1, uint64_t (*a2)())
{

  if ([a1 isViewLoaded])
  {
    sub_1B37F3FE4();
  }

  else
  {
    v4 = &a1[OBJC_IVAR___PUStoryViewController_onViewDidLoad];
    v5 = *&a1[OBJC_IVAR___PUStoryViewController_onViewDidLoad];
    v6 = v4[1];
    v7 = sub_1B3869CC0;
    if (v5)
    {
      OUTLINED_FUNCTION_9_18();
      v8 = swift_allocObject();
      *(v8 + 2) = v5;
      *(v8 + 3) = v6;
      *(v8 + 4) = sub_1B3869CC0;
      *(v8 + 5) = a2;
      v7 = sub_1B3869FBC;
    }

    else
    {
      v8 = a2;
    }

    *v4 = v7;
    v4[1] = v8;

    v9 = OUTLINED_FUNCTION_26_7();
    sub_1B370A6FC(v9);
    v10 = OUTLINED_FUNCTION_26_7();
    sub_1B36F9DA0(v10);
  }
}

void sub_1B3854D24(char *a1, void (**a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if ([a1 isViewLoaded])
  {
    a2[2](a2);
  }

  else
  {
    v5 = &a1[OBJC_IVAR___PUStoryViewController_onViewDidLoad];
    v6 = *&a1[OBJC_IVAR___PUStoryViewController_onViewDidLoad];
    v7 = v5[1];
    v8 = sub_1B386A0A8;
    if (v6)
    {
      v9 = swift_allocObject();
      *(v9 + 2) = v6;
      *(v9 + 3) = v7;
      *(v9 + 4) = sub_1B386A0A8;
      *(v9 + 5) = v4;
      v8 = sub_1B3869FBC;
    }

    else
    {
      v9 = v4;
    }

    *v5 = v8;
    v5[1] = v9;

    sub_1B370A6FC(v6);
    sub_1B36F9DA0(v6);
  }

  _Block_release(a2);
}

uint64_t sub_1B3854E4C(uint64_t (*a1)(), uint64_t (*a2)())
{
  v3 = v2;
  if ([v3 isViewLoaded])
  {
    return a1();
  }

  v7 = &v3[OBJC_IVAR___PUStoryViewController_onViewDidLoad];
  v8 = *&v3[OBJC_IVAR___PUStoryViewController_onViewDidLoad];
  v9 = v7[1];
  if (v8)
  {
    OUTLINED_FUNCTION_9_18();
    v10 = swift_allocObject();
    *(v10 + 2) = v8;
    *(v10 + 3) = v9;
    *(v10 + 4) = a1;
    *(v10 + 5) = a2;
    a1 = sub_1B38676E8;
  }

  else
  {
    v10 = a2;
  }

  *v7 = a1;
  v7[1] = v10;

  v11 = OUTLINED_FUNCTION_98_0();
  sub_1B370A6FC(v11);
  v12 = OUTLINED_FUNCTION_98_0();

  return sub_1B36F9DA0(v12);
}

void sub_1B3854F3C(void *a1)
{
  v3 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  [a1 addSubprovider_];
  sub_1B3710718(0, &qword_1EB84F200);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  OUTLINED_FUNCTION_28_4(v4, sel_addSubprovider_);
}

void sub_1B3854FEC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xA) != 0)
  {
    a1 = sub_1B3854274();
  }

  if ((v1 & 0x10) != 0)
  {
    a1 = sub_1B3853C90();
    if ((v1 & 0x100000) == 0)
    {
LABEL_5:
      if ((v1 & 0x80000000000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      v2 = sub_1B3851C34();
      v3 = [v2 photosGridViewModel];

      sub_1B3851E80(v3);
      if ((v1 & 0x200000) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else if ((v1 & 0x100000) == 0)
  {
    goto LABEL_5;
  }

  sub_1B3854590();
  if ((v1 & 0x80000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v1 & 0x200000) == 0)
  {
    return;
  }

LABEL_11:
  sub_1B38544CC(a1);
  v4 = [objc_opt_self() defaultCenter];
  v5 = sub_1B3C9CCD8();
  [v4 postNotificationName:v5 object:0];
}

void sub_1B38550F0(char a1)
{
  if ((a1 & 4) != 0)
  {
    v2 = *(v1 + OBJC_IVAR___PUStoryViewController_boopableItemsProvider);
    *(v1 + OBJC_IVAR___PUStoryViewController_boopableItemsProvider) = 0;
  }
}

void sub_1B385510C()
{
  v8 = sub_1B3851C34();
  if ([v8 viewMode] == 4)
  {
  }

  else
  {
    v1 = [v8 mainModel];
    OUTLINED_FUNCTION_14_1();
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    *(v2 + 24) = v8;
    v13 = sub_1B38676EC;
    v14 = v2;
    OUTLINED_FUNCTION_12_8();
    v10 = 1107296256;
    OUTLINED_FUNCTION_5();
    v11 = v3;
    v12 = &block_descriptor_25_4;
    v4 = _Block_copy(aBlock);
    v5 = v1;
    v6 = v8;
    OUTLINED_FUNCTION_55_3();

    OUTLINED_FUNCTION_28_4(v7, sel_prerequestPersistencePermission_);
    _Block_release(v4);
  }
}