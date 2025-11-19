uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

{
  v42 = a4;
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v24 = __src;
    if (a4 != __src || &__src[8 * v11] <= a4)
    {
      memmove(a4, __src, 8 * v11);
    }

    v13 = &v42[8 * v11];
    if (v9 >= 8 && v24 > v5)
    {
      do
      {
        v41 = v24;
        v25 = v24 - 8;
        v26 = v4 - 8;
        v27 = v13;
        while (1)
        {
          v28 = v26;
          v29 = v26 + 8;
          v30 = *(v27 - 1);
          v27 -= 8;
          v31 = v25;
          v32 = *v25;
          v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v34 = *(v30 + v33);
          v35 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
          swift_beginAccess();
          LODWORD(v34) = *(v34 + v35);
          v36 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v37 = *(v32 + v36);
          v38 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
          swift_beginAccess();
          if (*(v37 + v38) < v34)
          {
            break;
          }

          if (v29 != v13)
          {
            *v28 = *v27;
          }

          v26 = v28 - 8;
          v13 = v27;
          v25 = v31;
          if (v27 <= v42)
          {
            v13 = v27;
            v24 = v41;
            goto LABEL_37;
          }
        }

        v4 = v28;
        if (v29 != v41)
        {
          *v28 = *v31;
        }

        if (v13 <= v42)
        {
          break;
        }

        v24 = v31;
      }

      while (v31 > v5);
      v24 = v31;
    }
  }

  else
  {
    v12 = __src;
    if (a4 != __dst || &__dst[8 * v8] <= a4)
    {
      memmove(a4, __dst, 8 * v8);
    }

    v13 = &v42[8 * v8];
    if (v6 >= 8 && v12 < v4)
    {
      v40 = v13;
      while (1)
      {
        v14 = *v12;
        v15 = *v42;
        v16 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v17 = *(v14 + v16);
        v18 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
        swift_beginAccess();
        LODWORD(v17) = *(v17 + v18);
        v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v20 = *(v15 + v19);
        v21 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
        swift_beginAccess();
        if (*(v20 + v21) >= v17)
        {
          break;
        }

        v22 = v12;
        v23 = v5 == v12;
        v12 += 8;
        v13 = v40;
        if (!v23)
        {
          goto LABEL_17;
        }

LABEL_18:
        v5 += 8;
        if (v42 >= v13 || v12 >= v4)
        {
          goto LABEL_20;
        }
      }

      v22 = v42;
      v42 += 8;
      v13 = v40;
      if (v5 == v22)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v22;
      goto LABEL_18;
    }

LABEL_20:
    v24 = v5;
  }

LABEL_37:
  if (v24 != v42 || v24 >= &v42[(v13 - v42 + (v13 - v42 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v24, v42, 8 * ((v13 - v42) / 8));
  }

  return 1;
}

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
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_24:
      v36 = v6;
      v24 = v6 - 8;
      v25 = v5 - 8;
      v26 = v14;
      do
      {
        v27 = v25;
        v28 = v25 + 8;
        v29 = *(v26 - 1);
        v26 -= 8;
        v30 = v24;
        v31 = *v24;
        v32 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
        swift_beginAccess();
        v33 = *(v29 + v32);
        v34 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
        swift_beginAccess();
        if (*(v31 + v34) < v33)
        {
          v5 = v27;
          if (v28 != v36)
          {
            *v27 = *v30;
          }

          if (v14 <= v4 || (v6 = v30, v30 <= v7))
          {
            v6 = v30;
            goto LABEL_35;
          }

          goto LABEL_24;
        }

        if (v28 != v14)
        {
          *v27 = *v26;
        }

        v25 = v27 - 8;
        v14 = v26;
        v24 = v30;
      }

      while (v26 > v4);
      v14 = v26;
      v6 = v36;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = v5;
        v16 = *v6;
        v17 = *v4;
        v18 = v6;
        v19 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
        swift_beginAccess();
        v20 = *(v16 + v19);
        v21 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
        swift_beginAccess();
        if (*(v17 + v21) >= v20)
        {
          break;
        }

        v22 = v18;
        v6 = v18 + 8;
        if (v7 != v18)
        {
          goto LABEL_15;
        }

LABEL_16:
        v7 += 8;
        if (v4 < v14)
        {
          v5 = v15;
          if (v6 < v15)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      v22 = v4;
      v23 = v7 == v4;
      v4 += 8;
      v6 = v18;
      if (v23)
      {
        goto LABEL_16;
      }

LABEL_15:
      *v7 = *v22;
      goto LABEL_16;
    }

LABEL_18:
    v6 = v7;
  }

LABEL_35:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

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
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6;
      v17 = *v4;
      swift_beginAccess();
      v18 = *(v16 + 16);
      swift_beginAccess();
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      swift_beginAccess();
      v21 = *(v17 + 16);
      swift_beginAccess();
      v22 = v19 == *(v21 + 16) && v20 == *(v21 + 24);
      if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v22 = v7 == v4;
      v4 += 8;
      if (!v22)
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

    v15 = v6;
    v22 = v7 == v6;
    v6 += 8;
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v33 = v6;
      v23 = v6 - 8;
      v5 -= 8;
      v24 = v14;
      while (1)
      {
        v25 = *(v24 - 1);
        v24 -= 8;
        v6 = v23;
        v26 = *v23;
        swift_beginAccess();
        v27 = *(v25 + 16);
        swift_beginAccess();
        v28 = *(v27 + 16);
        v29 = *(v27 + 24);
        swift_beginAccess();
        v30 = *(v26 + 16);
        swift_beginAccess();
        v31 = v28 == *(v30 + 16) && v29 == *(v30 + 24);
        if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v24;
        }

        v5 -= 8;
        v14 = v24;
        v23 = v6;
        if (v24 <= v4)
        {
          v14 = v24;
          v6 = v33;
          goto LABEL_43;
        }
      }

      if (v5 + 8 != v33)
      {
        *v5 = *v6;
      }
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, double a3, double a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

uint64_t specialized IntervalWorkout.isEquivalent(to:)(void *a1)
{
  v14[3] = swift_getObjectType();
  v14[4] = &protocol witness table for IntervalWorkout;
  v14[0] = a1;
  outlined init with copy of Equivalent(v14, &v12);
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v12;
  v3 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 != v12 || v3 != v13)
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      goto LABEL_6;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_6:
  v6 = IntervalWorkout.blocks.getter();
  v7 = IntervalWorkout.blocks.getter();
  v8 = specialized _arrayForceCast<A, B>(_:)(v7);

  v9 = specialized Array.isEquivalent(to:)(v8, v6);

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v9 & 1;
}

uint64_t specialized IntervalWorkout.isEquivalent(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v19[3] = a3;
  v19[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  outlined init with copy of Equivalent(v19, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v17;
  v8 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9 != v17 || v8 != v18)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

LABEL_6:
  v11 = IntervalWorkout.blocks.getter();
  v12 = IntervalWorkout.blocks.getter();
  v13 = specialized _arrayForceCast<A, B>(_:)(v12);

  v14 = specialized Array.isEquivalent(to:)(v13, v11);

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14 & 1;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (static UUID.== infix(_:_:)())
  {
    return specialized WorkoutStep.isEquivalent(to:)(v3, v2) & 1;
  }

  else
  {
    return 0;
  }
}

id specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v59 = a4;
  v60 = a5;
  v66 = a3;
  v55 = a1;
  v56 = a2;
  ObjectType = swift_getObjectType();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v68 = *(v57 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v57);
  v64 = &v53 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v67 = *(v65 - 8);
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v53 - v10;
  v11 = type metadata accessor for UUID();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v24 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__name;
  v72 = 0;
  v73 = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v20 + 32))(&v6[v24], v23, v19);
  v25 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__stepBlocks;
  v72 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
  Published.init(initialValue:)();
  (*(v15 + 32))(&v6[v25], v18, v14);
  swift_beginAccess();
  (*(v20 + 8))(&v6[v24], v19);
  v70 = v55;
  v71 = v56;
  Published.init(initialValue:)();
  swift_endAccess();
  v27 = v61;
  v26 = v62;
  (*(v61 + 16))(&v6[OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid], v66, v62);
  UUID.init()();
  v28 = type metadata accessor for WorkoutBlock();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v32 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v72 = 1;
  v33 = v63;
  Published.init(initialValue:)();
  v34 = *(v67 + 32);
  v67 += 32;
  v56 = v34;
  v34(v31 + v32, v33, v65);
  v35 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v72 = MEMORY[0x277D84F90];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  v36 = v64;
  Published.init(initialValue:)();
  v37 = *(v68 + 32);
  v68 += 32;
  v38 = v57;
  v37(v31 + v35, v36, v57);
  v39 = *(v27 + 32);
  v40 = v54;
  v39(v31 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v54, v26);
  swift_beginAccess();
  v70 = v31;
  Published.init(initialValue:)();
  swift_endAccess();
  UUID.init()();
  v41 = *(v28 + 48);
  v42 = *(v28 + 52);
  v43 = swift_allocObject();
  v44 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v72 = 1;
  v45 = v63;
  Published.init(initialValue:)();
  v56(v43 + v44, v45, v65);
  v46 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v72 = MEMORY[0x277D84F90];
  v47 = v64;
  Published.init(initialValue:)();
  v37(v43 + v46, v47, v38);
  v48 = v62;
  v39(v43 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v40, v62);
  swift_beginAccess();
  v70 = v43;
  Published.init(initialValue:)();
  swift_endAccess();
  v69.receiver = v6;
  v69.super_class = ObjectType;
  v49 = objc_msgSendSuper2(&v69, sel_init);
  v50 = v59;

  v51 = v49;
  IntervalWorkout.warmupStep.setter(v50);
  IntervalWorkout.cooldownStep.setter(v60);

  (*(v61 + 8))(v66, v48);
  return v51;
}

unint64_t lazy protocol witness table accessor for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [WorkoutBlock] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
    _s10Foundation4UUIDVACSHAAWlTm_0(a2, type metadata accessor for WorkoutBlock);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *a2;
  if (a1 >> 62)
  {
LABEL_22:
    v19 = v3 & 0xFFFFFFFFFFFFFF8;
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = v3 & 0xC000000000000001;
  v17 = v4;
  v18 = v3;
  v15 = v3 & 0xC000000000000001;
  v16 = v5;
  while (v5 != v6)
  {
    if (v7)
    {
      MEMORY[0x20F2E7A20](v6, v3);
    }

    else
    {
      if (v6 >= *(v19 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(v3 + 8 * v6 + 32);
    }

    if (static UUID.== infix(_:_:)())
    {
      v21[3] = v4;
      v21[4] = &protocol witness table for WorkoutBlock;
      v21[0] = a2;
      outlined init with copy of Equivalent(v21, v20);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
      if (swift_dynamicCast())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v10 = v20[0];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v10 == v20[0])
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v11 = v20[0];
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v12 = specialized _arrayForceCast<A, B>(_:)(v20[0]);

          v13 = specialized Array.isEquivalent(to:)(v12, v11);

          __swift_destroy_boxed_opaque_existential_1(v21);

          v4 = v17;
          v3 = v18;
          v7 = v15;
          v5 = v16;
          if (v13)
          {
            return v6;
          }

          goto LABEL_7;
        }

        v4 = v17;
        v3 = v18;
        v7 = v15;
        v5 = v16;
      }

      __swift_destroy_boxed_opaque_existential_1(v21);
    }

LABEL_7:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return 0;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F2E7A20](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    if (static UUID.== infix(_:_:)())
    {
      v9 = specialized WorkoutStep.isEquivalent(to:)(a2, v8);

      if (v9)
      {
        return v6;
      }
    }

    else
    {
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  return 0;
}

{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = __CocoaSet.count.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x20F2E7A20](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x20F2E7A20](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v7 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t specialized IntervalWorkout.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IntervalWorkout.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t *a2)
{
  return specialized MutableCollection._halfStablePartition(isSuffixElement:)(a1, a2);
}

{
  v3 = a2;
  v5 = *a2;
  v6 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v9 = result;
  if (v2)
  {
    return v9;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = a1;
  v28 = v5;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v26 = v3;
  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        return v9;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v9;
    }

    v14 = v6 & 0xC000000000000001;
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v10, v6);
      goto LABEL_16;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v15 = *(v6 + 8 * v10 + 32);

LABEL_16:
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_24;
    }

    v30[3] = v28;
    v30[4] = &protocol witness table for WorkoutBlock;
    v30[0] = v3;
    outlined init with copy of Equivalent(v30, v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
    if (!swift_dynamicCast())
    {
      goto LABEL_23;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16 = v29[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v16 != v29[0])
    {

      v3 = v26;
      v14 = v6 & 0xC000000000000001;
LABEL_23:
      __swift_destroy_boxed_opaque_existential_1(v30);
LABEL_24:

      if (v9 != v10)
      {
LABEL_25:
        if (v14)
        {
          v20 = MEMORY[0x20F2E7A20](v9, v6);
          v21 = MEMORY[0x20F2E7A20](v10, v6);
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 >= v22)
          {
            goto LABEL_53;
          }

          if (v10 >= v22)
          {
            goto LABEL_54;
          }

          v20 = *(v6 + 32 + 8 * v9);
          v21 = *(v6 + 32 + 8 * v10);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          v23 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v23) = 0;
        }

        v24 = v6 & 0xFFFFFFFFFFFFFF8;
        v25 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20);
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v21;

        if ((v6 & 0x8000000000000000) != 0 || v23)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          v24 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v10 & 0x8000000000000000) != 0)
          {
LABEL_45:
            __break(1u);
            return v9;
          }
        }

        else if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v10 >= *(v24 + 16))
        {
          goto LABEL_51;
        }

        v11 = v24 + 8 * v10;
        v12 = *(v11 + 32);
        *(v11 + 32) = v20;

        *v27 = v6;
      }

LABEL_8:
      v13 = __OFADD__(v9++, 1);
      if (v13)
      {
        goto LABEL_50;
      }

      goto LABEL_9;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v17 = v29[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v18 = specialized _arrayForceCast<A, B>(_:)(v29[0]);

    v19 = specialized Array.isEquivalent(to:)(v18, v17);

    __swift_destroy_boxed_opaque_existential_1(v30);

    v3 = v26;
    v14 = v6 & 0xC000000000000001;
    if ((v19 & 1) == 0)
    {
      if (v9 != v10)
      {
        goto LABEL_25;
      }

      goto LABEL_8;
    }

LABEL_9:
    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      goto LABEL_49;
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
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return __CocoaSet.count.getter();
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v4 = a1;
  v5 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == __CocoaSet.count.getter())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x20F2E7A20](v9, v5);
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }

    v13 = *(v5 + 8 * v9 + 32);

LABEL_16:
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {

      if (v8 != v9)
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    v14 = specialized WorkoutStep.isEquivalent(to:)(a2, v13);

    if ((v14 & 1) == 0)
    {
      if (v8 != v9)
      {
LABEL_21:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x20F2E7A20](v8, v5);
          v16 = MEMORY[0x20F2E7A20](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }

          v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v17)
          {
            goto LABEL_49;
          }

          if (v9 >= v17)
          {
            goto LABEL_50;
          }

          v15 = *(v5 + 32 + 8 * v8);
          v16 = *(v5 + 32 + 8 * v9);
        }

        v18 = v4;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
          v19 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v5 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v16;

        if ((v5 & 0x8000000000000000) != 0 || v19)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
          v20 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_41:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v9 >= *(v20 + 16))
        {
          goto LABEL_47;
        }

        v4 = v18;
        v10 = v20 + 8 * v9;
        v11 = *(v10 + 32);
        *(v10 + 32) = v15;

        *v18 = v5;
      }

LABEL_8:
      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_46;
      }
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return __CocoaSet.count.getter();
}

uint64_t lazy protocol witness table accessor for type [WorkoutStep] and conformance [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized static IntervalWorkout.regroupSteps(_:from:repeatCount:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v28 = a2;
  v4 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];

  specialized Sequence.forEach(_:)(a1, &v28, &v27);
  specialized MutableCollection<>.sort(by:)(&v27);
  v26[0] = v4;
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_11WorkoutCore0D5BlockCs5NeverOTg504_s11d58Core08IntervalA0C12regroupSteps_4from11repeatCountSayAA0A5f5CGSayQ26A4StepCG_AISitFZAHSiXEfU1_SayAIGTf1cn_n(v27, &v28);
  v6 = result;
  if (result >> 62)
  {
LABEL_40:
    result = __CocoaSet.count.getter();
    v7 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_41:

    v9 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_33;
    }

    goto LABEL_42;
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_41;
  }

LABEL_3:
  if (v7 < 1)
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x20F2E7A20](v8, v6);
    }

    else
    {
      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = v28;
    v12 = specialized Collection<>.firstIndex(of:)(v10, v28);
    if (v13)
    {
      goto LABEL_25;
    }

    if (!(v9 >> 62))
    {
      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_25;
      }

LABEL_11:
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v15)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v17 = v12;
        v18 = MEMORY[0x20F2E7A20](v16, v9);
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v16 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v17 = v12;
        v18 = *(v9 + 8 * v16 + 32);
      }

      v19 = specialized Collection<>.firstIndex(of:)(v18, v11);
      if ((v20 & 1) == 0)
      {
        if (__OFADD__(v19, 1))
        {
          goto LABEL_39;
        }

        if (v19 + 1 != v17)
        {
          if (!(v9 >> 62))
          {
            if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

          if (__CocoaSet.count.getter())
          {
LABEL_23:
            specialized closure #2 in static IntervalWorkout.regroupSteps(_:from:repeatCount:)(v26, &v28, a3);
          }
        }
      }

LABEL_24:

      goto LABEL_25;
    }

    v23 = v12;
    v14 = __CocoaSet.count.getter();
    v12 = v23;
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_25:
    swift_beginAccess();

    MEMORY[0x20F2E6F30](v21);
    if (*((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v22 = *((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v26[0];
    swift_endAccess();
    ++v8;
  }

  while (v7 != v8);

  if (!(v9 >> 62))
  {
LABEL_33:
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

LABEL_42:
  if (__CocoaSet.count.getter())
  {
LABEL_34:
    specialized closure #2 in static IntervalWorkout.regroupSteps(_:from:repeatCount:)(v26, &v28, a3);
  }

LABEL_35:
  swift_beginAccess();
  v24 = v28;

  return v24;
}

id specialized static IntervalWorkout.canonical(activityType:activityMoveMode:)(void *a1, uint64_t a2)
{
  v65 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v68);
  v7 = &v52 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v8 = *(v66 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v66);
  v11 = &v52 - v10;
  v69 = type metadata accessor for UUID();
  v12 = *(v69 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v69);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v16 = objc_allocWithZone(type metadata accessor for IntervalWorkout());
  v67 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(0x6E6E755220746F48, 0xEC00000021676E69, v15, 0, 0);
  v60 = specialized static WorkoutBlock.canonical(activityType:activityMoveMode:)(a1, a2);
  v17 = [objc_opt_self() minuteUnit];
  v18 = [objc_opt_self() quantityWithUnit:v17 doubleValue:5.0];

  v19 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v18];
  v20 = v19;
  UUID.init()();
  v21 = type metadata accessor for WorkoutStep();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v70 = 0;
  v71 = 0;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  v26 = *(v8 + 32);
  v61 = v11;
  v62 = v8 + 32;
  v58 = v26;
  v26(v24 + v25, v11, v66);
  *(v24 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v24 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v27 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v70) = 0;
  Published.init(initialValue:)();
  v28 = *(v4 + 32);
  v63 = v7;
  v64 = v4 + 32;
  v57 = v28;
  v28(v24 + v27, v7, v68);
  *(v24 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v24 + 16) = 2;
  swift_beginAccess();
  v72 = v20;
  v29 = type metadata accessor for NLSessionActivityGoal();
  v30 = v20;
  v56 = v29;
  Published.init(initialValue:)();
  swift_endAccess();
  v31 = v65;
  *(v24 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v65;
  v32 = v69;
  v55 = v12[2];
  v55(v24 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v15, v69);
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = 0;
  v71 = 0;
  v53 = v31;

  static Published.subscript.setter();

  v33 = v12[1];
  v65 = v12 + 1;
  v54 = v33;
  v33(v15, v32);
  IntervalWorkout.warmupStep.setter(v24);
  swift_getKeyPath();
  swift_getKeyPath();

  v34 = static Published.subscript.modify();
  v36 = v35;
  MEMORY[0x20F2E6F30]();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v34(&v70, 0);

  v37 = v30;
  UUID.init()();
  v38 = *(v21 + 48);
  v39 = *(v21 + 52);
  v40 = swift_allocObject();
  v41 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v70 = 0;
  v71 = 0;
  v42 = v61;
  Published.init(initialValue:)();
  v58(v40 + v41, v42, v66);
  *(v40 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v40 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v43 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v70) = 0;
  v44 = v63;
  Published.init(initialValue:)();
  v57(v40 + v43, v44, v68);
  *(v40 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v40 + 16) = 3;
  swift_beginAccess();
  v72 = v37;
  v45 = v37;
  Published.init(initialValue:)();
  swift_endAccess();
  v46 = v53;
  *(v40 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v53;
  v47 = v69;
  v55(v40 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v15, v69);
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = 0;
  v71 = 0;
  v48 = v46;

  static Published.subscript.setter();

  v54(v15, v47);
  v49 = v40;
  v50 = v67;
  IntervalWorkout.cooldownStep.setter(v49);

  return v50;
}

uint64_t keypath_set_45Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t type metadata accessor for IntervalWorkout()
{
  result = type metadata singleton initialization cache for IntervalWorkout;
  if (!type metadata singleton initialization cache for IntervalWorkout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalWorkout()
{
  type metadata accessor for Published<String>();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      type metadata accessor for Published<WorkoutBlock>();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for Published<[WorkoutBlock]>();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for Published<String>()
{
  if (!lazy cache variable for type metadata for Published<String>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<String>);
    }
  }
}

void type metadata accessor for Published<WorkoutBlock>()
{
  if (!lazy cache variable for type metadata for Published<WorkoutBlock>)
  {
    type metadata accessor for WorkoutBlock();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<WorkoutBlock>);
    }
  }
}

void type metadata accessor for Published<[WorkoutBlock]>()
{
  if (!lazy cache variable for type metadata for Published<[WorkoutBlock]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[WorkoutBlock]>);
    }
  }
}

uint64_t getEnumTagSinglePayload for IntervalWorkout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalWorkout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    v5 = a3;
    v7 = a2;
    v9 = a1;
    v18 = a5;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v7)
  {
    goto LABEL_16;
  }

LABEL_4:
  v12 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v5 >> 62))
  {
    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = __OFSUB__(v14, v12);
    v16 = v14 - v12;
    if (!v15)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

LABEL_18:
  result = __CocoaSet.count.getter();
  v14 = result;
  v15 = __OFSUB__(result, v12);
  v16 = result - v12;
  if (v15)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v11)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v17, v16);
  result = v17 + v16;
  if (v15)
  {
    goto LABEL_21;
  }

  v8(result, 1);

  return v18(v9, v7, v14, v5);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    v5 = a3;
    v7 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    v17 = a5;
    if (!v11)
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v13 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 1 - v13;
  if (__OFSUB__(1, v13))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v11)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (v16)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v17(v9, v7, 1, v5);
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  type metadata accessor for NSNumber();
  return static NSObject.== infix(_:_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t static TargetAlertsBridge.intervalTargetAlertsEnabled(for:)(void *a1)
{
  v1 = specialized static TargetAlertsStore.read(for:)(a1);
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

id TargetAlertsBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TargetAlertsBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TargetAlertsBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TargetAlertsBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TargetAlertsBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id one-time initialization function for userDefaults()
{
  result = [objc_opt_self() standardUserDefaults];
  static TargetAlertsStore.userDefaults = result;
  return result;
}

{
  result = [objc_opt_self() standardUserDefaults];
  static TargetZoneStorage.userDefaults = result;
  return result;
}

{
  result = [objc_opt_self() standardUserDefaults];
  static RaceAlertsStore.userDefaults = result;
  return result;
}

{
  result = [objc_opt_self() standardUserDefaults];
  static MetricPlatterStore.userDefaults = result;
  return result;
}

{
  result = [objc_opt_self() standardUserDefaults];
  static TrackAlertsStore.userDefaults = result;
  return result;
}

void static TargetAlertsStore.save(targetAlerts:activityType:)(uint64_t a1, void *a2)
{
  v58[4] = *MEMORY[0x277D85DE8];
  *&v57[0] = a1;
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for TargetAlerts();
  lazy protocol witness table accessor for type TargetAlerts and conformance TargetAlerts(&lazy protocol witness table cache variable for type TargetAlerts and conformance TargetAlerts, type metadata accessor for TargetAlerts);
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;

  v23 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v54 = 0;
  v25 = [v23 propertyListWithData:isa options:0 format:0 error:&v54];

  v26 = v54;
  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data._Representation(v20, v22);
    swift_unknownObjectRelease();
    if (one-time initialization token for userDefaults != -1)
    {
      swift_once();
    }

    v27 = static TargetAlertsStore.userDefaults;
    v28 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B454980);
    v29 = [v27 dictionaryForKey_];

    if (v29)
    {
      v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v33 = [a2 uniqueIdentifier];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    outlined init with copy of Any(v58, v57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v30;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, v34, v36, isUniquelyReferenced_nonNull_native);

    v38 = Dictionary._bridgeToObjectiveC()().super.isa;

    v39 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B454980);
    [v27 setObject:v38 forKey:v39];

    v40 = objc_opt_self();
    v41 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B454980);
    [v40 fu:v41 backupStandardUserDefaultsKey:?];

    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static WOLog.alerts);
    v43 = a2;

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v56 = v48;
      *&v57[0] = 0;
      *v46 = 138412546;
      *(v46 + 4) = v43;
      *v47 = v43;
      *(v46 + 12) = 2080;
      *(&v57[0] + 1) = 0xE000000000000000;
      v49 = v43;
      _StringGuts.grow(_:)(47);

      v54 = 0xD00000000000002CLL;
      v55 = 0x800000020B457210;
      swift_beginAccess();
      if (*(a1 + 16))
      {
        v50 = 1702195828;
      }

      else
      {
        v50 = 0x65736C6166;
      }

      if (*(a1 + 16))
      {
        v51 = 0xE400000000000000;
      }

      else
      {
        v51 = 0xE500000000000000;
      }

      MEMORY[0x20F2E6D80](v50, v51);

      MEMORY[0x20F2E6D80](62, 0xE100000000000000);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v56);

      *(v46 + 14) = v52;
      _os_log_impl(&dword_20AEA4000, v44, v45, "Saved TargetAlerts to user defaults for activityType=%@ targetAlerts=%s", v46, 0x16u);
      outlined destroy of NSObject?(v47);
      MEMORY[0x20F2E9420](v47, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x20F2E9420](v48, -1, -1);
      MEMORY[0x20F2E9420](v46, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v58);
  }

  else
  {
    v31 = v26;
    v32 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v20, v22);
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.alerts);
    v8 = a2;
    v9 = v32;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v58[0] = v14;
      *v12 = 138412546;
      *(v12 + 4) = v8;
      *v13 = v8;
      *(v12 + 12) = 2080;
      *&v57[0] = v32;
      v15 = v8;
      v16 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v58);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Failed to encode and save TargetAlerts for activityType=%@. error=%s", v12, 0x16u);
      outlined destroy of NSObject?(v13);
      MEMORY[0x20F2E9420](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x20F2E9420](v14, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    else
    {
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = *v5;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
}

{
  v5 = v4;
  v31 = a1;
  v9 = type metadata accessor for Station.Mood();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v22 = *v5;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v16, v13, v25, a2, v26);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
    v18 = *v4;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 8 * result) = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a1, v20, a3);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return outlined init with take of Any(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;

    return MEMORY[0x2821F96F8]();
  }

  a7(v17, a2, a3, a1, v28);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v22 = *v6;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v24);
  }
}

{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v22 = *v6;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return outlined consume of Data._Representation(v26, v27);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v24);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1 & 1, v22);
  }

  return result;
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v17 = *v4;
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for NSNumber();
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v19);

  return a2;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), void (*a6)(unint64_t, char *, uint64_t, uint64_t))
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v7 = v6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v32();
      goto LABEL_9;
    }

    v33();
    v24 = *v7;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_9:
  v27 = a1;
  v28 = *v7;
  if (v22)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v18);
    *(v29 + 8 * v18) = v27;
  }

  else
  {
    (*(v12 + 16))(v15, a2, v11);
    v34(v18, v15, v27, v28);
  }
}

uint64_t specialized static TargetAlertsStore.read(for:)(id a1)
{
  v73 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  v2 = static TargetAlertsStore.userDefaults;
  v3 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B454980);
  v4 = [v2 dictionaryForKey_];

  if (!v4)
  {
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.alerts);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_18;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_20AEA4000, v24, v25, "TargetAlerts for all activity types not present in user defaults.", v26, 2u);
    goto LABEL_17;
  }

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [a1 uniqueIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!*(v5 + 16))
  {

    goto LABEL_13;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_13:

    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static WOLog.alerts);
    a1 = a1;
    v24 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v24, v28))
    {
      goto LABEL_18;
    }

    v26 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = a1;
    *v29 = a1;
    v30 = a1;
    _os_log_impl(&dword_20AEA4000, v24, v28, "TargetAlerts for activity type not present in user defaults. activityType=%@", v26, 0xCu);
    outlined destroy of NSObject?(v29);
    MEMORY[0x20F2E9420](v29, -1, -1);
LABEL_17:
    MEMORY[0x20F2E9420](v26, -1, -1);
LABEL_18:

    v33 = 1;
    if ([a1 isIndoor])
    {
      if ([a1 effectiveTypeIdentifier] == 37)
      {
        v31 = type metadata accessor for WorkoutKitFeatures();
        v71 = v31;
        v72 = lazy protocol witness table accessor for type TargetAlerts and conformance TargetAlerts(&lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures, MEMORY[0x277CE3FD8]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v70);
        (*(*(v31 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FC8], v31);
        LOBYTE(v31) = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_0Tm(&v70);
        if (v31)
        {
          v33 = 0;
        }
      }
    }

    type metadata accessor for TargetAlerts();
    result = swift_allocObject();
    *(result + 16) = v33;
    goto LABEL_24;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v10, &v70);

  outlined init with take of Any(&v70, v68);
  v13 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0(v68, v69);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  *&v70 = 0;
  v15 = [v13 dataWithPropertyList:v14 format:100 options:0 error:&v70];
  swift_unknownObjectRelease();
  v16 = v70;
  if (!v15)
  {
    v36 = v16;
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static WOLog.alerts);
    v39 = a1;
    v40 = v37;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v70 = v45;
      *v43 = 138412546;
      *(v43 + 4) = v39;
      *v44 = v39;
      *(v43 + 12) = 2080;
      v46 = v39;
      v47 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v48 = String.init<A>(describing:)();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v70);

      *(v43 + 14) = v50;
      _os_log_impl(&dword_20AEA4000, v41, v42, "Failed to decode TargetAlerts for activityType=%@. error=%s", v43, 0x16u);
      outlined destroy of NSObject?(v44);
      MEMORY[0x20F2E9420](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x20F2E9420](v45, -1, -1);
      MEMORY[0x20F2E9420](v43, -1, -1);
    }

    if ([v39 isIndoor] && objc_msgSend(v39, sel_effectiveTypeIdentifier) == 37)
    {
      v51 = type metadata accessor for WorkoutKitFeatures();
      v71 = v51;
      v72 = lazy protocol witness table accessor for type TargetAlerts and conformance TargetAlerts(&lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures, MEMORY[0x277CE3FD8]);
      v52 = __swift_allocate_boxed_opaque_existential_1(&v70);
      (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277CE3FC8], v51);
      LOBYTE(v51) = isFeatureEnabled(_:)();

      __swift_destroy_boxed_opaque_existential_0Tm(&v70);
      if (v51)
      {
        v53 = 0;
LABEL_35:
        type metadata accessor for TargetAlerts();
        v54 = swift_allocObject();
        *(v54 + 16) = v53;
        __swift_destroy_boxed_opaque_existential_0Tm(v68);
        result = v54;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v53 = 1;
    goto LABEL_35;
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = type metadata accessor for PropertyListDecoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for TargetAlerts();
  lazy protocol witness table accessor for type TargetAlerts and conformance TargetAlerts(&lazy protocol witness table cache variable for type TargetAlerts and conformance TargetAlerts, type metadata accessor for TargetAlerts);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v66 = v70;
  if (one-time initialization token for alerts != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static WOLog.alerts);

  v56 = a1;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67 = v65;
    *v59 = 136315394;
    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(47);

    swift_beginAccess();
    if (*(v66 + 16))
    {
      v61 = 1702195828;
    }

    else
    {
      v61 = 0x65736C6166;
    }

    if (*(v66 + 16))
    {
      v62 = 0xE400000000000000;
    }

    else
    {
      v62 = 0xE500000000000000;
    }

    MEMORY[0x20F2E6D80](v61, v62);

    MEMORY[0x20F2E6D80](62, 0xE100000000000000);

    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000020B457210, &v67);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2112;
    *(v59 + 14) = v56;
    *v60 = v56;
    v64 = v56;
    _os_log_impl(&dword_20AEA4000, v57, v58, "Successfully read user targetAlerts=%s for activityType=%@", v59, 0x16u);
    outlined destroy of NSObject?(v60);
    MEMORY[0x20F2E9420](v60, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    MEMORY[0x20F2E9420](v65, -1, -1);
    MEMORY[0x20F2E9420](v59, -1, -1);
  }

  outlined consume of Data._Representation(v17, v19);

  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  result = v66;
LABEL_24:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getEnumTagSinglePayload for TargetAlertsStore(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TargetAlertsStore(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TargetAlerts and conformance TargetAlerts(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MetricPlatter.makeStandard(metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 256;
  *(a2 + 8) = a1;
}

uint64_t static MetricPlatter.makeStandardSecond(metrics:include:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = a1;
  *(a3 + 1) = a2;
}

id static MetricPlatter.makeSegment(activityType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 effectiveTypeIdentifier];
  *a2 = 6;
  *(a2 + 8) = 0;
  *(a2 + 1) = result == 37;
  return result;
}

char *static MetricPlatter.makeSplit(activityType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 effectiveTypeIdentifier];
  if ((result - 13) > 0x3A || ((1 << (result - 13)) & 0x400800001400001) == 0)
  {
    v6 = 0;
  }

  else
  {
    result = [a1 isIndoor];
    v6 = result ^ 1;
  }

  *a2 = 9;
  *(a2 + 8) = 0;
  *(a2 + 1) = v6;
  return result;
}

char *static MetricPlatter.makeHeartRateZones(activityType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 effectiveTypeIdentifier];
  *a2 = 10;
  *(a2 + 8) = 0;
  *(a2 + 1) = ((result - 13) < 0x3B) & (0x404C00081400009uLL >> (result - 13));
  return result;
}

id static MetricPlatter.makePower(activityType:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ([a1 effectiveTypeIdentifier] == 13)
  {
    result = [objc_opt_self() hasHadPairedCyclingPowerSensors];
  }

  else
  {
    result = 0;
  }

  *a3 = a2;
  *(a3 + 8) = 0;
  *(a3 + 1) = result;
  return result;
}

char *static MetricPlatter.makeElevation(activityType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 effectiveTypeIdentifier];
  v5 = 0;
  v6 = result - 13;
  if ((result - 13) <= 0x3A)
  {
    if (((1 << v6) & 0x400000001000001) != 0)
    {
      result = [a1 isIndoor];
      v5 = result ^ 1;
    }

    else
    {
      v5 = ((1 << v6) & 0x800000000800) != 0;
    }
  }

  *a2 = 14;
  *(a2 + 8) = 0;
  *(a2 + 1) = v5;
  return result;
}

id WOPersistence.init(jsonObject:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithJsonObject_];

  outlined consume of Data._Representation(a1, a2);
  return v6;
}

{
  v219[4] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Date();
  v210 = *(v4 - 8);
  v211 = v4;
  v5 = *(v210 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v194 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v212 = v194 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v194 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v194 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v194 - v18;
  v20 = type metadata accessor for UUID();
  v214 = *(v20 - 8);
  v215 = v20;
  v21 = *(v214 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v194 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v194 - v26;
  MEMORY[0x28223BE20](v25);
  v213 = v194 - v28;
  v29 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v219[0] = 0;
  v31 = [v29 JSONObjectWithData:isa options:0 error:v219];

  if (!v31)
  {
    v61 = v219[0];
    v62 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static WOLog.app);
    v64 = v62;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v219[0] = v68;
      *v67 = 136315138;
      swift_getErrorValue();
      v69 = Error.localizedDescription.getter();
      v71 = a1;
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v219);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_20AEA4000, v65, v66, "Cannot deserialize from json object, error: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x20F2E9420](v68, -1, -1);
      MEMORY[0x20F2E9420](v67, -1, -1);

      outlined consume of Data._Representation(v71, a2);
    }

    else
    {
      outlined consume of Data._Representation(a1, a2);
    }

    goto LABEL_38;
  }

  v32 = v219[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if (swift_dynamicCast())
  {
    v207 = v27;
    v209 = a2;
    v33 = v217;
    v34 = *MEMORY[0x277D7E8C0];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v33[2])
    {
      v208 = a1;
      v37 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v36);
      v39 = v38;

      if (v39)
      {
        outlined init with copy of Any(v33[7] + 32 * v37, v219);
        v40 = type metadata accessor for NSNumber();
        v41 = swift_dynamicCast();
        v42 = v209;
        if (v41)
        {
          v43 = v217;
          v205 = [v217 integerValue];

          v206 = *MEMORY[0x277D7E8B0];
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (v33[2])
          {
            v204 = v40;
            v46 = v33;
            v47 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v45);
            v49 = v48;

            if (v49)
            {
              outlined init with copy of Any(v46[7] + 32 * v47, v219);
              if (swift_dynamicCast())
              {
                v206 = v217;
                v50 = [v217 unsignedIntegerValue];
                v51 = *MEMORY[0x277D7E8B8];
                v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                if (v46[2])
                {
                  v203 = v50;
                  v54 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v53);
                  v56 = v55;

                  if (v56)
                  {
                    outlined init with copy of Any(v46[7] + 32 * v54, v219);
                    if (swift_dynamicCast())
                    {
                      v202 = v46;
                      UUID.init(uuidString:)();

                      v58 = v214;
                      v57 = v215;
                      v59 = v214 + 48;
                      v60 = *(v214 + 48);
                      if (v60(v19, 1, v215) == 1)
                      {

                        outlined destroy of UUID?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_43:
                        v93 = v209;
                        if (one-time initialization token for app != -1)
                        {
                          swift_once();
                        }

                        v94 = type metadata accessor for Logger();
                        __swift_project_value_buffer(v94, static WOLog.app);
                        v74 = Logger.logObject.getter();
                        v95 = static os_log_type_t.error.getter();
                        if (os_log_type_enabled(v74, v95))
                        {
                          v96 = swift_slowAlloc();
                          v97 = swift_slowAlloc();
                          v219[0] = v97;
                          *v96 = 136315138;
                          v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v219);

                          *(v96 + 4) = v100;
                          _os_log_impl(&dword_20AEA4000, v74, v95, "Cannot deserialize from json object, missing key or cannot cast: %s", v96, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v97);
                          MEMORY[0x20F2E9420](v97, -1, -1);
                          MEMORY[0x20F2E9420](v96, -1, -1);
                        }

                        v82 = v208;
                        v90 = v93;
                        goto LABEL_37;
                      }

                      v101 = *(v58 + 32);
                      v201 = v58 + 32;
                      v200 = v101;
                      v101(v213, v19, v57);
                      v102 = *MEMORY[0x277D7E868];
                      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v105 = v202;
                      if (!v202[2])
                      {

LABEL_54:

                        v111 = v209;
                        if (one-time initialization token for app != -1)
                        {
                          swift_once();
                        }

                        v112 = type metadata accessor for Logger();
                        __swift_project_value_buffer(v112, static WOLog.app);
                        v113 = Logger.logObject.getter();
                        v114 = static os_log_type_t.error.getter();
                        if (os_log_type_enabled(v113, v114))
                        {
                          v115 = swift_slowAlloc();
                          v116 = swift_slowAlloc();
                          v219[0] = v116;
                          *v115 = 136315138;
                          v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, v219);

                          *(v115 + 4) = v119;
                          _os_log_impl(&dword_20AEA4000, v113, v114, "Cannot deserialize from json object, missing key or cannot cast: %s", v115, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v116);
                          MEMORY[0x20F2E9420](v116, -1, -1);
                          MEMORY[0x20F2E9420](v115, -1, -1);
                        }

                        outlined consume of Data._Representation(v208, v111);
                        (*(v214 + 8))(v213, v215);
                        goto LABEL_38;
                      }

                      v198 = v60;
                      v199 = v59;
                      v106 = specialized __RawDictionaryStorage.find<A>(_:)(v103, v104);
                      v108 = v107;

                      if ((v108 & 1) == 0)
                      {
                        goto LABEL_54;
                      }

                      outlined init with copy of Any(v105[7] + 32 * v106, v219);
                      if ((swift_dynamicCast() & 1) == 0)
                      {
                        goto LABEL_54;
                      }

                      v197 = Data.init(base64Encoded:options:)();
                      v110 = v109;

                      if (v110 >> 60 == 15)
                      {
                        goto LABEL_54;
                      }

                      v120 = *MEMORY[0x277D7E888];
                      v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      if (v202[2])
                      {
                        v123 = specialized __RawDictionaryStorage.find<A>(_:)(v121, v122);
                        v125 = v124;

                        if (v125)
                        {
                          outlined init with copy of Any(v202[7] + 32 * v123, v219);
                          if (swift_dynamicCast())
                          {
                            v195 = Data.init(base64Encoded:options:)();
                            v196 = v126;

                            goto LABEL_65;
                          }
                        }
                      }

                      else
                      {
                      }

                      v195 = 0;
                      v196 = 0xF000000000000000;
LABEL_65:
                      v127 = *MEMORY[0x277D7E880];
                      v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      if (v202[2])
                      {
                        v130 = specialized __RawDictionaryStorage.find<A>(_:)(v128, v129);
                        v132 = v131;

                        if (v132)
                        {
                          outlined init with copy of Any(v202[7] + 32 * v130, v219);
                          if (swift_dynamicCast())
                          {
                            v133 = v217;
                            v134 = [v217 unsignedIntegerValue];

                            goto LABEL_71;
                          }
                        }
                      }

                      else
                      {
                      }

                      v134 = 0;
LABEL_71:
                      v135 = [objc_opt_self() zeroObjectModificationDate];
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();

                      v136 = *MEMORY[0x277D7E878];
                      v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      if (v202[2])
                      {
                        v139 = specialized __RawDictionaryStorage.find<A>(_:)(v137, v138);
                        v141 = v140;

                        if (v141)
                        {
                          outlined init with copy of Any(v202[7] + 32 * v139, v219);
                          if (swift_dynamicCast())
                          {
                            v142 = v217;
                            [v217 doubleValue];

                            Date.init(timeIntervalSinceReferenceDate:)();
                            v144 = v210;
                            v143 = v211;
                            v145 = v212;
                            (*(v210 + 8))(v212, v211);
                            (*(v144 + 32))(v145, v8, v143);
                          }
                        }
                      }

                      else
                      {
                      }

                      v146 = *MEMORY[0x277D7E8A0];
                      v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      if (!v202[2])
                      {
                        goto LABEL_90;
                      }

                      v149 = specialized __RawDictionaryStorage.find<A>(_:)(v147, v148);
                      v151 = v150;

                      if ((v151 & 1) == 0)
                      {
                        goto LABEL_91;
                      }

                      outlined init with copy of Any(v202[7] + 32 * v149, v219);
                      if ((swift_dynamicCast() & 1) == 0)
                      {
                        goto LABEL_91;
                      }

                      v152 = *MEMORY[0x277D7E898];
                      v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      if (v202[2])
                      {
                        v155 = specialized __RawDictionaryStorage.find<A>(_:)(v153, v154);
                        v157 = v156;

                        if ((v157 & 1) == 0)
                        {
                          goto LABEL_90;
                        }

                        outlined init with copy of Any(v202[7] + 32 * v155, v219);
                        if ((swift_dynamicCast() & 1) == 0)
                        {
                          goto LABEL_90;
                        }

                        v194[1] = v217;
                        v194[2] = v218;
                        v158 = *MEMORY[0x277D7E8A8];
                        v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        if (v202[2])
                        {
                          v161 = specialized __RawDictionaryStorage.find<A>(_:)(v159, v160);
                          v163 = v162;

                          if (v163)
                          {
                            outlined init with copy of Any(v202[7] + 32 * v161, v219);
                            if (swift_dynamicCast())
                            {
                              v164 = v218;
                              v194[0] = v217;
                              UUID.init(uuidString:)();

                              if (v198(v17, 1, v215) == 1)
                              {

                                v165 = v17;
                              }

                              else
                              {
                                v186 = v215;
                                v200(v207, v17, v215);
                                UUID.init(uuidString:)();

                                if (v198(v14, 1, v186) != 1)
                                {
                                  v187 = v215;
                                  v200(v24, v14, v215);
                                  v188 = objc_allocWithZone(MEMORY[0x277D7E7F0]);
                                  v189 = v207;
                                  v190 = UUID._bridgeToObjectiveC()().super.isa;
                                  v191 = UUID._bridgeToObjectiveC()().super.isa;
                                  v192 = MEMORY[0x20F2E6C00](v194[0], v164);

                                  v166 = [v188 initWithHardwareIdentifier:v190 databaseIdentifier:v191 instanceDiscriminator:v192];

                                  v193 = *(v214 + 8);
                                  v193(v24, v187);
                                  v193(v189, v187);
LABEL_92:
                                  v167.super.isa = UUID._bridgeToObjectiveC()().super.isa;
                                  v168.super.isa = Data._bridgeToObjectiveC()().super.isa;
                                  if (v196 >> 60 == 15)
                                  {
                                    v169 = 0;
                                  }

                                  else
                                  {
                                    v169 = Data._bridgeToObjectiveC()().super.isa;
                                  }

                                  v170 = Date._bridgeToObjectiveC()().super.isa;
                                  v171 = [v216 initWithVersion:v205 type:v203 uuid:v167.super.isa persistedData:v168.super.isa persistedProtoData:v169 objectState:v134 objectModificationDate:v170 syncIdentity:v166];

                                  v172 = *MEMORY[0x277D7E870];
                                  v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                  if (v202[2])
                                  {
                                    v175 = specialized __RawDictionaryStorage.find<A>(_:)(v173, v174);
                                    v177 = v176;

                                    if (v177)
                                    {
                                      outlined init with copy of Any(v202[7] + 32 * v175, v219);
                                      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSNumberCGMd, &_sSDySSSo8NSNumberCGMR);
                                      if (swift_dynamicCast())
                                      {
                                        v178 = Dictionary._bridgeToObjectiveC()().super.isa;

                                        [v171 setKeyedNumbers_];
                                      }
                                    }
                                  }

                                  else
                                  {
                                  }

                                  v179 = *MEMORY[0x277D7E890];
                                  v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                  if (v202[2])
                                  {
                                    v182 = specialized __RawDictionaryStorage.find<A>(_:)(v180, v181);
                                    v184 = v183;

                                    if (v184)
                                    {
                                      outlined init with copy of Any(v202[7] + 32 * v182, v219);

                                      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
                                      if (swift_dynamicCast())
                                      {
                                        v185 = Dictionary._bridgeToObjectiveC()().super.isa;

                                        [v171 setKeyedStrings_];

                                        outlined consume of Data?(v197, v110);
                                      }

                                      else
                                      {

                                        outlined consume of Data?(v197, v110);
                                      }

                                      outlined consume of Data._Representation(v208, v209);
                                      goto LABEL_109;
                                    }

                                    outlined consume of Data?(v197, v110);
                                  }

                                  else
                                  {

                                    outlined consume of Data?(v197, v110);
                                  }

                                  outlined consume of Data._Representation(v208, v209);

LABEL_109:
                                  outlined consume of Data?(v195, v196);
                                  (*(v210 + 8))(v212, v211);
                                  (*(v214 + 8))(v213, v215);
                                  result = v171;
                                  goto LABEL_39;
                                }

                                (*(v214 + 8))(v207, v215);

                                v165 = v14;
                              }

                              outlined destroy of UUID?(v165, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_91:
                              v166 = 0;
                              goto LABEL_92;
                            }
                          }
                        }

                        else
                        {
                        }
                      }

LABEL_90:

                      goto LABEL_91;
                    }
                  }
                }

                else
                {
                }

                goto LABEL_43;
              }
            }
          }

          else
          {
          }

          if (one-time initialization token for app != -1)
          {
            swift_once();
          }

          v83 = type metadata accessor for Logger();
          __swift_project_value_buffer(v83, static WOLog.app);
          v74 = Logger.logObject.getter();
          v84 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v74, v84))
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v219[0] = v86;
            *v85 = 136315138;
            v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v219);

            *(v85 + 4) = v89;
            _os_log_impl(&dword_20AEA4000, v74, v84, "Cannot deserialize from json object, missing key or cannot cast: %s", v85, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v86);
            MEMORY[0x20F2E9420](v86, -1, -1);
            MEMORY[0x20F2E9420](v85, -1, -1);
          }

          v82 = v208;
LABEL_36:
          v90 = v42;
LABEL_37:
          outlined consume of Data._Representation(v82, v90);

          goto LABEL_38;
        }
      }

      else
      {

        v42 = v209;
      }

      a1 = v208;
    }

    else
    {

      v42 = v209;
    }

    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static WOLog.app);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = a1;
      v78 = swift_slowAlloc();
      v219[0] = v78;
      *v76 = 136315138;
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v219);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_20AEA4000, v74, v75, "Cannot deserialize from json object, missing key or cannot cast: %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x20F2E9420](v78, -1, -1);
      MEMORY[0x20F2E9420](v76, -1, -1);
      v82 = v77;
    }

    else
    {
      v82 = a1;
    }

    goto LABEL_36;
  }

  outlined consume of Data._Representation(a1, a2);
LABEL_38:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  result = 0;
LABEL_39:
  v92 = *MEMORY[0x277D85DE8];
  return result;
}

id @objc WOPersistence.init(jsonObject:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  return WOPersistence.init(jsonObject:)(v4, v6);
}

uint64_t WOPersistence.jsonObject()()
{
  v1 = v0;
  v167 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for Date();
  v159 = *(v2 - 8);
  v160 = v2;
  v3 = *(v159 + 64);
  MEMORY[0x28223BE20](v2);
  v158 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for UUID();
  v5 = *(v161 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v161);
  v8 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F98];
  v163 = MEMORY[0x277D84F98];
  v10 = *MEMORY[0x277D7E8C0];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = [v1 version];
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v16 = type metadata accessor for NSNumber();
  v166 = v16;
  v165._countAndFlagsBits = v15;
  outlined init with take of Any(&v165, v164);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v162 = v9;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v11, v13, isUniquelyReferenced_nonNull_native);

  v18 = v162;
  v163 = v162;
  v19 = *MEMORY[0x277D7E8B0];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = [v1 type];
  v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v166 = v16;
  v165._countAndFlagsBits = v24;
  outlined init with take of Any(&v165, v164);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v162 = v18;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v20, v22, v25);

  v163 = v162;
  v26 = *MEMORY[0x277D7E8B8];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  v30 = [v1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = UUID.uuidString.getter();
  v33 = v32;
  v34 = *(v5 + 8);
  v154 = v8;
  v35 = v8;
  v36 = v1;
  v156 = v5 + 8;
  v155 = v34;
  v34(v35, v161);
  v37 = MEMORY[0x277D837D0];
  v166 = MEMORY[0x277D837D0];
  v165._countAndFlagsBits = v31;
  v165._object = v33;
  outlined init with take of Any(&v165, v164);
  v38 = v163;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v162 = v38;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v27, v29, v39);

  v163 = v162;
  v40 = *MEMORY[0x277D7E870];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;
  v44 = [v1 keyedNumbers];
  v157 = v16;
  v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSNumberCGMd, &_sSDySSSo8NSNumberCGMR);
  v165._countAndFlagsBits = v45;
  outlined init with take of Any(&v165, v164);
  v46 = v163;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v162 = v46;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v41, v43, v47);

  v48 = v162;
  v163 = v162;
  v49 = *MEMORY[0x277D7E890];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;
  v53 = [v36 keyedStrings];
  v54 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v165._countAndFlagsBits = v54;
  outlined init with take of Any(&v165, v164);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v162 = v48;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v50, v52, v55);

  v56 = v162;
  v163 = v162;
  v57 = *MEMORY[0x277D7E868];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;
  v61 = [v36 persistedData];
  v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  v65 = Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v62, v64);
  v166 = v37;
  v165 = v65;
  outlined init with take of Any(&v165, v164);
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v162 = v56;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v58, v60, v66);

  v67 = v162;
  v163 = v162;
  v68 = *MEMORY[0x277D7E888];
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;
  v72 = [v36 persistedProtoData];
  if (v72)
  {
    v73 = v72;
    v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77 = Data.base64EncodedString(options:)(0);
    outlined consume of Data._Representation(v74, v76);
    v166 = v37;
    v165 = v77;
    outlined init with take of Any(&v165, v164);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v162 = v67;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v69, v71, v78);

    v79 = v162;
    v163 = v162;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v69, v71, &v165);

    outlined destroy of UUID?(&v165, &_sypSgMd, &_sypSgMR);
    v79 = v163;
  }

  v80 = *MEMORY[0x277D7E880];
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;
  v84 = [v36 objectState];
  v85 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v86 = v157;
  v166 = v157;
  v165._countAndFlagsBits = v85;
  outlined init with take of Any(&v165, v164);
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v162 = v79;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v81, v83, v87);

  v163 = v162;
  v88 = *MEMORY[0x277D7E878];
  v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v90;
  v92 = [v36 objectModificationDate];
  v93 = v158;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceReferenceDate.getter();
  v95 = v94;
  (*(v159 + 8))(v93, v160);
  v96 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v166 = v86;
  v165._countAndFlagsBits = v96;
  outlined init with take of Any(&v165, v164);
  v97 = v163;
  v98 = swift_isUniquelyReferenced_nonNull_native();
  v162 = v97;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v89, v91, v98);

  v163 = v162;
  v99 = [v36 syncIdentity];
  if (v99)
  {
    v100 = v99;
    v101 = *MEMORY[0x277D7E8A0];
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = v103;
    v105 = [v100 hardwareIdentifier];
    v106 = v154;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v107 = UUID.uuidString.getter();
    v109 = v108;
    v110 = v161;
    v111 = v155;
    v155(v106, v161);
    v112 = MEMORY[0x277D837D0];
    v166 = MEMORY[0x277D837D0];
    v165._countAndFlagsBits = v107;
    v165._object = v109;
    outlined init with take of Any(&v165, v164);
    v113 = v163;
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v162 = v113;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v102, v104, v114);

    v163 = v162;
    v115 = *MEMORY[0x277D7E898];
    v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v118 = v117;
    v119 = [v100 databaseIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v120 = UUID.uuidString.getter();
    v122 = v121;
    v111(v106, v110);
    v166 = v112;
    v165._countAndFlagsBits = v120;
    v165._object = v122;
    outlined init with take of Any(&v165, v164);
    v123 = v163;
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v162 = v123;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v116, v118, v124);

    v125 = v162;
    v163 = v162;
    v126 = *MEMORY[0x277D7E8A8];
    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v128;
    v130 = [v100 instanceDiscriminator];
    v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v132;

    v166 = v112;
    v165._countAndFlagsBits = v131;
    v165._object = v133;
    outlined init with take of Any(&v165, v164);
    v134 = swift_isUniquelyReferenced_nonNull_native();
    v162 = v125;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v127, v129, v134);
  }

  v135 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v165._countAndFlagsBits = 0;
  v137 = [v135 dataWithJSONObject:isa options:0 error:&v165];

  v138 = v165._countAndFlagsBits;
  if (v137)
  {
    v139 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v140 = v138;
    v141 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v142 = type metadata accessor for Logger();
    __swift_project_value_buffer(v142, static WOLog.app);
    v143 = v141;
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v165._countAndFlagsBits = v147;
      *v146 = 136315138;
      swift_getErrorValue();
      v148 = Error.localizedDescription.getter();
      v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v149, &v165._countAndFlagsBits);

      *(v146 + 4) = v150;
      _os_log_impl(&dword_20AEA4000, v144, v145, "Cannot serialize to json object, error: %s", v146, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v147);
      MEMORY[0x20F2E9420](v147, -1, -1);
      MEMORY[0x20F2E9420](v146, -1, -1);
    }

    else
    {
    }

    v139 = 0;
  }

  v151 = *MEMORY[0x277D85DE8];
  return v139;
}

Class @objc WOPersistence.jsonObject()(void *a1)
{
  v1 = a1;
  v2 = WOPersistence.jsonObject()();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v2, v4);
    v5 = isa;
  }

  return v5;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of Any((*(v12 + 56) + 32 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Date();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Date();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for Station.Mood();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for Date();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Date();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(unsigned __int8 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v8 = v5;
  v9 = *v5;
  v10 = a3();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = v10;
  v13 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  v18 = *v8;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a5();
    v15 = v18;
  }

  v16 = *(*(v15 + 56) + 8 * v12);
  a4(v12, v15);
  *v8 = v15;
  return v16;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v8 = *v4;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  v12 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v7;
  v18 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v14 = v18;
  }

  v15 = *(*(v14 + 48) + 16 * v11 + 8);

  v16 = *(*(v14 + 56) + 8 * v11);
  a3(v11, v14);
  *v7 = v14;
  return v16;
}

uint64_t outlined destroy of UUID?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19FitnessIntelligence27DeviceInferenceAvailabilityV17UnavailableReasonOG_11WorkoutCore0k5VoiceH8ProviderC014UnavailabilityC0Os5NeverOTg504_s11k8Core0A25mhn71C021parseGenerativeModelsD033_3DA5E4D60FFBD0191F3346B0731EB6B3LLShyAC19oc8OGyFAG19d15Intelligence015fg5D0V17iJ6OXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for DeviceInferenceAvailability.UnavailableReason();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v56 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = v41 - v8;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v41[1] = v1;
  v62 = MEMORY[0x277D84F90];
  v11 = v7;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v10 = v62;
  v12 = a1 + 56;
  v13 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v15 = v11;
  v16 = result;
  v17 = 0;
  v53 = v15 + 88;
  v54 = v15 + 16;
  v52 = *MEMORY[0x277D0A5B8];
  v47 = *MEMORY[0x277D0A5D8];
  v45 = *MEMORY[0x277D0A5B0];
  v44 = *MEMORY[0x277D0A5C8];
  v43 = *MEMORY[0x277D0A5C0];
  v42 = *MEMORY[0x277D0A5D0];
  v55 = (v15 + 8);
  v46 = a1 + 64;
  v49 = v15;
  v50 = v3;
  v48 = v9;
  v51 = a1 + 56;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    v19 = v16 >> 6;
    if ((*(v12 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_32;
    }

    v59 = 1 << v16;
    v60 = v10;
    v20 = *(a1 + 36);
    v57 = v17;
    v58 = v20;
    v21 = a1;
    v22 = *(v15 + 16);
    v23 = v61;
    v24 = v15;
    v22(v61, *(a1 + 48) + *(v15 + 72) * v16, v3);
    v25 = v56;
    v22(v56, v23, v3);
    v26 = (*(v24 + 88))(v25, v3);
    if (v26 == v52)
    {
      v27 = 3;
      a1 = v21;
      v10 = v60;
    }

    else
    {
      a1 = v21;
      if (v26 == v47)
      {
        v27 = 5;
        v10 = v60;
      }

      else
      {
        v27 = 2;
        v10 = v60;
        if (v26 != v45 && v26 != v44)
        {
          if (v26 == v43)
          {
            v27 = 4;
          }

          else
          {
            if (v26 != v42)
            {
              (*v55)(v56, v3);
            }

            v27 = 9;
          }
        }
      }
    }

    result = (*v55)(v61, v3);
    v62 = v10;
    v29 = *(v10 + 16);
    v28 = *(v10 + 24);
    if (v29 >= v28 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      v10 = v62;
    }

    *(v10 + 16) = v29 + 1;
    *(v10 + v29 + 32) = v27;
    v18 = 1 << *(a1 + 32);
    if (v16 >= v18)
    {
      goto LABEL_33;
    }

    v12 = v51;
    v30 = *(v51 + 8 * v19);
    if ((v30 & v59) == 0)
    {
      goto LABEL_34;
    }

    if (v58 != *(a1 + 36))
    {
      goto LABEL_35;
    }

    v31 = v30 & (-2 << (v16 & 0x3F));
    if (v31)
    {
      v18 = __clz(__rbit64(v31)) | v16 & 0x7FFFFFFFFFFFFFC0;
      v15 = v49;
    }

    else
    {
      v32 = v19 << 6;
      v33 = v19 + 1;
      v34 = (v46 + 8 * v19);
      while (v33 < (v18 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          v37 = v16;
          v38 = v49;
          result = outlined consume of Set<DeviceInferenceAvailability.UnavailableReason>.Index._Variant(v37, v58, 0);
          v15 = v38;
          v18 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      v39 = v16;
      v40 = v49;
      result = outlined consume of Set<DeviceInferenceAvailability.UnavailableReason>.Index._Variant(v39, v58, 0);
      v15 = v40;
    }

LABEL_4:
    v17 = v57 + 1;
    v16 = v18;
    v3 = v50;
    if (v57 + 1 == v48)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCAG_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t WorkoutVoiceAvailabilityProvider.State.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x6C62616C69617661;
  }

  _StringGuts.grow(_:)(17);

  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
  v2 = Set.description.getter();
  MEMORY[0x20F2E6D80](v2);

  return 0x6961766120746F6ELL;
}

unint64_t lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError()
{
  result = lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError;
  if (!lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError;
  if (!lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError;
  if (!lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError);
  }

  return result;
}

unint64_t WorkoutVoiceAvailabilityProvider.State.isFeatureSupported.getter(unint64_t result)
{
  if (result >= 2)
  {
    v1 = 0;
    v2 = 1 << *(result + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(result + 56);
    v5 = (v2 + 63) >> 6;
    while (v4)
    {
      v6 = v1;
LABEL_11:
      v7 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      if (*(*(result + 48) + (v7 | (v6 << 6))) - 3 >= 6)
      {
        v8 = 0;
LABEL_14:
        outlined copy of WorkoutVoiceAvailabilityProvider.State(result);

        return v8;
      }
    }

    while (1)
    {
      v6 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v6 >= v5)
      {
        v8 = 1;
        goto LABEL_14;
      }

      v4 = *(result + 56 + 8 * v6);
      ++v1;
      if (v4)
      {
        v1 = v6;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t outlined copy of WorkoutVoiceAvailabilityProvider.State(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t WorkoutVoiceAvailabilityProvider.State.unavailableReasons.getter(unint64_t a1)
{
  if (a1 >= 2)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  outlined copy of WorkoutVoiceAvailabilityProvider.State(a1);
  return v1;
}

Swift::Int static WorkoutVoiceAvailabilityProvider.State.== infix(_:_:)(Swift::Int a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(a1, a2);
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x20F2E7FF0](v13);
    result = Hasher._finalize()();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutVoiceAvailabilityProvider.State(Swift::Int *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(v2, v3);
}

WorkoutCore::WorkoutVoiceAvailabilityProvider::UnavailabilityError_optional __swiftcall WorkoutVoiceAvailabilityProvider.UnavailabilityError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Error._code.getter in conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t WorkoutVoiceAvailabilityProvider._availabilityState.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = *&v0[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_availabilityStatePublisher];
  swift_getKeyPath();
  v16 = v0;
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v8 = *&v1[v7];
  v15 = v8;
  outlined copy of WorkoutVoiceAvailabilityProvider.State(v8);
  PassthroughSubject.send(_:)();
  outlined consume of WorkoutVoiceAvailabilityProvider.State(v8);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v1;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply, v12);
}

uint64_t (*WorkoutVoiceAvailabilityProvider._availabilityState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return WorkoutVoiceAvailabilityProvider._availabilityState.modify;
}

uint64_t WorkoutVoiceAvailabilityProvider._availabilityState.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return WorkoutVoiceAvailabilityProvider._availabilityState.didset();
  }

  return result;
}

unint64_t key path getter for WorkoutVoiceAvailabilityProvider.availabilityState : WorkoutVoiceAvailabilityProvider@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return outlined copy of WorkoutVoiceAvailabilityProvider.State(v5);
}

uint64_t key path setter for WorkoutVoiceAvailabilityProvider.availabilityState : WorkoutVoiceAvailabilityProvider(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  outlined copy of WorkoutVoiceAvailabilityProvider.State(*a1);
  return WorkoutVoiceAvailabilityProvider.availabilityState.setter(v2);
}

unint64_t WorkoutVoiceAvailabilityProvider.availabilityState.getter()
{
  swift_getKeyPath();
  v4 = v0;
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v2 = *(v4 + v1);
  outlined copy of WorkoutVoiceAvailabilityProvider.State(v2);
  return v2;
}

uint64_t type metadata accessor for WorkoutVoiceAvailabilityProvider()
{
  result = type metadata singleton initialization cache for WorkoutVoiceAvailabilityProvider;
  if (!type metadata singleton initialization cache for WorkoutVoiceAvailabilityProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutVoiceAvailabilityProvider.availabilityState.setter(unint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == 1)
    {
      if (a1 == 1)
      {
        v5 = 1;
LABEL_10:
        *(v1 + v3) = a1;
        outlined consume of WorkoutVoiceAvailabilityProvider.State(v5);
        return WorkoutVoiceAvailabilityProvider._availabilityState.didset();
      }
    }

    else if (a1 >= 2 && (_sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(v4, a1) & 1) != 0)
    {
      v5 = *(v1 + v3);
      goto LABEL_10;
    }
  }

  else if (!a1)
  {
    v5 = 0;
    goto LABEL_10;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of WorkoutVoiceAvailabilityProvider.State(a1);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.availabilityState.setter(uint64_t a1, unint64_t a2)
{
  v4 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  outlined copy of WorkoutVoiceAvailabilityProvider.State(a2);
  outlined consume of WorkoutVoiceAvailabilityProvider.State(v5);
  return WorkoutVoiceAvailabilityProvider._availabilityState.didset();
}

unint64_t outlined consume of WorkoutVoiceAvailabilityProvider.State(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

void (*WorkoutVoiceAvailabilityProvider.availabilityState.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutVoiceAvailabilityProvider._availabilityState.modify(v4);
  return WorkoutVoiceAvailabilityProvider.availabilityState.modify;
}

void WorkoutVoiceAvailabilityProvider.availabilityState.modify(void *a1)
{
  WorkoutVoiceAvailabilityProvider.availabilityState.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__isWorkoutBuddyNoLongerAvailableInCurrentWorkout;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.setter()
{
  return partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__isWorkoutBuddyNoLongerAvailableInCurrentWorkout;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutVoiceAvailabilityProvider._isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify();
  return WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify;
}

void (*WorkoutVoiceAvailabilityProvider._didFailToKickoffWorkoutBuddyInCurrentWorkout.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  *(v5 + 32) = v7;
  swift_beginAccess();
  return WorkoutVoiceAvailabilityProvider._didFailToKickoffWorkoutBuddyInCurrentWorkout.modify;
}

uint64_t key path getter for WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout : WorkoutVoiceAvailabilityProvider@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t WorkoutVoiceAvailabilityProvider.didFailToKickoffWorkoutBuddyInCurrentWorkout.setter(char a1)
{
  v2 = a1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v7 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__didFailToKickoffWorkoutBuddyInCurrentWorkout;
  swift_beginAccess();
  if (v1[v7] == v2)
  {
    v1[v7] = v2;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    type metadata accessor for MainActor();
    v11 = v1;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout(), v13);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v15[-2] = v1;
    LOBYTE(v15[-1]) = v2;
    v15[2] = v1;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void (*WorkoutVoiceAvailabilityProvider.didFailToKickoffWorkoutBuddyInCurrentWorkout.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutVoiceAvailabilityProvider._didFailToKickoffWorkoutBuddyInCurrentWorkout.modify(v4);
  return WorkoutVoiceAvailabilityProvider.didFailToKickoffWorkoutBuddyInCurrentWorkout.modify;
}

void (*WorkoutVoiceAvailabilityProvider._didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  *(v5 + 32) = v7;
  swift_beginAccess();
  return WorkoutVoiceAvailabilityProvider._didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify;
}

void WorkoutVoiceAvailabilityProvider._didFailToKickoffWorkoutBuddyInCurrentWorkout.modify(void **a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_endAccess();
  v7 = v6[4];
  if ((a2 & 1) == 0)
  {
    v8 = v6[3];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = v8;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, a4, v12);
  }

  free(v7);

  free(v6);
}

uint64_t WorkoutVoiceAvailabilityProvider.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.setter(char a1)
{
  v2 = a1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v7 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout;
  swift_beginAccess();
  if (v1[v7] == v2)
  {
    v1[v7] = v2;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    type metadata accessor for MainActor();
    v11 = v1;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply, v13);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v15[-2] = v1;
    LOBYTE(v15[-1]) = v2;
    v15[2] = v1;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.didFailToKickoffWorkoutBuddyInCurrentWorkout.setter(_BYTE *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = *a3;
  swift_beginAccess();
  a1[v13] = a2;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = a1;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, a5, v17);
}

void (*WorkoutVoiceAvailabilityProvider.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutVoiceAvailabilityProvider._didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify(v4);
  return WorkoutVoiceAvailabilityProvider.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify;
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a4;
  type metadata accessor for MainActor();
  *(v4 + 128) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout(), v6, v5);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()()
{
  v2 = v0[15];
  v1 = v0[16];

  swift_getKeyPath();
  v0[2] = v2;
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v4 = *(v2 + v3);
  swift_getKeyPath();
  v0[5] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout;
  swift_beginAccess();
  if (*(v2 + v5))
  {
    v6 = 1;
  }

  else
  {
    v7 = v0[15];
    swift_getKeyPath();
    v0[8] = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__didFailToKickoffWorkoutBuddyInCurrentWorkout;
    swift_beginAccess();
    if (v4 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v7 + v8);
    }
  }

  v9 = v0[15];
  v10 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__isWorkoutBuddyNoLongerAvailableInCurrentWorkout;
  swift_beginAccess();
  if (v6 == *(v9 + v10))
  {
    *(v9 + v10) = v6;
  }

  else
  {
    v11 = v0[15];
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = v6;
    v0[14] = v11;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v13 = v0[1];

  return v13();
}

uint64_t partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout();

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

Swift::Void __swiftcall WorkoutVoiceAvailabilityProvider.resetStateOfCurrentWorkout()()
{
  v1 = v0;
  v2 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__isWorkoutBuddyNoLongerAvailableInCurrentWorkout;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + v2) = 0;
  }

  WorkoutVoiceAvailabilityProvider.didFailToKickoffWorkoutBuddyInCurrentWorkout.setter(0);
  WorkoutVoiceAvailabilityProvider.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.setter(0);
}

id WorkoutVoiceAvailabilityProvider.init(inferenceClient:snapshotClient:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = type metadata accessor for InferenceClient();
  v35 = *(v5 - 8);
  v6 = v35;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v3[v10] = v11;
  *&v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState] = 0;
  v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__isWorkoutBuddyNoLongerAvailableInCurrentWorkout] = 0;
  v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__didFailToKickoffWorkoutBuddyInCurrentWorkout] = 0;
  v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout] = 0;
  v12 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_availabilityStatePublisher;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v3[v12] = PassthroughSubject.init()();
  v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability] = 0;
  ObservationRegistrar.init()();
  v16 = *(v6 + 16);
  v36 = a1;
  v34 = v5;
  v16(&v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_inferenceClient], a1, v5);
  v17 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_snapshotClient;
  v18 = type metadata accessor for SnapshotClient();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v3[v17], v37, v18);
  v16(v9, a1, v5);
  v20 = type metadata accessor for DeviceInferenceAvailabilityProvider();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v23 + v24) = v25;
  v26 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__phoneAvailability;
  v27 = type metadata accessor for DeviceInferenceAvailability();
  v28 = *(*(v27 - 8) + 56);
  v28(v23 + v26, 1, 1, v27);
  v28(v23 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__watchAvailability, 1, 1, v27);
  *(v23 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__hasFetchedAvailability) = 0;
  v29 = v34;
  v30 = v35;
  (*(v35 + 32))(v23 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_inferenceClient, v9, v34);
  *&v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider] = v23;
  v31 = type metadata accessor for WorkoutVoiceAvailabilityProvider();
  v38.receiver = v3;
  v38.super_class = v31;
  v32 = objc_msgSendSuper2(&v38, sel_init);
  (*(v19 + 8))(v37, v18);
  (*(v30 + 8))(v36, v29);
  return v32;
}

uint64_t WorkoutVoiceAvailabilityProvider._hasFetchedAvailability.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability) == (result & 1))
  {
    *(v1 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

Swift::Bool __swiftcall WorkoutVoiceAvailabilityProvider.isFeatureSupported()()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
  DeviceInferenceAvailabilityProvider.updateDeviceInferenceAvailability()();
  v2 = WorkoutVoiceAvailabilityProvider.parseDeviceInferenceAvailability()();
  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(*(v2 + 48) + (v9 | (v3 << 6)));
    if (v10 <= 9 && ((0x207u >> v10) & 1) != 0)
    {
      v11 = 0;
LABEL_13:

      LOBYTE(v2) = v11;
      return v2;
    }
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      v11 = 1;
      goto LABEL_13;
    }

    v6 = *(v2 + 56 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return v2;
}

uint64_t WorkoutVoiceAvailabilityProvider._hasFetchedAvailability.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability);
}

uint64_t key path getter for WorkoutVoiceAvailabilityProvider._hasFetchedAvailability : WorkoutVoiceAvailabilityProvider@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability);
  return result;
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.hasFetchedAvailability.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(a1 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability);
  return result;
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.hasFetchedAvailability.setter(uint64_t result, char a2)
{
  if (*(result + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability) == (a2 & 1))
  {
    *(result + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation()()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation(), 0, 0);
}

{
  v33 = v0;
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_lock);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.hasFetchedAvailability.getter;
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v2 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v32);
  os_unfair_lock_unlock(v2 + 4);
  v5 = v32[0];

  if (v5)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.workoutVoice);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[3];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32[0] = v11;
      *v10 = 136315138;
      v12 = _typeName(_:qualified:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v32);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_20AEA4000, v7, v8, "%s already fetched availability, ignoring call to activate.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v15 = v0[4];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[2];
    v19 = swift_task_alloc();
    *(v19 + 16) = v18;
    *(v19 + 24) = 1;
    v20 = swift_task_alloc();
    *(v20 + 16) = partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.hasFetchedAvailability.setter;
    *(v20 + 24) = v19;
    os_unfair_lock_lock(v2 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
    os_unfair_lock_unlock(v2 + 4);

    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.workoutVoice);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[3];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v25 = 136315138;
      v27 = _typeName(_:qualified:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20AEA4000, v22, v23, "%s activating.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    v30 = *(v0[2] + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
    v31 = swift_task_alloc();
    v0[5] = v31;
    *v31 = v0;
    v31[1] = WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation();

    return DeviceInferenceAvailabilityProvider.activate()();
  }
}

{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation(), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for TaskPriority();
  v8 = *(v0 + 16);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v8;
  v4 = v8;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(0, 0, v1, &async function pointer to partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability(), v3);

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation();
  v6 = *(v0 + 16);

  return WorkoutVoiceAvailabilityProvider.determineAvailabilityState()();
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 32);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t WorkoutVoiceAvailabilityProvider.fetchAvailability()()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.fetchAvailability(), 0, 0);
}

{
  v14 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.workoutVoice);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20AEA4000, v2, v3, "%s activating.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v10 = *(v0[2] + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = WorkoutVoiceAvailabilityProvider.fetchAvailability();

  return DeviceInferenceAvailabilityProvider.activate()();
}

{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.fetchAvailability(), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for TaskPriority();
  v8 = *(v0 + 16);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v8;
  v4 = v8;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(0, 0, v1, &closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()partial apply, v3);

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = WorkoutVoiceAvailabilityProvider.fetchAvailability();
  v6 = *(v0 + 16);

  return WorkoutVoiceAvailabilityProvider.determineAvailabilityState()();
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:)(unint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - v6;
  swift_getKeyPath();
  v50 = v1;
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v9 = *&v1[v8];
  if (v9)
  {
    if (v9 == 1)
    {
      if (a1 != 1)
      {
        goto LABEL_14;
      }
    }

    else if (a1 < 2 || (_sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(v9, a1) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (a1)
  {
LABEL_14:
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.workoutVoice);
    v22 = v1;
    outlined copy of WorkoutVoiceAvailabilityProvider.State(a1);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    outlined consume of WorkoutVoiceAvailabilityProvider.State(a1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      HIDWORD(v45) = v24;
      v26 = v25;
      v46 = swift_slowAlloc();
      v49 = v46;
      *v26 = 136315650;
      v27 = _typeName(_:qualified:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v49);
      v47 = v7;
      v30 = v29;

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      swift_getKeyPath();
      v48 = v22;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v31 = *&v2[v8];
      outlined copy of WorkoutVoiceAvailabilityProvider.State(v31);
      v32 = WorkoutVoiceAvailabilityProvider.State.description.getter(v31);
      v34 = v33;
      outlined consume of WorkoutVoiceAvailabilityProvider.State(v31);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v49);

      *(v26 + 14) = v35;
      *(v26 + 22) = 2080;
      v36 = WorkoutVoiceAvailabilityProvider.State.description.getter(a1);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v49);

      *(v26 + 24) = v38;
      v7 = v47;
      _os_log_impl(&dword_20AEA4000, v23, BYTE4(v45), "%s Updating state from %s to %s", v26, 0x20u);
      v39 = v46;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v39, -1, -1);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    outlined copy of WorkoutVoiceAvailabilityProvider.State(a1);
    WorkoutVoiceAvailabilityProvider.availabilityState.setter(a1);
    v40 = type metadata accessor for TaskPriority();
    (*(*(v40 - 8) + 56))(v7, 1, 1, v40);
    type metadata accessor for MainActor();
    v41 = v22;
    v42 = static MainActor.shared.getter();
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    v43[2] = v42;
    v43[3] = v44;
    v43[4] = v41;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:), v43);

    return;
  }

  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.workoutVoice);
  outlined copy of WorkoutVoiceAvailabilityProvider.State(a1);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined consume of WorkoutVoiceAvailabilityProvider.State(a1);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v49 = v14;
    *v13 = 136315394;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v49);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = WorkoutVoiceAvailabilityProvider.State.description.getter(a1);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v49);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_20AEA4000, v11, v12, "%s Not updating state as it is unchanged. Current state: %s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:)()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:);

  return WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()();
}

{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:), v5, v4);
}

{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()()
{
  v1[6] = v0;
  v1[7] = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever(), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever(), v2, v1);
}

{
  v1 = v0[9];
  v2 = v0[6];

  swift_getKeyPath();
  v0[5] = v2;
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v0[10] = v4;
  outlined copy of WorkoutVoiceAvailabilityProvider.State(v4);

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever(), 0, 0);
}

{
  v1 = *(v0 + 80);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = *(v0 + 64);
      v3 = type metadata accessor for TaskPriority();
      v9 = *(v0 + 48);
      (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
      v4 = swift_allocObject();
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = v9;
      v5 = v9;
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(0, 0, v2, &async function pointer to partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever(), v4);
    }

    else
    {
      outlined consume of WorkoutVoiceAvailabilityProvider.State(v1);
    }
  }

  v6 = *(v0 + 64);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever(), 0, 0);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()()
{
  v15 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.workoutVoice);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20AEA4000, v2, v3, "%s Prewarming snapshot retriever.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v10 = v0[2];
  v11 = *(MEMORY[0x277D09FA8] + 4);
  v12 = swift_task_alloc();
  v0[4] = v12;
  *v12 = v0;
  v12[1] = closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever();

  return MEMORY[0x282160A40]();
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of TaskPriority?(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t WorkoutVoiceAvailabilityProvider.determineAvailabilityState()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.determineAvailabilityState(), 0, 0);
}

{
  v21 = v0;
  if (specialized static NLWorkoutDemoUtilities.shoulOverrideVoiceAvailabilityState()())
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static WOLog.workoutVoice);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[3];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v20 = v6;
      *v5 = 136315138;
      v7 = _typeName(_:qualified:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v20);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_20AEA4000, v2, v3, "%s Running in store demo mode with supported language, overriding availability state to available.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x20F2E9420](v6, -1, -1);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    type metadata accessor for MainActor();
    v0[4] = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v13 = WorkoutVoiceAvailabilityProvider.determineAvailabilityState();
  }

  else
  {
    v14 = v0[2];
    v15 = WorkoutVoiceAvailabilityProvider.parseDeviceInferenceAvailability()();
    v16 = specialized Set.union<A>(_:)(v15, MEMORY[0x277D84FA0]);
    v0[5] = v16;
    if (*(v16 + 16))
    {
      type metadata accessor for MainActor();
      v0[7] = static MainActor.shared.getter();
      v10 = dispatch thunk of Actor.unownedExecutor.getter();
      v12 = v17;
      v13 = WorkoutVoiceAvailabilityProvider.determineAvailabilityState();
    }

    else
    {

      type metadata accessor for MainActor();
      v0[6] = static MainActor.shared.getter();
      v10 = dispatch thunk of Actor.unownedExecutor.getter();
      v12 = v18;
      v13 = WorkoutVoiceAvailabilityProvider.determineAvailabilityState();
    }
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

{
  v1 = v0[4];
  v2 = v0[2];

  WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:)(1uLL);
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[6];
  v2 = v0[2];

  WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:)(1uLL);
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];

  WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:)(v2);

  v4 = v0[1];

  return v4();
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = specialized Set._Variant.insert(_:)(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsyyts5Error_pGMd, &_sScsyyts5Error_pGMR);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVyyts5Error_p_GMd, &_sScs8IteratorVyyts5Error_p_GMR);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability(), 0, 0);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = *(v0[3] + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
  DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()();
  MEMORY[0x20F2E71E0](v4);
  (*(v3 + 8))(v2, v4);
  v6 = *(MEMORY[0x277D858B8] + 4);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability();
  v8 = v0[10];
  v9 = v0[8];

  return MEMORY[0x2822005A8](v0 + 13, 0, 0, v9, v0 + 2);
}

{
  v2 = *(*v1 + 88);
  v5 = *v1;

  if (v0)
  {
    v3 = closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability();
  }

  else
  {
    v3 = closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v16 = v0;
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 56);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.workoutVoice);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 32);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = _typeName(_:qualified:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_20AEA4000, v5, v6, "%s Device availability changed.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    v13 = swift_task_alloc();
    *(v0 + 96) = v13;
    *v13 = v0;
    v13[1] = closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability();
    v14 = *(v0 + 24);

    return WorkoutVoiceAvailabilityProvider.determineAvailabilityState()();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *v0;

  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v3;
  v5[1] = closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability();
  v6 = v1[10];
  v7 = v1[8];

  return MEMORY[0x2822005A8](v1 + 13, 0, 0, v7, v1 + 2);
}

{
  v1 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t WorkoutVoiceAvailabilityProvider.parseDeviceInferenceAvailability()()
{
  swift_getObjectType();
  v0 = WorkoutVoiceAvailabilityProvider.parseGenerativeModelsAvailability()();
  v1 = WorkoutVoiceAvailabilityProvider.parseSiriPhoneAvailability()();
  v2 = WorkoutVoiceAvailabilityProvider.parseSiriWatchAvailability()();
  v3 = WorkoutVoiceAvailabilityProvider.parseVoiceAssetAvailability()();
  v4 = WorkoutVoiceAvailabilityProvider.parseLocaleAvailability()();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.workoutVoice);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v60 = v1;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v61 = v9;
    *v8 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v61);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
    v13 = Set.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v61);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_20AEA4000, v6, v7, "%s GMS errors: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v61 = v19;
    *v18 = 136315394;
    v20 = _typeName(_:qualified:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v61);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
    v23 = Set.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v61);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_20AEA4000, v16, v17, "%s Siri iOS errors: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v19, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v61 = v29;
    *v28 = 136315394;
    v30 = _typeName(_:qualified:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v61);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
    v33 = Set.description.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v61);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_20AEA4000, v26, v27, "%s Siri watchOS errors: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v29, -1, -1);
    MEMORY[0x20F2E9420](v28, -1, -1);
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v61 = v39;
    *v38 = 136315394;
    v40 = _typeName(_:qualified:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v61);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
    v43 = Set.description.getter();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v61);

    *(v38 + 14) = v45;
    _os_log_impl(&dword_20AEA4000, v36, v37, "%s voice asset errors: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v39, -1, -1);
    MEMORY[0x20F2E9420](v38, -1, -1);
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v61 = v49;
    *v48 = 136315394;
    v50 = _typeName(_:qualified:)();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v61);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
    v53 = Set.description.getter();
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v61);

    *(v48 + 14) = v55;
    _os_log_impl(&dword_20AEA4000, v46, v47, "%s Locale errors: %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v49, -1, -1);
    MEMORY[0x20F2E9420](v48, -1, -1);
  }

  v56 = specialized Set.union<A>(_:)(v60, v0);
  v57 = specialized Set.union<A>(_:)(v2, v56);
  v58 = specialized Set.union<A>(_:)(v3, v57);

  return specialized Set.union<A>(_:)(v4, v58);
}

Swift::Int WorkoutVoiceAvailabilityProvider.parseGenerativeModelsAvailability()()
{
  v1 = type metadata accessor for DeviceInferenceAvailability.ComponentAvailability();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22[-v8];
  v10 = type metadata accessor for DeviceInferenceAvailability();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v0 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
  v16 = *(v15 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);
  v23 = closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getterpartial apply;
  v24 = v15;
  os_unfair_lock_lock(v16 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v16 + 4);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of TaskPriority?(v9, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #1 of WorkoutVoiceAvailabilityProvider.parseGenerativeModelsAvailability());
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    DeviceInferenceAvailability.generativeModels.getter();
    v18 = (*(v2 + 88))(v5, v1);
    if (v18 == *MEMORY[0x277D0A5A0])
    {
      (*(v2 + 96))(v5, v1);
      v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19FitnessIntelligence27DeviceInferenceAvailabilityV17UnavailableReasonOG_11WorkoutCore0k5VoiceH8ProviderC014UnavailabilityC0Os5NeverOTg504_s11k8Core0A25mhn71C021parseGenerativeModelsD033_3DA5E4D60FFBD0191F3346B0731EB6B3LLShyAC19oc8OGyFAG19d15Intelligence015fg5D0V17iJ6OXEfU_Tf1cn_n(*v5);

      v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_SayAHGTt0g5Tf4g_n(v19);

      (*(v11 + 8))(v14, v10);
      return v20;
    }

    else if (v18 == *MEMORY[0x277D0A5A8])
    {
      (*(v11 + 8))(v14, v10);
      return MEMORY[0x277D84FA0];
    }

    else
    {
      v21 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #0 of WorkoutVoiceAvailabilityProvider.parseGenerativeModelsAvailability());
      (*(v11 + 8))(v14, v10);
      (*(v2 + 8))(v5, v1);
      return v21;
    }
  }
}

Swift::Int WorkoutVoiceAvailabilityProvider.parseSiriPhoneAvailability()()
{
  v1 = type metadata accessor for DeviceInferenceAvailability.ComponentAvailability();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = *(v25 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for InferenceDevice();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for DeviceInferenceAvailability();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
  v19 = *(v18 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);
  v27 = closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getterpartial apply;
  v28 = v18;
  os_unfair_lock_lock(v19 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v19 + 4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #0 of WorkoutVoiceAvailabilityProvider.parseSiriPhoneAvailability());
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v21 = v24;
    (*(v5 + 104))(v8, *MEMORY[0x277D09FE0], v24);
    DeviceInferenceAvailability.siri.getter();
    v22 = specialized WorkoutVoiceAvailabilityProvider.parseSiriAvailability(for:_:)(v8, v4);
    (*(v25 + 8))(v4, v26);
    (*(v5 + 8))(v8, v21);
    (*(v14 + 8))(v17, v13);
    return v22;
  }
}

Swift::Int WorkoutVoiceAvailabilityProvider.parseSiriWatchAvailability()()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for DeviceInferenceAvailability.ComponentAvailability();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for InferenceDevice();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &ObjectType - v11;
  v13 = type metadata accessor for DeviceInferenceAvailability();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
  v19 = *(v18 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);
  v35 = closure #1 in DeviceInferenceAvailabilityProvider.watchAvailability.getterpartial apply;
  v36 = v18;
  os_unfair_lock_lock(v19 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v19 + 4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.workoutVoice);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136315138;
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v37);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_20AEA4000, v21, v22, "%s Watch availability is nil. This should only occur if we are querying from phone and watch is not running capable software.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x20F2E9420](v24, -1, -1);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    return MEMORY[0x277D84FA0];
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v29 = v32;
    (*(v5 + 104))(v8, *MEMORY[0x277D09FE8], v32);
    DeviceInferenceAvailability.siri.getter();
    v30 = specialized WorkoutVoiceAvailabilityProvider.parseSiriAvailability(for:_:)(v8, v4);
    (*(v33 + 8))(v4, v34);
    (*(v5 + 8))(v8, v29);
    (*(v14 + 8))(v17, v13);
    return v30;
  }
}

Swift::Int WorkoutVoiceAvailabilityProvider.parseVoiceAssetAvailability()()
{
  v1 = type metadata accessor for DeviceInferenceAvailability.UnavailableReason();
  v34 = *(v1 - 8);
  v35 = v1;
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DeviceInferenceAvailability.ComponentAvailability();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for DeviceInferenceAvailability();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
  v19 = *(v18 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);
  v36 = closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getterpartial apply;
  v37 = v18;
  os_unfair_lock_lock(v19 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v19 + 4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #2 of WorkoutVoiceAvailabilityProvider.parseVoiceAssetAvailability());
  }

  (*(v14 + 32))(v17, v12, v13);
  DeviceInferenceAvailability.generativeModels.getter();
  v21 = (*(v5 + 88))(v8, v4);
  if (v21 == *MEMORY[0x277D0A5A0])
  {
    (*(v5 + 96))(v8, v4);
    v22 = *v8;
    v23 = v33;
    v24 = v34;
    v25 = *(v34 + 104);
    v26 = v35;
    v25(v33, *MEMORY[0x277D0A5D8], v35);
    v27 = specialized Set.contains(_:)(v23, v22);
    v34 = *(v24 + 8);
    (v34)(v23, v26);
    if (v27 & 1) != 0 || (v25(v23, *MEMORY[0x277D0A5B8], v26), v28 = specialized Set.contains(_:)(v23, v22), (v34)(v23, v26), (v28))
    {

LABEL_7:
      v29 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #0 of WorkoutVoiceAvailabilityProvider.parseVoiceAssetAvailability());
      (*(v14 + 8))(v17, v13);
      return v29;
    }

    v25(v23, *MEMORY[0x277D0A5D0], v26);
    v31 = specialized Set.contains(_:)(v23, v22);

    (v34)(v23, v26);
    if (v31)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v21 == *MEMORY[0x277D0A5A8])
  {
LABEL_9:
    (*(v14 + 8))(v17, v13);
    return MEMORY[0x277D84FA0];
  }

  v30 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #1 of WorkoutVoiceAvailabilityProvider.parseVoiceAssetAvailability());
  (*(v14 + 8))(v17, v13);
  (*(v5 + 8))(v8, v4);
  return v30;
}

Swift::Int WorkoutVoiceAvailabilityProvider.parseLocaleAvailability()()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v70 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v64 - v5;
  v7 = type metadata accessor for DeviceInferenceAvailability.ComponentAvailability();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = v71[8];
  v9 = MEMORY[0x28223BE20](v7);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v64 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v64 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  MEMORY[0x28223BE20](v15);
  v73 = &v64 - v18;
  v19 = *(v0 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
  v20 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock;
  v21 = *&v19[OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock];
  v74 = partial apply for closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getter;
  v75 = v19;
  os_unfair_lock_lock(v21 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v21 + 4);
  v22 = type metadata accessor for DeviceInferenceAvailability();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v6, 1, v22) == 1)
  {
    outlined destroy of TaskPriority?(v6, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #1 of WorkoutVoiceAvailabilityProvider.parseLocaleAvailability());
  }

  DeviceInferenceAvailability.locale.getter();
  v65 = *(v23 + 8);
  v65(v6, v22);
  v64 = v71[4];
  v26 = v64(v73, v17, v72);
  v27 = *&v19[v20];
  MEMORY[0x28223BE20](v26);
  *(&v64 - 2) = partial apply for closure #1 in DeviceInferenceAvailabilityProvider.watchAvailability.getter;
  *(&v64 - 1) = v19;
  os_unfair_lock_lock(v27 + 4);
  v28 = v70;
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v27 + 4);
  if (v24(v28, 1, v22) == 1)
  {
    v29 = v72;
    v30 = v73;
    v31 = v71;
    outlined destroy of TaskPriority?(v70, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static WOLog.workoutVoice);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v76[0] = v36;
      *v35 = 136315138;
      v37 = _typeName(_:qualified:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v76);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_20AEA4000, v33, v34, "%s Watch availability is nil. This should only occur if we are querying from phone and watch is not running capable software.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x20F2E9420](v36, -1, -1);
      MEMORY[0x20F2E9420](v35, -1, -1);
    }

    (v31[1])(v30, v29);
    return MEMORY[0x277D84FA0];
  }

  v40 = v67;
  v41 = v70;
  DeviceInferenceAvailability.locale.getter();
  v65(v41, v22);
  v42 = v72;
  v64(v69, v40, v72);
  v43 = *MEMORY[0x277D0A5A8];
  v44 = v71;
  v45 = v71[13];
  v46 = v68;
  v45(v68, v43, v42);
  v47 = v73;
  v48 = static DeviceInferenceAvailability.ComponentAvailability.== infix(_:_:)();
  v49 = v44[1];
  v49(v46, v42);
  v45(v46, v43, v42);
  v50 = static DeviceInferenceAvailability.ComponentAvailability.== infix(_:_:)();
  v49(v46, v42);
  v51 = v42;
  v52 = v47;
  v53 = v48;
  if (v48 & 1) != 0 && (v50)
  {
    v49(v69, v42);
    v49(v52, v42);
    return MEMORY[0x277D84FA0];
  }

  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static WOLog.workoutVoice);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    LODWORD(v71) = v50;
    v58 = v57;
    v59 = swift_slowAlloc();
    v76[0] = v59;
    *v58 = 136315650;
    v60 = _typeName(_:qualified:)();
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v76);
    v52 = v73;

    *(v58 + 4) = v62;
    *(v58 + 12) = 1024;
    *(v58 + 14) = v53 & 1;
    *(v58 + 18) = 1024;
    *(v58 + 20) = v71 & 1;
    _os_log_impl(&dword_20AEA4000, v55, v56, "%s phone locale available: %{BOOL}d, watch locale available: %{BOOL}d", v58, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x20F2E9420](v59, -1, -1);
    MEMORY[0x20F2E9420](v58, -1, -1);
  }

  v63 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #0 of WorkoutVoiceAvailabilityProvider.parseLocaleAvailability());
  v49(v69, v51);
  v49(v52, v51);
  return v63;
}

id WorkoutVoiceAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutVoiceAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutVoiceAvailabilityProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for WorkoutBuddyAvailabilityProviding.availabilityState.getter in conformance WorkoutVoiceAvailabilityProvider()
{
  *(v1 + 40) = v0;
  type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](protocol witness for WorkoutBuddyAvailabilityProviding.availabilityState.getter in conformance WorkoutVoiceAvailabilityProvider, v3, v2);
}

{
  v2 = v0[5];
  v1 = v0[6];

  v3 = *v2;
  swift_getKeyPath();
  v0[2] = v3;
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  outlined copy of WorkoutVoiceAvailabilityProvider.State(v5);
  v6 = v0[1];

  return v6(v5);
}

uint64_t (*protocol witness for WorkoutBuddyAvailabilityProviding.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify(v3);
  return protocol witness for WorkoutBuddyAvailabilityProviding.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider;
}

uint64_t protocol witness for WorkoutBuddyAvailabilityProviding.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.getter in conformance WorkoutVoiceAvailabilityProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a4;
  swift_beginAccess();
  return *(v6 + v7);
}

uint64_t (*protocol witness for WorkoutBuddyAvailabilityProviding.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = WorkoutVoiceAvailabilityProvider.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify(v3);
  return protocol witness for WorkoutBuddyAvailabilityProviding.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider;
}

uint64_t (*protocol witness for WorkoutBuddyAvailabilityProviding.didFailToKickoffWorkoutBuddyInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = WorkoutVoiceAvailabilityProvider.didFailToKickoffWorkoutBuddyInCurrentWorkout.modify(v3);
  return protocol witness for WorkoutBuddyAvailabilityProviding.didFailToKickoffWorkoutBuddyInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider;
}

void protocol witness for WorkoutBuddyAvailabilityProviding.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(uint64_t a1, uint64_t (*a2)(void))
{
  return a2();
}

{
  return a2();
}

void *specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability();

  return closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()partial apply()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever();

  return closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type [WorkoutVoiceAvailabilityProvider.UnavailabilityError] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutVoiceAvailabilityProvider.UnavailabilityError] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WorkoutVoiceAvailabilityProvider.UnavailabilityError] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A25VoiceAvailabilityProviderC19UnavailabilityErrorOGMd, &_sSay11WorkoutCore0A25VoiceAvailabilityProviderC19UnavailabilityErrorOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutVoiceAvailabilityProvider.UnavailabilityError] and conformance [A]);
  }

  return result;
}

uint64_t dispatch thunk of WorkoutBuddyAvailabilityProviding.availabilityState.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of WorkoutBuddyAvailabilityProviding.availabilityState.getter;

  return v9(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyAvailabilityProviding.availabilityState.getter(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t type metadata completion function for WorkoutVoiceAvailabilityProvider()
{
  result = type metadata accessor for InferenceClient();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for SnapshotClient();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1D0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation();

  return v6();
}

uint64_t dispatch thunk of WorkoutVoiceAvailabilityProvider.fetchAvailability()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1D8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of WorkoutVoiceAvailabilityProvider.fetchAvailability();

  return v6();
}

uint64_t dispatch thunk of WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1E8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever();

  return v6();
}

uint64_t get_enum_tag_for_layout_string_11WorkoutCore0A25VoiceAvailabilityProviderC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceAvailabilityProvider.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutVoiceAvailabilityProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for WorkoutVoiceAvailabilityProvider.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceAvailabilityProvider.UnavailabilityError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutVoiceAvailabilityProvider.UnavailabilityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v6(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TA_79(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TA_79TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5(a1, v5);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int specialized WorkoutVoiceAvailabilityProvider.parseSiriAvailability(for:_:)(uint64_t a1, uint64_t a2)
{
  v25[1] = a1;
  v3 = type metadata accessor for InferenceDevice();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeviceInferenceAvailability.UnavailableReason();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DeviceInferenceAvailability.ComponentAvailability();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v17, a2, v13);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 != *MEMORY[0x277D0A5A0])
  {
    if (v18 != *MEMORY[0x277D0A5A8])
    {
      v22 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #2 of WorkoutVoiceAvailabilityProvider.parseSiriAvailability(for:_:));
      (*(v14 + 8))(v17, v13);
      return v22;
    }

    return MEMORY[0x277D84FA0];
  }

  (*(v14 + 96))(v17, v13);
  v19 = *v17;
  (*(v9 + 104))(v12, *MEMORY[0x277D0A5B8], v8);
  v20 = specialized Set.contains(_:)(v12, v19);

  (*(v9 + 8))(v12, v8);
  if ((v20 & 1) == 0)
  {
    return MEMORY[0x277D84FA0];
  }

  (*(v4 + 104))(v7, *MEMORY[0x277D09FE8], v3);
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type InferenceDevice and conformance InferenceDevice, MEMORY[0x277D09FF0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v25[4] == v25[2] && v25[5] == v25[3])
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v4 + 8))(v7, v3);

    if ((v23 & 1) == 0)
    {
      v24 = &outlined read-only object #1 of WorkoutVoiceAvailabilityProvider.parseSiriAvailability(for:_:);
      return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(v24);
    }
  }

  v24 = &outlined read-only object #0 of WorkoutVoiceAvailabilityProvider.parseSiriAvailability(for:_:);
  return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(v24);
}